### Struct stride for stable index math


If a global is really an array of fixed-size records (for example, stride `0x50`) and the asm does:

- `sll idx, v0, 2`
- `addu idx, idx, v0`
- `sll idx, idx, 4`
- store at base + `idx`

then declaring a typed struct array can produce better codegen than manual byte-pointer math.

Example shape:

`typedef struct { u32 unk0; u8 pad4[0x4C]; } UnkX;`

`extern UnkX D_xxx[];`

`D_xxx[index].unk0 = D_src[arg];`

This can eliminate extra temp registers in the multiply/shift chain and recover exact reg reuse.
