### Stack-held joint pointers and inline angle caching

Java `func_802DEFC0_1F7CD0` matched with IDO 5.3 -O2 using a one-element local pointer array for the first joint. A named working pointer occupied a permanent integer register and displaced the short-lived model, child, and alien-type indices. Keeping the first pointer in `savedFirst[0]` preserved its stack snapshot at sp+0x10 and its reload in the negative-turn branch. Keep the second joint pointer explicit.

Cache the first unsigned halfword angle in an `s32` local. A `u16` cache added a halfword stack store; the wider cache retained the original LHU and used S0 without that store. Declare the stack locals first (sum, padding/cache, pointer array), followed by the other locals, to preserve the 0x20 frame and sum at sp+0x1E.

Compute the yaw sum before looking up the type's turning speed. Moving that assignment restored the target's initial load order and temporary registers. The final two differences were resolved by using an unsigned first operand and assigning the first-angle cache inside the sum:

```c
sum = (u32)(firstAngle = savedFirst[0]->unk6Unsigned)
    + type2->unk6Unsigned + arg1;
type_val = alienTypes[typeIndex].unk42;
```

The unsigned cast changed ADDU operand order without adding an instruction. The inline assignment placed the first-pointer copy between LUI and ADDIU for the second joint's base address. A separate firstAngle assignment placed that copy before LUI. Both forms had identical logic and instruction counts, but only the inline assignment matched byte for byte. Full ROM checksum verified `build/bh.us.z64: OK`.
