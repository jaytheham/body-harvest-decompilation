nonmatching func_800DFEE4_EEE94, 0xE0

glabel func_800DFEE4_EEE94
    /* EEE94 800DFEE4 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* EEE98 800DFEE8 AFBF003C */  sw         $ra, 0x3C($sp)
    /* EEE9C 800DFEEC AFA40040 */  sw         $a0, 0x40($sp)
    /* EEEA0 800DFEF0 AFA50044 */  sw         $a1, 0x44($sp)
    /* EEEA4 800DFEF4 AFA60048 */  sw         $a2, 0x48($sp)
    /* EEEA8 800DFEF8 240E0002 */  addiu      $t6, $zero, 0x2
    /* EEEAC 800DFEFC 240F0001 */  addiu      $t7, $zero, 0x1
    /* EEEB0 800DFF00 24180014 */  addiu      $t8, $zero, 0x14
    /* EEEB4 800DFF04 241900FF */  addiu      $t9, $zero, 0xFF
    /* EEEB8 800DFF08 240800FF */  addiu      $t0, $zero, 0xFF
    /* EEEBC 800DFF0C 240900FA */  addiu      $t1, $zero, 0xFA
    /* EEEC0 800DFF10 240A00DC */  addiu      $t2, $zero, 0xDC
    /* EEEC4 800DFF14 AFAA0028 */  sw         $t2, 0x28($sp)
    /* EEEC8 800DFF18 AFA90024 */  sw         $t1, 0x24($sp)
    /* EEECC 800DFF1C AFA80020 */  sw         $t0, 0x20($sp)
    /* EEED0 800DFF20 AFB9001C */  sw         $t9, 0x1C($sp)
    /* EEED4 800DFF24 AFB80018 */  sw         $t8, 0x18($sp)
    /* EEED8 800DFF28 AFAF0014 */  sw         $t7, 0x14($sp)
    /* EEEDC 800DFF2C AFAE0010 */  sw         $t6, 0x10($sp)
    /* EEEE0 800DFF30 87A6004A */  lh         $a2, 0x4A($sp)
    /* EEEE4 800DFF34 87A50046 */  lh         $a1, 0x46($sp)
    /* EEEE8 800DFF38 87A40042 */  lh         $a0, 0x42($sp)
    /* EEEEC 800DFF3C 0C037A82 */  jal        func_800DEA08_ED9B8
    /* EEEF0 800DFF40 2407000F */   addiu     $a3, $zero, 0xF
    /* EEEF4 800DFF44 0C000E38 */  jal        func_800038E0_44E0
    /* EEEF8 800DFF48 00000000 */   nop
    /* EEEFC 800DFF4C 240B007F */  addiu      $t3, $zero, 0x7F
    /* EEF00 800DFF50 240C0032 */  addiu      $t4, $zero, 0x32
    /* EEF04 800DFF54 240D00FA */  addiu      $t5, $zero, 0xFA
    /* EEF08 800DFF58 240F0003 */  addiu      $t7, $zero, 0x3
    /* EEF0C 800DFF5C 241800FF */  addiu      $t8, $zero, 0xFF
    /* EEF10 800DFF60 241900FF */  addiu      $t9, $zero, 0xFF
    /* EEF14 800DFF64 240800DC */  addiu      $t0, $zero, 0xDC
    /* EEF18 800DFF68 AFA80030 */  sw         $t0, 0x30($sp)
    /* EEF1C 800DFF6C AFB9002C */  sw         $t9, 0x2C($sp)
    /* EEF20 800DFF70 AFB80028 */  sw         $t8, 0x28($sp)
    /* EEF24 800DFF74 AFAF0024 */  sw         $t7, 0x24($sp)
    /* EEF28 800DFF78 AFAD001C */  sw         $t5, 0x1C($sp)
    /* EEF2C 800DFF7C AFAC0018 */  sw         $t4, 0x18($sp)
    /* EEF30 800DFF80 AFAB0010 */  sw         $t3, 0x10($sp)
    /* EEF34 800DFF84 87A40042 */  lh         $a0, 0x42($sp)
    /* EEF38 800DFF88 87A50046 */  lh         $a1, 0x46($sp)
    /* EEF3C 800DFF8C 87A6004A */  lh         $a2, 0x4A($sp)
    /* EEF40 800DFF90 00003825 */  or         $a3, $zero, $zero
    /* EEF44 800DFF94 AFA00014 */  sw         $zero, 0x14($sp)
    /* EEF48 800DFF98 04410004 */  bgez       $v0, .L800DFFAC_EEF5C
    /* EEF4C 800DFF9C 304E0003 */   andi      $t6, $v0, 0x3
    /* EEF50 800DFFA0 11C00002 */  beqz       $t6, .L800DFFAC_EEF5C
    /* EEF54 800DFFA4 00000000 */   nop
    /* EEF58 800DFFA8 25CEFFFC */  addiu      $t6, $t6, -0x4
  .L800DFFAC_EEF5C:
    /* EEF5C 800DFFAC 0C031507 */  jal        func_800C541C_D43CC
    /* EEF60 800DFFB0 AFAE0020 */   sw        $t6, 0x20($sp)
    /* EEF64 800DFFB4 8FBF003C */  lw         $ra, 0x3C($sp)
    /* EEF68 800DFFB8 27BD0040 */  addiu      $sp, $sp, 0x40
    /* EEF6C 800DFFBC 03E00008 */  jr         $ra
    /* EEF70 800DFFC0 00000000 */   nop
endlabel func_800DFEE4_EEE94
