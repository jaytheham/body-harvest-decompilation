nonmatching func_8011EABC_12DA6C, 0x3C

glabel func_8011EABC_12DA6C
    /* 12DA6C 8011EABC 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 12DA70 8011EAC0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 12DA74 8011EAC4 AFA5001C */  sw         $a1, 0x1C($sp)
    /* 12DA78 8011EAC8 908E001A */  lbu        $t6, 0x1A($a0)
    /* 12DA7C 8011EACC 240F0002 */  addiu      $t7, $zero, 0x2
    /* 12DA80 8011EAD0 3C018016 */  lui        $at, %hi(D_8015EA4A)
    /* 12DA84 8011EAD4 11C00004 */  beqz       $t6, .L8011EAE8_12DA98
    /* 12DA88 8011EAD8 24040000 */   addiu     $a0, $zero, 0x0
    /* 12DA8C 8011EADC A42FEA4A */  sh         $t7, %lo(D_8015EA4A)($at)
    /* 12DA90 8011EAE0 0C001CB3 */  jal        func_800072CC_7ECC
    /* 12DA94 8011EAE4 24050013 */   addiu     $a1, $zero, 0x13
  .L8011EAE8_12DA98:
    /* 12DA98 8011EAE8 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 12DA9C 8011EAEC 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 12DAA0 8011EAF0 03E00008 */  jr         $ra
    /* 12DAA4 8011EAF4 00000000 */   nop
endlabel func_8011EABC_12DA6C
