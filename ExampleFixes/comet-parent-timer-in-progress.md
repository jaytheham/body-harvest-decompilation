# Comet parent timer: direct fields and a word parent index

## Final matched form

The complete function now matches. Use an `s32` parent index loaded from
`alienInstances[arg0].unk25`, a named grandparent pointer computed as
`&alienInstances[alienInstances[(u8)idx].unk25]`, and direct repeated
`alienInstances[arg0]` accesses for the timer increment, comparisons and reset.
Keep the outer timer condition and inner parent-state call condition nested.

The word index reserves the virtual register needed for the target base/stride
allocation. Its byte conversion at the inner array index preserves the reused
`multu` sequence. Direct instance fields put the saved compiler temporary at
0x1C. No explicit instance pointer or extra ancestor XOR expression is needed.
The full ROM verified OK.

## Investigation evidence

An earlier `func_802E193C_325A8C` candidate scored 78,
down from 128, and reproduces the exact target instruction order.

Initializing `inst` from `alienInstances` before indexing it keeps the global
array base in a1 and schedules the 0x800 argument in the branch delay slot.
The ancestor expression `(u8)(alienInstances[idx].unk25 ^ 0)` adds no emitted
instructions but shifts scratch register allocation to the target t4/t5 and
t2/t3 values. This combines two independently useful codegen effects.

Remaining differences: stride v0 instead of a2, parent index a2 instead of a3,
timer a3 instead of t0, ancestor pointer t0 instead of t1, reversed initial
addu operands, and instance spill at 0x18 instead of 0x1C.

Direct repeated instance field accesses, with no named `inst`, move the spill
to the correct 0x1C, confirming the compiler-spill-slot-placement note. That
form currently moves the global base back to v0 and adds an early 0x800 load
and a nop branch delay slot, so it still needs a different base expression.
Explicit shared base locals and `(&alienInstances[0])[index]` did not solve it.

Word parent indices with explicit byte casts reserve an extra virtual register
and put the parent index and timer in the desired a3/t0, but swap the global
base and stride to a2/a1 and add an instruction. Byte and unsigned halfword
parent indices produce the same allocation. Naming a boolean readiness value
gets the desired initial registers but emits extra boolean materialization.
