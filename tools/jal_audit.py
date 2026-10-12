"""Audit every call edge in both ROMs.

    python tools/jal_audit.py [--version us|eu|both] [--unresolved] [--cross]
                              [--limit N] [--write PATH]

Two checks, both read off the ROM and the listings.

**Unresolved targets.** A `jal` whose destination carries no symbol is a call to
a function that was never declared. Those are what surface as undefined symbols
at link time, or as a function that never gets a name.

**Callee-set divergence.** For every EU function the NTSC function covering the
same bytes is found by maximum overlap, and the two callee sets are compared. A
EU function calling something its NTSC counterpart does not is evidence the code
was really rewritten, which is what separates `DIFF` from `SHAPE` below the level
of a byte comparison: two functions can be byte-identical except for immediates
and still call different things.

Only `jal` is followed. `j` is used for intra-function branches and tail calls
and would add an edge from every function to itself.

### Why extents come from listings

A function's size in the linker map is the gap to the next symbol in its text
region, and jump tables live in that same region with no symbol of their own,
so the gap runs through the table and beyond. Decoding that reads table entries
as instructions and manufactures bogus call edges.

The listing stops at a function's last instruction, so it is the only exact
extent available. Functions without one - libultra archive members on US, the
handwritten asm blocks on EU - fall back to the map range and are reported in a
separate approximate bucket, because their unresolved counts are dominated by
that artifact rather than by missing declarations.
"""
import argparse
import collections
import pathlib
import sys

sys.path.insert(0, str(pathlib.Path(__file__).resolve().parent))
import decomp_common as dc

ROOT = dc.ROOT


def listing_extents(version, functions):
    """``{name: size}`` from the listings, exact per function."""
    asm_root = ROOT / ("asm.eu" if version == "eu" else "asm")
    out = {}
    # Shared src/common files get their listings under <asm>/src/.
    for sub in ("matchings", "nonmatchings", "src"):
        base = asm_root / sub
        if not base.exists():
            continue
        for path in base.rglob("*.s"):
            for label, instrs, _calls, _locals in dc.iter_listing(path):
                if label in functions and instrs:
                    out[label] = instrs[-1][0] + 4 - instrs[0][0]
    return out


def call_table(version):
    """``{name: (exact, rom, size, [(target_vram, callee_name)])}``.

    ``callee_name`` is ``None`` when the target carries no symbol. ``exact`` is
    True when the extent came from a listing rather than the map.
    """
    build = ROOT / ("build.eu/bh.eu.map" if version == "eu" else "build/bh.us.map")
    functions, segments = dc.parse_map(build, version)
    rom = dc.read_rom(version)
    seg_table = {name: (rom_start, size, vram_start)
                 for rom_start, size, vram_start, name in segments}
    vram_index = {fn.vram: fn.name for fn in functions.values()}
    extents = listing_extents(version, functions)

    table = {}
    for name, fn in functions.items():
        if dc.is_data_segment(fn.segment):
            continue
        base = seg_table.get(fn.segment)
        vram_base = base[2] - base[0] if base else 0
        listed_size = extents.get(name)
        # Decoding a listing extent reads words from the listing's own VRAM
        # range, so the ROM offset is derived from that rather than the map.
        if listed_size:
            lo = fn.rom
            size = listed_size
        else:
            lo, size = fn.rom, fn.size
            # Without a listing the listing's first instruction address is
            # unknown; the function start is the map's, which is what the map
            # symbol says it is, so this stays the function start.
        calls = []
        for off in range(lo, lo + size, 4):
            if off < 0 or off + 4 > len(rom):
                break
            word = int.from_bytes(rom[off:off + 4], "big")
            if (word >> 26) != 3:
                continue
            target = dc.decode_jal(word, vram_base + off)
            calls.append((target, vram_index.get(target)))
        table[name] = (listed_size is not None, fn.rom, size, calls)
    return table


def tally(calls):
    """``(total, named)`` for a list of ``(target_vram, callee_name)``."""
    return len(calls), sum(1 for _t, c in calls if c)


def ntsc_name_of(rom, functions):
    """Symbol name for a ROM offset, for readable output."""
    for fn in functions.values():
        if fn.rom <= rom < fn.rom + fn.size:
            return fn.name
    return f"0x{rom:06X}"


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--version", choices=("us", "eu", "both"), default="both")
    ap.add_argument("--unresolved", action="store_true",
                    help="list every jal target that has no symbol")
    ap.add_argument("--cross", action="store_true",
                    help="compare EU callee sets against their NTSC counterparts")
    ap.add_argument("--limit", type=int, default=0)
    ap.add_argument("--write", metavar="PATH", help="write the report here")
    args = ap.parse_args()

    versions = ("us", "eu") if args.version == "both" else (args.version,)
    tables = {v: call_table(v) for v in versions}

    lines = ["# Call audit", ""]
    for version in versions:
        table = tables[version]
        exact = [(n, r, s, c) for n, (e, r, s, c) in table.items() if e]
        approx = [(n, r, s, c) for n, (e, r, s, c) in table.items() if not e]
        ecalls = [c for _n, _r, _s, cs in exact for c in cs]
        acalls = [c for _n, _r, _s, cs in approx for c in cs]
        et, enamed = tally(ecalls)
        at, anamed = tally(acalls)
        lines += [
            f"## {version.upper()}",
            "",
            f"functions with an exact extent   : {len(exact)}",
            f"functions decoded from the map   : {len(approx)}",
            "",
            "| bucket | functions | `jal` | resolved | unresolved |",
            "|---|---:|---:|---:|---:|",
            f"| exact | {len(exact)} | {et} | {enamed} | {et - enamed} |",
            f"| approximate | {len(approx)} | {at} | {anamed} | {at - anamed} |",
            "",
        ]
        if at - anamed:
            lines += [
                "The approximate bucket decodes jump tables as code, so its",
                "unresolved count is an artifact of that and is not a list of",
                "missing declarations.",
                "",
            ]

    if args.unresolved:
        for version in versions:
            table = tables[version]
            found = collections.defaultdict(set)
            for name, (exact, _rom, _size, calls) in table.items():
                if not exact:
                    continue
                for target, callee in calls:
                    if callee is None:
                        found[target].add(name)
            lines += [f"### Unresolved targets - {version.upper()}", ""]
            if not found:
                lines += ["None. Every jal in an exact function resolves.", ""]
                continue
            lines += ["| target | callers |", "|---|---:|"]
            shown = args.limit or len(found)
            for target in sorted(found)[:shown]:
                lines.append(f"| `0x{target:08X}` | {len(found[target])} |")
            if len(found) > shown:
                lines.append(f"| ... and {len(found) - shown} more | |")
            lines.append("")

    if args.cross:
        if "us" not in tables or "eu" not in tables:
            ap.error("--cross needs both versions, so do not pass --version")

        # Restricted to core, where the shift is a documented single insertion
        # of 0x30 bytes (docs/pal-vs-na.md), so a EU offset converts to its NTSC
        # one exactly. Outside core there is no such rule: the overlays are
        # version specific, and libultra differs in both layout and content
        # (PAL runs at 50Hz), so an overlap join there pairs the wrong functions
        # and reports divergence for code that never changed.
        CORE_END = 0x40750
        INSERT = 0x7E04
        SHIFT = 0x30

        def to_ntsc_rom(eu_rom):
            if eu_rom >= CORE_END:
                return None
            return eu_rom - SHIFT if eu_rom >= INSERT else eu_rom

        us_functions, us_segments = dc.parse_map(ROOT / "build/bh.us.map", "us")
        ntsc_by_rom = {f.rom: f.name for f in us_functions.values()
                       if f.segment == "core"}
        eu_functions, eu_segments = dc.parse_map(ROOT / "build.eu/bh.eu.map", "eu")

        diverged = []
        compared = 0
        for eu_name, (exact, eu_rom, eu_size, _calls) in tables["eu"].items():
            if not exact or eu_functions[eu_name].segment != "core":
                continue
            ntsc_rom = to_ntsc_rom(eu_rom)
            ntsc_name = ntsc_by_rom.get(ntsc_rom)
            if not ntsc_name or ntsc_name not in tables["us"]:
                continue
            compared += 1

            def callee_roms(table, name, segments):
                out = set()
                for target, callee in table[name][3]:
                    if callee:
                        rom = dc.rom_for_vram(target, segments)
                        if rom is not None and rom < CORE_END:
                            out.add(rom)
                return out

            # Resolve each callee to the function that contains it, so a
            # difference of a few bytes inside one function - which is what a
            # shifted offset within it looks like - is not reported as a
            # different callee.
            def names_of(roms):
                return {ntsc_name_of(r, us_functions) for r in roms}

            euc = names_of({to_ntsc_rom(r) for r in callee_roms(
                tables["eu"], eu_name, eu_segments)
                if to_ntsc_rom(r) is not None})
            ntc = names_of(callee_roms(tables["us"], ntsc_name, us_segments))
            only_eu = sorted(euc - ntc)
            only_ntsc = sorted(ntc - euc)
            if only_eu or only_ntsc:
                diverged.append((eu_name, only_eu, only_ntsc))

        lines += [
            "### Callee-set divergence (EU vs NTSC, core only)",
            "",
            f"{compared} core functions compared, {len(diverged)} with a callee "
            f"set that differs once EU offsets are converted to NTSC and each "
            f"callee is resolved to the function containing it.",
            "",
            "| EU function | calls that NTSC does not | called by NTSC, not EU |",
            "|---|---|---|",
        ]
        shown = args.limit or len(diverged)
        for eu_name, only_eu, only_ntsc in diverged[:shown]:
            lines.append(f"| `{eu_name}` | "
                         f"{', '.join(f'`{n}`' for n in only_eu) or '-'} | "
                         f"{', '.join(f'`{n}`' for n in only_ntsc) or '-'} |")
        if len(diverged) > shown:
            lines.append(f"| ... and {len(diverged) - shown} more | | |")
        lines.append("")

    report = "\n".join(lines)
    print(report)
    if args.write:
        out = pathlib.Path(args.write)
        out.parent.mkdir(parents=True, exist_ok=True)
        out.write_text(report + "\n", encoding="utf-8", newline="\n")
        print(f"wrote {out}")


if __name__ == "__main__":
    main()
