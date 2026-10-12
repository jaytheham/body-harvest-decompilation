"""Compare a built EU ROM against the reference and explain every difference.

    python tools/eu_rom_diff.py [--tag NAME] [--save] [--out DIR]

Reports, per the seam investigation:
  * size delta and SHA-1
  * first differing ROM offset and a distribution of the differing runs
  * decoded `jal`/`j` targets for every differing instruction, so a one-byte
    difference can be read as an address discrepancy rather than a stray byte

Also decodes which segment each difference falls in, using the segment layout
from the linker map, so relocation errors can be separated from layout errors.

Baseline (byte-exact) config produces zero differences and therefore no report
rows; run it against an experimental build.
"""
import argparse
import hashlib
import pathlib
import sys

sys.path.insert(0, str(pathlib.Path(__file__).resolve().parent))
import decomp_common as dc

REF_SHA = (dc.ROOT / "bh.eu.sha1").read_text(encoding="utf-8").split()[0].upper()


def save_artifacts(tag, out):
    out.mkdir(parents=True, exist_ok=True)
    for name, src in (("bh.eu.ld", dc.ROOT / "bh.eu.ld"),
                      ("bh.eu.map", dc.ROOT / "build.eu/bh.eu.map"),
                      ("bh.eu.yaml", dc.ROOT / "bh.eu.yaml")):
        if src.exists():
            (out / f"{tag}.{name}").write_bytes(src.read_bytes())


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--tag", default="run")
    ap.add_argument("--save", action="store_true",
                    help="copy ld/map/yaml and the report into --out")
    ap.add_argument("--out", type=pathlib.Path, default=dc.ROOT / "build.eu" / "rom_diff",
                    help="folder for --save (default build.eu/rom_diff)")
    args = ap.parse_args()

    built = dc.ROOT / "build.eu/bh.eu.z64"
    ref = dc.ROOT / "baserom.eu.z64"
    if not built.exists():
        raise SystemExit("no build.eu/bh.eu.z64; run tools/native_build.py build --version eu")

    # The map is the source of truth for segment layout: it records the load
    # address ld assigned each segment, which is exactly what a ROM offset has
    # to be converted against.
    _, segments = dc.parse_map(dc.ROOT / "build.eu/bh.eu.map", "eu")

    b, r = built.read_bytes(), ref.read_bytes()
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
            save_artifacts(args.tag, args.out)
            (args.out / f"{args.tag}.txt").write_text(report + "\n", encoding="utf-8", newline="\n")
            print(f"saved artifacts to {args.out}")
        return

    lines.append(f"first difference : 0x{diffs[0]:06X} ({dc.which_segment_rom(diffs[0], segments)})")
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
        lines.append(f"  0x{s:06X}  0x{e:06X}  {len(run):5d}  {dc.which_segment_rom(s, segments)}")
    if len(runs) > 20:
        lines.append(f"  ... and {len(runs) - 20} more runs")

    # decoded jumps
    lines.append("")
    lines.append("differing j/jal instructions:")
    lines.append(f"  {'rom':>9} {'segment':<26} {'ref':>10} {'built':>10} "
                 f"{'ref target':>12} {'built target':>12} {'delta':>7}")
    jrows = 0
    by_region = {}
    for base in sorted({off & ~3 for off in diffs}):
        if base + 4 > n:
            continue
        rw = int.from_bytes(r[base:base + 4], "big")
        bw = int.from_bytes(b[base:base + 4], "big")
        if (rw >> 26) not in dc.J_OP and (bw >> 26) not in dc.J_OP:
            continue
        vram = dc.vram_for_rom(base, segments)
        if vram is None:
            continue
        rt, bt = dc.decode_jal(rw, vram), dc.decode_jal(bw, vram)
        seg = dc.which_segment_rom(base, segments)
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
        save_artifacts(args.tag, args.out)
        (args.out / f"{args.tag}.txt").write_text(report + "\n", encoding="utf-8", newline="\n")
        print(f"\nsaved artifacts to {args.out}")


if __name__ == "__main__":
    main()
