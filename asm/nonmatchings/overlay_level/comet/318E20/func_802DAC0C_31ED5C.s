nonmatching func_802DAC0C_31ED5C, 0x16C

glabel func_802DAC0C_31ED5C
    /* 31ED5C 802DAC0C 308E00FF */  andi       $t6, $a0, 0xFF
    /* 31ED60 802DAC10 000E7880 */  sll        $t7, $t6, 2
    /* 31ED64 802DAC14 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 31ED68 802DAC18 01EE7821 */  addu       $t7, $t7, $t6
    /* 31ED6C 802DAC1C 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 31ED70 802DAC20 AFB00020 */  sw         $s0, 0x20($sp)
    /* 31ED74 802DAC24 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 31ED78 802DAC28 000F7900 */  sll        $t7, $t7, 4
    /* 31ED7C 802DAC2C 01F88021 */  addu       $s0, $t7, $t8
    /* 31ED80 802DAC30 8E020020 */  lw         $v0, 0x20($s0)
    /* 31ED84 802DAC34 AFA40040 */  sw         $a0, 0x40($sp)
    /* 31ED88 802DAC38 01C02025 */  or         $a0, $t6, $zero
    /* 31ED8C 802DAC3C 30591000 */  andi       $t9, $v0, 0x1000
    /* 31ED90 802DAC40 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 31ED94 802DAC44 AFA50044 */  sw         $a1, 0x44($sp)
    /* 31ED98 802DAC48 AFA60048 */  sw         $a2, 0x48($sp)
    /* 31ED9C 802DAC4C AFA7004C */  sw         $a3, 0x4C($sp)
    /* 31EDA0 802DAC50 1320003C */  beqz       $t9, .L802DAD44_31EE94
    /* 31EDA4 802DAC54 AFA00034 */   sw        $zero, 0x34($sp)
    /* 31EDA8 802DAC58 00024140 */  sll        $t0, $v0, 5
    /* 31EDAC 802DAC5C 05010010 */  bgez       $t0, .L802DACA0_31EDF0
    /* 31EDB0 802DAC60 87AC0046 */   lh        $t4, 0x46($sp)
    /* 31EDB4 802DAC64 87A9004E */  lh         $t1, 0x4E($sp)
    /* 31EDB8 802DAC68 87AA0052 */  lh         $t2, 0x52($sp)
    /* 31EDBC 802DAC6C 3C0B802E */  lui        $t3, %hi(D_802E52D0)
    /* 31EDC0 802DAC70 256B52D0 */  addiu      $t3, $t3, %lo(D_802E52D0)
    /* 31EDC4 802DAC74 AFAB0010 */  sw         $t3, 0x10($sp)
    /* 31EDC8 802DAC78 24050002 */  addiu      $a1, $zero, 0x2
    /* 31EDCC 802DAC7C 24060002 */  addiu      $a2, $zero, 0x2
    /* 31EDD0 802DAC80 27A7003C */  addiu      $a3, $sp, 0x3C
    /* 31EDD4 802DAC84 A3AE0043 */  sb         $t6, 0x43($sp)
    /* 31EDD8 802DAC88 A7A9003C */  sh         $t1, 0x3C($sp)
    /* 31EDDC 802DAC8C 0C0207C6 */  jal        func_80081F18_90EC8
    /* 31EDE0 802DAC90 A7AA003E */   sh        $t2, 0x3E($sp)
    /* 31EDE4 802DAC94 00401825 */  or         $v1, $v0, $zero
    /* 31EDE8 802DAC98 1000000E */  b          .L802DACD4_31EE24
    /* 31EDEC 802DAC9C A3A2003B */   sb        $v0, 0x3B($sp)
  .L802DACA0_31EDF0:
    /* 31EDF0 802DACA0 87AD004A */  lh         $t5, 0x4A($sp)
    /* 31EDF4 802DACA4 3C0E802E */  lui        $t6, %hi(D_802E52C8)
    /* 31EDF8 802DACA8 25CE52C8 */  addiu      $t6, $t6, %lo(D_802E52C8)
    /* 31EDFC 802DACAC A7AC003C */  sh         $t4, 0x3C($sp)
    /* 31EE00 802DACB0 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 31EE04 802DACB4 24050002 */  addiu      $a1, $zero, 0x2
    /* 31EE08 802DACB8 24060002 */  addiu      $a2, $zero, 0x2
    /* 31EE0C 802DACBC 27A7003C */  addiu      $a3, $sp, 0x3C
    /* 31EE10 802DACC0 A3A40043 */  sb         $a0, 0x43($sp)
    /* 31EE14 802DACC4 0C0207C6 */  jal        func_80081F18_90EC8
    /* 31EE18 802DACC8 A7AD003E */   sh        $t5, 0x3E($sp)
    /* 31EE1C 802DACCC 00401825 */  or         $v1, $v0, $zero
    /* 31EE20 802DACD0 A3A2003B */  sb         $v0, 0x3B($sp)
  .L802DACD4_31EE24:
    /* 31EE24 802DACD4 306F00FF */  andi       $t7, $v1, 0xFF
    /* 31EE28 802DACD8 15E00015 */  bnez       $t7, .L802DAD30_31EE80
    /* 31EE2C 802DACDC 24050400 */   addiu     $a1, $zero, 0x400
    /* 31EE30 802DACE0 A600001E */  sh         $zero, 0x1E($s0)
    /* 31EE34 802DACE4 0C0213FA */  jal        func_80084FE8_93F98
    /* 31EE38 802DACE8 93A40043 */   lbu       $a0, 0x43($sp)
    /* 31EE3C 802DACEC 1040000E */  beqz       $v0, .L802DAD28_31EE78
    /* 31EE40 802DACF0 8FB80054 */   lw        $t8, 0x54($sp)
    /* 31EE44 802DACF4 2B01012D */  slti       $at, $t8, 0x12D
    /* 31EE48 802DACF8 5420000C */  bnel       $at, $zero, .L802DAD2C_31EE7C
    /* 31EE4C 802DACFC 24190001 */   addiu     $t9, $zero, 0x1
    /* 31EE50 802DAD00 0C000E38 */  jal        func_800038E0_44E0
    /* 31EE54 802DAD04 00000000 */   nop
    /* 31EE58 802DAD08 2401012C */  addiu      $at, $zero, 0x12C
    /* 31EE5C 802DAD0C 0041001A */  div        $zero, $v0, $at
    /* 31EE60 802DAD10 00003010 */  mfhi       $a2
    /* 31EE64 802DAD14 93A40043 */  lbu        $a0, 0x43($sp)
    /* 31EE68 802DAD18 0C021C73 */  jal        func_800871CC_9617C
    /* 31EE6C 802DAD1C 00002825 */   or        $a1, $zero, $zero
    /* 31EE70 802DAD20 10000004 */  b          .L802DAD34_31EE84
    /* 31EE74 802DAD24 93A8003B */   lbu       $t0, 0x3B($sp)
  .L802DAD28_31EE78:
    /* 31EE78 802DAD28 24190001 */  addiu      $t9, $zero, 0x1
  .L802DAD2C_31EE7C:
    /* 31EE7C 802DAD2C AFB90034 */  sw         $t9, 0x34($sp)
  .L802DAD30_31EE80:
    /* 31EE80 802DAD30 93A8003B */  lbu        $t0, 0x3B($sp)
  .L802DAD34_31EE84:
    /* 31EE84 802DAD34 24010002 */  addiu      $at, $zero, 0x2
    /* 31EE88 802DAD38 55010003 */  bnel       $t0, $at, .L802DAD48_31EE98
    /* 31EE8C 802DAD3C 8FA90034 */   lw        $t1, 0x34($sp)
    /* 31EE90 802DAD40 A2000036 */  sb         $zero, 0x36($s0)
  .L802DAD44_31EE94:
    /* 31EE94 802DAD44 8FA90034 */  lw         $t1, 0x34($sp)
  .L802DAD48_31EE98:
    /* 31EE98 802DAD48 51200007 */  beql       $t1, $zero, .L802DAD68_31EEB8
    /* 31EE9C 802DAD4C 8FBF0024 */   lw        $ra, 0x24($sp)
    /* 31EEA0 802DAD50 8E0A0020 */  lw         $t2, 0x20($s0)
    /* 31EEA4 802DAD54 2401EFFF */  addiu      $at, $zero, -0x1001
    /* 31EEA8 802DAD58 A600002C */  sh         $zero, 0x2C($s0)
    /* 31EEAC 802DAD5C 01415824 */  and        $t3, $t2, $at
    /* 31EEB0 802DAD60 AE0B0020 */  sw         $t3, 0x20($s0)
    /* 31EEB4 802DAD64 8FBF0024 */  lw         $ra, 0x24($sp)
  .L802DAD68_31EEB8:
    /* 31EEB8 802DAD68 8FB00020 */  lw         $s0, 0x20($sp)
    /* 31EEBC 802DAD6C 27BD0040 */  addiu      $sp, $sp, 0x40
    /* 31EEC0 802DAD70 03E00008 */  jr         $ra
    /* 31EEC4 802DAD74 00000000 */   nop
endlabel func_802DAC0C_31ED5C
