# Use an s16 struct field as the intermediate for a volume clamp

Matched `func_80015210_15E10` in `src.us/core/12C80.c`.

The target truncates a float calculation, sign-extends its low 16 bits,
compares against `0x2FFF`, then stores either the sum or `0x7FFF` into a
local struct field. The saturation constant is loaded into `v1` in the
comparison branch's delay slot, and each branch has its own halfword store.

Using an `s16` local for both calculations generated an extra sign extension
after the addition. Assigning the ternary directly from an `s16` local removed
that extension but hoisted the saturation constant and changed its register.
An additional wide result local also changed the frame and register allocation.

Use the destination field for the intermediate as well:

```c
sp50.unk20 = D_80031F04_32B04[arg0] * (arg4 / 200.0f);
sp50.unk0 = arg0 & 0xFFFF;
sp50.unk20 = sp50.unk20 < 0x2FFF ? sp50.unk20 + 0x2FFF : 0x7FFF;
```

IDO forwards the first field assignment into the comparison and eliminates
its store. The field type supplies the initial signed narrowing, while the
final halfword stores need no additional narrowing instructions. This produced
the exact target registers, scheduling, and `0x88` stack frame. Verified with
`tools/make.ps1`: `build/bh.us.z64: OK`.
