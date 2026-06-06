### Loop pointer init: inside body vs for-loop header (address rematerialization)

**Problem:** `move a2,t0` generated instead of `lui a2,0x8015` + `addiu a2,a2,-0x2d0` for the loop pointer initialization. This caused:
1. Missing `addiu a2,a2,-0x2d0` at the loop entry (shifting all subsequent branch targets)
2. Dead `li at,1` instruction at end of function

**Root cause:** When the loop pointer was initialized in the for-loop header:
```c
for (a1 = 0, a2 = &D_8014FD30; a1 != 2; a1++, a2 = ...)
```

The compiler noticed that `$t0` already held `&D_8014FD30` (from struct field access in earlier condition checks), and emitted `move a2, t0` — a single-instruction copy. The target required the address to be **rematerialized** from scratch using `lui a2,0x8015` (scheduled early) + `addiu a2,a2,-0x2d0` (at the loop entry label, skipped on loop-back).

**Fix:** Move the pointer computation **inside the loop body**, computing it from the loop counter:

```c
// ❌ WRONG — compiler reuses $t0 via move (no rematerialization)
for (a1 = 0, a2 = &D_8014FD30; a1 != 2; a1++, a2 = ...) {
    ...
}

// ✅ CORRECT — forces address rematerialization via lui+addiu
for (a1 = 0; a1 != 2; a1++) {
    a2 = (Unk8014FD30Type *)((u8 *)&D_8014FD30 + a1 * 8);
    ...
}
```

**Why it works:** By removing `a2` from the for-loop header, the compiler doesn't associate it with the existing `&D_8014FD30` value in `$t0`. The `a1 * 8` multiplication forces a fresh address computation, which IDO schedules as `lui a2` (before the branch) + `addiu a2` (at the loop entry). The loop-back branch goes to the loop body label (skipping the `addiu`), matching the target exactly.

**Key insight:** Forcing address rematerialization by computing the pointer from a loop counter inside the body (rather than initializing it in the for-loop header) can fix `move`-vs-`lui+addiu` differences when the target uses a two-part address load split across a branch.

**Observed in:** `func_800B0D10_BFCC0` (BF9C0.c) — wall collision boundary checking.
