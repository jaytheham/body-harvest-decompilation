# `volatile` on globals causes indirect load (extra `addiu`)

## Symptom

Target assembly loads a global `u8` directly:
```asm
lui    a0, %hi(D_802E0E44)
lbu    a0, %lo(D_802E0E44)(a0)
```

Current assembly has an extra `addiu` instruction computing the address first:
```asm
lui    t3, %hi(D_802E0E44)
addiu  t3, t3, %lo(D_802E0E44)
lbu    a0, 0(t3)
```

## Cause

The global was declared `extern volatile u8 D_802E0E44;`. The `volatile` qualifier prevents the compiler from using the direct `lui+lbu(offset)` addressing mode, because that would encode the address offset in the load instruction's immediate field. Instead, the compiler computes the full address into a register first, then loads through the register with offset 0.

This also cascades into different register allocation for subsequent code.

## Fix

Remove the `volatile` qualifier if the variable doesn't need it:
```c
extern u8 D_802E0E44;  // NOT volatile
```

Only keep `volatile` if the variable is genuinely modified by hardware or interrupt handlers.

For `func_800C927C_D822C`, the target deliberately retains the counter
address in `v0` for its halfword read and write. The guessed pointer return
created an extra store address load; the actual draw helper returns `void`.
Using a volatile alias at `0x80156EDA` reproduces the indirect read/write
without changing already matched accesses through `D_80156EDA` elsewhere.
Declare the alias in `variables.us.h` and give it an absolute linker symbol.
Verified with function score 0 and the full ROM checksum.
