# Halfword colors, signed byte direction, and trig argument conversion

func_800FEDBC_10DD6C matched with s16 red, green, and blue locals and an s8 horizontal effect direction. Word colors produced a 0x70 frame; byte colors produced 0x60. Halfword colors give the target 0x68 frame and place the transformed coordinates at sp+0x5C, sp+0x60, and sp+0x64.

Using a signed byte direction also preserves its sign extension before the first effect call and reuses the extended value for the second call. The word local with casts at each call did not reproduce that allocation.

For both trig arguments, replace the explicit AND mask with a u16 conversion:

```c
sins((u16)(D_80052B34->unkE + 0x4000));
coss((u16)(D_80052B34->unkE + 0x4000));
```

This emits the add in a0, the ANDI into a temporary, and the move into a0 in the call delay slot. The bitwise-mask expression instead adds into the temporary and puts ANDI in the delay slot, shifting subsequent temporary registers. Full ROM verification passed.
