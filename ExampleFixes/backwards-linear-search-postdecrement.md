### Backwards linear search: `if (var_v1--) { do { D_array[var_v1] } while (var_v1--); }` pattern

When a function searches an array backwards (from index N-1 down to 0) and returns the found index:
- Use `s32 var_v1` (not `s16`) for the index variable. `s16` causes IDO to insert an unnecessary sign-extend truncation (`sll/sra`) after loading the initial value, and loop comparisons use wrong registers.
- Use `if (var_v1--)` for the outer guard (post-decrement in condition). This generates `beqz v1, exit; addiu v1, v1, -1` (delay-slot decrement) AND the `move v0, v1` dead-code artifact.
- Use `while (var_v1--)` for the do-while condition. This generates `bnez v1, loop; addiu v1, v1, -1` AND a second `move v0, v1` dead-code artifact inside the loop.
- Access array directly via index `D_array[var_v1]` — do NOT declare an explicit `u8 *ptr`. With an explicit pointer, IDO assigns it to `$a0` (wrong) and sign-extended arg0 to `$a1` (swapped). Without the pointer, IDO strength-reduces the indexed access into an internal pointer at `$a1`, keeping sign-extended arg0 in `$a0`.
- The return type `s16` with `return var_v1` (s32 value) generates the correct `sll v0, v1, 0x10; sra t0, v0, 0x10; jr ra; move v0, t0` sign-extension sequence.

**Example (score 0 – fully matched):**
```c
s16 func_800FADF8_109DA8(s16 arg0) {
    s32 var_v1;

    var_v1 = D_80158FD8;
    if (var_v1--) {
        do {
            if (arg0 == D_80158E80[var_v1]) {
                return var_v1;
            }
        } while (var_v1--);
    }
    return -1;
}
```

### Constant-init offset: `i = N; while (i--)` → compiled init `N-1`

When the post-decrement loop is initialized with a **known nonzero constant** `N` (e.g. `i = 0x80; while (i--) { ... &arr[i] ... }`), IDO peels the first decrement into the init:
- Emits `addiu counter, $zero, N-1` (e.g. `0x7F`), NOT `N`.
- Strength-reduces `&arr[i]` to a decrementing pointer initialized at `&arr[N-1]` (e.g. `addiu ptr, %lo(arr+N-1*stride)`).
- Bottom of loop: `or v0, counter, zero` (dead `move` artifact) + `addiu ptr, ptr, -stride` + `bnez counter, loop` + `addiu counter, counter, -1` (delay slot).

So a `while (i--)` from `N` and a `do { } while (i--)` from `N-1` compile identically. Prefer the `while` form.

Also: `continue` in place of a `goto <loop_end>` label (skipping trailing calls but still doing the pointer update) compiles identically, because in the optimized do-while form `continue` jumps to the bottom test/update. This lets you remove the goto/label entirely:

```c
i = 0x80;
while (i--) {
    VehicleInstance *v = &vehicleInstances[i];
    if ((v->unk1A == 0x11) && !(v->unk20 & 0x8000)) {
        if (v->unk1E >= 0x100) {
            continue;              // skips func1/func2, still decrements ptr
        }
        /* ... updates ... */
    }
    func1(v);
    func2(v);
}
```
(Match verified for `func_80112F98_121F48` in `101840.c`.)