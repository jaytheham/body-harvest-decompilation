nonmatching func_802D4CD0_1ED9E0, 0xE0

glabel func_802D4CD0_1ED9E0
    /* 1ED9E0 802D4CD0 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1ED9E4 802D4CD4 AFA5001C */  sw         $a1, 0x1C($sp)
    /* 1ED9E8 802D4CD8 28810014 */  slti       $at, $a0, 0x14
    /* 1ED9EC 802D4CDC 00802825 */  or         $a1, $a0, $zero
    /* 1ED9F0 802D4CE0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1ED9F4 802D4CE4 10200009 */  beqz       $at, .L802D4D0C_1EDA1C
    /* 1ED9F8 802D4CE8 AFA40018 */   sw        $a0, 0x18($sp)
    /* 1ED9FC 802D4CEC 00047080 */  sll        $t6, $a0, 2
    /* 1EDA00 802D4CF0 3C19802E */  lui        $t9, %hi(D_802E04A4)
    /* 1EDA04 802D4CF4 032EC821 */  addu       $t9, $t9, $t6
    /* 1EDA08 802D4CF8 8F3904A4 */  lw         $t9, %lo(D_802E04A4)($t9)
    /* 1EDA0C 802D4CFC 0320F809 */  jalr       $t9
    /* 1EDA10 802D4D00 00000000 */   nop
    /* 1EDA14 802D4D04 10000027 */  b          .L802D4DA4_1EDAB4
    /* 1EDA18 802D4D08 8FBF0014 */   lw        $ra, 0x14($sp)
  .L802D4D0C_1EDA1C:
    /* 1EDA1C 802D4D0C 24010014 */  addiu      $at, $zero, 0x14
    /* 1EDA20 802D4D10 10A1000A */  beq        $a1, $at, .L802D4D3C_1EDA4C
    /* 1EDA24 802D4D14 24010015 */   addiu     $at, $zero, 0x15
    /* 1EDA28 802D4D18 10A10011 */  beq        $a1, $at, .L802D4D60_1EDA70
    /* 1EDA2C 802D4D1C 3C04800F */   lui       $a0, %hi(func_800F1DDC_100D8C)
    /* 1EDA30 802D4D20 24010044 */  addiu      $at, $zero, 0x44
    /* 1EDA34 802D4D24 10A10018 */  beq        $a1, $at, .L802D4D88_1EDA98
    /* 1EDA38 802D4D28 24010045 */   addiu     $at, $zero, 0x45
    /* 1EDA3C 802D4D2C 10A10012 */  beq        $a1, $at, .L802D4D78_1EDA88
    /* 1EDA40 802D4D30 3C04802E */   lui       $a0, %hi(D_802E0D50)
    /* 1EDA44 802D4D34 10000018 */  b          .L802D4D98_1EDAA8
    /* 1EDA48 802D4D38 00000000 */   nop
  .L802D4D3C_1EDA4C:
    /* 1EDA4C 802D4D3C 0C0B5B7E */  jal        func_802D6DF8_1EFB08
    /* 1EDA50 802D4D40 00000000 */   nop
    /* 1EDA54 802D4D44 3C04800F */  lui        $a0, %hi(func_800F1134_1000E4)
    /* 1EDA58 802D4D48 24841134 */  addiu      $a0, $a0, %lo(func_800F1134_1000E4)
    /* 1EDA5C 802D4D4C 24050009 */  addiu      $a1, $zero, 0x9
    /* 1EDA60 802D4D50 0C03BFAD */  jal        func_800EFEB4_FEE64
    /* 1EDA64 802D4D54 00003025 */   or        $a2, $zero, $zero
    /* 1EDA68 802D4D58 10000012 */  b          .L802D4DA4_1EDAB4
    /* 1EDA6C 802D4D5C 8FBF0014 */   lw        $ra, 0x14($sp)
  .L802D4D60_1EDA70:
    /* 1EDA70 802D4D60 24841DDC */  addiu      $a0, $a0, %lo(func_800F1DDC_100D8C)
    /* 1EDA74 802D4D64 24050008 */  addiu      $a1, $zero, 0x8
    /* 1EDA78 802D4D68 0C03BFAD */  jal        func_800EFEB4_FEE64
    /* 1EDA7C 802D4D6C 24060001 */   addiu     $a2, $zero, 0x1
    /* 1EDA80 802D4D70 1000000C */  b          .L802D4DA4_1EDAB4
    /* 1EDA84 802D4D74 8FBF0014 */   lw        $ra, 0x14($sp)
  .L802D4D78_1EDA88:
    /* 1EDA88 802D4D78 0C0B5E60 */  jal        func_802D7980_1F0690
    /* 1EDA8C 802D4D7C 00000000 */   nop
    /* 1EDA90 802D4D80 10000008 */  b          .L802D4DA4_1EDAB4
    /* 1EDA94 802D4D84 8FBF0014 */   lw        $ra, 0x14($sp)
  .L802D4D88_1EDA98:
    /* 1EDA98 802D4D88 0C001DA4 */  jal        func_80007690_8290
    /* 1EDA9C 802D4D8C 00000000 */   nop
    /* 1EDAA0 802D4D90 10000004 */  b          .L802D4DA4_1EDAB4
    /* 1EDAA4 802D4D94 8FBF0014 */   lw        $ra, 0x14($sp)
  .L802D4D98_1EDAA8:
    /* 1EDAA8 802D4D98 0C00731B */  jal        osSyncPrintf
    /* 1EDAAC 802D4D9C 24840D50 */   addiu     $a0, $a0, %lo(D_802E0D50)
    /* 1EDAB0 802D4DA0 8FBF0014 */  lw         $ra, 0x14($sp)
  .L802D4DA4_1EDAB4:
    /* 1EDAB4 802D4DA4 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1EDAB8 802D4DA8 03E00008 */  jr         $ra
    /* 1EDABC 802D4DAC 00000000 */   nop
endlabel func_802D4CD0_1ED9E0
