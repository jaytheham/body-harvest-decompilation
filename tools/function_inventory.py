"""Build a per-function inventory of the ROMs and rank the decomp work queue.

    python tools/function_inventory.py [--version us|eu|both]
                                       [--write PATH] [--report PATH]
                                       [--segment NAME] [--status STATUS]
                                       [--limit N] [--json]

``--report`` takes ``{version}`` in the path when ``--version both`` is used,
for example ``--report build/reports/function-inventory.{version}.md``. EU core
rows carry a PAL class from ``tools/pal_us_diff.py``, which needs both
baseroms and splat's Python packages.

The linker map is the source of truth for *where* a function is: it records every
symbol's VRAM address, the segment it sits in, and which object file it came
from, which is what ties a function to a C file. Listings are the source of
truth for *whether* it is decompiled: splat writes one ``.s`` per function into
``asm/matchings`` or ``asm/nonmatchings``, so a function with a nonmatching
listing is one that still needs work.

A function with no listing at all is matched. That is not obvious: splat only
emits listings for a C file when that file contains at least one
``#ifdef NON_MATCHING`` function, so the matched siblings of a stub also get a
listing, but a file with no stubs gets none.

Instruction counts and call edges are decoded from the ROM rather than read
out of listings, so they are exact and do not depend on splat having run.
"""
import argparse
import collections
import json
import pathlib
import re
import sys

sys.path.insert(0, str(pathlib.Path(__file__).resolve().parent))
import decomp_common as dc

ROOT = dc.ROOT

#: How a function's object file decides whether it is decompilable C.
#:   ``build/src.us/core/1050.c.o``     -> C, decompilable
#:   ``build/lib/libultra_rom.a(x.o)`` -> prebuilt archive, not decompilable
#:   ``build.eu/asm.eu/aisetfreq.s.o`` -> handwritten asm, not decompilable
ARCHIVE_OBJ = re.compile(r"\([^)]+\)$")
ASM_OBJ = re.compile(r"\.s\.o$")


def classify(fn, category):
    """Decomp status of a function.

    ``nonmatching`` means the C body is wrapped in ``#ifdef NON_MATCHING`` and
    the ROM is produced from a ``.s`` file, so it is the one that needs work.
    ``matching`` means the C body is already correct. ``library`` and ``asm``
    are not C at all.
    """
    if fn.c_file is None:
        if fn.obj and ARCHIVE_OBJ.search(fn.obj):
            return "library"
        return "asm"
    if category == "nonmatching":
        return "nonmatching"
    return "matching"


def listing_index(asm_root):
    """``{label: (category, instr_count)}`` from a version's listings.

    ``category`` is ``matching`` or ``nonmatching``. A label that appears in both
    is reported as nonmatching, since that is the state that needs work.
    """
    out = {}
    for category in ("matching", "nonmatching"):
        base = asm_root / ("matchings" if category == "matching" else "nonmatchings")
        if not base.exists():
            continue
        for path in base.rglob("*.s"):
            for label, instrs, _calls, _locals in dc.iter_listing(path):
                prev = out.get(label)
                if prev is None or category == "nonmatching":
                    out[label] = (category, len(instrs))
    # The PAL extraction of the sources shared with NTSC (src.us/core) is listed under <asm>/src.us/,
    # with no matchings/nonmatchings split; a GLOBAL_ASM pragma marks nonmatching.
    shared = asm_root / "src.us"
    if shared.exists():
        pragmas = global_asm_labels()
        for path in shared.rglob("*.s"):
            for label, instrs, _calls, _locals in dc.iter_listing(path):
                if label not in out:
                    cat = "nonmatching" if label in pragmas else "matching"
                    out[label] = (cat, len(instrs))
    return out


def global_asm_labels():
    """Function names named by a ``GLOBAL_ASM`` pragma in the files that PAL shares with NTSC (``src.us/core`` and the
    overlay files of ``shared_overlay_files.txt``)."""
    names = set()
    for c in [*(ROOT / "src.us" / "core").rglob("*.c"), *(ROOT / f for f in dc.shared_overlay_files())]:
        text = c.read_text(encoding="utf-8", errors="replace")
        names.update(re.findall(r'GLOBAL_ASM\("[^"]*?([\w.-]+)\.s"\)', text))
    return names


def decode_calls(rom, fn, vram_index, segments):
    """Callee names for one function, decoded from the ROM.

    Only ``jal`` is followed: ``j`` is used for local branches and tail calls
    within a function, and following it would add intra-function noise.
    """
    seg = segments.get(fn.segment)
    base_vram = seg[2] - seg[0] if seg else 0
    callees = []
    for off in range(fn.rom, fn.rom + fn.size, 4):
        if off + 4 > len(rom):
            break
        word = int.from_bytes(rom[off:off + 4], "big")
        if (word >> 26) != 3:
            continue
        vram = base_vram + off
        target = dc.decode_jal(word, vram)
        name = vram_index.get(target)
        if name and name != fn.name:
            callees.append(name)
    return callees


def pal_classes(eu_functions):
    """``{eu_rom: class}`` comparing each core function against NTSC.

    ``EXACT`` means the NTSC body can be copied verbatim. ``SHAPE`` means the
    opcodes match and only immediates differ, which is ordinary relocation.
    ``DIFF`` means PAL rewrote it and the NTSC body must not be reused. Only
    core is compared; overlays are not covered.

    Each NTSC function is placed at its PAL offset, from the per-function
    shift that ``pal_us_diff`` derives, and the EU function that covers at
    least half of it takes its class. Names cannot be used: EU names encode
    EU addresses.
    """
    import pal_us_diff
    classes = {r.pal_rom: (r.cls, r.size) for r in pal_us_diff.classify_all()}

    ntsc = sorted(classes)
    out = {}
    for fn in eu_functions:
        if fn.segment != "core":
            continue
        best_rom, best_overlap = None, 0
        for rom in ntsc:
            cls, size = classes[rom]
            end = rom + size
            overlap = min(fn.rom + fn.size, end) - max(fn.rom, rom)
            if overlap > best_overlap:
                best_rom, best_overlap = rom, overlap
        if best_rom is not None and best_overlap * 2 >= fn.size:
            out[fn.rom] = classes[best_rom][0]
    return out


def build(version, cross=None):
    """Full inventory for one version.

    ``cross`` optionally supplies ``{name: class}`` from the other ROM, which
    is what turns the EU work queue into a reuse plan.
    """
    build_dir = ROOT / ("build.eu" if version == "eu" else "build")
    functions, segments = dc.parse_map(build_dir / f"bh.{version}.map", version)
    rom = dc.read_rom(version)
    asm_root = ROOT / ("asm.eu" if version == "eu" else "asm")
    listings = listing_index(asm_root)

    seg_table = {name: (rom_start, size, vram_start)
                 for rom_start, size, vram_start, name in segments}
    vram_index = {fn.vram: fn.name for fn in functions.values()}

    rows = []
    for fn in functions.values():
        category, listed_instrs = listings.get(fn.name, (None, 0))
        status = classify(fn, category)

        callees = sorted(set(decode_calls(rom, fn, vram_index, seg_table)))
        rows.append({
            "name": fn.name,
            "vram": f"0x{fn.vram:08X}",
            "rom": f"0x{fn.rom:06X}",
            "size": fn.size,
            "instrs": listed_instrs or max(fn.size // 4, 0),
            "segment": fn.segment,
            "c_file": fn.c_file,
            "status": status,
            "pal_class": (cross or {}).get(fn.rom, ""),
            "callees": callees,
            "callers": [],
        })

    # callers, from the callee edges just collected
    callers = collections.defaultdict(list)
    for row in rows:
        for callee in row["callees"]:
            callers[callee].append(row["name"])
    for row in rows:
        row["callers"] = sorted(callers[row["name"]])

    return rows, segments


def rank(rows):
    """Order the work queue by how much of it is already solved.

    A ``DIFF`` function needs its own decomp from scratch. A ``SHAPE`` one only
    needs its immediates re-relocated, so most of the NTSC work carries over.
    ``EXACT`` needs nothing but a copy. Within a class, the functions with the
    most callers go first, because matching them unblocks the most callees.
    """
    def key(row):
        return ({"DIFF": 0, "SHAPE": 1, "EXACT": 2}.get(row.get("pal_class"), 3),
                row["status"] != "nonmatching",
                -len(row["callers"]),
                -row["size"],
                row["name"])
    return sorted(rows, key=key)


def report(rows, segments, version):
    lines = [f"# Function inventory - {version.upper()}", ""]
    lines.append(f"{len(rows)} functions across {len(segments)} segments.")
    lines.append("")

    tally = collections.Counter(r["status"] for r in rows)
    lines.append("| status | functions | bytes |")
    lines.append("|---|---:|---:|")
    for status in ("matching", "nonmatching", "library", "asm"):
        group = [r for r in rows if r["status"] == status]
        if group:
            lines.append(f"| {status} | {len(group)} | "
                         f"{sum(r['size'] for r in group)} |")
    lines.append("")

    by_segment = collections.Counter(r["segment"] for r in rows)
    lines.append("| segment | functions | nonmatching |")
    lines.append("|---|---:|---:|")
    for seg, count in by_segment.most_common():
        nm = sum(1 for r in rows if r["segment"] == seg and r["status"] == "nonmatching")
        lines.append(f"| {seg} | {count} | {nm} |")
    lines.append("")

    if any(r.get("pal_class") for r in rows):
        lines.append("PAL/NTSC class, from `tools/pal_us_diff.py` (core only):")
        lines.append("")
        lines.append("| class | meaning | functions |")
        lines.append("|---|---|---:|")
        for cls, meaning in (
            ("DIFF", "PAL rewrote it; NTSC body must not be reused"),
            ("SHAPE", "opcodes match, immediates differ (relocation)"),
            ("EXACT", "byte identical; NTSC body reusable verbatim"),
        ):
            n = sum(1 for r in rows if r.get("pal_class") == cls)
            if n:
                lines.append(f"| {cls} | {meaning} | {n} |")
        lines.append("")

    todo = [r for r in rank(rows) if r["status"] == "nonmatching"]
    lines.append(f"## Work queue - {len(todo)} nonmatching functions")
    lines.append("")
    lines.append("| # | function | class | segment | bytes | instrs | callers | callees | C file |")
    lines.append("|---:|---|---|---:|---:|---:|---:|---:|---|")
    for i, r in enumerate(todo, 1):
        lines.append(
            f"| {i} | `{r['name']}` | {r.get('pal_class') or '-'} | {r['segment']} "
            f"| {r['size']} | {r['instrs']} "
            f"| {len(r['callers'])} | {len(r['callees'])} | {r['c_file'] or '-'} |")
    return "\n".join(lines) + "\n"


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--version", choices=("us", "eu", "both"), default="both")
    ap.add_argument("--write", metavar="PATH", help="write the JSON inventory here")
    ap.add_argument("--report", metavar="PATH", help="write the markdown report here")
    ap.add_argument("--segment", action="append", default=[],
                    help="only these segments (repeatable)")
    ap.add_argument("--status", choices=("matching", "nonmatching", "library", "asm"))
    ap.add_argument("--limit", type=int, default=0, help="cap the work-queue table")
    ap.add_argument("--json", action="store_true", help="print JSON to stdout")
    args = ap.parse_args()

    versions = ("us", "eu") if args.version == "both" else (args.version,)
    eu_functions = None
    if "eu" in versions:
        eu_functions, _ = dc.parse_map(ROOT / "build.eu/bh.eu.map", "eu")
    all_rows = {}
    for version in versions:
        cross = pal_classes(list(eu_functions.values())) if version == "eu" else None
        rows, segments = build(version, cross)
        if args.segment:
            rows = [r for r in rows if r["segment"] in args.segment]
        if args.status:
            rows = [r for r in rows if r["status"] == args.status]
        all_rows[version] = rows

        text = report(rows, segments, version)
        if args.limit:
            head, _sep, _tail = text.partition("## Work queue")
            todo = [r for r in rank(rows) if r["status"] == "nonmatching"][:args.limit]
            text = head + "## Work queue\n\n" + "\n".join(
                f"{i}. `{r['name']}` ({r.get('pal_class') or '-'}) - "
                f"{r['size']}B, {len(r['callers'])} callers"
                for i, r in enumerate(todo, 1)) + "\n"
        print(text)

        if args.report:
            if len(versions) > 1 and "{version}" not in args.report:
                ap.error("--version both writes two reports; put {version} in --report")
            out = pathlib.Path(args.report.format(version=version))
            out.parent.mkdir(parents=True, exist_ok=True)
            out.write_text(text, encoding="utf-8", newline="\n")
            print(f"wrote {out}")

    if args.write:
        out = pathlib.Path(args.write)
        out.parent.mkdir(parents=True, exist_ok=True)
        out.write_text(json.dumps(all_rows, indent=2), encoding="utf-8", newline="\n")
        print(f"wrote {out}")

    if args.json:
        print(json.dumps(all_rows, indent=2))


if __name__ == "__main__":
    main()
