nonmatching func_8000C81C_D41C, 0x420

glabel func_8000C81C_D41C
    /* D41C 8000C81C 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* D420 8000C820 AFB00018 */  sw         $s0, 0x18($sp)
    /* D424 8000C824 3C108006 */  lui        $s0, %hi(D_80059C90)
    /* D428 8000C828 26109C90 */  addiu      $s0, $s0, %lo(D_80059C90)
    /* D42C 8000C82C AFB20020 */  sw         $s2, 0x20($sp)
    /* D430 8000C830 AFB1001C */  sw         $s1, 0x1C($sp)
    /* D434 8000C834 3C020001 */  lui        $v0, (0x10000 >> 16)
    /* D438 8000C838 00C08825 */  or         $s1, $a2, $zero
    /* D43C 8000C83C 00A09025 */  or         $s2, $a1, $zero
    /* D440 8000C840 AFBF0024 */  sw         $ra, 0x24($sp)
    /* D444 8000C844 AFA7004C */  sw         $a3, 0x4C($sp)
    /* D448 8000C848 AE00000C */  sw         $zero, 0xC($s0)
    /* D44C 8000C84C AE00001C */  sw         $zero, 0x1C($s0)
    /* D450 8000C850 AE00002C */  sw         $zero, 0x2C($s0)
    /* D454 8000C854 10800008 */  beqz       $a0, .L8000C878_D478
    /* D458 8000C858 AE02003C */   sw        $v0, 0x3C($s0)
    /* D45C 8000C85C 8C8E0000 */  lw         $t6, 0x0($a0)
    /* D460 8000C860 AE0E0030 */  sw         $t6, 0x30($s0)
    /* D464 8000C864 8C8F0004 */  lw         $t7, 0x4($a0)
    /* D468 8000C868 AE0F0034 */  sw         $t7, 0x34($s0)
    /* D46C 8000C86C 8C980008 */  lw         $t8, 0x8($a0)
    /* D470 8000C870 10000004 */  b          .L8000C884_D484
    /* D474 8000C874 AE180038 */   sw        $t8, 0x38($s0)
  .L8000C878_D478:
    /* D478 8000C878 AE000030 */  sw         $zero, 0x30($s0)
    /* D47C 8000C87C AE000034 */  sw         $zero, 0x34($s0)
    /* D480 8000C880 AE000038 */  sw         $zero, 0x38($s0)
  .L8000C884_D484:
    /* D484 8000C884 52400062 */  beql       $s2, $zero, .L8000CA10_D610
    /* D488 8000C888 AE020000 */   sw        $v0, 0x0($s0)
    /* D48C 8000C88C 0C007654 */  jal        coss
    /* D490 8000C890 96440000 */   lhu       $a0, 0x0($s2)
    /* D494 8000C894 AFA2003C */  sw         $v0, 0x3C($sp)
    /* D498 8000C898 0C007660 */  jal        sins
    /* D49C 8000C89C 96440000 */   lhu       $a0, 0x0($s2)
    /* D4A0 8000C8A0 AFA20038 */  sw         $v0, 0x38($sp)
    /* D4A4 8000C8A4 0C007654 */  jal        coss
    /* D4A8 8000C8A8 96440004 */   lhu       $a0, 0x4($s2)
    /* D4AC 8000C8AC 96440004 */  lhu        $a0, 0x4($s2)
    /* D4B0 8000C8B0 0C007660 */  jal        sins
    /* D4B4 8000C8B4 AFA20034 */   sw        $v0, 0x34($sp)
    /* D4B8 8000C8B8 96440002 */  lhu        $a0, 0x2($s2)
    /* D4BC 8000C8BC 0C007654 */  jal        coss
    /* D4C0 8000C8C0 AFA20030 */   sw        $v0, 0x30($sp)
    /* D4C4 8000C8C4 96440002 */  lhu        $a0, 0x2($s2)
    /* D4C8 8000C8C8 0C007660 */  jal        sins
    /* D4CC 8000C8CC AFA2002C */   sw        $v0, 0x2C($sp)
    /* D4D0 8000C8D0 8FA3002C */  lw         $v1, 0x2C($sp)
    /* D4D4 8000C8D4 8FA9003C */  lw         $t1, 0x3C($sp)
    /* D4D8 8000C8D8 8FA70030 */  lw         $a3, 0x30($sp)
    /* D4DC 8000C8DC 8FA80038 */  lw         $t0, 0x38($sp)
    /* D4E0 8000C8E0 01230019 */  multu      $t1, $v1
    /* D4E4 8000C8E4 8FA60034 */  lw         $a2, 0x34($sp)
    /* D4E8 8000C8E8 00087823 */  negu       $t7, $t0
    /* D4EC 8000C8EC 000FC040 */  sll        $t8, $t7, 1
    /* D4F0 8000C8F0 AE180008 */  sw         $t8, 0x8($s0)
    /* D4F4 8000C8F4 0000C812 */  mflo       $t9
    /* D4F8 8000C8F8 001953C3 */  sra        $t2, $t9, 15
    /* D4FC 8000C8FC 000A5840 */  sll        $t3, $t2, 1
    /* D500 8000C900 01220019 */  multu      $t1, $v0
    /* D504 8000C904 00065023 */  negu       $t2, $a2
    /* D508 8000C908 AE0B0000 */  sw         $t3, 0x0($s0)
    /* D50C 8000C90C 00006012 */  mflo       $t4
    /* D510 8000C910 000C6BC3 */  sra        $t5, $t4, 15
    /* D514 8000C914 000D7040 */  sll        $t6, $t5, 1
    /* D518 8000C918 01070019 */  multu      $t0, $a3
    /* D51C 8000C91C AE0E0004 */  sw         $t6, 0x4($s0)
    /* D520 8000C920 00002012 */  mflo       $a0
    /* D524 8000C924 0004CBC3 */  sra        $t9, $a0, 15
    /* D528 8000C928 03202025 */  or         $a0, $t9, $zero
    /* D52C 8000C92C 01420019 */  multu      $t2, $v0
    /* D530 8000C930 00005812 */  mflo       $t3
    /* D534 8000C934 000B63C3 */  sra        $t4, $t3, 15
    /* D538 8000C938 00000000 */  nop
    /* D53C 8000C93C 03230019 */  multu      $t9, $v1
    /* D540 8000C940 00006812 */  mflo       $t5
    /* D544 8000C944 000D73C3 */  sra        $t6, $t5, 15
    /* D548 8000C948 018E7821 */  addu       $t7, $t4, $t6
    /* D54C 8000C94C 00C30019 */  multu      $a2, $v1
    /* D550 8000C950 000FC040 */  sll        $t8, $t7, 1
    /* D554 8000C954 AE180010 */  sw         $t8, 0x10($s0)
    /* D558 8000C958 0000C812 */  mflo       $t9
    /* D55C 8000C95C 001953C3 */  sra        $t2, $t9, 15
    /* D560 8000C960 00000000 */  nop
    /* D564 8000C964 00820019 */  multu      $a0, $v0
    /* D568 8000C968 00005812 */  mflo       $t3
    /* D56C 8000C96C 000B6BC3 */  sra        $t5, $t3, 15
    /* D570 8000C970 014D6021 */  addu       $t4, $t2, $t5
    /* D574 8000C974 00E90019 */  multu      $a3, $t1
    /* D578 8000C978 000C7040 */  sll        $t6, $t4, 1
    /* D57C 8000C97C AE0E0014 */  sw         $t6, 0x14($s0)
    /* D580 8000C980 00007812 */  mflo       $t7
    /* D584 8000C984 000FC3C3 */  sra        $t8, $t7, 15
    /* D588 8000C988 0018C840 */  sll        $t9, $t8, 1
    /* D58C 8000C98C 01060019 */  multu      $t0, $a2
    /* D590 8000C990 AE190018 */  sw         $t9, 0x18($s0)
    /* D594 8000C994 0007C823 */  negu       $t9, $a3
    /* D598 8000C998 00002812 */  mflo       $a1
    /* D59C 8000C99C 00055BC3 */  sra        $t3, $a1, 15
    /* D5A0 8000C9A0 01602825 */  or         $a1, $t3, $zero
    /* D5A4 8000C9A4 00E20019 */  multu      $a3, $v0
    /* D5A8 8000C9A8 00005012 */  mflo       $t2
    /* D5AC 8000C9AC 000A6BC3 */  sra        $t5, $t2, 15
    /* D5B0 8000C9B0 00000000 */  nop
    /* D5B4 8000C9B4 01630019 */  multu      $t3, $v1
    /* D5B8 8000C9B8 00006012 */  mflo       $t4
    /* D5BC 8000C9BC 000C73C3 */  sra        $t6, $t4, 15
    /* D5C0 8000C9C0 01AE7821 */  addu       $t7, $t5, $t6
    /* D5C4 8000C9C4 03230019 */  multu      $t9, $v1
    /* D5C8 8000C9C8 000FC040 */  sll        $t8, $t7, 1
    /* D5CC 8000C9CC AE180020 */  sw         $t8, 0x20($s0)
    /* D5D0 8000C9D0 00005812 */  mflo       $t3
    /* D5D4 8000C9D4 000B53C3 */  sra        $t2, $t3, 15
    /* D5D8 8000C9D8 00000000 */  nop
    /* D5DC 8000C9DC 00A20019 */  multu      $a1, $v0
    /* D5E0 8000C9E0 00006012 */  mflo       $t4
    /* D5E4 8000C9E4 000C6BC3 */  sra        $t5, $t4, 15
    /* D5E8 8000C9E8 014D7021 */  addu       $t6, $t2, $t5
    /* D5EC 8000C9EC 01260019 */  multu      $t1, $a2
    /* D5F0 8000C9F0 000E7840 */  sll        $t7, $t6, 1
    /* D5F4 8000C9F4 AE0F0024 */  sw         $t7, 0x24($s0)
    /* D5F8 8000C9F8 0000C012 */  mflo       $t8
    /* D5FC 8000C9FC 0018CBC3 */  sra        $t9, $t8, 15
    /* D600 8000CA00 00195840 */  sll        $t3, $t9, 1
    /* D604 8000CA04 1000000A */  b          .L8000CA30_D630
    /* D608 8000CA08 AE0B0028 */   sw        $t3, 0x28($s0)
    /* D60C 8000CA0C AE020000 */  sw         $v0, 0x0($s0)
  .L8000CA10_D610:
    /* D610 8000CA10 AE000010 */  sw         $zero, 0x10($s0)
    /* D614 8000CA14 AE000020 */  sw         $zero, 0x20($s0)
    /* D618 8000CA18 AE000004 */  sw         $zero, 0x4($s0)
    /* D61C 8000CA1C AE020014 */  sw         $v0, 0x14($s0)
    /* D620 8000CA20 AE000024 */  sw         $zero, 0x24($s0)
    /* D624 8000CA24 AE000008 */  sw         $zero, 0x8($s0)
    /* D628 8000CA28 AE000018 */  sw         $zero, 0x18($s0)
    /* D62C 8000CA2C AE020028 */  sw         $v0, 0x28($s0)
  .L8000CA30_D630:
    /* D630 8000CA30 12200040 */  beqz       $s1, .L8000CB34_D734
    /* D634 8000CA34 3C028006 */   lui       $v0, %hi(D_80059C90)
    /* D638 8000CA38 8E0C0000 */  lw         $t4, 0x0($s0)
    /* D63C 8000CA3C 862A0000 */  lh         $t2, 0x0($s1)
    /* D640 8000CA40 8E0E0004 */  lw         $t6, 0x4($s0)
    /* D644 8000CA44 8E190008 */  lw         $t9, 0x8($s0)
    /* D648 8000CA48 018A0019 */  multu      $t4, $t2
    /* D64C 8000CA4C 00006812 */  mflo       $t5
    /* D650 8000CA50 AE0D0000 */  sw         $t5, 0x0($s0)
    /* D654 8000CA54 862F0000 */  lh         $t7, 0x0($s1)
    /* D658 8000CA58 000D6A03 */  sra        $t5, $t5, 8
    /* D65C 8000CA5C 01CF0019 */  multu      $t6, $t7
    /* D660 8000CA60 0000C012 */  mflo       $t8
    /* D664 8000CA64 AE180004 */  sw         $t8, 0x4($s0)
    /* D668 8000CA68 862B0000 */  lh         $t3, 0x0($s1)
    /* D66C 8000CA6C 00187A03 */  sra        $t7, $t8, 8
    /* D670 8000CA70 AE0D0000 */  sw         $t5, 0x0($s0)
    /* D674 8000CA74 032B0019 */  multu      $t9, $t3
    /* D678 8000CA78 AE0F0004 */  sw         $t7, 0x4($s0)
    /* D67C 8000CA7C 8E0B0010 */  lw         $t3, 0x10($s0)
    /* D680 8000CA80 8E0D0014 */  lw         $t5, 0x14($s0)
    /* D684 8000CA84 8E180018 */  lw         $t8, 0x18($s0)
    /* D688 8000CA88 00006012 */  mflo       $t4
    /* D68C 8000CA8C AE0C0008 */  sw         $t4, 0x8($s0)
    /* D690 8000CA90 000CCA03 */  sra        $t9, $t4, 8
    /* D694 8000CA94 AE190008 */  sw         $t9, 0x8($s0)
    /* D698 8000CA98 862C0002 */  lh         $t4, 0x2($s1)
    /* D69C 8000CA9C 016C0019 */  multu      $t3, $t4
    /* D6A0 8000CAA0 00005012 */  mflo       $t2
    /* D6A4 8000CAA4 AE0A0010 */  sw         $t2, 0x10($s0)
    /* D6A8 8000CAA8 862E0002 */  lh         $t6, 0x2($s1)
    /* D6AC 8000CAAC 000A5203 */  sra        $t2, $t2, 8
    /* D6B0 8000CAB0 01AE0019 */  multu      $t5, $t6
    /* D6B4 8000CAB4 00007812 */  mflo       $t7
    /* D6B8 8000CAB8 AE0F0014 */  sw         $t7, 0x14($s0)
    /* D6BC 8000CABC 86390002 */  lh         $t9, 0x2($s1)
    /* D6C0 8000CAC0 000F7203 */  sra        $t6, $t7, 8
    /* D6C4 8000CAC4 AE0A0010 */  sw         $t2, 0x10($s0)
    /* D6C8 8000CAC8 03190019 */  multu      $t8, $t9
    /* D6CC 8000CACC AE0E0014 */  sw         $t6, 0x14($s0)
    /* D6D0 8000CAD0 8E190020 */  lw         $t9, 0x20($s0)
    /* D6D4 8000CAD4 8E0A0024 */  lw         $t2, 0x24($s0)
    /* D6D8 8000CAD8 8E0F0028 */  lw         $t7, 0x28($s0)
    /* D6DC 8000CADC 00005812 */  mflo       $t3
    /* D6E0 8000CAE0 AE0B0018 */  sw         $t3, 0x18($s0)
    /* D6E4 8000CAE4 000BC203 */  sra        $t8, $t3, 8
    /* D6E8 8000CAE8 AE180018 */  sw         $t8, 0x18($s0)
    /* D6EC 8000CAEC 862B0004 */  lh         $t3, 0x4($s1)
    /* D6F0 8000CAF0 032B0019 */  multu      $t9, $t3
    /* D6F4 8000CAF4 00006012 */  mflo       $t4
    /* D6F8 8000CAF8 AE0C0020 */  sw         $t4, 0x20($s0)
    /* D6FC 8000CAFC 862D0004 */  lh         $t5, 0x4($s1)
    /* D700 8000CB00 000C6203 */  sra        $t4, $t4, 8
    /* D704 8000CB04 014D0019 */  multu      $t2, $t5
    /* D708 8000CB08 00007012 */  mflo       $t6
    /* D70C 8000CB0C AE0E0024 */  sw         $t6, 0x24($s0)
    /* D710 8000CB10 86380004 */  lh         $t8, 0x4($s1)
    /* D714 8000CB14 000E6A03 */  sra        $t5, $t6, 8
    /* D718 8000CB18 AE0C0020 */  sw         $t4, 0x20($s0)
    /* D71C 8000CB1C 01F80019 */  multu      $t7, $t8
    /* D720 8000CB20 AE0D0024 */  sw         $t5, 0x24($s0)
    /* D724 8000CB24 0000C812 */  mflo       $t9
    /* D728 8000CB28 AE190028 */  sw         $t9, 0x28($s0)
    /* D72C 8000CB2C 00197A03 */  sra        $t7, $t9, 8
    /* D730 8000CB30 AE0F0028 */  sw         $t7, 0x28($s0)
  .L8000CB34_D734:
    /* D734 8000CB34 3C058006 */  lui        $a1, %hi(D_80059CD0)
    /* D738 8000CB38 24A59CD0 */  addiu      $a1, $a1, %lo(D_80059CD0)
    /* D73C 8000CB3C 8FA4004C */  lw         $a0, 0x4C($sp)
    /* D740 8000CB40 24429C90 */  addiu      $v0, $v0, %lo(D_80059C90)
    /* D744 8000CB44 3C03FFFF */  lui        $v1, (0xFFFF0000 >> 16)
  .L8000CB48_D748:
    /* D748 8000CB48 8C580004 */  lw         $t8, 0x4($v0)
    /* D74C 8000CB4C 8C4C0000 */  lw         $t4, 0x0($v0)
    /* D750 8000CB50 24420020 */  addiu      $v0, $v0, 0x20
    /* D754 8000CB54 0303C824 */  and        $t9, $t8, $v1
    /* D758 8000CB58 00195C02 */  srl        $t3, $t9, 16
    /* D75C 8000CB5C 01835024 */  and        $t2, $t4, $v1
    /* D760 8000CB60 016A6821 */  addu       $t5, $t3, $t2
    /* D764 8000CB64 AC8D0000 */  sw         $t5, 0x0($a0)
    /* D768 8000CB68 8C59FFE0 */  lw         $t9, -0x20($v0)
    /* D76C 8000CB6C 8C4EFFE4 */  lw         $t6, -0x1C($v0)
    /* D770 8000CB70 24840010 */  addiu      $a0, $a0, 0x10
    /* D774 8000CB74 00196400 */  sll        $t4, $t9, 16
    /* D778 8000CB78 31CFFFFF */  andi       $t7, $t6, 0xFFFF
    /* D77C 8000CB7C 01EC5821 */  addu       $t3, $t7, $t4
    /* D780 8000CB80 AC8B0010 */  sw         $t3, 0x10($a0)
    /* D784 8000CB84 8C4AFFEC */  lw         $t2, -0x14($v0)
    /* D788 8000CB88 8C58FFE8 */  lw         $t8, -0x18($v0)
    /* D78C 8000CB8C 01436824 */  and        $t5, $t2, $v1
    /* D790 8000CB90 000D7402 */  srl        $t6, $t5, 16
    /* D794 8000CB94 0303C824 */  and        $t9, $t8, $v1
    /* D798 8000CB98 01D97821 */  addu       $t7, $t6, $t9
    /* D79C 8000CB9C AC8FFFF4 */  sw         $t7, -0xC($a0)
    /* D7A0 8000CBA0 8C4DFFE8 */  lw         $t5, -0x18($v0)
    /* D7A4 8000CBA4 8C4CFFEC */  lw         $t4, -0x14($v0)
    /* D7A8 8000CBA8 000DC400 */  sll        $t8, $t5, 16
    /* D7AC 8000CBAC 318BFFFF */  andi       $t3, $t4, 0xFFFF
    /* D7B0 8000CBB0 01787021 */  addu       $t6, $t3, $t8
    /* D7B4 8000CBB4 AC8E0014 */  sw         $t6, 0x14($a0)
    /* D7B8 8000CBB8 8C59FFF4 */  lw         $t9, -0xC($v0)
    /* D7BC 8000CBBC 8C4AFFF0 */  lw         $t2, -0x10($v0)
    /* D7C0 8000CBC0 03237824 */  and        $t7, $t9, $v1
    /* D7C4 8000CBC4 000F6402 */  srl        $t4, $t7, 16
    /* D7C8 8000CBC8 01436824 */  and        $t5, $t2, $v1
    /* D7CC 8000CBCC 018D5821 */  addu       $t3, $t4, $t5
    /* D7D0 8000CBD0 AC8BFFF8 */  sw         $t3, -0x8($a0)
    /* D7D4 8000CBD4 8C4FFFF0 */  lw         $t7, -0x10($v0)
    /* D7D8 8000CBD8 8C58FFF4 */  lw         $t8, -0xC($v0)
    /* D7DC 8000CBDC 000F5400 */  sll        $t2, $t7, 16
    /* D7E0 8000CBE0 330EFFFF */  andi       $t6, $t8, 0xFFFF
    /* D7E4 8000CBE4 01CA6021 */  addu       $t4, $t6, $t2
    /* D7E8 8000CBE8 AC8C0018 */  sw         $t4, 0x18($a0)
    /* D7EC 8000CBEC 8C4DFFFC */  lw         $t5, -0x4($v0)
    /* D7F0 8000CBF0 8C59FFF8 */  lw         $t9, -0x8($v0)
    /* D7F4 8000CBF4 01A35824 */  and        $t3, $t5, $v1
    /* D7F8 8000CBF8 000BC402 */  srl        $t8, $t3, 16
    /* D7FC 8000CBFC 03237824 */  and        $t7, $t9, $v1
    /* D800 8000CC00 030F7021 */  addu       $t6, $t8, $t7
    /* D804 8000CC04 AC8EFFFC */  sw         $t6, -0x4($a0)
    /* D808 8000CC08 8C4BFFF8 */  lw         $t3, -0x8($v0)
    /* D80C 8000CC0C 8C4AFFFC */  lw         $t2, -0x4($v0)
    /* D810 8000CC10 000BCC00 */  sll        $t9, $t3, 16
    /* D814 8000CC14 314CFFFF */  andi       $t4, $t2, 0xFFFF
    /* D818 8000CC18 0199C021 */  addu       $t8, $t4, $t9
    /* D81C 8000CC1C 1445FFCA */  bne        $v0, $a1, .L8000CB48_D748
    /* D820 8000CC20 AC98001C */   sw        $t8, 0x1C($a0)
    /* D824 8000CC24 8FBF0024 */  lw         $ra, 0x24($sp)
    /* D828 8000CC28 8FB00018 */  lw         $s0, 0x18($sp)
    /* D82C 8000CC2C 8FB1001C */  lw         $s1, 0x1C($sp)
    /* D830 8000CC30 8FB20020 */  lw         $s2, 0x20($sp)
    /* D834 8000CC34 03E00008 */  jr         $ra
    /* D838 8000CC38 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_8000C81C_D41C
