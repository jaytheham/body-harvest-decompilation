## Incorrect ASM

In `func_800AB8CC_BA87C`, a word parent/random index and scalar random halfword left the parent-pointer cache at `sp+0x4C` instead of `sp+0x50`. Narrowing the index without retaining a double temporary instead shrank the frame to `0x70`:

```asm
addiu sp,sp,-0x70
sw    v1,0x48(sp)
...
sh    v0,0x50(sp)
```

## Code changed

Use a trailing `u16 parentIndex`, put the third random value in a one-element `u16` array, and cache the parent type in the existing signed height word. Read the flags directly instead of assigning them to that word. This preserves the shared unsigned stride multiplication and keeps the flag load out of V0.

Keep the discarded masked index terms explicitly unsigned. Add a discarded double square in the final common block, immediately before the masked-index expression:

```c
u16 rand2[1];
u16 rand1;
u16 parentIndex;
/* Existing attachment and particle logic. */
if ((f64)(s32)inst * (f64)(s32)inst) {}
if (((f32)((u32)parentIndex & 7) + (f32)((u32)parentIndex & 15)
   + (f32)((u32)parentIndex & 31) + (f64)(s32)inst) != 0.0f) {}
```

The UOPT slot trace shows the initial local reservation fall from 36 to 32 bytes. The unused child-pointer home is then -36 and the parent-pointer home -40. The discarded double conversion requests a separate eight-byte temporary at -48 after those pointer homes. Placing the double square at function entry preserves the stack layout but rotates the live sine calculation's floating registers; placing it in the final common block preserves their order too.

## Correct ASM

```asm
addiu sp,sp,-0x78
...
sw    v1,0x50(sp)
...
lw    v1,0x50(sp)
...
sh    v0,0x5A(sp)
...
sh    v0,0x5C(sp)
```

All 216 instructions match, and the normal native build reports `build/bh.us.z64: OK`.
