## incorrect ASM

In `func_8008CF2C_174FEC` the cursor was a file-scope word. IDO cached its address in a saved register and kept the loaded value in `v0`:

```mips
lui     s2,%hi(D_800A4340_18C400)
addiu   s2,s2,%lo(D_800A4340_18C400)
lw      v0,0(s2)
slti    at,v0,4
...
sw      t7,0(s2)
```

The label item also took `a0` instead of `v1`, and the two `-1` stores went through temporaries:

```mips
lbu     a0,0xb4(a0)
...
beql    a1,a0,...
move    a1,a0
```

->

## code changed

Make the cursor, the shown label and the deferred selection statics of the function, as the outside pause menu does. Read the cursor through a `SignedWord` so its low byte is the sound argument:

```c
static SignedWord selectedIndex = { 4 };
static s32 shownItem = 0;
static s32 pendingSelection;
```

Compare the deferred selection with a signed `-1`: an unsigned constant makes the test and the copy two separate loads.

Keep the label item in a `u8`, assign it to the static before the language switch and index the label tables with the static. Give the comparison its own conversion, so it does not share one with the assignment:

```c
if (shownItem != (u32) slotValue) {
	shownItem = slotValue;
	switch (D_800313D0_31FD0) {
	case 0:
	default:
		func_8001A54C_1B14C((u8 *) D_800A428C_18C34C[shownItem]);
```

Write the clearing loop as `i = 9; while (i--)` to set the slot pointer before the counter, and pass the fade to `gDPSetPrimColor` without a mask of its own.

->

## correct ASM

```mips
lui     t6,%hi(D_800A4340_18C400)
lw      t6,%lo(D_800A4340_18C400)(t6)
slti    at,t6,4
...
lui     at,%hi(D_800A4340_18C400)
sw      t8,%lo(D_800A4340_18C400)(at)
```

```mips
lbu     v1,0xb4(v1)
...
lw      a1,%lo(D_800A4344_18C404)(a1)
beql    a1,v1,...
...
move    a1,v1
```

The function is still unmatched: the statics need their data and BSS placed at the original addresses.

## Continue guard frees a constant shared after the loop

The draw loop divides by 3 (`i % 3`, `i / 3`), and the switch after it tests `case 3` and, in the default case,
`selectedIndex.word != 3`. With the loop body wrapped in `if (slots[i] != 0xF) { ... }`, all four 3s stayed as
one candidate and none got a register.

Incorrect ASM:

```mips
li      at,3
beq     v1,at,...        # case 3
...
li      at,3
beq     t8,at,...        # cursor test
```

Code changed (same machine control flow):

```c
/* Before */
do {
    if (slots[i] != 0xF) {
        /* draw body with i % 3 and i / 3 */
    }
} while (i--);

/* After */
do {
    if (slots[i] == 0xF) {
        continue;
    }

    /* same draw body */
} while (i--);
```

Correct ASM:

```mips
li      a0,3
...
beq     v1,a0,...        # case 3
...
beq     t8,a0,...        # cursor test
```

The loop keeps `li at,3` before each `div`; only the code after the loop changes. Changing the divisor value
had shown the coupling, but the right fix was the loop's source shape, not the constant (see also
`continue-guard-trigger-saved-register-rotation.md`).
