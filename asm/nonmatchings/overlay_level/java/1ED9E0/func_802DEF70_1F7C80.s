nonmatching func_802DEF70_1F7C80, 0x50

glabel func_802DEF70_1F7C80
    /* 1F7C80 802DEF70 308E00FF */  andi       $t6, $a0, 0xFF
    /* 1F7C84 802DEF74 000EC080 */  sll        $t8, $t6, 2
    /* 1F7C88 802DEF78 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1F7C8C 802DEF7C 030EC021 */  addu       $t8, $t8, $t6
    /* 1F7C90 802DEF80 0018C100 */  sll        $t8, $t8, 4
    /* 1F7C94 802DEF84 3C018005 */  lui        $at, %hi(D_800481D2)
    /* 1F7C98 802DEF88 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1F7C9C 802DEF8C AFA40018 */  sw         $a0, 0x18($sp)
    /* 1F7CA0 802DEF90 00380821 */  addu       $at, $at, $t8
    /* 1F7CA4 802DEF94 240F07D0 */  addiu      $t7, $zero, 0x7D0
    /* 1F7CA8 802DEF98 01C02025 */  or         $a0, $t6, $zero
    /* 1F7CAC 802DEF9C A42F81D2 */  sh         $t7, %lo(D_800481D2)($at)
    /* 1F7CB0 802DEFA0 00002825 */  or         $a1, $zero, $zero
    /* 1F7CB4 802DEFA4 2406FFBB */  addiu      $a2, $zero, -0x45
    /* 1F7CB8 802DEFA8 0C02A4E9 */  jal        func_800A93A4_B8354
    /* 1F7CBC 802DEFAC 240702B3 */   addiu     $a3, $zero, 0x2B3
    /* 1F7CC0 802DEFB0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1F7CC4 802DEFB4 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1F7CC8 802DEFB8 03E00008 */  jr         $ra
    /* 1F7CCC 802DEFBC 00000000 */   nop
endlabel func_802DEF70_1F7C80
