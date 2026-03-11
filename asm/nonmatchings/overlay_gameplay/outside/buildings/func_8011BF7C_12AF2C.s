nonmatching func_8011BF7C_12AF2C, 0x104

glabel func_8011BF7C_12AF2C
    /* 12AF2C 8011BF7C 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 12AF30 8011BF80 AFA40038 */  sw         $a0, 0x38($sp)
    /* 12AF34 8011BF84 93AE003B */  lbu        $t6, 0x3B($sp)
    /* 12AF38 8011BF88 3C188005 */  lui        $t8, %hi(buildingInstances)
    /* 12AF3C 8011BF8C 27180AD8 */  addiu      $t8, $t8, %lo(buildingInstances)
    /* 12AF40 8011BF90 000E7880 */  sll        $t7, $t6, 2
    /* 12AF44 8011BF94 01EE7823 */  subu       $t7, $t7, $t6
    /* 12AF48 8011BF98 000F78C0 */  sll        $t7, $t7, 3
    /* 12AF4C 8011BF9C 01F81021 */  addu       $v0, $t7, $t8
    /* 12AF50 8011BFA0 90590006 */  lbu        $t9, 0x6($v0)
    /* 12AF54 8011BFA4 804A000F */  lb         $t2, 0xF($v0)
    /* 12AF58 8011BFA8 3C098026 */  lui        $t1, %hi(buildingSpecs)
    /* 12AF5C 8011BFAC 25299090 */  addiu      $t1, $t1, %lo(buildingSpecs)
    /* 12AF60 8011BFB0 00194140 */  sll        $t0, $t9, 5
    /* 12AF64 8011BFB4 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 12AF68 8011BFB8 1940002D */  blez       $t2, .L8011C070_12B020
    /* 12AF6C 8011BFBC 01091821 */   addu      $v1, $t0, $t1
    /* 12AF70 8011BFC0 8C440008 */  lw         $a0, 0x8($v0)
    /* 12AF74 8011BFC4 00045B02 */  srl        $t3, $a0, 12
    /* 12AF78 8011BFC8 316C0001 */  andi       $t4, $t3, 0x1
    /* 12AF7C 8011BFCC 11800028 */  beqz       $t4, .L8011C070_12B020
    /* 12AF80 8011BFD0 316D0010 */   andi      $t5, $t3, 0x10
    /* 12AF84 8011BFD4 55A00027 */  bnel       $t5, $zero, .L8011C074_12B024
    /* 12AF88 8011BFD8 8FBF0024 */   lw        $ra, 0x24($sp)
    /* 12AF8C 8011BFDC 846E0014 */  lh         $t6, 0x14($v1)
    /* 12AF90 8011BFE0 3C018014 */  lui        $at, %hi(D_80144FA0)
    /* 12AF94 8011BFE4 D4284FA0 */  ldc1       $f8, %lo(D_80144FA0)($at)
    /* 12AF98 8011BFE8 448E2000 */  mtc1       $t6, $f4
    /* 12AF9C 8011BFEC 844F0002 */  lh         $t7, 0x2($v0)
    /* 12AFA0 8011BFF0 84440000 */  lh         $a0, 0x0($v0)
    /* 12AFA4 8011BFF4 468021A1 */  cvt.d.w    $f6, $f4
    /* 12AFA8 8011BFF8 448F8000 */  mtc1       $t7, $f16
    /* 12AFAC 8011BFFC 84460004 */  lh         $a2, 0x4($v0)
    /* 12AFB0 8011C000 93AB003B */  lbu        $t3, 0x3B($sp)
    /* 12AFB4 8011C004 468084A1 */  cvt.d.w    $f18, $f16
    /* 12AFB8 8011C008 46283282 */  mul.d      $f10, $f6, $f8
    /* 12AFBC 8011C00C 24090055 */  addiu      $t1, $zero, 0x55
    /* 12AFC0 8011C010 240A0055 */  addiu      $t2, $zero, 0x55
    /* 12AFC4 8011C014 AFAA0014 */  sw         $t2, 0x14($sp)
    /* 12AFC8 8011C018 AFA90010 */  sw         $t1, 0x10($sp)
    /* 12AFCC 8011C01C AFA2002C */  sw         $v0, 0x2C($sp)
    /* 12AFD0 8011C020 AFA0001C */  sw         $zero, 0x1C($sp)
    /* 12AFD4 8011C024 240700C8 */  addiu      $a3, $zero, 0xC8
    /* 12AFD8 8011C028 462A9100 */  add.d      $f4, $f18, $f10
    /* 12AFDC 8011C02C AFAB0018 */  sw         $t3, 0x18($sp)
    /* 12AFE0 8011C030 4620218D */  trunc.w.d  $f6, $f4
    /* 12AFE4 8011C034 44053000 */  mfc1       $a1, $f6
    /* 12AFE8 8011C038 00000000 */  nop
    /* 12AFEC 8011C03C 0005CC00 */  sll        $t9, $a1, 16
    /* 12AFF0 8011C040 0C034927 */  jal        func_800D249C_E144C
    /* 12AFF4 8011C044 00192C03 */   sra       $a1, $t9, 16
    /* 12AFF8 8011C048 8FA2002C */  lw         $v0, 0x2C($sp)
    /* 12AFFC 8011C04C 240C0001 */  addiu      $t4, $zero, 0x1
    /* 12B000 8011C050 8C430008 */  lw         $v1, 0x8($v0)
    /* 12B004 8011C054 A04C000F */  sb         $t4, 0xF($v0)
    /* 12B008 8011C058 00032302 */  srl        $a0, $v1, 12
    /* 12B00C 8011C05C 348D0010 */  ori        $t5, $a0, 0x10
    /* 12B010 8011C060 01A47026 */  xor        $t6, $t5, $a0
    /* 12B014 8011C064 000E7B00 */  sll        $t7, $t6, 12
    /* 12B018 8011C068 01E3C026 */  xor        $t8, $t7, $v1
    /* 12B01C 8011C06C AC580008 */  sw         $t8, 0x8($v0)
  .L8011C070_12B020:
    /* 12B020 8011C070 8FBF0024 */  lw         $ra, 0x24($sp)
  .L8011C074_12B024:
    /* 12B024 8011C074 27BD0038 */  addiu      $sp, $sp, 0x38
    /* 12B028 8011C078 03E00008 */  jr         $ra
    /* 12B02C 8011C07C 00000000 */   nop
endlabel func_8011BF7C_12AF2C
