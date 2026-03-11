nonmatching func_8011C8E8_12B898, 0xF0

glabel func_8011C8E8_12B898
    /* 12B898 8011C8E8 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 12B89C 8011C8EC 3C038015 */  lui        $v1, %hi(D_8014D507)
    /* 12B8A0 8011C8F0 9063D507 */  lbu        $v1, %lo(D_8014D507)($v1)
    /* 12B8A4 8011C8F4 AFBE0038 */  sw         $fp, 0x38($sp)
    /* 12B8A8 8011C8F8 AFB70034 */  sw         $s7, 0x34($sp)
    /* 12B8AC 8011C8FC AFB20020 */  sw         $s2, 0x20($sp)
    /* 12B8B0 8011C900 0080B825 */  or         $s7, $a0, $zero
    /* 12B8B4 8011C904 00A0F025 */  or         $fp, $a1, $zero
    /* 12B8B8 8011C908 AFBF003C */  sw         $ra, 0x3C($sp)
    /* 12B8BC 8011C90C AFB60030 */  sw         $s6, 0x30($sp)
    /* 12B8C0 8011C910 AFB5002C */  sw         $s5, 0x2C($sp)
    /* 12B8C4 8011C914 AFB40028 */  sw         $s4, 0x28($sp)
    /* 12B8C8 8011C918 AFB30024 */  sw         $s3, 0x24($sp)
    /* 12B8CC 8011C91C AFB1001C */  sw         $s1, 0x1C($sp)
    /* 12B8D0 8011C920 AFB00018 */  sw         $s0, 0x18($sp)
    /* 12B8D4 8011C924 18600020 */  blez       $v1, .L8011C9A8_12B958
    /* 12B8D8 8011C928 00009025 */   or        $s2, $zero, $zero
    /* 12B8DC 8011C92C 3C118015 */  lui        $s1, %hi(D_8014D408)
    /* 12B8E0 8011C930 3C138005 */  lui        $s3, %hi(alienInstances)
    /* 12B8E4 8011C934 26738198 */  addiu      $s3, $s3, %lo(alienInstances)
    /* 12B8E8 8011C938 2631D408 */  addiu      $s1, $s1, %lo(D_8014D408)
    /* 12B8EC 8011C93C 241600A0 */  addiu      $s6, $zero, 0xA0
    /* 12B8F0 8011C940 2415FE1F */  addiu      $s5, $zero, -0x1E1
    /* 12B8F4 8011C944 24140050 */  addiu      $s4, $zero, 0x50
  .L8011C948_12B8F8:
    /* 12B8F8 8011C948 92220000 */  lbu        $v0, 0x0($s1)
    /* 12B8FC 8011C94C 00540019 */  multu      $v0, $s4
    /* 12B900 8011C950 00007012 */  mflo       $t6
    /* 12B904 8011C954 026E8021 */  addu       $s0, $s3, $t6
    /* 12B908 8011C958 820F003D */  lb         $t7, 0x3D($s0)
    /* 12B90C 8011C95C 26050014 */  addiu      $a1, $s0, 0x14
    /* 12B910 8011C960 26060016 */  addiu      $a2, $s0, 0x16
    /* 12B914 8011C964 16EF000C */  bne        $s7, $t7, .L8011C998_12B948
    /* 12B918 8011C968 26070018 */   addiu     $a3, $s0, 0x18
    /* 12B91C 8011C96C A61E0038 */  sh         $fp, 0x38($s0)
    /* 12B920 8011C970 0C046CFC */  jal        func_8011B3F0_12A3A0
    /* 12B924 8011C974 86040038 */   lh        $a0, 0x38($s0)
    /* 12B928 8011C978 8E180020 */  lw         $t8, 0x20($s0)
    /* 12B92C 8011C97C A6160012 */  sh         $s6, 0x12($s0)
    /* 12B930 8011C980 3C038015 */  lui        $v1, %hi(D_8014D507)
    /* 12B934 8011C984 0315C824 */  and        $t9, $t8, $s5
    /* 12B938 8011C988 AE190020 */  sw         $t9, 0x20($s0)
    /* 12B93C 8011C98C 37291100 */  ori        $t1, $t9, 0x1100
    /* 12B940 8011C990 AE090020 */  sw         $t1, 0x20($s0)
    /* 12B944 8011C994 9063D507 */  lbu        $v1, %lo(D_8014D507)($v1)
  .L8011C998_12B948:
    /* 12B948 8011C998 26520001 */  addiu      $s2, $s2, 0x1
    /* 12B94C 8011C99C 0243082A */  slt        $at, $s2, $v1
    /* 12B950 8011C9A0 1420FFE9 */  bnez       $at, .L8011C948_12B8F8
    /* 12B954 8011C9A4 26310001 */   addiu     $s1, $s1, 0x1
  .L8011C9A8_12B958:
    /* 12B958 8011C9A8 8FBF003C */  lw         $ra, 0x3C($sp)
    /* 12B95C 8011C9AC 8FB00018 */  lw         $s0, 0x18($sp)
    /* 12B960 8011C9B0 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 12B964 8011C9B4 8FB20020 */  lw         $s2, 0x20($sp)
    /* 12B968 8011C9B8 8FB30024 */  lw         $s3, 0x24($sp)
    /* 12B96C 8011C9BC 8FB40028 */  lw         $s4, 0x28($sp)
    /* 12B970 8011C9C0 8FB5002C */  lw         $s5, 0x2C($sp)
    /* 12B974 8011C9C4 8FB60030 */  lw         $s6, 0x30($sp)
    /* 12B978 8011C9C8 8FB70034 */  lw         $s7, 0x34($sp)
    /* 12B97C 8011C9CC 8FBE0038 */  lw         $fp, 0x38($sp)
    /* 12B980 8011C9D0 03E00008 */  jr         $ra
    /* 12B984 8011C9D4 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_8011C8E8_12B898
