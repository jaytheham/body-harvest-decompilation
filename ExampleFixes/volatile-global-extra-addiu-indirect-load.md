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
