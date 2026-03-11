nonmatching func_8007EE0C_4F2BC, 0x80

glabel func_8007EE0C_4F2BC
    /* 4F2BC 8007EE0C 3C0E8009 */  lui        $t6, %hi(D_80094938)
    /* 4F2C0 8007EE10 8DCE4938 */  lw         $t6, %lo(D_80094938)($t6)
    /* 4F2C4 8007EE14 3C02800D */  lui        $v0, %hi(D_800D7A18)
    /* 4F2C8 8007EE18 24427A18 */  addiu      $v0, $v0, %lo(D_800D7A18)
    /* 4F2CC 8007EE1C 15C00019 */  bnez       $t6, .L8007EE84_4F334
    /* 4F2D0 8007EE20 00000000 */   nop
    /* 4F2D4 8007EE24 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 4F2D8 8007EE28 8C810000 */  lw         $at, 0x0($a0)
    /* 4F2DC 8007EE2C ADE10010 */  sw         $at, 0x10($t7)
    /* 4F2E0 8007EE30 8C880004 */  lw         $t0, 0x4($a0)
    /* 4F2E4 8007EE34 ADE80014 */  sw         $t0, 0x14($t7)
    /* 4F2E8 8007EE38 8C810008 */  lw         $at, 0x8($a0)
    /* 4F2EC 8007EE3C ADE10018 */  sw         $at, 0x18($t7)
    /* 4F2F0 8007EE40 8C490000 */  lw         $t1, 0x0($v0)
    /* 4F2F4 8007EE44 8C81000C */  lw         $at, 0xC($a0)
    /* 4F2F8 8007EE48 AD21001C */  sw         $at, 0x1C($t1)
    /* 4F2FC 8007EE4C 8C8C0010 */  lw         $t4, 0x10($a0)
    /* 4F300 8007EE50 AD2C0020 */  sw         $t4, 0x20($t1)
    /* 4F304 8007EE54 8C810014 */  lw         $at, 0x14($a0)
    /* 4F308 8007EE58 AD210024 */  sw         $at, 0x24($t1)
    /* 4F30C 8007EE5C 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 4F310 8007EE60 848D0018 */  lh         $t5, 0x18($a0)
    /* 4F314 8007EE64 A5CD0034 */  sh         $t5, 0x34($t6)
    /* 4F318 8007EE68 8499001A */  lh         $t9, 0x1A($a0)
    /* 4F31C 8007EE6C 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 4F320 8007EE70 2738FFF6 */  addiu      $t8, $t9, -0xA
    /* 4F324 8007EE74 A5F8003A */  sh         $t8, 0x3A($t7)
    /* 4F328 8007EE78 8C4B0000 */  lw         $t3, 0x0($v0)
    /* 4F32C 8007EE7C 8488001C */  lh         $t0, 0x1C($a0)
    /* 4F330 8007EE80 A568003C */  sh         $t0, 0x3C($t3)
  .L8007EE84_4F334:
    /* 4F334 8007EE84 03E00008 */  jr         $ra
    /* 4F338 8007EE88 00000000 */   nop
endlabel func_8007EE0C_4F2BC
