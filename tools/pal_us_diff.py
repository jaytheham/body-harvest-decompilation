"""Report which NTSC core functions differ in the PAL (EU) ROM.

    python tools/pal_us_diff.py            # print report
    python tools/pal_us_diff.py --write    # also write docs/pal-na-diff.txt
    python tools/pal_us_diff.py --mark     # annotate the EU C stubs of DIFF functions
    python tools/pal_us_diff.py --check    # exit 1 if the shift map disagrees with the yamls

Needs both baseroms and splat's Python packages (``tools/native_build.py setup``
installs them into ``tools/windows/venv``; on Linux ``pip install -r
requirements.txt``). No build is needed.

Why this exists: the NTSC symbol table only carries ~267 `type:func` entries and
none of them are in the game-code region, so any comparison keyed on it
silently reports "nothing differs". Function boundaries are therefore taken from
splat's own detection over the NTSC core text.

Offset mapping: PAL core text is NTSC core text moved by a shift that changes
in a few places (one function PAL rewrote at a different length, and alignment
padding between objects). The shift is derived per function: each function is
compared at the shift of the function before it, and only when that fails is a
window of shifts searched. The resulting shift map is printed with the report
and cross-checked against the object boundaries in ``bh.us.yaml`` and
``bh.eu.yaml``.

Classes:
  EXACT  byte identical at the derived shift
  SHAPE  same instruction opcode at every position, different immediates.
         Includes ordinary address relocation, so most core lands here.
  DIFF   no shift in the search window gives the same opcodes. NTSC decomp
         cannot be reused for these.
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
#: Shifts tried when the previous function's shift does not fit, in bytes.
SEARCH_WINDOW = 0x100

JR_RA = bytes.fromhex("03E00008")
GLAB = re.compile(r"^glabel\s+(\S+)")
ROMC = re.compile(r"/\*\s*([0-9A-Fa-f]+)\s+([0-9A-Fa-f]+)\s+[0-9A-Fa-f]+\s*\*/")
SUBSEG = re.compile(r"^\s*- \[0x([0-9A-Fa-f]+),\s*([\w.]+)(?:,\s*([^\],]+))?")
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
    splat starts a function at every object boundary.
    """
    p = "build/pal_us_probe"
    subs = "\n".join(f"      - [0x{rom:X}, asm, core/{rom:X}]"
                     for rom, typ, _n in core_subsegments("us")
                     if typ in TEXT_TYPES and rom < text_end)
    return f"""sha1: BBB6666F5014A473747EE4145F036D9FB25D7348
options:
  platform: n64
  basename: bh
  base_path: ../..
  target_path: baserom.us.z64
  disassemble_all: yes
  asm_path: {p}/asm
  build_path: {p}/build
  src_path: {p}/src
  asset_path: {p}/assets
  ld_script_path: {p}/bh.probe.ld
  symbol_addrs_path: {p}/symbol_addrs.txt
  reloc_addrs_path: {p}/reloc_addrs.txt
  create_undefined_funcs_auto: no
  create_undefined_syms_auto: no
  undefined_funcs_auto_path: {p}/undefined_funcs_auto.txt
  undefined_syms_auto_path: {p}/undefined_syms_auto.txt
  migrate_rodata_to_functions: no
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
    """Split the NTSC ROM so splat enumerates its functions; cached in PROBE_DIR."""
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


def parse_functions(path, bounds):
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
    return [f for f in out if bounds[0] <= f[0] < bounds[1]]


def trim_padding(na, start, size):
    """Size up to the delay slot of the last ``jr $ra``, dropping alignment nops."""
    last = None
    for i in range(0, size - 3, 4):
        if na[start + i:start + i + 4] == JR_RA:
            last = i
    return last + 8 if last is not None and last + 8 <= size else size


def compare(na, pal, start, size, shift):
    """``(exact_words, opcode_words)`` for the NTSC range at ``shift``."""
    exact = same_op = 0
    for i in range(0, size - 3, 4):
        a = na[start + i:start + i + 4]
        b = pal[start + shift + i:start + shift + i + 4]
        if a == b:
            exact += 1
            same_op += 1
        elif len(b) == 4 and a[0] >> 2 == b[0] >> 2:
            same_op += 1
    return exact, same_op


def classify_all(window=SEARCH_WINDOW):
    """Run the comparison and return a list of :class:`Row`.

    ``pal_rom`` is the PAL ROM offset of the NTSC function at its derived
    shift, which is the key the inventory and the call audit join on.
    """
    na = (ROOT / "baserom.us.z64").read_bytes()
    pal = (ROOT / "baserom.eu.z64").read_bytes()
    us_end, eu_end = core_text_end("us"), core_text_end("eu")
    run_probe(us_end)

    pal_names = {}
    for f in (ROOT / "asm.eu").rglob("*.s"):
        for rom, name, _ in parse_functions(f, (CORE_START, eu_end)):
            pal_names.setdefault(rom, name)

    rows, prev = [], 0
    found = []
    for f in sorted(PROBE_ASM.glob("*.s")):
        found += parse_functions(f, (CORE_START, us_end))
    for rom, name, size in sorted(found):
        size = trim_padding(na, rom, size)
        words = size // 4
        shift = prev
        exact, same_op = compare(na, pal, rom, size, shift)
        if same_op != words:
            scored = [(compare(na, pal, rom, size, s), s)
                      for s in range(-window, window + 4, 4)]
            (exact, same_op), shift = max(
                scored, key=lambda t: (t[0][1], t[0][0], -abs(t[1] - prev)))
        cls = "EXACT" if exact == words else "SHAPE" if same_op == words else "DIFF"
        if cls == "DIFF":
            shift = prev  # report the PAL offset where the function sits
        else:
            prev = shift
        p = rom + shift
        rows.append(Row(rom, name, size, cls, p, pal_names.get(p, ""), shift))
    return rows


def shift_runs(rows):
    """``[(ntsc_lo, ntsc_hi, shift)]`` over the non-DIFF functions."""
    runs = []
    for r in rows:
        if r.cls == "DIFF":
            continue
        if runs and runs[-1][2] == r.shift:
            runs[-1][1] = r.ntsc_rom + r.size
        else:
            runs.append([r.ntsc_rom, r.ntsc_rom + r.size, r.shift])
    return [tuple(x) for x in runs]


def ntsc_to_pal(rom, runs):
    """PAL offset of an NTSC core offset, or None outside every run."""
    for lo, hi, s in runs:
        if lo <= rom < hi:
            return rom + s
    return None


def pal_to_ntsc(rom, runs):
    """NTSC offset of a PAL core offset, or None outside every run."""
    for lo, hi, s in runs:
        if lo + s <= rom < hi + s:
            return rom - s
    return None


def yaml_mismatches(rows):
    """Text objects whose yaml start shift disagrees with the derived shift."""
    eu = {name: rom for rom, typ, name in core_subsegments("eu")
          if typ in TEXT_TYPES and name}
    bad = []
    for rom, typ, name in core_subsegments("us"):
        if typ not in TEXT_TYPES or not name or name not in eu:
            continue
        first = next((r for r in rows if r.ntsc_rom >= rom and r.cls != "DIFF"), None)
        if first is not None and first.ntsc_rom == rom and eu[name] - rom != first.shift:
            bad.append((name, rom, eu[name], first.shift))
    return bad


def diff_classes():
    """``{ntsc_name: class}`` from :func:`classify_all`, keyed by NTSC name."""
    return {r.name: r.cls for r in classify_all()}


def mark(rows):
    """Annotate the PAL c stubs for DIFF functions so NTSC decomp is not reused.

    Every existing marker block is removed first, so a function that stops
    being DIFF loses its marker on the next run.
    """
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
    for r in rows:
        if r.cls != "DIFF":
            continue
        sub = covering(r.pal_rom)
        c = ROOT / "src.eu" / f"{sub}.c" if sub else None
        if c is not None and c.exists():
            by_stub.setdefault(c, []).append(r)

    marker = "// --- PAL differs from NTSC here ---"
    for c in (ROOT / "src.eu").rglob("*.c"):
        text = c.read_text(encoding="utf-8", errors="replace")
        if marker not in text:
            continue
        kept, skipping = [], False
        for line in text.splitlines():
            if marker in line:
                skipping = True
                continue
            if skipping and line.lstrip().startswith("//"):
                continue
            skipping = False
            kept.append(line)
        c.write_text("\n".join(kept) + "\n", encoding="utf-8", newline="\n")

    for c, entries in sorted(by_stub.items()):
        lines = c.read_text(encoding="utf-8", errors="replace").splitlines()
        block = [marker,
                 "// These functions are rewritten in PAL. Do NOT copy the NTSC body;",
                 "// they need their own decomp. Regenerate with:",
                 "//     python tools/pal_us_diff.py --mark",
                 "// NTSC rom / PAL rom / bytes / name"]
        for r in sorted(entries):
            block.append(f"//   0x{r.ntsc_rom:06X}  0x{r.pal_rom:06X}  {r.size:5d}  {r.name}")
        lines[2:2] = block
        c.write_text("\n".join(lines) + "\n", encoding="utf-8", newline="\n")
    return len(by_stub), sum(len(v) for v in by_stub.values())


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--write", action="store_true", help="write docs/pal-na-diff.txt")
    ap.add_argument("--mark", action="store_true",
                    help="annotate PAL c stubs for the differing functions")
    ap.add_argument("--check", action="store_true",
                    help="exit 1 if the derived shifts disagree with the yamls")
    ap.add_argument("--window", type=lambda v: int(v, 0), default=SEARCH_WINDOW,
                    help="shift search window in bytes (default 0x100)")
    args = ap.parse_args()

    rows = classify_all(args.window)
    tally = collections.Counter(r.cls for r in rows)
    total = sum(r.size for r in rows)
    lines = [
        "NTSC vs PAL (EU) core function comparison",
        f"NTSC core text: 0x{CORE_START:X}-0x{core_text_end('us'):X}; "
        f"PAL core text: 0x{CORE_START:X}-0x{core_text_end('eu'):X}",
        f"NTSC core functions: {len(rows)} ({total} bytes, alignment padding excluded)",
        "",
        "shift map (NTSC range -> PAL = NTSC + shift):",
    ]
    for lo, hi, s in shift_runs(rows):
        lines.append(f"  NTSC 0x{lo:06X}-0x{hi:06X}  {s:+#x}")
    lines.append("")
    for k in ("EXACT", "SHAPE", "DIFF"):
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

    bad = yaml_mismatches(rows)
    if bad:
        lines += ["", "WARNING: derived shift disagrees with the yaml object starts:"]
        lines += [f"  {n}: US 0x{u:X} EU 0x{e:X} (yaml {e - u:+#x}, derived {s:+#x})"
                  for n, u, e, s in bad]

    report = "\n".join(lines)
    print(report)
    if args.write:
        out = ROOT / "docs/pal-na-diff.txt"
        out.write_text(report + "\n", encoding="utf-8", newline="\n")
        print(f"\nwrote {out.relative_to(ROOT)}")
    if args.mark:
        files, n = mark(rows)
        print(f"\nmarked {n} differing functions across {files} c stubs")
    if args.check and bad:
        sys.exit(1)


if __name__ == "__main__":
    main()
