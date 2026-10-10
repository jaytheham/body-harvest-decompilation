"""Compare a built EU ROM against the reference and explain every difference.

    python tools/eu_rom_diff.py [--tag NAME] [--save]

Reports, per the seam investigation:
  * size delta and SHA-1
  * first differing ROM offset and a distribution of the differing runs
  * decoded `jal`/`j` targets for every differing instruction, so a one-byte
    difference can be read as an address discrepancy rather than a stray byte

Also decodes which segment each difference falls in, using the segment starts
from bh.eu.yaml, so relocation errors can be separated from layout errors.

Baseline (byte-exact) config produces zero differences and therefore no report
rows; run it against an experimental build.
"""
import argparse
import hashlib
import pathlib
import re

ROOT = pathlib.Path(__file__).resolve().parent.parent
REF_SHA = "67750E2E7AB46FEDF65A271AB7F4C7AAD92AE355"
OUT = pathlib.Path("G:/Temp/opencode/eu_seam")

J_OP = {2, 3}          # j, jal
JAL_FN = re.compile(r"^\s*- name:\s*(\S+)")
JAL_START = re.compile(r"^\s*start:\s*(0x[0-9A-Fa-f]+)", re.M)


def segment_starts():
    """(rom_start, name) for every segment, from bh.eu.yaml."""
    out, name = [], None
    for line in (ROOT / "bh.eu.yaml").read_text(encoding="utf-8").splitlines():
        m = JAL_FN.match(line)
        if m:
            name = m.group(1)
        m = JAL_START.match(line)
        if m and name:
            out.append((int(m.group(1), 16), name))
            name = None
    return sorted(out)


def which_segment(off, starts):
    best = None
    for start, name in starts:
        if start <= off:
            best = name
        else:
            break
    return best or "?"


def decode_jal(word, pc):
    """MIPS j/jal: target = (PC+4)[31:28] | (index << 2)."""
    index = word & 0x03FFFFFF
    region = (pc & 0xF0000000) + 4
    return (region | (index << 2)) & 0xFFFFFFFF


def save_artifacts(tag):
    OUT.mkdir(parents=True, exist_ok=True)
    for name, src in (("bh.eu.ld", ROOT / "bh.eu.ld"),
                      ("bh.eu.map", ROOT / "build.eu/bh.eu.map"),
                      ("bh.eu.yaml", ROOT / "bh.eu.yaml")):
        if src.exists():
            (OUT / f"{tag}.{name}").write_bytes(src.read_bytes())


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--tag", default="run")
    ap.add_argument("--save", action="store_true",
                    help="copy ld/map/yaml into the experiment folder")
    args = ap.parse_args()

    built = ROOT / "build.eu/bh.eu.z64"
    ref = ROOT / "baserom.eu.z64"
    if not built.exists():
        raise SystemExit("no build.eu/bh.eu.z64; run tools/native_build.py build --version eu")

    b, r = built.read_bytes(), ref.read_bytes()
    starts = segment_starts()
    lines = []
    lines.append(f"tag              : {args.tag}")
    lines.append(f"built size       : {len(b)}")
    lines.append(f"reference size   : {len(r)}")
    lines.append(f"size delta       : {len(b) - len(r)}")
    lines.append(f"built sha1       : {hashlib.sha1(b).hexdigest().upper()}")
    lines.append(f"reference sha1   : {REF_SHA}")
    lines.append(f"sha1 match       : {hashlib.sha1(b).hexdigest().upper() == REF_SHA}")
    lines.append("")

    n = min(len(b), len(r))
    diffs = [o for o in range(n) if b[o] != r[o]]
    lines.append(f"differing bytes  : {len(diffs)}")
    if not diffs:
        lines.append("no differences")
        report = "\n".join(lines)
        print(report)
        if args.save:
            save_artifacts(args.tag)
            (OUT / f"{args.tag}.txt").write_text(report + "\n", encoding="utf-8", newline="\n")
            print(f"saved artifacts to {OUT}")
        return

    lines.append(f"first difference : 0x{diffs[0]:06X} ({which_segment(diffs[0], starts)})")
    lines.append("")

    runs = [[diffs[0]]]
    for a, z in zip(diffs, diffs[1:]):
        if z - a <= 16:
            runs[-1].append(z)
        else:
            runs.append([z])
    lines.append("difference runs (start, end, length, segment):")
    for run in runs[:20]:
        s, e = run[0], run[-1]
        lines.append(f"  0x{s:06X}  0x{e:06X}  {len(run):5d}  {which_segment(s, starts)}")
    if len(runs) > 20:
        lines.append(f"  ... and {len(runs) - 20} more runs")

    # decoded jumps
    lines.append("")
    lines.append("differing j/jal instructions:")
    lines.append(f"  {'rom':>9} {'segment':<26} {'ref':>10} {'built':>10} "
                 f"{'ref target':>12} {'built target':>12} {'delta':>7}")
    jrows = 0
    by_region = {}
    for off in diffs:
        base = off & ~3
        if base not in diffs and base + 1 not in diffs and base + 2 not in diffs and base + 3 not in diffs:
            continue
        if base + 4 > n:
            continue
        rw = int.from_bytes(r[base:base + 4], "big")
        bw = int.from_bytes(b[base:base + 4], "big")
        if (rw >> 26) not in J_OP and (bw >> 26) not in J_OP:
            continue
        rt, bt = decode_jal(rw, base), decode_jal(bw, base)
        seg = which_segment(base, starts)
        by_region[seg] = by_region.get(seg, 0) + 1
        lines.append(f"  0x{base:06X} {seg:<26} {rw:08X}  {bw:08X} "
                     f"0x{rt:08X}  0x{bt:08X}  {bt - rt:+d}")
        jrows += 1
        if jrows >= 40:
            lines.append("  ... truncated")
            break
    if not jrows:
        lines.append("  (none: differences are not jump instructions)")

    lines.append("")
    lines.append("differing jumps by segment:")
    for seg, count in sorted(by_region.items(), key=lambda kv: -kv[1]):
        lines.append(f"  {seg:<26} {count}")

    report = "\n".join(lines)
    print(report)
    if args.save:
        save_artifacts(args.tag)
        (OUT / f"{args.tag}.txt").write_text(report + "\n", encoding="utf-8", newline="\n")
        print(f"\nsaved artifacts to {OUT}")


if __name__ == "__main__":
    main()