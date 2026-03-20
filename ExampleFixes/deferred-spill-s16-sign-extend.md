### Deferred spill: `sll/sra` sign-extend vs `sh` for address-taken s16

When a `s16` local has its address taken (passed to a function in one branch) but is *assigned* via `(s16)(...)` in the other branch, IDO's deferred-spill optimization determines whether you get `sll/sra` (register keep) or `sh` (stack write):

- **With a named `AlienInstance *inst` pointer**: The phantom 4-byte stack home shifts sp24's slot, and IDO writes sp24 to the stack in the if-branch (`sh + no sign-extend`).
- **Without the named pointer** (direct `alienInstances[arg0].field` access): The phantom home is gone, sp24 lands at the correct slot (e.g. sp+0x24), and IDO uses the deferred-spill optimization — in the branch that doesn't take the address, it keeps sp24 in register (a0 after jal) and generates `sll/sra` sign-extend. No `sh` is emitted.

Pattern (func_80080510_8F4C0):
```c
u8 type = alienInstances[arg0].specIndex;
s16 sp24;
if ((alienInstances[arg0].unk20 & 0x02000000) || D_80052ACA == 2) {
    sp24 = (s16)(func_A(...) >> 8);  // stays in register a0, no sh
} else {
    func_B(..., &sp24);               // writes to sp+0x24
}
```

This also correctly places `sp24` in `a0` (re-using the dead first-argument register post-jal) rather than a pre-allocated register like `v1`.
