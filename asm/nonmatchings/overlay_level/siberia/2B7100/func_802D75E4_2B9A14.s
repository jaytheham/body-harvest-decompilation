nonmatching func_802D75E4_2B9A14, 0x9C

glabel func_802D75E4_2B9A14
    /* 2B9A14 802D75E4 3C0E802E */  lui        $t6, %hi(D_802E3100)
    /* 2B9A18 802D75E8 8DCE3100 */  lw         $t6, %lo(D_802E3100)($t6)
    /* 2B9A1C 802D75EC 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 2B9A20 802D75F0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2B9A24 802D75F4 15C00009 */  bnez       $t6, .L802D761C_2B9A4C
    /* 2B9A28 802D75F8 3C028015 */   lui       $v0, %hi(D_8014D17C)
    /* 2B9A2C 802D75FC 3C04802D */  lui        $a0, %hi(func_802D75E4_2B9A14)
    /* 2B9A30 802D7600 0C001D2F */  jal        func_800074BC_80BC
    /* 2B9A34 802D7604 248475E4 */   addiu     $a0, $a0, %lo(func_802D75E4_2B9A14)
    /* 2B9A38 802D7608 0C0B5D66 */  jal        func_802D7598_2B99C8
    /* 2B9A3C 802D760C 00000000 */   nop
    /* 2B9A40 802D7610 3C028015 */  lui        $v0, %hi(D_8014D17C)
    /* 2B9A44 802D7614 1000000C */  b          .L802D7648_2B9A78
    /* 2B9A48 802D7618 8442D17C */   lh        $v0, %lo(D_8014D17C)($v0)
  .L802D761C_2B9A4C:
    /* 2B9A4C 802D761C 8442D17C */  lh         $v0, %lo(D_8014D17C)($v0)
    /* 2B9A50 802D7620 3C04802D */  lui        $a0, %hi(func_802D75E4_2B9A14)
    /* 2B9A54 802D7624 28410DAC */  slti       $at, $v0, 0xDAC
    /* 2B9A58 802D7628 54200008 */  bnel       $at, $zero, .L802D764C_2B9A7C
    /* 2B9A5C 802D762C 24010003 */   addiu     $at, $zero, 0x3
    /* 2B9A60 802D7630 0C001D2F */  jal        func_800074BC_80BC
    /* 2B9A64 802D7634 248475E4 */   addiu     $a0, $a0, %lo(func_802D75E4_2B9A14)
    /* 2B9A68 802D7638 0C0B5D42 */  jal        func_802D7508_2B9938
    /* 2B9A6C 802D763C 00000000 */   nop
    /* 2B9A70 802D7640 3C028015 */  lui        $v0, %hi(D_8014D17C)
    /* 2B9A74 802D7644 8442D17C */  lh         $v0, %lo(D_8014D17C)($v0)
  .L802D7648_2B9A78:
    /* 2B9A78 802D7648 24010003 */  addiu      $at, $zero, 0x3
  .L802D764C_2B9A7C:
    /* 2B9A7C 802D764C 14410006 */  bne        $v0, $at, .L802D7668_2B9A98
    /* 2B9A80 802D7650 00002025 */   or        $a0, $zero, $zero
    /* 2B9A84 802D7654 2405001D */  addiu      $a1, $zero, 0x1D
    /* 2B9A88 802D7658 0C03BFAD */  jal        func_800EFEB4_FEE64
    /* 2B9A8C 802D765C 00003025 */   or        $a2, $zero, $zero
    /* 2B9A90 802D7660 3C028015 */  lui        $v0, %hi(D_8014D17C)
    /* 2B9A94 802D7664 8442D17C */  lh         $v0, %lo(D_8014D17C)($v0)
  .L802D7668_2B9A98:
    /* 2B9A98 802D7668 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 2B9A9C 802D766C 244F0001 */  addiu      $t7, $v0, 0x1
    /* 2B9AA0 802D7670 3C018015 */  lui        $at, %hi(D_8014D17C)
    /* 2B9AA4 802D7674 A42FD17C */  sh         $t7, %lo(D_8014D17C)($at)
    /* 2B9AA8 802D7678 03E00008 */  jr         $ra
    /* 2B9AAC 802D767C 27BD0018 */   addiu     $sp, $sp, 0x18
endlabel func_802D75E4_2B9A14
