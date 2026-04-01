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
