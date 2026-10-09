# Jet-stream updater: compound assignments and loop scope

`func_800CD42C_DC3DC` matches all 244 instructions with a `u8` effect parameter and the existing `JetStreamParticleState`. The dispatcher passes a byte effect ID. Its unsigned RGB fields produce the target LBU instructions; the previous generic payload used signed colors.

Assign the root index to the particle index before loading its next link. This preserves the target SLL/SRA pair and the original root index used by the sentinel check.

Search-AsmPattern at ROM DC624, count 6, found matched `func_80089834_1718F4` in the inside overlay. Its position and velocity updates use compound assignments. `position += velocity` and `velocity += random % 20 - 10` produce the target left-field load before the right operand; explicit `field = field + expression` swapped temporary registers or load order. Radius updates instead use `random % divisor + D_80154318[index].unk2 + divisor`, matching the target field-load and remainder registers.

Read next links through `D_80154318[index]` to avoid an extra persistent entry alias. As in the water spray updater, an outer `if (1)` around the guarded do-while changes IDO register allocation while leaving the logic unchanged. Without it, the same body differs in thousands of score points; with it and the expression changes, the full ROM comparison is OK.
