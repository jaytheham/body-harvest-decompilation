nonmatching func_8000CC3C_D83C, 0x118

glabel func_8000CC3C_D83C
    /* D83C 8000CC3C 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* D840 8000CC40 AFB30028 */  sw         $s3, 0x28($sp)
    /* D844 8000CC44 AFB20024 */  sw         $s2, 0x24($sp)
    /* D848 8000CC48 AFB0001C */  sw         $s0, 0x1C($sp)
    /* D84C 8000CC4C 24010001 */  addiu      $at, $zero, 0x1
    /* D850 8000CC50 00A09025 */  or         $s2, $a1, $zero
    /* D854 8000CC54 00809825 */  or         $s3, $a0, $zero
    /* D858 8000CC58 AFBF0034 */  sw         $ra, 0x34($sp)
    /* D85C 8000CC5C AFB50030 */  sw         $s5, 0x30($sp)
    /* D860 8000CC60 AFB4002C */  sw         $s4, 0x2C($sp)
    /* D864 8000CC64 AFB10020 */  sw         $s1, 0x20($sp)
    /* D868 8000CC68 F7B40010 */  sdc1       $f20, 0x10($sp)
    /* D86C 8000CC6C 10A1002F */  beq        $a1, $at, .L8000CD2C_D92C
    /* D870 8000CC70 24100001 */   addiu     $s0, $zero, 0x1
    /* D874 8000CC74 3C014780 */  lui        $at, (0x47800000 >> 16)
    /* D878 8000CC78 3C118006 */  lui        $s1, %hi(D_8005BB38)
    /* D87C 8000CC7C 4481A000 */  mtc1       $at, $f20
    /* D880 8000CC80 2631BB38 */  addiu      $s1, $s1, %lo(D_8005BB38)
    /* D884 8000CC84 27B50048 */  addiu      $s5, $sp, 0x48
    /* D888 8000CC88 27B4003C */  addiu      $s4, $sp, 0x3C
  .L8000CC8C_D88C:
    /* D88C 8000CC8C 00107180 */  sll        $t6, $s0, 6
    /* D890 8000CC90 01D31021 */  addu       $v0, $t6, $s3
    /* D894 8000CC94 C4440008 */  lwc1       $f4, 0x8($v0)
    /* D898 8000CC98 8E270000 */  lw         $a3, 0x0($s1)
    /* D89C 8000CC9C 02802025 */  or         $a0, $s4, $zero
    /* D8A0 8000CCA0 46142182 */  mul.s      $f6, $f4, $f20
    /* D8A4 8000CCA4 24F90040 */  addiu      $t9, $a3, 0x40
    /* D8A8 8000CCA8 02A02825 */  or         $a1, $s5, $zero
    /* D8AC 8000CCAC 00003025 */  or         $a2, $zero, $zero
    /* D8B0 8000CCB0 4600320D */  trunc.w.s  $f8, $f6
    /* D8B4 8000CCB4 44184000 */  mfc1       $t8, $f8
    /* D8B8 8000CCB8 00000000 */  nop
    /* D8BC 8000CCBC AFB8003C */  sw         $t8, 0x3C($sp)
    /* D8C0 8000CCC0 C44A000C */  lwc1       $f10, 0xC($v0)
    /* D8C4 8000CCC4 46145402 */  mul.s      $f16, $f10, $f20
    /* D8C8 8000CCC8 4600848D */  trunc.w.s  $f18, $f16
    /* D8CC 8000CCCC 44089000 */  mfc1       $t0, $f18
    /* D8D0 8000CCD0 00000000 */  nop
    /* D8D4 8000CCD4 AFA80040 */  sw         $t0, 0x40($sp)
    /* D8D8 8000CCD8 C4440010 */  lwc1       $f4, 0x10($v0)
    /* D8DC 8000CCDC 46142182 */  mul.s      $f6, $f4, $f20
    /* D8E0 8000CCE0 4600320D */  trunc.w.s  $f8, $f6
    /* D8E4 8000CCE4 440A4000 */  mfc1       $t2, $f8
    /* D8E8 8000CCE8 00000000 */  nop
    /* D8EC 8000CCEC AFAA0044 */  sw         $t2, 0x44($sp)
    /* D8F0 8000CCF0 844B0002 */  lh         $t3, 0x2($v0)
    /* D8F4 8000CCF4 000B60C0 */  sll        $t4, $t3, 3
    /* D8F8 8000CCF8 A7AC0048 */  sh         $t4, 0x48($sp)
    /* D8FC 8000CCFC 844D0004 */  lh         $t5, 0x4($v0)
    /* D900 8000CD00 000D70C0 */  sll        $t6, $t5, 3
    /* D904 8000CD04 A7AE004A */  sh         $t6, 0x4A($sp)
    /* D908 8000CD08 844F0000 */  lh         $t7, 0x0($v0)
    /* D90C 8000CD0C AE390000 */  sw         $t9, 0x0($s1)
    /* D910 8000CD10 000FC0C0 */  sll        $t8, $t7, 3
    /* D914 8000CD14 0C003207 */  jal        func_8000C81C_D41C
    /* D918 8000CD18 A7B8004C */   sh        $t8, 0x4C($sp)
    /* D91C 8000CD1C 26100001 */  addiu      $s0, $s0, 0x1
    /* D920 8000CD20 320800FF */  andi       $t0, $s0, 0xFF
    /* D924 8000CD24 1648FFD9 */  bne        $s2, $t0, .L8000CC8C_D88C
    /* D928 8000CD28 01008025 */   or        $s0, $t0, $zero
  .L8000CD2C_D92C:
    /* D92C 8000CD2C 8FBF0034 */  lw         $ra, 0x34($sp)
    /* D930 8000CD30 D7B40010 */  ldc1       $f20, 0x10($sp)
    /* D934 8000CD34 8FB0001C */  lw         $s0, 0x1C($sp)
    /* D938 8000CD38 8FB10020 */  lw         $s1, 0x20($sp)
    /* D93C 8000CD3C 8FB20024 */  lw         $s2, 0x24($sp)
    /* D940 8000CD40 8FB30028 */  lw         $s3, 0x28($sp)
    /* D944 8000CD44 8FB4002C */  lw         $s4, 0x2C($sp)
    /* D948 8000CD48 8FB50030 */  lw         $s5, 0x30($sp)
    /* D94C 8000CD4C 03E00008 */  jr         $ra
    /* D950 8000CD50 27BD0050 */   addiu     $sp, $sp, 0x50
endlabel func_8000CC3C_D83C
