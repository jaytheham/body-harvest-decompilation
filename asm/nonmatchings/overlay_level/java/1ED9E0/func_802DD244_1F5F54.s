nonmatching func_802DD244_1F5F54, 0x50

glabel func_802DD244_1F5F54
    /* 1F5F54 802DD244 308E00FF */  andi       $t6, $a0, 0xFF
    /* 1F5F58 802DD248 000E7880 */  sll        $t7, $t6, 2
    /* 1F5F5C 802DD24C 01EE7821 */  addu       $t7, $t7, $t6
    /* 1F5F60 802DD250 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 1F5F64 802DD254 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 1F5F68 802DD258 000F7900 */  sll        $t7, $t7, 4
    /* 1F5F6C 802DD25C 01F81021 */  addu       $v0, $t7, $t8
    /* 1F5F70 802DD260 8C590020 */  lw         $t9, 0x20($v0)
    /* 1F5F74 802DD264 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1F5F78 802DD268 3C010800 */  lui        $at, (0x8000000 >> 16)
    /* 1F5F7C 802DD26C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1F5F80 802DD270 AFA40018 */  sw         $a0, 0x18($sp)
    /* 1F5F84 802DD274 03214025 */  or         $t0, $t9, $at
    /* 1F5F88 802DD278 01C02025 */  or         $a0, $t6, $zero
    /* 1F5F8C 802DD27C 0C021CEA */  jal        func_800873A8_96358
    /* 1F5F90 802DD280 AC480020 */   sw        $t0, 0x20($v0)
    /* 1F5F94 802DD284 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1F5F98 802DD288 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1F5F9C 802DD28C 03E00008 */  jr         $ra
    /* 1F5FA0 802DD290 00000000 */   nop
endlabel func_802DD244_1F5F54
