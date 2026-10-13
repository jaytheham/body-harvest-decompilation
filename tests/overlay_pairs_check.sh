#!/bin/bash
# Run from the repository root with PY set. Needs no extraction, no build and no baserom: it works in a scratch tree of
# synthetic function listings (asm/ for NTSC, asm.eu/ for PAL) and runs tools/overlay_pairs.py on it.
# Checks that the tool pairs functions in order and by alignment, derives NAME lines from the PAL addresses of the
# functions, reports a pair whose instruction count, opcode or constant differs (a DIFF), reports an unpaired function,
# reads the PAL address of a symbol operand from the paired instruction (DELTAS), and exits 1 whenever it found anything
# that stops a file from being shared.
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

# listing <file> <vram> <word>...: one function listing in splat's format, one line per "opcode operands" argument.
listing() {
    local file="$1" vram="$2" n=0
    shift 2
    mkdir -p "$(dirname "$file")"
    printf 'glabel %s\n' "$(basename "$file" .s)" > "$file"
    for text in "$@"; do
        printf '    /* %X %08X 00000000 */  %s\n' $((n * 4)) $((vram + n * 4)) "$text" >> "$file"
        n=$((n + 1))
    done
}

US="$scratch/asm/matchings/ov/a"
USN="$scratch/asm/nonmatchings/ov/a"
EU="$scratch/asm.eu/nonmatchings/ov/b"
# Four NTSC functions; the PAL file is 0x40 further on and has an extra function between the second and the third.
listing "$US/func_80000100_100.s" $((0x80000100)) 'lui $a0, %hi(D_80001000)' 'addiu $a0, $a0, %lo(D_80001000)' 'jr $ra'
listing "$US/func_80000200_200.s" $((0x80000200)) 'addiu $v0, $zero, 0x18' 'jal func_80000100_100' 'lw $t6, 0x1400($t6)' 'jr $ra'
listing "$USN/func_80000300_300.s" $((0x80000300)) 'addiu $v0, $zero, 0x20' 'jr $ra'
listing "$US/func_80000400_400.s" $((0x80000400)) 'addiu $v0, $zero, 0x30' 'jr $ra'
listing "$EU/func_80000140_140.s" $((0x80000140)) 'lui $a0, %hi(D_80001040)' 'addiu $a0, $a0, %lo(D_80001040)' 'jr $ra'
listing "$EU/func_80000240_240.s" $((0x80000240)) 'addiu $v0, $zero, 0x18' 'jal func_80000140_140' 'lw $t6, 0x1440($t6)' 'jr $ra'
listing "$EU/func_80000300_300.s" $((0x80000300)) 'nop' 'nop' 'nop' 'nop' 'jr $ra'
listing "$EU/func_80000340_340.s" $((0x80000340)) 'addiu $v0, $zero, 0x20' 'jr $ra'
listing "$EU/func_80000440_440.s" $((0x80000440)) 'addiu $v0, $zero, 0x31' 'jr $ra'

run() {
    (cd "$scratch" && "$PY" "$root/tools/overlay_pairs.py" --root "$here" --us-dir ov/a --eu-dir ov/b "$@") 2>&1
}

order=$(run --align order); order_rc=$?
check "order mode refuses unequal function counts" bash -c '[ "$0" -ne 0 ] && [[ "$1" == *"unequal function counts"* ]]' "$order_rc" "$order"

auto=$(run --align auto); auto_rc=$?
check "auto mode pairs four functions and leaves the PAL extra one unpaired" \
    bash -c '[[ "$0" == *"PAIRS 4 (NTSC 4, 3 matched C; PAL 5)"* && "$0" == *"UNPAIRED PAL func_80000300_300.s"* ]]' "$auto"
check "a pair whose constant differs is a DIFF that names the operands" \
    bash -c '[[ "$0" == *"DIFF func_80000400_400.s (matched C) against func_80000440_440.s: operand"*"0x30"*"0x31"* ]]' "$auto"
check "an address low half that shifted by the file's own shift (0x1400 against 0x1440) is not a DIFF" \
    bash -c '[[ "$0" != *"DIFF func_80000200_200.s"* && "$0" == *"NAME func_80000200_200 = 0x80000240;"* ]]' "$auto"
check "a pair that agrees gives a NAME line at the PAL address of the function" \
    bash -c '[[ "$0" == *"NAME func_80000100_100 = 0x80000140;"* && "$0" == *"NAME func_80000200_200 = 0x80000240;"* ]]' "$auto"
check "the delta of the symbol and the jal operands is read from the paired instructions" \
    bash -c '[[ "$0" == *"DELTAS PAL minus NTSC (addresses): 0x40: "* ]]' "$auto"
check "a DIFF or an unpaired function makes the exit status 1" test "$auto_rc" -eq 1

# A tree where everything agrees exits 0 and prints no DIFF.
rm -f "$EU/func_80000300_300.s" "$EU/func_80000440_440.s"
listing "$EU/func_80000440_440.s" $((0x80000440)) 'addiu $v0, $zero, 0x30' 'jr $ra'
clean=$(run --align order); clean_rc=$?
check "equal counts and no difference exit 0 with four pairs" \
    bash -c '[[ "$0" == *"PAIRS 4 (NTSC 4"* && "$0" != *"DIFF"* ]]' "$clean"
check "the clean run exits 0" test "$clean_rc" -eq 0

# A call to a function that NTSC names and PAL still has under its func_ label (a libultra or core function) is the same call.
listing "$scratch/asm/matchings/ov/c/func_80000500_500.s" $((0x80000500)) 'jal sourceTaggedPrintF' 'nop' 'jr $ra'
listing "$scratch/asm.eu/nonmatchings/ov/d/func_80000540_540.s" $((0x80000540)) 'jal func_80000F70_F70' 'nop' 'jr $ra'
named=$(cd "$scratch" && "$PY" "$root/tools/overlay_pairs.py" --root "$here" --us-dir ov/c --eu-dir ov/d 2>&1); named_rc=$?
check "a call to a named NTSC function against its PAL func_ label is not a DIFF" \
    bash -c '[[ "$0" == *"PAIRS 1 (NTSC 1"* && "$0" != *"DIFF"* && "$0" == *"NAME func_80000500_500 = 0x80000540;"* ]]' "$named"
check "that run exits 0" test "$named_rc" -eq 0

# A pin clashes with another shared file's definition only when the PAL ELF has the name at some other address.
clash=$("$PY" -c "
import sys
sys.path.insert(0, 'tools')
import overlay_pairs as o
others = {'f': 'overlay_level/greece/18D7E0.c'}
print(o.clashes('f', others, {0x802D4D10: 1}, {'f': 0x802D4D10}) is False and
      o.clashes('f', others, {0x802D4D10: 1}, {'f': 0x802D4D20}) is True and
      o.clashes('f', others, None, {'f': 0x802D4D10}) is True and
      o.clashes('f', others, {1: 1, 2: 1}, {'f': 1}) is True and
      o.clashes('g', others, {1: 1}, {}) is False)
")
check "a name another shared file defines clashes unless the PAL ELF has it at the address this file reaches" \
    test "$clash" = True

if [ "$failures" -eq 0 ]; then
    echo "all overlay_pairs checks passed"
fi
exit "$failures"
