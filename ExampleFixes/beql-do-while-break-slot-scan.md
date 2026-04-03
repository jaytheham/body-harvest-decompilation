### `beql` with counter + byte-offset: use do-while with break, not if-else-goto

When a loop scans an s32 array for the first non-(-1) entry, marks it -1, and then uses a parallel byte-offset variable to index into a pointer array, the target uses `beql` (branch equal likely) with an increment in the delay slot. This is generated specifically by a **do-while with break**.

**Assembly pattern:**
```
loop_top:
    lw       t8, 0(v0)           ; load *slot
    beql     a1, t8, continue    ; if *slot == -1: i++ (delay), goto continue
     addiu   v1, v1, 1           ; delay: i++
    b        exit                ; *slot != -1: goto exit
     sw      a1, 0(v0)           ; delay: *slot = -1
    addiu    v1, v1, 1           ; DEAD CODE (v1++ moved to beql delay slot)
continue:
    addiu    a0, a0, 4           ; j += 4
    bne      v1, a2, loop_top    ; loop back if i != 16
     addiu   v0, v0, 4           ; delay: slot++
exit:
    lui t9, D_8006AA88
    addiu t9, D_8006AA88
    addu a1, a0, t9              ; entry = D_8006AA88 base + j (byte offset)
    lw t0, 0(a1)                 ; *entry
    sh v1, 4(t0)                 ; (*entry)->unk4 = i
    lw v0, 0(a1)                 ; reload *entry for return
```

**Key observations:**
1. Two separate loop variables: `i` (count, s32) and `j` (byte offset = i*4, s32) are both initialized to 0 BEFORE the second early-exit check.
2. The byte offset `j` is used at the end to compute the array entry address directly: `(char *)D_8006AA88 + j` — avoids the `sll/sra` sign extension and generates `addu` directly.
3. `i` must be `s32` (not `s16`) to avoid extra `sll/sra` sign-extension pairs in the loop (see `s16-loop-var-s32-avoid-sign-extend.md`).
4. The `entry` pointer variable causes IDO to compute the pointer once and reuse (correct double-lw pattern at end).

**Matching C:**
```c
Unk8006AA84Node *func_80012128_12D28(void) {
    s32 i;
    s32 j;
    s32 *slot;
    Unk8006AA84Node **entry;

    if (D_8006AB88 == 0) {
        return NULL;
    }
    i = 0;
    j = 0;
    if (D_80031CA0_328A0 >= 0x11) {
        return NULL;
    }
    slot = D_8006AAD0;
    do {
        if (*slot != -1) {
            *slot = -1;
            break;
        }
        i++;
        j += 4;
        slot++;
    } while (i != 0x10);
    entry = (Unk8006AA84Node **)((char *)D_8006AA88 + j);
    (*entry)->unk4 = i;
    return *entry;
}
```

**What was tried and failed:**
- `while (i != 0x10) { if (*slot == -1) { i++; j+=4; slot++; } else { *slot=-1; break; } }` → generates `bne` (not `beql`)
- `if-else-goto loop:` structures with either condition → generates `bne` or wrong block layout
- `for (i=0; i!=0x10; i++, slot++) { if (*slot != -1) { *slot=-1; break; } }` → same `bne` issue + s16 sign extension
- `s16 i` for loop counter → generates sll/sra sign extension pairs

**Root cause of `beql`:** The `do-while` with `break` causes IDO to generate `beql` (branch equal likely) for the inner sentinel check. The "likely" branch points to the continue path, with `i++` moved from after the if-block into the beql delay slot. The original `i++` becomes dead code at its original position. The `break` path exits the do-while directly with `*slot = -1` in the b-instruction delay slot.

**Why `j` (byte offset) is needed instead of `D_8006AA88[i]`:** Using `D_8006AA88[i]` with s32 `i` generates `sll i, 2; addu` (2 instructions) to compute the array index. The target uses `addu a0, j, D_8006AA88_addr` (1 instruction) because `j` is pre-accumulated as a byte offset throughout the loop. Without `j`, there is no way to avoid the extra `sll`.

**Byte-offset access pattern:** `(Unk8006AA84Node **)((char *)D_8006AA88 + j)` converts the array to `char*` (byte pointer), adds the byte offset `j`, then casts back. IDO generates `lui + addiu + addu` for this, matching the target's 3-instruction address computation.
