# Union member signedness controls CSE: store/read through the other member to kill a reload

`func_80094DE0_A3D90` (`overlay_gameplay/outside/9BFF0.c`) and its matched greece twin
`func_802D738C_18FE9C` (`overlay_level/greece/18D7E0.c`). The shared global `D_8014DD50[]` entry has

```c
/* 0x06 */ union { s16 unk6; u16 unk6Unsigned; };
```

Both write `entry[sp5E].unk6` from `alienInstances[arg0].unk6`, then negate it into `entry[sp5C].unk6`.
The ROM reads the source field **once**, negates it, and stores both:

```
lh   $t4,0x6($s0)
negu $t5,$t4
sh   $t4,0x6($v1)
sh   $t5,0x6($a2)      # delay slot
```

The guess used `.unk6` on both sides and got a **reload** of the field before the negation
(`lh $t4,0x6($v1)`), i.e. `delta +1` (179 vs 178 instructions, asm-differ 543). Spelling the
assignment target and the read through the **unsigned** member, exactly as the donor does -

```c
D_8014DD50[sp5E].unk6Unsigned = alienInstances[arg0].unk6;
D_8014DD50[sp5C].unk6 = -D_8014DD50[sp5E].unk6Unsigned;
```

- removed the reload and the extra instruction: **543 -> 4** (the residual 4 was the unrelated stack
  home fixed in `phantom-s16-slot-between-array-and-scalar.md`).

Why: the two union members are the same 2 bytes, but their signedness changes the expression's type
nodes, so the negation formed from the unsigned member keeps the loaded value in the register instead
of re-reading the signed lvalue.

**Rule:** when a guess reloads a field it has just stored, check whether the struct field is a union
and spell the store/read through the *other* member (signed <-> unsigned). Do **not** retype the shared
union - the signedness belongs at the use site.
