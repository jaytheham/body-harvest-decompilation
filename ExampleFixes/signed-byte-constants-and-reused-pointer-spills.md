### Signed byte constants and reused pointer spill slots

`func_800D5424_E43D4` matched with signed `s8` spinner step fields. Storing 2, 1, 2 into unsigned byte fields made IDO materialize an extra constant 1 and changed instruction ordering. Signed byte fields let it share the constant used for the entry's signed halfword mode.

After the instructions matched, two pointer spills were four bytes too low. Separate motion and parent pointers reserved another local slot. Reusing one pointer for both states, with a padding word before the two short indices, preserved the indices at sp+0x2E and sp+0x2C while moving the temporary spills to sp+0x28 and sp+0x24. The frame stayed 0x38 bytes.

The color arguments are unsigned bytes; their stack loads are LBU. Full ROM verification returned `build/bh.us.z64: OK`.
