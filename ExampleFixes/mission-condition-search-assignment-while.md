# Backwards mission condition search with assignment in the condition

Matched functions: `func_800765C4_85574` and `func_8007643C_853EC` in `missions.c`.

For a backwards search whose target peels the first test, computes the initial six-byte record offset with shifts, and spills the found pointer across calls, put the pointer assignment in the short-circuit while condition:

```c
s32 i;
MissionCondEntry *entry;

if (isActive(id)) {
    i = 0x80;
} else {
    return -1;
}
while (i-- && ((entry = &conditions[i])->unk0 != type || id != entry->unk1)) {
}
```

A body with `if (...) break` instead allows IDO to fold the initial pointer to a constant address and changes the peeled loop. Declare the counter before the pointer: reversing these declarations moves the pointer spill from `sp+0x20` to `sp+0x24` with all other instructions matching.

The two special message bytes (`0x64` and `0x6E`) need a switch with a default callback. An if/else chain changes branch layout. Access the existing `[mission][chunk][50]` array with chunk 1 or 2, rather than indexing past chunk zero.

Both functions verified with `tools/make.ps1` returning `build/bh.us.z64: OK` and no differences from `tools/diff.ps1`.