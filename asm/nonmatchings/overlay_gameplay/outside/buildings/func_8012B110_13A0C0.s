nonmatching func_8012B110_13A0C0, 0x40

glabel func_8012B110_13A0C0
    /* 13A0C0 8012B110 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 13A0C4 8012B114 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 13A0C8 8012B118 AFA60028 */  sw         $a2, 0x28($sp)
    /* 13A0CC 8012B11C 00C07025 */  or         $t6, $a2, $zero
    /* 13A0D0 8012B120 85CF0004 */  lh         $t7, 0x4($t6)
    /* 13A0D4 8012B124 85C70002 */  lh         $a3, 0x2($t6)
    /* 13A0D8 8012B128 84C60000 */  lh         $a2, 0x0($a2)
    /* 13A0DC 8012B12C 0C04A4D5 */  jal        func_80129354_138304
    /* 13A0E0 8012B130 AFAF0010 */   sw        $t7, 0x10($sp)
    /* 13A0E4 8012B134 10400002 */  beqz       $v0, .L8012B140_13A0F0
    /* 13A0E8 8012B138 8FB80028 */   lw        $t8, 0x28($sp)
    /* 13A0EC 8012B13C AC580018 */  sw         $t8, 0x18($v0)
  .L8012B140_13A0F0:
    /* 13A0F0 8012B140 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 13A0F4 8012B144 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 13A0F8 8012B148 03E00008 */  jr         $ra
    /* 13A0FC 8012B14C 00000000 */   nop
endlabel func_8012B110_13A0C0
