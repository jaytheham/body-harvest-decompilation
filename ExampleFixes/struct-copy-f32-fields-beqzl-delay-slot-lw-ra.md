### Struct copy of 4 f32 fields: `beqzl + lw ra` delay-slot pattern and `at/t1` interleaved registers

**Symptom:** Target uses `beqzl t2, epilogue; lw ra` (likely branch with `lw ra` in delay slot)
and interleaved `lw at` / `sw at` / `lw t1` / `sw t1` register pattern for a 4-word copy.
Current generates `beqz t2` with `sw last_element` in the delay slot, and compiles the copy
as "load all 4, then store all 4" using `t8/t9/t0/t1`.

**Root cause:**  Element-by-element assignment `sp38[0] = D_src[0]; sp38[1] = D_src[1]; ...`
causes IDO to batch-load then batch-store. The last store ends up in the `beqz` delay slot,
preventing `lw ra` from going there. IDO therefore uses the non-likely `beqz` branch.

With a struct copy `sp38 = D_src;` (struct assignment):
- IDO generates the interleaved `lw at / sw at / lw t1 / sw t1` pattern for each word
- All 4 stores complete BEFORE the branch point
- `lw ra` becomes the only useful instruction at the delay slot point → IDO uses `beqzl`
- The target v0 register holds the local buffer address (sp+0x38) for both the copy AND the
  indexed float read `((f32*)&sp38)[arg0]`

**Fix:** 
1. Declare a 4-field `f32` struct type (e.g. `Float4`).
2. Declare the source global as that struct type: `extern Float4 D_80033C9C_3489C;`
3. Declare the local as that struct type: `Float4 sp38;`
4. Copy via struct assignment: `sp38 = D_80033C9C_3489C;`
5. Access indexed float via pointer cast: `((f32 *)&sp38)[arg0]`

```c
// WRONG — element-by-element, produces beqz + batch loads/stores:
s32 sp38[4];
sp38[0] = D_80033C9C_3489C[0];
sp38[1] = D_80033C9C_3489C[1];
sp38[2] = D_80033C9C_3489C[2];
sp38[3] = D_80033C9C_3489C[3];
D_80031D60_32960 = *(f32 *)(sp38 + arg0);

// CORRECT — struct copy, produces beqzl + interleaved lw-at/sw-at/lw-t1/sw-t1:
Float4 sp38;
sp38 = D_80033C9C_3489C;
D_80031D60_32960 = ((f32 *)&sp38)[arg0];
```

**Related:** See also `lw-at-sw-at-float-field-copy-vec3f.md` (Vec3f 3-word version of same pattern).
IDO uses `$at` for the 1st and 3rd words, `$t1` for the 2nd and 4th words in 4-field struct copies.
