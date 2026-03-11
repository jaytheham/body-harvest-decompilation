nonmatching func_80006DAC_79AC, 0x30

glabel func_80006DAC_79AC
    /* 79AC 80006DAC 3C028005 */  lui        $v0, %hi(D_80052AD0)
    /* 79B0 80006DB0 24422AD0 */  addiu      $v0, $v0, %lo(D_80052AD0)
    /* 79B4 80006DB4 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 79B8 80006DB8 3C018005 */  lui        $at, %hi(D_80052AD4)
    /* 79BC 80006DBC 11C00005 */  beqz       $t6, .L80006DD4_79D4
    /* 79C0 80006DC0 00000000 */   nop
    /* 79C4 80006DC4 AC242AD4 */  sw         $a0, %lo(D_80052AD4)($at)
    /* 79C8 80006DC8 AC400000 */  sw         $zero, 0x0($v0)
    /* 79CC 80006DCC 3C018005 */  lui        $at, %hi(D_80052AC8)
    /* 79D0 80006DD0 A4252AC8 */  sh         $a1, %lo(D_80052AC8)($at)
  .L80006DD4_79D4:
    /* 79D4 80006DD4 03E00008 */  jr         $ra
    /* 79D8 80006DD8 00000000 */   nop
endlabel func_80006DAC_79AC
