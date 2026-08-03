### Backwards array loop via `while (i--)`: off-by-one counter + dead `move v0, sN` + forced s16 arg promotion

**Observed in:** `func_80110144_11F0F4` (101840.c) — push player away from shield wall. Fully matched.

The function loops over two f32 corner-offset arrays (`D_80159D78[i]`, `D_80159D98[i]`) for `i = 3, 2, 1, 0`, and on a wall hit calls `func_800EBD5C_FAD0C(temp_v0)` where `temp_v0` is the `s16` return of `func_800B0DF4_BFDA4`.

#### 1. Loop form: use `i = 4; while (i--)` (NOT `i = 3; while(1){...; if(i-- != 0) continue; break;}`)

The target loop-end is:
```
li      s0,3            ; counter starts at N-1 (3)
...
move    v0,s0           ; dead `v0 = i` at every loop-continuation (if-fail) path
addiu   s2,s2,-4
addiu   s3,s3,-4
bnez    s0,<loop>       ; branch directly on i
addiu   s0,s0,-1        ; i-- in the delay slot
move    v0,zero         ; return 0
```

- The asm counter starts at `N-1` and the body runs for `i = N-1 .. 0` (including 0), so with the arrays accessed as `D_80159D78[i]` the C must be `i = 4; while (i--)` (body sees `i = 3,2,1,0`). `i = 4; while (--i)` would only run 3 iterations — wrong.
- ❌ `i = 3; while (1) { ... if (i-- != 0) continue; break; }` and ❌ `i = 3; do { } while (i-- != 0)` both make IDO materialise the loop condition as a boolean: `sltu v0,zero,s0` then `bnez v0`, and also swap the `addiu s0,-1` into the wrong slot.
- ✅ `i = 4; while (i--)` makes IDO emit the exact `move v0,s0` dead value at the continuation paths + `bnez s0; addiu s0,-1` at the bottom (same artifact as the matched `func_8010FF84_11EF34` which uses `i = 0xFF; while (i--)` → `li s1,0xfe`).
- Use array indexing `D_80159D78[i]` / `D_80159D98[i]` (not explicit `f32 *ptr = &D_80159D84`). IDO strength-reduces the indexed access into the decrementing pointer (`lwc1 0($s2)` + `addiu s2,-4`), and this also produced the correct `lui/addiu` init order for the two pointers (s3 = D_80159DA4 first, then s2 = D_80159D84), which the explicit-pointer version got wrong.

#### 2. Forcing an s16→s32 argument promotion that IDO would otherwise fold

The target passes `temp_v0` (an `s16` variable living in a callee-saved register `s0` that IDO has proven is sign-extended) to `func_800EBD5C_FAD0C(s32)`:
```
sll     a0,s0,0x10
sra     t6,a0,0x10
jal     func_800EBD5C_FAD0C
move    a0,t6
```

- ❌ `func_800EBD5C_FAD0C(temp_v0)` / `(s32)temp_v0` / `(s16)temp_v0` / `s32 t = temp_v0; func(t)` all collapse to `move a0,s0` because IDO knows `s0` is already sign-extended (from the `move s0,t0; sra t0,s0,0x10` store of the s16 return).
- ✅ `func_800EBD5C_FAD0C((s16) (s32) temp_v0)` forces the truncate-then-sign-extend (`sll a0,s0,0x10; sra t6,a0,0x10`) that IDO cannot fold, exactly matching the target.

**Full matching skeleton:**
```c
s16 temp_v0;
s32 var_s4;
s32 var_v0;
s32 i;

i = 4;
while (i--) {
    var_s4 = func_800B0D10_BFCC0((s32)(D_80159D78[i] + arg0->unk4C), (s32)(D_80159D98[i] + arg0->unk54), 0);
    if (var_s4 != 0 && func_800BD688_CC638(..., arg0) != 0) {
        if (arg1 == 0) {
            temp_v0 = func_800B0DF4_BFDA4(...);
            if ((temp_v0 == 0x4000) || (temp_v0 == -0x4000)) { /* unk30 */ }
            else { /* unk38 */ }
            if (arg0 == D_80052B34 && D_80158F80 == 0) {
                D_80158F80 = 6;
                func_800C4938_D38E8(...);
                func_800EBD5C_FAD0C((s16)(s32) temp_v0);
            }
        }
        return 10;
    }
}
return 0;
```

**Data note:** `D_80159D84` and `D_80159DA4` are NOT standalone structs — they are element aliases of the f32 arrays `D_80159D78[3]` and `D_80159D98[3]` respectively. Both arrays are 8 elements (indices 0-3 = vehicle 1 corner offsets, 4-7 = vehicle 2), written by `func_8010C4EC_11B49C`/`func_8010CA38_11B9E8`. Prefer indexing the arrays directly over `&D_80159D84` pointer arithmetic.
