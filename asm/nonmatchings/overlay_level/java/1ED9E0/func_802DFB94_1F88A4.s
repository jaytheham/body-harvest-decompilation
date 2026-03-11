nonmatching func_802DFB94_1F88A4, 0x94

glabel func_802DFB94_1F88A4
    /* 1F88A4 802DFB94 308E00FF */  andi       $t6, $a0, 0xFF
    /* 1F88A8 802DFB98 000E7880 */  sll        $t7, $t6, 2
    /* 1F88AC 802DFB9C 01EE7821 */  addu       $t7, $t7, $t6
    /* 1F88B0 802DFBA0 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 1F88B4 802DFBA4 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 1F88B8 802DFBA8 000F7900 */  sll        $t7, $t7, 4
    /* 1F88BC 802DFBAC 01F81021 */  addu       $v0, $t7, $t8
    /* 1F88C0 802DFBB0 8C590020 */  lw         $t9, 0x20($v0)
    /* 1F88C4 802DFBB4 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 1F88C8 802DFBB8 AFA40028 */  sw         $a0, 0x28($sp)
    /* 1F88CC 802DFBBC 001942C0 */  sll        $t0, $t9, 11
    /* 1F88D0 802DFBC0 01C02025 */  or         $a0, $t6, $zero
    /* 1F88D4 802DFBC4 05000012 */  bltz       $t0, .L802DFC10_1F8920
    /* 1F88D8 802DFBC8 AFBF001C */   sw        $ra, 0x1C($sp)
    /* 1F88DC 802DFBCC 0C04AC87 */  jal        func_8012B21C_13A1CC
    /* 1F88E0 802DFBD0 AFA20024 */   sw        $v0, 0x24($sp)
    /* 1F88E4 802DFBD4 0C02A4AC */  jal        func_800A92B0_B8260
    /* 1F88E8 802DFBD8 00000000 */   nop
    /* 1F88EC 802DFBDC 8FA20024 */  lw         $v0, 0x24($sp)
    /* 1F88F0 802DFBE0 240900AA */  addiu      $t1, $zero, 0xAA
    /* 1F88F4 802DFBE4 3C078025 */  lui        $a3, %hi(D_80257184)
    /* 1F88F8 802DFBE8 240A0008 */  addiu      $t2, $zero, 0x8
    /* 1F88FC 802DFBEC A449002C */  sh         $t1, 0x2C($v0)
    /* 1F8900 802DFBF0 94E77184 */  lhu        $a3, %lo(D_80257184)($a3)
    /* 1F8904 802DFBF4 AFAA0010 */  sw         $t2, 0x10($sp)
    /* 1F8908 802DFBF8 84440000 */  lh         $a0, 0x0($v0)
    /* 1F890C 802DFBFC 84450002 */  lh         $a1, 0x2($v0)
    /* 1F8910 802DFC00 0C037E12 */  jal        func_800DF848_EE7F8
    /* 1F8914 802DFC04 84460004 */   lh        $a2, 0x4($v0)
    /* 1F8918 802DFC08 10000004 */  b          .L802DFC1C_1F892C
    /* 1F891C 802DFC0C 8FBF001C */   lw        $ra, 0x1C($sp)
  .L802DFC10_1F8920:
    /* 1F8920 802DFC10 0C02A8D0 */  jal        func_800AA340_B92F0
    /* 1F8924 802DFC14 00000000 */   nop
    /* 1F8928 802DFC18 8FBF001C */  lw         $ra, 0x1C($sp)
  .L802DFC1C_1F892C:
    /* 1F892C 802DFC1C 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 1F8930 802DFC20 03E00008 */  jr         $ra
    /* 1F8934 802DFC24 00000000 */   nop
endlabel func_802DFB94_1F88A4
