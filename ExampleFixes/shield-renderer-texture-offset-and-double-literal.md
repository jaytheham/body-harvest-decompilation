`incorrect ASM`

In `func_800E5538_F44E8`, an inline texture-offset expression inside `gDPLoadTextureBlock` cached the texture address in `s6` and loaded the model address into `s7` immediately before the vehicle/building dispatch. The target loads the model into `s6` before the texture-frame divisions and retains the texture address in `s7`.

`code changed`

```c
s16 textureOffset;

temp_a0 = 0x40 - (temp_s5 / 2);
textureOffset = (((temp_s5 / 4) % 8) << 8) / 2;
/* Coordinate lookup and transform generation. */
gDPLoadTextureBlock(D_8005BB2C++, &D_50327B0[textureOffset],
    G_IM_FMT_IA, G_IM_SIZ_8b, 16, 16, 0,
    G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
    4, 4, G_TX_NOLOD, G_TX_NOLOD);
```

Remove the `D_801441E0_153190` placeholder definition and declaration, and replace the named double local with the inline literal `1.7` in the alpha multiplication. IDO generates the original eight-byte constant and still caches it in `f20`, while removing eight bytes of reserved local storage.

`correct ASM`

```asm
subu  a0,t8,t7
lui   s6,%hi(D_50332A0)
addiu s6,s6,%lo(D_50332A0)
bgez  s5,quarter_ready
sra   t9,s5,2
/* Texture-frame arithmetic. */
bne   v0,at,building_path
addu  s7,t9,t5
```

The address-load block and complete function match exactly. Both ROM checksums pass after the timer-lifetime and shared-packet changes.
