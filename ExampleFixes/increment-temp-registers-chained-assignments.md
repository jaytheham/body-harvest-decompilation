### Increment temporary registers via chained assignments

When target is using `t8` for example and current is using `t6`, performing chained variable assignments can "use up" the lower temporary registers so the higher one will be used:
```c
    D_8028AA84 = 0;
    D_8028AA8C = 0;
    D_8028AA80 = 0;
```
changed to ```D_8028AA80 = D_8028AA8C = D_8028AA84 = 0;``` results in the later use of t8 instead of t6.

## Unused saved registers from loop-carried XOR identities

func_800B8D80_C7D30 is byte-exact and the full ROM checksum is OK. Its target saves s2/s3/s4 without any visible use. The ordinary clamp and nested-loop implementation uses five saved registers instead of eight (score 1525). Reuse three expired word calculations, reset them to zero before the loop, and update each with ^= 0 inside an if (x) after the inner tile-registration call. Uopt reserves their saved registers; the emitted identity operations, initialization, and guard disappear. Every target instruction, saved-register slot, and bound register then matches.

## Crater initializer: verified closure

func_800B8C2C_C7BDC now matches exactly and the complete ROM is OK. Keep the s32 brightness interface: a u16 parameter can match the body but removes the caller's signed halfword conversion. Narrow arg2 with &= 0xFFFF at entry, increment arg1 before the brightness store, and mask the X-origin subtraction with & 0xFFFF. All three changes together close the temporary allocation differences without adding an instruction. Preserve the addressed arg2 read, which retains the target parameter-home store.

## One dead node read rotates the saved-register groups

Frontend func_8008B7BC_5BC6C is byte-exact with one `if (D_800DE840[idx].unk0) {}` after its spawn-loop node lookup. Before that read, every opcode and instruction position matches, but delta components occupy s5/s6/s7, quotient components s2/s3/s4, and the node stride fp. The read raises the shared node-base/stride web's priority without emitting a load or branch; all saved registers rotate into the target positions: deltas s2/s3/s4, stride s5, quotients s6/s7/fp.

Keep the initial floating-distance conversion and clamped count as separate u8 locals. Use Vec3s delta and step locals, two leading unused words for frame 0x60, and a plain u8 `for` counter with `i++`. Expanding the increment with an explicit mask changes instruction order. A typed full-node payload view exposes the signed duration at offset 0x0E without pointer-offset writes. The final source uses the existing Vec3s type and a documented dead read; full ROM checksum is OK.
