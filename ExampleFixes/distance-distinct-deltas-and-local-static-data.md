# Distance deltas, absolute values, and local static data

`func_802DE584_2C09B4` matched after removing the eight-byte data placeholder for its initialized local static `mode`. Keeping both definitions puts the actual static after the placeholder and shifts its address.

For paired X/Z absolute values, separate delta variables reproduce the separate negative temporaries. Reusing the same delta and absolute-value variables can preserve every opcode while changing register allocation. The matched distance routine `func_80084E54_93E04` is a useful source reference, including its empty conditional between copying the first absolute value and shifting it.

The root-joint temporary can be reused for the first absolute value; the second absolute value must remain separate. Reusing the X delta for the final distance and the Z delta for the half-distance avoids excess stack slots. After registers match, declaration placement controls the sine temporary's stack home: declaring it after the X and Z deltas puts it at `sp+0x64`. One unused particle-block word preserves the target spill layout and `0x88` frame.
