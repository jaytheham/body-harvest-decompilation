# Joint angle addition reassociation

`func_802E3584_3276D4` matched with the full ROM checksum after writing the angle updates as:

```c
alienInstances[arg0].unkA = D_8014DD50[arg1].unkAUnsigned + D_8014DD50[arg2].unkAUnsigned + D_8014DD50[parent].unkAUnsigned + alienInstances[arg0].unkA;
alienInstances[arg0].unk6 = alienInstances[arg0].unk6 - D_8014DD50[arg1].unk6Unsigned - D_8014DD50[arg2].unk6Unsigned - D_8014DD50[parent].unk6Unsigned;
```

IDO reassociates the addition: placing the alien angle last produced the target's initial `alien angle + arg1 angle`, followed by arg2 and parent. Placing it first moved the parent term into the initial addition and changed pointer scheduling. Keep subtraction left associative; subtracting a sum emits additions followed by a single subtraction. Separate updates on separate source lines to preserve final store order.

For func_802E33B0_327500, read the parent index into a u8 local before copying the coordinate struct. This schedules the alien address and parent load before the struct stores. Reusing the s16 joint-result local for the parent instead forced an extra callee-save register. Declaring u8 padding, u8 parentIndex, then two s16 indices preserves the target halfword slots at sp+0x3C and sp+0x3A.
