# Mixed C switch tables and assembly late rodata

When enabling `func_800E1D48_F0CF8`, its instructions matched but its switch table followed later placeholder arrays and doubles. IDO emits global constants before generated switch tables, regardless of where their declarations appear in C. Moving the declarations below the function did not fix their addresses.

Remove the enabled function's placeholder table. Put later assembly-backed tables and doubles in `.late_rodata` associated with a sufficiently large assembly function. Here a small source prefix is concatenated with the unchanged laser renderer assembly by Makefile, and GLOBAL_ASM uses the generated wrapper. Keep the readonly target assembly untouched. The seven-word laser table begins at an address congruent to four modulo eight, so `.late_rodata_alignment 4` puts the following doubles at eight-byte boundaries.

For the level-three branch, caching the signed vehicle type in a local `s32` also changed the equality branch operands to the target order. Reversing the written comparison alone did not.

Verified with the complete ROM comparison: `build/bh.us.z64: OK`.
