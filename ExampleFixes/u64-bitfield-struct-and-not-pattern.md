### 64-bit bitfield clear operation: struct with u64 field and `&= ~mask`

When assembly shows:
- `jal __ll_lshift` (computing a 64-bit bitmask)
- `lui/addiu` computing base address
- Two `lw` loads at offsets 0 and 4 from same base
- `nor t8, v0, zero` and `nor t9, v1, zero` (both halves NOTed)
- `and t0, t6, t8` and `and t1, t7, t9` (AND with both halves)
- `sw t1, 4(a0)` then `sw t0, 0(a0)` (store low word first, then high word)

This is a **single u64 AND-NOT** operation: `field &= ~mask`

Define the struct with a single `u64` field (not two `s32` fields):
```c
typedef struct {
    u64 unk0;   // 64-bit bitfield
} BitFlags64;
```

The function becomes:
```c
void func_800073B8_7FB8(u64 arg0) {
    u64 temp_ret;
    temp_ret = __ll_lshift(1, arg0);
    D_8004DC48.unk0 &= ~temp_ret;
}
```

**Key insight**: Using two separate `s32` fields (unk0 and unk4) with `~(u32)temp_ret` and `~temp_ret` does NOT generate the correct assembly. IDO's `~u64` in a 32-bit s32 context always selects v1 (the LOW word), not v0. Only the full **64-bit `&= ~u64`** operation on a `u64` struct field generates the correct `nor v0` + `nor v1` + `and` + `and` pattern with proper v0/v1 assignments.

**Contrast with test-bit function** (func_8000726C_7E6C): The test-bit function accesses the same 64-bit field as **two separate s32 globals** and uses `(u32)temp_ret & D_8004DC4C` (v1) and `temp_ret & D_8004DC48` (v0) to construct the test. The difference is: test-bit only READS, while clear-bit must READ-MODIFY-WRITE, causing IDO to use base+offset addressing and a u64 field for the struct.
