### Two named pointer locals required for correct frame size (avoid t-register cycle shift)

When a function with `u8 arg0, u8 arg1` uses both `alienInstances[arg0]` and `D_8014DD50[arg1]` across multiple function calls, and the target frame is 0x60 but without named pointer locals IDO generates a 0x58 frame:

Declare **both** pointer variables at the **TOP** of the declaration list (before other locals):
```c
Unk8014DD50 *weapon;    // first declared → highest stack address (sp+0x5C)
AlienInstance *alien;   // second declared → sp+0x58
s32 sp54;               // sp+0x54 (correct position)
...
```
