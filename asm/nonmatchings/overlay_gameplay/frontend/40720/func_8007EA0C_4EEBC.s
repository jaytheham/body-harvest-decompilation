nonmatching func_8007EA0C_4EEBC, 0x18C

glabel func_8007EA0C_4EEBC
    /* 4EEBC 8007EA0C 3C018009 */  lui        $at, %hi(D_80094900)
    /* 4EEC0 8007EA10 3C02800D */  lui        $v0, %hi(D_800D7A60)
    /* 4EEC4 8007EA14 AC204900 */  sw         $zero, %lo(D_80094900)($at)
    /* 4EEC8 8007EA18 24427A60 */  addiu      $v0, $v0, %lo(D_800D7A60)
    /* 4EECC 8007EA1C AC400000 */  sw         $zero, 0x0($v0)
    /* 4EED0 8007EA20 3C01800D */  lui        $at, %hi(D_800D7A5C)
    /* 4EED4 8007EA24 AC207A5C */  sw         $zero, %lo(D_800D7A5C)($at)
    /* 4EED8 8007EA28 3C01800D */  lui        $at, %hi(D_800D7A84)
    /* 4EEDC 8007EA2C A0207A84 */  sb         $zero, %lo(D_800D7A84)($at)
    /* 4EEE0 8007EA30 3C01800D */  lui        $at, %hi(D_800D7970)
    /* 4EEE4 8007EA34 A0207970 */  sb         $zero, %lo(D_800D7970)($at)
    /* 4EEE8 8007EA38 3C018009 */  lui        $at, %hi(D_80094930)
    /* 4EEEC 8007EA3C 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 4EEF0 8007EA40 AC204930 */  sw         $zero, %lo(D_80094930)($at)
    /* 4EEF4 8007EA44 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 4EEF8 8007EA48 8C8E0000 */  lw         $t6, 0x0($a0)
    /* 4EEFC 8007EA4C 8C580000 */  lw         $t8, 0x0($v0)
    /* 4EF00 8007EA50 3C05800D */  lui        $a1, %hi(D_800D7A50)
    /* 4EF04 8007EA54 24A57A50 */  addiu      $a1, $a1, %lo(D_800D7A50)
    /* 4EF08 8007EA58 0018C880 */  sll        $t9, $t8, 2
    /* 4EF0C 8007EA5C ACAE0000 */  sw         $t6, 0x0($a1)
    /* 4EF10 8007EA60 01D94021 */  addu       $t0, $t6, $t9
    /* 4EF14 8007EA64 8D090000 */  lw         $t1, 0x0($t0)
    /* 4EF18 8007EA68 3C06800D */  lui        $a2, %hi(D_800D7A58)
    /* 4EF1C 8007EA6C 3C01800D */  lui        $at, %hi(D_800D7A54)
    /* 4EF20 8007EA70 24C67A58 */  addiu      $a2, $a2, %lo(D_800D7A58)
    /* 4EF24 8007EA74 AC297A54 */  sw         $t1, %lo(D_800D7A54)($at)
    /* 4EF28 8007EA78 90CA0000 */  lbu        $t2, 0x0($a2)
    /* 4EF2C 8007EA7C 2405002C */  addiu      $a1, $zero, 0x2C
    /* 4EF30 8007EA80 00001825 */  or         $v1, $zero, $zero
    /* 4EF34 8007EA84 19400013 */  blez       $t2, .L8007EAD4_4EF84
    /* 4EF38 8007EA88 24190007 */   addiu     $t9, $zero, 0x7
    /* 4EF3C 8007EA8C 3C04800D */  lui        $a0, %hi(D_800D7A1C)
    /* 4EF40 8007EA90 24847A1C */  addiu      $a0, $a0, %lo(D_800D7A1C)
  .L8007EA94_4EF44:
    /* 4EF44 8007EA94 00650019 */  multu      $v1, $a1
    /* 4EF48 8007EA98 8C8B0000 */  lw         $t3, 0x0($a0)
    /* 4EF4C 8007EA9C 24630001 */  addiu      $v1, $v1, 0x1
    /* 4EF50 8007EAA0 307800FF */  andi       $t8, $v1, 0xFF
    /* 4EF54 8007EAA4 03001825 */  or         $v1, $t8, $zero
    /* 4EF58 8007EAA8 00001012 */  mflo       $v0
    /* 4EF5C 8007EAAC 01626021 */  addu       $t4, $t3, $v0
    /* 4EF60 8007EAB0 AD80001C */  sw         $zero, 0x1C($t4)
    /* 4EF64 8007EAB4 8C8D0000 */  lw         $t5, 0x0($a0)
    /* 4EF68 8007EAB8 01A27021 */  addu       $t6, $t5, $v0
    /* 4EF6C 8007EABC ADC00008 */  sw         $zero, 0x8($t6)
    /* 4EF70 8007EAC0 90CF0000 */  lbu        $t7, 0x0($a2)
    /* 4EF74 8007EAC4 030F082A */  slt        $at, $t8, $t7
    /* 4EF78 8007EAC8 1420FFF2 */  bnez       $at, .L8007EA94_4EF44
    /* 4EF7C 8007EACC 00000000 */   nop
    /* 4EF80 8007EAD0 00001825 */  or         $v1, $zero, $zero
  .L8007EAD4_4EF84:
    /* 4EF84 8007EAD4 3C02800D */  lui        $v0, %hi(D_800D7B08)
    /* 4EF88 8007EAD8 24427B08 */  addiu      $v0, $v0, %lo(D_800D7B08)
    /* 4EF8C 8007EADC A0400000 */  sb         $zero, 0x0($v0)
    /* 4EF90 8007EAE0 A0400001 */  sb         $zero, 0x1($v0)
    /* 4EF94 8007EAE4 A0400002 */  sb         $zero, 0x2($v0)
    /* 4EF98 8007EAE8 3C018009 */  lui        $at, %hi(D_80094908)
    /* 4EF9C 8007EAEC A0394908 */  sb         $t9, %lo(D_80094908)($at)
    /* 4EFA0 8007EAF0 0C01FAEC */  jal        func_8007EBB0_4F060
    /* 4EFA4 8007EAF4 A3A3001F */   sb        $v1, 0x1F($sp)
    /* 4EFA8 8007EAF8 3C02800D */  lui        $v0, %hi(D_800D7A86)
    /* 4EFAC 8007EAFC 24427A86 */  addiu      $v0, $v0, %lo(D_800D7A86)
    /* 4EFB0 8007EB00 A0400000 */  sb         $zero, 0x0($v0)
    /* 4EFB4 8007EB04 A0400001 */  sb         $zero, 0x1($v0)
    /* 4EFB8 8007EB08 A0400002 */  sb         $zero, 0x2($v0)
    /* 4EFBC 8007EB0C 3C018009 */  lui        $at, %hi(D_80094934)
    /* 4EFC0 8007EB10 3C02800E */  lui        $v0, %hi(D_800D8550)
    /* 4EFC4 8007EB14 93A3001F */  lbu        $v1, 0x1F($sp)
    /* 4EFC8 8007EB18 AC204934 */  sw         $zero, %lo(D_80094934)($at)
    /* 4EFCC 8007EB1C 24428550 */  addiu      $v0, $v0, %lo(D_800D8550)
  .L8007EB20_4EFD0:
    /* 4EFD0 8007EB20 00034080 */  sll        $t0, $v1, 2
    /* 4EFD4 8007EB24 24630001 */  addiu      $v1, $v1, 0x1
    /* 4EFD8 8007EB28 306A00FF */  andi       $t2, $v1, 0xFF
    /* 4EFDC 8007EB2C 2941000A */  slti       $at, $t2, 0xA
    /* 4EFE0 8007EB30 00484821 */  addu       $t1, $v0, $t0
    /* 4EFE4 8007EB34 01401825 */  or         $v1, $t2, $zero
    /* 4EFE8 8007EB38 1420FFF9 */  bnez       $at, .L8007EB20_4EFD0
    /* 4EFEC 8007EB3C AD200000 */   sw        $zero, 0x0($t1)
    /* 4EFF0 8007EB40 3C0B800E */  lui        $t3, %hi(D_800D88E8)
    /* 4EFF4 8007EB44 256B88E8 */  addiu      $t3, $t3, %lo(D_800D88E8)
    /* 4EFF8 8007EB48 3C01800E */  lui        $at, %hi(D_800DE068)
    /* 4EFFC 8007EB4C AC2BE068 */  sw         $t3, %lo(D_800DE068)($at)
    /* 4F000 8007EB50 3C01800E */  lui        $at, %hi(D_800D8518)
    /* 4F004 8007EB54 AC208518 */  sw         $zero, %lo(D_800D8518)($at)
    /* 4F008 8007EB58 3C01800E */  lui        $at, %hi(D_800D8520)
    /* 4F00C 8007EB5C AC208520 */  sw         $zero, %lo(D_800D8520)($at)
    /* 4F010 8007EB60 44800000 */  mtc1       $zero, $f0
    /* 4F014 8007EB64 3C018009 */  lui        $at, %hi(D_80094948)
    /* 4F018 8007EB68 AC204948 */  sw         $zero, %lo(D_80094948)($at)
    /* 4F01C 8007EB6C 3C01800E */  lui        $at, %hi(D_800D8528)
    /* 4F020 8007EB70 E4208528 */  swc1       $f0, %lo(D_800D8528)($at)
    /* 4F024 8007EB74 3C018009 */  lui        $at, %hi(D_8009494C)
    /* 4F028 8007EB78 A020494C */  sb         $zero, %lo(D_8009494C)($at)
    /* 4F02C 8007EB7C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 4F030 8007EB80 3C018009 */  lui        $at, %hi(D_80094950)
    /* 4F034 8007EB84 E4204950 */  swc1       $f0, %lo(D_80094950)($at)
    /* 4F038 8007EB88 3C018009 */  lui        $at, %hi(D_80094904)
    /* 4F03C 8007EB8C A0204904 */  sb         $zero, %lo(D_80094904)($at)
    /* 4F040 8007EB90 03E00008 */  jr         $ra
    /* 4F044 8007EB94 27BD0020 */   addiu     $sp, $sp, 0x20
endlabel func_8007EA0C_4EEBC
