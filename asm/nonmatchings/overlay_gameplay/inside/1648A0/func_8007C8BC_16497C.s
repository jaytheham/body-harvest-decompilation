nonmatching func_8007C8BC_16497C, 0x40

glabel func_8007C8BC_16497C
    /* 16497C 8007C8BC 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 164980 8007C8C0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 164984 8007C8C4 3C04800E */  lui        $a0, %hi(D_800E7304)
    /* 164988 8007C8C8 0C0031D9 */  jal        func_8000C764_D364
    /* 16498C 8007C8CC 8C847304 */   lw        $a0, %lo(D_800E7304)($a0)
    /* 164990 8007C8D0 3C02800E */  lui        $v0, %hi(D_800E6F00)
    /* 164994 8007C8D4 24426F00 */  addiu      $v0, $v0, %lo(D_800E6F00)
    /* 164998 8007C8D8 0C0031D9 */  jal        func_8000C764_D364
    /* 16499C 8007C8DC 8C440408 */   lw        $a0, 0x408($v0)
    /* 1649A0 8007C8E0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1649A4 8007C8E4 3C02800E */  lui        $v0, %hi(D_800E6F00)
    /* 1649A8 8007C8E8 24426F00 */  addiu      $v0, $v0, %lo(D_800E6F00)
    /* 1649AC 8007C8EC AC400408 */  sw         $zero, 0x408($v0)
    /* 1649B0 8007C8F0 AC400404 */  sw         $zero, 0x404($v0)
    /* 1649B4 8007C8F4 03E00008 */  jr         $ra
    /* 1649B8 8007C8F8 27BD0018 */   addiu     $sp, $sp, 0x18
endlabel func_8007C8BC_16497C
