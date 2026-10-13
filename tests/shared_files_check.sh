#!/bin/bash
# Run from the repository root with PY set (PyYAML needed). Needs no extraction, no build and no baserom.
# shared_overlay_files.txt lists the files of src.us outside core that the PAL build compiles too. It is the one list that
# the Makefile, tools/native_build.py and the tools read, and bh.eu.yaml must name each file in it, and no other file of
# src.us outside core, as ../src.us/<file without .c>. A file that is in one place and not another is a PAL build that
# fails (a missing build directory, an unmapped asm directory) or a progress page that counts the wrong files.
set -u
: "${PY:?set PY to the Python 3.12 interpreter}"
failures=0
check() {
    local description="$1"
    shift
    if "$@"; then echo "ok   $description"; else echo "FAIL $description"; failures=$((failures + 1)); fi
}
root=$(pwd -W 2>/dev/null || pwd)

report=$("$PY" - "$root" <<'PYEOF'
import re, sys
from pathlib import Path
import yaml

root = Path(sys.argv[1])
sys.path.insert(0, str(root / "tools"))
listed = [ln.strip() for ln in (root / "shared_overlay_files.txt").read_text(encoding="utf-8").splitlines()
          if ln.strip() and not ln.startswith("#")]
print("count", len(listed))
print("missing", [f for f in listed if not (root / "src.us" / f).is_file()])
print("duplicates", sorted({f for f in listed if listed.count(f) > 1}))

eu = yaml.safe_load((root / "bh.eu.yaml").read_text(encoding="utf-8"))
named = set()
for seg in eu["segments"]:
    for sub in (seg.get("subsegments") or []) if isinstance(seg, dict) else []:
        if isinstance(sub, list) and len(sub) > 2 and isinstance(sub[2], str) and sub[2].startswith("../src.us/"):
            path = sub[2][len("../src.us/"):]
            if not path.startswith("core/"):
                named.add(path + ".c")
print("yaml_only", sorted(named - set(listed)))
print("list_only", sorted(set(listed) - named))
for f in listed:
    kinds = {sub[1] for seg in eu["segments"] if isinstance(seg, dict) for sub in (seg.get("subsegments") or [])
             if isinstance(sub, list) and len(sub) > 2 and sub[2] == "../src.us/" + f[:-2]}
    if "c" not in kinds:
        print("no_c_entry", f)

import native_build, progress, decomp_common
print("native_build", sorted(native_build.SHARED_OVERLAY_FILES) == sorted(listed))
print("progress", sorted(progress.eu_source_roots(str(root))[2:]) == sorted("src.us/" + f for f in listed))
print("decomp_common", sorted(decomp_common.shared_overlay_files()) == sorted("src.us/" + f for f in listed))
print("asm_dirs", sorted(native_build.SHARED_ASM_DIRS) == sorted(["core", *{str(Path(f).parent).replace(chr(92), "/") for f in listed}]))
PYEOF
)
echo "$report" | sed 's/^/     /'
check "every listed file exists in src.us" bash -c '[[ "$0" == *"missing []"* ]]' "$report"
check "no file is listed twice" bash -c '[[ "$0" == *"duplicates []"* ]]' "$report"
check "bh.eu.yaml names no shared file that the list lacks" bash -c '[[ "$0" == *"yaml_only []"* ]]' "$report"
check "every listed file is named in bh.eu.yaml" bash -c '[[ "$0" == *"list_only []"* ]]' "$report"
check "every listed file has a c entry in bh.eu.yaml" bash -c '[[ "$0" != *"no_c_entry"* ]]' "$report"
check "native_build.py reads the same list" bash -c '[[ "$0" == *"native_build True"* ]]' "$report"
check "progress.py counts the same files" bash -c '[[ "$0" == *"progress True"* ]]' "$report"
check "decomp_common reads the same list" bash -c '[[ "$0" == *"decomp_common True"* ]]' "$report"
check "the asm-root directories are core and the directories of the listed files" bash -c '[[ "$0" == *"asm_dirs True"* ]]' "$report"
check "the Makefile reads shared_overlay_files.txt" grep -q 'shared_overlay_files.txt' Makefile

if [ "$failures" -eq 0 ]; then
    echo "all shared-file checks passed"
fi
exit "$failures"
