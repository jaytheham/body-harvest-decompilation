`incorrect ASM`: Removing the trailing `.text` from `BF9C0_late_rodata.s` while keeping it as the first `GLOBAL_ASM` argument makes the following extracted instructions parse as late rodata. The EU event table also references US branch labels that the extracted EU function does not define.

-> `code changed`: Put the extracted function-specific `.s` first and the rodata-only `.s` second. Select an EU event rodata file with the extracted EU jump labels, and retain frontend shared-data aliases in `undefined_syms.eu.txt`.

-> `correct ASM`: Instructions come exclusively from extraction, late rodata retains its target order, and both US and EU ROM checksums match.
