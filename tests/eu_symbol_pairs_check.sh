#!/bin/bash
# Run in a worktree at 87f42bd4d with both versions extracted and built, with PY set.
# Checks tools/eu_symbol_pairs.py against the committed conversion of E830 (0418a6c42): the NAME and PIN counts
# must match the lines that commit added to symbol_addrs.eu.txt and undefined_syms.eu.txt, and so must the lines.
set -e
: "${PY:?set PY to the Python 3.12 interpreter}"
out=$("$PY" tools/eu_symbol_pairs.py E830)
want_names=$(git show 0418a6c42 -- symbol_addrs.eu.txt | grep -c '^+[A-Za-z_]')
want_pins=$(git show 0418a6c42 -- undefined_syms.eu.txt | grep -c '^+[A-Za-z_]')
got_names=$(echo "$out" | grep -c '^NAME ')
got_pins=$(echo "$out" | grep -c '^PIN ')
want_lines=$(git show 0418a6c42 -- symbol_addrs.eu.txt undefined_syms.eu.txt | grep '^+[A-Za-z_]' | sed 's/^+//' | sort)
got_lines=$(echo "$out" | grep -E '^(NAME|PIN) ' | sed -E 's/^(NAME|PIN) //' | sort)
echo "names want=$want_names got=$got_names; pins want=$want_pins got=$got_pins"
if [ "$want_names" = "$got_names" ] && [ "$want_pins" = "$got_pins" ] && [ "$want_lines" = "$got_lines" ]; then
    echo ok
else
    echo "E830 does not match the committed conversion"
    exit 1
fi

# AD60 needs the pin the asm spells under another name (D_80052BE0 is reached as D_80053BDF in the asm) and the six EU
# labels of its own data that surviving EU assembly still names; the tool must print all seven and no PROBLEM.
ad60=$("$PY" tools/eu_symbol_pairs.py AD60)
for want in 'PIN D_80052BE0 = 0x80052C10;' 'PIN D_80031680_32280 = 0x80031680;' 'PIN D_80031750_32350 = 0x80031750;' \
    'PIN D_800375A8_381A8 = 0x800375A8;' 'PIN D_800375B0_381B0 = 0x800375B0;' 'PIN D_80037630_38230 = 0x80037630;' \
    'PIN D_80037640_38240 = 0x80037640;'; do
    echo "$ad60" | grep -qxF "$want" || { echo "AD60 output lacks: $want"; exit 1; }
done
echo "$ad60" | grep -q '^PROBLEM' && { echo "AD60 reports a PROBLEM"; exit 1; }
echo "AD60 ok"
