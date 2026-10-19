## Incorrect ASM

After changing the fade coefficient in `func_80128E48_137DF8` to the literal `0.7`, retaining the later `3000.0f` placeholder puts the new double literal eight bytes after its target address:

```asm
ldc1 $f4,0x51C8($at)
```

## Code changed

Remove the named `0.7` object and its obsolete declaration. Also remove the later placeholder:

```c
const f32 D_801451C8_154178[1] = {3000.0f};
```

Use literals at both original use sites, so IDO emits the double before the later float:

```c
/* func_80128E48_137DF8 */
startStepF = (s32)(fade * 0.7);

/* func_80129864_138814 */
scale = 3000.0f / len;
```

## Correct ASM

```asm
ldc1 $f4,0x51C0($at)
```

The previously matched `func_80129864_138814` retains identical instructions, including its float load from `0x51C8($at)`. This fixes literal placement; the earlier function still has separate register and scheduling differences.
