nonmatching func_802DACA0_2BD0D0, 0x60

glabel func_802DACA0_2BD0D0
    /* 2BD0D0 802DACA0 308E00FF */  andi       $t6, $a0, 0xFF
    /* 2BD0D4 802DACA4 000E7880 */  sll        $t7, $t6, 2
    /* 2BD0D8 802DACA8 01EE7821 */  addu       $t7, $t7, $t6
    /* 2BD0DC 802DACAC 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 2BD0E0 802DACB0 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 2BD0E4 802DACB4 000F7900 */  sll        $t7, $t7, 4
    /* 2BD0E8 802DACB8 3C028022 */  lui        $v0, %hi(D_80222A70)
    /* 2BD0EC 802DACBC 8C422A70 */  lw         $v0, %lo(D_80222A70)($v0)
    /* 2BD0F0 802DACC0 01F81821 */  addu       $v1, $t7, $t8
    /* 2BD0F4 802DACC4 84790002 */  lh         $t9, 0x2($v1)
    /* 2BD0F8 802DACC8 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 2BD0FC 802DACCC 2442FFD8 */  addiu      $v0, $v0, -0x28
    /* 2BD100 802DACD0 AFA40018 */  sw         $a0, 0x18($sp)
    /* 2BD104 802DACD4 0059082A */  slt        $at, $v0, $t9
    /* 2BD108 802DACD8 01C02025 */  or         $a0, $t6, $zero
    /* 2BD10C 802DACDC 10200002 */  beqz       $at, .L802DACE8_2BD118
    /* 2BD110 802DACE0 AFBF0014 */   sw        $ra, 0x14($sp)
    /* 2BD114 802DACE4 A4620002 */  sh         $v0, 0x2($v1)
  .L802DACE8_2BD118:
    /* 2BD118 802DACE8 0C021CEA */  jal        func_800873A8_96358
    /* 2BD11C 802DACEC 00000000 */   nop
    /* 2BD120 802DACF0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 2BD124 802DACF4 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 2BD128 802DACF8 03E00008 */  jr         $ra
    /* 2BD12C 802DACFC 00000000 */   nop
endlabel func_802DACA0_2BD0D0
