nonmatching func_800134CC_140CC, 0x48

glabel func_800134CC_140CC
    /* 140CC 800134CC 3C0E8003 */  lui        $t6, %hi(D_80031B58)
    /* 140D0 800134D0 91CE1B58 */  lbu        $t6, %lo(D_80031B58)($t6)
    /* 140D4 800134D4 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 140D8 800134D8 24010001 */  addiu      $at, $zero, 0x1
    /* 140DC 800134DC 15C10006 */  bne        $t6, $at, .L800134F8_140F8
    /* 140E0 800134E0 AFBF0014 */   sw        $ra, 0x14($sp)
    /* 140E4 800134E4 2404003F */  addiu      $a0, $zero, 0x3F
    /* 140E8 800134E8 0C005725 */  jal        func_80015C94_16894
    /* 140EC 800134EC 2405000C */   addiu     $a1, $zero, 0xC
    /* 140F0 800134F0 10000005 */  b          .L80013508_14108
    /* 140F4 800134F4 8FBF0014 */   lw        $ra, 0x14($sp)
  .L800134F8_140F8:
    /* 140F8 800134F8 2404004F */  addiu      $a0, $zero, 0x4F
    /* 140FC 800134FC 0C005725 */  jal        func_80015C94_16894
    /* 14100 80013500 2405000C */   addiu     $a1, $zero, 0xC
    /* 14104 80013504 8FBF0014 */  lw         $ra, 0x14($sp)
  .L80013508_14108:
    /* 14108 80013508 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1410C 8001350C 03E00008 */  jr         $ra
    /* 14110 80013510 00000000 */   nop
endlabel func_800134CC_140CC
