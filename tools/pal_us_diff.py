"""Report which NTSC core functions differ in the PAL (EU) ROM.

    python tools/pal_us_diff.py            # print report
    python tools/pal_us_diff.py --write    # also write docs/pal-na-diff.txt

Needs both baseroms and splat's Python packages (``tools/native_build.py setup``
installs them into ``tools/windows/venv``; on Linux ``pip install -r
requirements.txt``). No build is needed. The splat probe and its cache live in
``build/pal_us_probe/``.

Why this exists: the NTSC symbol table only carries ~267 `type:func` entries and
none of them are in the game-code region, so any comparison keyed on it
silently reports "nothing differs". Function boundaries are therefore taken from
splat's own detection, which finds all of them.

Offset mapping (measured, see docs/pal-vs-na.md): PAL core equals NTSC core with
a 0x30 byte insert, so words at or after the insert sit 0x30 later. The insert
point is derived here rather than assumed, and applied per word so a function
that straddles it still compares correctly.

Classes:
  EXACT  byte identical
  SHAPE  same instruction opcode at every position, different immediates.
         Includes ordinary address relocation, so most core lands here.
  DIFF   genuinely different code. NTSC decomp cannot be reused for these.
"""

import argparse
import collections
import hashlib
import importlib.util
import os
import pathlib
import re
import subprocess
import sys
from typing import NamedTuple

ROOT = pathlib.Path(__file__).resolve().parent.parent
CORE_START = 0x1000
CORE_VRAM = 0x80000400
SHIFT = 0x30

GLAB = re.compile(r"^glabel\s+(\S+)")
ROMC = re.compile(r"/\*\s*([0-9A-Fa-f]+)\s+([0-9A-Fa-f]+)\s+[0-9A-Fa-f]+\s*\*/")
SUBSEG = re.compile(r"^\s*- \[0x([0-9A-Fa-f]+),\s*([\w.]+)(?:,\s*([^\],]+))?")
#: Subsegment types that hold code. Core text ends at the first other type.
TEXT_TYPES = ("asm", "hasm", "c", "textbin", "lib")

PROBE_DIR = ROOT / "build" / "pal_us_probe"
PROBE_ASM = PROBE_DIR / "asm" / "core"
PROBE_STAMP = PROBE_DIR / "stamp.txt"


class Row(NamedTuple):
    """One NTSC core function and its PAL counterpart."""

    ntsc_rom: int
    name: str
    size: int
    cls: str
    pal_rom: int
    pal_name: str
    shift: int


def core_subsegments(version):
    """``[(rom, type, name)]`` for the core segment of ``bh.<version>.yaml``."""
    out, in_core = [], False
    for line in (ROOT / f"bh.{version}.yaml").read_text(encoding="utf-8").splitlines():
        if re.match(r"^\s*- name:\s*core\s*$", line):
            in_core = True
            continue
        if in_core and re.match(r"^\s*- name:", line):
            break
        m = SUBSEG.match(line) if in_core else None
        if m:
            out.append((int(m.group(1), 16), m.group(2), (m.group(3) or "").strip()))
    return out


def core_text_end(version):
    """ROM offset of the first non-code subsegment of core."""
    for rom, typ, _name in core_subsegments(version):
        if typ not in TEXT_TYPES:
            return rom
    sys.exit(f"bh.{version}.yaml: no data subsegment found in core")


def probe_yaml(text_end):
    """Splat config that lists NTSC core text only, with every output in PROBE_DIR.

    Each core text subsegment of bh.us.yaml becomes one ``asm`` subsegment, so
    splat starts a function at every object boundary and never disassembles
    data. Every output path points into PROBE_DIR; in particular splat must not
    write undefined_syms_auto.txt at the repository root, which is the US
    build's linker input.
    """
    subs = "\n".join(f"      - [0x{rom:X}, asm, core/{rom:X}]"
                     for rom, typ, _n in core_subsegments("us")
                     if typ in TEXT_TYPES and rom < text_end)
    return f"""sha1: BBB6666F5014A473747EE4145F036D9FB25D7348
options:
  platform: n64
  basename: bh
  target_path: baserom.us.z64
  base_path: ../..
  disassemble_all: yes
  asm_path: build/pal_us_probe/asm
  build_path: build/pal_us_probe/build
  src_path: build/pal_us_probe/src
  asset_path: build/pal_us_probe/assets
  ld_script_path: build/pal_us_probe/bh.probe.ld
  symbol_addrs_path: build/pal_us_probe/symbol_addrs.txt
  reloc_addrs_path: build/pal_us_probe/reloc_addrs.txt
  undefined_funcs_auto_path: build/pal_us_probe/undefined_funcs_auto.txt
  undefined_syms_auto_path: build/pal_us_probe/undefined_syms_auto.txt
  migrate_rodata_to_functions: no
  create_undefined_funcs_auto: no
  create_undefined_syms_auto: no
  symbol_name_format: $VRAM_$ROM
  asm_jtbl_label_macro: jlabel
  asm_data_macro: dlabel
  extensions_path: tools/splat_ext
segments:
  - name: header
    type: header
    start: 0x0
  - name: boot
    type: bin
    start: 0x40
  - name: core
    type: code
    start: 0x1000
    vram: 0x{CORE_VRAM:08X}
    subsegments:
{subs}
  - [0x{text_end:X}, bin]
"""


def splat_python():
    """An interpreter that can import splat's dependencies."""
    if all(importlib.util.find_spec(m) for m in ("spimdisasm", "rabbitizer")):
        return sys.executable
    venv = ROOT / "tools/windows/venv"
    cand = venv / ("Scripts/python.exe" if os.name == "nt" else "bin/python")
    if cand.exists():
        return str(cand)
    sys.exit("splat's packages (spimdisasm, rabbitizer) are not importable. Run "
             "`python tools/native_build.py setup` (Windows) or "
             "`pip install -r requirements.txt`, then retry.")


def run_probe(text_end):
    """Split the NTSC ROM so splat enumerates its functions; cached in PROBE_DIR.

    The cache is reused only while the probe config and the NTSC ROM are the
    ones it was made from.
    """
    yaml_text = probe_yaml(text_end)
    rom = (ROOT / "baserom.us.z64").read_bytes()
    stamp = hashlib.sha1(yaml_text.encode() + rom).hexdigest()
    if PROBE_ASM.exists() and PROBE_STAMP.exists() and \
            PROBE_STAMP.read_text(encoding="utf-8").strip() == stamp:
        return
    PROBE_DIR.mkdir(parents=True, exist_ok=True)
    yaml_path = PROBE_DIR / "probe.us.yaml"
    yaml_path.write_text(yaml_text, encoding="utf-8", newline="\n")
    r = subprocess.run([splat_python(), "tools/splat/split.py", str(yaml_path)],
                       cwd=ROOT, capture_output=True, text=True)
    if r.returncode != 0:
        sys.exit(f"splat failed on the NTSC ROM:\n{r.stdout[-2000:]}\n{r.stderr[-2000:]}")
    if not any(PROBE_ASM.glob("*.s")):
        sys.exit("splat produced no NTSC function listing")
    PROBE_STAMP.write_text(stamp + "\n", encoding="utf-8", newline="\n")


def parse_functions(path, root):
    """Return [(rom, name, size)] for every glabel in a splat .s listing.

    ``size`` runs to the next label, so it includes any alignment padding.
    Only ``glabel`` starts an entry; jump-table ``jlabel`` targets do not. A
    ``D_...`` glabel inside core text is code splat reached only through a data
    reference (the hand-written exception handler, for example), so it is kept.
    """
    out, cur, count, rom = [], None, 0, None
    for ln in path.read_text(encoding="utf-8", errors="replace").splitlines():
        m = ROMC.search(ln)
        if m:
            count += 1
            if cur is not None and rom is None:
                rom = int(m.group(1), 16)
        g = GLAB.match(ln.strip())
        if g:
            if cur is not None and rom is not None:
                out.append((rom, cur, count * 4))
            cur, count, rom = g.group(1), 0, None
    if cur is not None and rom is not None:
        out.append((rom, cur, count * 4))
    return [f for f in out if root[0] <= f[0] < root[1]]


def find_insert_point(na, pal):
    """First NTSC offset at or after which PAL sits 0x30 later."""
    probe = 0x7E00                      # inside the known divergent band
    for off in range(probe, core_text_end("us"), 4):
        word = na[off:off + 4]
        if word == pal[off + SHIFT:off + SHIFT + 4]:
            return off
    sys.exit("could not locate the 0x30 insert point")


def classify(na, pal, start, size, insert_at):
    exact = shape = True
    for i in range(0, size - 3, 4):
        a_off = start + i
        p_off = a_off + SHIFT if a_off >= insert_at else a_off
        if p_off + 4 > len(pal):
            return "MISSING"
        a, b = na[a_off:a_off + 4], pal[p_off:p_off + 4]
        if a != b:
            exact = False
            if int.from_bytes(a, "big") >> 26 != int.from_bytes(b, "big") >> 26:
                return "DIFF"
            shape = shape and True
    return "EXACT" if exact else "SHAPE"


def mark(rows, insert_at):
    """Annotate the PAL c stubs for DIFF functions so NTSC decomp is not reused.

    The stubs are only regenerated when absent, so these comments are durable
    and are the guard that stops a decompiler copying the NTSC body verbatim
    into a function PAL actually rewrote.
    """
    diff = [r for r in rows if r.cls == "DIFF"]

    # Map PAL rom -> the c subsegment that covers it, from bh.eu.yaml. Matching
    # by function name does not work in the reorganised band: PAL's function
    # boundaries there differ, so the NTSC function often has no PAL name.
    subs = []
    for line in (ROOT / "bh.eu.yaml").read_text(encoding="utf-8").splitlines():
        m = re.match(r"\s*- \[0x([0-9A-Fa-f]+), c, (.+?)\]\s*(?:#.*)?$", line)
        if m:
            subs.append((int(m.group(1), 16), m.group(2).strip()))
    subs.sort()

    def covering(rom):
        best = None
        for start, name in subs:
            if start <= rom:
                best = (start, name)
            else:
                break
        return best[1] if best else None

    by_stub = {}
    for r in diff:
        na_rom, na_name, size, p = r.ntsc_rom, r.name, r.size, r.pal_rom
        sub = covering(p)
        if not sub:
            continue
        c = ROOT / "src.eu" / f"{sub}.c"
        if c.exists():
            by_stub.setdefault(c, []).append((na_rom, p, size, na_name))

    marker = "// --- PAL differs from NTSC here ---"
    # Clear every existing marker block first, not just the stubs we are about
    # to rewrite, or a block left by an earlier run survives in a file that is
    # no longer in the map.
    for c in (ROOT / "src.eu").rglob("*.c"):
        text = c.read_text(encoding="utf-8", errors="replace")
        if marker not in text:
            continue
        # Drop the whole marker block: from the marker line through the
        # contiguous run of comment lines that follows it.
        kept, skipping = [], False
        for l in text.splitlines():
            if marker in l:
                skipping = True
                continue
            if skipping and l.lstrip().startswith("//"):
                continue
            skipping = False
            kept.append(l)
        c.write_text("\n".join(kept) + "\n", encoding="utf-8", newline="\n")

    touched = 0
    for c, entries in sorted(by_stub.items()):
        lines = c.read_text(encoding="utf-8", errors="replace").splitlines()
        block = [marker,
                 "// These functions are rewritten in PAL. Do NOT copy the NTSC body;",
                 "// they need their own decomp. Regenerate with:",
                 "//     python tools/pal_us_diff.py --mark",
                 "// NTSC rom / PAL rom / bytes / name"]
        for na_rom, p, size, na_name in sorted(entries):
            block.append(f"//   0x{na_rom:06X}  0x{p:06X}  {size:5d}  {na_name}")
        lines[2:2] = block
        c.write_text("\n".join(lines) + "\n", encoding="utf-8", newline="\n")
        touched += 1
    return touched, sum(len(v) for v in by_stub.values())


def classify_all():
    """Run the comparison and return a list of :class:`Row`.

    One row per NTSC core text function; ``cls`` is ``EXACT``, ``SHAPE``,
    ``DIFF`` or ``MISSING``. ``pal_rom`` is the ROM offset of the PAL function at the
    corresponding address, which is the key the inventory joins on: a ``DIFF``
    function is one PAL rewrote, so its name often differs from NTSC's and a
    name join would miss it.
    """
    na = (ROOT / "baserom.us.z64").read_bytes()
    pal = (ROOT / "baserom.eu.z64").read_bytes()
    us_end, eu_end = core_text_end("us"), core_text_end("eu")
    run_probe(us_end)
    insert_at = find_insert_point(na, pal)

    pal_names = {}
    for f in (ROOT / "asm.eu").rglob("*.s"):
        for rom, name, _ in parse_functions(f, (CORE_START, eu_end)):
            pal_names.setdefault(rom, name)

    found = []
    for f in sorted(PROBE_ASM.glob("*.s")):
        found += parse_functions(f, (CORE_START, us_end))
    rows = []
    for rom, name, size in sorted(found):
        cls = classify(na, pal, rom, size, insert_at)
        shift = SHIFT if rom >= insert_at else 0
        rows.append(Row(rom, name, size, cls, rom + shift,
                        pal_names.get(rom + shift, ""), shift))
    return rows


def diff_classes():
    """``{ntsc_name: class}`` from :func:`classify_all`, keyed by NTSC name."""
    return {r.name: r.cls for r in classify_all()}


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--write", action="store_true",
                    help="write docs/pal-na-diff.txt")
    ap.add_argument("--mark", action="store_true",
                    help="annotate PAL c stubs for the differing functions")
    args = ap.parse_args()

    rows = classify_all()
    na = (ROOT / "baserom.us.z64").read_bytes()
    pal = (ROOT / "baserom.eu.z64").read_bytes()
    insert_at = find_insert_point(na, pal)
    tally = collections.Counter(r.cls for r in rows)
    total = sum(r.size for r in rows)
    lines = [
        "NTSC vs PAL (EU) core function comparison",
        f"insert point: NTSC 0x{insert_at:06X} -> PAL +0x{SHIFT:X}",
        f"NTSC core functions: {len(rows)}",
        "",
    ]
    for k in ("EXACT", "SHAPE", "DIFF", "MISSING"):
        n = tally[k]
        if n:
            b = sum(r.size for r in rows if r.cls == k)
            lines.append(f"  {k:<8} {n:5d} fn  {100*n/len(rows):5.1f}%   "
                         f"{b:7d}B  {100*b/total:5.2f}% of core code")
    reuse = sum(r.size for r in rows if r.cls in ("EXACT", "SHAPE"))
    lines.append(f"  reusable (EXACT+SHAPE): {100*reuse/total:.2f}% of core code bytes")

    diff = sorted((r for r in rows if r.cls == "DIFF"), key=lambda r: -r.size)
    lines += ["", f"=== {len(diff)} functions that genuinely differ "
                  f"(NTSC decomp NOT reusable) ==="]
    for r in diff:
        lines.append(f"  NTSC 0x{r.ntsc_rom:06X}  PAL 0x{r.pal_rom:06X}  {r.size:6d}B  {r.name}")
    lines += ["", f"differing bytes: {sum(r.size for r in diff)}"]

    report = "\n".join(lines)
    print(report)
    if args.write:
        out = ROOT / "docs/pal-na-diff.txt"
        out.write_text(report + "\n", encoding="utf-8", newline="\n")
        print(f"\nwrote {out.relative_to(ROOT)}")
    if args.mark:
        files, n = mark(rows, insert_at)
        print(f"\nmarked {n} differing functions across {files} c stubs")


if __name__ == "__main__":
    main()