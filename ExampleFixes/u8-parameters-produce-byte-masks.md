# u8 parameters produce explicit byte masks

When the target starts by masking incoming argument registers with `andi ..., 0xFF`, check whether the parameters are declared `u8`. IDO emits those masks for byte-sized parameters even when the C body does not explicitly apply `& 0xFF`.

For example, `func_8008BB6C_173C2C` matches with `u8 arg0, u8 arg1` and no explicit masks. The same texture command sequence in `func_8009BDB8_AAD68` provides a matched reference for this code shape.
