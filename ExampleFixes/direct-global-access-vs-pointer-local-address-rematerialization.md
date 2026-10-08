# Direct global access vs. a pointer local controls address rematerialisation

When a function writes several fields of one global through a named pointer local, IDO may
**rematerialise** the address at every use instead of keeping it in a register, which costs an extra
`lui` per use and can change the whole callee-saved allocation.

Measured on `func_80088B9C_170C5C` (`overlay_gameplay/inside/16AF30.c`, 152 instr), whose matched
chunk donor is `func_800D9294_E8244`:

```c
// pointer-local form: IDO rematerialises the address at each store
Vec3f *pos; s8 **color; f32 *scale; Unk84EECEffect *effectBase;
...
pos = &D_800FB6D0;
color = &D_800FB6DC;
scale = &D_800FB6E0;
effectBase = (Unk84EECEffect *)&D_800FB7B0;
...
pos->x = entry->unk8;   // lui $at,%hi(D_800FB6D0); swc1 $f6,%lo(...)($at)
```

compiled to a `0x38` frame with **nine** callee-saved registers and a fresh `lui $at` before every
store. `asm-differ` **5284**.

```c
// direct access form: each base is materialised once into a callee-saved register
D_800FB6D0.x = entry->unk8;     // lui $s0,%hi; addiu $s0,$s0,%lo ... swc1 $f6,0($s0)
D_800FB6DC = &entry->unkE;
D_800FB6E0 = entry->unk2;
...
```

compiled to the target's exact `0x40` frame and full ten-register save set (`s0..s7, fp, ra`).
`asm-differ` **5284 -> 3376** on that edit alone; with the target's loop-body store order
(`x, color, y, z, scale, alpha`) a further **3376 -> 3176**.

The tell for the wrong form: the same symbol appears as a `lui $at, %hi(sym)` immediately before
each store/load, with `%lo(sym)($at)` as the offset — i.e. absolute addressing — where the target
uses `0($sN)` with a base built once by `lui`+`addiu`. The frame is then one callee-saved register
short.

This is the inverse of `function-pointer-vs-array-symbol-rematerialization.md`: there the fix was to
*force* rematerialisation (function-typed symbol -> `u8[]`); here the fix is to *suppress* it by
removing the pointer local and letting IDO CSE the direct base address into a register.

Related: `direct-instance-access-removes-pointer-local-frame-slots.md` (same family — named pointers
reserving frame slots that direct accesses do not).
