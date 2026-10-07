# Fade value load and store lifetimes (partial function match)

Observed in `func_8009811C_A70CC` under IDO 5.3 -O2:

- Moving the primary fade write after the integer scale calculation alone produced identical assembly. Moving it after all three local scale-vector assignments changed scheduling and matched the target sequence around the double multiply and global store.
- The secondary fade must be loaded into its float temporary before the vehicle-index test, even when the invalid-index path skips the fade calculation. This reproduces the target's unconditional load and branch-likely delay slot.
- Reload the secondary fade after the matrix-building call and before the display-list matrix macro. Use that temporary in the subsequent vehicle-coordinate divisions. Reading the global directly in call arguments loads it too late and uses a different float register.

These changes preserve the target's read points across calls and indirect display-list writes. This note concerns matched instruction sections; the enclosing function remains unmatched.
