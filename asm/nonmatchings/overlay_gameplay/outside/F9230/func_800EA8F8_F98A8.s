nonmatching func_800EA8F8_F98A8, 0x2E8

glabel func_800EA8F8_F98A8
    /* F98A8 800EA8F8 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* F98AC 800EA8FC 3C078015 */  lui        $a3, %hi(D_8015757C)
    /* F98B0 800EA900 24E7757C */  addiu      $a3, $a3, %lo(D_8015757C)
    /* F98B4 800EA904 AFA50024 */  sw         $a1, 0x24($sp)
    /* F98B8 800EA908 AFBF001C */  sw         $ra, 0x1C($sp)
    /* F98BC 800EA90C AFB00018 */  sw         $s0, 0x18($sp)
    /* F98C0 800EA910 AFA60028 */  sw         $a2, 0x28($sp)
    /* F98C4 800EA914 ACE00000 */  sw         $zero, 0x0($a3)
    /* F98C8 800EA918 8486000E */  lh         $a2, 0xE($a0)
    /* F98CC 800EA91C 87AE0026 */  lh         $t6, 0x26($sp)
    /* F98D0 800EA920 00808025 */  or         $s0, $a0, $zero
    /* F98D4 800EA924 3401A001 */  ori        $at, $zero, 0xA001
    /* F98D8 800EA928 00CE1823 */  subu       $v1, $a2, $t6
    /* F98DC 800EA92C 00037C00 */  sll        $t7, $v1, 16
    /* F98E0 800EA930 000FC403 */  sra        $t8, $t7, 16
    /* F98E4 800EA934 07000003 */  bltz       $t8, .L800EA944_F98F4
    /* F98E8 800EA938 03001825 */   or        $v1, $t8, $zero
    /* F98EC 800EA93C 10000002 */  b          .L800EA948_F98F8
    /* F98F0 800EA940 03001025 */   or        $v0, $t8, $zero
  .L800EA944_F98F4:
    /* F98F4 800EA944 00031023 */  negu       $v0, $v1
  .L800EA948_F98F8:
    /* F98F8 800EA948 0041082A */  slt        $at, $v0, $at
    /* F98FC 800EA94C 14200007 */  bnez       $at, .L800EA96C_F991C
    /* F9900 800EA950 24190001 */   addiu     $t9, $zero, 0x1
    /* F9904 800EA954 ACF90000 */  sw         $t9, 0x0($a3)
    /* F9908 800EA958 8606000E */  lh         $a2, 0xE($s0)
    /* F990C 800EA95C 87A80026 */  lh         $t0, 0x26($sp)
    /* F9910 800EA960 00C81823 */  subu       $v1, $a2, $t0
    /* F9914 800EA964 00034C00 */  sll        $t1, $v1, 16
    /* F9918 800EA968 00091C03 */  sra        $v1, $t1, 16
  .L800EA96C_F991C:
    /* F991C 800EA96C 2861C000 */  slti       $at, $v1, -0x4000
    /* F9920 800EA970 10200039 */  beqz       $at, .L800EAA58_F9A08
    /* F9924 800EA974 3C048015 */   lui       $a0, %hi(D_80157A0C)
    /* F9928 800EA978 8C847A0C */  lw         $a0, %lo(D_80157A0C)($a0)
    /* F992C 800EA97C 2401000E */  addiu      $at, $zero, 0xE
    /* F9930 800EA980 3C0B8015 */  lui        $t3, %hi(D_80157A28)
    /* F9934 800EA984 10810034 */  beq        $a0, $at, .L800EAA58_F9A08
    /* F9938 800EA988 00000000 */   nop
    /* F993C 800EA98C 8D6B7A28 */  lw         $t3, %lo(D_80157A28)($t3)
    /* F9940 800EA990 3C028014 */  lui        $v0, %hi(D_8013E5AC)
    /* F9944 800EA994 2442E5AC */  addiu      $v0, $v0, %lo(D_8013E5AC)
    /* F9948 800EA998 316C0004 */  andi       $t4, $t3, 0x4
    /* F994C 800EA99C 1580002E */  bnez       $t4, .L800EAA58_F9A08
    /* F9950 800EA9A0 00046880 */   sll       $t5, $a0, 2
    /* F9954 800EA9A4 01A46823 */  subu       $t5, $t5, $a0
    /* F9958 800EA9A8 000D6880 */  sll        $t5, $t5, 2
    /* F995C 800EA9AC 01A46821 */  addu       $t5, $t5, $a0
    /* F9960 800EA9B0 000D6880 */  sll        $t5, $t5, 2
    /* F9964 800EA9B4 004D1821 */  addu       $v1, $v0, $t5
    /* F9968 800EA9B8 8C6E0004 */  lw         $t6, 0x4($v1)
    /* F996C 800EA9BC 2405000E */  addiu      $a1, $zero, 0xE
    /* F9970 800EA9C0 00003025 */  or         $a2, $zero, $zero
    /* F9974 800EA9C4 31CF0020 */  andi       $t7, $t6, 0x20
    /* F9978 800EA9C8 11E00005 */  beqz       $t7, .L800EA9E0_F9990
    /* F997C 800EA9CC 24070000 */   addiu     $a3, $zero, 0x0
    /* F9980 800EA9D0 8C5802DC */  lw         $t8, 0x2DC($v0)
    /* F9984 800EA9D4 37190020 */  ori        $t9, $t8, 0x20
    /* F9988 800EA9D8 10000005 */  b          .L800EA9F0_F99A0
    /* F998C 800EA9DC AC5902DC */   sw        $t9, 0x2DC($v0)
  .L800EA9E0_F9990:
    /* F9990 800EA9E0 8C4802DC */  lw         $t0, 0x2DC($v0)
    /* F9994 800EA9E4 2401FFDF */  addiu      $at, $zero, -0x21
    /* F9998 800EA9E8 01014824 */  and        $t1, $t0, $at
    /* F999C 800EA9EC AC4902DC */  sw         $t1, 0x2DC($v0)
  .L800EA9F0_F99A0:
    /* F99A0 800EA9F0 8C6A0004 */  lw         $t2, 0x4($v1)
    /* F99A4 800EA9F4 314B0100 */  andi       $t3, $t2, 0x100
    /* F99A8 800EA9F8 55600004 */  bnel       $t3, $zero, .L800EAA0C_F99BC
    /* F99AC 800EA9FC 8C6C0008 */   lw        $t4, 0x8($v1)
    /* F99B0 800EAA00 10000003 */  b          .L800EAA10_F99C0
    /* F99B4 800EAA04 AC4402E0 */   sw        $a0, 0x2E0($v0)
    /* F99B8 800EAA08 8C6C0008 */  lw         $t4, 0x8($v1)
  .L800EAA0C_F99BC:
    /* F99BC 800EAA0C AC4C02E0 */  sw         $t4, 0x2E0($v0)
  .L800EAA10_F99C0:
    /* F99C0 800EAA10 3C048015 */  lui        $a0, %hi(D_80157600)
    /* F99C4 800EAA14 0C03AD4D */  jal        func_800EB534_FA4E4
    /* F99C8 800EAA18 24847600 */   addiu     $a0, $a0, %lo(D_80157600)
    /* F99CC 800EAA1C 87A20026 */  lh         $v0, 0x26($sp)
    /* F99D0 800EAA20 860D000E */  lh         $t5, 0xE($s0)
    /* F99D4 800EAA24 24010007 */  addiu      $at, $zero, 0x7
    /* F99D8 800EAA28 004D7023 */  subu       $t6, $v0, $t5
    /* F99DC 800EAA2C 000E7C00 */  sll        $t7, $t6, 16
    /* F99E0 800EAA30 000FC403 */  sra        $t8, $t7, 16
    /* F99E4 800EAA34 0301001A */  div        $zero, $t8, $at
    /* F99E8 800EAA38 0000C812 */  mflo       $t9
    /* F99EC 800EAA3C 3C018015 */  lui        $at, %hi(D_801575D4)
    /* F99F0 800EAA40 AC3975D4 */  sw         $t9, %lo(D_801575D4)($at)
    /* F99F4 800EAA44 8606000E */  lh         $a2, 0xE($s0)
    /* F99F8 800EAA48 00C21823 */  subu       $v1, $a2, $v0
    /* F99FC 800EAA4C 00034400 */  sll        $t0, $v1, 16
    /* F9A00 800EAA50 1000004F */  b          .L800EAB90_F9B40
    /* F9A04 800EAA54 00081C03 */   sra       $v1, $t0, 16
  .L800EAA58_F9A08:
    /* F9A08 800EAA58 3C048015 */  lui        $a0, %hi(D_80157A0C)
    /* F9A0C 800EAA5C 28614001 */  slti       $at, $v1, 0x4001
    /* F9A10 800EAA60 14200037 */  bnez       $at, .L800EAB40_F9AF0
    /* F9A14 800EAA64 8C847A0C */   lw        $a0, %lo(D_80157A0C)($a0)
    /* F9A18 800EAA68 2401000F */  addiu      $at, $zero, 0xF
    /* F9A1C 800EAA6C 10810034 */  beq        $a0, $at, .L800EAB40_F9AF0
    /* F9A20 800EAA70 3C0A8015 */   lui       $t2, %hi(D_80157A28)
    /* F9A24 800EAA74 8D4A7A28 */  lw         $t2, %lo(D_80157A28)($t2)
    /* F9A28 800EAA78 3C028014 */  lui        $v0, %hi(D_8013E5AC)
    /* F9A2C 800EAA7C 2442E5AC */  addiu      $v0, $v0, %lo(D_8013E5AC)
    /* F9A30 800EAA80 314B0004 */  andi       $t3, $t2, 0x4
    /* F9A34 800EAA84 1560002E */  bnez       $t3, .L800EAB40_F9AF0
    /* F9A38 800EAA88 00046080 */   sll       $t4, $a0, 2
    /* F9A3C 800EAA8C 01846023 */  subu       $t4, $t4, $a0
    /* F9A40 800EAA90 000C6080 */  sll        $t4, $t4, 2
    /* F9A44 800EAA94 01846021 */  addu       $t4, $t4, $a0
    /* F9A48 800EAA98 000C6080 */  sll        $t4, $t4, 2
    /* F9A4C 800EAA9C 004C1821 */  addu       $v1, $v0, $t4
    /* F9A50 800EAAA0 8C6D0004 */  lw         $t5, 0x4($v1)
    /* F9A54 800EAAA4 2405000F */  addiu      $a1, $zero, 0xF
    /* F9A58 800EAAA8 00003025 */  or         $a2, $zero, $zero
    /* F9A5C 800EAAAC 31AE0020 */  andi       $t6, $t5, 0x20
    /* F9A60 800EAAB0 11C00005 */  beqz       $t6, .L800EAAC8_F9A78
    /* F9A64 800EAAB4 24070000 */   addiu     $a3, $zero, 0x0
    /* F9A68 800EAAB8 8C4F0310 */  lw         $t7, 0x310($v0)
    /* F9A6C 800EAABC 35F80020 */  ori        $t8, $t7, 0x20
    /* F9A70 800EAAC0 10000005 */  b          .L800EAAD8_F9A88
    /* F9A74 800EAAC4 AC580310 */   sw        $t8, 0x310($v0)
  .L800EAAC8_F9A78:
    /* F9A78 800EAAC8 8C590310 */  lw         $t9, 0x310($v0)
    /* F9A7C 800EAACC 2401FFDF */  addiu      $at, $zero, -0x21
    /* F9A80 800EAAD0 03214024 */  and        $t0, $t9, $at
    /* F9A84 800EAAD4 AC480310 */  sw         $t0, 0x310($v0)
  .L800EAAD8_F9A88:
    /* F9A88 800EAAD8 8C690004 */  lw         $t1, 0x4($v1)
    /* F9A8C 800EAADC 312A0100 */  andi       $t2, $t1, 0x100
    /* F9A90 800EAAE0 55400004 */  bnel       $t2, $zero, .L800EAAF4_F9AA4
    /* F9A94 800EAAE4 8C6B0008 */   lw        $t3, 0x8($v1)
    /* F9A98 800EAAE8 10000003 */  b          .L800EAAF8_F9AA8
    /* F9A9C 800EAAEC AC440314 */   sw        $a0, 0x314($v0)
    /* F9AA0 800EAAF0 8C6B0008 */  lw         $t3, 0x8($v1)
  .L800EAAF4_F9AA4:
    /* F9AA4 800EAAF4 AC4B0314 */  sw         $t3, 0x314($v0)
  .L800EAAF8_F9AA8:
    /* F9AA8 800EAAF8 3C048015 */  lui        $a0, %hi(D_80157600)
    /* F9AAC 800EAAFC 0C03AD4D */  jal        func_800EB534_FA4E4
    /* F9AB0 800EAB00 24847600 */   addiu     $a0, $a0, %lo(D_80157600)
    /* F9AB4 800EAB04 87A20026 */  lh         $v0, 0x26($sp)
    /* F9AB8 800EAB08 860C000E */  lh         $t4, 0xE($s0)
    /* F9ABC 800EAB0C 24010007 */  addiu      $at, $zero, 0x7
    /* F9AC0 800EAB10 01826823 */  subu       $t5, $t4, $v0
    /* F9AC4 800EAB14 000D7400 */  sll        $t6, $t5, 16
    /* F9AC8 800EAB18 000E7C03 */  sra        $t7, $t6, 16
    /* F9ACC 800EAB1C 01E1001A */  div        $zero, $t7, $at
    /* F9AD0 800EAB20 0000C012 */  mflo       $t8
    /* F9AD4 800EAB24 3C018015 */  lui        $at, %hi(D_801575D4)
    /* F9AD8 800EAB28 AC3875D4 */  sw         $t8, %lo(D_801575D4)($at)
    /* F9ADC 800EAB2C 8606000E */  lh         $a2, 0xE($s0)
    /* F9AE0 800EAB30 00C21823 */  subu       $v1, $a2, $v0
    /* F9AE4 800EAB34 0003CC00 */  sll        $t9, $v1, 16
    /* F9AE8 800EAB38 10000015 */  b          .L800EAB90_F9B40
    /* F9AEC 800EAB3C 00191C03 */   sra       $v1, $t9, 16
  .L800EAB40_F9AF0:
    /* F9AF0 800EAB40 00044880 */  sll        $t1, $a0, 2
    /* F9AF4 800EAB44 01244823 */  subu       $t1, $t1, $a0
    /* F9AF8 800EAB48 00094880 */  sll        $t1, $t1, 2
    /* F9AFC 800EAB4C 3C028014 */  lui        $v0, %hi(D_8013E5AC)
    /* F9B00 800EAB50 01244821 */  addu       $t1, $t1, $a0
    /* F9B04 800EAB54 2442E5AC */  addiu      $v0, $v0, %lo(D_8013E5AC)
    /* F9B08 800EAB58 00094880 */  sll        $t1, $t1, 2
    /* F9B0C 800EAB5C 00495021 */  addu       $t2, $v0, $t1
    /* F9B10 800EAB60 8D4B0004 */  lw         $t3, 0x4($t2)
    /* F9B14 800EAB64 240D05DC */  addiu      $t5, $zero, 0x5DC
    /* F9B18 800EAB68 3C018015 */  lui        $at, %hi(D_801575D4)
    /* F9B1C 800EAB6C 316C0100 */  andi       $t4, $t3, 0x100
    /* F9B20 800EAB70 15800007 */  bnez       $t4, .L800EAB90_F9B40
    /* F9B24 800EAB74 00000000 */   nop
    /* F9B28 800EAB78 AC2D75D4 */  sw         $t5, %lo(D_801575D4)($at)
    /* F9B2C 800EAB7C 8606000E */  lh         $a2, 0xE($s0)
    /* F9B30 800EAB80 87AE0026 */  lh         $t6, 0x26($sp)
    /* F9B34 800EAB84 00CE1823 */  subu       $v1, $a2, $t6
    /* F9B38 800EAB88 00037C00 */  sll        $t7, $v1, 16
    /* F9B3C 800EAB8C 000F1C03 */  sra        $v1, $t7, 16
  .L800EAB90_F9B40:
    /* F9B40 800EAB90 3C028015 */  lui        $v0, %hi(D_801575D4)
    /* F9B44 800EAB94 8C4275D4 */  lw         $v0, %lo(D_801575D4)($v0)
    /* F9B48 800EAB98 0002C823 */  negu       $t9, $v0
    /* F9B4C 800EAB9C 0079082A */  slt        $at, $v1, $t9
    /* F9B50 800EABA0 10200003 */  beqz       $at, .L800EABB0_F9B60
    /* F9B54 800EABA4 00C24021 */   addu      $t0, $a2, $v0
    /* F9B58 800EABA8 10000008 */  b          .L800EABCC_F9B7C
    /* F9B5C 800EABAC A608000E */   sh        $t0, 0xE($s0)
  .L800EABB0_F9B60:
    /* F9B60 800EABB0 0043082A */  slt        $at, $v0, $v1
    /* F9B64 800EABB4 10200004 */  beqz       $at, .L800EABC8_F9B78
    /* F9B68 800EABB8 87AA0026 */   lh        $t2, 0x26($sp)
    /* F9B6C 800EABBC 00C24823 */  subu       $t1, $a2, $v0
    /* F9B70 800EABC0 10000002 */  b          .L800EABCC_F9B7C
    /* F9B74 800EABC4 A609000E */   sh        $t1, 0xE($s0)
  .L800EABC8_F9B78:
    /* F9B78 800EABC8 A60A000E */  sh         $t2, 0xE($s0)
  .L800EABCC_F9B7C:
    /* F9B7C 800EABCC 8FBF001C */  lw         $ra, 0x1C($sp)
    /* F9B80 800EABD0 8FB00018 */  lw         $s0, 0x18($sp)
    /* F9B84 800EABD4 27BD0020 */  addiu      $sp, $sp, 0x20
    /* F9B88 800EABD8 03E00008 */  jr         $ra
    /* F9B8C 800EABDC 00000000 */   nop
endlabel func_800EA8F8_F98A8
