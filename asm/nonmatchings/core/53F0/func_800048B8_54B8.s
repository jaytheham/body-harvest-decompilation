nonmatching func_800048B8_54B8, 0x30

glabel func_800048B8_54B8
    /* 54B8 800048B8 3C038004 */  lui        $v1, %hi(D_80047970)
    /* 54BC 800048BC 3C028004 */  lui        $v0, %hi(D_80047B70)
    /* 54C0 800048C0 24427B70 */  addiu      $v0, $v0, %lo(D_80047B70)
    /* 54C4 800048C4 24637970 */  addiu      $v1, $v1, %lo(D_80047970)
  .L800048C8_54C8:
    /* 54C8 800048C8 24630008 */  addiu      $v1, $v1, 0x8
    /* 54CC 800048CC A460FFFA */  sh         $zero, -0x6($v1)
    /* 54D0 800048D0 A460FFFC */  sh         $zero, -0x4($v1)
    /* 54D4 800048D4 A460FFFE */  sh         $zero, -0x2($v1)
    /* 54D8 800048D8 1462FFFB */  bne        $v1, $v0, .L800048C8_54C8
    /* 54DC 800048DC A460FFF8 */   sh        $zero, -0x8($v1)
    /* 54E0 800048E0 03E00008 */  jr         $ra
    /* 54E4 800048E4 00000000 */   nop
endlabel func_800048B8_54B8
