nonmatching func_800132CC_13ECC, 0x48

glabel func_800132CC_13ECC
    /* 13ECC 800132CC 3C0E8003 */  lui        $t6, %hi(D_80031B58)
    /* 13ED0 800132D0 91CE1B58 */  lbu        $t6, %lo(D_80031B58)($t6)
    /* 13ED4 800132D4 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 13ED8 800132D8 24010001 */  addiu      $at, $zero, 0x1
    /* 13EDC 800132DC 15C10006 */  bne        $t6, $at, .L800132F8_13EF8
    /* 13EE0 800132E0 AFBF0014 */   sw        $ra, 0x14($sp)
    /* 13EE4 800132E4 2404003E */  addiu      $a0, $zero, 0x3E
    /* 13EE8 800132E8 0C005725 */  jal        func_80015C94_16894
    /* 13EEC 800132EC 2405000B */   addiu     $a1, $zero, 0xB
    /* 13EF0 800132F0 10000005 */  b          .L80013308_13F08
    /* 13EF4 800132F4 8FBF0014 */   lw        $ra, 0x14($sp)
  .L800132F8_13EF8:
    /* 13EF8 800132F8 2404004E */  addiu      $a0, $zero, 0x4E
    /* 13EFC 800132FC 0C005725 */  jal        func_80015C94_16894
    /* 13F00 80013300 2405000B */   addiu     $a1, $zero, 0xB
    /* 13F04 80013304 8FBF0014 */  lw         $ra, 0x14($sp)
  .L80013308_13F08:
    /* 13F08 80013308 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 13F0C 8001330C 03E00008 */  jr         $ra
    /* 13F10 80013310 00000000 */   nop
endlabel func_800132CC_13ECC
