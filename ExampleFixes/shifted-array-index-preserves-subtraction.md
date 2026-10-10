# Shifted array index preserves the subtraction

In func_800C0D1C_CFCCC, IDO folds `array[(currentLevel - 1) * 2]` into a shifted currentLevel and a load offset four bytes before the symbol. The target instead subtracts one before shifting. Writing `array[(currentLevel - 1) << 1]` preserves that instruction and matches register allocation. A named index preserved subtraction but allocated it in v0, also differing from the target.

Inline `BH_ABS((D_80052B34->unk0 >> 7) - arg0)` and the equivalent Z expression also put the vehicle pointer in v1 and the negation in a0. Named difference and negation temporaries exchanged those registers.

The entry checks need a single positive conjunction surrounding the success path with an else returning zero. Separate early returns added branches. The first two parameters are s16, as shown by the entry sign extension and saved-halfword load.

Comet func_802D5DD8_319F28 also needs D_80031634_32234[((currentLevel - 1) << 1) + 1]. Multiplication and a cast to a two-dimensional table folded the subtraction into the load offset; a separate index changed registers and increased the frame. The inline shift matched exactly.
