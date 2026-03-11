nonmatching func_800D7870_E6820, 0x688

glabel func_800D7870_E6820
    /* E6820 800D7870 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* E6824 800D7874 3C048006 */  lui        $a0, %hi(D_8005BB2C)
    /* E6828 800D7878 2484BB2C */  addiu      $a0, $a0, %lo(D_8005BB2C)
    /* E682C 800D787C 8C830000 */  lw         $v1, 0x0($a0)
    /* E6830 800D7880 AFBE0030 */  sw         $fp, 0x30($sp)
    /* E6834 800D7884 3C1E8015 */  lui        $fp, %hi(D_801542CA)
    /* E6838 800D7888 87DE42CA */  lh         $fp, %lo(D_801542CA)($fp)
    /* E683C 800D788C AFBF0034 */  sw         $ra, 0x34($sp)
    /* E6840 800D7890 246E0008 */  addiu      $t6, $v1, 0x8
    /* E6844 800D7894 AFB7002C */  sw         $s7, 0x2C($sp)
    /* E6848 800D7898 AFB60028 */  sw         $s6, 0x28($sp)
    /* E684C 800D789C AFB50024 */  sw         $s5, 0x24($sp)
    /* E6850 800D78A0 AFB40020 */  sw         $s4, 0x20($sp)
    /* E6854 800D78A4 AFB3001C */  sw         $s3, 0x1C($sp)
    /* E6858 800D78A8 AFB20018 */  sw         $s2, 0x18($sp)
    /* E685C 800D78AC AFB10014 */  sw         $s1, 0x14($sp)
    /* E6860 800D78B0 AFB00010 */  sw         $s0, 0x10($sp)
    /* E6864 800D78B4 F7B40008 */  sdc1       $f20, 0x8($sp)
    /* E6868 800D78B8 AC8E0000 */  sw         $t6, 0x0($a0)
    /* E686C 800D78BC 3C1FE700 */  lui        $ra, (0xE7000000 >> 16)
    /* E6870 800D78C0 AC7F0000 */  sw         $ra, 0x0($v1)
    /* E6874 800D78C4 AC600004 */  sw         $zero, 0x4($v1)
    /* E6878 800D78C8 8C830000 */  lw         $v1, 0x0($a0)
    /* E687C 800D78CC 3C18FCFF */  lui        $t8, (0xFCFF99FF >> 16)
    /* E6880 800D78D0 3C19FF32 */  lui        $t9, (0xFF327F3F >> 16)
    /* E6884 800D78D4 246F0008 */  addiu      $t7, $v1, 0x8
    /* E6888 800D78D8 AC8F0000 */  sw         $t7, 0x0($a0)
    /* E688C 800D78DC 37397F3F */  ori        $t9, $t9, (0xFF327F3F & 0xFFFF)
    /* E6890 800D78E0 371899FF */  ori        $t8, $t8, (0xFCFF99FF & 0xFFFF)
    /* E6894 800D78E4 AC780000 */  sw         $t8, 0x0($v1)
    /* E6898 800D78E8 AC790004 */  sw         $t9, 0x4($v1)
    /* E689C 800D78EC 8C830000 */  lw         $v1, 0x0($a0)
    /* E68A0 800D78F0 2401FFFB */  addiu      $at, $zero, -0x5
    /* E68A4 800D78F4 246E0008 */  addiu      $t6, $v1, 0x8
    /* E68A8 800D78F8 AC8E0000 */  sw         $t6, 0x0($a0)
    /* E68AC 800D78FC AC600004 */  sw         $zero, 0x4($v1)
    /* E68B0 800D7900 13C10170 */  beq        $fp, $at, .L800D7EC4_E6E74
    /* E68B4 800D7904 AC7F0000 */   sw        $ra, 0x0($v1)
    /* E68B8 800D7908 2401FFFA */  addiu      $at, $zero, -0x6
    /* E68BC 800D790C 13C1016D */  beq        $fp, $at, .L800D7EC4_E6E74
    /* E68C0 800D7910 24170400 */   addiu     $s7, $zero, 0x400
    /* E68C4 800D7914 3C138015 */  lui        $s3, %hi(D_80153AB8)
    /* E68C8 800D7918 3C028006 */  lui        $v0, %hi(D_8005BB34)
    /* E68CC 800D791C 2442BB34 */  addiu      $v0, $v0, %lo(D_8005BB34)
    /* E68D0 800D7920 26733AB8 */  addiu      $s3, $s3, %lo(D_80153AB8)
    /* E68D4 800D7924 24160016 */  addiu      $s6, $zero, 0x16
    /* E68D8 800D7928 2415009E */  addiu      $s5, $zero, 0x9E
    /* E68DC 800D792C 240500FF */  addiu      $a1, $zero, 0xFF
    /* E68E0 800D7930 8C830000 */  lw         $v1, 0x0($a0)
  .L800D7934_E68E4:
    /* E68E4 800D7934 001E78C0 */  sll        $t7, $fp, 3
    /* E68E8 800D7938 01FE7823 */  subu       $t7, $t7, $fp
    /* E68EC 800D793C 24790008 */  addiu      $t9, $v1, 0x8
    /* E68F0 800D7940 AC990000 */  sw         $t9, 0x0($a0)
    /* E68F4 800D7944 AC600004 */  sw         $zero, 0x4($v1)
    /* E68F8 800D7948 AC7F0000 */  sw         $ra, 0x0($v1)
    /* E68FC 800D794C 8C830000 */  lw         $v1, 0x0($a0)
    /* E6900 800D7950 3C188015 */  lui        $t8, %hi(D_80154318)
    /* E6904 800D7954 27184318 */  addiu      $t8, $t8, %lo(D_80154318)
    /* E6908 800D7958 000F7880 */  sll        $t7, $t7, 2
    /* E690C 800D795C 01F8A021 */  addu       $s4, $t7, $t8
    /* E6910 800D7960 246E0008 */  addiu      $t6, $v1, 0x8
    /* E6914 800D7964 AC8E0000 */  sw         $t6, 0x0($a0)
    /* E6918 800D7968 3C0FFD90 */  lui        $t7, (0xFD900000 >> 16)
    /* E691C 800D796C AC6F0000 */  sw         $t7, 0x0($v1)
    /* E6920 800D7970 9298000E */  lbu        $t8, 0xE($s4)
    /* E6924 800D7974 3C0E0101 */  lui        $t6, %hi(D_100AEF0)
    /* E6928 800D7978 25CEAEF0 */  addiu      $t6, $t6, %lo(D_100AEF0)
    /* E692C 800D797C 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* E6930 800D7980 0018C9C0 */  sll        $t9, $t8, 7
    /* E6934 800D7984 032E7821 */  addu       $t7, $t9, $t6
    /* E6938 800D7988 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* E693C 800D798C 01E1C024 */  and        $t8, $t7, $at
    /* E6940 800D7990 AC780004 */  sw         $t8, 0x4($v1)
    /* E6944 800D7994 8C830000 */  lw         $v1, 0x0($a0)
    /* E6948 800D7998 3C0F0708 */  lui        $t7, (0x7080200 >> 16)
    /* E694C 800D799C 35EF0200 */  ori        $t7, $t7, (0x7080200 & 0xFFFF)
    /* E6950 800D79A0 24790008 */  addiu      $t9, $v1, 0x8
    /* E6954 800D79A4 AC990000 */  sw         $t9, 0x0($a0)
    /* E6958 800D79A8 3C0EF590 */  lui        $t6, (0xF5900000 >> 16)
    /* E695C 800D79AC AC6E0000 */  sw         $t6, 0x0($v1)
    /* E6960 800D79B0 AC6F0004 */  sw         $t7, 0x4($v1)
    /* E6964 800D79B4 8C830000 */  lw         $v1, 0x0($a0)
    /* E6968 800D79B8 3C19E600 */  lui        $t9, (0xE6000000 >> 16)
    /* E696C 800D79BC 3C0FF300 */  lui        $t7, (0xF3000000 >> 16)
    /* E6970 800D79C0 24780008 */  addiu      $t8, $v1, 0x8
    /* E6974 800D79C4 AC980000 */  sw         $t8, 0x0($a0)
    /* E6978 800D79C8 AC600004 */  sw         $zero, 0x4($v1)
    /* E697C 800D79CC AC790000 */  sw         $t9, 0x0($v1)
    /* E6980 800D79D0 8C830000 */  lw         $v1, 0x0($a0)
    /* E6984 800D79D4 3C180703 */  lui        $t8, (0x703F800 >> 16)
    /* E6988 800D79D8 3718F800 */  ori        $t8, $t8, (0x703F800 & 0xFFFF)
    /* E698C 800D79DC 246E0008 */  addiu      $t6, $v1, 0x8
    /* E6990 800D79E0 AC8E0000 */  sw         $t6, 0x0($a0)
    /* E6994 800D79E4 AC780004 */  sw         $t8, 0x4($v1)
    /* E6998 800D79E8 AC6F0000 */  sw         $t7, 0x0($v1)
    /* E699C 800D79EC 8C830000 */  lw         $v1, 0x0($a0)
    /* E69A0 800D79F0 3C0FF580 */  lui        $t7, (0xF5800200 >> 16)
    /* E69A4 800D79F4 3C180008 */  lui        $t8, (0x80200 >> 16)
    /* E69A8 800D79F8 24790008 */  addiu      $t9, $v1, 0x8
    /* E69AC 800D79FC AC990000 */  sw         $t9, 0x0($a0)
    /* E69B0 800D7A00 AC600004 */  sw         $zero, 0x4($v1)
    /* E69B4 800D7A04 AC7F0000 */  sw         $ra, 0x0($v1)
    /* E69B8 800D7A08 8C830000 */  lw         $v1, 0x0($a0)
    /* E69BC 800D7A0C 37180200 */  ori        $t8, $t8, (0x80200 & 0xFFFF)
    /* E69C0 800D7A10 35EF0200 */  ori        $t7, $t7, (0xF5800200 & 0xFFFF)
    /* E69C4 800D7A14 246E0008 */  addiu      $t6, $v1, 0x8
    /* E69C8 800D7A18 AC8E0000 */  sw         $t6, 0x0($a0)
    /* E69CC 800D7A1C AC780004 */  sw         $t8, 0x4($v1)
    /* E69D0 800D7A20 AC6F0000 */  sw         $t7, 0x0($v1)
    /* E69D4 800D7A24 8C830000 */  lw         $v1, 0x0($a0)
    /* E69D8 800D7A28 3C0F0003 */  lui        $t7, (0x3C03C >> 16)
    /* E69DC 800D7A2C 35EFC03C */  ori        $t7, $t7, (0x3C03C & 0xFFFF)
    /* E69E0 800D7A30 24790008 */  addiu      $t9, $v1, 0x8
    /* E69E4 800D7A34 AC990000 */  sw         $t9, 0x0($a0)
    /* E69E8 800D7A38 3C0EF200 */  lui        $t6, (0xF2000000 >> 16)
    /* E69EC 800D7A3C AC6E0000 */  sw         $t6, 0x0($v1)
    /* E69F0 800D7A40 AC6F0004 */  sw         $t7, 0x4($v1)
    /* E69F4 800D7A44 8C830000 */  lw         $v1, 0x0($a0)
    /* E69F8 800D7A48 26870008 */  addiu      $a3, $s4, 0x8
    /* E69FC 800D7A4C 3C0B8015 */  lui        $t3, %hi(D_80156EDA)
    /* E6A00 800D7A50 24780008 */  addiu      $t8, $v1, 0x8
    /* E6A04 800D7A54 AC980000 */  sw         $t8, 0x0($a0)
    /* E6A08 800D7A58 AC600004 */  sw         $zero, 0x4($v1)
    /* E6A0C 800D7A5C AC7F0000 */  sw         $ra, 0x0($v1)
    /* E6A10 800D7A60 86990002 */  lh         $t9, 0x2($s4)
    /* E6A14 800D7A64 C6660000 */  lwc1       $f6, 0x0($s3)
    /* E6A18 800D7A68 C6680004 */  lwc1       $f8, 0x4($s3)
    /* E6A1C 800D7A6C 44992000 */  mtc1       $t9, $f4
    /* E6A20 800D7A70 C66A0008 */  lwc1       $f10, 0x8($s3)
    /* E6A24 800D7A74 84EE0000 */  lh         $t6, 0x0($a3)
    /* E6A28 800D7A78 468020A0 */  cvt.s.w    $f2, $f4
    /* E6A2C 800D7A7C C664000C */  lwc1       $f4, 0xC($s3)
    /* E6A30 800D7A80 8C590000 */  lw         $t9, 0x0($v0)
    /* E6A34 800D7A84 256B6EDA */  addiu      $t3, $t3, %lo(D_80156EDA)
    /* E6A38 800D7A88 240A0200 */  addiu      $t2, $zero, 0x200
    /* E6A3C 800D7A8C 46061002 */  mul.s      $f0, $f2, $f6
    /* E6A40 800D7A90 C6660010 */  lwc1       $f6, 0x10($s3)
    /* E6A44 800D7A94 46081302 */  mul.s      $f12, $f2, $f8
    /* E6A48 800D7A98 C6680014 */  lwc1       $f8, 0x14($s3)
    /* E6A4C 800D7A9C 460A1382 */  mul.s      $f14, $f2, $f10
    /* E6A50 800D7AA0 448E5000 */  mtc1       $t6, $f10
    /* E6A54 800D7AA4 46041402 */  mul.s      $f16, $f2, $f4
    /* E6A58 800D7AA8 46805120 */  cvt.s.w    $f4, $f10
    /* E6A5C 800D7AAC 46061482 */  mul.s      $f18, $f2, $f6
    /* E6A60 800D7AB0 46002180 */  add.s      $f6, $f4, $f0
    /* E6A64 800D7AB4 46081502 */  mul.s      $f20, $f2, $f8
    /* E6A68 800D7AB8 4600320D */  trunc.w.s  $f8, $f6
    /* E6A6C 800D7ABC 44184000 */  mfc1       $t8, $f8
    /* E6A70 800D7AC0 00000000 */  nop
    /* E6A74 800D7AC4 A7380000 */  sh         $t8, 0x0($t9)
    /* E6A78 800D7AC8 84EE0002 */  lh         $t6, 0x2($a3)
    /* E6A7C 800D7ACC 8C590000 */  lw         $t9, 0x0($v0)
    /* E6A80 800D7AD0 448E5000 */  mtc1       $t6, $f10
    /* E6A84 800D7AD4 00000000 */  nop
    /* E6A88 800D7AD8 46805120 */  cvt.s.w    $f4, $f10
    /* E6A8C 800D7ADC 460C2180 */  add.s      $f6, $f4, $f12
    /* E6A90 800D7AE0 4600320D */  trunc.w.s  $f8, $f6
    /* E6A94 800D7AE4 44184000 */  mfc1       $t8, $f8
    /* E6A98 800D7AE8 00000000 */  nop
    /* E6A9C 800D7AEC A7380002 */  sh         $t8, 0x2($t9)
    /* E6AA0 800D7AF0 84EE0004 */  lh         $t6, 0x4($a3)
    /* E6AA4 800D7AF4 8C590000 */  lw         $t9, 0x0($v0)
    /* E6AA8 800D7AF8 448E5000 */  mtc1       $t6, $f10
    /* E6AAC 800D7AFC 00000000 */  nop
    /* E6AB0 800D7B00 46805120 */  cvt.s.w    $f4, $f10
    /* E6AB4 800D7B04 460E2180 */  add.s      $f6, $f4, $f14
    /* E6AB8 800D7B08 4600320D */  trunc.w.s  $f8, $f6
    /* E6ABC 800D7B0C 44184000 */  mfc1       $t8, $f8
    /* E6AC0 800D7B10 00000000 */  nop
    /* E6AC4 800D7B14 A7380004 */  sh         $t8, 0x4($t9)
    /* E6AC8 800D7B18 8C4E0000 */  lw         $t6, 0x0($v0)
    /* E6ACC 800D7B1C A5C00006 */  sh         $zero, 0x6($t6)
    /* E6AD0 800D7B20 8C4F0000 */  lw         $t7, 0x0($v0)
    /* E6AD4 800D7B24 A5E00008 */  sh         $zero, 0x8($t7)
    /* E6AD8 800D7B28 8C580000 */  lw         $t8, 0x0($v0)
    /* E6ADC 800D7B2C A700000A */  sh         $zero, 0xA($t8)
    /* E6AE0 800D7B30 8C590000 */  lw         $t9, 0x0($v0)
    /* E6AE4 800D7B34 A325000C */  sb         $a1, 0xC($t9)
    /* E6AE8 800D7B38 8C4E0000 */  lw         $t6, 0x0($v0)
    /* E6AEC 800D7B3C A1D5000D */  sb         $s5, 0xD($t6)
    /* E6AF0 800D7B40 8C4F0000 */  lw         $t7, 0x0($v0)
    /* E6AF4 800D7B44 A1F6000E */  sb         $s6, 0xE($t7)
    /* E6AF8 800D7B48 8C580000 */  lw         $t8, 0x0($v0)
    /* E6AFC 800D7B4C A305000F */  sb         $a1, 0xF($t8)
    /* E6B00 800D7B50 8C590000 */  lw         $t9, 0x0($v0)
    /* E6B04 800D7B54 272E0010 */  addiu      $t6, $t9, 0x10
    /* E6B08 800D7B58 AC4E0000 */  sw         $t6, 0x0($v0)
    /* E6B0C 800D7B5C 84EF0000 */  lh         $t7, 0x0($a3)
    /* E6B10 800D7B60 448F5000 */  mtc1       $t7, $f10
    /* E6B14 800D7B64 00000000 */  nop
    /* E6B18 800D7B68 46805120 */  cvt.s.w    $f4, $f10
    /* E6B1C 800D7B6C 46102180 */  add.s      $f6, $f4, $f16
    /* E6B20 800D7B70 4600320D */  trunc.w.s  $f8, $f6
    /* E6B24 800D7B74 44194000 */  mfc1       $t9, $f8
    /* E6B28 800D7B78 00000000 */  nop
    /* E6B2C 800D7B7C A5D90000 */  sh         $t9, 0x0($t6)
    /* E6B30 800D7B80 84EF0002 */  lh         $t7, 0x2($a3)
    /* E6B34 800D7B84 8C4E0000 */  lw         $t6, 0x0($v0)
    /* E6B38 800D7B88 448F5000 */  mtc1       $t7, $f10
    /* E6B3C 800D7B8C 00000000 */  nop
    /* E6B40 800D7B90 46805120 */  cvt.s.w    $f4, $f10
    /* E6B44 800D7B94 46122180 */  add.s      $f6, $f4, $f18
    /* E6B48 800D7B98 4600320D */  trunc.w.s  $f8, $f6
    /* E6B4C 800D7B9C 44194000 */  mfc1       $t9, $f8
    /* E6B50 800D7BA0 00000000 */  nop
    /* E6B54 800D7BA4 A5D90002 */  sh         $t9, 0x2($t6)
    /* E6B58 800D7BA8 84EF0004 */  lh         $t7, 0x4($a3)
    /* E6B5C 800D7BAC 8C4E0000 */  lw         $t6, 0x0($v0)
    /* E6B60 800D7BB0 448F5000 */  mtc1       $t7, $f10
    /* E6B64 800D7BB4 00000000 */  nop
    /* E6B68 800D7BB8 46805120 */  cvt.s.w    $f4, $f10
    /* E6B6C 800D7BBC 46142180 */  add.s      $f6, $f4, $f20
    /* E6B70 800D7BC0 4600320D */  trunc.w.s  $f8, $f6
    /* E6B74 800D7BC4 44194000 */  mfc1       $t9, $f8
    /* E6B78 800D7BC8 00000000 */  nop
    /* E6B7C 800D7BCC A5D90004 */  sh         $t9, 0x4($t6)
    /* E6B80 800D7BD0 8C4F0000 */  lw         $t7, 0x0($v0)
    /* E6B84 800D7BD4 A5E00006 */  sh         $zero, 0x6($t7)
    /* E6B88 800D7BD8 8C580000 */  lw         $t8, 0x0($v0)
    /* E6B8C 800D7BDC A7170008 */  sh         $s7, 0x8($t8)
    /* E6B90 800D7BE0 8C590000 */  lw         $t9, 0x0($v0)
    /* E6B94 800D7BE4 A720000A */  sh         $zero, 0xA($t9)
    /* E6B98 800D7BE8 8C4E0000 */  lw         $t6, 0x0($v0)
    /* E6B9C 800D7BEC A1C5000C */  sb         $a1, 0xC($t6)
    /* E6BA0 800D7BF0 8C4F0000 */  lw         $t7, 0x0($v0)
    /* E6BA4 800D7BF4 A1F5000D */  sb         $s5, 0xD($t7)
    /* E6BA8 800D7BF8 8C580000 */  lw         $t8, 0x0($v0)
    /* E6BAC 800D7BFC A316000E */  sb         $s6, 0xE($t8)
    /* E6BB0 800D7C00 8C590000 */  lw         $t9, 0x0($v0)
    /* E6BB4 800D7C04 A325000F */  sb         $a1, 0xF($t9)
    /* E6BB8 800D7C08 8C4E0000 */  lw         $t6, 0x0($v0)
    /* E6BBC 800D7C0C 25CF0010 */  addiu      $t7, $t6, 0x10
    /* E6BC0 800D7C10 AC4F0000 */  sw         $t7, 0x0($v0)
    /* E6BC4 800D7C14 84F80000 */  lh         $t8, 0x0($a3)
    /* E6BC8 800D7C18 44985000 */  mtc1       $t8, $f10
    /* E6BCC 800D7C1C 00000000 */  nop
    /* E6BD0 800D7C20 46805120 */  cvt.s.w    $f4, $f10
    /* E6BD4 800D7C24 46002181 */  sub.s      $f6, $f4, $f0
    /* E6BD8 800D7C28 4600320D */  trunc.w.s  $f8, $f6
    /* E6BDC 800D7C2C 440E4000 */  mfc1       $t6, $f8
    /* E6BE0 800D7C30 00000000 */  nop
    /* E6BE4 800D7C34 A5EE0000 */  sh         $t6, 0x0($t7)
    /* E6BE8 800D7C38 84F80002 */  lh         $t8, 0x2($a3)
    /* E6BEC 800D7C3C 8C4F0000 */  lw         $t7, 0x0($v0)
    /* E6BF0 800D7C40 44985000 */  mtc1       $t8, $f10
    /* E6BF4 800D7C44 00000000 */  nop
    /* E6BF8 800D7C48 46805120 */  cvt.s.w    $f4, $f10
    /* E6BFC 800D7C4C 460C2181 */  sub.s      $f6, $f4, $f12
    /* E6C00 800D7C50 4600320D */  trunc.w.s  $f8, $f6
    /* E6C04 800D7C54 440E4000 */  mfc1       $t6, $f8
    /* E6C08 800D7C58 00000000 */  nop
    /* E6C0C 800D7C5C A5EE0002 */  sh         $t6, 0x2($t7)
    /* E6C10 800D7C60 84F80004 */  lh         $t8, 0x4($a3)
    /* E6C14 800D7C64 8C4F0000 */  lw         $t7, 0x0($v0)
    /* E6C18 800D7C68 44985000 */  mtc1       $t8, $f10
    /* E6C1C 800D7C6C 00000000 */  nop
    /* E6C20 800D7C70 46805120 */  cvt.s.w    $f4, $f10
    /* E6C24 800D7C74 460E2181 */  sub.s      $f6, $f4, $f14
    /* E6C28 800D7C78 4600320D */  trunc.w.s  $f8, $f6
    /* E6C2C 800D7C7C 440E4000 */  mfc1       $t6, $f8
    /* E6C30 800D7C80 00000000 */  nop
    /* E6C34 800D7C84 A5EE0004 */  sh         $t6, 0x4($t7)
    /* E6C38 800D7C88 8C580000 */  lw         $t8, 0x0($v0)
    /* E6C3C 800D7C8C A7000006 */  sh         $zero, 0x6($t8)
    /* E6C40 800D7C90 8C590000 */  lw         $t9, 0x0($v0)
    /* E6C44 800D7C94 A7370008 */  sh         $s7, 0x8($t9)
    /* E6C48 800D7C98 8C4E0000 */  lw         $t6, 0x0($v0)
    /* E6C4C 800D7C9C A5D7000A */  sh         $s7, 0xA($t6)
    /* E6C50 800D7CA0 8C4F0000 */  lw         $t7, 0x0($v0)
    /* E6C54 800D7CA4 A1E5000C */  sb         $a1, 0xC($t7)
    /* E6C58 800D7CA8 8C580000 */  lw         $t8, 0x0($v0)
    /* E6C5C 800D7CAC A315000D */  sb         $s5, 0xD($t8)
    /* E6C60 800D7CB0 8C590000 */  lw         $t9, 0x0($v0)
    /* E6C64 800D7CB4 A336000E */  sb         $s6, 0xE($t9)
    /* E6C68 800D7CB8 8C4E0000 */  lw         $t6, 0x0($v0)
    /* E6C6C 800D7CBC A1C5000F */  sb         $a1, 0xF($t6)
    /* E6C70 800D7CC0 8C4F0000 */  lw         $t7, 0x0($v0)
    /* E6C74 800D7CC4 25F80010 */  addiu      $t8, $t7, 0x10
    /* E6C78 800D7CC8 AC580000 */  sw         $t8, 0x0($v0)
    /* E6C7C 800D7CCC 84F90000 */  lh         $t9, 0x0($a3)
    /* E6C80 800D7CD0 44995000 */  mtc1       $t9, $f10
    /* E6C84 800D7CD4 00000000 */  nop
    /* E6C88 800D7CD8 46805120 */  cvt.s.w    $f4, $f10
    /* E6C8C 800D7CDC 46102181 */  sub.s      $f6, $f4, $f16
    /* E6C90 800D7CE0 4600320D */  trunc.w.s  $f8, $f6
    /* E6C94 800D7CE4 440F4000 */  mfc1       $t7, $f8
    /* E6C98 800D7CE8 00000000 */  nop
    /* E6C9C 800D7CEC A70F0000 */  sh         $t7, 0x0($t8)
    /* E6CA0 800D7CF0 84F90002 */  lh         $t9, 0x2($a3)
    /* E6CA4 800D7CF4 8C580000 */  lw         $t8, 0x0($v0)
    /* E6CA8 800D7CF8 44995000 */  mtc1       $t9, $f10
    /* E6CAC 800D7CFC 00000000 */  nop
    /* E6CB0 800D7D00 46805120 */  cvt.s.w    $f4, $f10
    /* E6CB4 800D7D04 46122181 */  sub.s      $f6, $f4, $f18
    /* E6CB8 800D7D08 4600320D */  trunc.w.s  $f8, $f6
    /* E6CBC 800D7D0C 440F4000 */  mfc1       $t7, $f8
    /* E6CC0 800D7D10 00000000 */  nop
    /* E6CC4 800D7D14 A70F0002 */  sh         $t7, 0x2($t8)
    /* E6CC8 800D7D18 84F90004 */  lh         $t9, 0x4($a3)
    /* E6CCC 800D7D1C 8C580000 */  lw         $t8, 0x0($v0)
    /* E6CD0 800D7D20 44995000 */  mtc1       $t9, $f10
    /* E6CD4 800D7D24 00000000 */  nop
    /* E6CD8 800D7D28 46805120 */  cvt.s.w    $f4, $f10
    /* E6CDC 800D7D2C 46142181 */  sub.s      $f6, $f4, $f20
    /* E6CE0 800D7D30 4600320D */  trunc.w.s  $f8, $f6
    /* E6CE4 800D7D34 440F4000 */  mfc1       $t7, $f8
    /* E6CE8 800D7D38 00000000 */  nop
    /* E6CEC 800D7D3C A70F0004 */  sh         $t7, 0x4($t8)
    /* E6CF0 800D7D40 8C590000 */  lw         $t9, 0x0($v0)
    /* E6CF4 800D7D44 A7200006 */  sh         $zero, 0x6($t9)
    /* E6CF8 800D7D48 8C4E0000 */  lw         $t6, 0x0($v0)
    /* E6CFC 800D7D4C A5C00008 */  sh         $zero, 0x8($t6)
    /* E6D00 800D7D50 8C4F0000 */  lw         $t7, 0x0($v0)
    /* E6D04 800D7D54 A5F7000A */  sh         $s7, 0xA($t7)
    /* E6D08 800D7D58 8C580000 */  lw         $t8, 0x0($v0)
    /* E6D0C 800D7D5C A305000C */  sb         $a1, 0xC($t8)
    /* E6D10 800D7D60 8C590000 */  lw         $t9, 0x0($v0)
    /* E6D14 800D7D64 A335000D */  sb         $s5, 0xD($t9)
    /* E6D18 800D7D68 8C4E0000 */  lw         $t6, 0x0($v0)
    /* E6D1C 800D7D6C A1D6000E */  sb         $s6, 0xE($t6)
    /* E6D20 800D7D70 8C4F0000 */  lw         $t7, 0x0($v0)
    /* E6D24 800D7D74 A1E5000F */  sb         $a1, 0xF($t7)
    /* E6D28 800D7D78 8C580000 */  lw         $t8, 0x0($v0)
    /* E6D2C 800D7D7C 27190010 */  addiu      $t9, $t8, 0x10
    /* E6D30 800D7D80 AC590000 */  sw         $t9, 0x0($v0)
    /* E6D34 800D7D84 84EE0000 */  lh         $t6, 0x0($a3)
    /* E6D38 800D7D88 448E5000 */  mtc1       $t6, $f10
    /* E6D3C 800D7D8C 00000000 */  nop
    /* E6D40 800D7D90 46805120 */  cvt.s.w    $f4, $f10
    /* E6D44 800D7D94 4600218D */  trunc.w.s  $f6, $f4
    /* E6D48 800D7D98 44183000 */  mfc1       $t8, $f6
    /* E6D4C 800D7D9C 00000000 */  nop
    /* E6D50 800D7DA0 A7380000 */  sh         $t8, 0x0($t9)
    /* E6D54 800D7DA4 84EE0002 */  lh         $t6, 0x2($a3)
    /* E6D58 800D7DA8 8C590000 */  lw         $t9, 0x0($v0)
    /* E6D5C 800D7DAC 448E4000 */  mtc1       $t6, $f8
    /* E6D60 800D7DB0 00000000 */  nop
    /* E6D64 800D7DB4 468042A0 */  cvt.s.w    $f10, $f8
    /* E6D68 800D7DB8 4600510D */  trunc.w.s  $f4, $f10
    /* E6D6C 800D7DBC 44182000 */  mfc1       $t8, $f4
    /* E6D70 800D7DC0 00000000 */  nop
    /* E6D74 800D7DC4 A7380002 */  sh         $t8, 0x2($t9)
    /* E6D78 800D7DC8 84EE0004 */  lh         $t6, 0x4($a3)
    /* E6D7C 800D7DCC 8C590000 */  lw         $t9, 0x0($v0)
    /* E6D80 800D7DD0 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* E6D84 800D7DD4 448E3000 */  mtc1       $t6, $f6
    /* E6D88 800D7DD8 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* E6D8C 800D7DDC 46803220 */  cvt.s.w    $f8, $f6
    /* E6D90 800D7DE0 4600428D */  trunc.w.s  $f10, $f8
    /* E6D94 800D7DE4 44185000 */  mfc1       $t8, $f10
    /* E6D98 800D7DE8 00000000 */  nop
    /* E6D9C 800D7DEC A7380004 */  sh         $t8, 0x4($t9)
    /* E6DA0 800D7DF0 8C4E0000 */  lw         $t6, 0x0($v0)
    /* E6DA4 800D7DF4 A5C00006 */  sh         $zero, 0x6($t6)
    /* E6DA8 800D7DF8 8C4F0000 */  lw         $t7, 0x0($v0)
    /* E6DAC 800D7DFC A5EA0008 */  sh         $t2, 0x8($t7)
    /* E6DB0 800D7E00 8C580000 */  lw         $t8, 0x0($v0)
    /* E6DB4 800D7E04 A70A000A */  sh         $t2, 0xA($t8)
    /* E6DB8 800D7E08 8C590000 */  lw         $t9, 0x0($v0)
    /* E6DBC 800D7E0C A325000C */  sb         $a1, 0xC($t9)
    /* E6DC0 800D7E10 8C4E0000 */  lw         $t6, 0x0($v0)
    /* E6DC4 800D7E14 A1C5000D */  sb         $a1, 0xD($t6)
    /* E6DC8 800D7E18 8C4F0000 */  lw         $t7, 0x0($v0)
    /* E6DCC 800D7E1C A1E5000E */  sb         $a1, 0xE($t7)
    /* E6DD0 800D7E20 8C580000 */  lw         $t8, 0x0($v0)
    /* E6DD4 800D7E24 A305000F */  sb         $a1, 0xF($t8)
    /* E6DD8 800D7E28 8C590000 */  lw         $t9, 0x0($v0)
    /* E6DDC 800D7E2C 8C830000 */  lw         $v1, 0x0($a0)
    /* E6DE0 800D7E30 3C180400 */  lui        $t8, (0x400144F >> 16)
    /* E6DE4 800D7E34 272E0010 */  addiu      $t6, $t9, 0x10
    /* E6DE8 800D7E38 246F0008 */  addiu      $t7, $v1, 0x8
    /* E6DEC 800D7E3C AC4E0000 */  sw         $t6, 0x0($v0)
    /* E6DF0 800D7E40 AC8F0000 */  sw         $t7, 0x0($a0)
    /* E6DF4 800D7E44 3718144F */  ori        $t8, $t8, (0x400144F & 0xFFFF)
    /* E6DF8 800D7E48 AC780000 */  sw         $t8, 0x0($v1)
    /* E6DFC 800D7E4C 8C590000 */  lw         $t9, 0x0($v0)
    /* E6E00 800D7E50 272EFFB0 */  addiu      $t6, $t9, -0x50
    /* E6E04 800D7E54 01C17824 */  and        $t7, $t6, $at
    /* E6E08 800D7E58 AC6F0004 */  sw         $t7, 0x4($v1)
    /* E6E0C 800D7E5C 8C830000 */  lw         $v1, 0x0($a0)
    /* E6E10 800D7E60 3C0E0008 */  lui        $t6, (0x80204 >> 16)
    /* E6E14 800D7E64 3C19B100 */  lui        $t9, (0xB1000208 >> 16)
    /* E6E18 800D7E68 24780008 */  addiu      $t8, $v1, 0x8
    /* E6E1C 800D7E6C AC980000 */  sw         $t8, 0x0($a0)
    /* E6E20 800D7E70 37390208 */  ori        $t9, $t9, (0xB1000208 & 0xFFFF)
    /* E6E24 800D7E74 35CE0204 */  ori        $t6, $t6, (0x80204 & 0xFFFF)
    /* E6E28 800D7E78 AC6E0004 */  sw         $t6, 0x4($v1)
    /* E6E2C 800D7E7C AC790000 */  sw         $t9, 0x0($v1)
    /* E6E30 800D7E80 8C830000 */  lw         $v1, 0x0($a0)
    /* E6E34 800D7E84 3C18B108 */  lui        $t8, (0xB1080406 >> 16)
    /* E6E38 800D7E88 37180406 */  ori        $t8, $t8, (0xB1080406 & 0xFFFF)
    /* E6E3C 800D7E8C 246F0008 */  addiu      $t7, $v1, 0x8
    /* E6E40 800D7E90 AC8F0000 */  sw         $t7, 0x0($a0)
    /* E6E44 800D7E94 24190608 */  addiu      $t9, $zero, 0x608
    /* E6E48 800D7E98 AC790004 */  sw         $t9, 0x4($v1)
    /* E6E4C 800D7E9C AC780000 */  sw         $t8, 0x0($v1)
    /* E6E50 800D7EA0 856E0000 */  lh         $t6, 0x0($t3)
    /* E6E54 800D7EA4 869E0004 */  lh         $fp, 0x4($s4)
    /* E6E58 800D7EA8 2401FFFB */  addiu      $at, $zero, -0x5
    /* E6E5C 800D7EAC 25CF0005 */  addiu      $t7, $t6, 0x5
    /* E6E60 800D7EB0 13C10004 */  beq        $fp, $at, .L800D7EC4_E6E74
    /* E6E64 800D7EB4 A56F0000 */   sh        $t7, 0x0($t3)
    /* E6E68 800D7EB8 2401FFFA */  addiu      $at, $zero, -0x6
    /* E6E6C 800D7EBC 57C1FE9D */  bnel       $fp, $at, .L800D7934_E68E4
    /* E6E70 800D7EC0 8C830000 */   lw        $v1, 0x0($a0)
  .L800D7EC4_E6E74:
    /* E6E74 800D7EC4 8FBF0034 */  lw         $ra, 0x34($sp)
    /* E6E78 800D7EC8 D7B40008 */  ldc1       $f20, 0x8($sp)
    /* E6E7C 800D7ECC 8FB00010 */  lw         $s0, 0x10($sp)
    /* E6E80 800D7ED0 8FB10014 */  lw         $s1, 0x14($sp)
    /* E6E84 800D7ED4 8FB20018 */  lw         $s2, 0x18($sp)
    /* E6E88 800D7ED8 8FB3001C */  lw         $s3, 0x1C($sp)
    /* E6E8C 800D7EDC 8FB40020 */  lw         $s4, 0x20($sp)
    /* E6E90 800D7EE0 8FB50024 */  lw         $s5, 0x24($sp)
    /* E6E94 800D7EE4 8FB60028 */  lw         $s6, 0x28($sp)
    /* E6E98 800D7EE8 8FB7002C */  lw         $s7, 0x2C($sp)
    /* E6E9C 800D7EEC 8FBE0030 */  lw         $fp, 0x30($sp)
    /* E6EA0 800D7EF0 03E00008 */  jr         $ra
    /* E6EA4 800D7EF4 27BD0038 */   addiu     $sp, $sp, 0x38
endlabel func_800D7870_E6820
