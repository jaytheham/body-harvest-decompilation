# Reverse-order matching and literal placeholders

Java `func_802DD8E8_1F65F8` matched once the duplicate explicit 70.0
placeholder was removed. The function's local `const f64 radius = 70.0`
generates the double at target address 0x802E0F80. The full ROM checksum
passes and the function diff is zero.

An earlier draft had matching instructions/registers but loaded its double
from the wrong rodata address while the explicit placeholder still occupied
the target slot. After the following functions were matched in reverse
order, their generated constants and the associated placeholder removals
were already correct. Enabling this function and deleting only its explicit
`D_802E0F80_1F9C90` array put its generated literal at the right address.
Remove the now-unused extern declaration too.

Do not fix a literal-address-only difference by altering already correct
arithmetic. Check whether a GLOBAL_ASM placeholder duplicates the literal
that the enabled C function now generates, and verify the whole ROM after
removing it. Later functions' literal pools can determine when this cleanup
will preserve the complete rodata layout.

Java `func_802DD294_1F5FA4` provides another example: replace the explicit
`D_802E0F78_1F9C88[0]` load with `5000.0f` in the arithmetic expression,
and delete its placeholder and unused extern. Loading the named array
previously reversed the operands of the first multiply. The literal form
produces the target operand order and occupies the correct rodata slot.
The full ROM checksum passes and the function diff is zero.

This function also clamps a signed angle with two conditional assignments:

```c
alien->unkA = alien->unkA >= -0x1387 ? alien->unkA : -0x1388;
alien->unkA = alien->unkA < 0x1388 ? alien->unkA : 0x1388;
```

These compile identically to the draft's explicit self-assignment branches.
An if statement that only stores the limit removes the in-range stores and
changes the branch structure. Express the complete clamped assignment when
the target stores on both paths.
