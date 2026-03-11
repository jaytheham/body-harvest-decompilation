nonmatching func_802D5ADC_1EE7EC, 0xC4

glabel func_802D5ADC_1EE7EC
    /* 1EE7EC 802D5ADC 3C02802E */  lui        $v0, %hi(D_802E0FB0)
    /* 1EE7F0 802D5AE0 24420FB0 */  addiu      $v0, $v0, %lo(D_802E0FB0)
    /* 1EE7F4 802D5AE4 3C038005 */  lui        $v1, %hi(vehicleInstances)
    /* 1EE7F8 802D5AE8 84580000 */  lh         $t8, 0x0($v0)
    /* 1EE7FC 802D5AEC 2463DCD0 */  addiu      $v1, $v1, %lo(vehicleInstances)
    /* 1EE800 802D5AF0 846E1CC0 */  lh         $t6, 0x1CC0($v1)
    /* 1EE804 802D5AF4 846F1CC4 */  lh         $t7, 0x1CC4($v1)
    /* 1EE808 802D5AF8 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 1EE80C 802D5AFC AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1EE810 802D5B00 3C04802E */  lui        $a0, %hi(D_802E0E18)
    /* 1EE814 802D5B04 27190001 */  addiu      $t9, $t8, 0x1
    /* 1EE818 802D5B08 A4590000 */  sh         $t9, 0x0($v0)
    /* 1EE81C 802D5B0C 24840E18 */  addiu      $a0, $a0, %lo(D_802E0E18)
    /* 1EE820 802D5B10 A7AE001E */  sh         $t6, 0x1E($sp)
    /* 1EE824 802D5B14 0C00731B */  jal        osSyncPrintf
    /* 1EE828 802D5B18 A7AF001C */   sh        $t7, 0x1C($sp)
    /* 1EE82C 802D5B1C 3C02802E */  lui        $v0, %hi(D_802E0FB0)
    /* 1EE830 802D5B20 24420FB0 */  addiu      $v0, $v0, %lo(D_802E0FB0)
    /* 1EE834 802D5B24 84480000 */  lh         $t0, 0x0($v0)
    /* 1EE838 802D5B28 24010003 */  addiu      $at, $zero, 0x3
    /* 1EE83C 802D5B2C 3C098016 */  lui        $t1, %hi(D_801591C4)
    /* 1EE840 802D5B30 55010018 */  bnel       $t0, $at, .L802D5B94_1EE8A4
    /* 1EE844 802D5B34 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1EE848 802D5B38 A4400000 */  sh         $zero, 0x0($v0)
    /* 1EE84C 802D5B3C 852991C4 */  lh         $t1, %lo(D_801591C4)($t1)
    /* 1EE850 802D5B40 3C04802E */  lui        $a0, %hi(D_802E0E24)
    /* 1EE854 802D5B44 1120000F */  beqz       $t1, .L802D5B84_1EE894
    /* 1EE858 802D5B48 00000000 */   nop
    /* 1EE85C 802D5B4C 0C00731B */  jal        osSyncPrintf
    /* 1EE860 802D5B50 24840E24 */   addiu     $a0, $a0, %lo(D_802E0E24)
    /* 1EE864 802D5B54 87A4001E */  lh         $a0, 0x1E($sp)
    /* 1EE868 802D5B58 87A5001C */  lh         $a1, 0x1C($sp)
    /* 1EE86C 802D5B5C 24060033 */  addiu      $a2, $zero, 0x33
    /* 1EE870 802D5B60 24840064 */  addiu      $a0, $a0, 0x64
    /* 1EE874 802D5B64 0C02B555 */  jal        func_800AD554_BC504
    /* 1EE878 802D5B68 24A50064 */   addiu     $a1, $a1, 0x64
    /* 1EE87C 802D5B6C 3C028016 */  lui        $v0, %hi(D_801591C4)
    /* 1EE880 802D5B70 244291C4 */  addiu      $v0, $v0, %lo(D_801591C4)
    /* 1EE884 802D5B74 844A0000 */  lh         $t2, 0x0($v0)
    /* 1EE888 802D5B78 254BFFFF */  addiu      $t3, $t2, -0x1
    /* 1EE88C 802D5B7C 10000004 */  b          .L802D5B90_1EE8A0
    /* 1EE890 802D5B80 A44B0000 */   sh        $t3, 0x0($v0)
  .L802D5B84_1EE894:
    /* 1EE894 802D5B84 3C04802D */  lui        $a0, %hi(func_802D5ADC_1EE7EC)
    /* 1EE898 802D5B88 0C001D2F */  jal        func_800074BC_80BC
    /* 1EE89C 802D5B8C 24845ADC */   addiu     $a0, $a0, %lo(func_802D5ADC_1EE7EC)
  .L802D5B90_1EE8A0:
    /* 1EE8A0 802D5B90 8FBF0014 */  lw         $ra, 0x14($sp)
  .L802D5B94_1EE8A4:
    /* 1EE8A4 802D5B94 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 1EE8A8 802D5B98 03E00008 */  jr         $ra
    /* 1EE8AC 802D5B9C 00000000 */   nop
endlabel func_802D5ADC_1EE7EC
