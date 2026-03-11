nonmatching func_8008A5F8_5AAA8, 0x330

glabel func_8008A5F8_5AAA8
    /* 5AAA8 8008A5F8 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* 5AAAC 8008A5FC AFB30030 */  sw         $s3, 0x30($sp)
    /* 5AAB0 8008A600 309300FF */  andi       $s3, $a0, 0xFF
    /* 5AAB4 8008A604 00137080 */  sll        $t6, $s3, 2
    /* 5AAB8 8008A608 01D37023 */  subu       $t6, $t6, $s3
    /* 5AABC 8008A60C 3C0F800E */  lui        $t7, %hi(D_800DE130)
    /* 5AAC0 8008A610 AFB40034 */  sw         $s4, 0x34($sp)
    /* 5AAC4 8008A614 25EFE130 */  addiu      $t7, $t7, %lo(D_800DE130)
    /* 5AAC8 8008A618 000E7080 */  sll        $t6, $t6, 2
    /* 5AACC 8008A61C 01CFA021 */  addu       $s4, $t6, $t7
    /* 5AAD0 8008A620 86820006 */  lh         $v0, 0x6($s4)
    /* 5AAD4 8008A624 2409001C */  addiu      $t1, $zero, 0x1C
    /* 5AAD8 8008A628 3C08800E */  lui        $t0, %hi(D_800DE840)
    /* 5AADC 8008A62C 00490019 */  multu      $v0, $t1
    /* 5AAE0 8008A630 2508E840 */  addiu      $t0, $t0, %lo(D_800DE840)
    /* 5AAE4 8008A634 AFBF003C */  sw         $ra, 0x3C($sp)
    /* 5AAE8 8008A638 AFB50038 */  sw         $s5, 0x38($sp)
    /* 5AAEC 8008A63C AFB2002C */  sw         $s2, 0x2C($sp)
    /* 5AAF0 8008A640 AFB10028 */  sw         $s1, 0x28($sp)
    /* 5AAF4 8008A644 AFB00024 */  sw         $s0, 0x24($sp)
    /* 5AAF8 8008A648 AFA40060 */  sw         $a0, 0x60($sp)
    /* 5AAFC 8008A64C 2401FFFB */  addiu      $at, $zero, -0x5
    /* 5AB00 8008A650 0000C012 */  mflo       $t8
    /* 5AB04 8008A654 0118C821 */  addu       $t9, $t0, $t8
    /* 5AB08 8008A658 AFB90040 */  sw         $t9, 0x40($sp)
    /* 5AB0C 8008A65C 87230004 */  lh         $v1, 0x4($t9)
    /* 5AB10 8008A660 00690019 */  multu      $v1, $t1
    /* 5AB14 8008A664 00005812 */  mflo       $t3
    /* 5AB18 8008A668 010BA821 */  addu       $s5, $t0, $t3
    /* 5AB1C 8008A66C 86B20004 */  lh         $s2, 0x4($s5)
    /* 5AB20 8008A670 12410073 */  beq        $s2, $at, .L8008A840_5ACF0
    /* 5AB24 8008A674 2401FFFA */   addiu     $at, $zero, -0x6
    /* 5AB28 8008A678 12410071 */  beq        $s2, $at, .L8008A840_5ACF0
    /* 5AB2C 8008A67C 00000000 */   nop
  .L8008A680_5AB30:
    /* 5AB30 8008A680 02490019 */  multu      $s2, $t1
    /* 5AB34 8008A684 00006012 */  mflo       $t4
    /* 5AB38 8008A688 010C8021 */  addu       $s0, $t0, $t4
    /* 5AB3C 8008A68C 860D0008 */  lh         $t5, 0x8($s0)
    /* 5AB40 8008A690 820E0012 */  lb         $t6, 0x12($s0)
    /* 5AB44 8008A694 8618000C */  lh         $t8, 0xC($s0)
    /* 5AB48 8008A698 82190014 */  lb         $t9, 0x14($s0)
    /* 5AB4C 8008A69C 860B000A */  lh         $t3, 0xA($s0)
    /* 5AB50 8008A6A0 820C0013 */  lb         $t4, 0x13($s0)
    /* 5AB54 8008A6A4 01AE7821 */  addu       $t7, $t5, $t6
    /* 5AB58 8008A6A8 03195021 */  addu       $t2, $t8, $t9
    /* 5AB5C 8008A6AC 016C6821 */  addu       $t5, $t3, $t4
    /* 5AB60 8008A6B0 A60F0008 */  sh         $t7, 0x8($s0)
    /* 5AB64 8008A6B4 A60A000C */  sh         $t2, 0xC($s0)
    /* 5AB68 8008A6B8 A60D000A */  sh         $t5, 0xA($s0)
    /* 5AB6C 8008A6BC 3C0E800E */  lui        $t6, %hi(D_800DE0B6)
    /* 5AB70 8008A6C0 91CEE0B6 */  lbu        $t6, %lo(D_800DE0B6)($t6)
    /* 5AB74 8008A6C4 26020008 */  addiu      $v0, $s0, 0x8
    /* 5AB78 8008A6C8 55C00058 */  bnel       $t6, $zero, .L8008A82C_5ACDC
    /* 5AB7C 8008A6CC 86120004 */   lh        $s2, 0x4($s0)
    /* 5AB80 8008A6D0 8044000B */  lb         $a0, 0xB($v0)
    /* 5AB84 8008A6D4 8FA30040 */  lw         $v1, 0x40($sp)
    /* 5AB88 8008A6D8 2418FFCE */  addiu      $t8, $zero, -0x32
    /* 5AB8C 8008A6DC 2881FFCF */  slti       $at, $a0, -0x31
    /* 5AB90 8008A6E0 14200004 */  bnez       $at, .L8008A6F4_5ABA4
    /* 5AB94 8008A6E4 24630008 */   addiu     $v1, $v1, 0x8
    /* 5AB98 8008A6E8 248FFFFF */  addiu      $t7, $a0, -0x1
    /* 5AB9C 8008A6EC 10000002 */  b          .L8008A6F8_5ABA8
    /* 5ABA0 8008A6F0 A04F000B */   sb        $t7, 0xB($v0)
  .L8008A6F4_5ABA4:
    /* 5ABA4 8008A6F4 A058000B */  sb         $t8, 0xB($v0)
  .L8008A6F8_5ABA8:
    /* 5ABA8 8008A6F8 9064000C */  lbu        $a0, 0xC($v1)
    /* 5ABAC 8008A6FC 24010001 */  addiu      $at, $zero, 0x1
    /* 5ABB0 8008A700 14800028 */  bnez       $a0, .L8008A7A4_5AC54
    /* 5ABB4 8008A704 00000000 */   nop
    /* 5ABB8 8008A708 84590002 */  lh         $t9, 0x2($v0)
    /* 5ABBC 8008A70C 1F200025 */  bgtz       $t9, .L8008A7A4_5AC54
    /* 5ABC0 8008A710 00000000 */   nop
    /* 5ABC4 8008A714 906A0007 */  lbu        $t2, 0x7($v1)
    /* 5ABC8 8008A718 84440000 */  lh         $a0, 0x0($v0)
    /* 5ABCC 8008A71C 84450004 */  lh         $a1, 0x4($v0)
    /* 5ABD0 8008A720 90670006 */  lbu        $a3, 0x6($v1)
    /* 5ABD4 8008A724 AFAA0010 */  sw         $t2, 0x10($sp)
    /* 5ABD8 8008A728 906B0008 */  lbu        $t3, 0x8($v1)
    /* 5ABDC 8008A72C 96060002 */  lhu        $a2, 0x2($s0)
    /* 5ABE0 8008A730 AFAB0014 */  sw         $t3, 0x14($sp)
    /* 5ABE4 8008A734 904C0009 */  lbu        $t4, 0x9($v0)
    /* 5ABE8 8008A738 0C02267C */  jal        func_800899F0_59EA0
    /* 5ABEC 8008A73C AFAC0018 */   sw        $t4, 0x18($sp)
    /* 5ABF0 8008A740 928D0004 */  lbu        $t5, 0x4($s4)
    /* 5ABF4 8008A744 00122400 */  sll        $a0, $s2, 16
    /* 5ABF8 8008A748 00047C03 */  sra        $t7, $a0, 16
    /* 5ABFC 8008A74C 29A10004 */  slti       $at, $t5, 0x4
    /* 5AC00 8008A750 1020000A */  beqz       $at, .L8008A77C_5AC2C
    /* 5AC04 8008A754 01E02025 */   or        $a0, $t7, $zero
    /* 5AC08 8008A758 92AE000D */  lbu        $t6, 0xD($s5)
    /* 5AC0C 8008A75C 55C00008 */  bnel       $t6, $zero, .L8008A780_5AC30
    /* 5AC10 8008A760 86110004 */   lh        $s1, 0x4($s0)
    /* 5AC14 8008A764 0C021031 */  jal        func_800840C4_54574
    /* 5AC18 8008A768 326400FF */   andi      $a0, $s3, 0xFF
    /* 5AC1C 8008A76C 0C020EC5 */  jal        func_80083B14_53FC4
    /* 5AC20 8008A770 326400FF */   andi      $a0, $s3, 0xFF
    /* 5AC24 8008A774 10000064 */  b          .L8008A908_5ADB8
    /* 5AC28 8008A778 8FBF003C */   lw        $ra, 0x3C($sp)
  .L8008A77C_5AC2C:
    /* 5AC2C 8008A77C 86110004 */  lh         $s1, 0x4($s0)
  .L8008A780_5AC30:
    /* 5AC30 8008A780 0C020F6F */  jal        func_80083DBC_5426C
    /* 5AC34 8008A784 326500FF */   andi      $a1, $s3, 0xFF
    /* 5AC38 8008A788 00119400 */  sll        $s2, $s1, 16
    /* 5AC3C 8008A78C 0012C403 */  sra        $t8, $s2, 16
    /* 5AC40 8008A790 3C08800E */  lui        $t0, %hi(D_800DE840)
    /* 5AC44 8008A794 2508E840 */  addiu      $t0, $t0, %lo(D_800DE840)
    /* 5AC48 8008A798 03009025 */  or         $s2, $t8, $zero
    /* 5AC4C 8008A79C 10000023 */  b          .L8008A82C_5ACDC
    /* 5AC50 8008A7A0 2409001C */   addiu     $t1, $zero, 0x1C
  .L8008A7A4_5AC54:
    /* 5AC54 8008A7A4 1481001E */  bne        $a0, $at, .L8008A820_5ACD0
    /* 5AC58 8008A7A8 00000000 */   nop
    /* 5AC5C 8008A7AC 84590002 */  lh         $t9, 0x2($v0)
    /* 5AC60 8008A7B0 2B21FE0D */  slti       $at, $t9, -0x1F3
    /* 5AC64 8008A7B4 1020001A */  beqz       $at, .L8008A820_5ACD0
    /* 5AC68 8008A7B8 00000000 */   nop
    /* 5AC6C 8008A7BC 928A0004 */  lbu        $t2, 0x4($s4)
    /* 5AC70 8008A7C0 00122400 */  sll        $a0, $s2, 16
    /* 5AC74 8008A7C4 00046403 */  sra        $t4, $a0, 16
    /* 5AC78 8008A7C8 29410004 */  slti       $at, $t2, 0x4
    /* 5AC7C 8008A7CC 1020000A */  beqz       $at, .L8008A7F8_5ACA8
    /* 5AC80 8008A7D0 01802025 */   or        $a0, $t4, $zero
    /* 5AC84 8008A7D4 92AB000D */  lbu        $t3, 0xD($s5)
    /* 5AC88 8008A7D8 55600008 */  bnel       $t3, $zero, .L8008A7FC_5ACAC
    /* 5AC8C 8008A7DC 86110004 */   lh        $s1, 0x4($s0)
    /* 5AC90 8008A7E0 0C021031 */  jal        func_800840C4_54574
    /* 5AC94 8008A7E4 326400FF */   andi      $a0, $s3, 0xFF
    /* 5AC98 8008A7E8 0C020EC5 */  jal        func_80083B14_53FC4
    /* 5AC9C 8008A7EC 326400FF */   andi      $a0, $s3, 0xFF
    /* 5ACA0 8008A7F0 10000045 */  b          .L8008A908_5ADB8
    /* 5ACA4 8008A7F4 8FBF003C */   lw        $ra, 0x3C($sp)
  .L8008A7F8_5ACA8:
    /* 5ACA8 8008A7F8 86110004 */  lh         $s1, 0x4($s0)
  .L8008A7FC_5ACAC:
    /* 5ACAC 8008A7FC 0C020F6F */  jal        func_80083DBC_5426C
    /* 5ACB0 8008A800 326500FF */   andi      $a1, $s3, 0xFF
    /* 5ACB4 8008A804 00119400 */  sll        $s2, $s1, 16
    /* 5ACB8 8008A808 00126C03 */  sra        $t5, $s2, 16
    /* 5ACBC 8008A80C 3C08800E */  lui        $t0, %hi(D_800DE840)
    /* 5ACC0 8008A810 2508E840 */  addiu      $t0, $t0, %lo(D_800DE840)
    /* 5ACC4 8008A814 01A09025 */  or         $s2, $t5, $zero
    /* 5ACC8 8008A818 10000004 */  b          .L8008A82C_5ACDC
    /* 5ACCC 8008A81C 2409001C */   addiu     $t1, $zero, 0x1C
  .L8008A820_5ACD0:
    /* 5ACD0 8008A820 10000002 */  b          .L8008A82C_5ACDC
    /* 5ACD4 8008A824 86120004 */   lh        $s2, 0x4($s0)
    /* 5ACD8 8008A828 86120004 */  lh         $s2, 0x4($s0)
  .L8008A82C_5ACDC:
    /* 5ACDC 8008A82C 2401FFFB */  addiu      $at, $zero, -0x5
    /* 5ACE0 8008A830 12410003 */  beq        $s2, $at, .L8008A840_5ACF0
    /* 5ACE4 8008A834 2401FFFA */   addiu     $at, $zero, -0x6
    /* 5ACE8 8008A838 1641FF91 */  bne        $s2, $at, .L8008A680_5AB30
    /* 5ACEC 8008A83C 00000000 */   nop
  .L8008A840_5ACF0:
    /* 5ACF0 8008A840 3C0E800E */  lui        $t6, %hi(D_800DE0B6)
    /* 5ACF4 8008A844 91CEE0B6 */  lbu        $t6, %lo(D_800DE0B6)($t6)
    /* 5ACF8 8008A848 24010001 */  addiu      $at, $zero, 0x1
    /* 5ACFC 8008A84C 26B00008 */  addiu      $s0, $s5, 0x8
    /* 5AD00 8008A850 55C10010 */  bnel       $t6, $at, .L8008A894_5AD44
    /* 5AD04 8008A854 96020006 */   lhu       $v0, 0x6($s0)
    /* 5AD08 8008A858 0C000E38 */  jal        func_800038E0_44E0
    /* 5AD0C 8008A85C 00000000 */   nop
    /* 5AD10 8008A860 04410004 */  bgez       $v0, .L8008A874_5AD24
    /* 5AD14 8008A864 304F0007 */   andi      $t7, $v0, 0x7
    /* 5AD18 8008A868 11E00002 */  beqz       $t7, .L8008A874_5AD24
    /* 5AD1C 8008A86C 00000000 */   nop
    /* 5AD20 8008A870 25EFFFF8 */  addiu      $t7, $t7, -0x8
  .L8008A874_5AD24:
    /* 5AD24 8008A874 24010001 */  addiu      $at, $zero, 0x1
    /* 5AD28 8008A878 55E10023 */  bnel       $t7, $at, .L8008A908_5ADB8
    /* 5AD2C 8008A87C 8FBF003C */   lw        $ra, 0x3C($sp)
    /* 5AD30 8008A880 0C022825 */  jal        func_8008A094_5A544
    /* 5AD34 8008A884 326400FF */   andi      $a0, $s3, 0xFF
    /* 5AD38 8008A888 1000001F */  b          .L8008A908_5ADB8
    /* 5AD3C 8008A88C 8FBF003C */   lw        $ra, 0x3C($sp)
    /* 5AD40 8008A890 96020006 */  lhu        $v0, 0x6($s0)
  .L8008A894_5AD44:
    /* 5AD44 8008A894 18400003 */  blez       $v0, .L8008A8A4_5AD54
    /* 5AD48 8008A898 2458FFFF */   addiu     $t8, $v0, -0x1
    /* 5AD4C 8008A89C 10000019 */  b          .L8008A904_5ADB4
    /* 5AD50 8008A8A0 A6180006 */   sh        $t8, 0x6($s0)
  .L8008A8A4_5AD54:
    /* 5AD54 8008A8A4 0C000E38 */  jal        func_800038E0_44E0
    /* 5AD58 8008A8A8 00000000 */   nop
    /* 5AD5C 8008A8AC 24010003 */  addiu      $at, $zero, 0x3
    /* 5AD60 8008A8B0 0041001A */  div        $zero, $v0, $at
    /* 5AD64 8008A8B4 00001810 */  mfhi       $v1
    /* 5AD68 8008A8B8 24630002 */  addiu      $v1, $v1, 0x2
    /* 5AD6C 8008A8BC 307900FF */  andi       $t9, $v1, 0xFF
    /* 5AD70 8008A8C0 306400FF */  andi       $a0, $v1, 0xFF
    /* 5AD74 8008A8C4 1B20000F */  blez       $t9, .L8008A904_5ADB4
    /* 5AD78 8008A8C8 00008825 */   or        $s1, $zero, $zero
    /* 5AD7C 8008A8CC 00809025 */  or         $s2, $a0, $zero
  .L8008A8D0_5AD80:
    /* 5AD80 8008A8D0 920A0005 */  lbu        $t2, 0x5($s0)
    /* 5AD84 8008A8D4 59400007 */  blezl      $t2, .L8008A8F4_5ADA4
    /* 5AD88 8008A8D8 26310001 */   addiu     $s1, $s1, 0x1
    /* 5AD8C 8008A8DC 0C022825 */  jal        func_8008A094_5A544
    /* 5AD90 8008A8E0 326400FF */   andi      $a0, $s3, 0xFF
    /* 5AD94 8008A8E4 920B0005 */  lbu        $t3, 0x5($s0)
    /* 5AD98 8008A8E8 256CFFFF */  addiu      $t4, $t3, -0x1
    /* 5AD9C 8008A8EC A20C0005 */  sb         $t4, 0x5($s0)
    /* 5ADA0 8008A8F0 26310001 */  addiu      $s1, $s1, 0x1
  .L8008A8F4_5ADA4:
    /* 5ADA4 8008A8F4 322D00FF */  andi       $t5, $s1, 0xFF
    /* 5ADA8 8008A8F8 01B2082A */  slt        $at, $t5, $s2
    /* 5ADAC 8008A8FC 1420FFF4 */  bnez       $at, .L8008A8D0_5AD80
    /* 5ADB0 8008A900 01A08825 */   or        $s1, $t5, $zero
  .L8008A904_5ADB4:
    /* 5ADB4 8008A904 8FBF003C */  lw         $ra, 0x3C($sp)
  .L8008A908_5ADB8:
    /* 5ADB8 8008A908 8FB00024 */  lw         $s0, 0x24($sp)
    /* 5ADBC 8008A90C 8FB10028 */  lw         $s1, 0x28($sp)
    /* 5ADC0 8008A910 8FB2002C */  lw         $s2, 0x2C($sp)
    /* 5ADC4 8008A914 8FB30030 */  lw         $s3, 0x30($sp)
    /* 5ADC8 8008A918 8FB40034 */  lw         $s4, 0x34($sp)
    /* 5ADCC 8008A91C 8FB50038 */  lw         $s5, 0x38($sp)
    /* 5ADD0 8008A920 03E00008 */  jr         $ra
    /* 5ADD4 8008A924 27BD0060 */   addiu     $sp, $sp, 0x60
endlabel func_8008A5F8_5AAA8
