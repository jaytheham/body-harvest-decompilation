nonmatching func_80075C84_46134, 0xD4

glabel func_80075C84_46134
    /* 46134 80075C84 3C02800D */  lui        $v0, %hi(D_800D6DA8)
    /* 46138 80075C88 24426DA8 */  addiu      $v0, $v0, %lo(D_800D6DA8)
    /* 4613C 80075C8C 904E000E */  lbu        $t6, 0xE($v0)
    /* 46140 80075C90 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 46144 80075C94 24010047 */  addiu      $at, $zero, 0x47
    /* 46148 80075C98 15C1002B */  bne        $t6, $at, .L80075D48_461F8
    /* 4614C 80075C9C AFBF001C */   sw        $ra, 0x1C($sp)
    /* 46150 80075CA0 904F000F */  lbu        $t7, 0xF($v0)
    /* 46154 80075CA4 24010052 */  addiu      $at, $zero, 0x52
    /* 46158 80075CA8 55E10028 */  bnel       $t7, $at, .L80075D4C_461FC
    /* 4615C 80075CAC 8FBF001C */   lw        $ra, 0x1C($sp)
    /* 46160 80075CB0 90580013 */  lbu        $t8, 0x13($v0)
    /* 46164 80075CB4 2401004E */  addiu      $at, $zero, 0x4E
    /* 46168 80075CB8 57010024 */  bnel       $t8, $at, .L80075D4C_461FC
    /* 4616C 80075CBC 8FBF001C */   lw        $ra, 0x1C($sp)
    /* 46170 80075CC0 90590011 */  lbu        $t9, 0x11($v0)
    /* 46174 80075CC4 2401004D */  addiu      $at, $zero, 0x4D
    /* 46178 80075CC8 57210020 */  bnel       $t9, $at, .L80075D4C_461FC
    /* 4617C 80075CCC 8FBF001C */   lw        $ra, 0x1C($sp)
    /* 46180 80075CD0 90480012 */  lbu        $t0, 0x12($v0)
    /* 46184 80075CD4 2401004C */  addiu      $at, $zero, 0x4C
    /* 46188 80075CD8 5501001C */  bnel       $t0, $at, .L80075D4C_461FC
    /* 4618C 80075CDC 8FBF001C */   lw        $ra, 0x1C($sp)
    /* 46190 80075CE0 90490010 */  lbu        $t1, 0x10($v0)
    /* 46194 80075CE4 24010049 */  addiu      $at, $zero, 0x49
    /* 46198 80075CE8 3C04800B */  lui        $a0, %hi(D_800ADC18)
    /* 4619C 80075CEC 15210016 */  bne        $t1, $at, .L80075D48_461F8
    /* 461A0 80075CF0 2484DC18 */   addiu     $a0, $a0, %lo(D_800ADC18)
    /* 461A4 80075CF4 240A00F0 */  addiu      $t2, $zero, 0xF0
    /* 461A8 80075CF8 AFAA0010 */  sw         $t2, 0x10($sp)
    /* 461AC 80075CFC 24050014 */  addiu      $a1, $zero, 0x14
    /* 461B0 80075D00 24060014 */  addiu      $a2, $zero, 0x14
    /* 461B4 80075D04 0C002929 */  jal        drawText
    /* 461B8 80075D08 2407012C */   addiu     $a3, $zero, 0x12C
    /* 461BC 80075D0C 3C0B800B */  lui        $t3, %hi(D_800ADC3C)
    /* 461C0 80075D10 256BDC3C */  addiu      $t3, $t3, %lo(D_800ADC3C)
    /* 461C4 80075D14 3C04800B */  lui        $a0, %hi(D_800ADC1C)
    /* 461C8 80075D18 3C07800B */  lui        $a3, %hi(D_800ADC30)
    /* 461CC 80075D1C 24E7DC30 */  addiu      $a3, $a3, %lo(D_800ADC30)
    /* 461D0 80075D20 2484DC1C */  addiu      $a0, $a0, %lo(D_800ADC1C)
    /* 461D4 80075D24 AFAB0010 */  sw         $t3, 0x10($sp)
    /* 461D8 80075D28 24050001 */  addiu      $a1, $zero, 0x1
    /* 461DC 80075D2C 0C002929 */  jal        drawText
    /* 461E0 80075D30 00003025 */   or        $a2, $zero, $zero
    /* 461E4 80075D34 3C04800B */  lui        $a0, %hi(D_800ADC48)
    /* 461E8 80075D38 2484DC48 */  addiu      $a0, $a0, %lo(D_800ADC48)
    /* 461EC 80075D3C 24050001 */  addiu      $a1, $zero, 0x1
    /* 461F0 80075D40 0C002929 */  jal        drawText
    /* 461F4 80075D44 24060001 */   addiu     $a2, $zero, 0x1
  .L80075D48_461F8:
    /* 461F8 80075D48 8FBF001C */  lw         $ra, 0x1C($sp)
  .L80075D4C_461FC:
    /* 461FC 80075D4C 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 46200 80075D50 03E00008 */  jr         $ra
    /* 46204 80075D54 00000000 */   nop
endlabel func_80075C84_46134
