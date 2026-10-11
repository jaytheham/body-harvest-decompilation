"""Report which NTSC core functions differ in the PAL (EU) ROM.

    python tools/pal_na_diff.py            # print report
    python tools/pal_na_diff.py --write    # also write docs/pal-na-diff.txt

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
import pathlib
import re
import subprocess
import sys

ROOT = pathlib.Path(__file__).resolve().parent.parent
CORE_START = 0x1000
CORE_END_NA = 0x40750          # NTSC core ends here (measured from the trailing pad)
CORE_END_PAL = 0x40780         # PAL core ends 0x30 later
SHIFT = 0x30

GLAB = re.compile(r"^(?:glabel|jlabel)\s+(\S+)")
ROMC = re.compile(r"/\*\s*([0-9A-Fa-f]+)\s+([0-9A-Fa-f]+)\s+[0-9A-Fa-f]+\s*\*/")

PROBE_DIR = ROOT / ".tmp_na_probe"
PROBE_ASM = PROBE_DIR / "asm" / "core" / "1000.s"
PROBE_YAML = """sha1: BBB6666F5014A473747EE4145F036D9FB25D7348
options:
  platform: n64
  basename: bh
  target_path: baserom.na.z64
  base_path: .
  disassemble_all: yes
  asm_path: .tmp_na_probe/asm
  build_path: .tmp_na_probe/build
  ld_script_path: .tmp_na_probe/bh.probe.ld
  migrate_rodata_to_functions: no
  create_undefined_funcs_auto: no
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
    vram: 0x80000400
    subsegments:
      - [0x1000, asm, core/1000]
  - [0x40750, bin]
"""


def run_probe():
    """Split the NTSC ROM so splat enumerates its functions."""
    if PROBE_ASM.exists():
        return
    yaml_path = ROOT / "probe.na.yaml"
    yaml_path.write_text(PROBE_YAML, encoding="utf-8", newline="\n")
    try:
        r = subprocess.run(
            [str(ROOT / "tools/windows/venv/Scripts/python.exe"),
             "tools/splat/split.py", yaml_path.name],
            cwd=ROOT, capture_output=True, text=True)
        if r.returncode != 0:
            sys.exit(f"splat failed on the NTSC ROM:\n{r.stdout[-2000:]}\n{r.stderr[-2000:]}")
    finally:
        yaml_path.unlink(missing_ok=True)
    if not PROBE_ASM.exists():
        sys.exit("splat produced no NTSC function listing")


def parse_functions(path, root):
    """Return [(rom, name, size)] for every glabel in a splat .s listing."""
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
    for off in range(probe, CORE_END_NA, 4):
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
    diff = [r for r in rows if r[3] == "DIFF"]

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
    for na_rom, na_name, size, _cls, _pal_rom, _pal in diff:
        p = na_rom + SHIFT if na_rom >= insert_at else na_rom
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
                 "//     python tools/pal_na_diff.py --mark",
                 "// NTSC rom / PAL rom / bytes / name"]
        for na_rom, p, size, na_name in sorted(entries):
            block.append(f"//   0x{na_rom:06X}  0x{p:06X}  {size:5d}  {na_name}")
        lines[2:2] = block
        c.write_text("\n".join(lines) + "\n", encoding="utf-8", newline="\n")
        touched += 1
    return touched, sum(len(v) for v in by_stub.values())


def classify_all():
    """Run the comparison and return its rows.

    Returns ``[(ntsc_rom, ntsc_name, size, class, pal_rom, pal_name)]`` for every
    NTSC core function, where ``class`` is ``EXACT``, ``SHAPE``, ``DIFF`` or
    ``MISSING``. ``pal_rom`` is the ROM offset of the PAL function at the
    corresponding address, which is the key the inventory joins on: a ``DIFF``
    function is one PAL rewrote, so its name often differs from NTSC's and a
    name join would miss it.
    """
    na = (ROOT / "baserom.na.z64").read_bytes()
    pal = (ROOT / "baserom.eu.z64").read_bytes()
    run_probe()
    insert_at = find_insert_point(na, pal)

    pal_names = {}
    for f in (ROOT / "asm.eu").rglob("*.s"):
        for rom, name, _ in parse_functions(f, (CORE_START, CORE_END_PAL)):
            pal_names.setdefault(rom, name)

    rows = []
    for rom, name, size in parse_functions(PROBE_ASM, (CORE_START, CORE_END_NA)):
        cls = classify(na, pal, rom, size, insert_at)
        p = rom + SHIFT if rom >= insert_at else rom
        rows.append((rom, name, size, cls, p, pal_names.get(p, "")))
    return rows


def diff_classes():
    """``{ntsc_name: class}`` from :func:`classify_all`, keyed by NTSC name."""
    return {name: cls for _rom, name, _size, cls, _p, _pn in classify_all()}


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--write", action="store_true",
                    help="write docs/pal-na-diff.txt")
    ap.add_argument("--mark", action="store_true",
                    help="annotate PAL c stubs for the differing functions")
    args = ap.parse_args()

    na = (ROOT / "baserom.na.z64").read_bytes()
    pal = (ROOT / "baserom.eu.z64").read_bytes()
    run_probe()
    insert_at = find_insert_point(na, pal)

    rows = classify_all()
    tally = collections.Counter(r[3] for r in rows)
    total = sum(r[2] for r in rows)
    lines = [
        "NTSC vs PAL (EU) core function comparison",
        f"insert point: NTSC 0x{insert_at:06X} -> PAL +0x{SHIFT:X}",
        f"NTSC core functions: {len(rows)}",
        "",
    ]
    for k in ("EXACT", "SHAPE", "DIFF", "MISSING"):
        n = tally[k]
        if n:
            b = sum(r[2] for r in rows if r[3] == k)
            lines.append(f"  {k:<8} {n:5d} fn  {100*n/len(rows):5.1f}%   "
                         f"{b:7d}B  {100*b/total:5.2f}% of core code")
    reuse = sum(r[2] for r in rows if r[3] in ("EXACT", "SHAPE"))
    lines.append(f"  reusable (EXACT+SHAPE): {100*reuse/total:.2f}% of core code bytes")

    diff = sorted([r for r in rows if r[3] == "DIFF"], key=lambda r: -r[2])
    lines += ["", f"=== {len(diff)} functions that genuinely differ "
                  f"(NTSC decomp NOT reusable) ==="]
    for rom, name, size, _cls, pal_rom, _palname in diff:
        p = rom + SHIFT if rom >= insert_at else rom
        lines.append(f"  NTSC 0x{rom:06X}  PAL 0x{p:06X}  {size:6d}B  {name}")
        if pal_rom != p:
            lines.append(f"{'':>52s}^ splat boundary at 0x{pal_rom:06X} "
                         f"differs; matched by overlap")
    lines += ["", f"differing bytes: {sum(r[2] for r in diff)}"]

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