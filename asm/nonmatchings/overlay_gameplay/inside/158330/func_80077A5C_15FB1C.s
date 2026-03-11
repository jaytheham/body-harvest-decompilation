nonmatching func_80077A5C_15FB1C, 0xE4

glabel func_80077A5C_15FB1C
    /* 15FB1C 80077A5C 3C0E800E */  lui        $t6, %hi(D_800E65BC)
    /* 15FB20 80077A60 8DCE65BC */  lw         $t6, %lo(D_800E65BC)($t6)
    /* 15FB24 80077A64 000578C0 */  sll        $t7, $a1, 3
    /* 15FB28 80077A68 01E57821 */  addu       $t7, $t7, $a1
    /* 15FB2C 80077A6C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 15FB30 80077A70 000F78C0 */  sll        $t7, $t7, 3
    /* 15FB34 80077A74 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 15FB38 80077A78 01CFC021 */  addu       $t8, $t6, $t7
    /* 15FB3C 80077A7C 8702000C */  lh         $v0, 0xC($t8)
    /* 15FB40 80077A80 00803025 */  or         $a2, $a0, $zero
    /* 15FB44 80077A84 2459FFFF */  addiu      $t9, $v0, -0x1
    /* 15FB48 80077A88 2F210008 */  sltiu      $at, $t9, 0x8
    /* 15FB4C 80077A8C 10200028 */  beqz       $at, .L80077B30_15FBF0
    /* 15FB50 80077A90 0019C880 */   sll       $t9, $t9, 2
    /* 15FB54 80077A94 3C01800A */  lui        $at, %hi(jtbl_800A4AE8_overlay_gameplay_inside)
    /* 15FB58 80077A98 00390821 */  addu       $at, $at, $t9
    /* 15FB5C 80077A9C 8C394AE8 */  lw         $t9, %lo(jtbl_800A4AE8_overlay_gameplay_inside)($at)
    /* 15FB60 80077AA0 03200008 */  jr         $t9
    /* 15FB64 80077AA4 00000000 */   nop
    /* 15FB68 80077AA8 00064080 */  sll        $t0, $a2, 2
    /* 15FB6C 80077AAC 01064023 */  subu       $t0, $t0, $a2
    /* 15FB70 80077AB0 00084100 */  sll        $t0, $t0, 4
    /* 15FB74 80077AB4 3C04800E */  lui        $a0, %hi(D_800E66B3)
    /* 15FB78 80077AB8 00882021 */  addu       $a0, $a0, $t0
    /* 15FB7C 80077ABC 0C021BA4 */  jal        func_80086E90_16EF50
    /* 15FB80 80077AC0 908466B3 */   lbu       $a0, %lo(D_800E66B3)($a0)
    /* 15FB84 80077AC4 1000001B */  b          .L80077B34_15FBF4
    /* 15FB88 80077AC8 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 15FB8C 80077ACC 00064880 */  sll        $t1, $a2, 2
    /* 15FB90 80077AD0 01264823 */  subu       $t1, $t1, $a2
    /* 15FB94 80077AD4 00094900 */  sll        $t1, $t1, 4
    /* 15FB98 80077AD8 3C04800E */  lui        $a0, %hi(D_800E66B2)
    /* 15FB9C 80077ADC 00892021 */  addu       $a0, $a0, $t1
    /* 15FBA0 80077AE0 0C021BD6 */  jal        func_80086F58_16F018
    /* 15FBA4 80077AE4 848466B2 */   lh        $a0, %lo(D_800E66B2)($a0)
    /* 15FBA8 80077AE8 10000012 */  b          .L80077B34_15FBF4
    /* 15FBAC 80077AEC 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 15FBB0 80077AF0 00065080 */  sll        $t2, $a2, 2
    /* 15FBB4 80077AF4 01465023 */  subu       $t2, $t2, $a2
    /* 15FBB8 80077AF8 000A5100 */  sll        $t2, $t2, 4
    /* 15FBBC 80077AFC 3C04800E */  lui        $a0, %hi(D_800E66B2)
    /* 15FBC0 80077B00 008A2021 */  addu       $a0, $a0, $t2
    /* 15FBC4 80077B04 0C021BC9 */  jal        func_80086F24_16EFE4
    /* 15FBC8 80077B08 848466B2 */   lh        $a0, %lo(D_800E66B2)($a0)
    /* 15FBCC 80077B0C 10000009 */  b          .L80077B34_15FBF4
    /* 15FBD0 80077B10 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 15FBD4 80077B14 00065880 */  sll        $t3, $a2, 2
    /* 15FBD8 80077B18 01665823 */  subu       $t3, $t3, $a2
    /* 15FBDC 80077B1C 000B5900 */  sll        $t3, $t3, 4
    /* 15FBE0 80077B20 3C04800E */  lui        $a0, %hi(D_800E66B3)
    /* 15FBE4 80077B24 008B2021 */  addu       $a0, $a0, $t3
    /* 15FBE8 80077B28 0C0225E5 */  jal        func_80089794_171854
    /* 15FBEC 80077B2C 908466B3 */   lbu       $a0, %lo(D_800E66B3)($a0)
  .L80077B30_15FBF0:
    /* 15FBF0 80077B30 8FBF0014 */  lw         $ra, 0x14($sp)
  .L80077B34_15FBF4:
    /* 15FBF4 80077B34 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 15FBF8 80077B38 03E00008 */  jr         $ra
    /* 15FBFC 80077B3C 00000000 */   nop
endlabel func_80077A5C_15FB1C
