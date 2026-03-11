nonmatching func_8011B3F0_12A3A0, 0x64

glabel func_8011B3F0_12A3A0
    /* 12A3A0 8011B3F0 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 12A3A4 8011B3F4 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 12A3A8 8011B3F8 AFA40028 */  sw         $a0, 0x28($sp)
    /* 12A3AC 8011B3FC AFA5002C */  sw         $a1, 0x2C($sp)
    /* 12A3B0 8011B400 AFA60030 */  sw         $a2, 0x30($sp)
    /* 12A3B4 8011B404 AFA70034 */  sw         $a3, 0x34($sp)
    /* 12A3B8 8011B408 87A4002A */  lh         $a0, 0x2A($sp)
    /* 12A3BC 8011B40C 0C046045 */  jal        func_80118114_1270C4
    /* 12A3C0 8011B410 AFA00020 */   sw        $zero, 0x20($sp)
    /* 12A3C4 8011B414 10400002 */  beqz       $v0, .L8011B420_12A3D0
    /* 12A3C8 8011B418 8FA30020 */   lw        $v1, 0x20($sp)
    /* 12A3CC 8011B41C 24030001 */  addiu      $v1, $zero, 0x1
  .L8011B420_12A3D0:
    /* 12A3D0 8011B420 8FAE0034 */  lw         $t6, 0x34($sp)
    /* 12A3D4 8011B424 27AF0026 */  addiu      $t7, $sp, 0x26
    /* 12A3D8 8011B428 AFAF0014 */  sw         $t7, 0x14($sp)
    /* 12A3DC 8011B42C 93A4002B */  lbu        $a0, 0x2B($sp)
    /* 12A3E0 8011B430 306500FF */  andi       $a1, $v1, 0xFF
    /* 12A3E4 8011B434 8FA6002C */  lw         $a2, 0x2C($sp)
    /* 12A3E8 8011B438 8FA70030 */  lw         $a3, 0x30($sp)
    /* 12A3EC 8011B43C 0C04597F */  jal        func_801165FC_1255AC
    /* 12A3F0 8011B440 AFAE0010 */   sw        $t6, 0x10($sp)
    /* 12A3F4 8011B444 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 12A3F8 8011B448 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 12A3FC 8011B44C 03E00008 */  jr         $ra
    /* 12A400 8011B450 00000000 */   nop
endlabel func_8011B3F0_12A3A0
