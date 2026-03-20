### u8 Callee param → `andi t6` + `move a0,t6` early + shifts

When a `u8 arg0` function passes arg0 to a callee AND also passes `alienInstances` as a 4th argument, the target assembly shows:
- `andi t6, a0, 0xff` (stores masked idx in **t6**, not a3)
- `lui a3, %hi(alienInstances)` immediately after (a3 = alienInstances base for 4th arg)
- `or a0, t6, $zero` BEFORE the first conditional branch (eager arg0 setup)
- `nop` in jal delay slots (not `move a0, a3`)
- `sll/addu/sll` shifts for `* sizeof(struct)` (not multu)

The critical fix: declare the **callee's first parameter as `u8`** (not `s32`). When IDO passes a `u8 arg0` to a `u8` callee parameter AND also sets up $a3 = alienInstances for the 4th arg, it assigns the andi result to `t6` (not `a3`) and hoists `move a0, t6` before the first branch.

```c
// Callee declaration — note u8 first param:
void func_800816B0_90660(u8, void *, s32, AlienInstance *);

// Caller — u8 arg0, 4-param call:
s32 func_8008199C_9094C(u8 arg0) {
    AlienInstance *alien = &alienInstances[arg0];
    ...
    func_800816B0_90660(arg0, target, flags, alienInstances); // 4 params
}
```



`u8* ptr = &D_xxx[index];`
`u8 value = *ptr;`
`D_index = index + 1;`
`return value;`
