`incorrect ASM`

In the retained `func_800C613C_D50EC` baseline, all 263 instructions and registers match except the secondary payload pointer's three spill accesses: they use `0x44(sp)` instead of `0x24(sp)`. The compiler reserves an earlier automatic home for a root-payload conversion while spilling the named secondary pointer in its own declaration home.

-> `code changed`

A diagnostic variant accesses every `varA1` byte through the identity view:

```c
((EffectInterpolationState *)((u32)varA1 & -1U))->bytes[index]
```

In both color branches, immediately after `tempA2 = (s32)varA1` and before the first root-color store, evaluate that same converted pointer in an empty condition:

```c
if ((EffectInterpolationState *)((u32)varA1 & -1U)) {}
```

Keep the original pointer definitions, the existing else-branch `if (1)` scope, and the later root-position writes. Creating the converted payload cache at this earlier point changes its reserved spill home; introducing it only around the random-value writes adds copies and keeps the original first spill.

-> `correct ASM`

The diagnostic variant uses the correct `0x24(sp)` home for the `sw`, first `lw`, and second `lw` around the first two random calls. Its frame remains `0x50`, with all 263 instruction positions and other stack operands correct. It still exchanges `a0` and `a1` between the input-color pointer and secondary payload, so this alternative is **not retained as the function implementation**: the committed baseline remains closer overall.

A faithful native/diagnostic object comparison verified this result. The payload conversion has allocation benefit 24 across 5 units (4.8), while the input parameter has benefit 12 across 3 units (4.0); their priority explains the remaining register exchange. This is an isolated stack-home example, not a complete function match.
