nonmatching func_802D4CD0_318E20, 0xD8

glabel func_802D4CD0_318E20
    /* 318E20 802D4CD0 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 318E24 802D4CD4 AFA5001C */  sw         $a1, 0x1C($sp)
    /* 318E28 802D4CD8 28810014 */  slti       $at, $a0, 0x14
    /* 318E2C 802D4CDC 00802825 */  or         $a1, $a0, $zero
    /* 318E30 802D4CE0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 318E34 802D4CE4 10200009 */  beqz       $at, .L802D4D0C_318E5C
    /* 318E38 802D4CE8 AFA40018 */   sw        $a0, 0x18($sp)
    /* 318E3C 802D4CEC 00047080 */  sll        $t6, $a0, 2
    /* 318E40 802D4CF0 3C19802E */  lui        $t9, %hi(D_802E4E84)
    /* 318E44 802D4CF4 032EC821 */  addu       $t9, $t9, $t6
    /* 318E48 802D4CF8 8F394E84 */  lw         $t9, %lo(D_802E4E84)($t9)
    /* 318E4C 802D4CFC 0320F809 */  jalr       $t9
    /* 318E50 802D4D00 00000000 */   nop
    /* 318E54 802D4D04 10000025 */  b          .L802D4D9C_318EEC
    /* 318E58 802D4D08 8FBF0014 */   lw        $ra, 0x14($sp)
  .L802D4D0C_318E5C:
    /* 318E5C 802D4D0C 24010015 */  addiu      $at, $zero, 0x15
    /* 318E60 802D4D10 10A1000E */  beq        $a1, $at, .L802D4D4C_318E9C
    /* 318E64 802D4D14 3C04802E */   lui       $a0, %hi(D_802E7A30)
    /* 318E68 802D4D18 24010016 */  addiu      $at, $zero, 0x16
    /* 318E6C 802D4D1C 10A10007 */  beq        $a1, $at, .L802D4D3C_318E8C
    /* 318E70 802D4D20 24010044 */   addiu     $at, $zero, 0x44
    /* 318E74 802D4D24 10A10016 */  beq        $a1, $at, .L802D4D80_318ED0
    /* 318E78 802D4D28 24010045 */   addiu     $at, $zero, 0x45
    /* 318E7C 802D4D2C 10A10010 */  beq        $a1, $at, .L802D4D70_318EC0
    /* 318E80 802D4D30 3C04802E */   lui       $a0, %hi(D_802E7A40)
    /* 318E84 802D4D34 10000016 */  b          .L802D4D90_318EE0
    /* 318E88 802D4D38 00000000 */   nop
  .L802D4D3C_318E8C:
    /* 318E8C 802D4D3C 0C0B7F9A */  jal        func_802DFE68_323FB8
    /* 318E90 802D4D40 00000000 */   nop
    /* 318E94 802D4D44 10000015 */  b          .L802D4D9C_318EEC
    /* 318E98 802D4D48 8FBF0014 */   lw        $ra, 0x14($sp)
  .L802D4D4C_318E9C:
    /* 318E9C 802D4D4C 0C00731B */  jal        osSyncPrintf
    /* 318EA0 802D4D50 24847A30 */   addiu     $a0, $a0, %lo(D_802E7A30)
    /* 318EA4 802D4D54 3C04802D */  lui        $a0, %hi(func_802D67A8_31A8F8)
    /* 318EA8 802D4D58 248467A8 */  addiu      $a0, $a0, %lo(func_802D67A8_31A8F8)
    /* 318EAC 802D4D5C 24050024 */  addiu      $a1, $zero, 0x24
    /* 318EB0 802D4D60 0C03BFAD */  jal        func_800EFEB4_FEE64
    /* 318EB4 802D4D64 00003025 */   or        $a2, $zero, $zero
    /* 318EB8 802D4D68 1000000C */  b          .L802D4D9C_318EEC
    /* 318EBC 802D4D6C 8FBF0014 */   lw        $ra, 0x14($sp)
  .L802D4D70_318EC0:
    /* 318EC0 802D4D70 0C0B5D52 */  jal        func_802D7548_31B698
    /* 318EC4 802D4D74 00000000 */   nop
    /* 318EC8 802D4D78 10000008 */  b          .L802D4D9C_318EEC
    /* 318ECC 802D4D7C 8FBF0014 */   lw        $ra, 0x14($sp)
  .L802D4D80_318ED0:
    /* 318ED0 802D4D80 0C001DA4 */  jal        func_80007690_8290
    /* 318ED4 802D4D84 00000000 */   nop
    /* 318ED8 802D4D88 10000004 */  b          .L802D4D9C_318EEC
    /* 318EDC 802D4D8C 8FBF0014 */   lw        $ra, 0x14($sp)
  .L802D4D90_318EE0:
    /* 318EE0 802D4D90 0C00731B */  jal        osSyncPrintf
    /* 318EE4 802D4D94 24847A40 */   addiu     $a0, $a0, %lo(D_802E7A40)
    /* 318EE8 802D4D98 8FBF0014 */  lw         $ra, 0x14($sp)
  .L802D4D9C_318EEC:
    /* 318EEC 802D4D9C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 318EF0 802D4DA0 03E00008 */  jr         $ra
    /* 318EF4 802D4DA4 00000000 */   nop
endlabel func_802D4CD0_318E20
