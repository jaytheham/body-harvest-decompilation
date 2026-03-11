nonmatching func_8011FA90_12EA40, 0x108

glabel func_8011FA90_12EA40
    /* 12EA40 8011FA90 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 12EA44 8011FA94 AFB00040 */  sw         $s0, 0x40($sp)
    /* 12EA48 8011FA98 00808025 */  or         $s0, $a0, $zero
    /* 12EA4C 8011FA9C AFBF0044 */  sw         $ra, 0x44($sp)
    /* 12EA50 8011FAA0 AFA5004C */  sw         $a1, 0x4C($sp)
    /* 12EA54 8011FAA4 AFA60050 */  sw         $a2, 0x50($sp)
    /* 12EA58 8011FAA8 AFA70054 */  sw         $a3, 0x54($sp)
    /* 12EA5C 8011FAAC 8C840008 */  lw         $a0, 0x8($a0)
    /* 12EA60 8011FAB0 27A6005A */  addiu      $a2, $sp, 0x5A
    /* 12EA64 8011FAB4 27A50052 */  addiu      $a1, $sp, 0x52
    /* 12EA68 8011FAB8 308E0003 */  andi       $t6, $a0, 0x3
    /* 12EA6C 8011FABC 000E7C00 */  sll        $t7, $t6, 16
    /* 12EA70 8011FAC0 0C045955 */  jal        func_80116554_125504
    /* 12EA74 8011FAC4 000F2403 */   sra       $a0, $t7, 16
    /* 12EA78 8011FAC8 8E040008 */  lw         $a0, 0x8($s0)
    /* 12EA7C 8011FACC 27A5005E */  addiu      $a1, $sp, 0x5E
    /* 12EA80 8011FAD0 27A60066 */  addiu      $a2, $sp, 0x66
    /* 12EA84 8011FAD4 30990003 */  andi       $t9, $a0, 0x3
    /* 12EA88 8011FAD8 00194400 */  sll        $t0, $t9, 16
    /* 12EA8C 8011FADC 0C045955 */  jal        func_80116554_125504
    /* 12EA90 8011FAE0 00082403 */   sra       $a0, $t0, 16
    /* 12EA94 8011FAE4 3C0A8005 */  lui        $t2, %hi(buildingInstances)
    /* 12EA98 8011FAE8 254A0AD8 */  addiu      $t2, $t2, %lo(buildingInstances)
    /* 12EA9C 8011FAEC 020A5823 */  subu       $t3, $s0, $t2
    /* 12EAA0 8011FAF0 24010018 */  addiu      $at, $zero, 0x18
    /* 12EAA4 8011FAF4 0161001A */  div        $zero, $t3, $at
    /* 12EAA8 8011FAF8 8FAE0068 */  lw         $t6, 0x68($sp)
    /* 12EAAC 8011FAFC 00006012 */  mflo       $t4
    /* 12EAB0 8011FB00 000C6900 */  sll        $t5, $t4, 4
    /* 12EAB4 8011FB04 860A0002 */  lh         $t2, 0x2($s0)
    /* 12EAB8 8011FB08 86180000 */  lh         $t8, 0x0($s0)
    /* 12EABC 8011FB0C 01AE2821 */  addu       $a1, $t5, $t6
    /* 12EAC0 8011FB10 860E0004 */  lh         $t6, 0x4($s0)
    /* 12EAC4 8011FB14 87B90052 */  lh         $t9, 0x52($sp)
    /* 12EAC8 8011FB18 87AB0056 */  lh         $t3, 0x56($sp)
    /* 12EACC 8011FB1C 30AFFFFF */  andi       $t7, $a1, 0xFFFF
    /* 12EAD0 8011FB20 01E02825 */  or         $a1, $t7, $zero
    /* 12EAD4 8011FB24 03193021 */  addu       $a2, $t8, $t9
    /* 12EAD8 8011FB28 87AF005A */  lh         $t7, 0x5A($sp)
    /* 12EADC 8011FB2C 00064400 */  sll        $t0, $a2, 16
    /* 12EAE0 8011FB30 00083403 */  sra        $a2, $t0, 16
    /* 12EAE4 8011FB34 014B3821 */  addu       $a3, $t2, $t3
    /* 12EAE8 8011FB38 87A80066 */  lh         $t0, 0x66($sp)
    /* 12EAEC 8011FB3C 87B9005E */  lh         $t9, 0x5E($sp)
    /* 12EAF0 8011FB40 87A90062 */  lh         $t1, 0x62($sp)
    /* 12EAF4 8011FB44 3C0A8012 */  lui        $t2, %hi(func_8011E9F4_12D9A4)
    /* 12EAF8 8011FB48 254AE9F4 */  addiu      $t2, $t2, %lo(func_8011E9F4_12D9A4)
    /* 12EAFC 8011FB4C 00076400 */  sll        $t4, $a3, 16
    /* 12EB00 8011FB50 01CFC021 */  addu       $t8, $t6, $t7
    /* 12EB04 8011FB54 AFB80010 */  sw         $t8, 0x10($sp)
    /* 12EB08 8011FB58 000C3C03 */  sra        $a3, $t4, 16
    /* 12EB0C 8011FB5C AFAA002C */  sw         $t2, 0x2C($sp)
    /* 12EB10 8011FB60 AFA00030 */  sw         $zero, 0x30($sp)
    /* 12EB14 8011FB64 AFA0001C */  sw         $zero, 0x1C($sp)
    /* 12EB18 8011FB68 AFA00018 */  sw         $zero, 0x18($sp)
    /* 12EB1C 8011FB6C AFA00014 */  sw         $zero, 0x14($sp)
    /* 12EB20 8011FB70 93A4004F */  lbu        $a0, 0x4F($sp)
    /* 12EB24 8011FB74 AFA80024 */  sw         $t0, 0x24($sp)
    /* 12EB28 8011FB78 AFB90020 */  sw         $t9, 0x20($sp)
    /* 12EB2C 8011FB7C 0C04B5C0 */  jal        func_8012D700_13C6B0
    /* 12EB30 8011FB80 AFA90028 */   sw        $t1, 0x28($sp)
    /* 12EB34 8011FB84 8FBF0044 */  lw         $ra, 0x44($sp)
    /* 12EB38 8011FB88 8FB00040 */  lw         $s0, 0x40($sp)
    /* 12EB3C 8011FB8C 27BD0048 */  addiu      $sp, $sp, 0x48
    /* 12EB40 8011FB90 03E00008 */  jr         $ra
    /* 12EB44 8011FB94 00000000 */   nop
endlabel func_8011FA90_12EA40
