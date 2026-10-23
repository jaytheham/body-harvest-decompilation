`incorrect ASM`: In `func_800E1F70_F0F20`, keeping signed-short random locals reverses their stack order and leaves a `0x30` frame instead of `0x38`. Inlining just the three sample calls through `func_800038E0_44E0_U16` fixes the frame but leaves sample slots at `sp+0x2A`, `sp+0x2C`, `sp+0x2E`; the target uses `sp+0x2E`, `sp+0x30`, `sp+0x32`. Vehicle branches also evaluate type-height lookups before the random remainder, changing instruction order and temporary registers.

-> `code changed`: Keep the absolute floating speed in a single `u8 speed` local. Use the halfword RNG view for every call in the function, including the probability checks and final lifetime argument, so IDO allocates and recycles consistent two-byte expression temporaries. Write position and type-height additions with the random call on the right:

```c
arg0->unk0 + (func_800038E0_44E0_U16() % 40) - 20
vehicleTypes[arg0->unk1A].unkC + (func_800038E0_44E0_U16() % 40)
vehicleTypes[arg0->unk1A].unkC / 2 + (func_800038E0_44E0_U16() % 20)
```

The byte speed promotes to `int` for `speed / 2`, so the explicit `s32` cast can be removed.

-> `correct ASM`: The frame is `0x38`; byte speed uses `sb v1,0x37(sp)` / `lbu s1,0x37(sp)`; all three spawn paths store the random samples with `sh v0,0x2E(sp)`, `sh v0,0x30(sp)`, `sh v0,0x32(sp)`. The coordinate divisions, signed division checks, type lookups and final argument stores follow the target order. All 338 instructions match, and both full US and EU ROM checksums pass.