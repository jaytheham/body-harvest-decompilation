### `u8` parameter byte-packing reduces stack frame vs `s32` + local id

When a function takes an index that's masked to `u8` range (`arg0 & 0xFF`), using
`s32 arg0` with a separate `s32 id = arg0 & 0xFF` allocates a full word stack slot
for `id`, inflating the frame from 0x18 to 0x20.

#### Problem

With `s32 arg0` and a separate `s32 id` variable, IDO allocates `id` its own word
at `0x1C(sp)`, forcing a 0x20 frame:

```c
// ❌ WRONG – separate s32 id inflates stack to 0x20
void func_802D5CA8_2553E8(s32 arg0) {
    s32 id;
    id = arg0 & 0xFF;
    alienInstances[id].unk20 &= ~0x10;
    func_80137468_146418(id, 0x130);
    func_8008064C_8F5FC(id);
}
```

This produces:
- `addiu sp, sp, -0x20`
- `sw a2, 0x1C(sp)` (stores id as word at sp+0x1C, extending stack from 0x18 to 0x20)
- `lw a2, 0x1C(sp)` + `andi a0, a2, 0xFF` (reloads word and re-masks)

#### Fix: declare parameter as `u8` directly

When the parameter is `u8`, IDO:
1. Generates `andi a2, a0, 0xFF` for zero-extension
2. Reuses the high byte of the saved parameter (`a0` at `0x18(sp)`) to store the
   `u8` value as a byte (`sb a2, 0x1B(sp)`)
3. Reloads with `lbu a0, 0x1B(sp)` (zero-extending), no re-mask needed
4. Only 0x18 bytes of stack needed (just for `ra` at `0x14(sp)`)

```c
// ✅ CORRECT – u8 parameter packs into caller's stack, frame stays 0x18
void func_802D5CA8_2553E8(u8 arg0) {
    alienInstances[arg0].unk20 &= ~0x10;
    func_80137468_146418(arg0, 0x130);
    func_8008064C_8F5FC(arg0);
}
```

This produces:
- `addiu sp, sp, -0x18`
- `sw a0, 0x18(sp)` (home save of original parameter in caller's frame)
- `sb a2, 0x1B(sp)` (byte store of id in high byte of same word)
- `lbu a0, 0x1B(sp)` (zero-extended reload)

**Key insight:** When a function only uses the lower 8 bits of its parameter, declaring
the parameter as `u8` (instead of `s32` with a separate local `id`) lets IDO pack the
byte into the parameter's home save slot, avoiding an extra stack word and keeping the
frame minimal. This works even though the caller passes the argument as `s32` (e.g., via
a `void (*)(s32)` function pointer).
