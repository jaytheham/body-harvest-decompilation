#!/bin/bash
# Run from the repository root with PY set. Needs no extraction, no build and no baserom: it works in a scratch directory
# that holds an asm/ (the NA extraction) and an asm.eu/ (the EU extraction), each with an x.s that tells them apart.
# Checks the --asm-root mapping of tools/asm-processor/asm_processor.py: every spelling of the asm/ directory that the
# mapper can canonicalise maps to asm.eu/, every spelling it cannot (an absolute path, a path that leaves the repository
# and comes back) is refused instead of reading the NA extraction, and unrelated paths stay untouched.
set -u
: "${PY:?set PY to the Python 3.12 interpreter}"
failures=0
root=$(pwd -W 2>/dev/null || pwd)
scratch=$(mktemp -d)
trap 'rm -rf "$scratch"' EXIT
here=$(cd "$scratch" && { pwd -W 2>/dev/null || pwd; })
out=""
rc=0

# check <description> <command...>: passes when the command succeeds.
check() {
    local description="$1"
    shift
    if "$@"; then echo "ok   $description"; else echo "FAIL $description"; failures=$((failures + 1)); fi
}

mkdir -p "$scratch/asm" "$scratch/asm.eu" "$scratch/asm.eu/sub" "$scratch/asmx" "$scratch/src/asm"
# The NA file holds 3 instructions and the EU file 6: asm-processor writes one store to the C stub per instruction after
# the first, so the number of stores in its output says which of the two files was read.
printf '.section .text\nglabel func_na\nnop\njr $ra\nnop\n' > "$scratch/asm/x.s"
printf '.section .text\nglabel func_eu\nnop\nnop\nnop\nnop\njr $ra\nnop\n' > "$scratch/asm.eu/x.s"
cp "$scratch/asm.eu/x.s" "$scratch/asm.eu/sub/x.s"
cp "$scratch/asm/x.s" "$scratch/asmx/y.s"
cp "$scratch/asm/x.s" "$scratch/src/asm/y.s"

# probe <path...>: prints "<path> => <mapped path>" or "<path> => REJECTED <message>" for each path, as seen from the
# scratch directory, with --asm-root asm=asm.eu.
probe() {
    (cd "$scratch" && "$PY" - "$root" "$@" <<'PROBE'
import os
import sys

sys.path.insert(0, os.path.join(sys.argv[1], "tools", "asm-processor"))
import asm_processor

roots = asm_processor.parse_asm_roots(["asm=asm.eu"])
for path in sys.argv[2:]:
    try:
        print(path + " => " + asm_processor.map_asm_path(path, roots))
    except asm_processor.Failure as failure:
        print(path + " => REJECTED " + str(failure))
PROBE
    ) 2>&1
}

# probe_no_root <path...>: the same without --asm-root; every path must come back as it went in (the US build).
probe_no_root() {
    (cd "$scratch" && "$PY" - "$root" "$@" <<'PROBE'
import os
import sys

sys.path.insert(0, os.path.join(sys.argv[1], "tools", "asm-processor"))
import asm_processor

for path in sys.argv[2:]:
    print(path + " => " + asm_processor.map_asm_path(path, ()))
PROBE
    ) 2>&1
}

maps_to() { [ "$(probe "$2")" = "$2 => $1" ]; }
rejected() { [[ "$(probe "$1")" == "$1 => REJECTED "* ]]; }
rejection_names() { [[ "$(probe "$1")" == "$1 => REJECTED "*"$2"* ]]; }
us_keeps() { [ "$(probe_no_root "$1")" = "$1 => $1" ]; }

# run_cli <spelling> [asm-processor option...]: a probe.c holding one GLOBAL_ASM pragma with that spelling, run through
# the real command line. Sets out (stdout and stderr) and rc.
run_cli() {
    local spelling="$1"
    shift
    printf 'int a;\n#pragma GLOBAL_ASM("%s")\n' "$spelling" > "$scratch/probe.c"
    out=$(cd "$scratch" && "$PY" "$root/tools/asm-processor/asm_processor.py" -O2 "$@" probe.c 2>&1)
    rc=$?
}
stores() { printf '%s' "$out" | grep -o '= 0;' | wc -l | tr -d ' '; }
read_eu() { [ "$rc" -eq 0 ] && [ "$(stores)" = 5 ]; }
read_na() { [ "$rc" -eq 0 ] && [ "$(stores)" = 2 ]; }
refused_naming() { [ "$rc" -eq 1 ] && printf '%s' "$out" | grep -qF -- "probe.c:2" && printf '%s' "$out" | grep -qF -- "$1"; }

# Which spellings of asm/ the host treats as the same directory, from the filesystem itself.
case_insensitive=0
[ -d "$scratch/ASM" ] && case_insensitive=1
windows=0
case "$(uname -s)" in MINGW* | MSYS* | CYGWIN*) windows=1 ;; esac
echo "host: windows=$windows case_insensitive=$case_insensitive"

# The plain spelling, and every spelling that normalises to it.
check "asm/x.s maps to asm.eu/x.s" maps_to asm.eu/x.s asm/x.s
check "./asm/x.s maps to asm.eu/x.s" maps_to asm.eu/x.s ./asm/x.s
check ".//asm/x.s maps to asm.eu/x.s" maps_to asm.eu/x.s .//asm/x.s
check "asm//x.s maps to asm.eu/x.s" maps_to asm.eu/x.s asm//x.s
check "asm/./x.s maps to asm.eu/x.s" maps_to asm.eu/x.s asm/./x.s
check "asm/../asm/x.s maps to asm.eu/x.s" maps_to asm.eu/x.s asm/../asm/x.s
check "asm/sub/../x.s maps to asm.eu/x.s" maps_to asm.eu/x.s asm/sub/../x.s

# A backslash separates path components on a Windows host only, as open() reads it. Elsewhere it is part of a file name
# that does not exist, so the path is not asm/ in any spelling, is left alone, and the open fails loudly.
if [ "$windows" -eq 1 ]; then
    check "asm\\x.s (backslash) maps to asm.eu/x.s on a Windows host" maps_to asm.eu/x.s 'asm\x.s'
    check ".\\asm\\x.s (backslash) maps to asm.eu/x.s on a Windows host" maps_to asm.eu/x.s '.\asm\x.s'
else
    check "asm\\x.s (backslash) is left alone on a host where it is no separator" maps_to 'asm\x.s' 'asm\x.s'
fi

# Case: a Windows host reads ASM/x.s from asm/, so it must map there. A case-sensitive host cannot read it at all, so the
# path is left alone and the open fails loudly. Any other case-insensitive host is covered by the refusal below.
if [ "$windows" -eq 1 ]; then
    check "ASM/x.s maps to asm.eu/x.s on a Windows host" maps_to asm.eu/x.s ASM/x.s
elif [ "$case_insensitive" -eq 1 ]; then
    check "ASM/x.s is mapped or refused on a case-insensitive host" bash -c \
        '[[ "$0" == "ASM/x.s => asm.eu/x.s" || "$0" == "ASM/x.s => REJECTED "* ]]' "$(probe ASM/x.s)"
else
    check "ASM/x.s is left alone on a case-sensitive host" maps_to ASM/x.s ASM/x.s
fi

# Spellings the mapper cannot canonicalise: they name the NA extraction, so they are refused, never passed through.
check "an absolute path under asm/ is refused" rejected "$here/asm/x.s"
check "the refusal for an absolute path names the path" rejection_names "$here/asm/x.s" "$here/asm/x.s"
if [ "$windows" -eq 1 ]; then
    check "an absolute path under asm/ with backslashes is refused" rejected "${here//\//\\}\\asm\\x.s"
fi
check "a path that leaves the directory and returns to asm/ is refused" rejected "../$(basename "$scratch")/asm/x.s"
check "asm/../../<dir>/asm/x.s is refused" rejected "asm/../../$(basename "$scratch")/asm/x.s"

# Paths that have nothing to do with asm/ stay exactly as written.
check "asm.eu/x.s is untouched" maps_to asm.eu/x.s asm.eu/x.s
check "asm.eu/sub/x.s (already under the destination) is untouched" maps_to asm.eu/sub/x.s asm.eu/sub/x.s
check "./asm.eu/x.s is untouched" maps_to ./asm.eu/x.s ./asm.eu/x.s
check "asmx/y.s is untouched" maps_to asmx/y.s asmx/y.s
check "src/asm/y.s is untouched" maps_to src/asm/y.s src/asm/y.s
check "an absolute path under asm.eu/ is untouched" maps_to "$here/asm.eu/x.s" "$here/asm.eu/x.s"
check "an absolute path under asmx/ is untouched" maps_to "$here/asmx/y.s" "$here/asmx/y.s"

# Without --asm-root (the US build) no path changes, whatever its spelling.
for spelling in asm/x.s ./asm/x.s 'asm\x.s' ASM/x.s asm/../asm/x.s "$here/asm/x.s" asm.eu/x.s; do
    check "no --asm-root leaves $spelling as written" us_keeps "$spelling"
done

# End to end through the command line: which assembly file does an EU run read?
run_cli asm/x.s --asm-root asm=asm.eu
check "CLI: asm/x.s reads the EU file" read_eu
run_cli ./asm/x.s --asm-root asm=asm.eu
check "CLI: ./asm/x.s reads the EU file" read_eu
run_cli 'asm\x.s' --asm-root asm=asm.eu
if [ "$windows" -eq 1 ]; then
    check "CLI: asm\\x.s reads the EU file on a Windows host" read_eu
else
    check "CLI: asm\\x.s fails to open on a host where backslash is no separator" bash -c '[ "$0" -ne 0 ]' "$rc"
fi
run_cli asm/../asm/x.s --asm-root asm=asm.eu
check "CLI: asm/../asm/x.s reads the EU file" read_eu
run_cli asm.eu/x.s --asm-root asm=asm.eu
check "CLI: asm.eu/x.s reads the EU file" read_eu
run_cli "$here/asm/x.s" --asm-root asm=asm.eu
check "CLI: an absolute path under asm/ is refused, naming the file and line" refused_naming "$here/asm/x.s"
run_cli "../$(basename "$scratch")/asm/x.s" --asm-root asm=asm.eu
check "CLI: a path that leaves and returns to asm/ is refused" refused_naming "asm/x.s"
run_cli asm/x.s
check "CLI: without --asm-root, asm/x.s reads the NA file" read_na
run_cli "$here/asm/x.s"
check "CLI: without --asm-root, an absolute path under asm/ reads the NA file" read_na
run_cli asm/x.s --asm-root asm=asm.nowhere
check "CLI: a missing destination directory is refused" bash -c '[ "$0" -eq 1 ] && [[ "$1" == *"does not exist"* ]]' "$rc" "$out"

[ "$failures" -eq 0 ] && echo "all asm-root checks passed"
exit "$failures"
