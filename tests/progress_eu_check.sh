#!/bin/bash
# Run from the root of a checkout (src.us and src.eu present, git history available), with PY set.
# Checks tools/progress.py --version eu and that the default NTSC run still writes what it wrote before the EU view
# existed. It asserts invariants, not the numbers of the day:
#   - the EU json has the keys of the NTSC json plus "version": "eu" and a "note", and the same shapes below them
#   - total = matched + non_matching + asm_stubs for every file, every segment and overall; segments and overall are
#     the sums of their files
#   - the EU core segment has the NTSC core segment's total and no more matched functions
#   - the EU overlay segments hold no matched function except empty C stubs (they are not shared with NTSC yet; when
#     one is shared or decompiled for PAL this check is the one to revise)
#   - the history is empty or a weekly series of at least two points
#   - the preprocessor evaluation of ifdef / ifndef / [!]defined() on VERSION_US, VERSION_EU and NON_MATCHING gives
#     the PAL build's reading of small synthetic files
#   - the default run writes the json of the progress.py at BASE (default 32aaef7ad, the last commit before the EU
#     view), ignoring generated, commit, commit_timestamp and the newest history entry's commit hash
# The NTSC comparison walks the git history twice (in parallel) and takes a few minutes; QUICK=1 compares the
# --verify-with-asm output instead (no history, no contributors), which takes seconds.
# BASE must name a commit that exists in the clone, in QUICK mode too, because the old progress.py is read with
# git show. 32aaef7ad is a local integration commit: once the pull request has been rebased or squashed upstream it
# no longer exists, and BASE must then be set to the last commit whose tools/progress.py has no --version option.
set -u
: "${PY:?set PY to the Python 3.12 interpreter}"
base="${BASE:-32aaef7ad}"
if ! git cat-file -e "${base}^{commit}" 2>/dev/null; then
    echo "FAIL BASE '$base' is not a commit in this clone; set BASE to the last commit before the EU view" \
        "(the one whose tools/progress.py has no --version option)"
    exit 1
fi
failures=0
work=$(mktemp -d)
trap 'rm -rf "$work"' EXIT
native() { cygpath -m "$1" 2>/dev/null || printf '%s' "$1"; }
wd=$(native "$work")

# check <description> <command...>: passes when the command succeeds.
check() {
    local description="$1"
    shift
    if "$@"; then echo "ok   $description"; else echo "FAIL $description"; failures=$((failures + 1)); fi
}

quick_args=()
[ "${QUICK:-0}" = 1 ] && quick_args=(--verify-with-asm)

# The NTSC runs take longest, so they go first and in the background. The old tool is run from outside tools/, with
# the vendored tree-sitter on PYTHONPATH.
git show "$base:tools/progress.py" > "$work/progress_base.py"
vendor=$(native "$PWD/tools/third_party/python_vendor")
PYTHONPATH="$vendor" "$PY" "$wd/progress_base.py" --repo-root . --output "$wd/us_base.json" \
    ${quick_args[@]+"${quick_args[@]}"} > "$work/us_base.log" 2>&1 &
base_pid=$!
"$PY" tools/progress.py --repo-root . --output "$wd/us_new.json" \
    ${quick_args[@]+"${quick_args[@]}"} > "$work/us_new.log" 2>&1 &
new_pid=$!

"$PY" tools/progress.py --version eu --repo-root . --output "$wd/eu.json" > "$work/eu.log" 2>&1
check "--version eu writes its json" test $? -eq 0

refuses() { ! "$PY" tools/progress.py "$@" --output "$wd/refused.json" > "$work/refused.log" 2>&1; }
check "--version eu --verify-with-asm is refused" refuses --version eu --verify-with-asm
check "--version eu --verify-with-asm says why" grep -q 'cannot be combined' "$work/refused.log"
check "an unknown --version is refused" refuses --version xx
check "a refused run writes no json" test ! -e "$work/refused.json"

wait "$base_pid"; base_rc=$?
wait "$new_pid"; new_rc=$?
check "the baseline NTSC run (progress.py at $base) succeeds" test "$base_rc" -eq 0
check "the NTSC run succeeds" test "$new_rc" -eq 0

"$PY" - "$wd/eu.json" "$wd/us_new.json" "$wd/us_base.json" docs/progress.eu.json . <<'PYEOF'
import json
import re
import sys
from datetime import date
from pathlib import Path

eu_path, us_path, base_path, snapshot_path, repo_arg = sys.argv[1:6]
repo = Path(repo_arg)
failures = 0


def check(ok, description):
    """Print one result line and count a failure."""
    global failures
    print(("ok   " if ok else "FAIL ") + description)
    if not ok:
        failures += 1


COUNTS = ("matched", "non_matching", "asm_stubs")
BASE_KEYS = {"generated", "commit", "commit_timestamp", "overall", "segments", "files", "contributors", "history"}
OVERALL_KEYS = {"total_functions", "matched", "non_matching", "asm_stubs", "matched_pct", "decompiled_pct"}
SEGMENT_KEYS = {"display_name", "matched", "non_matching", "asm_stubs", "total", "matched_pct", "decompiled_pct"}
FILE_KEYS = {"path", "segment", "matched", "non_matching", "asm_stubs", "total", "matched_pct", "contributor"}
HISTORY_KEYS = {"date", "commit", "matched", "non_matching", "total"}
CONTRIBUTOR_KEYS = {"name", "files", "matched", "non_matching", "asm_stubs"}


def close(a, b):
    """True when two percentages agree to their rounding."""
    return abs(a - b) < 0.06


def check_document(doc, label):
    """Shape and arithmetic invariants of one EU progress document."""
    check(set(doc) == BASE_KEYS | {"version", "note"}, f"{label}: keys are the NTSC keys plus version and note")
    check(doc.get("version") == "eu", f"{label}: version is eu")
    check(isinstance(doc.get("note"), str) and doc["note"].strip() != "", f"{label}: note is a non-empty string")
    check(set(doc["overall"]) == OVERALL_KEYS, f"{label}: overall has the NTSC keys")
    check(all(set(s) == SEGMENT_KEYS for s in doc["segments"].values()), f"{label}: every segment has the NTSC keys")
    check(all(set(f) == FILE_KEYS for f in doc["files"]), f"{label}: every file has the NTSC keys")
    check(all(f["total"] == sum(f[k] for k in COUNTS) for f in doc["files"]),
          f"{label}: total = matched + non_matching + asm_stubs for every file")
    check(all(s["total"] == sum(s[k] for k in COUNTS) for s in doc["segments"].values()),
          f"{label}: total = matched + non_matching + asm_stubs for every segment")
    overall = doc["overall"]
    check(overall["total_functions"] == sum(overall[k] for k in COUNTS),
          f"{label}: total_functions = matched + non_matching + asm_stubs overall")
    check(all(overall[k] == sum(f[k] for f in doc["files"]) for k in COUNTS)
          and overall["total_functions"] == sum(f["total"] for f in doc["files"]),
          f"{label}: overall is the sum of the files")
    segments_ok = True
    for name, seg in doc["segments"].items():
        in_segment = [f for f in doc["files"] if f["segment"] == name]
        segments_ok &= bool(in_segment) and all(seg[k] == sum(f[k] for f in in_segment) for k in COUNTS + ("total",))
    segments_ok &= {f["segment"] for f in doc["files"]} == set(doc["segments"])
    check(segments_ok, f"{label}: each segment is the sum of its files and no file lacks a segment")
    total = overall["total_functions"]
    check(total > 0 and close(overall["matched_pct"], overall["matched"] / total * 100)
          and close(overall["decompiled_pct"], (overall["matched"] + overall["non_matching"]) / total * 100),
          f"{label}: overall percentages follow from the counts")
    check(all(f["total"] == 0 or close(f["matched_pct"], f["matched"] / f["total"] * 100) for f in doc["files"])
          and all(close(s["matched_pct"], s["matched"] / s["total"] * 100) for s in doc["segments"].values()),
          f"{label}: file and segment percentages follow from the counts")
    history = doc["history"]
    check(len(history) == 0 or len(history) >= 2, f"{label}: history is empty or has at least two points")
    if history:
        dates = [date.fromisoformat(h["date"]) for h in history]
        check(all(set(h) == HISTORY_KEYS for h in history), f"{label}: history points have the NTSC keys")
        check(all((b - a).days == 7 for a, b in zip(dates, dates[1:])), f"{label}: history steps are whole weeks")
        check(all(h["matched"] + h["non_matching"] <= h["total"] for h in history),
              f"{label}: history points do not count more than their total")
    check(all(set(c) == CONTRIBUTOR_KEYS for c in doc["contributors"]), f"{label}: contributors have the NTSC keys")


eu = json.loads(Path(eu_path).read_text(encoding="utf-8"))
us = json.loads(Path(us_path).read_text(encoding="utf-8"))
check_document(eu, "eu")
if Path(snapshot_path).is_file():
    check_document(json.loads(Path(snapshot_path).read_text(encoding="utf-8")), "docs/progress.eu.json")

# The EU view against the NTSC view.
check(BASE_KEYS <= set(us) and "version" not in us and "note" not in us,
      "us: the NTSC json has the NTSC keys and neither version nor note")
eu_core, us_core = eu["segments"].get("core"), us["segments"].get("core")
check(eu_core is not None and us_core is not None, "both versions have a core segment")
if eu_core is not None and us_core is not None:
    check(eu_core["total"] == us_core["total"], "the EU core total equals the US core total")
    check(eu_core["matched"] <= us_core["matched"], "EU core matched is at most US core matched")

empty_function = re.compile(r"^\w[^\n;{}]*\)\s*\{\s*\}", re.MULTILINE)
for seg_name, seg in eu["segments"].items():
    if not seg_name.startswith("overlay_"):
        continue
    stubs = 0
    for f in (f for f in eu["files"] if f["segment"] == seg_name):
        source = next((p for p in (repo / "src.eu" / f["path"], repo / "src.us" / f["path"]) if p.is_file()))
        stubs += len(empty_function.findall(source.read_text(encoding="utf-8", errors="replace")))
    check(seg["matched"] <= stubs, f"{seg_name}: matched ({seg['matched']}) is at most its empty C stubs ({stubs})")

# The PAL reading of small files: (description, source, matched, non_matching, asm_stubs).
sys.path.insert(0, str(repo / "tools"))
import progress  # noqa: E402

PRAGMA_US, PRAGMA_EU = '#pragma GLOBAL_ASM("asm/f.s")', '#pragma GLOBAL_ASM("asm.eu/f.s")'
CASES = [
    ("a NON_MATCHING function with a fallback per version",
     f"#ifdef NON_MATCHING\nvoid f(void) {{ }}\n#elif defined(VERSION_US)\n{PRAGMA_US}\n#elif defined(VERSION_EU)\n"
     f"{PRAGMA_EU}\n#else\n#error \"Unknown version\"\n#endif\n", 0, 1, 0),
    ("C for NTSC and assembly for PAL",
     f"#if defined(VERSION_US)\nvoid f(void) {{ }}\n#elif defined(VERSION_EU)\n{PRAGMA_EU}\n#else\n#error x\n#endif\n",
     0, 0, 1),
    ("a plain C function", "void f(void) { }\n", 1, 0, 0),
    ("a plain stub", f"{PRAGMA_EU}\n", 0, 0, 1),
    ("an NTSC-only branch with an #else", "#ifdef VERSION_US\nvoid a(void) { }\n#else\nvoid b(void) { }\n#endif\n",
     1, 0, 0),
    ("the #else of a compiled branch is not compiled",
     "#ifdef VERSION_EU\nvoid a(void) { }\n#else\nvoid b(void) { }\n#endif\n", 1, 0, 0),
    ("an #elif after a compiled branch is not compiled",
     "#if defined(VERSION_EU)\nvoid a(void) { }\n#elif defined(VERSION_EU)\nvoid b(void) { }\n#endif\n", 1, 0, 0),
    ("#ifndef VERSION_EU is not compiled", "#ifndef VERSION_EU\nvoid c(void) { }\n#endif\n", 0, 0, 0),
    ("#if !defined(VERSION_US) is compiled", "#if !defined(VERSION_US)\nvoid c(void) { }\n#endif\n", 1, 0, 0),
    ("#ifndef NON_MATCHING is compiled", "#ifndef NON_MATCHING\nvoid c(void) { }\n#endif\n", 1, 0, 0),
    ("another #if group is left alone",
     "#if SOMETHING\nvoid d(void) { }\n#else\nvoid e(void) { }\n#endif\n", 2, 0, 0),
    ("another group inside a compiled version branch",
     "#if defined(VERSION_EU)\n#if SOMETHING\nvoid i(void) { }\n#endif\n#endif\n", 1, 0, 0),
    ("another group inside an uncompiled version branch",
     "#if defined(VERSION_US)\n#if SOMETHING\nvoid j(void) { }\n#endif\n#endif\n", 0, 0, 0),
    ("a trailing comment on the condition", "#ifdef VERSION_US /* NTSC */\nvoid c(void) { }\n#endif\n", 0, 0, 0),
    ("a NON_MATCHING group inside an uncompiled branch is not counted",
     f"#ifdef VERSION_US\n#ifdef NON_MATCHING\nvoid k(void) {{ }}\n#else\n{PRAGMA_US}\n#endif\n#endif\n", 0, 0, 0),
]
for description, source, matched, non_matching, asm_stubs in CASES:
    got = progress.analyse_text_eu(source)
    want = {"matched": matched, "non_matching": non_matching, "asm_stubs": asm_stubs,
            "total": matched + non_matching + asm_stubs}
    check(got == want, f"PAL reading of {description}")
    if got != want:
        print(f"     got {got}, wanted {want}")

# The default NTSC run is the run of the old tool.
us_base = json.loads(Path(base_path).read_text(encoding="utf-8"))


def comparable(doc):
    """The NTSC json without the fields that differ from run to run."""
    doc = {k: v for k, v in doc.items() if k not in ("generated", "commit", "commit_timestamp")}
    doc["history"] = [{k: v for k, v in h.items() if k != "commit"} if i == len(doc["history"]) - 1 else h
                      for i, h in enumerate(doc["history"])]
    return doc


differing = [k for k in sorted(set(us) | set(us_base)) if comparable(us).get(k) != comparable(us_base).get(k)]
check(not differing, f"the NTSC json equals the old tool's json (differing keys: {differing})")

sys.exit(1 if failures else 0)
PYEOF
failures=$((failures + $?))

[ "$failures" -eq 0 ] && echo "all progress_eu checks passed"
[ "$failures" -eq 0 ]
