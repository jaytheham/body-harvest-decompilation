# Integer two in float multiplication

In `func_8010F834_11E7E4`, `y *= 2` emits the target single-precision constant load and `mul.s`. The equivalent `y *= 2.0f` is strength-reduced to `add.s`, while `y *= 2.0` promotes the operation to double precision. The integer literal preserves the required multiplication and surrounding instruction scheduling. Reuse the three component locals for normalization, and clear the velocity fields with `0.0f`. The full ROM checksum verifies.
