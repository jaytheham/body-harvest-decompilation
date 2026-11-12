# Transition store scheduling in `func_8007DDA0_165E60`

**Incorrect ASM**

```asm
lh      a2,0x4a(a3)
lui     at,0x800a
sll     t7,a0,16
sra     a0,t7,16
sw      v0,0x908(at)
```

**Code changed**

Declare the timeline step's store alias `D_800A0908_1889C8_W2` as `volatile s32`. Keep the store between the halfword read and the value of the third call argument in the comma expression.

**Correct ASM order**

```asm
sll     t6,a0,16
lh      a2,0x4a(a3)
addiu   t7,t7,0x908
sw      v0,0(t7)
sra     a0,t6,16
```

The shift, halfword load, store, and final shift now follow the target order. IDO still emits an additional `lui t7,0x800a` before this sequence, and the target instead uses a single `lui at,0x800a` immediately before the store. The function is still unmatched.


## Transition store displacement

**Incorrect ASM**

```asm
lui     base,0x800a
# Argument setup
addiu   base,base,0x908
sw      step,0(base)
```

**Code changed**

Use the timeline step's version-adjusted address through `OVERLAY_PTR(0x800A0908)` for this store. IDO can split the known constant into a high word and a displacement in the store.

**Correct ASM addressing**

```asm
lui     base,0x800a
# Argument setup
sw      step,0x908(base)
```

The compiled function now has the same length as the target. The target puts the address load immediately before the store, and IDO still schedules it earlier in this candidate.


## Symbolic store and decrement scheduling

**Incorrect ASM**

The numeric address puts the high-word load in the branch delay slot, ahead of the argument setup.

**Code changed**

In the comparison build, use `D_800A0908_1889C8_W` for the second store and pass `(s16)((s16)timelineStep - 1)` and `(s16)timelineStep` as the first two arguments.

**Correct ASM order at the store**

```asm
lh      a2,0x4a(timelineEntry)
lui     at,0x800a
sw      step,0x908(at)
sra     a0,previous,16
```

The signed-halfword subtraction depends on the narrowing shift. IDO moves the decrement after that shift, whereas the target computes it in the branch delay slot from the full word. The comparison build also matches fewer register operands overall, so the numeric store is retained.
