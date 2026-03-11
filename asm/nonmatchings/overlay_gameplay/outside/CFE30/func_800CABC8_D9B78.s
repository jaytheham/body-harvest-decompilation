nonmatching func_800CABC8_D9B78, 0x5D4

glabel func_800CABC8_D9B78
    /* D9B78 800CABC8 308E00FF */  andi       $t6, $a0, 0xFF
    /* D9B7C 800CABCC 000E7880 */  sll        $t7, $t6, 2
    /* D9B80 800CABD0 01EE7823 */  subu       $t7, $t7, $t6
    /* D9B84 800CABD4 000F7880 */  sll        $t7, $t7, 2
    /* D9B88 800CABD8 3C028015 */  lui        $v0, %hi(D_8015408E)
    /* D9B8C 800CABDC 004F1021 */  addu       $v0, $v0, $t7
    /* D9B90 800CABE0 8442408E */  lh         $v0, %lo(D_8015408E)($v0)
    /* D9B94 800CABE4 2406001C */  addiu      $a2, $zero, 0x1C
    /* D9B98 800CABE8 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* D9B9C 800CABEC 00460019 */  multu      $v0, $a2
    /* D9BA0 800CABF0 AFBF004C */  sw         $ra, 0x4C($sp)
    /* D9BA4 800CABF4 3C1F8015 */  lui        $ra, %hi(D_80154318)
    /* D9BA8 800CABF8 27FF4318 */  addiu      $ra, $ra, %lo(D_80154318)
    /* D9BAC 800CABFC AFB30034 */  sw         $s3, 0x34($sp)
    /* D9BB0 800CAC00 AFB00028 */  sw         $s0, 0x28($sp)
    /* D9BB4 800CAC04 3C108015 */  lui        $s0, %hi(D_80156EDA)
    /* D9BB8 800CAC08 AFBE0048 */  sw         $fp, 0x48($sp)
    /* D9BBC 800CAC0C AFB70044 */  sw         $s7, 0x44($sp)
    /* D9BC0 800CAC10 AFB60040 */  sw         $s6, 0x40($sp)
    /* D9BC4 800CAC14 0000C012 */  mflo       $t8
    /* D9BC8 800CAC18 03F89821 */  addu       $s3, $ra, $t8
    /* D9BCC 800CAC1C 86630004 */  lh         $v1, 0x4($s3)
    /* D9BD0 800CAC20 AFB5003C */  sw         $s5, 0x3C($sp)
    /* D9BD4 800CAC24 AFB40038 */  sw         $s4, 0x38($sp)
    /* D9BD8 800CAC28 00660019 */  multu      $v1, $a2
    /* D9BDC 800CAC2C AFB20030 */  sw         $s2, 0x30($sp)
    /* D9BE0 800CAC30 AFB1002C */  sw         $s1, 0x2C($sp)
    /* D9BE4 800CAC34 F7BA0020 */  sdc1       $f26, 0x20($sp)
    /* D9BE8 800CAC38 F7B80018 */  sdc1       $f24, 0x18($sp)
    /* D9BEC 800CAC3C F7B60010 */  sdc1       $f22, 0x10($sp)
    /* D9BF0 800CAC40 F7B40008 */  sdc1       $f20, 0x8($sp)
    /* D9BF4 800CAC44 AFA40050 */  sw         $a0, 0x50($sp)
    /* D9BF8 800CAC48 26106EDA */  addiu      $s0, $s0, %lo(D_80156EDA)
    /* D9BFC 800CAC4C 0000C812 */  mflo       $t9
    /* D9C00 800CAC50 03F92821 */  addu       $a1, $ra, $t9
    /* D9C04 800CAC54 94AE000E */  lhu        $t6, 0xE($a1)
    /* D9C08 800CAC58 84AC0004 */  lh         $t4, 0x4($a1)
    /* D9C0C 800CAC5C 5DC00140 */  bgtzl      $t6, .L800CB160_DA110
    /* D9C10 800CAC60 8FBF004C */   lw        $ra, 0x4C($sp)
    /* D9C14 800CAC64 860F0000 */  lh         $t7, 0x0($s0)
    /* D9C18 800CAC68 3C188015 */  lui        $t8, %hi(D_80156ED9)
    /* D9C1C 800CAC6C 29E1028B */  slti       $at, $t7, 0x28B
    /* D9C20 800CAC70 5020013B */  beql       $at, $zero, .L800CB160_DA110
    /* D9C24 800CAC74 8FBF004C */   lw        $ra, 0x4C($sp)
    /* D9C28 800CAC78 93186ED9 */  lbu        $t8, %lo(D_80156ED9)($t8)
    /* D9C2C 800CAC7C 24010002 */  addiu      $at, $zero, 0x2
    /* D9C30 800CAC80 3C048006 */  lui        $a0, %hi(D_8005BB2C)
    /* D9C34 800CAC84 13010135 */  beq        $t8, $at, .L800CB15C_DA10C
    /* D9C38 800CAC88 2484BB2C */   addiu     $a0, $a0, %lo(D_8005BB2C)
    /* D9C3C 800CAC8C 8C830000 */  lw         $v1, 0x0($a0)
    /* D9C40 800CAC90 3C0DE700 */  lui        $t5, (0xE7000000 >> 16)
    /* D9C44 800CAC94 3C0FFC30 */  lui        $t7, (0xFC30B261 >> 16)
    /* D9C48 800CAC98 24790008 */  addiu      $t9, $v1, 0x8
    /* D9C4C 800CAC9C AC990000 */  sw         $t9, 0x0($a0)
    /* D9C50 800CACA0 AC600004 */  sw         $zero, 0x4($v1)
    /* D9C54 800CACA4 AC6D0000 */  sw         $t5, 0x0($v1)
    /* D9C58 800CACA8 8C830000 */  lw         $v1, 0x0($a0)
    /* D9C5C 800CACAC 3C185566 */  lui        $t8, (0x5566FF7F >> 16)
    /* D9C60 800CACB0 3718FF7F */  ori        $t8, $t8, (0x5566FF7F & 0xFFFF)
    /* D9C64 800CACB4 246E0008 */  addiu      $t6, $v1, 0x8
    /* D9C68 800CACB8 AC8E0000 */  sw         $t6, 0x0($a0)
    /* D9C6C 800CACBC 35EFB261 */  ori        $t7, $t7, (0xFC30B261 & 0xFFFF)
    /* D9C70 800CACC0 AC6F0000 */  sw         $t7, 0x0($v1)
    /* D9C74 800CACC4 AC780004 */  sw         $t8, 0x4($v1)
    /* D9C78 800CACC8 8C830000 */  lw         $v1, 0x0($a0)
    /* D9C7C 800CACCC 3C161FFF */  lui        $s6, (0x1FFFFFFF >> 16)
    /* D9C80 800CACD0 3C0F0101 */  lui        $t7, %hi(D_100D700)
    /* D9C84 800CACD4 24790008 */  addiu      $t9, $v1, 0x8
    /* D9C88 800CACD8 36D6FFFF */  ori        $s6, $s6, (0x1FFFFFFF & 0xFFFF)
    /* D9C8C 800CACDC AC990000 */  sw         $t9, 0x0($a0)
    /* D9C90 800CACE0 25EFD700 */  addiu      $t7, $t7, %lo(D_100D700)
    /* D9C94 800CACE4 01F6C024 */  and        $t8, $t7, $s6
    /* D9C98 800CACE8 3C0EFD70 */  lui        $t6, (0xFD700000 >> 16)
    /* D9C9C 800CACEC AC6E0000 */  sw         $t6, 0x0($v1)
    /* D9CA0 800CACF0 AC780004 */  sw         $t8, 0x4($v1)
    /* D9CA4 800CACF4 8C830000 */  lw         $v1, 0x0($a0)
    /* D9CA8 800CACF8 3C0F0708 */  lui        $t7, (0x7080200 >> 16)
    /* D9CAC 800CACFC 35EF0200 */  ori        $t7, $t7, (0x7080200 & 0xFFFF)
    /* D9CB0 800CAD00 24790008 */  addiu      $t9, $v1, 0x8
    /* D9CB4 800CAD04 AC990000 */  sw         $t9, 0x0($a0)
    /* D9CB8 800CAD08 3C0EF570 */  lui        $t6, (0xF5700000 >> 16)
    /* D9CBC 800CAD0C AC6E0000 */  sw         $t6, 0x0($v1)
    /* D9CC0 800CAD10 AC6F0004 */  sw         $t7, 0x4($v1)
    /* D9CC4 800CAD14 8C830000 */  lw         $v1, 0x0($a0)
    /* D9CC8 800CAD18 3C19E600 */  lui        $t9, (0xE6000000 >> 16)
    /* D9CCC 800CAD1C 3C0FF300 */  lui        $t7, (0xF3000000 >> 16)
    /* D9CD0 800CAD20 24780008 */  addiu      $t8, $v1, 0x8
    /* D9CD4 800CAD24 AC980000 */  sw         $t8, 0x0($a0)
    /* D9CD8 800CAD28 AC600004 */  sw         $zero, 0x4($v1)
    /* D9CDC 800CAD2C AC790000 */  sw         $t9, 0x0($v1)
    /* D9CE0 800CAD30 8C830000 */  lw         $v1, 0x0($a0)
    /* D9CE4 800CAD34 3C180707 */  lui        $t8, (0x707F400 >> 16)
    /* D9CE8 800CAD38 3718F400 */  ori        $t8, $t8, (0x707F400 & 0xFFFF)
    /* D9CEC 800CAD3C 246E0008 */  addiu      $t6, $v1, 0x8
    /* D9CF0 800CAD40 AC8E0000 */  sw         $t6, 0x0($a0)
    /* D9CF4 800CAD44 AC780004 */  sw         $t8, 0x4($v1)
    /* D9CF8 800CAD48 AC6F0000 */  sw         $t7, 0x0($v1)
    /* D9CFC 800CAD4C 8C830000 */  lw         $v1, 0x0($a0)
    /* D9D00 800CAD50 3C0FF568 */  lui        $t7, (0xF5680400 >> 16)
    /* D9D04 800CAD54 3C180008 */  lui        $t8, (0x80200 >> 16)
    /* D9D08 800CAD58 24790008 */  addiu      $t9, $v1, 0x8
    /* D9D0C 800CAD5C AC990000 */  sw         $t9, 0x0($a0)
    /* D9D10 800CAD60 AC600004 */  sw         $zero, 0x4($v1)
    /* D9D14 800CAD64 AC6D0000 */  sw         $t5, 0x0($v1)
    /* D9D18 800CAD68 8C830000 */  lw         $v1, 0x0($a0)
    /* D9D1C 800CAD6C 37180200 */  ori        $t8, $t8, (0x80200 & 0xFFFF)
    /* D9D20 800CAD70 35EF0400 */  ori        $t7, $t7, (0xF5680400 & 0xFFFF)
    /* D9D24 800CAD74 246E0008 */  addiu      $t6, $v1, 0x8
    /* D9D28 800CAD78 AC8E0000 */  sw         $t6, 0x0($a0)
    /* D9D2C 800CAD7C AC780004 */  sw         $t8, 0x4($v1)
    /* D9D30 800CAD80 AC6F0000 */  sw         $t7, 0x0($v1)
    /* D9D34 800CAD84 8C830000 */  lw         $v1, 0x0($a0)
    /* D9D38 800CAD88 3C0F0003 */  lui        $t7, (0x3C03C >> 16)
    /* D9D3C 800CAD8C 35EFC03C */  ori        $t7, $t7, (0x3C03C & 0xFFFF)
    /* D9D40 800CAD90 24790008 */  addiu      $t9, $v1, 0x8
    /* D9D44 800CAD94 AC990000 */  sw         $t9, 0x0($a0)
    /* D9D48 800CAD98 3C0EF200 */  lui        $t6, (0xF2000000 >> 16)
    /* D9D4C 800CAD9C AC6E0000 */  sw         $t6, 0x0($v1)
    /* D9D50 800CADA0 AC6F0004 */  sw         $t7, 0x4($v1)
    /* D9D54 800CADA4 8C830000 */  lw         $v1, 0x0($a0)
    /* D9D58 800CADA8 2417FFFA */  addiu      $s7, $zero, -0x6
    /* D9D5C 800CADAC 241EFFFB */  addiu      $fp, $zero, -0x5
    /* D9D60 800CADB0 24780008 */  addiu      $t8, $v1, 0x8
    /* D9D64 800CADB4 AC980000 */  sw         $t8, 0x0($a0)
    /* D9D68 800CADB8 AC600004 */  sw         $zero, 0x4($v1)
    /* D9D6C 800CADBC 119700E7 */  beq        $t4, $s7, .L800CB15C_DA10C
    /* D9D70 800CADC0 AC6D0000 */   sw        $t5, 0x0($v1)
    /* D9D74 800CADC4 119E00E5 */  beq        $t4, $fp, .L800CB15C_DA10C
    /* D9D78 800CADC8 26660008 */   addiu     $a2, $s3, 0x8
    /* D9D7C 800CADCC 3C150006 */  lui        $s5, (0x60204 >> 16)
    /* D9D80 800CADD0 3C14B100 */  lui        $s4, (0xB1000206 >> 16)
    /* D9D84 800CADD4 3C130400 */  lui        $s3, (0x400103F >> 16)
    /* D9D88 800CADD8 3C0A8015 */  lui        $t2, %hi(D_80153AB8)
    /* D9D8C 800CADDC 3C028006 */  lui        $v0, %hi(D_8005BB34)
    /* D9D90 800CADE0 2442BB34 */  addiu      $v0, $v0, %lo(D_8005BB34)
    /* D9D94 800CADE4 254A3AB8 */  addiu      $t2, $t2, %lo(D_80153AB8)
    /* D9D98 800CADE8 3673103F */  ori        $s3, $s3, (0x400103F & 0xFFFF)
    /* D9D9C 800CADEC 36940206 */  ori        $s4, $s4, (0xB1000206 & 0xFFFF)
    /* D9DA0 800CADF0 36B50204 */  ori        $s5, $s5, (0x60204 & 0xFFFF)
    /* D9DA4 800CADF4 3C12FB00 */  lui        $s2, (0xFB000000 >> 16)
    /* D9DA8 800CADF8 3C11FA00 */  lui        $s1, (0xFA000000 >> 16)
    /* D9DAC 800CADFC 240B0400 */  addiu      $t3, $zero, 0x400
    /* D9DB0 800CAE00 8C830000 */  lw         $v1, 0x0($a0)
  .L800CAE04_D9DB4:
    /* D9DB4 800CAE04 000C70C0 */  sll        $t6, $t4, 3
    /* D9DB8 800CAE08 01CC7023 */  subu       $t6, $t6, $t4
    /* D9DBC 800CAE0C 24790008 */  addiu      $t9, $v1, 0x8
    /* D9DC0 800CAE10 AC990000 */  sw         $t9, 0x0($a0)
    /* D9DC4 800CAE14 AC710000 */  sw         $s1, 0x0($v1)
    /* D9DC8 800CAE18 90D80006 */  lbu        $t8, 0x6($a2)
    /* D9DCC 800CAE1C 90CF0007 */  lbu        $t7, 0x7($a2)
    /* D9DD0 800CAE20 000E7080 */  sll        $t6, $t6, 2
    /* D9DD4 800CAE24 0018CE00 */  sll        $t9, $t8, 24
    /* D9DD8 800CAE28 03EE2821 */  addu       $a1, $ra, $t6
    /* D9DDC 800CAE2C 000FC400 */  sll        $t8, $t7, 16
    /* D9DE0 800CAE30 03387025 */  or         $t6, $t9, $t8
    /* D9DE4 800CAE34 90D90008 */  lbu        $t9, 0x8($a2)
    /* D9DE8 800CAE38 0019C200 */  sll        $t8, $t9, 8
    /* D9DEC 800CAE3C 01D87825 */  or         $t7, $t6, $t8
    /* D9DF0 800CAE40 90AE0011 */  lbu        $t6, 0x11($a1)
    /* D9DF4 800CAE44 01EEC025 */  or         $t8, $t7, $t6
    /* D9DF8 800CAE48 AC780004 */  sw         $t8, 0x4($v1)
    /* D9DFC 800CAE4C 8C830000 */  lw         $v1, 0x0($a0)
    /* D9E00 800CAE50 24790008 */  addiu      $t9, $v1, 0x8
    /* D9E04 800CAE54 AC990000 */  sw         $t9, 0x0($a0)
    /* D9E08 800CAE58 AC720000 */  sw         $s2, 0x0($v1)
    /* D9E0C 800CAE5C 90CE0009 */  lbu        $t6, 0x9($a2)
    /* D9E10 800CAE60 90CF000A */  lbu        $t7, 0xA($a2)
    /* D9E14 800CAE64 000EC600 */  sll        $t8, $t6, 24
    /* D9E18 800CAE68 000F7400 */  sll        $t6, $t7, 16
    /* D9E1C 800CAE6C 030EC825 */  or         $t9, $t8, $t6
    /* D9E20 800CAE70 90D8000B */  lbu        $t8, 0xB($a2)
    /* D9E24 800CAE74 00187200 */  sll        $t6, $t8, 8
    /* D9E28 800CAE78 032E7825 */  or         $t7, $t9, $t6
    /* D9E2C 800CAE7C 90B90011 */  lbu        $t9, 0x11($a1)
    /* D9E30 800CAE80 01F97025 */  or         $t6, $t7, $t9
    /* D9E34 800CAE84 AC6E0004 */  sw         $t6, 0x4($v1)
    /* D9E38 800CAE88 8C830000 */  lw         $v1, 0x0($a0)
    /* D9E3C 800CAE8C 24780008 */  addiu      $t8, $v1, 0x8
    /* D9E40 800CAE90 AC980000 */  sw         $t8, 0x0($a0)
    /* D9E44 800CAE94 AC600004 */  sw         $zero, 0x4($v1)
    /* D9E48 800CAE98 AC6D0000 */  sw         $t5, 0x0($v1)
    /* D9E4C 800CAE9C 84B80002 */  lh         $t8, 0x2($a1)
    /* D9E50 800CAEA0 84AF0008 */  lh         $t7, 0x8($a1)
    /* D9E54 800CAEA4 84B9000A */  lh         $t9, 0xA($a1)
    /* D9E58 800CAEA8 44985000 */  mtc1       $t8, $f10
    /* D9E5C 800CAEAC 448F2000 */  mtc1       $t7, $f4
    /* D9E60 800CAEB0 84AE000C */  lh         $t6, 0xC($a1)
    /* D9E64 800CAEB4 46805420 */  cvt.s.w    $f16, $f10
    /* D9E68 800CAEB8 44993000 */  mtc1       $t9, $f6
    /* D9E6C 800CAEBC 448E4000 */  mtc1       $t6, $f8
    /* D9E70 800CAEC0 C54A000C */  lwc1       $f10, 0xC($t2)
    /* D9E74 800CAEC4 8C4E0000 */  lw         $t6, 0x0($v0)
    /* D9E78 800CAEC8 46802020 */  cvt.s.w    $f0, $f4
    /* D9E7C 800CAECC C5440000 */  lwc1       $f4, 0x0($t2)
    /* D9E80 800CAED0 46048382 */  mul.s      $f14, $f16, $f4
    /* D9E84 800CAED4 C5440010 */  lwc1       $f4, 0x10($t2)
    /* D9E88 800CAED8 468030A0 */  cvt.s.w    $f2, $f6
    /* D9E8C 800CAEDC C5460004 */  lwc1       $f6, 0x4($t2)
    /* D9E90 800CAEE0 46068482 */  mul.s      $f18, $f16, $f6
    /* D9E94 800CAEE4 C5460014 */  lwc1       $f6, 0x14($t2)
    /* D9E98 800CAEE8 46804320 */  cvt.s.w    $f12, $f8
    /* D9E9C 800CAEEC C5480008 */  lwc1       $f8, 0x8($t2)
    /* D9EA0 800CAEF0 46088502 */  mul.s      $f20, $f16, $f8
    /* D9EA4 800CAEF4 460E0200 */  add.s      $f8, $f0, $f14
    /* D9EA8 800CAEF8 460A8582 */  mul.s      $f22, $f16, $f10
    /* D9EAC 800CAEFC 00000000 */  nop
    /* D9EB0 800CAF00 46048602 */  mul.s      $f24, $f16, $f4
    /* D9EB4 800CAF04 46121100 */  add.s      $f4, $f2, $f18
    /* D9EB8 800CAF08 46068682 */  mul.s      $f26, $f16, $f6
    /* D9EBC 800CAF0C 4600428D */  trunc.w.s  $f10, $f8
    /* D9EC0 800CAF10 46146200 */  add.s      $f8, $f12, $f20
    /* D9EC4 800CAF14 44195000 */  mfc1       $t9, $f10
    /* D9EC8 800CAF18 4600218D */  trunc.w.s  $f6, $f4
    /* D9ECC 800CAF1C A5D90000 */  sh         $t9, 0x0($t6)
    /* D9ED0 800CAF20 8C590000 */  lw         $t9, 0x0($v0)
    /* D9ED4 800CAF24 4600428D */  trunc.w.s  $f10, $f8
    /* D9ED8 800CAF28 440F3000 */  mfc1       $t7, $f6
    /* D9EDC 800CAF2C 46160100 */  add.s      $f4, $f0, $f22
    /* D9EE0 800CAF30 A72F0002 */  sh         $t7, 0x2($t9)
    /* D9EE4 800CAF34 8C4F0000 */  lw         $t7, 0x0($v0)
    /* D9EE8 800CAF38 44185000 */  mfc1       $t8, $f10
    /* D9EEC 800CAF3C 4600218D */  trunc.w.s  $f6, $f4
    /* D9EF0 800CAF40 A5F80004 */  sh         $t8, 0x4($t7)
    /* D9EF4 800CAF44 8C590000 */  lw         $t9, 0x0($v0)
    /* D9EF8 800CAF48 46181200 */  add.s      $f8, $f2, $f24
    /* D9EFC 800CAF4C A7200006 */  sh         $zero, 0x6($t9)
    /* D9F00 800CAF50 8C4E0000 */  lw         $t6, 0x0($v0)
    /* D9F04 800CAF54 4600428D */  trunc.w.s  $f10, $f8
    /* D9F08 800CAF58 A5C00008 */  sh         $zero, 0x8($t6)
    /* D9F0C 800CAF5C 8C580000 */  lw         $t8, 0x0($v0)
    /* D9F10 800CAF60 461A6100 */  add.s      $f4, $f12, $f26
    /* D9F14 800CAF64 A700000A */  sh         $zero, 0xA($t8)
    /* D9F18 800CAF68 8C4F0000 */  lw         $t7, 0x0($v0)
    /* D9F1C 800CAF6C 460E0201 */  sub.s      $f8, $f0, $f14
    /* D9F20 800CAF70 A1E0000C */  sb         $zero, 0xC($t7)
    /* D9F24 800CAF74 8C590000 */  lw         $t9, 0x0($v0)
    /* D9F28 800CAF78 A320000D */  sb         $zero, 0xD($t9)
    /* D9F2C 800CAF7C 8C4E0000 */  lw         $t6, 0x0($v0)
    /* D9F30 800CAF80 A1C0000E */  sb         $zero, 0xE($t6)
    /* D9F34 800CAF84 8C580000 */  lw         $t8, 0x0($v0)
    /* D9F38 800CAF88 440E5000 */  mfc1       $t6, $f10
    /* D9F3C 800CAF8C 4600428D */  trunc.w.s  $f10, $f8
    /* D9F40 800CAF90 A300000F */  sb         $zero, 0xF($t8)
    /* D9F44 800CAF94 8C4F0000 */  lw         $t7, 0x0($v0)
    /* D9F48 800CAF98 44183000 */  mfc1       $t8, $f6
    /* D9F4C 800CAF9C 4600218D */  trunc.w.s  $f6, $f4
    /* D9F50 800CAFA0 25F90010 */  addiu      $t9, $t7, 0x10
    /* D9F54 800CAFA4 AC590000 */  sw         $t9, 0x0($v0)
    /* D9F58 800CAFA8 A7380000 */  sh         $t8, 0x0($t9)
    /* D9F5C 800CAFAC 8C580000 */  lw         $t8, 0x0($v0)
    /* D9F60 800CAFB0 44193000 */  mfc1       $t9, $f6
    /* D9F64 800CAFB4 46121101 */  sub.s      $f4, $f2, $f18
    /* D9F68 800CAFB8 A70E0002 */  sh         $t6, 0x2($t8)
    /* D9F6C 800CAFBC 8C4E0000 */  lw         $t6, 0x0($v0)
    /* D9F70 800CAFC0 46146201 */  sub.s      $f8, $f12, $f20
    /* D9F74 800CAFC4 A5D90004 */  sh         $t9, 0x4($t6)
    /* D9F78 800CAFC8 8C580000 */  lw         $t8, 0x0($v0)
    /* D9F7C 800CAFCC 4600218D */  trunc.w.s  $f6, $f4
    /* D9F80 800CAFD0 A7000006 */  sh         $zero, 0x6($t8)
    /* D9F84 800CAFD4 8C4F0000 */  lw         $t7, 0x0($v0)
    /* D9F88 800CAFD8 46160101 */  sub.s      $f4, $f0, $f22
    /* D9F8C 800CAFDC A5EB0008 */  sh         $t3, 0x8($t7)
    /* D9F90 800CAFE0 8C590000 */  lw         $t9, 0x0($v0)
    /* D9F94 800CAFE4 A720000A */  sh         $zero, 0xA($t9)
    /* D9F98 800CAFE8 8C4E0000 */  lw         $t6, 0x0($v0)
    /* D9F9C 800CAFEC A1C0000C */  sb         $zero, 0xC($t6)
    /* D9FA0 800CAFF0 8C580000 */  lw         $t8, 0x0($v0)
    /* D9FA4 800CAFF4 A300000D */  sb         $zero, 0xD($t8)
    /* D9FA8 800CAFF8 8C4F0000 */  lw         $t7, 0x0($v0)
    /* D9FAC 800CAFFC A1E0000E */  sb         $zero, 0xE($t7)
    /* D9FB0 800CB000 8C590000 */  lw         $t9, 0x0($v0)
    /* D9FB4 800CB004 440F3000 */  mfc1       $t7, $f6
    /* D9FB8 800CB008 4600218D */  trunc.w.s  $f6, $f4
    /* D9FBC 800CB00C A320000F */  sb         $zero, 0xF($t9)
    /* D9FC0 800CB010 8C4E0000 */  lw         $t6, 0x0($v0)
    /* D9FC4 800CB014 44195000 */  mfc1       $t9, $f10
    /* D9FC8 800CB018 4600428D */  trunc.w.s  $f10, $f8
    /* D9FCC 800CB01C 25D80010 */  addiu      $t8, $t6, 0x10
    /* D9FD0 800CB020 AC580000 */  sw         $t8, 0x0($v0)
    /* D9FD4 800CB024 A7190000 */  sh         $t9, 0x0($t8)
    /* D9FD8 800CB028 8C590000 */  lw         $t9, 0x0($v0)
    /* D9FDC 800CB02C 44185000 */  mfc1       $t8, $f10
    /* D9FE0 800CB030 46181201 */  sub.s      $f8, $f2, $f24
    /* D9FE4 800CB034 A72F0002 */  sh         $t7, 0x2($t9)
    /* D9FE8 800CB038 8C4F0000 */  lw         $t7, 0x0($v0)
    /* D9FEC 800CB03C 461A6101 */  sub.s      $f4, $f12, $f26
    /* D9FF0 800CB040 A5F80004 */  sh         $t8, 0x4($t7)
    /* D9FF4 800CB044 8C590000 */  lw         $t9, 0x0($v0)
    /* D9FF8 800CB048 4600428D */  trunc.w.s  $f10, $f8
    /* D9FFC 800CB04C A7200006 */  sh         $zero, 0x6($t9)
    /* DA000 800CB050 8C4E0000 */  lw         $t6, 0x0($v0)
    /* DA004 800CB054 A5CB0008 */  sh         $t3, 0x8($t6)
    /* DA008 800CB058 8C580000 */  lw         $t8, 0x0($v0)
    /* DA00C 800CB05C A70B000A */  sh         $t3, 0xA($t8)
    /* DA010 800CB060 8C4F0000 */  lw         $t7, 0x0($v0)
    /* DA014 800CB064 A1E0000C */  sb         $zero, 0xC($t7)
    /* DA018 800CB068 8C590000 */  lw         $t9, 0x0($v0)
    /* DA01C 800CB06C A320000D */  sb         $zero, 0xD($t9)
    /* DA020 800CB070 8C4E0000 */  lw         $t6, 0x0($v0)
    /* DA024 800CB074 A1C0000E */  sb         $zero, 0xE($t6)
    /* DA028 800CB078 8C580000 */  lw         $t8, 0x0($v0)
    /* DA02C 800CB07C 440E5000 */  mfc1       $t6, $f10
    /* DA030 800CB080 A300000F */  sb         $zero, 0xF($t8)
    /* DA034 800CB084 8C4F0000 */  lw         $t7, 0x0($v0)
    /* DA038 800CB088 44183000 */  mfc1       $t8, $f6
    /* DA03C 800CB08C 4600218D */  trunc.w.s  $f6, $f4
    /* DA040 800CB090 25F90010 */  addiu      $t9, $t7, 0x10
    /* DA044 800CB094 AC590000 */  sw         $t9, 0x0($v0)
    /* DA048 800CB098 A7380000 */  sh         $t8, 0x0($t9)
    /* DA04C 800CB09C 8C580000 */  lw         $t8, 0x0($v0)
    /* DA050 800CB0A0 44193000 */  mfc1       $t9, $f6
    /* DA054 800CB0A4 A70E0002 */  sh         $t6, 0x2($t8)
    /* DA058 800CB0A8 8C4E0000 */  lw         $t6, 0x0($v0)
    /* DA05C 800CB0AC A5D90004 */  sh         $t9, 0x4($t6)
    /* DA060 800CB0B0 8C580000 */  lw         $t8, 0x0($v0)
    /* DA064 800CB0B4 A7000006 */  sh         $zero, 0x6($t8)
    /* DA068 800CB0B8 8C4F0000 */  lw         $t7, 0x0($v0)
    /* DA06C 800CB0BC A5E00008 */  sh         $zero, 0x8($t7)
    /* DA070 800CB0C0 8C590000 */  lw         $t9, 0x0($v0)
    /* DA074 800CB0C4 A72B000A */  sh         $t3, 0xA($t9)
    /* DA078 800CB0C8 8C4E0000 */  lw         $t6, 0x0($v0)
    /* DA07C 800CB0CC A1C0000C */  sb         $zero, 0xC($t6)
    /* DA080 800CB0D0 8C580000 */  lw         $t8, 0x0($v0)
    /* DA084 800CB0D4 A300000D */  sb         $zero, 0xD($t8)
    /* DA088 800CB0D8 8C4F0000 */  lw         $t7, 0x0($v0)
    /* DA08C 800CB0DC A1E0000E */  sb         $zero, 0xE($t7)
    /* DA090 800CB0E0 8C590000 */  lw         $t9, 0x0($v0)
    /* DA094 800CB0E4 A320000F */  sb         $zero, 0xF($t9)
    /* DA098 800CB0E8 8C4E0000 */  lw         $t6, 0x0($v0)
    /* DA09C 800CB0EC 8C830000 */  lw         $v1, 0x0($a0)
    /* DA0A0 800CB0F0 25D80010 */  addiu      $t8, $t6, 0x10
    /* DA0A4 800CB0F4 246F0008 */  addiu      $t7, $v1, 0x8
    /* DA0A8 800CB0F8 AC580000 */  sw         $t8, 0x0($v0)
    /* DA0AC 800CB0FC AC8F0000 */  sw         $t7, 0x0($a0)
    /* DA0B0 800CB100 AC730000 */  sw         $s3, 0x0($v1)
    /* DA0B4 800CB104 8C590000 */  lw         $t9, 0x0($v0)
    /* DA0B8 800CB108 272EFFC0 */  addiu      $t6, $t9, -0x40
    /* DA0BC 800CB10C 01D6C024 */  and        $t8, $t6, $s6
    /* DA0C0 800CB110 AC780004 */  sw         $t8, 0x4($v1)
    /* DA0C4 800CB114 8C830000 */  lw         $v1, 0x0($a0)
    /* DA0C8 800CB118 246F0008 */  addiu      $t7, $v1, 0x8
    /* DA0CC 800CB11C AC8F0000 */  sw         $t7, 0x0($a0)
    /* DA0D0 800CB120 AC750004 */  sw         $s5, 0x4($v1)
    /* DA0D4 800CB124 AC740000 */  sw         $s4, 0x0($v1)
    /* DA0D8 800CB128 86190000 */  lh         $t9, 0x0($s0)
    /* DA0DC 800CB12C 8C830000 */  lw         $v1, 0x0($a0)
    /* DA0E0 800CB130 272E0004 */  addiu      $t6, $t9, 0x4
    /* DA0E4 800CB134 24780008 */  addiu      $t8, $v1, 0x8
    /* DA0E8 800CB138 A60E0000 */  sh         $t6, 0x0($s0)
    /* DA0EC 800CB13C AC980000 */  sw         $t8, 0x0($a0)
    /* DA0F0 800CB140 AC600004 */  sw         $zero, 0x4($v1)
    /* DA0F4 800CB144 AC6D0000 */  sw         $t5, 0x0($v1)
    /* DA0F8 800CB148 84AC0004 */  lh         $t4, 0x4($a1)
    /* DA0FC 800CB14C 11970003 */  beq        $t4, $s7, .L800CB15C_DA10C
    /* DA100 800CB150 00000000 */   nop
    /* DA104 800CB154 559EFF2B */  bnel       $t4, $fp, .L800CAE04_D9DB4
    /* DA108 800CB158 8C830000 */   lw        $v1, 0x0($a0)
  .L800CB15C_DA10C:
    /* DA10C 800CB15C 8FBF004C */  lw         $ra, 0x4C($sp)
  .L800CB160_DA110:
    /* DA110 800CB160 D7B40008 */  ldc1       $f20, 0x8($sp)
    /* DA114 800CB164 D7B60010 */  ldc1       $f22, 0x10($sp)
    /* DA118 800CB168 D7B80018 */  ldc1       $f24, 0x18($sp)
    /* DA11C 800CB16C D7BA0020 */  ldc1       $f26, 0x20($sp)
    /* DA120 800CB170 8FB00028 */  lw         $s0, 0x28($sp)
    /* DA124 800CB174 8FB1002C */  lw         $s1, 0x2C($sp)
    /* DA128 800CB178 8FB20030 */  lw         $s2, 0x30($sp)
    /* DA12C 800CB17C 8FB30034 */  lw         $s3, 0x34($sp)
    /* DA130 800CB180 8FB40038 */  lw         $s4, 0x38($sp)
    /* DA134 800CB184 8FB5003C */  lw         $s5, 0x3C($sp)
    /* DA138 800CB188 8FB60040 */  lw         $s6, 0x40($sp)
    /* DA13C 800CB18C 8FB70044 */  lw         $s7, 0x44($sp)
    /* DA140 800CB190 8FBE0048 */  lw         $fp, 0x48($sp)
    /* DA144 800CB194 03E00008 */  jr         $ra
    /* DA148 800CB198 27BD0050 */   addiu     $sp, $sp, 0x50
endlabel func_800CABC8_D9B78
