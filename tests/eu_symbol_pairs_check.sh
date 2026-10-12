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
[ "$want_names" = "$got_names" ] && [ "$want_pins" = "$got_pins" ] && [ "$want_lines" = "$got_lines" ] && echo ok
