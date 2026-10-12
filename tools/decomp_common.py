"""Shared primitives for the decomp analysis tools.

Nothing here is specific to a single report. It exists so that the function
inventory, the asm-diff wrapper and the ROM comparison tools all agree on:

  * what a function is, and where it lives (ROM, VRAM, segment, C file)
  * how to read a splat ``.s`` listing (glabel/jlabel, instruction comments)
  * how to turn a linker map into a function table
  * how to build a call graph from ``jal`` / ``j``

The map is the authoritative source for addresses, because splat writes the
listing from the same ROM it linked, but the map also records which object file
each symbol came from, which is what ties a function to a C file. Listings are
authoritative for instruction bodies.

Deliberately not reimplemented here:
  * instruction normalisation for pattern search
    (tools/build_asm_pattern_index.py)
  * target-vs-current assembly diffing (tools/asm-differ via tools/diff.ps1)
  * NTSC/PAL byte comparison (tools/pal_us_diff.py)
"""

import pathlib
import re

ROOT = pathlib.Path(__file__).resolve().parent.parent

# --------------------------------------------------------------------------
# ROM / VRAM addressing
# --------------------------------------------------------------------------

#: N64 main code runs from VRAM 0x80000400 while its file offset is 0x1000,
#: so every segment derives its own offset from its own load address.
CORE_VRAM = 0x80000400
CORE_ROM = 0x1000


def vram_to_rom(vram, segment_rom_start, segment_vram_start):
    return vram - segment_vram_start + segment_rom_start


def rom_to_vram(rom, segment_rom_start, segment_vram_start):
    return rom - segment_rom_start + segment_vram_start


# --------------------------------------------------------------------------
# Splat .s listings
# --------------------------------------------------------------------------

GLABEL = re.compile(r"^\s*(?:glabel|jlabel)\s+(\S+)")
#: ``jlabel`` is also splat's macro for jump-table targets, which are local
#: labels (``.L...``) and not functions. Matching those as function starts
#: would split one function into a dozen pieces.
LOCAL_JLABEL = re.compile(r"^\s*jlabel\s+\.L\S+")
DLABEL = re.compile(r"^\s*dlabel\s+(\S+)")
#: splat annotates every instruction with its ROM, VRAM and encoded word:
#: ``/* 1330 80000730 27BDFF90 */  addiu $sp, $sp, -0x70``
INSTR = re.compile(
    r"/\*\s*([0-9A-Fa-f]+)\s+([0-9A-Fa-f]+)\s+([0-9A-Fa-f]{8})\s*\*/\s+(\S+)(.*)"
)
LOCAL_LABEL = re.compile(r"^\s*(\.L[0-9A-Fa-f_]+)\s*:")

J_OP = (2, 3)  # j, jal


def read_rom(version):
    """The base ROM for a version, or exit with what to do if it is missing."""
    path = ROOT / f"baserom.{version}.z64"
    if not path.exists():
        raise SystemExit(f"{path.name} not found: copy your ROM to the repository root")
    return path.read_bytes()


def require_build(path, version=None):
    """Exit with what to run when a build product such as a map is missing."""
    if not pathlib.Path(path).exists():
        v = version or "us|eu"
        raise SystemExit(f"{path} not found: run `python tools/native_build.py extract "
                         f"--version {v}` and `python tools/native_build.py build "
                         f"--version {v}` first")
    return path


def read_build(version):
    """(rom, elf, map) paths for a built version, if they exist."""
    build_dir = ROOT / ("build.eu" if version == "eu" else "build")
    return (build_dir / f"bh.{version}.z64",
            build_dir / f"bh.{version}.elf",
            build_dir / f"bh.{version}.map")


def decode_jal(word, pc):
    """Target of a MIPS j/jal: ``PC[31:28] | (index << 2)``.

    The region comes from the PC, not PC+4: a 4-aligned PC and PC+4 share
    their top four bits, so adding 4 to the region instead of the PC would
    put every target 4 bytes too high.
    """
    index = word & 0x03FFFFFF
    region = pc & 0xF0000000
    return (region | (index << 2)) & 0xFFFFFFFF


class Function:
    """One function, as far as the tools can tell."""

    __slots__ = ("name", "vram", "rom", "size", "segment", "obj", "c_file",
                 "instrs", "calls", "category", "status", "listings")

    def __init__(self, name, vram, rom, size, segment, obj, category):
        self.name = name
        self.vram = vram
        self.rom = rom
        self.size = size
        self.segment = segment
        self.obj = obj
        self.c_file = c_file_from_object(obj)
        self.instrs = 0
        self.calls = []          # callee names, in listing order
        self.category = category  # matching / nonmatching / asm
        self.status = None       # filled in by the inventory
        self.listings = []       # paths of the .s files holding this function

    def __repr__(self):
        return (f"<Function {self.name} rom=0x{self.rom:06X} "
                f"size={self.size} {self.c_file}>")


def c_file_from_object(obj):
    """``build/src/common/core/1050.c.o`` -> ``src/common/core/1050.c``.

    Shared sources compile to ``build/src/common/core/53F0.c.o`` (US) or
    ``build.eu/src/common/core/53F0.c.o`` (EU) and map to
    ``src/common/core/53F0.c``; per-version sources (the overlays) map the
    same way under ``src.us/`` or ``src.eu/``. Archive members
    (``build/lib/libultra_rom.a(sqrtf.o)``) and asm stubs
    (``build/asm/...``) have no C file of their own and return None.
    """
    if not obj or "(" in obj:
        return None
    m = re.search(r"(src(?:\.[^/]+)?/[^ ]+)\.c\.o$", obj)
    return m.group(1) + ".c" if m else None


def parse_listing(path):
    """Read one splat ``.s`` file.

    Returns ``(label, [(vram, word, mnemonic, operands)], call_targets)`` for
    the first function in the file, plus the local labels. Splitting files by
    function is the layout splat uses for matchings/nonmatchings, but the
    segment listings (``asm/core/1000.s``) hold several, so this returns only
    the first and callers use ``iter_listing`` instead.
    """
    for label, instrs, calls, locals_ in iter_listing(path):
        return label, instrs, calls, locals_
    return None, [], [], {}


def iter_listing(path):
    """Yield ``(label, instrs, calls, local_labels)`` per function in a file.

    ``instrs`` is a list of ``(vram, word, mnemonic, operand_text)``;
    ``calls`` is the list of ``jal`` targets as raw ``(vram, target_vram)``.
    """
    text = pathlib.Path(path).read_text(encoding="utf-8", errors="replace")
    label = None
    instrs = []
    calls = []
    locals_ = {}
    for line in text.splitlines():
        stripped = line.strip()
        m = LOCAL_LABEL.match(line)
        if m:
            locals_[m.group(1)] = True
            continue
        # A jump-table target is a local label, not a new function.
        if LOCAL_JLABEL.match(line):
            continue
        m = GLABEL.match(line)
        if m:
            if label is not None:
                yield label, instrs, calls, locals_
            label, instrs, calls, locals_ = m.group(1), [], [], {}
            continue
        m = INSTR.search(line)
        if not m:
            continue
        vram = int(m.group(2), 16)
        word = int(m.group(3), 16)
        mnemonic = m.group(4)
        operands = m.group(5).strip()
        instrs.append((vram, word, mnemonic, operands))
        if (word >> 26) in J_OP and mnemonic in ("j", "jal"):
            calls.append((vram, decode_jal(word, vram)))
    if label is not None:
        yield label, instrs, calls, locals_


def call_targets_from_instrs(instrs):
    """``jal`` targets of an instruction list, skipping intra-function ``j``."""
    out = []
    for vram, word, mnemonic, _operands in instrs:
        if mnemonic == "jal" and (word >> 26) == 3:
            out.append((vram, decode_jal(word, vram)))
    return out


# --------------------------------------------------------------------------
# Linker maps
# --------------------------------------------------------------------------

#: ``.core           0x80000400    0x3f720 load address 0x00001000``
OUT_SECTION = re.compile(
    r"^(?P<name>\.\S+)?\s+0x(?P<vram>[0-9a-f]+)\s+0x(?P<size>[0-9a-f]+)"
    r"\s+load address 0x(?P<rom>[0-9a-f]+)"
)
#: `` .text          0x80000450     0x4380 build/src/common/core/1050.c.o``
IN_SECTION = re.compile(
    r"^\s+\.(?P<sec>\S+)\s+0x(?P<vram>[0-9a-f]+)\s+0x(?P<size>[0-9a-f]+)\s+"
    r"(?P<obj>\S+)"
)
#: ``                0x80000450                func_80000450_1050``
SYMBOL = re.compile(r"^\s+0x(?P<vram>[0-9a-f]{8})\s+(?P<name>[A-Za-z_]\w*)\s*$")

#: The linker script delimits each segment's regions with marker symbols:
#: ``_coreSegmentTextStart = .`` ... ``_coreSegmentTextEnd = .``, then the same
#: for Data, RoData and Bss. Text is the only region that holds functions.
TEXT_START = re.compile(r"^\s+0x[0-9a-f]{8}\s+_\S+SegmentTextStart\s*=\s*\.")
TEXT_END = re.compile(r"^\s+0x(?P<vram>[0-9a-f]{8})\s+_\S+SegmentTextEnd\s*=\s*\.")

#: ``  - name: overlay_gameplay_outside`` / ``    start: 0x7f220``
YAML_NAME = re.compile(r"^\s*-\s*name:\s*(\S+)")
YAML_START = re.compile(r"^\s*start:\s*(0x[0-9A-Fa-f]+)")
YAML_TYPE = re.compile(r"^\s*type:\s*(\S+)")

#: Segments that hold data, not code. `boot` and `unknown` are `type: bin`.
#: The `*_data` and `*_alien_types` segments are declared `type: code` but hold
#: blobs and a pointer table; each contributes exactly one symbol to the map and
#: it is data, not a function.
DATA_SEGMENT_SUFFIXES = ("_data", "_data_tail", "_alien_types")


def which_segment_rom(rom, segments):
    """Name of the segment covering a ROM offset, or None."""
    best = None
    for rom_start, size, _vram, name in segments:
        if rom_start <= rom < rom_start + size:
            best = name
    return best


def vram_for_rom(rom, segments):
    """VRAM address for a ROM offset, or None if it is not in a segment."""
    for rom_start, _size, vram_start, _name in segments:
        if rom_start <= rom < rom_start + _size:
            return rom - rom_start + vram_start
    return None


def rom_for_vram(vram, segments):
    """ROM offset for a VRAM address, or None.

    Segments repeat a VRAM base across different overlays, so a VRAM address can
    be covered by several sections. The one with the largest VRAM extent is
    returned, which picks the segment the address really belongs to rather than
    an unrelated one that happens to share the base.
    """
    best = None
    for rom_start, size, vram_start, _name in segments:
        if vram_start <= vram < vram_start + size:
            if best is None or size > best[1]:
                best = (rom_start + (vram - vram_start), size)
    return best[0] if best else None


def is_data_segment(name):
    return name in ("boot", "unknown") or name.endswith(DATA_SEGMENT_SUFFIXES)


def yaml_segment_starts(version):
    """``[(rom_start, name)]``, for naming ld's unnamed overlay sections."""
    return [(rom, name) for rom, name, _t in yaml_segments(version)]


def yaml_segments(version):
    """``[(rom_start, name, type)]`` for every top-level segment in the yaml.

    Only the keys directly under a ``- name:`` entry are read, so the nested
    ``type:`` lines that belong to subsegments do not leak in.
    """
    out = []
    cur = None
    for line in (ROOT / f"bh.{version}.yaml").read_text(
            encoding="utf-8", errors="replace").splitlines():
        m = YAML_NAME.match(line)
        if m:
            if cur and cur[0] is not None:
                out.append(tuple(cur))
            cur = [None, m.group(1), None]
            continue
        if cur is None:
            continue
        if YAML_START.match(line):
            cur[0] = int(YAML_START.match(line).group(1), 16)
        elif YAML_TYPE.match(line):
            cur[2] = YAML_TYPE.match(line).group(1)
        elif re.match(r"^\s*-\s", line):
            out.append(tuple(cur))
            cur = None
    if cur and cur[0] is not None:
        out.append(tuple(cur))
    return [t for t in out if t[0] is not None]


def parse_map(map_path, version=None):
    """Turn a GNU ld map into a function table plus the segment layout.

    Returns ``(functions, segments)`` where ``functions`` maps a symbol name to
    a :class:`Function` and ``segments`` is a list of
    ``(rom_start, rom_size, vram_start, section_name)``.

    Only symbols inside a loaded (non-bss) output section are kept: the bss
    sections carry thousands of data symbols that are not functions and would
    otherwise dominate the table.

    Overlays arrive as unnamed sections that all share one VRAM base, so each
    one gets its own synthetic section key. Without that, sorting by VRAM
    interleaves unrelated overlays and every computed size is wrong. Passing
    ``version`` replaces those synthetic keys with the real names from the yaml.

    Only the text region of each segment is read. A segment lays out text, then
    data, then rodata, then bss in one unnamed output section, so filtering by
    output section alone would let data symbols in: ``D_800A5710_18D7D0`` is a
    712 KiB array that would otherwise be decoded as instructions and
    manufacture thousands of bogus call edges. The linker script's own
    ``_<seg>SegmentTextStart`` / ``...TextEnd`` markers delimit the region.
    """
    require_build(map_path, version)
    names = dict(yaml_segment_starts(version)) if version else {}
    data = {n for _r, n, _t in yaml_segments(version) if is_data_segment(n)} \
        if version else set()
    segments = []
    functions = {}
    text_ends = {}
    section = None
    obj = None
    prev_line = ""
    in_text = False

    for line in pathlib.Path(map_path).read_text(
            encoding="utf-8", errors="replace").splitlines():

        m = OUT_SECTION.match(line)
        if m:
            rom_start = int(m.group("rom"), 16)
            # GNU ld puts a long section name on the line before its address
            # line. The map's own name is authoritative; the yaml lookup by ROM
            # start is only a fallback, because a bss section shares its ROM
            # start with the next segment and would inherit that name.
            raw = (m.group("name") or "").lstrip(".")
            if not raw and prev_line.strip().startswith("."):
                raw = prev_line.strip().split()[0].lstrip(".")
            loaded = ("noload" not in line and "noload" not in prev_line
                      and not raw.endswith("_bss"))
            name = raw or names.get(rom_start, f"@0x{rom_start:06X}")
            section = (rom_start,
                       int(m.group("size"), 16),
                       int(m.group("vram"), 16),
                       name,
                       loaded and name not in data)
            if loaded and name not in data:
                segments.append(section[:4])
            prev_line = line
            continue

        m = IN_SECTION.match(line)
        if m:
            obj = m.group("obj")
            prev_line = line
            continue

        if TEXT_START.match(line):
            in_text = True
            prev_line = line
            continue
        m = TEXT_END.match(line)
        if m:
            in_text = False
            if section is not None:
                text_ends[section[3]] = int(m.group("vram"), 16)
            prev_line = line
            continue

        m = SYMBOL.match(line)
        if m and section is not None and section[4] and in_text:
            rom_start, size, vram_start, name, _loaded = section
            vram = int(m.group("vram"), 16)
            if vram_start <= vram < vram_start + size:
                sym = m.group("name")
                rom = vram_to_rom(vram, rom_start, vram_start)
                if sym not in functions:
                    functions[sym] = Function(
                        sym, vram, rom, 0, name, obj, "asm")
        prev_line = line

    _apply_sizes(functions, segments, text_ends)
    return functions, segments


def _apply_sizes(functions, segments, text_ends=None):
    """Fill in each function's size from the gap to the next function.

    The last function of a segment ends at the segment's text end marker, not
    at the end of the output section, which also holds data and rodata.
    """
    text_ends = text_ends or {}
    by_segment = {}
    for fn in functions.values():
        by_segment.setdefault(fn.segment, []).append(fn)
    for group in by_segment.values():
        group.sort(key=lambda f: f.vram)
        for i, fn in enumerate(group):
            end = group[i + 1].vram if i + 1 < len(group) else None
            if end is None:
                end = text_ends.get(fn.segment)
            if end is None:
                for _rom, size, vram_start, name in segments:
                    if name == fn.segment:
                        end = vram_start + size
                        break
            fn.size = (end - fn.vram) if end else 0


def segment_for_rom(rom, segments):
    """Name of the segment covering a ROM offset, or None."""
    best = None
    for rom_start, size, _vram, name in segments:
        if rom_start <= rom < rom_start + size:
            best = name
    return best