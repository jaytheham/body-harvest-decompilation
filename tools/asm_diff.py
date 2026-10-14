"""Classify the differences in a function's assembly.

    python tools/asm_diff.py <function> [--base-asm FILE] [--show]
    python tools/asm_diff.py --batch [--version us|eu] [--limit N] [--write PATH]
    python tools/asm_diff.py --batch --summary

`tools/asm-differ/diff.py` already aligns the target and current listings,
collapses matching lines and marks every differing one. It does not run in
batch, and it reports a branch target and an ordinary immediate with the same
marker, so a change to control flow looks like a change to a relocated address.

This wraps it rather than replacing it: the differ is invoked as a subprocess,
its markers are read back out of the `plain` format, and the only refinement is
splitting that one `i` marker into `BRANCH` and `IMMEDIATE`.

Markers, straight from the differ:

  ``i``  immediate or address difference
  ``s``  stack-slot difference only
  ``r``  register difference (``R`` = register-category difference)
  ``|``  different instruction
  ``<``  removed, present only in the target
  ``>``  added, present only in the build

`BRANCH` is `i` on a branch or call, which is the case worth separating: an
immediate is usually a symbol that only needs re-relocating, whereas a branch
target is control flow.

Running the differ as a subprocess rather than importing it keeps this tool
free of the vendored tool's dependency set and its import-time side effects.

The differ compares the base ROM with the built ROM. A default build assembles
every nonmatching function from its original ``.s``, so it matches by
construction and a batch finds no differences; diff C bodies with a
``--non-matching`` build.
"""
import argparse
import collections
import pathlib
import re
import subprocess
import sys

sys.path.insert(0, str(pathlib.Path(__file__).resolve().parent))
import decomp_common as dc

ROOT = dc.ROOT
DIFFER = ROOT / "tools/asm-differ/diff.py"
VENV_PYTHON = ROOT / "tools/windows/venv/Scripts/python.exe"

#: Header cells are padded to the differ's column width, and the current column
#: sits one padding group after it. Padding is 7 chars when line numbers are
#: shown, which is the default.
PADDING = 7

#: Mnemonic at the end of an instruction line, after the address column.
MNEMONIC = re.compile(r"^\s*[0-9A-Fa-f]+:\s+([A-Za-z0-9.]+)")

#: Instructions whose immediate slot is a control-flow destination rather than
#: a value, so a differing one is a change in control flow.
#: ``jal`` is not here: its differing immediate is a relocated symbol.
BRANCH_MNEMONICS = frozenset({"beq", "bne", "beqz", "bnez", "blez", "bgtz",
                              "bltz", "bgez", "b", "bal", "bltzal", "bgezal",
                              "beql", "bnel", "beqzl", "bnezl", "blezl", "bgtzl",
                              "bltzl", "bgezl", "bltzall", "bgezall",
                              "bc1t", "bc1f", "bc1tl", "bc1fl", "j"})

MARKER_NAMES = {
    "i": "IMMEDIATE",
    "s": "STACK",
    "r": "REGISTER",
    "R": "REGISTER_CATEGORY",
    "|": "OPCODE",
    "<": "REMOVED",
    ">": "ADDED",
}


def differ_python():
    """A python interpreter that has asm-differ's dependencies."""
    if VENV_PYTHON.exists():
        return str(VENV_PYTHON)
    for name in ("python3", "python"):
        try:
            r = subprocess.run([name, "-c", "import watchdog"],
                               capture_output=True, timeout=30)
            if r.returncode == 0:
                return name
        except (OSError, subprocess.TimeoutExpired):
            continue
    return sys.executable


def run_differ(function, end_addr=None, base_asm=None, version="us"):
    """The differ's `plain` output as a list of lines.

    ``--version`` is defined by the repository's ``diff_settings.py``, which
    picks the base ROM, built ROM and map for that version.
    """
    cmd = [differ_python(), str(DIFFER), "--no-pager", "--format=plain",
           "--version", version]
    if base_asm:
        cmd += ["--base-asm", str(base_asm)]
    cmd.append(function)
    if end_addr:
        # asm-differ's positionals are start then end, and it rejects a bare
        # hex string, so the prefix stays.
        cmd.append(hex(end_addr))
    r = subprocess.run(cmd, cwd=ROOT, capture_output=True, text=True,
                       timeout=600, encoding="utf-8", errors="replace")
    if r.returncode != 0:
        raise SystemExit(f"asm-differ failed on {function}:\n"
                         f"{r.stdout[-2000:]}\n{r.stderr[-2000:]}")
    return r.stdout.splitlines()


def parse_columns(lines):
    """``(marker_col, current_col)`` derived from the differ's header.

    Taken from the header rather than hard-coded so a different column width
    still parses.
    """
    for line in lines:
        if "CURRENT" in line or "BASE" in line or "TARGET" in line:
            marker = line.find("CURRENT")
            if marker < 0:
                marker = line.find("BASE")
            if marker >= 0:
                return marker - PADDING, marker
    return 50 - PADDING, 50


def mnemonic_of(text):
    m = MNEMONIC.match(text)
    return m.group(1).lower() if m else ""


def parse_rows(lines):
    """``[(marker, base_text, current_text)]`` for every differing row."""
    marker_col, current_col = parse_columns(lines)
    rows = []
    for line in lines:
        # Header and separator rows have no marker column.
        if len(line) <= marker_col or "CURRENT" in line or "BASE" in line \
                or "TARGET" in line or not line.strip():
            continue
        marker = line[marker_col]
        if marker not in "isrR|<>":
            continue
        base = line[:marker_col].rstrip()
        current = line[current_col:].rstrip() if len(line) > current_col else ""
        rows.append((marker, base, current))
    return rows


def classify(marker, base_text, current_text):
    """Class of one differing row, one of the keys of :data:`MARKER_NAMES`."""
    if marker == "|":
        return "OPCODE"
    if marker != "i":
        return MARKER_NAMES[marker]
    # The only refinement: an immediate on a branch or call is a destination.
    mnem = mnemonic_of(current_text) or mnemonic_of(base_text)
    return "BRANCH" if mnem in BRANCH_MNEMONICS else "IMMEDIATE"


def diff_function(function, end_addr=None, base_asm=None, version="us"):
    """``(tally, rows)`` for one function."""
    lines = run_differ(function, end_addr, base_asm, version)
    tally = collections.Counter()
    rows = []
    for marker, base, current in parse_rows(lines):
        cls = classify(marker, base, current)
        tally[cls] += 1
        rows.append((cls, base, current))
    return tally, rows


def function_end(functions, name):
    """ROM offset of the function after ``name`` in its segment, or None."""
    fn = functions.get(name)
    if not fn:
        return None
    later = [f.rom for f in functions.values()
             if f.segment == fn.segment and f.rom > fn.rom]
    return min(later) if later else None


def nonmatching_names(version):
    """Function names with a nonmatching listing for a version."""
    asm_root = ROOT / ("asm.eu" if version == "eu" else "asm")
    out = []
    for path in sorted((asm_root / "nonmatchings").rglob("*.s")):
        for label, _i, _c, _l in dc.iter_listing(path):
            out.append(label)
    return out


def load_map(version):
    build = ROOT / ("build.eu/bh.eu.map" if version == "eu" else "build/bh.us.map")
    functions, _segments = dc.parse_map(build, version)
    return functions


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("function", nargs="?", help="function name to diff")
    ap.add_argument("--base-asm", metavar="FILE",
                    help="use this listing as the target instead of the ROM")
    ap.add_argument("--show", action="store_true", help="print every differing row")
    ap.add_argument("--batch", action="store_true",
                    help="classify every nonmatching function")
    ap.add_argument("--version", choices=("us", "eu"), default="eu")
    ap.add_argument("--limit", type=int, default=0)
    ap.add_argument("--summary", action="store_true",
                    help="batch mode: totals only, skip the worst-function table")
    ap.add_argument("--write", metavar="PATH", help="write the report here")
    args = ap.parse_args()

    if args.batch:
        functions = load_map(args.version)
        names = nonmatching_names(args.version)
        if args.limit:
            names = names[:args.limit]

        totals = collections.Counter()
        per_function = collections.Counter()
        failures = []
        for i, name in enumerate(names, 1):
            try:
                tally, _rows = diff_function(
                    name, function_end(functions, name), args.base_asm, args.version)
            except SystemExit as e:
                failures.append(name)
                print(f"[{i}/{len(names)}] {name}: {e}", file=sys.stderr)
                continue
            totals.update(tally)
            if sum(tally.values()):
                per_function[name] = sum(tally.values())

        lines = [f"# Assembly diff - {args.version.upper()}", "",
                 f"{len(names)} functions, {totals.total()} differing instructions.",
                 ""]
        if failures:
            lines += [f"{len(failures)} functions could not be diffed:", ""]
            lines += [f"- `{n}`" for n in failures[:20]]
            lines.append("")
        if not totals and not failures:
            lines += ["No differences: the build assembles every nonmatching "
                      "function from its original .s, so it matches by "
                      "construction. Diff C bodies with a --non-matching build.",
                      ""]
        lines += ["| class | differing instructions |", "|---|---:|"]
        order = ("BRANCH", "OPCODE", "IMMEDIATE", "STACK", "REGISTER",
                 "REGISTER_CATEGORY", "REMOVED", "ADDED")
        for cls in order:
            if totals[cls]:
                lines.append(f"| {cls} | {totals[cls]} |")
        if not args.summary:
            lines += ["", "## Functions with the most differences", "",
                      "| function | differing instructions |", "|---|---:|"]
            for name, n in per_function.most_common(30):
                lines.append(f"| `{name}` | {n} |")
        report = "\n".join(lines) + "\n"
        print(report)
        if args.write:
            out = pathlib.Path(args.write)
            out.parent.mkdir(parents=True, exist_ok=True)
            out.write_text(report, encoding="utf-8", newline="\n")
            print(f"wrote {out}")
        return

    if not args.function:
        ap.error("give a function name, or --batch")
    functions = load_map(args.version)
    tally, rows = diff_function(args.function,
                               function_end(functions, args.function),
                               args.base_asm, args.version)
    if args.show:
        for cls, base, current in rows:
            print(f"{cls:<17} {base or '(absent)':<44} | {current or '(absent)'}")
    if not tally:
        print(f"{args.function}: no differences")
        return
    print(f"{args.function}: {tally.total()} differences - " + ", ".join(
        f"{k}={v}" for k, v in sorted(tally.items())))


if __name__ == "__main__":
    main()
