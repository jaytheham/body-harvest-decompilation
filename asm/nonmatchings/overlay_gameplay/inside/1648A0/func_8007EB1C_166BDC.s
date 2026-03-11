nonmatching func_8007EB1C_166BDC, 0x4B8

glabel func_8007EB1C_166BDC
    /* 166BDC 8007EB1C 3C013FE0 */  lui        $at, (0x3FE00000 >> 16)
    /* 166BE0 8007EB20 44810800 */  mtc1       $at, $f1
    /* 166BE4 8007EB24 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 166BE8 8007EB28 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 166BEC 8007EB2C 3C0142C0 */  lui        $at, (0x42C00000 >> 16)
    /* 166BF0 8007EB30 44811000 */  mtc1       $at, $f2
    /* 166BF4 8007EB34 C484004C */  lwc1       $f4, 0x4C($a0)
    /* 166BF8 8007EB38 44800000 */  mtc1       $zero, $f0
    /* 166BFC 8007EB3C 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* 166C00 8007EB40 46022181 */  sub.s      $f6, $f4, $f2
    /* 166C04 8007EB44 44812000 */  mtc1       $at, $f4
    /* 166C08 8007EB48 46003221 */  cvt.d.s    $f8, $f6
    /* 166C0C 8007EB4C 46204280 */  add.d      $f10, $f8, $f0
    /* 166C10 8007EB50 4620540D */  trunc.w.d  $f16, $f10
    /* 166C14 8007EB54 440F8000 */  mfc1       $t7, $f16
    /* 166C18 8007EB58 00000000 */  nop
    /* 166C1C 8007EB5C A7AF002E */  sh         $t7, 0x2E($sp)
    /* 166C20 8007EB60 C48A0054 */  lwc1       $f10, 0x54($a0)
    /* 166C24 8007EB64 C4920050 */  lwc1       $f18, 0x50($a0)
    /* 166C28 8007EB68 46025401 */  sub.s      $f16, $f10, $f2
    /* 166C2C 8007EB6C 46049180 */  add.s      $f6, $f18, $f4
    /* 166C30 8007EB70 460084A1 */  cvt.d.s    $f18, $f16
    /* 166C34 8007EB74 4600320D */  trunc.w.s  $f8, $f6
    /* 166C38 8007EB78 46209100 */  add.d      $f4, $f18, $f0
    /* 166C3C 8007EB7C 440E4000 */  mfc1       $t6, $f8
    /* 166C40 8007EB80 4620218D */  trunc.w.d  $f6, $f4
    /* 166C44 8007EB84 A7AE002C */  sh         $t6, 0x2C($sp)
    /* 166C48 8007EB88 44183000 */  mfc1       $t8, $f6
    /* 166C4C 8007EB8C 0C01C5EA */  jal        func_800717A8_159868
    /* 166C50 8007EB90 A7B8002A */   sh        $t8, 0x2A($sp)
    /* 166C54 8007EB94 3C048006 */  lui        $a0, %hi(D_8005BB34)
    /* 166C58 8007EB98 87A6002E */  lh         $a2, 0x2E($sp)
    /* 166C5C 8007EB9C 2484BB34 */  addiu      $a0, $a0, %lo(D_8005BB34)
    /* 166C60 8007EBA0 8C990000 */  lw         $t9, 0x0($a0)
    /* 166C64 8007EBA4 87BF002C */  lh         $ra, 0x2C($sp)
    /* 166C68 8007EBA8 24C6FFEC */  addiu      $a2, $a2, -0x14
    /* 166C6C 8007EBAC A7260000 */  sh         $a2, 0x0($t9)
    /* 166C70 8007EBB0 8C8E0000 */  lw         $t6, 0x0($a0)
    /* 166C74 8007EBB4 240D0800 */  addiu      $t5, $zero, 0x800
    /* 166C78 8007EBB8 3C058006 */  lui        $a1, %hi(D_8005BB2C)
    /* 166C7C 8007EBBC A5DF0002 */  sh         $ra, 0x2($t6)
    /* 166C80 8007EBC0 87A7002A */  lh         $a3, 0x2A($sp)
    /* 166C84 8007EBC4 8C8F0000 */  lw         $t7, 0x0($a0)
    /* 166C88 8007EBC8 24A5BB2C */  addiu      $a1, $a1, %lo(D_8005BB2C)
    /* 166C8C 8007EBCC 24E7FFEC */  addiu      $a3, $a3, -0x14
    /* 166C90 8007EBD0 A5E70004 */  sh         $a3, 0x4($t7)
    /* 166C94 8007EBD4 8C980000 */  lw         $t8, 0x0($a0)
    /* 166C98 8007EBD8 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 166C9C 8007EBDC 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 166CA0 8007EBE0 A7000006 */  sh         $zero, 0x6($t8)
    /* 166CA4 8007EBE4 8C990000 */  lw         $t9, 0x0($a0)
    /* 166CA8 8007EBE8 A72D0008 */  sh         $t5, 0x8($t9)
    /* 166CAC 8007EBEC 8C8E0000 */  lw         $t6, 0x0($a0)
    /* 166CB0 8007EBF0 A5CD000A */  sh         $t5, 0xA($t6)
    /* 166CB4 8007EBF4 8C8F0000 */  lw         $t7, 0x0($a0)
    /* 166CB8 8007EBF8 A1E0000C */  sb         $zero, 0xC($t7)
    /* 166CBC 8007EBFC 8C980000 */  lw         $t8, 0x0($a0)
    /* 166CC0 8007EC00 A300000D */  sb         $zero, 0xD($t8)
    /* 166CC4 8007EC04 8C990000 */  lw         $t9, 0x0($a0)
    /* 166CC8 8007EC08 A320000E */  sb         $zero, 0xE($t9)
    /* 166CCC 8007EC0C 8C8E0000 */  lw         $t6, 0x0($a0)
    /* 166CD0 8007EC10 A1C2000F */  sb         $v0, 0xF($t6)
    /* 166CD4 8007EC14 8C8F0000 */  lw         $t7, 0x0($a0)
    /* 166CD8 8007EC18 87A8002E */  lh         $t0, 0x2E($sp)
    /* 166CDC 8007EC1C 25F80010 */  addiu      $t8, $t7, 0x10
    /* 166CE0 8007EC20 AC980000 */  sw         $t8, 0x0($a0)
    /* 166CE4 8007EC24 25080014 */  addiu      $t0, $t0, 0x14
    /* 166CE8 8007EC28 A7080000 */  sh         $t0, 0x0($t8)
    /* 166CEC 8007EC2C 8C8E0000 */  lw         $t6, 0x0($a0)
    /* 166CF0 8007EC30 A5DF0002 */  sh         $ra, 0x2($t6)
    /* 166CF4 8007EC34 8C8F0000 */  lw         $t7, 0x0($a0)
    /* 166CF8 8007EC38 A5E70004 */  sh         $a3, 0x4($t7)
    /* 166CFC 8007EC3C 8C980000 */  lw         $t8, 0x0($a0)
    /* 166D00 8007EC40 A7000006 */  sh         $zero, 0x6($t8)
    /* 166D04 8007EC44 8C990000 */  lw         $t9, 0x0($a0)
    /* 166D08 8007EC48 A7200008 */  sh         $zero, 0x8($t9)
    /* 166D0C 8007EC4C 8C8E0000 */  lw         $t6, 0x0($a0)
    /* 166D10 8007EC50 A5CD000A */  sh         $t5, 0xA($t6)
    /* 166D14 8007EC54 8C8F0000 */  lw         $t7, 0x0($a0)
    /* 166D18 8007EC58 A1E0000C */  sb         $zero, 0xC($t7)
    /* 166D1C 8007EC5C 8C980000 */  lw         $t8, 0x0($a0)
    /* 166D20 8007EC60 A300000D */  sb         $zero, 0xD($t8)
    /* 166D24 8007EC64 8C990000 */  lw         $t9, 0x0($a0)
    /* 166D28 8007EC68 A320000E */  sb         $zero, 0xE($t9)
    /* 166D2C 8007EC6C 8C8E0000 */  lw         $t6, 0x0($a0)
    /* 166D30 8007EC70 A1C2000F */  sb         $v0, 0xF($t6)
    /* 166D34 8007EC74 8C8F0000 */  lw         $t7, 0x0($a0)
    /* 166D38 8007EC78 25F80010 */  addiu      $t8, $t7, 0x10
    /* 166D3C 8007EC7C AC980000 */  sw         $t8, 0x0($a0)
    /* 166D40 8007EC80 A7080000 */  sh         $t0, 0x0($t8)
    /* 166D44 8007EC84 8C8E0000 */  lw         $t6, 0x0($a0)
    /* 166D48 8007EC88 A5DF0002 */  sh         $ra, 0x2($t6)
    /* 166D4C 8007EC8C 87A9002A */  lh         $t1, 0x2A($sp)
    /* 166D50 8007EC90 8C8F0000 */  lw         $t7, 0x0($a0)
    /* 166D54 8007EC94 25290014 */  addiu      $t1, $t1, 0x14
    /* 166D58 8007EC98 A5E90004 */  sh         $t1, 0x4($t7)
    /* 166D5C 8007EC9C 8C980000 */  lw         $t8, 0x0($a0)
    /* 166D60 8007ECA0 A7000006 */  sh         $zero, 0x6($t8)
    /* 166D64 8007ECA4 8C990000 */  lw         $t9, 0x0($a0)
    /* 166D68 8007ECA8 A7200008 */  sh         $zero, 0x8($t9)
    /* 166D6C 8007ECAC 8C8E0000 */  lw         $t6, 0x0($a0)
    /* 166D70 8007ECB0 A5C0000A */  sh         $zero, 0xA($t6)
    /* 166D74 8007ECB4 8C8F0000 */  lw         $t7, 0x0($a0)
    /* 166D78 8007ECB8 A1E0000C */  sb         $zero, 0xC($t7)
    /* 166D7C 8007ECBC 8C980000 */  lw         $t8, 0x0($a0)
    /* 166D80 8007ECC0 A300000D */  sb         $zero, 0xD($t8)
    /* 166D84 8007ECC4 8C990000 */  lw         $t9, 0x0($a0)
    /* 166D88 8007ECC8 A320000E */  sb         $zero, 0xE($t9)
    /* 166D8C 8007ECCC 8C8E0000 */  lw         $t6, 0x0($a0)
    /* 166D90 8007ECD0 A1C2000F */  sb         $v0, 0xF($t6)
    /* 166D94 8007ECD4 8C8F0000 */  lw         $t7, 0x0($a0)
    /* 166D98 8007ECD8 25F80010 */  addiu      $t8, $t7, 0x10
    /* 166D9C 8007ECDC AC980000 */  sw         $t8, 0x0($a0)
    /* 166DA0 8007ECE0 A7060000 */  sh         $a2, 0x0($t8)
    /* 166DA4 8007ECE4 8C8E0000 */  lw         $t6, 0x0($a0)
    /* 166DA8 8007ECE8 A5DF0002 */  sh         $ra, 0x2($t6)
    /* 166DAC 8007ECEC 8C8F0000 */  lw         $t7, 0x0($a0)
    /* 166DB0 8007ECF0 A5E90004 */  sh         $t1, 0x4($t7)
    /* 166DB4 8007ECF4 8C980000 */  lw         $t8, 0x0($a0)
    /* 166DB8 8007ECF8 A7000006 */  sh         $zero, 0x6($t8)
    /* 166DBC 8007ECFC 8C990000 */  lw         $t9, 0x0($a0)
    /* 166DC0 8007ED00 A72D0008 */  sh         $t5, 0x8($t9)
    /* 166DC4 8007ED04 8C8E0000 */  lw         $t6, 0x0($a0)
    /* 166DC8 8007ED08 A5C0000A */  sh         $zero, 0xA($t6)
    /* 166DCC 8007ED0C 8C8F0000 */  lw         $t7, 0x0($a0)
    /* 166DD0 8007ED10 A1E0000C */  sb         $zero, 0xC($t7)
    /* 166DD4 8007ED14 8C980000 */  lw         $t8, 0x0($a0)
    /* 166DD8 8007ED18 A300000D */  sb         $zero, 0xD($t8)
    /* 166DDC 8007ED1C 8C990000 */  lw         $t9, 0x0($a0)
    /* 166DE0 8007ED20 A320000E */  sb         $zero, 0xE($t9)
    /* 166DE4 8007ED24 8C8E0000 */  lw         $t6, 0x0($a0)
    /* 166DE8 8007ED28 A1C2000F */  sb         $v0, 0xF($t6)
    /* 166DEC 8007ED2C 8C8F0000 */  lw         $t7, 0x0($a0)
    /* 166DF0 8007ED30 8CA30000 */  lw         $v1, 0x0($a1)
    /* 166DF4 8007ED34 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
    /* 166DF8 8007ED38 25F80010 */  addiu      $t8, $t7, 0x10
    /* 166DFC 8007ED3C 24790008 */  addiu      $t9, $v1, 0x8
    /* 166E00 8007ED40 AC980000 */  sw         $t8, 0x0($a0)
    /* 166E04 8007ED44 ACB90000 */  sw         $t9, 0x0($a1)
    /* 166E08 8007ED48 AC600004 */  sw         $zero, 0x4($v1)
    /* 166E0C 8007ED4C AC6E0000 */  sw         $t6, 0x0($v1)
    /* 166E10 8007ED50 8CA30000 */  lw         $v1, 0x0($a1)
    /* 166E14 8007ED54 3C18BA00 */  lui        $t8, (0xBA001402 >> 16)
    /* 166E18 8007ED58 37181402 */  ori        $t8, $t8, (0xBA001402 & 0xFFFF)
    /* 166E1C 8007ED5C 246F0008 */  addiu      $t7, $v1, 0x8
    /* 166E20 8007ED60 ACAF0000 */  sw         $t7, 0x0($a1)
    /* 166E24 8007ED64 AC600004 */  sw         $zero, 0x4($v1)
    /* 166E28 8007ED68 AC780000 */  sw         $t8, 0x0($v1)
    /* 166E2C 8007ED6C 8CA30000 */  lw         $v1, 0x0($a1)
    /* 166E30 8007ED70 3C0F0001 */  lui        $t7, (0x13000 >> 16)
    /* 166E34 8007ED74 35EF3000 */  ori        $t7, $t7, (0x13000 & 0xFFFF)
    /* 166E38 8007ED78 24790008 */  addiu      $t9, $v1, 0x8
    /* 166E3C 8007ED7C ACB90000 */  sw         $t9, 0x0($a1)
    /* 166E40 8007ED80 3C0EB600 */  lui        $t6, (0xB6000000 >> 16)
    /* 166E44 8007ED84 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 166E48 8007ED88 AC6F0004 */  sw         $t7, 0x4($v1)
    /* 166E4C 8007ED8C 8CA30000 */  lw         $v1, 0x0($a1)
    /* 166E50 8007ED90 3C0F0050 */  lui        $t7, (0x5049D8 >> 16)
    /* 166E54 8007ED94 3C19B900 */  lui        $t9, (0xB900031D >> 16)
    /* 166E58 8007ED98 24780008 */  addiu      $t8, $v1, 0x8
    /* 166E5C 8007ED9C ACB80000 */  sw         $t8, 0x0($a1)
    /* 166E60 8007EDA0 AFA30018 */  sw         $v1, 0x18($sp)
    /* 166E64 8007EDA4 3739031D */  ori        $t9, $t9, (0xB900031D & 0xFFFF)
    /* 166E68 8007EDA8 35EF49D8 */  ori        $t7, $t7, (0x5049D8 & 0xFFFF)
    /* 166E6C 8007EDAC AC6F0004 */  sw         $t7, 0x4($v1)
    /* 166E70 8007EDB0 AC790000 */  sw         $t9, 0x0($v1)
    /* 166E74 8007EDB4 8CA30000 */  lw         $v1, 0x0($a1)
    /* 166E78 8007EDB8 3C19FC62 */  lui        $t9, (0xFC6218C4 >> 16)
    /* 166E7C 8007EDBC 3C0FFF33 */  lui        $t7, (0xFF33FFFF >> 16)
    /* 166E80 8007EDC0 24780008 */  addiu      $t8, $v1, 0x8
    /* 166E84 8007EDC4 ACB80000 */  sw         $t8, 0x0($a1)
    /* 166E88 8007EDC8 35EFFFFF */  ori        $t7, $t7, (0xFF33FFFF & 0xFFFF)
    /* 166E8C 8007EDCC 373918C4 */  ori        $t9, $t9, (0xFC6218C4 & 0xFFFF)
    /* 166E90 8007EDD0 AC790000 */  sw         $t9, 0x0($v1)
    /* 166E94 8007EDD4 AC6F0004 */  sw         $t7, 0x4($v1)
    /* 166E98 8007EDD8 8CA30000 */  lw         $v1, 0x0($a1)
    /* 166E9C 8007EDDC 3C198000 */  lui        $t9, (0x80008000 >> 16)
    /* 166EA0 8007EDE0 3C18BB00 */  lui        $t8, (0xBB000001 >> 16)
    /* 166EA4 8007EDE4 246E0008 */  addiu      $t6, $v1, 0x8
    /* 166EA8 8007EDE8 ACAE0000 */  sw         $t6, 0x0($a1)
    /* 166EAC 8007EDEC 37180001 */  ori        $t8, $t8, (0xBB000001 & 0xFFFF)
    /* 166EB0 8007EDF0 37398000 */  ori        $t9, $t9, (0x80008000 & 0xFFFF)
    /* 166EB4 8007EDF4 AC790004 */  sw         $t9, 0x4($v1)
    /* 166EB8 8007EDF8 AC780000 */  sw         $t8, 0x0($v1)
    /* 166EBC 8007EDFC 8CA30000 */  lw         $v1, 0x0($a1)
    /* 166EC0 8007EE00 3C0EBA00 */  lui        $t6, (0xBA000E02 >> 16)
    /* 166EC4 8007EE04 35CE0E02 */  ori        $t6, $t6, (0xBA000E02 & 0xFFFF)
    /* 166EC8 8007EE08 246F0008 */  addiu      $t7, $v1, 0x8
    /* 166ECC 8007EE0C ACAF0000 */  sw         $t7, 0x0($a1)
    /* 166ED0 8007EE10 AC600004 */  sw         $zero, 0x4($v1)
    /* 166ED4 8007EE14 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 166ED8 8007EE18 8CA30000 */  lw         $v1, 0x0($a1)
    /* 166EDC 8007EE1C 3C19E600 */  lui        $t9, (0xE6000000 >> 16)
    /* 166EE0 8007EE20 3C0EFD90 */  lui        $t6, (0xFD900000 >> 16)
    /* 166EE4 8007EE24 24780008 */  addiu      $t8, $v1, 0x8
    /* 166EE8 8007EE28 ACB80000 */  sw         $t8, 0x0($a1)
    /* 166EEC 8007EE2C AC600004 */  sw         $zero, 0x4($v1)
    /* 166EF0 8007EE30 AC790000 */  sw         $t9, 0x0($v1)
    /* 166EF4 8007EE34 8CA30000 */  lw         $v1, 0x0($a1)
    /* 166EF8 8007EE38 3C18800A */  lui        $t8, %hi(D_8009CE60)
    /* 166EFC 8007EE3C 2718CE60 */  addiu      $t8, $t8, %lo(D_8009CE60)
    /* 166F00 8007EE40 246F0008 */  addiu      $t7, $v1, 0x8
    /* 166F04 8007EE44 ACAF0000 */  sw         $t7, 0x0($a1)
    /* 166F08 8007EE48 AC780004 */  sw         $t8, 0x4($v1)
    /* 166F0C 8007EE4C AC6E0000 */  sw         $t6, 0x0($v1)
    /* 166F10 8007EE50 8CA30000 */  lw         $v1, 0x0($a1)
    /* 166F14 8007EE54 3C0E0701 */  lui        $t6, (0x7014050 >> 16)
    /* 166F18 8007EE58 35CE4050 */  ori        $t6, $t6, (0x7014050 & 0xFFFF)
    /* 166F1C 8007EE5C 24790008 */  addiu      $t9, $v1, 0x8
    /* 166F20 8007EE60 ACB90000 */  sw         $t9, 0x0($a1)
    /* 166F24 8007EE64 3C0FF590 */  lui        $t7, (0xF5900000 >> 16)
    /* 166F28 8007EE68 AC6F0000 */  sw         $t7, 0x0($v1)
    /* 166F2C 8007EE6C AC6E0004 */  sw         $t6, 0x4($v1)
    /* 166F30 8007EE70 8CA30000 */  lw         $v1, 0x0($a1)
    /* 166F34 8007EE74 3C19E600 */  lui        $t9, (0xE6000000 >> 16)
    /* 166F38 8007EE78 3C0EF300 */  lui        $t6, (0xF3000000 >> 16)
    /* 166F3C 8007EE7C 24780008 */  addiu      $t8, $v1, 0x8
    /* 166F40 8007EE80 ACB80000 */  sw         $t8, 0x0($a1)
    /* 166F44 8007EE84 AC600004 */  sw         $zero, 0x4($v1)
    /* 166F48 8007EE88 AC790000 */  sw         $t9, 0x0($v1)
    /* 166F4C 8007EE8C 8CA30000 */  lw         $v1, 0x0($a1)
    /* 166F50 8007EE90 3C18071F */  lui        $t8, (0x71FF200 >> 16)
    /* 166F54 8007EE94 3718F200 */  ori        $t8, $t8, (0x71FF200 & 0xFFFF)
    /* 166F58 8007EE98 246F0008 */  addiu      $t7, $v1, 0x8
    /* 166F5C 8007EE9C ACAF0000 */  sw         $t7, 0x0($a1)
    /* 166F60 8007EEA0 AC780004 */  sw         $t8, 0x4($v1)
    /* 166F64 8007EEA4 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 166F68 8007EEA8 8CA30000 */  lw         $v1, 0x0($a1)
    /* 166F6C 8007EEAC 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
    /* 166F70 8007EEB0 3C18F588 */  lui        $t8, (0xF5880800 >> 16)
    /* 166F74 8007EEB4 24790008 */  addiu      $t9, $v1, 0x8
    /* 166F78 8007EEB8 ACB90000 */  sw         $t9, 0x0($a1)
    /* 166F7C 8007EEBC AC600004 */  sw         $zero, 0x4($v1)
    /* 166F80 8007EEC0 AC6F0000 */  sw         $t7, 0x0($v1)
    /* 166F84 8007EEC4 8CA30000 */  lw         $v1, 0x0($a1)
    /* 166F88 8007EEC8 3C190001 */  lui        $t9, (0x14050 >> 16)
    /* 166F8C 8007EECC 37394050 */  ori        $t9, $t9, (0x14050 & 0xFFFF)
    /* 166F90 8007EED0 246E0008 */  addiu      $t6, $v1, 0x8
    /* 166F94 8007EED4 ACAE0000 */  sw         $t6, 0x0($a1)
    /* 166F98 8007EED8 37180800 */  ori        $t8, $t8, (0xF5880800 & 0xFFFF)
    /* 166F9C 8007EEDC AC780000 */  sw         $t8, 0x0($v1)
    /* 166FA0 8007EEE0 AC790004 */  sw         $t9, 0x4($v1)
    /* 166FA4 8007EEE4 8CA30000 */  lw         $v1, 0x0($a1)
    /* 166FA8 8007EEE8 3C180007 */  lui        $t8, (0x7C07C >> 16)
    /* 166FAC 8007EEEC 3718C07C */  ori        $t8, $t8, (0x7C07C & 0xFFFF)
    /* 166FB0 8007EEF0 246F0008 */  addiu      $t7, $v1, 0x8
    /* 166FB4 8007EEF4 ACAF0000 */  sw         $t7, 0x0($a1)
    /* 166FB8 8007EEF8 3C0EF200 */  lui        $t6, (0xF2000000 >> 16)
    /* 166FBC 8007EEFC AC6E0000 */  sw         $t6, 0x0($v1)
    /* 166FC0 8007EF00 AC780004 */  sw         $t8, 0x4($v1)
    /* 166FC4 8007EF04 8CA30000 */  lw         $v1, 0x0($a1)
    /* 166FC8 8007EF08 3C0F0400 */  lui        $t7, (0x400103F >> 16)
    /* 166FCC 8007EF0C 35EF103F */  ori        $t7, $t7, (0x400103F & 0xFFFF)
    /* 166FD0 8007EF10 24790008 */  addiu      $t9, $v1, 0x8
    /* 166FD4 8007EF14 ACB90000 */  sw         $t9, 0x0($a1)
    /* 166FD8 8007EF18 AC6F0000 */  sw         $t7, 0x0($v1)
    /* 166FDC 8007EF1C 8C8E0000 */  lw         $t6, 0x0($a0)
    /* 166FE0 8007EF20 25D8FFC0 */  addiu      $t8, $t6, -0x40
    /* 166FE4 8007EF24 0301C824 */  and        $t9, $t8, $at
    /* 166FE8 8007EF28 AC790004 */  sw         $t9, 0x4($v1)
    /* 166FEC 8007EF2C 8CA30000 */  lw         $v1, 0x0($a1)
    /* 166FF0 8007EF30 3C0EB100 */  lui        $t6, (0xB1000204 >> 16)
    /* 166FF4 8007EF34 35CE0204 */  ori        $t6, $t6, (0xB1000204 & 0xFFFF)
    /* 166FF8 8007EF38 246F0008 */  addiu      $t7, $v1, 0x8
    /* 166FFC 8007EF3C ACAF0000 */  sw         $t7, 0x0($a1)
    /* 167000 8007EF40 24180406 */  addiu      $t8, $zero, 0x406
    /* 167004 8007EF44 AC780004 */  sw         $t8, 0x4($v1)
    /* 167008 8007EF48 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 16700C 8007EF4C 8CA30000 */  lw         $v1, 0x0($a1)
    /* 167010 8007EF50 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
    /* 167014 8007EF54 3C18B700 */  lui        $t8, (0xB7000000 >> 16)
    /* 167018 8007EF58 24790008 */  addiu      $t9, $v1, 0x8
    /* 16701C 8007EF5C ACB90000 */  sw         $t9, 0x0($a1)
    /* 167020 8007EF60 AC600004 */  sw         $zero, 0x4($v1)
    /* 167024 8007EF64 AC6F0000 */  sw         $t7, 0x0($v1)
    /* 167028 8007EF68 8CA30000 */  lw         $v1, 0x0($a1)
    /* 16702C 8007EF6C 24192000 */  addiu      $t9, $zero, 0x2000
    /* 167030 8007EF70 246E0008 */  addiu      $t6, $v1, 0x8
    /* 167034 8007EF74 ACAE0000 */  sw         $t6, 0x0($a1)
    /* 167038 8007EF78 AC790004 */  sw         $t9, 0x4($v1)
    /* 16703C 8007EF7C AC780000 */  sw         $t8, 0x0($v1)
    /* 167040 8007EF80 8CAA0000 */  lw         $t2, 0x0($a1)
    /* 167044 8007EF84 3C0EB900 */  lui        $t6, (0xB900031D >> 16)
    /* 167048 8007EF88 35CE031D */  ori        $t6, $t6, (0xB900031D & 0xFFFF)
    /* 16704C 8007EF8C 254F0008 */  addiu      $t7, $t2, 0x8
    /* 167050 8007EF90 ACAF0000 */  sw         $t7, 0x0($a1)
    /* 167054 8007EF94 3C180055 */  lui        $t8, (0x552078 >> 16)
    /* 167058 8007EF98 37182078 */  ori        $t8, $t8, (0x552078 & 0xFFFF)
    /* 16705C 8007EF9C AD4E0000 */  sw         $t6, 0x0($t2)
    /* 167060 8007EFA0 AD580004 */  sw         $t8, 0x4($t2)
    /* 167064 8007EFA4 8CA30000 */  lw         $v1, 0x0($a1)
    /* 167068 8007EFA8 3C0FBA00 */  lui        $t7, (0xBA000E02 >> 16)
    /* 16706C 8007EFAC 35EF0E02 */  ori        $t7, $t7, (0xBA000E02 & 0xFFFF)
    /* 167070 8007EFB0 24790008 */  addiu      $t9, $v1, 0x8
    /* 167074 8007EFB4 ACB90000 */  sw         $t9, 0x0($a1)
    /* 167078 8007EFB8 340E8000 */  ori        $t6, $zero, 0x8000
    /* 16707C 8007EFBC AC6E0004 */  sw         $t6, 0x4($v1)
    /* 167080 8007EFC0 AC6F0000 */  sw         $t7, 0x0($v1)
    /* 167084 8007EFC4 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 167088 8007EFC8 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 16708C 8007EFCC 03E00008 */  jr         $ra
    /* 167090 8007EFD0 00000000 */   nop
endlabel func_8007EB1C_166BDC
