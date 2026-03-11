nonmatching func_800078CC_84CC, 0x18

glabel func_800078CC_84CC
    /* 84CC 800078CC 8CAE0000 */  lw         $t6, 0x0($a1)
    /* 84D0 800078D0 240F0001 */  addiu      $t7, $zero, 0x1
    /* 84D4 800078D4 008FC004 */  sllv       $t8, $t7, $a0
    /* 84D8 800078D8 01D8C825 */  or         $t9, $t6, $t8
    /* 84DC 800078DC 03E00008 */  jr         $ra
    /* 84E0 800078E0 ACB90000 */   sw        $t9, 0x0($a1)
endlabel func_800078CC_84CC
