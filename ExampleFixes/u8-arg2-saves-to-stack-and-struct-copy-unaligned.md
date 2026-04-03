### u8 third argument triggers `sw a2, 8(sp)` home save + struct-copy unaligned pattern

When a function takes a `u8` third argument (`arg2`) used as a channel/clip index with `andi/sll` masking, IDO generates `sw a2, 8(sp)` at the very start (argument home save) even when the function has no stack frame.

**Recognition signs:**
- `sw $a2, 0x8($sp)` as the very first instruction (no `addiu sp, sp, -X` before it)
- `andi t6, a2, 0xFF` in the body (u8 zero-extension/masking)
- Function has 3 parameters, no JAL calls

**Fix:** Declare arg2 as `u8` instead of `s32`:
```c
// Wrong: s32 arg2 (no sw a2 at start)
void func(void *arg0, AnimChannelState *arg1, s32 arg2)

// Correct: u8 arg2 (generates sw a2, 8(sp))
void func(void *arg0, AnimChannelState *arg1, u8 arg2)
```
Remove the explicit `& 0xFF` from the code — the `andi` in the assembly comes from the `u8` type, not from an explicit mask in C.

### Struct-copy with 14-byte AnimFrame stride (lwl/lwr/swl/swr)

When copying 12 bytes of s16 frame data from a potentially-misaligned source (stride 14 = 0xE) to a struct destination, declare a local 12-byte struct with s16 fields and use a struct copy:

```c
typedef struct { s16 a; s16 b; s16 c; s16 d; s16 e; s16 f; } AnimFrame12;
*(AnimFrame12 *)&arg1->unk24 = *(AnimFrame12 *)((char *)base + 0x50);
```

This generates `lwl/lwr` for each 4-byte word (because the source is potentially 2-byte aligned due to stride 14) and `swl/swr` for the destination (because `AnimFrame12` has 2-byte alignment via s16 first field). This is preferred over individual field assignments which would generate `lh/sh` patterns.

Also add a `u16` lhu separately for the last field:
```c
temp_at = *(u16 *)((char *)base + 0x5C);
```

### u32-to-float conversion generates `bgez` correction pattern

Writing `(f32)(u32)(temp_at & 0xFFFF)` — where `temp_at` is a u16 — generates the full unsigned-to-float conversion pattern including the `bgez`/correction block:
```asm
andi    t6, at, 0xffff
mtc1    t6, $f6
sh      at, 0x30(a1)      <- note: sh still uses original at
bgez    t6, done           <- always taken for u16 values (bits 31..16 = 0)
 cvt.s.w $f8, $f6          <- delay slot: always executed
lui     at, 0x4f80         <- dead code for u16 values
mtc1    at, $f10
nop
add.s   $f8, $f8, $f10
done:
swc1    $f8, 0x20(a1)
```

The `& 0xFFFF` must be explicit to generate the `andi` instruction, and the `(u32)` cast must be explicit for IDO to emit the `bgez`/correction sequence.

### Residual register mismatch from named `start_frame` + `base`

When computing animation frame address as `base = arg0 + ((startFrame + currentFrame) & 0xFFFF) * 0xE`, using TWO named variables (`u16 start_frame` for the lhu result and `s32 base` for the offset) produces correct instruction types but shifts the register chain:

- `start_frame` (u16) → v1: gives correct `lhu v1` ✓
- HOWEVER: prevents the in-place `addu v1, v1, v0` pattern (named v1 can't be overwritten)
- `base` (s32) → a3: pushed to argument register (a3 = $7) instead of t2 ($10)
- Subsequent intermediates shift by one register: t2 instead of t0, t3 instead of t1, etc.

The target's register-exact pattern (`addu v1, v1, v0` in-place → t0/t1/t2 chain) cannot be achieved with named `start_frame` due to IDO refusing to overwrite named variable registers mid-liveness.

Score achievable: ~225 (correct instruction types, wrong register names).
