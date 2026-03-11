nonmatching func_8007D690_8C640, 0xE70

glabel func_8007D690_8C640
    /* 8C640 8007D690 27BDFF50 */  addiu      $sp, $sp, -0xB0
    /* 8C644 8007D694 3C028015 */  lui        $v0, %hi(D_8014ECCC)
    /* 8C648 8007D698 8C42ECCC */  lw         $v0, %lo(D_8014ECCC)($v0)
    /* 8C64C 8007D69C AFBE0040 */  sw         $fp, 0x40($sp)
    /* 8C650 8007D6A0 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 8C654 8007D6A4 AFB7003C */  sw         $s7, 0x3C($sp)
    /* 8C658 8007D6A8 AFB60038 */  sw         $s6, 0x38($sp)
    /* 8C65C 8007D6AC AFB50034 */  sw         $s5, 0x34($sp)
    /* 8C660 8007D6B0 AFB40030 */  sw         $s4, 0x30($sp)
    /* 8C664 8007D6B4 AFB3002C */  sw         $s3, 0x2C($sp)
    /* 8C668 8007D6B8 AFB20028 */  sw         $s2, 0x28($sp)
    /* 8C66C 8007D6BC AFB10024 */  sw         $s1, 0x24($sp)
    /* 8C670 8007D6C0 AFB00020 */  sw         $s0, 0x20($sp)
    /* 8C674 8007D6C4 10400380 */  beqz       $v0, .L8007E4C8_8D478
    /* 8C678 8007D6C8 0000F025 */   or        $fp, $zero, $zero
  .L8007D6CC_8C67C:
    /* 8C67C 8007D6CC 3C158015 */  lui        $s5, %hi(D_8014D510)
    /* 8C680 8007D6D0 02BEA821 */  addu       $s5, $s5, $fp
    /* 8C684 8007D6D4 92B5D510 */  lbu        $s5, %lo(D_8014D510)($s5)
    /* 8C688 8007D6D8 3C0F8005 */  lui        $t7, %hi(alienInstances)
    /* 8C68C 8007D6DC 25EF8198 */  addiu      $t7, $t7, %lo(alienInstances)
    /* 8C690 8007D6E0 00157080 */  sll        $t6, $s5, 2
    /* 8C694 8007D6E4 01D57021 */  addu       $t6, $t6, $s5
    /* 8C698 8007D6E8 000E7100 */  sll        $t6, $t6, 4
    /* 8C69C 8007D6EC 01CF8021 */  addu       $s0, $t6, $t7
    /* 8C6A0 8007D6F0 9211001A */  lbu        $s1, 0x1A($s0)
    /* 8C6A4 8007D6F4 1620000E */  bnez       $s1, .L8007D730_8C6E0
    /* 8C6A8 8007D6F8 0220B825 */   or        $s7, $s1, $zero
    /* 8C6AC 8007D6FC 0C01E93E */  jal        func_8007A4F8_894A8
    /* 8C6B0 8007D700 03C02025 */   or        $a0, $fp, $zero
    /* 8C6B4 8007D704 10400005 */  beqz       $v0, .L8007D71C_8C6CC
    /* 8C6B8 8007D708 3C048014 */   lui       $a0, %hi(D_80141C80)
    /* 8C6BC 8007D70C 27DEFFFF */  addiu      $fp, $fp, -0x1
    /* 8C6C0 8007D710 33D800FF */  andi       $t8, $fp, 0xFF
    /* 8C6C4 8007D714 10000003 */  b          .L8007D724_8C6D4
    /* 8C6C8 8007D718 0300F025 */   or        $fp, $t8, $zero
  .L8007D71C_8C6CC:
    /* 8C6CC 8007D71C 0C00731B */  jal        osSyncPrintf
    /* 8C6D0 8007D720 24841C80 */   addiu     $a0, $a0, %lo(D_80141C80)
  .L8007D724_8C6D4:
    /* 8C6D4 8007D724 3C028015 */  lui        $v0, %hi(D_8014ECCC)
    /* 8C6D8 8007D728 10000362 */  b          .L8007E4B4_8D464
    /* 8C6DC 8007D72C 8C42ECCC */   lw        $v0, %lo(D_8014ECCC)($v0)
  .L8007D730_8C6E0:
    /* 8C6E0 8007D730 8E160020 */  lw         $s6, 0x20($s0)
    /* 8C6E4 8007D734 32D90600 */  andi       $t9, $s6, 0x600
    /* 8C6E8 8007D738 1320035C */  beqz       $t9, .L8007E4AC_8D45C
    /* 8C6EC 8007D73C 32CF0200 */   andi      $t7, $s6, 0x200
    /* 8C6F0 8007D740 860C0000 */  lh         $t4, 0x0($s0)
    /* 8C6F4 8007D744 860D0002 */  lh         $t5, 0x2($s0)
    /* 8C6F8 8007D748 860E0004 */  lh         $t6, 0x4($s0)
    /* 8C6FC 8007D74C A60C002E */  sh         $t4, 0x2E($s0)
    /* 8C700 8007D750 A60D0030 */  sh         $t5, 0x30($s0)
    /* 8C704 8007D754 11E0000F */  beqz       $t7, .L8007D794_8C744
    /* 8C708 8007D758 A60E0032 */   sh        $t6, 0x32($s0)
    /* 8C70C 8007D75C 3C188005 */  lui        $t8, %hi(D_80052A8C)
    /* 8C710 8007D760 8F182A8C */  lw         $t8, %lo(D_80052A8C)($t8)
    /* 8C714 8007D764 3C0C8005 */  lui        $t4, %hi(D_80052ACA)
    /* 8C718 8007D768 33190003 */  andi       $t9, $t8, 0x3
    /* 8C71C 8007D76C 53200006 */  beql       $t9, $zero, .L8007D788_8C738
    /* 8C720 8007D770 8E0D0020 */   lw        $t5, 0x20($s0)
    /* 8C724 8007D774 918C2ACA */  lbu        $t4, %lo(D_80052ACA)($t4)
    /* 8C728 8007D778 24010002 */  addiu      $at, $zero, 0x2
    /* 8C72C 8007D77C 5581034E */  bnel       $t4, $at, .L8007E4B8_8D468
    /* 8C730 8007D780 27DE0001 */   addiu     $fp, $fp, 0x1
    /* 8C734 8007D784 8E0D0020 */  lw         $t5, 0x20($s0)
  .L8007D788_8C738:
    /* 8C738 8007D788 2401FDFF */  addiu      $at, $zero, -0x201
    /* 8C73C 8007D78C 01A17024 */  and        $t6, $t5, $at
    /* 8C740 8007D790 AE0E0020 */  sw         $t6, 0x20($s0)
  .L8007D794_8C744:
    /* 8C744 8007D794 92020037 */  lbu        $v0, 0x37($s0)
    /* 8C748 8007D798 0011C080 */  sll        $t8, $s1, 2
    /* 8C74C 8007D79C 0311C023 */  subu       $t8, $t8, $s1
    /* 8C750 8007D7A0 10400002 */  beqz       $v0, .L8007D7AC_8C75C
    /* 8C754 8007D7A4 244FFFFF */   addiu     $t7, $v0, -0x1
    /* 8C758 8007D7A8 A20F0037 */  sb         $t7, 0x37($s0)
  .L8007D7AC_8C75C:
    /* 8C75C 8007D7AC 86020042 */  lh         $v0, 0x42($s0)
    /* 8C760 8007D7B0 0018C080 */  sll        $t8, $t8, 2
    /* 8C764 8007D7B4 0311C021 */  addu       $t8, $t8, $s1
    /* 8C768 8007D7B8 1040000A */  beqz       $v0, .L8007D7E4_8C794
    /* 8C76C 8007D7BC 0018C0C0 */   sll       $t8, $t8, 3
    /* 8C770 8007D7C0 44822000 */  mtc1       $v0, $f4
    /* 8C774 8007D7C4 3C018014 */  lui        $at, %hi(D_80141E20)
    /* 8C778 8007D7C8 D4281E20 */  ldc1       $f8, %lo(D_80141E20)($at)
    /* 8C77C 8007D7CC 468021A1 */  cvt.d.w    $f6, $f4
    /* 8C780 8007D7D0 46283282 */  mul.d      $f10, $f6, $f8
    /* 8C784 8007D7D4 4620540D */  trunc.w.d  $f16, $f10
    /* 8C788 8007D7D8 44198000 */  mfc1       $t9, $f16
    /* 8C78C 8007D7DC 00000000 */  nop
    /* 8C790 8007D7E0 A6190042 */  sh         $t9, 0x42($s0)
  .L8007D7E4_8C794:
    /* 8C794 8007D7E4 86020044 */  lh         $v0, 0x44($s0)
    /* 8C798 8007D7E8 3C198025 */  lui        $t9, %hi(alienSpecs)
    /* 8C79C 8007D7EC 27396680 */  addiu      $t9, $t9, %lo(alienSpecs)
    /* 8C7A0 8007D7F0 1040000A */  beqz       $v0, .L8007D81C_8C7CC
    /* 8C7A4 8007D7F4 03199821 */   addu      $s3, $t8, $t9
    /* 8C7A8 8007D7F8 44829000 */  mtc1       $v0, $f18
    /* 8C7AC 8007D7FC 3C018014 */  lui        $at, %hi(D_80141E28)
    /* 8C7B0 8007D800 D4261E28 */  ldc1       $f6, %lo(D_80141E28)($at)
    /* 8C7B4 8007D804 46809121 */  cvt.d.w    $f4, $f18
    /* 8C7B8 8007D808 46262202 */  mul.d      $f8, $f4, $f6
    /* 8C7BC 8007D80C 4620428D */  trunc.w.d  $f10, $f8
    /* 8C7C0 8007D810 440D5000 */  mfc1       $t5, $f10
    /* 8C7C4 8007D814 00000000 */  nop
    /* 8C7C8 8007D818 A60D0044 */  sh         $t5, 0x44($s0)
  .L8007D81C_8C7CC:
    /* 8C7CC 8007D81C 8E0E0020 */  lw         $t6, 0x20($s0)
    /* 8C7D0 8007D820 000E7AC0 */  sll        $t7, $t6, 11
    /* 8C7D4 8007D824 05E20066 */  bltzl      $t7, .L8007D9C0_8C970
    /* 8C7D8 8007D828 0011C080 */   sll       $t8, $s1, 2
    /* 8C7DC 8007D82C 8E630054 */  lw         $v1, 0x54($s3)
    /* 8C7E0 8007D830 3C058005 */  lui        $a1, %hi(D_80052A8C)
    /* 8C7E4 8007D834 00036380 */  sll        $t4, $v1, 14
    /* 8C7E8 8007D838 05800060 */  bltz       $t4, .L8007D9BC_8C96C
    /* 8C7EC 8007D83C 2C620001 */   sltiu     $v0, $v1, 0x1
    /* 8C7F0 8007D840 304D4000 */  andi       $t5, $v0, 0x4000
    /* 8C7F4 8007D844 11A00018 */  beqz       $t5, .L8007D8A8_8C858
    /* 8C7F8 8007D848 8CA52A8C */   lw        $a1, %lo(D_80052A8C)($a1)
    /* 8C7FC 8007D84C 8662000C */  lh         $v0, 0xC($s3)
    /* 8C800 8007D850 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* 8C804 8007D854 44810000 */  mtc1       $at, $f0
    /* 8C808 8007D858 28410065 */  slti       $at, $v0, 0x65
    /* 8C80C 8007D85C 14200014 */  bnez       $at, .L8007D8B0_8C860
    /* 8C810 8007D860 244EFF9C */   addiu     $t6, $v0, -0x64
    /* 8C814 8007D864 448E8000 */  mtc1       $t6, $f16
    /* 8C818 8007D868 3C014049 */  lui        $at, (0x40490000 >> 16)
    /* 8C81C 8007D86C 44812800 */  mtc1       $at, $f5
    /* 8C820 8007D870 468084A1 */  cvt.d.w    $f18, $f16
    /* 8C824 8007D874 44802000 */  mtc1       $zero, $f4
    /* 8C828 8007D878 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
    /* 8C82C 8007D87C 44814800 */  mtc1       $at, $f9
    /* 8C830 8007D880 44804000 */  mtc1       $zero, $f8
    /* 8C834 8007D884 46249183 */  div.d      $f6, $f18, $f4
    /* 8C838 8007D888 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* 8C83C 8007D88C 44818000 */  mtc1       $at, $f16
    /* 8C840 8007D890 00000000 */  nop
    /* 8C844 8007D894 460084A1 */  cvt.d.s    $f18, $f16
    /* 8C848 8007D898 46283280 */  add.d      $f10, $f6, $f8
    /* 8C84C 8007D89C 462A9102 */  mul.d      $f4, $f18, $f10
    /* 8C850 8007D8A0 10000003 */  b          .L8007D8B0_8C860
    /* 8C854 8007D8A4 46202020 */   cvt.s.d   $f0, $f4
  .L8007D8A8_8C858:
    /* 8C858 8007D8A8 44800000 */  mtc1       $zero, $f0
    /* 8C85C 8007D8AC 00000000 */  nop
  .L8007D8B0_8C860:
    /* 8C860 8007D8B0 860C004C */  lh         $t4, 0x4C($s0)
    /* 8C864 8007D8B4 860F000C */  lh         $t7, 0xC($s0)
    /* 8C868 8007D8B8 3C198015 */  lui        $t9, %hi(D_8014DD50)
    /* 8C86C 8007D8BC 448C3000 */  mtc1       $t4, $f6
    /* 8C870 8007D8C0 2739DD50 */  addiu      $t9, $t9, %lo(D_8014DD50)
    /* 8C874 8007D8C4 000FC100 */  sll        $t8, $t7, 4
    /* 8C878 8007D8C8 46803220 */  cvt.s.w    $f8, $f6
    /* 8C87C 8007D8CC 03191821 */  addu       $v1, $t8, $t9
    /* 8C880 8007D8D0 3C013FD0 */  lui        $at, (0x3FD00000 >> 16)
    /* 8C884 8007D8D4 44815800 */  mtc1       $at, $f11
    /* 8C888 8007D8D8 846D0002 */  lh         $t5, 0x2($v1)
    /* 8C88C 8007D8DC 44805000 */  mtc1       $zero, $f10
    /* 8C890 8007D8E0 46004402 */  mul.s      $f16, $f8, $f0
    /* 8C894 8007D8E4 448D3000 */  mtc1       $t5, $f6
    /* 8C898 8007D8E8 0015C0C0 */  sll        $t8, $s5, 3
    /* 8C89C 8007D8EC 0315C021 */  addu       $t8, $t8, $s5
    /* 8C8A0 8007D8F0 03052021 */  addu       $a0, $t8, $a1
    /* 8C8A4 8007D8F4 0004CA80 */  sll        $t9, $a0, 10
    /* 8C8A8 8007D8F8 46803221 */  cvt.d.w    $f8, $f6
    /* 8C8AC 8007D8FC 3324FFFF */  andi       $a0, $t9, 0xFFFF
    /* 8C8B0 8007D900 E7A00080 */  swc1       $f0, 0x80($sp)
    /* 8C8B4 8007D904 460084A1 */  cvt.d.s    $f18, $f16
    /* 8C8B8 8007D908 462A9102 */  mul.d      $f4, $f18, $f10
    /* 8C8BC 8007D90C 46244401 */  sub.d      $f16, $f8, $f4
    /* 8C8C0 8007D910 4620848D */  trunc.w.d  $f18, $f16
    /* 8C8C4 8007D914 440F9000 */  mfc1       $t7, $f18
    /* 8C8C8 8007D918 0C007660 */  jal        sins
    /* 8C8CC 8007D91C A46F0002 */   sh        $t7, 0x2($v1)
    /* 8C8D0 8007D920 44825000 */  mtc1       $v0, $f10
    /* 8C8D4 8007D924 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 8C8D8 8007D928 44812800 */  mtc1       $at, $f5
    /* 8C8DC 8007D92C 468051A0 */  cvt.s.w    $f6, $f10
    /* 8C8E0 8007D930 44802000 */  mtc1       $zero, $f4
    /* 8C8E4 8007D934 3C014010 */  lui        $at, (0x40100000 >> 16)
    /* 8C8E8 8007D938 44819800 */  mtc1       $at, $f19
    /* 8C8EC 8007D93C 44809000 */  mtc1       $zero, $f18
    /* 8C8F0 8007D940 C7A00080 */  lwc1       $f0, 0x80($sp)
    /* 8C8F4 8007D944 46003221 */  cvt.d.s    $f8, $f6
    /* 8C8F8 8007D948 860F000C */  lh         $t7, 0xC($s0)
    /* 8C8FC 8007D94C 46244403 */  div.d      $f16, $f8, $f4
    /* 8C900 8007D950 3C198015 */  lui        $t9, %hi(D_8014DD50)
    /* 8C904 8007D954 2739DD50 */  addiu      $t9, $t9, %lo(D_8014DD50)
    /* 8C908 8007D958 000FC100 */  sll        $t8, $t7, 4
    /* 8C90C 8007D95C 03191821 */  addu       $v1, $t8, $t9
    /* 8C910 8007D960 3C013FD0 */  lui        $at, (0x3FD00000 >> 16)
    /* 8C914 8007D964 846D0002 */  lh         $t5, 0x2($v1)
    /* 8C918 8007D968 46328282 */  mul.d      $f10, $f16, $f18
    /* 8C91C 8007D96C 4620518D */  trunc.w.d  $f6, $f10
    /* 8C920 8007D970 44805000 */  mtc1       $zero, $f10
    /* 8C924 8007D974 44815800 */  mtc1       $at, $f11
    /* 8C928 8007D978 440E3000 */  mfc1       $t6, $f6
    /* 8C92C 8007D97C 00000000 */  nop
    /* 8C930 8007D980 A60E004C */  sh         $t6, 0x4C($s0)
    /* 8C934 8007D984 860C004C */  lh         $t4, 0x4C($s0)
    /* 8C938 8007D988 448C4000 */  mtc1       $t4, $f8
    /* 8C93C 8007D98C 00000000 */  nop
    /* 8C940 8007D990 46804120 */  cvt.s.w    $f4, $f8
    /* 8C944 8007D994 448D4000 */  mtc1       $t5, $f8
    /* 8C948 8007D998 46002402 */  mul.s      $f16, $f4, $f0
    /* 8C94C 8007D99C 46804121 */  cvt.d.w    $f4, $f8
    /* 8C950 8007D9A0 460084A1 */  cvt.d.s    $f18, $f16
    /* 8C954 8007D9A4 462A9182 */  mul.d      $f6, $f18, $f10
    /* 8C958 8007D9A8 46262400 */  add.d      $f16, $f4, $f6
    /* 8C95C 8007D9AC 4620848D */  trunc.w.d  $f18, $f16
    /* 8C960 8007D9B0 440F9000 */  mfc1       $t7, $f18
    /* 8C964 8007D9B4 00000000 */  nop
    /* 8C968 8007D9B8 A46F0002 */  sh         $t7, 0x2($v1)
  .L8007D9BC_8C96C:
    /* 8C96C 8007D9BC 0011C080 */  sll        $t8, $s1, 2
  .L8007D9C0_8C970:
    /* 8C970 8007D9C0 0311C023 */  subu       $t8, $t8, $s1
    /* 8C974 8007D9C4 0018C080 */  sll        $t8, $t8, 2
    /* 8C978 8007D9C8 9202001B */  lbu        $v0, 0x1B($s0)
    /* 8C97C 8007D9CC 0311C021 */  addu       $t8, $t8, $s1
    /* 8C980 8007D9D0 3C198025 */  lui        $t9, %hi(alienSpecs)
    /* 8C984 8007D9D4 27396680 */  addiu      $t9, $t9, %lo(alienSpecs)
    /* 8C988 8007D9D8 0018C0C0 */  sll        $t8, $t8, 3
    /* 8C98C 8007D9DC 03199821 */  addu       $s3, $t8, $t9
    /* 8C990 8007D9E0 240100FF */  addiu      $at, $zero, 0xFF
    /* 8C994 8007D9E4 10410008 */  beq        $v0, $at, .L8007DA08_8C9B8
    /* 8C998 8007D9E8 8E630054 */   lw        $v1, 0x54($s3)
    /* 8C99C 8007D9EC 3C0C8004 */  lui        $t4, %hi(D_80047F94)
    /* 8C9A0 8007D9F0 8D8C7F94 */  lw         $t4, %lo(D_80047F94)($t4)
    /* 8C9A4 8007D9F4 51820005 */  beql       $t4, $v0, .L8007DA0C_8C9BC
    /* 8C9A8 8007D9F8 3C018000 */   lui       $at, (0x80000001 >> 16)
    /* 8C9AC 8007D9FC 8E0D0020 */  lw         $t5, 0x20($s0)
    /* 8C9B0 8007DA00 000D72C0 */  sll        $t6, $t5, 11
    /* 8C9B4 8007DA04 05C1025C */  bgez       $t6, .L8007E378_8D328
  .L8007DA08_8C9B8:
    /* 8C9B8 8007DA08 3C018000 */   lui       $at, (0x80000001 >> 16)
  .L8007DA0C_8C9BC:
    /* 8C9BC 8007DA0C 34210001 */  ori        $at, $at, (0x80000001 & 0xFFFF)
    /* 8C9C0 8007DA10 00617824 */  and        $t7, $v1, $at
    /* 8C9C4 8007DA14 11E00005 */  beqz       $t7, .L8007DA2C_8C9DC
    /* 8C9C8 8007DA18 00000000 */   nop
    /* 8C9CC 8007DA1C 0C047798 */  jal        func_8011DE60_12CE10
    /* 8C9D0 8007DA20 24040001 */   addiu     $a0, $zero, 0x1
    /* 8C9D4 8007DA24 10000004 */  b          .L8007DA38_8C9E8
    /* 8C9D8 8007DA28 32B400FF */   andi      $s4, $s5, 0xFF
  .L8007DA2C_8C9DC:
    /* 8C9DC 8007DA2C 0C047798 */  jal        func_8011DE60_12CE10
    /* 8C9E0 8007DA30 00002025 */   or        $a0, $zero, $zero
    /* 8C9E4 8007DA34 32B400FF */  andi       $s4, $s5, 0xFF
  .L8007DA38_8C9E8:
    /* 8C9E8 8007DA38 328400FF */  andi       $a0, $s4, 0xFF
    /* 8C9EC 8007DA3C 02A01025 */  or         $v0, $s5, $zero
    /* 8C9F0 8007DA40 0C020039 */  jal        func_800800E4_8F094
    /* 8C9F4 8007DA44 AFB50060 */   sw        $s5, 0x60($sp)
    /* 8C9F8 8007DA48 0016C040 */  sll        $t8, $s6, 1
    /* 8C9FC 8007DA4C 07000005 */  bltz       $t8, .L8007DA64_8CA14
    /* 8CA00 8007DA50 3C0C8022 */   lui       $t4, %hi(D_80222A70)
    /* 8CA04 8007DA54 8E630054 */  lw         $v1, 0x54($s3)
    /* 8CA08 8007DA58 30790800 */  andi       $t9, $v1, 0x800
    /* 8CA0C 8007DA5C 1320006F */  beqz       $t9, .L8007DC1C_8CBCC
    /* 8CA10 8007DA60 306F0040 */   andi      $t7, $v1, 0x40
  .L8007DA64_8CA14:
    /* 8CA14 8007DA64 8D8C2A70 */  lw         $t4, %lo(D_80222A70)($t4)
    /* 8CA18 8007DA68 860D0002 */  lh         $t5, 0x2($s0)
    /* 8CA1C 8007DA6C 24020070 */  addiu      $v0, $zero, 0x70
    /* 8CA20 8007DA70 8E630054 */  lw         $v1, 0x54($s3)
    /* 8CA24 8007DA74 018D082A */  slt        $at, $t4, $t5
    /* 8CA28 8007DA78 14200006 */  bnez       $at, .L8007DA94_8CA44
    /* 8CA2C 8007DA7C 3C0E8005 */   lui       $t6, %hi(D_80052ACA)
    /* 8CA30 8007DA80 91CE2ACA */  lbu        $t6, %lo(D_80052ACA)($t6)
    /* 8CA34 8007DA84 24010002 */  addiu      $at, $zero, 0x2
    /* 8CA38 8007DA88 51C10003 */  beql       $t6, $at, .L8007DA98_8CA48
    /* 8CA3C 8007DA8C 860F0010 */   lh        $t7, 0x10($s0)
    /* 8CA40 8007DA90 24020020 */  addiu      $v0, $zero, 0x20
  .L8007DA94_8CA44:
    /* 8CA44 8007DA94 860F0010 */  lh         $t7, 0x10($s0)
  .L8007DA98_8CA48:
    /* 8CA48 8007DA98 30798000 */  andi       $t9, $v1, 0x8000
    /* 8CA4C 8007DA9C 01E2C023 */  subu       $t8, $t7, $v0
    /* 8CA50 8007DAA0 13200014 */  beqz       $t9, .L8007DAF4_8CAA4
    /* 8CA54 8007DAA4 A6180010 */   sh        $t8, 0x10($s0)
    /* 8CA58 8007DAA8 8604000A */  lh         $a0, 0xA($s0)
    /* 8CA5C 8007DAAC 28813E80 */  slti       $at, $a0, 0x3E80
    /* 8CA60 8007DAB0 10200003 */  beqz       $at, .L8007DAC0_8CA70
    /* 8CA64 8007DAB4 248C03E8 */   addiu     $t4, $a0, 0x3E8
    /* 8CA68 8007DAB8 A60C000A */  sh         $t4, 0xA($s0)
    /* 8CA6C 8007DABC 8604000A */  lh         $a0, 0xA($s0)
  .L8007DAC0_8CA70:
    /* 8CA70 8007DAC0 1AA00003 */  blez       $s5, .L8007DAD0_8CA80
    /* 8CA74 8007DAC4 00000000 */   nop
    /* 8CA78 8007DAC8 10000006 */  b          .L8007DAE4_8CA94
    /* 8CA7C 8007DACC 24020001 */   addiu     $v0, $zero, 0x1
  .L8007DAD0_8CA80:
    /* 8CA80 8007DAD0 06A10003 */  bgez       $s5, .L8007DAE0_8CA90
    /* 8CA84 8007DAD4 00001825 */   or        $v1, $zero, $zero
    /* 8CA88 8007DAD8 10000001 */  b          .L8007DAE0_8CA90
    /* 8CA8C 8007DADC 2403FFFF */   addiu     $v1, $zero, -0x1
  .L8007DAE0_8CA90:
    /* 8CA90 8007DAE0 00601025 */  or         $v0, $v1, $zero
  .L8007DAE4_8CA94:
    /* 8CA94 8007DAE4 00820019 */  multu      $a0, $v0
    /* 8CA98 8007DAE8 00006812 */  mflo       $t5
    /* 8CA9C 8007DAEC 000D70C3 */  sra        $t6, $t5, 3
    /* 8CAA0 8007DAF0 A60E0008 */  sh         $t6, 0x8($s0)
  .L8007DAF4_8CAA4:
    /* 8CAA4 8007DAF4 8E0F0020 */  lw         $t7, 0x20($s0)
    /* 8CAA8 8007DAF8 3C198005 */  lui        $t9, %hi(D_80052ACA)
    /* 8CAAC 8007DAFC 000FC180 */  sll        $t8, $t7, 6
    /* 8CAB0 8007DB00 07020007 */  bltzl      $t8, .L8007DB20_8CAD0
    /* 8CAB4 8007DB04 86040000 */   lh        $a0, 0x0($s0)
    /* 8CAB8 8007DB08 93392ACA */  lbu        $t9, %lo(D_80052ACA)($t9)
    /* 8CABC 8007DB0C 24010002 */  addiu      $at, $zero, 0x2
    /* 8CAC0 8007DB10 27A6009A */  addiu      $a2, $sp, 0x9A
    /* 8CAC4 8007DB14 57210008 */  bnel       $t9, $at, .L8007DB38_8CAE8
    /* 8CAC8 8007DB18 86040000 */   lh        $a0, 0x0($s0)
    /* 8CACC 8007DB1C 86040000 */  lh         $a0, 0x0($s0)
  .L8007DB20_8CAD0:
    /* 8CAD0 8007DB20 0C02E134 */  jal        func_800B84D0_C7480
    /* 8CAD4 8007DB24 86050004 */   lh        $a1, 0x4($s0)
    /* 8CAD8 8007DB28 00026203 */  sra        $t4, $v0, 8
    /* 8CADC 8007DB2C 10000004 */  b          .L8007DB40_8CAF0
    /* 8CAE0 8007DB30 A7AC009A */   sh        $t4, 0x9A($sp)
    /* 8CAE4 8007DB34 86040000 */  lh         $a0, 0x0($s0)
  .L8007DB38_8CAE8:
    /* 8CAE8 8007DB38 0C0479BF */  jal        func_8011E6FC_12D6AC
    /* 8CAEC 8007DB3C 86050004 */   lh        $a1, 0x4($s0)
  .L8007DB40_8CAF0:
    /* 8CAF0 8007DB40 8E6D0054 */  lw         $t5, 0x54($s3)
    /* 8CAF4 8007DB44 00167AC0 */  sll        $t7, $s6, 11
    /* 8CAF8 8007DB48 3C028022 */  lui        $v0, %hi(D_80222A70)
    /* 8CAFC 8007DB4C 31AE0001 */  andi       $t6, $t5, 0x1
    /* 8CB00 8007DB50 55C00007 */  bnel       $t6, $zero, .L8007DB70_8CB20
    /* 8CB04 8007DB54 86050002 */   lh        $a1, 0x2($s0)
    /* 8CB08 8007DB58 05E00004 */  bltz       $t7, .L8007DB6C_8CB1C
    /* 8CB0C 8007DB5C 87B8009A */   lh        $t8, 0x9A($sp)
    /* 8CB10 8007DB60 86790058 */  lh         $t9, 0x58($s3)
    /* 8CB14 8007DB64 03196021 */  addu       $t4, $t8, $t9
    /* 8CB18 8007DB68 A7AC009A */  sh         $t4, 0x9A($sp)
  .L8007DB6C_8CB1C:
    /* 8CB1C 8007DB6C 86050002 */  lh         $a1, 0x2($s0)
  .L8007DB70_8CB20:
    /* 8CB20 8007DB70 8C422A70 */  lw         $v0, %lo(D_80222A70)($v0)
    /* 8CB24 8007DB74 00A2082A */  slt        $at, $a1, $v0
    /* 8CB28 8007DB78 50200012 */  beql       $at, $zero, .L8007DBC4_8CB74
    /* 8CB2C 8007DB7C 860C0010 */   lh        $t4, 0x10($s0)
    /* 8CB30 8007DB80 860D0030 */  lh         $t5, 0x30($s0)
    /* 8CB34 8007DB84 3C0E8005 */  lui        $t6, %hi(D_80052ACA)
    /* 8CB38 8007DB88 004D082A */  slt        $at, $v0, $t5
    /* 8CB3C 8007DB8C 5020000D */  beql       $at, $zero, .L8007DBC4_8CB74
    /* 8CB40 8007DB90 860C0010 */   lh        $t4, 0x10($s0)
    /* 8CB44 8007DB94 91CE2ACA */  lbu        $t6, %lo(D_80052ACA)($t6)
    /* 8CB48 8007DB98 24010002 */  addiu      $at, $zero, 0x2
    /* 8CB4C 8007DB9C 51C10009 */  beql       $t6, $at, .L8007DBC4_8CB74
    /* 8CB50 8007DBA0 860C0010 */   lh        $t4, 0x10($s0)
    /* 8CB54 8007DBA4 8666000C */  lh         $a2, 0xC($s3)
    /* 8CB58 8007DBA8 86040000 */  lh         $a0, 0x0($s0)
    /* 8CB5C 8007DBAC 86050004 */  lh         $a1, 0x4($s0)
    /* 8CB60 8007DBB0 00067840 */  sll        $t7, $a2, 1
    /* 8CB64 8007DBB4 0C0383A7 */  jal        func_800E0E9C_EFE4C
    /* 8CB68 8007DBB8 31E6FFFF */   andi      $a2, $t7, 0xFFFF
    /* 8CB6C 8007DBBC 86050002 */  lh         $a1, 0x2($s0)
    /* 8CB70 8007DBC0 860C0010 */  lh         $t4, 0x10($s0)
  .L8007DBC4_8CB74:
    /* 8CB74 8007DBC4 87B9009A */  lh         $t9, 0x9A($sp)
    /* 8CB78 8007DBC8 000C6943 */  sra        $t5, $t4, 5
    /* 8CB7C 8007DBCC 032D7023 */  subu       $t6, $t9, $t5
    /* 8CB80 8007DBD0 00AE082A */  slt        $at, $a1, $t6
    /* 8CB84 8007DBD4 50200034 */  beql       $at, $zero, .L8007DCA8_8CC58
    /* 8CB88 8007DBD8 0016C2C0 */   sll       $t8, $s6, 11
    /* 8CB8C 8007DBDC 8E0F0020 */  lw         $t7, 0x20($s0)
    /* 8CB90 8007DBE0 8E790054 */  lw         $t9, 0x54($s3)
    /* 8CB94 8007DBE4 3C01BFFF */  lui        $at, (0xBFFFFFFF >> 16)
    /* 8CB98 8007DBE8 87AC009A */  lh         $t4, 0x9A($sp)
    /* 8CB9C 8007DBEC 3421FFFF */  ori        $at, $at, (0xBFFFFFFF & 0xFFFF)
    /* 8CBA0 8007DBF0 01E1C024 */  and        $t8, $t7, $at
    /* 8CBA4 8007DBF4 00196940 */  sll        $t5, $t9, 5
    /* 8CBA8 8007DBF8 AE180020 */  sw         $t8, 0x20($s0)
    /* 8CBAC 8007DBFC 05A00029 */  bltz       $t5, .L8007DCA4_8CC54
    /* 8CBB0 8007DC00 A60C0002 */   sh        $t4, 0x2($s0)
    /* 8CBB4 8007DC04 860E0006 */  lh         $t6, 0x6($s0)
    /* 8CBB8 8007DC08 A600000A */  sh         $zero, 0xA($s0)
    /* 8CBBC 8007DC0C A6000012 */  sh         $zero, 0x12($s0)
    /* 8CBC0 8007DC10 A6000010 */  sh         $zero, 0x10($s0)
    /* 8CBC4 8007DC14 10000023 */  b          .L8007DCA4_8CC54
    /* 8CBC8 8007DC18 A60E000E */   sh        $t6, 0xE($s0)
  .L8007DC1C_8CBCC:
    /* 8CBCC 8007DC1C 51E00010 */  beql       $t7, $zero, .L8007DC60_8CC10
    /* 8CBD0 8007DC20 306F0080 */   andi      $t7, $v1, 0x80
    /* 8CBD4 8007DC24 86040000 */  lh         $a0, 0x0($s0)
    /* 8CBD8 8007DC28 0C02E134 */  jal        func_800B84D0_C7480
    /* 8CBDC 8007DC2C 86050004 */   lh        $a1, 0x4($s0)
    /* 8CBE0 8007DC30 86780058 */  lh         $t8, 0x58($s3)
    /* 8CBE4 8007DC34 00026203 */  sra        $t4, $v0, 8
    /* 8CBE8 8007DC38 860D0002 */  lh         $t5, 0x2($s0)
    /* 8CBEC 8007DC3C 030CC821 */  addu       $t9, $t8, $t4
    /* 8CBF0 8007DC40 A7B9009A */  sh         $t9, 0x9A($sp)
    /* 8CBF4 8007DC44 87AE009A */  lh         $t6, 0x9A($sp)
    /* 8CBF8 8007DC48 01AE082A */  slt        $at, $t5, $t6
    /* 8CBFC 8007DC4C 50200016 */  beql       $at, $zero, .L8007DCA8_8CC58
    /* 8CC00 8007DC50 0016C2C0 */   sll       $t8, $s6, 11
    /* 8CC04 8007DC54 10000013 */  b          .L8007DCA4_8CC54
    /* 8CC08 8007DC58 A60E0002 */   sh        $t6, 0x2($s0)
    /* 8CC0C 8007DC5C 306F0080 */  andi       $t7, $v1, 0x80
  .L8007DC60_8CC10:
    /* 8CC10 8007DC60 11E00007 */  beqz       $t7, .L8007DC80_8CC30
    /* 8CC14 8007DC64 306D0001 */   andi      $t5, $v1, 0x1
    /* 8CC18 8007DC68 3C0C8022 */  lui        $t4, %hi(D_80222A70)
    /* 8CC1C 8007DC6C 8D8C2A70 */  lw         $t4, %lo(D_80222A70)($t4)
    /* 8CC20 8007DC70 86780058 */  lh         $t8, 0x58($s3)
    /* 8CC24 8007DC74 030CC821 */  addu       $t9, $t8, $t4
    /* 8CC28 8007DC78 1000000A */  b          .L8007DCA4_8CC54
    /* 8CC2C 8007DC7C A6190002 */   sh        $t9, 0x2($s0)
  .L8007DC80_8CC30:
    /* 8CC30 8007DC80 55A00009 */  bnel       $t5, $zero, .L8007DCA8_8CC58
    /* 8CC34 8007DC84 0016C2C0 */   sll       $t8, $s6, 11
    /* 8CC38 8007DC88 8E0E0020 */  lw         $t6, 0x20($s0)
    /* 8CC3C 8007DC8C 3C012010 */  lui        $at, (0x20100000 >> 16)
    /* 8CC40 8007DC90 01C17824 */  and        $t7, $t6, $at
    /* 8CC44 8007DC94 55E00004 */  bnel       $t7, $zero, .L8007DCA8_8CC58
    /* 8CC48 8007DC98 0016C2C0 */   sll       $t8, $s6, 11
    /* 8CC4C 8007DC9C 0C020144 */  jal        func_80080510_8F4C0
    /* 8CC50 8007DCA0 328400FF */   andi      $a0, $s4, 0xFF
  .L8007DCA4_8CC54:
    /* 8CC54 8007DCA4 0016C2C0 */  sll        $t8, $s6, 11
  .L8007DCA8_8CC58:
    /* 8CC58 8007DCA8 07010080 */  bgez       $t8, .L8007DEAC_8CE5C
    /* 8CC5C 8007DCAC 00166280 */   sll       $t4, $s6, 10
    /* 8CC60 8007DCB0 24010001 */  addiu      $at, $zero, 0x1
    /* 8CC64 8007DCB4 56E1000C */  bnel       $s7, $at, .L8007DCE8_8CC98
    /* 8CC68 8007DCB8 860C002C */   lh        $t4, 0x2C($s0)
    /* 8CC6C 8007DCBC 92020024 */  lbu        $v0, 0x24($s0)
    /* 8CC70 8007DCC0 24010003 */  addiu      $at, $zero, 0x3
    /* 8CC74 8007DCC4 10410005 */  beq        $v0, $at, .L8007DCDC_8CC8C
    /* 8CC78 8007DCC8 24010004 */   addiu     $at, $zero, 0x4
    /* 8CC7C 8007DCCC 10410003 */  beq        $v0, $at, .L8007DCDC_8CC8C
    /* 8CC80 8007DCD0 2401001D */   addiu     $at, $zero, 0x1D
    /* 8CC84 8007DCD4 54410004 */  bnel       $v0, $at, .L8007DCE8_8CC98
    /* 8CC88 8007DCD8 860C002C */   lh        $t4, 0x2C($s0)
  .L8007DCDC_8CC8C:
    /* 8CC8C 8007DCDC 0C02AE33 */  jal        func_800AB8CC_BA87C
    /* 8CC90 8007DCE0 328400FF */   andi      $a0, $s4, 0xFF
    /* 8CC94 8007DCE4 860C002C */  lh         $t4, 0x2C($s0)
  .L8007DCE8_8CC98:
    /* 8CC98 8007DCE8 3C0D8022 */  lui        $t5, %hi(D_80222A70)
    /* 8CC9C 8007DCEC 86050002 */  lh         $a1, 0x2($s0)
    /* 8CCA0 8007DCF0 2599FFFF */  addiu      $t9, $t4, -0x1
    /* 8CCA4 8007DCF4 A619002C */  sh         $t9, 0x2C($s0)
    /* 8CCA8 8007DCF8 8DAD2A70 */  lw         $t5, %lo(D_80222A70)($t5)
    /* 8CCAC 8007DCFC 25AEFF9C */  addiu      $t6, $t5, -0x64
    /* 8CCB0 8007DD00 00AE082A */  slt        $at, $a1, $t6
    /* 8CCB4 8007DD04 10200020 */  beqz       $at, .L8007DD88_8CD38
    /* 8CCB8 8007DD08 2401001A */   addiu     $at, $zero, 0x1A
    /* 8CCBC 8007DD0C 52E1001F */  beql       $s7, $at, .L8007DD8C_8CD3C
    /* 8CCC0 8007DD10 8E62005C */   lw        $v0, 0x5C($s3)
    /* 8CCC4 8007DD14 8E6F0054 */  lw         $t7, 0x54($s3)
    /* 8CCC8 8007DD18 3C011000 */  lui        $at, (0x10000080 >> 16)
    /* 8CCCC 8007DD1C 34210080 */  ori        $at, $at, (0x10000080 & 0xFFFF)
    /* 8CCD0 8007DD20 01E1C024 */  and        $t8, $t7, $at
    /* 8CCD4 8007DD24 57000019 */  bnel       $t8, $zero, .L8007DD8C_8CD3C
    /* 8CCD8 8007DD28 8E62005C */   lw        $v0, 0x5C($s3)
    /* 8CCDC 8007DD2C 8E020020 */  lw         $v0, 0x20($s0)
    /* 8CCE0 8007DD30 00026300 */  sll        $t4, $v0, 12
    /* 8CCE4 8007DD34 05810006 */  bgez       $t4, .L8007DD50_8CD00
    /* 8CCE8 8007DD38 00402025 */   or        $a0, $v0, $zero
    /* 8CCEC 8007DD3C 30990007 */  andi       $t9, $a0, 0x7
    /* 8CCF0 8007DD40 0C03CC64 */  jal        func_800F3190_102140
    /* 8CCF4 8007DD44 03202025 */   or        $a0, $t9, $zero
    /* 8CCF8 8007DD48 8E020020 */  lw         $v0, 0x20($s0)
    /* 8CCFC 8007DD4C 86050002 */  lh         $a1, 0x2($s0)
  .L8007DD50_8CD00:
    /* 8CD00 8007DD50 3C01FFF7 */  lui        $at, (0xFFF7FFFF >> 16)
    /* 8CD04 8007DD54 3421FFFF */  ori        $at, $at, (0xFFF7FFFF & 0xFFFF)
    /* 8CD08 8007DD58 00416824 */  and        $t5, $v0, $at
    /* 8CD0C 8007DD5C AE0D0020 */  sw         $t5, 0x20($s0)
    /* 8CD10 8007DD60 86040000 */  lh         $a0, 0x0($s0)
    /* 8CD14 8007DD64 86060004 */  lh         $a2, 0x4($s0)
    /* 8CD18 8007DD68 9667000C */  lhu        $a3, 0xC($s3)
    /* 8CD1C 8007DD6C 0C037E12 */  jal        func_800DF848_EE7F8
    /* 8CD20 8007DD70 AFA00010 */   sw        $zero, 0x10($sp)
    /* 8CD24 8007DD74 0C01E644 */  jal        func_80079910_888C0
    /* 8CD28 8007DD78 02A02025 */   or        $a0, $s5, $zero
    /* 8CD2C 8007DD7C 3C028015 */  lui        $v0, %hi(D_8014ECCC)
    /* 8CD30 8007DD80 100001CC */  b          .L8007E4B4_8D464
    /* 8CD34 8007DD84 8C42ECCC */   lw        $v0, %lo(D_8014ECCC)($v0)
  .L8007DD88_8CD38:
    /* 8CD38 8007DD88 8E62005C */  lw         $v0, 0x5C($s3)
  .L8007DD8C_8CD3C:
    /* 8CD3C 8007DD8C 328400FF */  andi       $a0, $s4, 0xFF
    /* 8CD40 8007DD90 24050028 */  addiu      $a1, $zero, 0x28
    /* 8CD44 8007DD94 10400005 */  beqz       $v0, .L8007DDAC_8CD5C
    /* 8CD48 8007DD98 00003025 */   or        $a2, $zero, $zero
    /* 8CD4C 8007DD9C 0040F809 */  jalr       $v0
    /* 8CD50 8007DDA0 328400FF */   andi      $a0, $s4, 0xFF
    /* 8CD54 8007DDA4 10000005 */  b          .L8007DDBC_8CD6C
    /* 8CD58 8007DDA8 8E0E0020 */   lw        $t6, 0x20($s0)
  .L8007DDAC_8CD5C:
    /* 8CD5C 8007DDAC 24070002 */  addiu      $a3, $zero, 0x2
    /* 8CD60 8007DDB0 0C0227AD */  jal        func_80089EB4_98E64
    /* 8CD64 8007DDB4 AFA00010 */   sw        $zero, 0x10($sp)
    /* 8CD68 8007DDB8 8E0E0020 */  lw         $t6, 0x20($s0)
  .L8007DDBC_8CD6C:
    /* 8CD6C 8007DDBC 000E7B00 */  sll        $t7, $t6, 12
    /* 8CD70 8007DDC0 05E30004 */  bgezl      $t7, .L8007DDD4_8CD84
    /* 8CD74 8007DDC4 860C002C */   lh        $t4, 0x2C($s0)
    /* 8CD78 8007DDC8 8618000E */  lh         $t8, 0xE($s0)
    /* 8CD7C 8007DDCC A6180006 */  sh         $t8, 0x6($s0)
    /* 8CD80 8007DDD0 860C002C */  lh         $t4, 0x2C($s0)
  .L8007DDD4_8CD84:
    /* 8CD84 8007DDD4 1D800032 */  bgtz       $t4, .L8007DEA0_8CE50
    /* 8CD88 8007DDD8 00000000 */   nop
    /* 8CD8C 8007DDDC 86040000 */  lh         $a0, 0x0($s0)
    /* 8CD90 8007DDE0 86050004 */  lh         $a1, 0x4($s0)
    /* 8CD94 8007DDE4 24061000 */  addiu      $a2, $zero, 0x1000
    /* 8CD98 8007DDE8 0004CA03 */  sra        $t9, $a0, 8
    /* 8CD9C 8007DDEC 00057A03 */  sra        $t7, $a1, 8
    /* 8CDA0 8007DDF0 000FC600 */  sll        $t8, $t7, 24
    /* 8CDA4 8007DDF4 00196E00 */  sll        $t5, $t9, 24
    /* 8CDA8 8007DDF8 000D2603 */  sra        $a0, $t5, 24
    /* 8CDAC 8007DDFC 0C02CC97 */  jal        func_800B325C_C220C
    /* 8CDB0 8007DE00 00182E03 */   sra       $a1, $t8, 24
    /* 8CDB4 8007DE04 14400024 */  bnez       $v0, .L8007DE98_8CE48
    /* 8CDB8 8007DE08 00000000 */   nop
    /* 8CDBC 8007DE0C 86040000 */  lh         $a0, 0x0($s0)
    /* 8CDC0 8007DE10 0C02E134 */  jal        func_800B84D0_C7480
    /* 8CDC4 8007DE14 86050004 */   lh        $a1, 0x4($s0)
    /* 8CDC8 8007DE18 86190002 */  lh         $t9, 0x2($s0)
    /* 8CDCC 8007DE1C 00026A03 */  sra        $t5, $v0, 8
    /* 8CDD0 8007DE20 25AE0064 */  addiu      $t6, $t5, 0x64
    /* 8CDD4 8007DE24 01D9082A */  slt        $at, $t6, $t9
    /* 8CDD8 8007DE28 1420001B */  bnez       $at, .L8007DE98_8CE48
    /* 8CDDC 8007DE2C 00000000 */   nop
    /* 8CDE0 8007DE30 920F001A */  lbu        $t7, 0x1A($s0)
    /* 8CDE4 8007DE34 3C028025 */  lui        $v0, %hi(D_8025668C)
    /* 8CDE8 8007DE38 00003025 */  or         $a2, $zero, $zero
    /* 8CDEC 8007DE3C 000FC080 */  sll        $t8, $t7, 2
    /* 8CDF0 8007DE40 030FC023 */  subu       $t8, $t8, $t7
    /* 8CDF4 8007DE44 0018C080 */  sll        $t8, $t8, 2
    /* 8CDF8 8007DE48 030FC021 */  addu       $t8, $t8, $t7
    /* 8CDFC 8007DE4C 0018C0C0 */  sll        $t8, $t8, 3
    /* 8CE00 8007DE50 00581021 */  addu       $v0, $v0, $t8
    /* 8CE04 8007DE54 8442668C */  lh         $v0, %lo(D_8025668C)($v0)
    /* 8CE08 8007DE58 24070001 */  addiu      $a3, $zero, 0x1
    /* 8CE0C 8007DE5C 28410096 */  slti       $at, $v0, 0x96
    /* 8CE10 8007DE60 54200007 */  bnel       $at, $zero, .L8007DE80_8CE30
    /* 8CE14 8007DE64 28410064 */   slti      $at, $v0, 0x64
    /* 8CE18 8007DE68 86040000 */  lh         $a0, 0x0($s0)
    /* 8CE1C 8007DE6C 0C02E360 */  jal        func_800B8D80_C7D30
    /* 8CE20 8007DE70 86050004 */   lh        $a1, 0x4($s0)
    /* 8CE24 8007DE74 10000008 */  b          .L8007DE98_8CE48
    /* 8CE28 8007DE78 00000000 */   nop
    /* 8CE2C 8007DE7C 28410064 */  slti       $at, $v0, 0x64
  .L8007DE80_8CE30:
    /* 8CE30 8007DE80 14200005 */  bnez       $at, .L8007DE98_8CE48
    /* 8CE34 8007DE84 00003025 */   or        $a2, $zero, $zero
    /* 8CE38 8007DE88 86040000 */  lh         $a0, 0x0($s0)
    /* 8CE3C 8007DE8C 86050004 */  lh         $a1, 0x4($s0)
    /* 8CE40 8007DE90 0C02E360 */  jal        func_800B8D80_C7D30
    /* 8CE44 8007DE94 00003825 */   or        $a3, $zero, $zero
  .L8007DE98_8CE48:
    /* 8CE48 8007DE98 0C01E644 */  jal        func_80079910_888C0
    /* 8CE4C 8007DE9C 02A02025 */   or        $a0, $s5, $zero
  .L8007DEA0_8CE50:
    /* 8CE50 8007DEA0 3C028015 */  lui        $v0, %hi(D_8014ECCC)
    /* 8CE54 8007DEA4 10000183 */  b          .L8007E4B4_8D464
    /* 8CE58 8007DEA8 8C42ECCC */   lw        $v0, %lo(D_8014ECCC)($v0)
  .L8007DEAC_8CE5C:
    /* 8CE5C 8007DEAC 05830007 */  bgezl      $t4, .L8007DECC_8CE7C
    /* 8CE60 8007DEB0 8E6D0054 */   lw        $t5, 0x54($s3)
    /* 8CE64 8007DEB4 0C021EBF */  jal        func_80087AFC_96AAC
    /* 8CE68 8007DEB8 328400FF */   andi      $a0, $s4, 0xFF
    /* 8CE6C 8007DEBC 3C028015 */  lui        $v0, %hi(D_8014ECCC)
    /* 8CE70 8007DEC0 1000017C */  b          .L8007E4B4_8D464
    /* 8CE74 8007DEC4 8C42ECCC */   lw        $v0, %lo(D_8014ECCC)($v0)
    /* 8CE78 8007DEC8 8E6D0054 */  lw         $t5, 0x54($s3)
  .L8007DECC_8CE7C:
    /* 8CE7C 8007DECC 3C0E8005 */  lui        $t6, %hi(D_80048180)
    /* 8CE80 8007DED0 000DCB40 */  sll        $t9, $t5, 13
    /* 8CE84 8007DED4 072100A4 */  bgez       $t9, .L8007E168_8D118
    /* 8CE88 8007DED8 00000000 */   nop
    /* 8CE8C 8007DEDC 8DCE8180 */  lw         $t6, %lo(D_80048180)($t6)
    /* 8CE90 8007DEE0 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 8CE94 8007DEE4 15C000A0 */  bnez       $t6, .L8007E168_8D118
    /* 8CE98 8007DEE8 00000000 */   nop
    /* 8CE9C 8007DEEC 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 8CEA0 8007DEF0 860F0000 */  lh         $t7, 0x0($s0)
    /* 8CEA4 8007DEF4 24030003 */  addiu      $v1, $zero, 0x3
    /* 8CEA8 8007DEF8 84980000 */  lh         $t8, 0x0($a0)
    /* 8CEAC 8007DEFC 86190002 */  lh         $t9, 0x2($s0)
    /* 8CEB0 8007DF00 848E0002 */  lh         $t6, 0x2($a0)
    /* 8CEB4 8007DF04 01F86023 */  subu       $t4, $t7, $t8
    /* 8CEB8 8007DF08 01830019 */  multu      $t4, $v1
    /* 8CEBC 8007DF0C 860F0004 */  lh         $t7, 0x4($s0)
    /* 8CEC0 8007DF10 84980004 */  lh         $t8, 0x4($a0)
    /* 8CEC4 8007DF14 032E1023 */  subu       $v0, $t9, $t6
    /* 8CEC8 8007DF18 01F86023 */  subu       $t4, $t7, $t8
    /* 8CECC 8007DF1C 00008812 */  mflo       $s1
    /* 8CED0 8007DF20 00116883 */  sra        $t5, $s1, 2
    /* 8CED4 8007DF24 01A08825 */  or         $s1, $t5, $zero
    /* 8CED8 8007DF28 01830019 */  multu      $t4, $v1
    /* 8CEDC 8007DF2C 00009012 */  mflo       $s2
    /* 8CEE0 8007DF30 00126883 */  sra        $t5, $s2, 2
    /* 8CEE4 8007DF34 01A09025 */  or         $s2, $t5, $zero
    /* 8CEE8 8007DF38 02310019 */  multu      $s1, $s1
    /* 8CEEC 8007DF3C 0000C812 */  mflo       $t9
    /* 8CEF0 8007DF40 00000000 */  nop
    /* 8CEF4 8007DF44 00000000 */  nop
    /* 8CEF8 8007DF48 00420019 */  multu      $v0, $v0
    /* 8CEFC 8007DF4C 00007012 */  mflo       $t6
    /* 8CF00 8007DF50 032E7821 */  addu       $t7, $t9, $t6
    /* 8CF04 8007DF54 00000000 */  nop
    /* 8CF08 8007DF58 01AD0019 */  multu      $t5, $t5
    /* 8CF0C 8007DF5C 0000C012 */  mflo       $t8
    /* 8CF10 8007DF60 01F86021 */  addu       $t4, $t7, $t8
    /* 8CF14 8007DF64 448C5000 */  mtc1       $t4, $f10
    /* 8CF18 8007DF68 0C007650 */  jal        sqrtf
    /* 8CF1C 8007DF6C 46805320 */   cvt.s.w   $f12, $f10
    /* 8CF20 8007DF70 4600020D */  trunc.w.s  $f8, $f0
    /* 8CF24 8007DF74 2401001A */  addiu      $at, $zero, 0x1A
    /* 8CF28 8007DF78 8662000C */  lh         $v0, 0xC($s3)
    /* 8CF2C 8007DF7C 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 8CF30 8007DF80 44034000 */  mfc1       $v1, $f8
    /* 8CF34 8007DF84 240BFFF8 */  addiu      $t3, $zero, -0x8
    /* 8CF38 8007DF88 16E1000B */  bne        $s7, $at, .L8007DFB8_8CF68
    /* 8CF3C 8007DF8C 00605025 */   or        $t2, $v1, $zero
    /* 8CF40 8007DF90 44822000 */  mtc1       $v0, $f4
    /* 8CF44 8007DF94 3C013FF8 */  lui        $at, (0x3FF80000 >> 16)
    /* 8CF48 8007DF98 44818800 */  mtc1       $at, $f17
    /* 8CF4C 8007DF9C 468021A1 */  cvt.d.w    $f6, $f4
    /* 8CF50 8007DFA0 44808000 */  mtc1       $zero, $f16
    /* 8CF54 8007DFA4 00000000 */  nop
    /* 8CF58 8007DFA8 46303482 */  mul.d      $f18, $f6, $f16
    /* 8CF5C 8007DFAC 4620928D */  trunc.w.d  $f10, $f18
    /* 8CF60 8007DFB0 44025000 */  mfc1       $v0, $f10
    /* 8CF64 8007DFB4 00000000 */  nop
  .L8007DFB8_8CF68:
    /* 8CF68 8007DFB8 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 8CF6C 8007DFBC 3C188025 */  lui        $t8, %hi(D_80257A0C)
    /* 8CF70 8007DFC0 908E001A */  lbu        $t6, 0x1A($a0)
    /* 8CF74 8007DFC4 000E78C0 */  sll        $t7, $t6, 3
    /* 8CF78 8007DFC8 01EE7823 */  subu       $t7, $t7, $t6
    /* 8CF7C 8007DFCC 000F7900 */  sll        $t7, $t7, 4
    /* 8CF80 8007DFD0 030FC021 */  addu       $t8, $t8, $t7
    /* 8CF84 8007DFD4 87187A0C */  lh         $t8, %lo(D_80257A0C)($t8)
    /* 8CF88 8007DFD8 03026021 */  addu       $t4, $t8, $v0
    /* 8CF8C 8007DFDC 006C082A */  slt        $at, $v1, $t4
    /* 8CF90 8007DFE0 50200059 */  beql       $at, $zero, .L8007E148_8D0F8
    /* 8CF94 8007DFE4 86180048 */   lh        $t8, 0x48($s0)
    /* 8CF98 8007DFE8 1A200003 */  blez       $s1, .L8007DFF8_8CFA8
    /* 8CF9C 8007DFEC 3C013FF0 */   lui       $at, (0x3FF00000 >> 16)
    /* 8CFA0 8007DFF0 10000006 */  b          .L8007E00C_8CFBC
    /* 8CFA4 8007DFF4 24090001 */   addiu     $t1, $zero, 0x1
  .L8007DFF8_8CFA8:
    /* 8CFA8 8007DFF8 06210003 */  bgez       $s1, .L8007E008_8CFB8
    /* 8CFAC 8007DFFC 00001025 */   or        $v0, $zero, $zero
    /* 8CFB0 8007E000 10000001 */  b          .L8007E008_8CFB8
    /* 8CFB4 8007E004 2402FFFF */   addiu     $v0, $zero, -0x1
  .L8007E008_8CFB8:
    /* 8CFB8 8007E008 00404825 */  or         $t1, $v0, $zero
  .L8007E00C_8CFBC:
    /* 8CFBC 8007E00C 06200003 */  bltz       $s1, .L8007E01C_8CFCC
    /* 8CFC0 8007E010 00114023 */   negu      $t0, $s1
    /* 8CFC4 8007E014 10000001 */  b          .L8007E01C_8CFCC
    /* 8CFC8 8007E018 02204025 */   or        $t0, $s1, $zero
  .L8007E01C_8CFCC:
    /* 8CFCC 8007E01C 1A400003 */  blez       $s2, .L8007E02C_8CFDC
    /* 8CFD0 8007E020 00000000 */   nop
    /* 8CFD4 8007E024 10000006 */  b          .L8007E040_8CFF0
    /* 8CFD8 8007E028 24030001 */   addiu     $v1, $zero, 0x1
  .L8007E02C_8CFDC:
    /* 8CFDC 8007E02C 06410003 */  bgez       $s2, .L8007E03C_8CFEC
    /* 8CFE0 8007E030 00001025 */   or        $v0, $zero, $zero
    /* 8CFE4 8007E034 10000001 */  b          .L8007E03C_8CFEC
    /* 8CFE8 8007E038 2402FFFF */   addiu     $v0, $zero, -0x1
  .L8007E03C_8CFEC:
    /* 8CFEC 8007E03C 00401825 */  or         $v1, $v0, $zero
  .L8007E040_8CFF0:
    /* 8CFF0 8007E040 06400003 */  bltz       $s2, .L8007E050_8D000
    /* 8CFF4 8007E044 00121023 */   negu      $v0, $s2
    /* 8CFF8 8007E048 10000001 */  b          .L8007E050_8D000
    /* 8CFFC 8007E04C 02401025 */   or        $v0, $s2, $zero
  .L8007E050_8D000:
    /* 8D000 8007E050 010A001A */  div        $zero, $t0, $t2
    /* 8D004 8007E054 00006812 */  mflo       $t5
    /* 8D008 8007E058 448D4000 */  mtc1       $t5, $f8
    /* 8D00C 8007E05C 44810800 */  mtc1       $at, $f1
    /* 8D010 8007E060 012B0019 */  multu      $t1, $t3
    /* 8D014 8007E064 46804121 */  cvt.d.w    $f4, $f8
    /* 8D018 8007E068 44800000 */  mtc1       $zero, $f0
    /* 8D01C 8007E06C 15400002 */  bnez       $t2, .L8007E078_8D028
    /* 8D020 8007E070 00000000 */   nop
    /* 8D024 8007E074 0007000D */  break      7
  .L8007E078_8D028:
    /* 8D028 8007E078 2401FFFF */  addiu      $at, $zero, -0x1
    /* 8D02C 8007E07C 15410004 */  bne        $t2, $at, .L8007E090_8D040
    /* 8D030 8007E080 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 8D034 8007E084 15010002 */  bne        $t0, $at, .L8007E090_8D040
    /* 8D038 8007E088 00000000 */   nop
    /* 8D03C 8007E08C 0006000D */  break      6
  .L8007E090_8D040:
    /* 8D040 8007E090 0000C812 */  mflo       $t9
    /* 8D044 8007E094 44998000 */  mtc1       $t9, $f16
    /* 8D048 8007E098 46240181 */  sub.d      $f6, $f0, $f4
    /* 8D04C 8007E09C 004A001A */  div        $zero, $v0, $t2
    /* 8D050 8007E0A0 00007012 */  mflo       $t6
    /* 8D054 8007E0A4 468084A1 */  cvt.d.w    $f18, $f16
    /* 8D058 8007E0A8 448E2000 */  mtc1       $t6, $f4
    /* 8D05C 8007E0AC 006B0019 */  multu      $v1, $t3
    /* 8D060 8007E0B0 24060000 */  addiu      $a2, $zero, 0x0
    /* 8D064 8007E0B4 46802421 */  cvt.d.w    $f16, $f4
    /* 8D068 8007E0B8 46323282 */  mul.d      $f10, $f6, $f18
    /* 8D06C 8007E0BC 46300181 */  sub.d      $f6, $f0, $f16
    /* 8D070 8007E0C0 00007812 */  mflo       $t7
    /* 8D074 8007E0C4 448F9000 */  mtc1       $t7, $f18
    /* 8D078 8007E0C8 46205220 */  cvt.s.d    $f8, $f10
    /* 8D07C 8007E0CC 468092A1 */  cvt.d.w    $f10, $f18
    /* 8D080 8007E0D0 44054000 */  mfc1       $a1, $f8
    /* 8D084 8007E0D4 15400002 */  bnez       $t2, .L8007E0E0_8D090
    /* 8D088 8007E0D8 00000000 */   nop
    /* 8D08C 8007E0DC 0007000D */  break      7
  .L8007E0E0_8D090:
    /* 8D090 8007E0E0 2401FFFF */  addiu      $at, $zero, -0x1
    /* 8D094 8007E0E4 15410004 */  bne        $t2, $at, .L8007E0F8_8D0A8
    /* 8D098 8007E0E8 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 8D09C 8007E0EC 14410002 */  bne        $v0, $at, .L8007E0F8_8D0A8
    /* 8D0A0 8007E0F0 00000000 */   nop
    /* 8D0A4 8007E0F4 0006000D */  break      6
  .L8007E0F8_8D0A8:
    /* 8D0A8 8007E0F8 462A3202 */  mul.d      $f8, $f6, $f10
    /* 8D0AC 8007E0FC 46204120 */  cvt.s.d    $f4, $f8
    /* 8D0B0 8007E100 44072000 */  mfc1       $a3, $f4
    /* 8D0B4 8007E104 0C040B40 */  jal        func_80102D00_111CB0
    /* 8D0B8 8007E108 00000000 */   nop
    /* 8D0BC 8007E10C 86180048 */  lh         $t8, 0x48($s0)
    /* 8D0C0 8007E110 240C0014 */  addiu      $t4, $zero, 0x14
    /* 8D0C4 8007E114 3C0D8005 */  lui        $t5, %hi(D_80052B34)
    /* 8D0C8 8007E118 17000002 */  bnez       $t8, .L8007E124_8D0D4
    /* 8D0CC 8007E11C 3C028015 */   lui       $v0, %hi(D_80157A28)
    /* 8D0D0 8007E120 A60C0048 */  sh         $t4, 0x48($s0)
  .L8007E124_8D0D4:
    /* 8D0D4 8007E124 8DAD2B34 */  lw         $t5, %lo(D_80052B34)($t5)
    /* 8D0D8 8007E128 24427A28 */  addiu      $v0, $v0, %lo(D_80157A28)
    /* 8D0DC 8007E12C 91B9001A */  lbu        $t9, 0x1A($t5)
    /* 8D0E0 8007E130 57200005 */  bnel       $t9, $zero, .L8007E148_8D0F8
    /* 8D0E4 8007E134 86180048 */   lh        $t8, 0x48($s0)
    /* 8D0E8 8007E138 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 8D0EC 8007E13C 35CF1000 */  ori        $t7, $t6, 0x1000
    /* 8D0F0 8007E140 AC4F0000 */  sw         $t7, 0x0($v0)
    /* 8D0F4 8007E144 86180048 */  lh         $t8, 0x48($s0)
  .L8007E148_8D0F8:
    /* 8D0F8 8007E148 02A02025 */  or         $a0, $s5, $zero
    /* 8D0FC 8007E14C 13000006 */  beqz       $t8, .L8007E168_8D118
    /* 8D100 8007E150 00000000 */   nop
    /* 8D104 8007E154 0C04DD1A */  jal        func_80137468_146418
    /* 8D108 8007E158 24050015 */   addiu     $a1, $zero, 0x15
    /* 8D10C 8007E15C 860C0048 */  lh         $t4, 0x48($s0)
    /* 8D110 8007E160 258DFFFF */  addiu      $t5, $t4, -0x1
    /* 8D114 8007E164 A60D0048 */  sh         $t5, 0x48($s0)
  .L8007E168_8D118:
    /* 8D118 8007E168 3C198004 */  lui        $t9, %hi(currentLevel)
    /* 8D11C 8007E16C 8F397F90 */  lw         $t9, %lo(currentLevel)($t9)
    /* 8D120 8007E170 24010002 */  addiu      $at, $zero, 0x2
    /* 8D124 8007E174 17210011 */  bne        $t9, $at, .L8007E1BC_8D16C
    /* 8D128 8007E178 24010001 */   addiu     $at, $zero, 0x1
    /* 8D12C 8007E17C 12E1000F */  beq        $s7, $at, .L8007E1BC_8D16C
    /* 8D130 8007E180 8FAE0060 */   lw        $t6, 0x60($sp)
    /* 8D134 8007E184 3C0F8005 */  lui        $t7, %hi(D_80052A8C)
    /* 8D138 8007E188 8DEF2A8C */  lw         $t7, %lo(D_80052A8C)($t7)
    /* 8D13C 8007E18C 00152400 */  sll        $a0, $s5, 16
    /* 8D140 8007E190 00046C03 */  sra        $t5, $a0, 16
    /* 8D144 8007E194 01CFC021 */  addu       $t8, $t6, $t7
    /* 8D148 8007E198 330C000F */  andi       $t4, $t8, 0xF
    /* 8D14C 8007E19C 55800008 */  bnel       $t4, $zero, .L8007E1C0_8D170
    /* 8D150 8007E1A0 8E190020 */   lw        $t9, 0x20($s0)
    /* 8D154 8007E1A4 0C02F177 */  jal        func_800BC5DC_CB58C
    /* 8D158 8007E1A8 01A02025 */   or        $a0, $t5, $zero
    /* 8D15C 8007E1AC 10400003 */  beqz       $v0, .L8007E1BC_8D16C
    /* 8D160 8007E1B0 3C028015 */   lui       $v0, %hi(D_8014ECCC)
    /* 8D164 8007E1B4 100000BF */  b          .L8007E4B4_8D464
    /* 8D168 8007E1B8 8C42ECCC */   lw        $v0, %lo(D_8014ECCC)($v0)
  .L8007E1BC_8D16C:
    /* 8D16C 8007E1BC 8E190020 */  lw         $t9, 0x20($s0)
  .L8007E1C0_8D170:
    /* 8D170 8007E1C0 3C014004 */  lui        $at, (0x40040000 >> 16)
    /* 8D174 8007E1C4 03217024 */  and        $t6, $t9, $at
    /* 8D178 8007E1C8 15C00005 */  bnez       $t6, .L8007E1E0_8D190
    /* 8D17C 8007E1CC 24010001 */   addiu     $at, $zero, 0x1
    /* 8D180 8007E1D0 52E10004 */  beql       $s7, $at, .L8007E1E4_8D194
    /* 8D184 8007E1D4 92180047 */   lbu       $t8, 0x47($s0)
    /* 8D188 8007E1D8 860F000E */  lh         $t7, 0xE($s0)
    /* 8D18C 8007E1DC A60F0006 */  sh         $t7, 0x6($s0)
  .L8007E1E0_8D190:
    /* 8D190 8007E1E0 92180047 */  lbu        $t8, 0x47($s0)
  .L8007E1E4_8D194:
    /* 8D194 8007E1E4 330C0001 */  andi       $t4, $t8, 0x1
    /* 8D198 8007E1E8 5580000B */  bnel       $t4, $zero, .L8007E218_8D1C8
    /* 8D19C 8007E1EC 001671C0 */   sll       $t6, $s6, 7
    /* 8D1A0 8007E1F0 8E0D0020 */  lw         $t5, 0x20($s0)
    /* 8D1A4 8007E1F4 31B90010 */  andi       $t9, $t5, 0x10
    /* 8D1A8 8007E1F8 57200007 */  bnel       $t9, $zero, .L8007E218_8D1C8
    /* 8D1AC 8007E1FC 001671C0 */   sll       $t6, $s6, 7
    /* 8D1B0 8007E200 0C020667 */  jal        func_8008199C_9094C
    /* 8D1B4 8007E204 328400FF */   andi      $a0, $s4, 0xFF
    /* 8D1B8 8007E208 0C0204E4 */  jal        func_80081390_90340
    /* 8D1BC 8007E20C 328400FF */   andi      $a0, $s4, 0xFF
    /* 8D1C0 8007E210 A602002A */  sh         $v0, 0x2A($s0)
    /* 8D1C4 8007E214 001671C0 */  sll        $t6, $s6, 7
  .L8007E218_8D1C8:
    /* 8D1C8 8007E218 05C10052 */  bgez       $t6, .L8007E364_8D314
    /* 8D1CC 8007E21C 3C0D8005 */   lui       $t5, %hi(alienInstances)
    /* 8D1D0 8007E220 8602002C */  lh         $v0, 0x2C($s0)
    /* 8D1D4 8007E224 3C058005 */  lui        $a1, %hi(D_80052ACA)
    /* 8D1D8 8007E228 90A52ACA */  lbu        $a1, %lo(D_80052ACA)($a1)
    /* 8D1DC 8007E22C 18400003 */  blez       $v0, .L8007E23C_8D1EC
    /* 8D1E0 8007E230 25AD8198 */   addiu     $t5, $t5, %lo(alienInstances)
    /* 8D1E4 8007E234 244FFFFF */  addiu      $t7, $v0, -0x1
    /* 8D1E8 8007E238 A60F002C */  sh         $t7, 0x2C($s0)
  .L8007E23C_8D1EC:
    /* 8D1EC 8007E23C 92180025 */  lbu        $t8, 0x25($s0)
    /* 8D1F0 8007E240 92030047 */  lbu        $v1, 0x47($s0)
    /* 8D1F4 8007E244 86190000 */  lh         $t9, 0x0($s0)
    /* 8D1F8 8007E248 00186080 */  sll        $t4, $t8, 2
    /* 8D1FC 8007E24C 01986021 */  addu       $t4, $t4, $t8
    /* 8D200 8007E250 000C6100 */  sll        $t4, $t4, 4
    /* 8D204 8007E254 018D1021 */  addu       $v0, $t4, $t5
    /* 8D208 8007E258 844E0000 */  lh         $t6, 0x0($v0)
    /* 8D20C 8007E25C 84580004 */  lh         $t8, 0x4($v0)
    /* 8D210 8007E260 860F0004 */  lh         $t7, 0x4($s0)
    /* 8D214 8007E264 24010002 */  addiu      $at, $zero, 0x2
    /* 8D218 8007E268 306C0001 */  andi       $t4, $v1, 0x1
    /* 8D21C 8007E26C 01801825 */  or         $v1, $t4, $zero
    /* 8D220 8007E270 032E8823 */  subu       $s1, $t9, $t6
    /* 8D224 8007E274 14A1001C */  bne        $a1, $at, .L8007E2E8_8D298
    /* 8D228 8007E278 01F89023 */   subu      $s2, $t7, $t8
    /* 8D22C 8007E27C 1180000A */  beqz       $t4, .L8007E2A8_8D258
    /* 8D230 8007E280 00000000 */   nop
    /* 8D234 8007E284 0C0221D8 */  jal        func_80088760_97710
    /* 8D238 8007E288 02002025 */   or        $a0, $s0, $zero
    /* 8D23C 8007E28C 240D0100 */  addiu      $t5, $zero, 0x100
    /* 8D240 8007E290 AFAD0010 */  sw         $t5, 0x10($sp)
    /* 8D244 8007E294 86040000 */  lh         $a0, 0x0($s0)
    /* 8D248 8007E298 86050002 */  lh         $a1, 0x2($s0)
    /* 8D24C 8007E29C 86060004 */  lh         $a2, 0x4($s0)
    /* 8D250 8007E2A0 0C0492D7 */  jal        func_80124B5C_133B0C
    /* 8D254 8007E2A4 240703E8 */   addiu     $a3, $zero, 0x3E8
  .L8007E2A8_8D258:
    /* 8D258 8007E2A8 02310019 */  multu      $s1, $s1
    /* 8D25C 8007E2AC 3C010002 */  lui        $at, (0x27101 >> 16)
    /* 8D260 8007E2B0 34217101 */  ori        $at, $at, (0x27101 & 0xFFFF)
    /* 8D264 8007E2B4 0000C812 */  mflo       $t9
    /* 8D268 8007E2B8 00000000 */  nop
    /* 8D26C 8007E2BC 00000000 */  nop
    /* 8D270 8007E2C0 02520019 */  multu      $s2, $s2
    /* 8D274 8007E2C4 00007012 */  mflo       $t6
    /* 8D278 8007E2C8 032E7821 */  addu       $t7, $t9, $t6
    /* 8D27C 8007E2CC 01E1082A */  slt        $at, $t7, $at
    /* 8D280 8007E2D0 14200022 */  bnez       $at, .L8007E35C_8D30C
    /* 8D284 8007E2D4 00000000 */   nop
    /* 8D288 8007E2D8 0C021360 */  jal        func_80084D80_93D30
    /* 8D28C 8007E2DC 328400FF */   andi      $a0, $s4, 0xFF
    /* 8D290 8007E2E0 1000001E */  b          .L8007E35C_8D30C
    /* 8D294 8007E2E4 00000000 */   nop
  .L8007E2E8_8D298:
    /* 8D298 8007E2E8 5060000D */  beql       $v1, $zero, .L8007E320_8D2D0
    /* 8D29C 8007E2EC 866C0040 */   lh        $t4, 0x40($s3)
    /* 8D2A0 8007E2F0 0C0221D8 */  jal        func_80088760_97710
    /* 8D2A4 8007E2F4 02002025 */   or        $a0, $s0, $zero
    /* 8D2A8 8007E2F8 24180100 */  addiu      $t8, $zero, 0x100
    /* 8D2AC 8007E2FC AFB80010 */  sw         $t8, 0x10($sp)
    /* 8D2B0 8007E300 86040000 */  lh         $a0, 0x0($s0)
    /* 8D2B4 8007E304 86050002 */  lh         $a1, 0x2($s0)
    /* 8D2B8 8007E308 86060004 */  lh         $a2, 0x4($s0)
    /* 8D2BC 8007E30C 0C0492D7 */  jal        func_80124B5C_133B0C
    /* 8D2C0 8007E310 24070050 */   addiu     $a3, $zero, 0x50
    /* 8D2C4 8007E314 10000003 */  b          .L8007E324_8D2D4
    /* 8D2C8 8007E318 00000000 */   nop
    /* 8D2CC 8007E31C 866C0040 */  lh         $t4, 0x40($s3)
  .L8007E320_8D2D0:
    /* 8D2D0 8007E320 A60C0012 */  sh         $t4, 0x12($s0)
  .L8007E324_8D2D4:
    /* 8D2D4 8007E324 02310019 */  multu      $s1, $s1
    /* 8D2D8 8007E328 3C010004 */  lui        $at, (0x49DA5 >> 16)
    /* 8D2DC 8007E32C 34219DA5 */  ori        $at, $at, (0x49DA5 & 0xFFFF)
    /* 8D2E0 8007E330 00006812 */  mflo       $t5
    /* 8D2E4 8007E334 00000000 */  nop
    /* 8D2E8 8007E338 00000000 */  nop
    /* 8D2EC 8007E33C 02520019 */  multu      $s2, $s2
    /* 8D2F0 8007E340 0000C812 */  mflo       $t9
    /* 8D2F4 8007E344 01B97021 */  addu       $t6, $t5, $t9
    /* 8D2F8 8007E348 01C1082A */  slt        $at, $t6, $at
    /* 8D2FC 8007E34C 14200003 */  bnez       $at, .L8007E35C_8D30C
    /* 8D300 8007E350 00000000 */   nop
    /* 8D304 8007E354 0C021360 */  jal        func_80084D80_93D30
    /* 8D308 8007E358 328400FF */   andi      $a0, $s4, 0xFF
  .L8007E35C_8D30C:
    /* 8D30C 8007E35C 10000006 */  b          .L8007E378_8D328
    /* 8D310 8007E360 8E630054 */   lw        $v1, 0x54($s3)
  .L8007E364_8D314:
    /* 8D314 8007E364 8E790048 */  lw         $t9, 0x48($s3)
    /* 8D318 8007E368 328400FF */  andi       $a0, $s4, 0xFF
    /* 8D31C 8007E36C 0320F809 */  jalr       $t9
    /* 8D320 8007E370 00000000 */   nop
    /* 8D324 8007E374 8E630054 */  lw         $v1, 0x54($s3)
  .L8007E378_8D328:
    /* 8D328 8007E378 3C058005 */  lui        $a1, %hi(D_80052ACA)
    /* 8D32C 8007E37C 306F0001 */  andi       $t7, $v1, 0x1
    /* 8D330 8007E380 15E0000F */  bnez       $t7, .L8007E3C0_8D370
    /* 8D334 8007E384 90A52ACA */   lbu       $a1, %lo(D_80052ACA)($a1)
    /* 8D338 8007E388 8E020020 */  lw         $v0, 0x20($s0)
    /* 8D33C 8007E38C 3C016000 */  lui        $at, (0x60000000 >> 16)
    /* 8D340 8007E390 0041C024 */  and        $t8, $v0, $at
    /* 8D344 8007E394 5700000B */  bnel       $t8, $zero, .L8007E3C4_8D374
    /* 8D348 8007E398 24010002 */   addiu     $at, $zero, 0x2
    /* 8D34C 8007E39C 86040030 */  lh         $a0, 0x30($s0)
    /* 8D350 8007E3A0 860C0002 */  lh         $t4, 0x2($s0)
    /* 8D354 8007E3A4 248DFFCE */  addiu      $t5, $a0, -0x32
    /* 8D358 8007E3A8 018D082A */  slt        $at, $t4, $t5
    /* 8D35C 8007E3AC 10200004 */  beqz       $at, .L8007E3C0_8D370
    /* 8D360 8007E3B0 3C014000 */   lui       $at, (0x40000000 >> 16)
    /* 8D364 8007E3B4 00417025 */  or         $t6, $v0, $at
    /* 8D368 8007E3B8 A6040002 */  sh         $a0, 0x2($s0)
    /* 8D36C 8007E3BC AE0E0020 */  sw         $t6, 0x20($s0)
  .L8007E3C0_8D370:
    /* 8D370 8007E3C0 24010002 */  addiu      $at, $zero, 0x2
  .L8007E3C4_8D374:
    /* 8D374 8007E3C4 10A1000C */  beq        $a1, $at, .L8007E3F8_8D3A8
    /* 8D378 8007E3C8 00000000 */   nop
    /* 8D37C 8007E3CC 8E190020 */  lw         $t9, 0x20($s0)
    /* 8D380 8007E3D0 3C028005 */  lui        $v0, %hi(gameplayMode)
    /* 8D384 8007E3D4 00197AC0 */  sll        $t7, $t9, 11
    /* 8D388 8007E3D8 05E00007 */  bltz       $t7, .L8007E3F8_8D3A8
    /* 8D38C 8007E3DC 00000000 */   nop
    /* 8D390 8007E3E0 8C422ADC */  lw         $v0, %lo(gameplayMode)($v0)
    /* 8D394 8007E3E4 24010003 */  addiu      $at, $zero, 0x3
    /* 8D398 8007E3E8 10410003 */  beq        $v0, $at, .L8007E3F8_8D3A8
    /* 8D39C 8007E3EC 2401000B */   addiu     $at, $zero, 0xB
    /* 8D3A0 8007E3F0 14410004 */  bne        $v0, $at, .L8007E404_8D3B4
    /* 8D3A4 8007E3F4 3C0C8015 */   lui       $t4, %hi(D_80149434)
  .L8007E3F8_8D3A8:
    /* 8D3A8 8007E3F8 3C028015 */  lui        $v0, %hi(D_8014ECCC)
    /* 8D3AC 8007E3FC 1000002D */  b          .L8007E4B4_8D464
    /* 8D3B0 8007E400 8C42ECCC */   lw        $v0, %lo(D_8014ECCC)($v0)
  .L8007E404_8D3B4:
    /* 8D3B4 8007E404 3C0E8015 */  lui        $t6, %hi(D_80149436)
    /* 8D3B8 8007E408 86180000 */  lh         $t8, 0x0($s0)
    /* 8D3BC 8007E40C 858C9434 */  lh         $t4, %lo(D_80149434)($t4)
    /* 8D3C0 8007E410 85CE9436 */  lh         $t6, %lo(D_80149436)($t6)
    /* 8D3C4 8007E414 860D0004 */  lh         $t5, 0x4($s0)
    /* 8D3C8 8007E418 0003C900 */  sll        $t9, $v1, 4
    /* 8D3CC 8007E41C 030C8823 */  subu       $s1, $t8, $t4
    /* 8D3D0 8007E420 07210004 */  bgez       $t9, .L8007E434_8D3E4
    /* 8D3D4 8007E424 01AE9023 */   subu      $s2, $t5, $t6
    /* 8D3D8 8007E428 3C028015 */  lui        $v0, %hi(D_8014ECCC)
    /* 8D3DC 8007E42C 10000021 */  b          .L8007E4B4_8D464
    /* 8D3E0 8007E430 8C42ECCC */   lw        $v0, %lo(D_8014ECCC)($v0)
  .L8007E434_8D3E4:
    /* 8D3E4 8007E434 2A21F600 */  slti       $at, $s1, -0xA00
    /* 8D3E8 8007E438 14200008 */  bnez       $at, .L8007E45C_8D40C
    /* 8D3EC 8007E43C 3C0F8005 */   lui       $t7, %hi(D_80052A8C)
    /* 8D3F0 8007E440 2A210A01 */  slti       $at, $s1, 0xA01
    /* 8D3F4 8007E444 10200005 */  beqz       $at, .L8007E45C_8D40C
    /* 8D3F8 8007E448 2A41F600 */   slti      $at, $s2, -0xA00
    /* 8D3FC 8007E44C 14200003 */  bnez       $at, .L8007E45C_8D40C
    /* 8D400 8007E450 2A410A01 */   slti      $at, $s2, 0xA01
    /* 8D404 8007E454 14200015 */  bnez       $at, .L8007E4AC_8D45C
    /* 8D408 8007E458 00000000 */   nop
  .L8007E45C_8D40C:
    /* 8D40C 8007E45C 8DEF2A8C */  lw         $t7, %lo(D_80052A8C)($t7)
    /* 8D410 8007E460 31F80003 */  andi       $t8, $t7, 0x3
    /* 8D414 8007E464 17000011 */  bnez       $t8, .L8007E4AC_8D45C
    /* 8D418 8007E468 00000000 */   nop
    /* 8D41C 8007E46C 0C01E93E */  jal        func_8007A4F8_894A8
    /* 8D420 8007E470 03C02025 */   or        $a0, $fp, $zero
    /* 8D424 8007E474 10400005 */  beqz       $v0, .L8007E48C_8D43C
    /* 8D428 8007E478 3C048014 */   lui       $a0, %hi(D_80141CB4)
    /* 8D42C 8007E47C 27DEFFFF */  addiu      $fp, $fp, -0x1
    /* 8D430 8007E480 33CC00FF */  andi       $t4, $fp, 0xFF
    /* 8D434 8007E484 10000003 */  b          .L8007E494_8D444
    /* 8D438 8007E488 0180F025 */   or        $fp, $t4, $zero
  .L8007E48C_8D43C:
    /* 8D43C 8007E48C 0C00731B */  jal        osSyncPrintf
    /* 8D440 8007E490 24841CB4 */   addiu     $a0, $a0, %lo(D_80141CB4)
  .L8007E494_8D444:
    /* 8D444 8007E494 860D002E */  lh         $t5, 0x2E($s0)
    /* 8D448 8007E498 860E0030 */  lh         $t6, 0x30($s0)
    /* 8D44C 8007E49C 86190032 */  lh         $t9, 0x32($s0)
    /* 8D450 8007E4A0 A60D0000 */  sh         $t5, 0x0($s0)
    /* 8D454 8007E4A4 A60E0002 */  sh         $t6, 0x2($s0)
    /* 8D458 8007E4A8 A6190004 */  sh         $t9, 0x4($s0)
  .L8007E4AC_8D45C:
    /* 8D45C 8007E4AC 3C028015 */  lui        $v0, %hi(D_8014ECCC)
    /* 8D460 8007E4B0 8C42ECCC */  lw         $v0, %lo(D_8014ECCC)($v0)
  .L8007E4B4_8D464:
    /* 8D464 8007E4B4 27DE0001 */  addiu      $fp, $fp, 0x1
  .L8007E4B8_8D468:
    /* 8D468 8007E4B8 33CF00FF */  andi       $t7, $fp, 0xFF
    /* 8D46C 8007E4BC 01E2082B */  sltu       $at, $t7, $v0
    /* 8D470 8007E4C0 1420FC82 */  bnez       $at, .L8007D6CC_8C67C
    /* 8D474 8007E4C4 01E0F025 */   or        $fp, $t7, $zero
  .L8007E4C8_8D478:
    /* 8D478 8007E4C8 0C047798 */  jal        func_8011DE60_12CE10
    /* 8D47C 8007E4CC 00002025 */   or        $a0, $zero, $zero
    /* 8D480 8007E4D0 8FBF0044 */  lw         $ra, 0x44($sp)
    /* 8D484 8007E4D4 8FB00020 */  lw         $s0, 0x20($sp)
    /* 8D488 8007E4D8 8FB10024 */  lw         $s1, 0x24($sp)
    /* 8D48C 8007E4DC 8FB20028 */  lw         $s2, 0x28($sp)
    /* 8D490 8007E4E0 8FB3002C */  lw         $s3, 0x2C($sp)
    /* 8D494 8007E4E4 8FB40030 */  lw         $s4, 0x30($sp)
    /* 8D498 8007E4E8 8FB50034 */  lw         $s5, 0x34($sp)
    /* 8D49C 8007E4EC 8FB60038 */  lw         $s6, 0x38($sp)
    /* 8D4A0 8007E4F0 8FB7003C */  lw         $s7, 0x3C($sp)
    /* 8D4A4 8007E4F4 8FBE0040 */  lw         $fp, 0x40($sp)
    /* 8D4A8 8007E4F8 03E00008 */  jr         $ra
    /* 8D4AC 8007E4FC 27BD00B0 */   addiu     $sp, $sp, 0xB0
endlabel func_8007D690_8C640
