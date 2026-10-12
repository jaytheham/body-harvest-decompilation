#!/bin/bash
# Run in a scratch worktree at 87f42bd4d (both baseroms present, no uncommitted change to a tracked file), with PY set.
# Checks the refusals and messages of tools/share_core_file.py; each case puts the tree back with git restore.
set -u
: "${PY:?set PY to the Python 3.12 interpreter}"
failures=0
out=""
rc=0

restore() {
    git restore --staged --worktree . && git clean -fdq src src.eu src.us
}

# check <description> <command...>: passes when the command succeeds.
check() {
    local description="$1"
    shift
    if "$@"; then echo "ok   $description"; else echo "FAIL $description"; failures=$((failures + 1)); fi
}

run() { out=$("$PY" tools/share_core_file.py "$@" 2>&1); rc=$?; }
refused() { [ "$rc" -eq 1 ]; }
converted() { [ "$rc" -eq 0 ]; }
says() { printf '%s' "$out" | grep -qF -- "$1"; }
tracked_clean() { [ -z "$(git status --porcelain --untracked-files=no)" ]; }
status_is() { [ "$(git status --porcelain --untracked-files=no)" = "$1" ]; }

if ! tracked_clean; then
    echo "tracked files are modified: use a clean scratch worktree"
    exit 2
fi

# Hand-written jump tables that hold NTSC addresses and no --jtbl-shift: refused, tree untouched, shift suggested.
run AD60
check "AD60 without --jtbl-shift is refused" refused
check "AD60 refusal suggests --jtbl-shift 0x30" says '--jtbl-shift 0x30'
check "AD60 refusal leaves the tree alone" tracked_clean
restore

# A file whose tables read the same in both ROMs converts without the option and says so.
run 1050
check "1050 without --jtbl-shift converts" converted
check "1050 reports its tables as the same in both ROMs" says 'the same in both ROMs'
restore

# A negative shift never prints as 0x-30.
run AD60 --jtbl-shift=-0x30
check "negative shift is refused" refused
check "negative shift prints '- 0x30'" says 'expected 0x8000A3A8 - 0x30 = 0x8000A378'
check "no '0x-' in the message" bash -c '! printf "%s" "$0" | grep -qF -- "0x-"' "$out"
restore

# A stub with local modifications: git rm refuses first, so nothing is moved.
echo "// local edit" >> src.eu/core/17EE0.c
run 17EE0
check "modified stub is refused" refused
check "modified stub leaves only the local edit" status_is " M src.eu/core/17EE0.c"
restore

# git mv failing after git rm (the source is not tracked): the stub is put back.
git rm --cached -q src.us/core/17EE0.c
run 17EE0
check "untracked source is refused" refused
check "the staged change is only the one made by the test" status_is "D  src.us/core/17EE0.c"
check "the EU stub is back" test -f src.eu/core/17EE0.c
restore

# --pal-only for a function that EU names differently is refused with the name it looked for.
run E830 --pal-only func_8000E53C_F13C
check "--pal-only with a differing EU name is refused" refused
check "--pal-only says which stub it expected" says 'asm.eu/nonmatchings/core/E830/func_8000E53C_F13C.s is expected'
restore

[ "$failures" -eq 0 ] && echo "all share_core_file checks passed"
exit "$failures"
