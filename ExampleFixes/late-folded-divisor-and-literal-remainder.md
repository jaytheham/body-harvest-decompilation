# Keep a variable divisor separate from an equal literal

Partial match in `func_80096BC4_A5B74`, IDO 5.3, `-O2 -mips2 -32`. The function remains unmatched; its diff score improved from 10406 to 7236.

The target computes two signed remainders with divisor 511. The first uses a saved register and includes the divide-by-zero and signed-overflow checks. The second loads 511 into `at` and emits a division without those checks.

Initializing the named divisor directly to 511 lets IDO share it with the later literal. Both divisions then use the register and emit checks. A late-folding initializer prevents that sharing:

```c
modBase = selectedGroup * 0 + 0x1FF;
if (modBase) {}
```

`selectedGroup` is the preceding helper's signed word result. The multiplication contributes zero and emits no multiplication instruction. The empty test emits no branch but keeps the first divisor in a saved register before entering the loop.

The target also copies the shifted phase back into its working register between the first division and its checks. Reuse the now-dead signed word tile-group temporary and assign the shifted value explicitly:

```c
tileGroup = D_8013D510_14C4C0 << 4;
bright = tileGroup % modBase;
alpha0 = bright;
alpha2 = (tileGroup + 0x200) % 0x1FF;
```

This reproduces the division, value copy, checks, first remainder read, literal load, addition, second division, and second remainder read in target order. Register allocation and other sections still differ.

## Loop shape also affects global address allocation

A later partial draft improved from 6286 to 5761 by spelling the loop as a guarded `do` and retaining an empty coordinate-pointer test at the bottom:

```c
coords = D_801475F0_1565A0;
loop = 0x20;
modBase = selectedGroup * 0 + 0x1FF;
if (modBase) {}
if (loop--) {
    do {
        /* Existing tile body. */
        if (coords) {}
        tile++;
    } while (loop--);
}
```

The guarded loop with the empty pointer test IDO retained the coordinate-table address in a saved register and changed the phase load inside the selected branch from a cached address plus `lh 0(base)` to the target's direct `lui` / `lh offset(base)`. The test emitted no branch or extra memory access.

The containing function remains unmatched.


## Keep the level address across the initial helper

Incorrect ASM: the entry uses `lui t9,currentLevel` and `lw t9,offset(t9)`, omitting the target's cached-address `addiu` and separate saved-register prologue store. The enabled function is four bytes too short.

Code changed: retain an empty pointer test immediately after the helper and on the same source line as the first graphics macro:

```c
level = &currentLevel;
tile = (TileEntry *)D_801479B0_156960[level[0] - 1];
selectedGroup = func_800B0F20_BFED0(arg0, -arg1);
if (level) {} gDPPipeSync(D_8005BB2C++);
```

Correct ASM: the entry now saves the address register, emits `lui` / `addiu` for `currentLevel`, and loads its value through offset zero before the helper. This reproduces the target's entry instruction sequence and total size `0x4fc`; the saved-register role still differs. Enabled score improves from5761 to5382. Loop address rematerialization and color/register scheduling remain unmatched, so the function stays under `NON_MATCHING`.

## Left shield-wall coordinate stores

Incorrect ASM: The left Z-coordinate calculation narrowed the scaled value with
`sll ..., 0x13` and `sra ..., 0x10` before two halfword stores.

-> Code changed: The improved C candidate advances the global vertex cursor
with explicit `D_8005BB34 = &v0[1]` assignments for each vertex, and reads Z
through the adjusted left-point pointer. The color byte and signed coordinate
scratch use separate locals.

-> Correct ASM: The left Z-coordinate calculation uses `negu`, a single
`sll ..., 3`, and the two halfword stores. The enabled C function occupies
the target's 0x4FC bytes. Its register allocation and other instruction
scheduling still differ, so the function retains its assembly fallback.

## Counter write alias and default blue load

Incorrect ASM shared the counter address between the final halfword load and
store. It also hoisted the default blue value out of the loop.

-> Code changed: read `D_8013D510_14C4C0` into the signed halfword scratch
and write the incremented value through the existing `D_8013D510`
declaration. Bind the write alias to the existing object in both linker
symbol files. Use `rightX * 0 + 0xFF` for the default blue value.

-> Correct ASM uses separate `lui` instructions for the signed `lh` and
`sh`, with the write address in `at`. The default branch emits
`li v1, 0xFF` immediately before its four blue-channel stores. The full
function still differs and retains its assembly fallback.

## Right Z-coordinate scratch

Incorrect ASM placed the scaled right Z-coordinate copy after the left
vertex depth store.

-> Code changed: load the right point Z-coordinate into a signed halfword
scratch before scaling it. Convert the scaled value to `u16` at the
second right vertex store.

-> Correct ASM restores the copy into `a0` ahead of the left vertex depth
store. The generated function has the target length of 0x4FC bytes.
Signed narrowing and other instruction-order differences remain.
