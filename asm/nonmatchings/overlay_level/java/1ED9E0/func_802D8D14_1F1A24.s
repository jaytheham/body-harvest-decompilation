nonmatching func_802D8D14_1F1A24, 0x54

glabel func_802D8D14_1F1A24
    /* 1F1A24 802D8D14 308E00FF */  andi       $t6, $a0, 0xFF
    /* 1F1A28 802D8D18 000E7880 */  sll        $t7, $t6, 2
    /* 1F1A2C 802D8D1C 01EE7821 */  addu       $t7, $t7, $t6
    /* 1F1A30 802D8D20 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 1F1A34 802D8D24 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 1F1A38 802D8D28 000F7900 */  sll        $t7, $t7, 4
    /* 1F1A3C 802D8D2C 01F81021 */  addu       $v0, $t7, $t8
    /* 1F1A40 802D8D30 8C590020 */  lw         $t9, 0x20($v0)
    /* 1F1A44 802D8D34 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1F1A48 802D8D38 3C01BFFF */  lui        $at, (0xBFFFEFFF >> 16)
    /* 1F1A4C 802D8D3C 3421EFFF */  ori        $at, $at, (0xBFFFEFFF & 0xFFFF)
    /* 1F1A50 802D8D40 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1F1A54 802D8D44 AFA40018 */  sw         $a0, 0x18($sp)
    /* 1F1A58 802D8D48 03214024 */  and        $t0, $t9, $at
    /* 1F1A5C 802D8D4C 01C02025 */  or         $a0, $t6, $zero
    /* 1F1A60 802D8D50 0C021CEA */  jal        func_800873A8_96358
    /* 1F1A64 802D8D54 AC480020 */   sw        $t0, 0x20($v0)
    /* 1F1A68 802D8D58 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1F1A6C 802D8D5C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1F1A70 802D8D60 03E00008 */  jr         $ra
    /* 1F1A74 802D8D64 00000000 */   nop
endlabel func_802D8D14_1F1A24
