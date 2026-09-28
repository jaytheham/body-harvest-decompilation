### Reusing an argument temporary can select a branch delay-slot load

In `func_8008574C_16D80C`, the target loads the byte color argument in the
delay slot of the `effect == -3` branch. Assigning the argument to a signed
16-bit temporary before that branch, storing the temporary to the entry, and
reusing that same temporary for the first color clamp caused IDO to schedule
the argument load in the branch delay slot.

Using a separate signed clamp temporary for the first color changed the delay
slot back to the element-stride constant. This suggests that keeping the
argument value live across the branch and using it again for the first clamp
can affect IDO's delay-slot scheduling. The exact function is still unmatched;
the observation is based on the current assembly comparison.
