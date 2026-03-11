nonmatching func_80118418_1273C8, 0x3C

glabel func_80118418_1273C8
    /* 1273C8 80118418 3C188004 */  lui        $t8, %hi(currentControllerStates)
    /* 1273CC 8011841C 97187588 */  lhu        $t8, %lo(currentControllerStates)($t8)
    /* 1273D0 80118420 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1273D4 80118424 AFA5001C */  sw         $a1, 0x1C($sp)
    /* 1273D8 80118428 00057400 */  sll        $t6, $a1, 16
    /* 1273DC 8011842C 33198000 */  andi       $t9, $t8, 0x8000
    /* 1273E0 80118430 000E2C03 */  sra        $a1, $t6, 16
    /* 1273E4 80118434 13200003 */  beqz       $t9, .L80118444_1273F4
    /* 1273E8 80118438 AFBF0014 */   sw        $ra, 0x14($sp)
    /* 1273EC 8011843C 0C046057 */  jal        func_8011815C_12710C
    /* 1273F0 80118440 24060001 */   addiu     $a2, $zero, 0x1
  .L80118444_1273F4:
    /* 1273F4 80118444 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1273F8 80118448 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1273FC 8011844C 03E00008 */  jr         $ra
    /* 127400 80118450 00000000 */   nop
endlabel func_80118418_1273C8
