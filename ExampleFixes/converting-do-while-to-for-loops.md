#### Converting do-while to for loops

When m2c generates a simple counter-based do-while loop that increments a variable until it reaches a limit, converting it to a for loop often matches perfectly:

**m2c output (do-while):**

```c
var_s0 = 2;
do {
    if (func(var_s0) != 0) {
        // body
    }
    var_s0 += 1;
} while (var_s0 != 0xB);
```

**Matching C (for loop):**

```c
for (i = 2; i < 11; i++) {
    if (func(i) != 0) {
        // body
    }
}
```

- Replace `var_s0 = start; ... var_s0 += 1; ... while (var_s0 != limit)` with `for (i = start; i < limit; i++)`
- Use `<` instead of `!=` for the loop condition (mathematically equivalent for incrementing loops)

#### for loop vs do-while: instruction scheduling for loop initialiser vs array base

When a function initialises a loop counter (`var_s0 = 0`) after loading a global array base address (lui+addiu for a global like `D_802E04F8`), IDO's instruction scheduler may insert the `move s0, zero` between the `lui s2` and `addiu s2, s2, lo` pair, splitting the address load — which does NOT match the target.

Converting the do-while to a `for` loop (`for (i = 0; i < N; i++)`) moves the loop counter initialisation into the for-init clause, which changes when IDO schedules it relative to the array base address setup. The `for` loop form keeps `lui+addiu` adjacent and places `move i, zero` after both, matching the target assembly exactly.

**Symptom:** score of 60 with the ONLY diff being a single 2-instruction swap of `addiu s2, s2, lo` ↔ `move s0, zero` in the pre-loop prologue.

**Fix:**
```c
// ❌ WRONG – scheduler inserts move s0 between lui s2 and addiu s2
var_s0 = 0;
do {
    func(D_802E04F8[var_s0].unk0);
    D_802E04F8[var_s0].unk0 = -3;
    var_s0 += 1;
} while (var_s0 < 0xE);

// ✅ CORRECT – for-init clause keeps lui+addiu together, move i after
for (i = 0; i < 0xE; i++) {
    func(D_802E04F8[i].unk0);
    D_802E04F8[i].unk0 = -3;
}
```

Also ensure the array type has the correct stride (e.g., a struct with stride 8) rather than raw `s16[]` pointer arithmetic — using struct indexing (`D_802E04F8[i].unk0`) rather than `base + (i * 4)` on a `s16*` is required to get the correct t-register (t6 not t7) in the loop body sll instruction.

#### Decrementing do-while: use `while (i--)` from `i = N+1` instead of `do { } while (i--)` from `i = N`

For **backwards** loops that call function pointers (requiring callee-save registers) where the target uses `bnez s0, loop; addiu s0, s0, -1` (delay), if using `do { } while (i--)` starting from `i = N` gives score 60 with only the `addiu s1, s1, lo` ↔ `li s0, N` prologue swap, convert to `while (i--)` starting from `i = N+1`.

IDO internalizes the initial decrement: `while (i=N+1; i--)` is equivalent at runtime to `do { } while (i=N; i--)` but IDO schedules the address setup (addiu for CSE ptr) BEFORE the counter initialization (li s0) in the prologue of the while form, while it puts li s0 FIRST in the do-while form.

Use inline array access (`D_arr[i]`, no named pointer) to let IDO strength-reduce to an internal CSE pointer (s1), keeping the user counter as s0.

**Symptom:** score 60 with the ONLY diff being `li s0, N` ↔ `addiu s1, s1, lo` in the prologue.

**Fix:**
```c
// ❌ WRONG – do-while with i=3 schedules li s0,3 BEFORE addiu s1
s32 i = 3;
do {
    if (D_8004DC68[i] != 0) {
        ((void (*)(void))D_8004DC68[i])();
    }
} while (i--);

// ✅ CORRECT – while with i=4 schedules addiu s1 BEFORE li s0,3
s32 i = 4;
while (i--) {
    if (D_8004DC68[i] != 0) {
        ((void (*)(void))D_8004DC68[i])();
    }
}
```

#### for-loop inside an outer `if`: `addiu a2` vs `move v0,zero` swap in prologue

When a `for` loop is nested inside an `if` check that loads a global variable (via `lw`), and the for-loop body accesses a global array (whose address is `lui+addiu`), IDO may split the `lui+addiu` pair for the array by inserting the `move reg, zero` (for-counter init) between them — putting `addiu` into the beqz delay slot instead of the for-counter init.

**Symptom:** score 240 with the ONLY diff in the prologue being a swap of `addiu a2, a2, lo(array)` ↔ `move v0, zero` (2 positions), plus possible loop-body instruction reordering.

**Fix:** Use a `for` loop (instead of `do { var_v0=0; ...; var_v0++ } while`) for the inner loop. The `for`-init clause keeps `lui+addiu` adjacent and schedules `move reg, zero` into the beqz delay slot. Also use simple array indexing (`((u16*)&arr)[i]`) rather than explicit byte-offset temporaries — the latter causes a register allocation shift that changes which t-register is used for the s16 sign-extend temp.

```c
// ❌ WRONG – do-while: splits lui+addiu, move v0,zero before beqz (score 240)
if (leomecha_bss_0004 != 0) {
    var_v0 = 0;
    do {
        ((u16 *)&D_80047748)[var_v0] = ((u16 *)&D_802D4AD0)[var_v0];
        var_v0 += 1;
    } while (var_v0 < 0x100);
    leomecha_bss_0004 = 0;
}

// ✅ CORRECT – for loop: lui+addiu both before beqz, move v0,zero in delay slot (score 0)
if (leomecha_bss_0004 != 0) {
    for (var_v0 = 0; var_v0 < 0x100; var_v0++) {
        ((u16 *)&D_80047748)[var_v0] = ((u16 *)&D_802D4AD0)[var_v0];
    }
    leomecha_bss_0004 = 0;
}
```

Also note: adding an explicit `s32 temp_v1 = var_v0 * 2;` temp variable (to force increment-before-load ordering) fixes the loop-body instruction scheduling but corrupts the loop-body t-register allocation (sign-extend uses t7 instead of t0). The `for` loop form avoids needing any such temp.

#### for-loop with `(i + 1) & 0xFF` update: bne operand ordering is fixed

When a for-loop uses `i = (i + 1) & 0xFF` as the update expression, IDO generates:
```
addiu v1, v1, 1     ; i++
andi  t0, v1, 0xFF  ; t0 = new i (masked)
bne   [rs], [rt], loop_top
or    v1, t0, zero  ; delay: update v1 with masked value
```

IDO consistently places the most-recently-written register (`t0`, from the `andi`) as `rs` (first operand) in the `bne`, and the loop-bound register as `rt` (second). Flipping the C condition from `i != 6` to `6 != i` does **not** change this behavior — IDO ignores comparison direction for this loop-rotation pattern.

If the target uses `bne a1_bound, t0_counter` (bound first, counter second) and your code generates `bne t0_counter, a1_bound`, the bne ordering cannot be fixed by C-level changes to the comparison expression. This count as score 10 (one `r` mismatch). The function is functionally identical and this is acceptable.

**Note:** Introducing an additional explicit temp variable for the bound (`s32 max = 6`) works against you — it shifts the base-address pointer from `v0` to `a1`, and `max` takes `v0`, causing more mismatches rather than fewer.
