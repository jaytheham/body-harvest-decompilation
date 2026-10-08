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

### Instance: a padded frame, and a caller-side narrowing cast (func_802DC230_1F4F40, matched)

Two levers closed this 158-instruction java alien updater (check 1024 -> 9 -> 0); both are the
rule above in a different dress.

- The frame carried unused `s32 pad;` / `s32 pad2;` locals declared *between* the live ones.
  Declaring the lone `s16 sp56` (the `&`-out-param of `func_8011E6FC_12D6AC`) **last** instead moved
  its home `0x5A -> 0x56`, which is the target value. Same rule: first declared = highest offset, so
  anything declared above it pushes it down. Measured sweep (there is no guessing the count):
  base 9, sp56 first 17, pads declared below it 0.
- The residual 9 was a **caller-side narrowing** of one argument: `(... (temp % 6) + 6, ...)` had to
  be written `(u8)((temp % 6) + 6)`. The callee parameter is wide, so with no cast IDO emits no
  conversion at all; the target has `andi $t6,$a2,0xFF` + `or $a2,$t6,$zero`. A 2-instruction
  instruction-count deficit (ins_diff delta -2) pointed straight at it.
