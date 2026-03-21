### 3x3 float matrix-vector multiply: use `f32 *` flat pointers, not `f32[3][3]`

When a function accesses a 3x3 matrix (9 consecutive floats at offsets 0x00–0x20) via pointer `a0` and a 3-element float vector via `a1`, **use `f32 *mat` and `f32 *vec`** (flat pointers with 1D indexing), not `f32 mat[3][3]` or `Vec3f *`.

**Correct form (matches target):**
```c
void func(f32 *mat, f32 *vec, f32 *out) {
    out[0] = vec[0] * mat[0] + vec[1] * mat[3] + vec[2] * mat[6];
    out[1] = vec[0] * mat[1] + vec[1] * mat[4] + vec[2] * mat[7];
    out[2] = vec[0] * mat[2] + vec[1] * mat[5] + vec[2] * mat[8];
}
```

Where `mat[i]` = a0 + i*4, `vec[i]` = a1 + i*4, `out[i]` = a2 + i*4.

**Expression ordering matters for register allocation:**
- The expression `vec[0]*mat[0] + vec[1]*mat[3] + vec[2]*mat[6]` causes IDO -O2 to:
  - Emit load pairs starting with `vec[0]` (a1+0) before `mat[0]` (a0+0)
  - Compute `inner = vec[0]*mat[0] + vec[1]*mat[3]` first
  - Then compute `vec[2]*mat[6]` into a register
  - Final add: `add.s result, f_c, f_inner` (the `vec[2]*mat[thing]` term on the LEFT)
- Using `f32 mf[3][3]` (decays to `f32(*mf)[3]`) or `Vec3f *` generates different register assignments even though the pointer offsets are identical

**Why `f32*` differs from `f32[3][3]`:** IDO's code generator produces different expression trees for flat-pointer vs 2D-array parameters, resulting in different load/register orderings even though the final addressing is mathematically identical.
