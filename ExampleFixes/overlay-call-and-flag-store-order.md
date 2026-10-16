### Select the gameplay function at a reused overlay address

America `func_802D5D08_255448` calls RAM address `0x8008EB20`. Two different overlay functions use that address: frontend `func_8008EB20_5EFD0` takes seven arguments, while gameplay `func_8008EB20_9DAD0` takes three. The target assembly sets only `a0`, `a1`, and `a2`. Selecting the gameplay declaration removes the false stack arguments and most differences; matching a call address alone is insufficient when overlays reuse RAM.

### Update flags before countdown fields

The target fragment loads flags into `t4`, combines them in `t5`, and puts the countdown constant in `t6`. This source ordering gives those registers:

```c
alien->unk20 |= ALIEN_FLAG_UNKE | ALIEN_FLAG_UNK5;
alien->unk3C = 0x50;
alien->unk1E = 0;
```

IDO schedules the countdown constant and stores ahead of the final flags store. Moving the countdown assignments before the flag update in C still produces the same opcodes and store ordering, but allocates the constant to `t4`, the flags load to `t5`, and the result to `t6`.

The function also needs the declaration order `temp`, instance pointer, padding word, speed word, padding word, height halfword. This restores the `0x48` frame, speed at `sp+0x38`, and terrain height at `sp+0x32`. The padding words have no runtime instructions.

Verified with `tools/make.ps1`: `build/bh.us.z64: OK`; function diff score 0.
