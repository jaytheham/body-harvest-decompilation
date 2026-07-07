### Intermediate variable forces correct OR-ordering; `s16` pad fixes 2-byte stack offset

When the target assembly evaluates `slot | 0x80000` **before** loading and AND-masking `inst->unk20`, but the compiler reorders to combine `(inst->unk20 & ~7) | slot` first:

**Wrong** (compiler reorders the OR):
```c
inst->unk20 &= ~7;
inst->unk20 |= slot | 0x80000;
```
Generates: `or t2, t0, slot` (combines &~7 with slot first), then `or t3, t2, 0x80000`

**Correct** (forces separate evaluation):
```c
s32 new_var = slot | 0x80000;  // computed FIRST
inst->unk20 &= ~7;              // load, AND, store
inst->unk20 |= new_var;         // load, OR with pre-computed value, store
```
Generates: `or t2, slot, 0x80000` first, then `load, and`, then `or t3, t0, t2`

The key is that assigning to a **separate intermediate variable** (`new_var = slot | 0x80000`) forces the compiler to evaluate the subexpression before the subsequent compound assignments use it.

#### `s16` pad for 2-byte stack offset correction

If a `u8` stack variable (`sp34`) is at offset `0x37` instead of target `0x35`, add an unused `s16 pad` variable **before** it in the declaration order:

```c
s16 pad;
u8 sp34;
```

An `s16` takes exactly 2 bytes, shifting the next variable 2 bytes earlier in the frame. This is a fine-grained variant of the `s32` padding technique (4-byte shifts).
