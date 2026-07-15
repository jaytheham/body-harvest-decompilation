### Byte-offset array access fixes `sll` register allocation in switch statements

**Problem:** In `func_8001A650_1B250`, using `(u8 *)D_800344B4_350B4[arg0 * 2]` inside a `switch` statement generated `sll t0,s0,3` (register t0) while the target had `sll t9,s0,3` (register t9). This cascaded into all subsequent temp registers being shifted: target used `t9,t0,t1,t2` for the four shift sites, current used `t0,t2,t4,t6`.

**Root cause:** Array-index form `base[index * (stride/sizeof)]` with a stride of 8 bytes and sizeof(element)=4 causes IDO to track the computation as `index * 2` (the array index) which is then internally multiplied by `sizeof(s32) = 4` to get the byte offset. This internal two-step process causes a different temp register to be allocated for the shift result compared to the direct byte-offset form.

**Fix:** Replace the array-index expression with explicit byte-offset pointer arithmetic:

```c
// Before (register allocation mismatch - score 45):
func_8001A598_1B198((u8 *)D_800344B4_350B4[arg0 * 2]);

// After (matching - score 0):
func_8001A598_1B198(*(u8 **)((u8 *)D_800344B4_350B4 + arg0 * 8));
```

**Why it works:** The byte-offset form `*(type *)((u8 *)base + index * stride)` gives IDO the exact byte offset (`arg0 * 8`) directly as a single multiply expression, instead of requiring it to compute `index * (stride/sizeof)` first and then multiply by `sizeof(type)`. With the direct byte offset, IDO's register allocator picks `t9` as the first available temp register (continuing from the previous `t8` usage), matching the target exactly.

**When to use this:** When a switch statement (or any control flow with multiple branches) accesses an array with non-unit stride (e.g., 8-byte entries indexed as `s32[]`) and the target uses a different temp register for the shift/multiply result. Replace `((type *)&array)[index * (stride/sizeof)]` with `*(type *)((u8 *)&array + index * stride)`.
