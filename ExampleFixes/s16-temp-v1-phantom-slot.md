### `s16 temp_v1` creates phantom slot that shifts inst ptr

When a function uses `s16 temp_v1 = D_xxx->unk2;` before an if-else that assigns to a local s32 variable, IDO allocates a 4-byte "home" slot for `temp_v1` on the stack, even though it is only used in registers (no store to temp_v1 appears in the assembly). This phantom shifts the inst ptr natural spill slot 4 bytes lower than the target.

Fix: inline the D_xxx->unk2 accesses directly into the if-else condition and both branches. IDO will CSE the three occurrences into one `lh` load (kept in a register) and no phantom slot is created. The if-else structure must be preserved (not converted to `if (...) x += c`) to get the two-branch assembly pattern that the target uses.

```c
// Wrong: s16 temp_v1 creates phantom at sp34, shifts inst ptr to sp30
s16 temp_v1 = D_80052B34->unk2;
if (D_80222A70 >= temp_v1) {
    sp3C = temp_v1;
} else {
    sp3C = temp_v1 + 0x32;
}

// Correct: inline, three CSE'd to one lh, no phantom
if (D_80222A70 >= D_80052B34->unk2) {
    sp3C = D_80052B34->unk2;
} else {
    sp3C = D_80052B34->unk2 + 0x32;
}
```
