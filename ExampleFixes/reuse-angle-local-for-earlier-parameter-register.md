# Reuse an angle local for an earlier angle parameter

Matched Siberia `func_802DF98C_2C1DBC` with IDO 5.3 `-O2 -mips2 -32`; the exact diff score was 0 and the full ROM reported `build/bh.us.z64: OK`.

The closest version already had the correct instructions, instruction order, stack frame and spill slots. It differed only in register allocation: the joint angle loaded into `a2` instead of `a1`, and the X coordinate loaded into `a1` instead of `a2`. A later type pointer and X coordinate also used opposite registers.

The fix was to reuse the existing signed halfword angle local for the earlier knockback helper's angle parameter, in both branches of the player-state test:

```c
angle = alien->unk6;
func_80102DDC_111D8C(D_80052B34, angle, 0xFA0, 20.0f);
```

Later, overwrite that same local with the parent joint angle for the attachment rotation:

```c
angle = D_8014DD50[alien->unkC].unkA;
```

The helper takes its angle in `a1`. Reusing the local for that earlier parameter changed IDO's register allocation without adding instructions or stack stores. This fixed both rotation blocks, including the later block that does not use the angle local directly.

When only register differences remain, look for earlier calls that naturally accept the same kind of value in the desired argument register. Reusing the local there can establish the needed allocation. Keep the early sine/cosine inputs as direct alien-field accesses in this function: caching their shifted angle instead removes target field reloads and changes the code.
