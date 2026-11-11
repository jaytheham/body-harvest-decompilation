# Incorrect ASM

In `func_8009811C_A70CC`, computing the map marker brightness in an `s32`
with `& 0xFF` makes IDO narrow the stack argument through `a2` and then
reuse `a2` for the other register argument.

```asm
andi    a2,s0,0xff
lh      a0,0(t1)
lh      a1,4(t1)
sw      a2,0x10(sp)
jal     func_80095D4C_A4CFC
 andi   a3,a2,0xff
```

# Code changed

Declare the brightness as `u8`. Keep the nearby zone count signed. The two
byte locals fit in the same frame.

```c
s8 zoneCount;
u8 markerBrightness;
/* ... */
markerBrightness = sp2E4 / 40;
func_80095D4C_A4CFC(D_80052B34->unk0, D_80052B34->unk4,
                     markerBrightness, markerBrightness, markerBrightness);
```

# Correct ASM

```asm
lh      a0,0(t1)
lh      a1,4(t1)
sw      s0,0x10(sp)
andi    a2,s0,0xff
jal     func_80095D4C_A4CFC
 andi   a3,s0,0xff
```
