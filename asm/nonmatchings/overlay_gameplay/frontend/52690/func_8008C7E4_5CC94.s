nonmatching func_8008C7E4_5CC94, 0xFC

glabel func_8008C7E4_5CC94
    /* 5CC94 8008C7E4 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 5CC98 8008C7E8 AFB00014 */  sw         $s0, 0x14($sp)
    /* 5CC9C 8008C7EC 3C10800E */  lui        $s0, %hi(D_800DE80E)
    /* 5CCA0 8008C7F0 8610E80E */  lh         $s0, %lo(D_800DE80E)($s0)
    /* 5CCA4 8008C7F4 AFB2001C */  sw         $s2, 0x1C($sp)
    /* 5CCA8 8008C7F8 2412FFFB */  addiu      $s2, $zero, -0x5
    /* 5CCAC 8008C7FC AFBF002C */  sw         $ra, 0x2C($sp)
    /* 5CCB0 8008C800 AFB50028 */  sw         $s5, 0x28($sp)
    /* 5CCB4 8008C804 AFB40024 */  sw         $s4, 0x24($sp)
    /* 5CCB8 8008C808 AFB30020 */  sw         $s3, 0x20($sp)
    /* 5CCBC 8008C80C 1212002B */  beq        $s0, $s2, .L8008C8BC_5CD6C
    /* 5CCC0 8008C810 AFB10018 */   sw        $s1, 0x18($sp)
    /* 5CCC4 8008C814 2413FFFA */  addiu      $s3, $zero, -0x6
    /* 5CCC8 8008C818 12130028 */  beq        $s0, $s3, .L8008C8BC_5CD6C
    /* 5CCCC 8008C81C 2415001C */   addiu     $s5, $zero, 0x1C
    /* 5CCD0 8008C820 3C14800E */  lui        $s4, %hi(D_800DE840)
    /* 5CCD4 8008C824 2694E840 */  addiu      $s4, $s4, %lo(D_800DE840)
  .L8008C828_5CCD8:
    /* 5CCD8 8008C828 02150019 */  multu      $s0, $s5
    /* 5CCDC 8008C82C 00102400 */  sll        $a0, $s0, 16
    /* 5CCE0 8008C830 0004CC03 */  sra        $t9, $a0, 16
    /* 5CCE4 8008C834 03202025 */  or         $a0, $t9, $zero
    /* 5CCE8 8008C838 24050092 */  addiu      $a1, $zero, 0x92
    /* 5CCEC 8008C83C 00007012 */  mflo       $t6
    /* 5CCF0 8008C840 028E1821 */  addu       $v1, $s4, $t6
    /* 5CCF4 8008C844 906F0018 */  lbu        $t7, 0x18($v1)
    /* 5CCF8 8008C848 24620008 */  addiu      $v0, $v1, 0x8
    /* 5CCFC 8008C84C 19E00012 */  blez       $t7, .L8008C898_5CD48
    /* 5CD00 8008C850 00000000 */   nop
    /* 5CD04 8008C854 90580010 */  lbu        $t8, 0x10($v0)
    /* 5CD08 8008C858 84480000 */  lh         $t0, 0x0($v0)
    /* 5CD0C 8008C85C 8449000A */  lh         $t1, 0xA($v0)
    /* 5CD10 8008C860 844B0002 */  lh         $t3, 0x2($v0)
    /* 5CD14 8008C864 844C000C */  lh         $t4, 0xC($v0)
    /* 5CD18 8008C868 844E0004 */  lh         $t6, 0x4($v0)
    /* 5CD1C 8008C86C 844F000E */  lh         $t7, 0xE($v0)
    /* 5CD20 8008C870 2719FFFF */  addiu      $t9, $t8, -0x1
    /* 5CD24 8008C874 01095021 */  addu       $t2, $t0, $t1
    /* 5CD28 8008C878 016C6821 */  addu       $t5, $t3, $t4
    /* 5CD2C 8008C87C 01CFC021 */  addu       $t8, $t6, $t7
    /* 5CD30 8008C880 A0590010 */  sb         $t9, 0x10($v0)
    /* 5CD34 8008C884 A44A0000 */  sh         $t2, 0x0($v0)
    /* 5CD38 8008C888 A44D0002 */  sh         $t5, 0x2($v0)
    /* 5CD3C 8008C88C A4580004 */  sh         $t8, 0x4($v0)
    /* 5CD40 8008C890 10000006 */  b          .L8008C8AC_5CD5C
    /* 5CD44 8008C894 84700004 */   lh        $s0, 0x4($v1)
  .L8008C898_5CD48:
    /* 5CD48 8008C898 0C020F6F */  jal        func_80083DBC_5426C
    /* 5CD4C 8008C89C 84710004 */   lh        $s1, 0x4($v1)
    /* 5CD50 8008C8A0 00118400 */  sll        $s0, $s1, 16
    /* 5CD54 8008C8A4 00104403 */  sra        $t0, $s0, 16
    /* 5CD58 8008C8A8 01008025 */  or         $s0, $t0, $zero
  .L8008C8AC_5CD5C:
    /* 5CD5C 8008C8AC 52120004 */  beql       $s0, $s2, .L8008C8C0_5CD70
    /* 5CD60 8008C8B0 8FBF002C */   lw        $ra, 0x2C($sp)
    /* 5CD64 8008C8B4 1613FFDC */  bne        $s0, $s3, .L8008C828_5CCD8
    /* 5CD68 8008C8B8 00000000 */   nop
  .L8008C8BC_5CD6C:
    /* 5CD6C 8008C8BC 8FBF002C */  lw         $ra, 0x2C($sp)
  .L8008C8C0_5CD70:
    /* 5CD70 8008C8C0 8FB00014 */  lw         $s0, 0x14($sp)
    /* 5CD74 8008C8C4 8FB10018 */  lw         $s1, 0x18($sp)
    /* 5CD78 8008C8C8 8FB2001C */  lw         $s2, 0x1C($sp)
    /* 5CD7C 8008C8CC 8FB30020 */  lw         $s3, 0x20($sp)
    /* 5CD80 8008C8D0 8FB40024 */  lw         $s4, 0x24($sp)
    /* 5CD84 8008C8D4 8FB50028 */  lw         $s5, 0x28($sp)
    /* 5CD88 8008C8D8 03E00008 */  jr         $ra
    /* 5CD8C 8008C8DC 27BD0030 */   addiu     $sp, $sp, 0x30
endlabel func_8008C7E4_5CC94
