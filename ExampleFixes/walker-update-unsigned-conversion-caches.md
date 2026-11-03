`incorrect ASM`: In `func_800F4DB0_103D60`, signed frame-counter addition and a signed masked walker ID coalesce the index conversion into `s1`. The candidate omits `move s1,t6` before the periodic guard, emits `move s1,t6` in its delay slot, and later compares `s1` with the masked ID. Every other instruction matches after alignment.

-> `code changed`: Use `((i + (u32)D_80052A8C) & 0xF) == 0` for the periodic check and `i != (u32)(alienInstances[walker->alienIdx].unk20 & 7)` for the walker-ID comparison. Both unsigned contexts are required. Casting `i` instead reloads it from the stack and does not match. Keep the byte loop index and existing cleanup-call arguments unchanged.

-> `correct ASM`: The entry now emits `move a1,s0; move s1,t6; bnez t3,...; move a3,t6`, and the ownership check emits `beql a3,t5,...`. The function diff is zero and the US ROM checksum passes.

`incorrect ASM`: Removing the existing final unused `s32 pad` declaration leaves the correct `0x68` frame but changes the interpolation argument spill/reload from `sp+0x48` to `sp+0x4C`.

-> `code changed`: Retain the final `s32 pad` declaration after the byte loop index and lerp locals.

-> `correct ASM`: The pair is `sw t1,0x48(sp)` / `lw a3,0x48(sp)`, preserving the zero function diff. The explicit `u16` cast on the `func_800DF848_EE7F8` argument can be removed because its prototype already performs that conversion, without changing any bytes.
