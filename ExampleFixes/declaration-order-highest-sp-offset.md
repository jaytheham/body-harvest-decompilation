### Declaration order controls stack offset: first declared gets HIGHEST sp offset

IDO allocates local variables **top-down** (highest sp offset first). The **first declared** variable gets the **highest** sp offset; the **last declared** gets the **lowest** sp offset.

**Problem**: target has `addiu t8, sp, 0x24` but you see `addiu t8, sp, 0x28` (struct 4 bytes too high).

**Cause**: declaring `Unk8014DD50 sp24` first gave it the highest slot (sp+0x28–0x37), pushing smaller vars to lower offsets.

**Fix**: declare the smaller variable (`s16 temp`) FIRST so it gets the highest slot, and declare `Unk8014DD50 sp24` SECOND so it lands at the next-lower range (sp+0x24–0x33):

```c
// CORRECT (struct ends up at sp+0x24):
s16 temp;           // first → IDO assigns highest offset (sp+0x34 area); kept in register
Unk8014DD50 sp24;   // second → sp+0x24–0x33 ✓

// WRONG (struct displaced to sp+0x28):
Unk8014DD50 sp24;   // first → sp+0x28–0x37
s16 temp;           // second → sp+0x24 area
```
