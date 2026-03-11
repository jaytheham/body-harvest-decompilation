nonmatching func_802DBD84_25B4C4, 0x4C0

glabel func_802DBD84_25B4C4
    /* 25B4C4 802DBD84 27BDFF98 */  addiu      $sp, $sp, -0x68
    /* 25B4C8 802DBD88 3C0F802E */  lui        $t7, %hi(D_802E0994)
    /* 25B4CC 802DBD8C AFBF0024 */  sw         $ra, 0x24($sp)
    /* 25B4D0 802DBD90 AFA40068 */  sw         $a0, 0x68($sp)
    /* 25B4D4 802DBD94 25EF0994 */  addiu      $t7, $t7, %lo(D_802E0994)
    /* 25B4D8 802DBD98 99E10002 */  lwr        $at, 0x2($t7)
    /* 25B4DC 802DBD9C 27AE0054 */  addiu      $t6, $sp, 0x54
    /* 25B4E0 802DBDA0 27B80050 */  addiu      $t8, $sp, 0x50
    /* 25B4E4 802DBDA4 B9C10002 */  swr        $at, 0x2($t6)
    /* 25B4E8 802DBDA8 3C0E802E */  lui        $t6, %hi(D_802E0998)
    /* 25B4EC 802DBDAC 25CE0998 */  addiu      $t6, $t6, %lo(D_802E0998)
    /* 25B4F0 802DBDB0 99C10002 */  lwr        $at, 0x2($t6)
    /* 25B4F4 802DBDB4 240B0050 */  addiu      $t3, $zero, 0x50
    /* 25B4F8 802DBDB8 3C0A8005 */  lui        $t2, %hi(alienInstances)
    /* 25B4FC 802DBDBC BB010002 */  swr        $at, 0x2($t8)
    /* 25B500 802DBDC0 93AF006B */  lbu        $t7, 0x6B($sp)
    /* 25B504 802DBDC4 254A8198 */  addiu      $t2, $t2, %lo(alienInstances)
    /* 25B508 802DBDC8 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 25B50C 802DBDCC 01EB0019 */  multu      $t7, $t3
    /* 25B510 802DBDD0 24020100 */  addiu      $v0, $zero, 0x100
    /* 25B514 802DBDD4 0000C012 */  mflo       $t8
    /* 25B518 802DBDD8 01584021 */  addu       $t0, $t2, $t8
    /* 25B51C 802DBDDC 910E0025 */  lbu        $t6, 0x25($t0)
    /* 25B520 802DBDE0 8D0F0020 */  lw         $t7, 0x20($t0)
    /* 25B524 802DBDE4 01CB0019 */  multu      $t6, $t3
    /* 25B528 802DBDE8 31F84000 */  andi       $t8, $t7, 0x4000
    /* 25B52C 802DBDEC 0000C812 */  mflo       $t9
    /* 25B530 802DBDF0 01594821 */  addu       $t1, $t2, $t9
    /* 25B534 802DBDF4 912D0000 */  lbu        $t5, 0x0($t1)
    /* 25B538 802DBDF8 130000F6 */  beqz       $t8, .L802DC1D4_25B914
    /* 25B53C 802DBDFC 913F0001 */   lbu       $ra, 0x1($t1)
    /* 25B540 802DBE00 8D2E0020 */  lw         $t6, 0x20($t1)
    /* 25B544 802DBE04 3C0F8005 */  lui        $t7, %hi(D_80052A8C)
    /* 25B548 802DBE08 31D91000 */  andi       $t9, $t6, 0x1000
    /* 25B54C 802DBE0C 132000FB */  beqz       $t9, .L802DC1FC_25B93C
    /* 25B550 802DBE10 00000000 */   nop
    /* 25B554 802DBE14 8DEF2A8C */  lw         $t7, %lo(D_80052A8C)($t7)
    /* 25B558 802DBE18 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 25B55C 802DBE1C 240500B3 */  addiu      $a1, $zero, 0xB3
    /* 25B560 802DBE20 31F80001 */  andi       $t8, $t7, 0x1
    /* 25B564 802DBE24 17000012 */  bnez       $t8, .L802DBE70_25B5B0
    /* 25B568 802DBE28 24060000 */   addiu     $a2, $zero, 0x0
    /* 25B56C 802DBE2C 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
    /* 25B570 802DBE30 44812000 */  mtc1       $at, $f4
    /* 25B574 802DBE34 A3BF0066 */  sb         $ra, 0x66($sp)
    /* 25B578 802DBE38 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 25B57C 802DBE3C 00003825 */  or         $a3, $zero, $zero
    /* 25B580 802DBE40 AFA80034 */  sw         $t0, 0x34($sp)
    /* 25B584 802DBE44 AFA90060 */  sw         $t1, 0x60($sp)
    /* 25B588 802DBE48 A3AD0067 */  sb         $t5, 0x67($sp)
    /* 25B58C 802DBE4C 0C00528F */  jal        func_80014A3C_1563C
    /* 25B590 802DBE50 E7A40010 */   swc1      $f4, 0x10($sp)
    /* 25B594 802DBE54 3C0A8005 */  lui        $t2, %hi(alienInstances)
    /* 25B598 802DBE58 254A8198 */  addiu      $t2, $t2, %lo(alienInstances)
    /* 25B59C 802DBE5C 8FA80034 */  lw         $t0, 0x34($sp)
    /* 25B5A0 802DBE60 8FA90060 */  lw         $t1, 0x60($sp)
    /* 25B5A4 802DBE64 240B0050 */  addiu      $t3, $zero, 0x50
    /* 25B5A8 802DBE68 93AD0067 */  lbu        $t5, 0x67($sp)
    /* 25B5AC 802DBE6C 93BF0066 */  lbu        $ra, 0x66($sp)
  .L802DBE70_25B5B0:
    /* 25B5B0 802DBE70 9105004B */  lbu        $a1, 0x4B($t0)
    /* 25B5B4 802DBE74 3C028005 */  lui        $v0, %hi(D_80052A8C)
    /* 25B5B8 802DBE78 28A10040 */  slti       $at, $a1, 0x40
    /* 25B5BC 802DBE7C 1020009E */  beqz       $at, .L802DC0F8_25B838
    /* 25B5C0 802DBE80 00000000 */   nop
    /* 25B5C4 802DBE84 8C422A8C */  lw         $v0, %lo(D_80052A8C)($v0)
    /* 25B5C8 802DBE88 24010001 */  addiu      $at, $zero, 0x1
    /* 25B5CC 802DBE8C 304E0003 */  andi       $t6, $v0, 0x3
    /* 25B5D0 802DBE90 15C00007 */  bnez       $t6, .L802DBEB0_25B5F0
    /* 25B5D4 802DBE94 01C01025 */   or        $v0, $t6, $zero
    /* 25B5D8 802DBE98 8D190020 */  lw         $t9, 0x20($t0)
    /* 25B5DC 802DBE9C 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* 25B5E0 802DBEA0 9105004B */  lbu        $a1, 0x4B($t0)
    /* 25B5E4 802DBEA4 03217825 */  or         $t7, $t9, $at
    /* 25B5E8 802DBEA8 10000017 */  b          .L802DBF08_25B648
    /* 25B5EC 802DBEAC AD0F0020 */   sw        $t7, 0x20($t0)
  .L802DBEB0_25B5F0:
    /* 25B5F0 802DBEB0 5441000B */  bnel       $v0, $at, .L802DBEE0_25B620
    /* 25B5F4 802DBEB4 24010002 */   addiu     $at, $zero, 0x2
    /* 25B5F8 802DBEB8 01AB0019 */  multu      $t5, $t3
    /* 25B5FC 802DBEBC 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* 25B600 802DBEC0 0000C012 */  mflo       $t8
    /* 25B604 802DBEC4 01581021 */  addu       $v0, $t2, $t8
    /* 25B608 802DBEC8 8C4E0020 */  lw         $t6, 0x20($v0)
    /* 25B60C 802DBECC 01C1C825 */  or         $t9, $t6, $at
    /* 25B610 802DBED0 AC590020 */  sw         $t9, 0x20($v0)
    /* 25B614 802DBED4 1000000C */  b          .L802DBF08_25B648
    /* 25B618 802DBED8 9105004B */   lbu       $a1, 0x4B($t0)
    /* 25B61C 802DBEDC 24010002 */  addiu      $at, $zero, 0x2
  .L802DBEE0_25B620:
    /* 25B620 802DBEE0 14410009 */  bne        $v0, $at, .L802DBF08_25B648
    /* 25B624 802DBEE4 00000000 */   nop
    /* 25B628 802DBEE8 03EB0019 */  multu      $ra, $t3
    /* 25B62C 802DBEEC 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* 25B630 802DBEF0 00007812 */  mflo       $t7
    /* 25B634 802DBEF4 014F1821 */  addu       $v1, $t2, $t7
    /* 25B638 802DBEF8 8C780020 */  lw         $t8, 0x20($v1)
    /* 25B63C 802DBEFC 03017025 */  or         $t6, $t8, $at
    /* 25B640 802DBF00 AC6E0020 */  sw         $t6, 0x20($v1)
    /* 25B644 802DBF04 9105004B */  lbu        $a1, 0x4B($t0)
  .L802DBF08_25B648:
    /* 25B648 802DBF08 3C03802E */  lui        $v1, %hi(D_802E0E30)
    /* 25B64C 802DBF0C 24630E30 */  addiu      $v1, $v1, %lo(D_802E0E30)
    /* 25B650 802DBF10 84790000 */  lh         $t9, 0x0($v1)
    /* 25B654 802DBF14 3C06802E */  lui        $a2, %hi(D_802E0E32)
    /* 25B658 802DBF18 24C60E32 */  addiu      $a2, $a2, %lo(D_802E0E32)
    /* 25B65C 802DBF1C 272F0004 */  addiu      $t7, $t9, 0x4
    /* 25B660 802DBF20 84D80000 */  lh         $t8, 0x0($a2)
    /* 25B664 802DBF24 00A01025 */  or         $v0, $a1, $zero
    /* 25B668 802DBF28 A46F0000 */  sh         $t7, 0x0($v1)
    /* 25B66C 802DBF2C 0002CF00 */  sll        $t9, $v0, 28
    /* 25B670 802DBF30 00197C03 */  sra        $t7, $t9, 16
    /* 25B674 802DBF34 31E4FFFF */  andi       $a0, $t7, 0xFFFF
    /* 25B678 802DBF38 270E0004 */  addiu      $t6, $t8, 0x4
    /* 25B67C 802DBF3C A4CE0000 */  sh         $t6, 0x0($a2)
    /* 25B680 802DBF40 AFA4002C */  sw         $a0, 0x2C($sp)
    /* 25B684 802DBF44 A7AF004E */  sh         $t7, 0x4E($sp)
    /* 25B688 802DBF48 0C007660 */  jal        sins
    /* 25B68C 802DBF4C AFA80034 */   sw        $t0, 0x34($sp)
    /* 25B690 802DBF50 44823000 */  mtc1       $v0, $f6
    /* 25B694 802DBF54 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 25B698 802DBF58 44818800 */  mtc1       $at, $f17
    /* 25B69C 802DBF5C 46803220 */  cvt.s.w    $f8, $f6
    /* 25B6A0 802DBF60 44808000 */  mtc1       $zero, $f16
    /* 25B6A4 802DBF64 3C03802E */  lui        $v1, %hi(D_802E0E32)
    /* 25B6A8 802DBF68 24630E32 */  addiu      $v1, $v1, %lo(D_802E0E32)
    /* 25B6AC 802DBF6C 3C014034 */  lui        $at, (0x40340000 >> 16)
    /* 25B6B0 802DBF70 44812800 */  mtc1       $at, $f5
    /* 25B6B4 802DBF74 460042A1 */  cvt.d.s    $f10, $f8
    /* 25B6B8 802DBF78 84780000 */  lh         $t8, 0x0($v1)
    /* 25B6BC 802DBF7C 46305483 */  div.d      $f18, $f10, $f16
    /* 25B6C0 802DBF80 44802000 */  mtc1       $zero, $f4
    /* 25B6C4 802DBF84 44984000 */  mtc1       $t8, $f8
    /* 25B6C8 802DBF88 8FA4002C */  lw         $a0, 0x2C($sp)
    /* 25B6CC 802DBF8C 468042A1 */  cvt.d.w    $f10, $f8
    /* 25B6D0 802DBF90 46322182 */  mul.d      $f6, $f4, $f18
    /* 25B6D4 802DBF94 46265400 */  add.d      $f16, $f10, $f6
    /* 25B6D8 802DBF98 4620810D */  trunc.w.d  $f4, $f16
    /* 25B6DC 802DBF9C 44192000 */  mfc1       $t9, $f4
    /* 25B6E0 802DBFA0 0C007660 */  jal        sins
    /* 25B6E4 802DBFA4 A4790000 */   sh        $t9, 0x0($v1)
    /* 25B6E8 802DBFA8 44829000 */  mtc1       $v0, $f18
    /* 25B6EC 802DBFAC 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 25B6F0 802DBFB0 44813800 */  mtc1       $at, $f7
    /* 25B6F4 802DBFB4 46809220 */  cvt.s.w    $f8, $f18
    /* 25B6F8 802DBFB8 44803000 */  mtc1       $zero, $f6
    /* 25B6FC 802DBFBC 3C014044 */  lui        $at, (0x40440000 >> 16)
    /* 25B700 802DBFC0 3C0F802E */  lui        $t7, %hi(D_802E0E30)
    /* 25B704 802DBFC4 85EF0E30 */  lh         $t7, %lo(D_802E0E30)($t7)
    /* 25B708 802DBFC8 44812800 */  mtc1       $at, $f5
    /* 25B70C 802DBFCC 460042A1 */  cvt.d.s    $f10, $f8
    /* 25B710 802DBFD0 44802000 */  mtc1       $zero, $f4
    /* 25B714 802DBFD4 46265403 */  div.d      $f16, $f10, $f6
    /* 25B718 802DBFD8 448F4000 */  mtc1       $t7, $f8
    /* 25B71C 802DBFDC 8FA80034 */  lw         $t0, 0x34($sp)
    /* 25B720 802DBFE0 3C01802E */  lui        $at, %hi(D_802E0E30)
    /* 25B724 802DBFE4 468042A1 */  cvt.d.w    $f10, $f8
    /* 25B728 802DBFE8 46302482 */  mul.d      $f18, $f4, $f16
    /* 25B72C 802DBFEC 46325180 */  add.d      $f6, $f10, $f18
    /* 25B730 802DBFF0 4620310D */  trunc.w.d  $f4, $f6
    /* 25B734 802DBFF4 440E2000 */  mfc1       $t6, $f4
    /* 25B738 802DBFF8 00000000 */  nop
    /* 25B73C 802DBFFC A42E0E30 */  sh         $t6, %lo(D_802E0E30)($at)
    /* 25B740 802DC000 9119004B */  lbu        $t9, 0x4B($t0)
    /* 25B744 802DC004 85180000 */  lh         $t8, 0x0($t0)
    /* 25B748 802DC008 850E0002 */  lh         $t6, 0x2($t0)
    /* 25B74C 802DC00C 272F0001 */  addiu      $t7, $t9, 0x1
    /* 25B750 802DC010 A10F004B */  sb         $t7, 0x4B($t0)
    /* 25B754 802DC014 87AF004E */  lh         $t7, 0x4E($sp)
    /* 25B758 802DC018 85190004 */  lh         $t9, 0x4($t0)
    /* 25B75C 802DC01C 2401C000 */  addiu      $at, $zero, -0x4000
    /* 25B760 802DC020 AFB80048 */  sw         $t8, 0x48($sp)
    /* 25B764 802DC024 AFAE0044 */  sw         $t6, 0x44($sp)
    /* 25B768 802DC028 15E1001F */  bne        $t7, $at, .L802DC0A8_25B7E8
    /* 25B76C 802DC02C AFB90040 */   sw        $t9, 0x40($sp)
    /* 25B770 802DC030 87A4004A */  lh         $a0, 0x4A($sp)
    /* 25B774 802DC034 87A60042 */  lh         $a2, 0x42($sp)
    /* 25B778 802DC038 25C500C8 */  addiu      $a1, $t6, 0xC8
    /* 25B77C 802DC03C 0005C400 */  sll        $t8, $a1, 16
    /* 25B780 802DC040 24190006 */  addiu      $t9, $zero, 0x6
    /* 25B784 802DC044 AFB90010 */  sw         $t9, 0x10($sp)
    /* 25B788 802DC048 00182C03 */  sra        $a1, $t8, 16
    /* 25B78C 802DC04C 24070023 */  addiu      $a3, $zero, 0x23
    /* 25B790 802DC050 AFA80034 */  sw         $t0, 0x34($sp)
    /* 25B794 802DC054 AFA40030 */  sw         $a0, 0x30($sp)
    /* 25B798 802DC058 0C037B97 */  jal        func_800DEE5C_EDE0C
    /* 25B79C 802DC05C AFA6002C */   sw        $a2, 0x2C($sp)
    /* 25B7A0 802DC060 240F0006 */  addiu      $t7, $zero, 0x6
    /* 25B7A4 802DC064 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 25B7A8 802DC068 87A40032 */  lh         $a0, 0x32($sp)
    /* 25B7AC 802DC06C 87A50046 */  lh         $a1, 0x46($sp)
    /* 25B7B0 802DC070 87A6002E */  lh         $a2, 0x2E($sp)
    /* 25B7B4 802DC074 0C037B97 */  jal        func_800DEE5C_EDE0C
    /* 25B7B8 802DC078 24070032 */   addiu     $a3, $zero, 0x32
    /* 25B7BC 802DC07C 8FA50044 */  lw         $a1, 0x44($sp)
    /* 25B7C0 802DC080 24190006 */  addiu      $t9, $zero, 0x6
    /* 25B7C4 802DC084 AFB90010 */  sw         $t9, 0x10($sp)
    /* 25B7C8 802DC088 24A5FF38 */  addiu      $a1, $a1, -0xC8
    /* 25B7CC 802DC08C 0005C400 */  sll        $t8, $a1, 16
    /* 25B7D0 802DC090 00182C03 */  sra        $a1, $t8, 16
    /* 25B7D4 802DC094 87A40032 */  lh         $a0, 0x32($sp)
    /* 25B7D8 802DC098 87A6002E */  lh         $a2, 0x2E($sp)
    /* 25B7DC 802DC09C 0C037B97 */  jal        func_800DEE5C_EDE0C
    /* 25B7E0 802DC0A0 2407003C */   addiu     $a3, $zero, 0x3C
    /* 25B7E4 802DC0A4 8FA80034 */  lw         $t0, 0x34($sp)
  .L802DC0A8_25B7E8:
    /* 25B7E8 802DC0A8 87AF004E */  lh         $t7, 0x4E($sp)
    /* 25B7EC 802DC0AC 05E1000D */  bgez       $t7, .L802DC0E4_25B824
    /* 25B7F0 802DC0B0 2418000F */   addiu     $t8, $zero, 0xF
    /* 25B7F4 802DC0B4 240E000A */  addiu      $t6, $zero, 0xA
    /* 25B7F8 802DC0B8 24190028 */  addiu      $t9, $zero, 0x28
    /* 25B7FC 802DC0BC AFB90018 */  sw         $t9, 0x18($sp)
    /* 25B800 802DC0C0 AFAE0014 */  sw         $t6, 0x14($sp)
    /* 25B804 802DC0C4 AFB80010 */  sw         $t8, 0x10($sp)
    /* 25B808 802DC0C8 87A4004A */  lh         $a0, 0x4A($sp)
    /* 25B80C 802DC0CC 87A50046 */  lh         $a1, 0x46($sp)
    /* 25B810 802DC0D0 87A60042 */  lh         $a2, 0x42($sp)
    /* 25B814 802DC0D4 24070320 */  addiu      $a3, $zero, 0x320
    /* 25B818 802DC0D8 0C0315A9 */  jal        func_800C56A4_D4654
    /* 25B81C 802DC0DC AFA80034 */   sw        $t0, 0x34($sp)
    /* 25B820 802DC0E0 8FA80034 */  lw         $t0, 0x34($sp)
  .L802DC0E4_25B824:
    /* 25B824 802DC0E4 850F0000 */  lh         $t7, 0x0($t0)
    /* 25B828 802DC0E8 85180004 */  lh         $t8, 0x4($t0)
    /* 25B82C 802DC0EC A7AF0058 */  sh         $t7, 0x58($sp)
    /* 25B830 802DC0F0 10000024 */  b          .L802DC184_25B8C4
    /* 25B834 802DC0F4 A7B8005A */   sh        $t8, 0x5A($sp)
  .L802DC0F8_25B838:
    /* 25B838 802DC0F8 01AB0019 */  multu      $t5, $t3
    /* 25B83C 802DC0FC 3C06FFBF */  lui        $a2, (0xFFBFFFFF >> 16)
    /* 25B840 802DC100 34C6FFFF */  ori        $a2, $a2, (0xFFBFFFFF & 0xFFFF)
    /* 25B844 802DC104 24080068 */  addiu      $t0, $zero, 0x68
    /* 25B848 802DC108 3C078025 */  lui        $a3, %hi(alienSpecs)
    /* 25B84C 802DC10C 24E76680 */  addiu      $a3, $a3, %lo(alienSpecs)
    /* 25B850 802DC110 240C0063 */  addiu      $t4, $zero, 0x63
    /* 25B854 802DC114 2401EFFF */  addiu      $at, $zero, -0x1001
    /* 25B858 802DC118 2405013E */  addiu      $a1, $zero, 0x13E
    /* 25B85C 802DC11C 00007012 */  mflo       $t6
    /* 25B860 802DC120 014E1021 */  addu       $v0, $t2, $t6
    /* 25B864 802DC124 8C590020 */  lw         $t9, 0x20($v0)
    /* 25B868 802DC128 03EB0019 */  multu      $ra, $t3
    /* 25B86C 802DC12C 03267824 */  and        $t7, $t9, $a2
    /* 25B870 802DC130 AC4F0020 */  sw         $t7, 0x20($v0)
    /* 25B874 802DC134 0000C012 */  mflo       $t8
    /* 25B878 802DC138 01581821 */  addu       $v1, $t2, $t8
    /* 25B87C 802DC13C 8C6E0020 */  lw         $t6, 0x20($v1)
    /* 25B880 802DC140 01C6C824 */  and        $t9, $t6, $a2
    /* 25B884 802DC144 AC790020 */  sw         $t9, 0x20($v1)
    /* 25B888 802DC148 904F001A */  lbu        $t7, 0x1A($v0)
    /* 25B88C 802DC14C 01E80019 */  multu      $t7, $t0
    /* 25B890 802DC150 0000C012 */  mflo       $t8
    /* 25B894 802DC154 00F87021 */  addu       $t6, $a3, $t8
    /* 25B898 802DC158 ADCC001C */  sw         $t4, 0x1C($t6)
    /* 25B89C 802DC15C 9079001A */  lbu        $t9, 0x1A($v1)
    /* 25B8A0 802DC160 03280019 */  multu      $t9, $t0
    /* 25B8A4 802DC164 00007812 */  mflo       $t7
    /* 25B8A8 802DC168 00EFC021 */  addu       $t8, $a3, $t7
    /* 25B8AC 802DC16C AF0C001C */  sw         $t4, 0x1C($t8)
    /* 25B8B0 802DC170 8D2E0020 */  lw         $t6, 0x20($t1)
    /* 25B8B4 802DC174 01C1C824 */  and        $t9, $t6, $at
    /* 25B8B8 802DC178 AD390020 */  sw         $t9, 0x20($t1)
    /* 25B8BC 802DC17C 0C04DD1A */  jal        func_80137468_146418
    /* 25B8C0 802DC180 93A4006B */   lbu       $a0, 0x6B($sp)
  .L802DC184_25B8C4:
    /* 25B8C4 802DC184 3C0F802E */  lui        $t7, %hi(D_802E0E30)
    /* 25B8C8 802DC188 85EF0E30 */  lh         $t7, %lo(D_802E0E30)($t7)
    /* 25B8CC 802DC18C 3C18802E */  lui        $t8, %hi(D_802E0E32)
    /* 25B8D0 802DC190 87180E32 */  lh         $t8, %lo(D_802E0E32)($t8)
    /* 25B8D4 802DC194 448F8000 */  mtc1       $t7, $f16
    /* 25B8D8 802DC198 3C013F70 */  lui        $at, (0x3F700000 >> 16)
    /* 25B8DC 802DC19C 44983000 */  mtc1       $t8, $f6
    /* 25B8E0 802DC1A0 46808221 */  cvt.d.w    $f8, $f16
    /* 25B8E4 802DC1A4 44810800 */  mtc1       $at, $f1
    /* 25B8E8 802DC1A8 44800000 */  mtc1       $zero, $f0
    /* 25B8EC 802DC1AC 3C01802E */  lui        $at, %hi(D_802DF3A4)
    /* 25B8F0 802DC1B0 46803121 */  cvt.d.w    $f4, $f6
    /* 25B8F4 802DC1B4 46204282 */  mul.d      $f10, $f8, $f0
    /* 25B8F8 802DC1B8 462054A0 */  cvt.s.d    $f18, $f10
    /* 25B8FC 802DC1BC 46202402 */  mul.d      $f16, $f4, $f0
    /* 25B900 802DC1C0 E432F3A4 */  swc1       $f18, %lo(D_802DF3A4)($at)
    /* 25B904 802DC1C4 3C01802E */  lui        $at, %hi(D_802DF3A8)
    /* 25B908 802DC1C8 46208220 */  cvt.s.d    $f8, $f16
    /* 25B90C 802DC1CC 1000000B */  b          .L802DC1FC_25B93C
    /* 25B910 802DC1D0 E428F3A8 */   swc1      $f8, %lo(D_802DF3A8)($at)
  .L802DC1D4_25B914:
    /* 25B914 802DC1D4 44810000 */  mtc1       $at, $f0
    /* 25B918 802DC1D8 3C01802E */  lui        $at, %hi(D_802E0E30)
    /* 25B91C 802DC1DC A4220E30 */  sh         $v0, %lo(D_802E0E30)($at)
    /* 25B920 802DC1E0 3C01802E */  lui        $at, %hi(D_802DF3A4)
    /* 25B924 802DC1E4 E420F3A4 */  swc1       $f0, %lo(D_802DF3A4)($at)
    /* 25B928 802DC1E8 3C01802E */  lui        $at, %hi(D_802E0E32)
    /* 25B92C 802DC1EC A4220E32 */  sh         $v0, %lo(D_802E0E32)($at)
    /* 25B930 802DC1F0 3C01802E */  lui        $at, %hi(D_802DF3A8)
    /* 25B934 802DC1F4 E420F3A8 */  swc1       $f0, %lo(D_802DF3A8)($at)
    /* 25B938 802DC1F8 A100004B */  sb         $zero, 0x4B($t0)
  .L802DC1FC_25B93C:
    /* 25B93C 802DC1FC 3C040E02 */  lui        $a0, %hi(D_E020FB0)
    /* 25B940 802DC200 0C0047E4 */  jal        func_80011F90_12B90
    /* 25B944 802DC204 24840FB0 */   addiu     $a0, $a0, %lo(D_E020FB0)
    /* 25B948 802DC208 3C04802E */  lui        $a0, %hi(D_802E0E30)
    /* 25B94C 802DC20C 84840E30 */  lh         $a0, %lo(D_802E0E30)($a0)
    /* 25B950 802DC210 0C001085 */  jal        func_80004214_4E14
    /* 25B954 802DC214 00402825 */   or        $a1, $v0, $zero
    /* 25B958 802DC218 3C040E02 */  lui        $a0, %hi(D_E021030)
    /* 25B95C 802DC21C 0C0047E4 */  jal        func_80011F90_12B90
    /* 25B960 802DC220 24841030 */   addiu     $a0, $a0, %lo(D_E021030)
    /* 25B964 802DC224 3C04802E */  lui        $a0, %hi(D_802E0E32)
    /* 25B968 802DC228 84840E32 */  lh         $a0, %lo(D_802E0E32)($a0)
    /* 25B96C 802DC22C 0C001085 */  jal        func_80004214_4E14
    /* 25B970 802DC230 00402825 */   or        $a1, $v0, $zero
    /* 25B974 802DC234 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 25B978 802DC238 27BD0068 */  addiu      $sp, $sp, 0x68
    /* 25B97C 802DC23C 03E00008 */  jr         $ra
    /* 25B980 802DC240 00000000 */   nop
endlabel func_802DBD84_25B4C4
