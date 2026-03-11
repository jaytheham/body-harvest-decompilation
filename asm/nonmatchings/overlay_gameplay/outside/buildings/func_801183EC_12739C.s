nonmatching func_801183EC_12739C, 0x2C

glabel func_801183EC_12739C
    /* 12739C 801183EC 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1273A0 801183F0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1273A4 801183F4 AFA5001C */  sw         $a1, 0x1C($sp)
    /* 1273A8 801183F8 00057400 */  sll        $t6, $a1, 16
    /* 1273AC 801183FC 000E2C03 */  sra        $a1, $t6, 16
    /* 1273B0 80118400 0C046057 */  jal        func_8011815C_12710C
    /* 1273B4 80118404 00003025 */   or        $a2, $zero, $zero
    /* 1273B8 80118408 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1273BC 8011840C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1273C0 80118410 03E00008 */  jr         $ra
    /* 1273C4 80118414 00000000 */   nop
endlabel func_801183EC_12739C
