# Build lookup chains directly in the outgoing parameter array

`func_802E3E64_327FB4` matched after replacing independent index locals and deferred stores with direct array assignments:

```c
params[1] = (u16)func_802DFF04_324054(arg0);
params[2] = D_8014DD50[params[1]].unkC;
params[4] = D_8014DD50[params[2]].unkD;
params[3] = D_8014DD50[params[2]].unkC;
params[6] = D_8014DD50[params[4]].unkD;
params[5] = D_8014DD50[params[4]].unkC;
params[7] = D_8014DD50[params[6]].unkC;
```

The array is `s16 params[8]` and its address is passed to `func_80081F18_90EC8`. IDO keeps the chain in registers and delays most halfword stores until the call. The target stores element 3 between the loads of elements 6 and 5. Building values in separate locals produced the same logic, but different register allocation and store scheduling.

This change also fixed scheduling earlier in the function: the initial table byte load and flag stores, and the outgoing constants in two particle calls. Inspect the whole function after changing address-taken local expressions; the effects can extend beyond the edited block.

Stack placement: declaring the table pointer before the three coordinate output words, instead of inside the effect block after those words, moved the outputs to 0x64/0x60/0x5C and the normalized sine to 0x58. Unused halfword padding and a word retained the 0x98 frame and array at 0x84. The signed-byte velocity spills as a word at 0x4C because it is passed repeatedly as a promoted argument.

Verification: normal tools/make.ps1 reported build/bh.us.z64: OK, including after removing redundant conversion casts and consolidating unused halfword locals into padding.
