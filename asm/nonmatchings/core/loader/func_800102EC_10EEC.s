nonmatching func_800102EC_10EEC, 0x40

glabel func_800102EC_10EEC
    /* 10EEC 800102EC 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 10EF0 800102F0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 10EF4 800102F4 AFA40018 */  sw         $a0, 0x18($sp)
    /* 10EF8 800102F8 0C0040A4 */  jal        func_80010290_10E90
    /* 10EFC 800102FC AFA5001C */   sw        $a1, 0x1C($sp)
    /* 10F00 80010300 14400005 */  bnez       $v0, .L80010318_10F18
    /* 10F04 80010304 00401825 */   or        $v1, $v0, $zero
    /* 10F08 80010308 8FAE001C */  lw         $t6, 0x1C($sp)
    /* 10F0C 8001030C 8FAF0018 */  lw         $t7, 0x18($sp)
    /* 10F10 80010310 10000002 */  b          .L8001031C_10F1C
    /* 10F14 80010314 01CF1021 */   addu      $v0, $t6, $t7
  .L80010318_10F18:
    /* 10F18 80010318 00601025 */  or         $v0, $v1, $zero
  .L8001031C_10F1C:
    /* 10F1C 8001031C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 10F20 80010320 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 10F24 80010324 03E00008 */  jr         $ra
    /* 10F28 80010328 00000000 */   nop
endlabel func_800102EC_10EEC
