# Cached short field versus scalar local

Confirmed in `func_802E2B78_326CC8` (ROM `0x326F2C`).

The target loads a signed short countdown into `v0`, subtracts two into `t5`, stores `t5`, and moves `t5` back to `v0` before the next comparison. Copying the field into a local `s32` and separately decrementing the local produced the same instruction layout, but allocated the original value to `v1` and the subtraction result to `v0`, disturbing registers throughout the remaining function. Making the local `s16` added two narrowing instructions.

The exact source accesses the field directly:

```c
if (alienInstances[arg0].unk3A >= 3) {
    alienInstances[arg0].unk3A -= 2;
}
if (alienInstances[arg0].unk3A < 3 && (parent->unk20 & mask)) {
    alienInstances[arg0].unk3A = 2;
}
```

IDO caches the field value across the store and emits the target move without an explicit scalar copy or sign-extension instructions. Test direct field access before tuning scalar-local register allocation.

The same function also required an early return for its outer guard rather than wrapping the remaining body in an `if`. The early return allowed four `typeMismatch || predicateFailed` conditions to share one flag-clearing block each, removed a saved register, and aligned the instruction layout. A joint index local instead of a named joint pointer then aligned the temporary spill slots. The final whole-ROM checksum passed.

Java `func_802DEE4C_1F7B5C` matched by replacing a `u16` angle temporary with a `u8 modelIndex` local and accessing `D_8014DD50[modelIndex].unk8Unsigned` directly. The angle temporary occupied `v1` and pushed the model index into `t8`. Keeping only the model index assigned it to `v1`, while the unsigned field load used the target `t0`. Assigning the signed halfword instance model field to the byte local produced the target LBU at instance offset 0x0D. Full ROM checksum verified `build/bh.us.z64: OK`.
