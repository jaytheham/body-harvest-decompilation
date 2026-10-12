### `u16 arg3` in both wrapper and callee: `andi t2,a3,0xffff` scheduled BEFORE constant `li`

When a wrapper function calls another with a 4th argument (`a3`) that needs zero-extension, IDO 5.3 -O2 schedules `andi t2, a3, 0xFFFF; move a3, t2` **before** loading any constant stack arguments (e.g., `li t6, 1`) only when `u16 arg3` is declared in **both** the wrapper function signature AND the callee's function declaration.

With `s32 arg3` in either location, IDO schedules the constant `li 1` **first** (treating it as a dependency-free constant to hoist), then the `andi`, and then `move a3, t2` comes **after** the `sra` operations for a1/a2.

With `u16 arg3` in both declaration sites, IDO treats the zero-extension of a3 as a higher-priority argument operation and schedules:
1. `andi t2, a3, 0xFFFF` (zero-ext a3 for call)
2. `li constant` (for a stack arg or local)
3. `move a3, t2` (complete a3 setup — before sra a1/a2)
4. `sra a2, t0` / `sra a1, t8` (finalize a2/a1)

**Example** (wrapper with `u16 arg3`, 3 u8 args, last arg = constant 1):
```c
// Declaration in functions.us.h:
void func_800D0614_DF5C4(s16 arg0, s16 arg1, s16 arg2, u16 arg3, u8 arg4, u8 arg5, u8 arg6, s32 arg7);

// Implementation:
void func_800D05A8_DF558(s16 arg0, s16 arg1, s16 arg2, u16 arg3, u8 arg4, u8 arg5, u8 arg6) {
    func_800D0614_DF5C4(arg0, arg1, arg2, arg3, arg4, arg5, arg6, 1);
}
```
Generates: `andi t2,a3,0xffff` / `li t6,1` / `move a3,t2` / `sra a2` / `sra a1` (correct order).

With `s32 arg3` instead: `li t6,1` / `andi t2,a3,0xffff` / `sra a2` / `sra a1` / `move a3,t2` (wrong order, score 120).

**Side-effect: changing callee arg3 from `s32` to `u16` can break other callers that compute arg3 via arithmetic (e.g., `(arg1 * 3) & 0xFFFF`).** IDO generates `subu t8, t7, a3` (fresh dest) instead of in-place `subu t7, t7, a3`, which shifts subsequent register allocation by 1 and causes cascade register mismatches in those callers. Fix: change the arithmetic caller's expression from `(x * 3) & 0xFFFF` to `(u16)(x * 3)`. The explicit `(u16)` cast forces IDO to use the in-place pattern, restoring original register allocation.
