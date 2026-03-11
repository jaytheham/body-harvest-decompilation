nonmatching func_80000AD4_16D4, 0x40

glabel func_80000AD4_16D4
    /* 16D4 80000AD4 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 16D8 80000AD8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 16DC 80000ADC 0C006F38 */  jal        func_8001BCE0_1C8E0
    /* 16E0 80000AE0 AFA40018 */   sw        $a0, 0x18($sp)
    /* 16E4 80000AE4 00027082 */  srl        $t6, $v0, 2
    /* 16E8 80000AE8 15C00006 */  bnez       $t6, .L80000B04_1704
    /* 16EC 80000AEC 3C0F8003 */   lui       $t7, %hi(D_80031304)
    /* 16F0 80000AF0 8DEF1304 */  lw         $t7, %lo(D_80031304)($t7)
    /* 16F4 80000AF4 3C018003 */  lui        $at, %hi(D_80031304)
    /* 16F8 80000AF8 55E00003 */  bnel       $t7, $zero, .L80000B08_1708
    /* 16FC 80000AFC 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1700 80000B00 AC201304 */  sw         $zero, %lo(D_80031304)($at)
  .L80000B04_1704:
    /* 1704 80000B04 8FBF0014 */  lw         $ra, 0x14($sp)
  .L80000B08_1708:
    /* 1708 80000B08 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 170C 80000B0C 03E00008 */  jr         $ra
    /* 1710 80000B10 00000000 */   nop
endlabel func_80000AD4_16D4
