nonmatching func_800E00F4_EF0A4, 0x40

glabel func_800E00F4_EF0A4
    /* EF0A4 800E00F4 30AF00FF */  andi       $t7, $a1, 0xFF
    /* EF0A8 800E00F8 000FC080 */  sll        $t8, $t7, 2
    /* EF0AC 800E00FC 030FC023 */  subu       $t8, $t8, $t7
    /* EF0B0 800E0100 3C198015 */  lui        $t9, %hi(D_801541F8)
    /* EF0B4 800E0104 273941F8 */  addiu      $t9, $t9, %lo(D_801541F8)
    /* EF0B8 800E0108 0018C080 */  sll        $t8, $t8, 2
    /* EF0BC 800E010C 03191021 */  addu       $v0, $t8, $t9
    /* EF0C0 800E0110 2403FFFA */  addiu      $v1, $zero, -0x6
    /* EF0C4 800E0114 AFA40000 */  sw         $a0, 0x0($sp)
    /* EF0C8 800E0118 AFA50004 */  sw         $a1, 0x4($sp)
    /* EF0CC 800E011C A0440000 */  sb         $a0, 0x0($v0)
    /* EF0D0 800E0120 A0400001 */  sb         $zero, 0x1($v0)
    /* EF0D4 800E0124 A0400004 */  sb         $zero, 0x4($v0)
    /* EF0D8 800E0128 A4430006 */  sh         $v1, 0x6($v0)
    /* EF0DC 800E012C 03E00008 */  jr         $ra
    /* EF0E0 800E0130 A4430008 */   sh        $v1, 0x8($v0)
endlabel func_800E00F4_EF0A4
