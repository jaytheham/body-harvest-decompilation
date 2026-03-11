nonmatching func_800A68CC_B587C, 0x708

glabel func_800A68CC_B587C
    /* B587C 800A68CC 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* B5880 800A68D0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* B5884 800A68D4 24040000 */  addiu      $a0, $zero, 0x0
    /* B5888 800A68D8 0C001C9B */  jal        func_8000726C_7E6C
    /* B588C 800A68DC 24050027 */   addiu     $a1, $zero, 0x27
    /* B5890 800A68E0 10400006 */  beqz       $v0, .L800A68FC_B58AC
    /* B5894 800A68E4 00000000 */   nop
    /* B5898 800A68E8 0C0297C9 */  jal        func_800A5F24_B4ED4
    /* B589C 800A68EC 2404FFFF */   addiu     $a0, $zero, -0x1
    /* B58A0 800A68F0 24040000 */  addiu      $a0, $zero, 0x0
    /* B58A4 800A68F4 0C001CEE */  jal        func_800073B8_7FB8
    /* B58A8 800A68F8 24050027 */   addiu     $a1, $zero, 0x27
  .L800A68FC_B58AC:
    /* B58AC 800A68FC 3C028004 */  lui        $v0, %hi(D_8004794C)
    /* B58B0 800A6900 2442794C */  addiu      $v0, $v0, %lo(D_8004794C)
    /* B58B4 800A6904 240E0002 */  addiu      $t6, $zero, 0x2
    /* B58B8 800A6908 A04E0000 */  sb         $t6, 0x0($v0)
    /* B58BC 800A690C 3C0F8014 */  lui        $t7, %hi(D_8013D890)
    /* B58C0 800A6910 91EFD890 */  lbu        $t7, %lo(D_8013D890)($t7)
    /* B58C4 800A6914 2DE10007 */  sltiu      $at, $t7, 0x7
    /* B58C8 800A6918 102001AA */  beqz       $at, .L800A6FC4_B5F74
    /* B58CC 800A691C 000F7880 */   sll       $t7, $t7, 2
    /* B58D0 800A6920 3C018014 */  lui        $at, %hi(jtbl_8014283C_overlay_gameplay_outside)
    /* B58D4 800A6924 002F0821 */  addu       $at, $at, $t7
    /* B58D8 800A6928 8C2F283C */  lw         $t7, %lo(jtbl_8014283C_overlay_gameplay_outside)($at)
    /* B58DC 800A692C 01E00008 */  jr         $t7
    /* B58E0 800A6930 00000000 */   nop
    /* B58E4 800A6934 100001A3 */  b          .L800A6FC4_B5F74
    /* B58E8 800A6938 A0400000 */   sb        $zero, 0x0($v0)
    /* B58EC 800A693C 0C03B114 */  jal        func_800EC450_FB400
    /* B58F0 800A6940 00000000 */   nop
    /* B58F4 800A6944 0C0054F6 */  jal        func_800153D8_15FD8
    /* B58F8 800A6948 240400D7 */   addiu     $a0, $zero, 0xD7
    /* B58FC 800A694C 24180002 */  addiu      $t8, $zero, 0x2
    /* B5900 800A6950 3C018014 */  lui        $at, %hi(D_8013D890)
    /* B5904 800A6954 1000019B */  b          .L800A6FC4_B5F74
    /* B5908 800A6958 A038D890 */   sb        $t8, %lo(D_8013D890)($at)
    /* B590C 800A695C 3C088015 */  lui        $t0, %hi(D_80157A3C)
    /* B5910 800A6960 25087A3C */  addiu      $t0, $t0, %lo(D_80157A3C)
    /* B5914 800A6964 85190000 */  lh         $t9, 0x0($t0)
    /* B5918 800A6968 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* B591C 800A696C 24010008 */  addiu      $at, $zero, 0x8
    /* B5920 800A6970 2729FFFC */  addiu      $t1, $t9, -0x4
    /* B5924 800A6974 A5090000 */  sh         $t1, 0x0($t0)
    /* B5928 800A6978 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* B592C 800A697C 850B0000 */  lh         $t3, 0x0($t0)
    /* B5930 800A6980 844A0002 */  lh         $t2, 0x2($v0)
    /* B5934 800A6984 000B6040 */  sll        $t4, $t3, 1
    /* B5938 800A6988 014C6823 */  subu       $t5, $t2, $t4
    /* B593C 800A698C 25AE0080 */  addiu      $t6, $t5, 0x80
    /* B5940 800A6990 A44E0002 */  sh         $t6, 0x2($v0)
    /* B5944 800A6994 85030000 */  lh         $v1, 0x0($t0)
    /* B5948 800A6998 54610007 */  bnel       $v1, $at, .L800A69B8_B5968
    /* B594C 800A699C 24010004 */   addiu     $at, $zero, 0x4
    /* B5950 800A69A0 0C038D78 */  jal        func_800E35E0_F2590
    /* B5954 800A69A4 24040050 */   addiu     $a0, $zero, 0x50
    /* B5958 800A69A8 3C088015 */  lui        $t0, %hi(D_80157A3C)
    /* B595C 800A69AC 25087A3C */  addiu      $t0, $t0, %lo(D_80157A3C)
    /* B5960 800A69B0 85030000 */  lh         $v1, 0x0($t0)
    /* B5964 800A69B4 24010004 */  addiu      $at, $zero, 0x4
  .L800A69B8_B5968:
    /* B5968 800A69B8 14610006 */  bne        $v1, $at, .L800A69D4_B5984
    /* B596C 800A69BC 00000000 */   nop
    /* B5970 800A69C0 0C038D78 */  jal        func_800E35E0_F2590
    /* B5974 800A69C4 240400A0 */   addiu     $a0, $zero, 0xA0
    /* B5978 800A69C8 3C088015 */  lui        $t0, %hi(D_80157A3C)
    /* B597C 800A69CC 25087A3C */  addiu      $t0, $t0, %lo(D_80157A3C)
    /* B5980 800A69D0 85030000 */  lh         $v1, 0x0($t0)
  .L800A69D4_B5984:
    /* B5984 800A69D4 1C600012 */  bgtz       $v1, .L800A6A20_B59D0
    /* B5988 800A69D8 00000000 */   nop
    /* B598C 800A69DC 0C038D78 */  jal        func_800E35E0_F2590
    /* B5990 800A69E0 240400FF */   addiu     $a0, $zero, 0xFF
    /* B5994 800A69E4 3C088015 */  lui        $t0, %hi(D_80157A3C)
    /* B5998 800A69E8 25087A3C */  addiu      $t0, $t0, %lo(D_80157A3C)
    /* B599C 800A69EC A5000000 */  sh         $zero, 0x0($t0)
    /* B59A0 800A69F0 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* B59A4 800A69F4 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* B59A8 800A69F8 240F0003 */  addiu      $t7, $zero, 0x3
    /* B59AC 800A69FC 3C018014 */  lui        $at, %hi(D_8013D890)
    /* B59B0 800A6A00 A02FD890 */  sb         $t7, %lo(D_8013D890)($at)
    /* B59B4 800A6A04 3C074000 */  lui        $a3, (0x40000000 >> 16)
    /* B59B8 800A6A08 84460004 */  lh         $a2, 0x4($v0)
    /* B59BC 800A6A0C 84450002 */  lh         $a1, 0x2($v0)
    /* B59C0 800A6A10 0C04D751 */  jal        func_80135D44_144CF4
    /* B59C4 800A6A14 84440000 */   lh        $a0, 0x0($v0)
    /* B59C8 800A6A18 3C038015 */  lui        $v1, %hi(D_80157A3C)
    /* B59CC 800A6A1C 84637A3C */  lh         $v1, %lo(D_80157A3C)($v1)
  .L800A6A20_B59D0:
    /* B59D0 800A6A20 04610003 */  bgez       $v1, .L800A6A30_B59E0
    /* B59D4 800A6A24 00032083 */   sra       $a0, $v1, 2
    /* B59D8 800A6A28 24610003 */  addiu      $at, $v1, 0x3
    /* B59DC 800A6A2C 00012083 */  sra        $a0, $at, 2
  .L800A6A30_B59E0:
    /* B59E0 800A6A30 0004C400 */  sll        $t8, $a0, 16
    /* B59E4 800A6A34 0C029808 */  jal        func_800A6020_B4FD0
    /* B59E8 800A6A38 00182403 */   sra       $a0, $t8, 16
    /* B59EC 800A6A3C 3C018015 */  lui        $at, %hi(D_8014F808)
    /* B59F0 800A6A40 10000160 */  b          .L800A6FC4_B5F74
    /* B59F4 800A6A44 A020F808 */   sb        $zero, %lo(D_8014F808)($at)
    /* B59F8 800A6A48 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* B59FC 800A6A4C 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* B5A00 800A6A50 3C088015 */  lui        $t0, %hi(D_80157A3C)
    /* B5A04 800A6A54 25087A3C */  addiu      $t0, $t0, %lo(D_80157A3C)
    /* B5A08 800A6A58 850B0000 */  lh         $t3, 0x0($t0)
    /* B5A0C 800A6A5C 84490002 */  lh         $t1, 0x2($v0)
    /* B5A10 800A6A60 3C058015 */  lui        $a1, %hi(D_8014F808)
    /* B5A14 800A6A64 90A5F808 */  lbu        $a1, %lo(D_8014F808)($a1)
    /* B5A18 800A6A68 000B5040 */  sll        $t2, $t3, 1
    /* B5A1C 800A6A6C 012A6023 */  subu       $t4, $t1, $t2
    /* B5A20 800A6A70 258D0080 */  addiu      $t5, $t4, 0x80
    /* B5A24 800A6A74 24A50001 */  addiu      $a1, $a1, 0x1
    /* B5A28 800A6A78 30A300FF */  andi       $v1, $a1, 0xFF
    /* B5A2C 800A6A7C 3C018015 */  lui        $at, %hi(D_8014F808)
    /* B5A30 800A6A80 A44D0002 */  sh         $t5, 0x2($v0)
    /* B5A34 800A6A84 A023F808 */  sb         $v1, %lo(D_8014F808)($at)
    /* B5A38 800A6A88 2861000B */  slti       $at, $v1, 0xB
    /* B5A3C 800A6A8C 5020000D */  beql       $at, $zero, .L800A6AC4_B5A74
    /* B5A40 800A6A90 85090000 */   lh        $t1, 0x0($t0)
    /* B5A44 800A6A94 850F0000 */  lh         $t7, 0x0($t0)
    /* B5A48 800A6A98 05E10003 */  bgez       $t7, .L800A6AA8_B5A58
    /* B5A4C 800A6A9C 000FC083 */   sra       $t8, $t7, 2
    /* B5A50 800A6AA0 25E10003 */  addiu      $at, $t7, 0x3
    /* B5A54 800A6AA4 0001C083 */  sra        $t8, $at, 2
  .L800A6AA8_B5A58:
    /* B5A58 800A6AA8 03032023 */  subu       $a0, $t8, $v1
    /* B5A5C 800A6AAC 0004CC00 */  sll        $t9, $a0, 16
    /* B5A60 800A6AB0 0C029808 */  jal        func_800A6020_B4FD0
    /* B5A64 800A6AB4 00192403 */   sra       $a0, $t9, 16
    /* B5A68 800A6AB8 1000000B */  b          .L800A6AE8_B5A98
    /* B5A6C 800A6ABC 00000000 */   nop
    /* B5A70 800A6AC0 85090000 */  lh         $t1, 0x0($t0)
  .L800A6AC4_B5A74:
    /* B5A74 800A6AC4 05210003 */  bgez       $t1, .L800A6AD4_B5A84
    /* B5A78 800A6AC8 00095083 */   sra       $t2, $t1, 2
    /* B5A7C 800A6ACC 25210003 */  addiu      $at, $t1, 0x3
    /* B5A80 800A6AD0 00015083 */  sra        $t2, $at, 2
  .L800A6AD4_B5A84:
    /* B5A84 800A6AD4 01432021 */  addu       $a0, $t2, $v1
    /* B5A88 800A6AD8 2484FFEC */  addiu      $a0, $a0, -0x14
    /* B5A8C 800A6ADC 00046400 */  sll        $t4, $a0, 16
    /* B5A90 800A6AE0 0C029808 */  jal        func_800A6020_B4FD0
    /* B5A94 800A6AE4 000C2403 */   sra       $a0, $t4, 16
  .L800A6AE8_B5A98:
    /* B5A98 800A6AE8 3C058015 */  lui        $a1, %hi(D_8014F808)
    /* B5A9C 800A6AEC 90A3F808 */  lbu        $v1, %lo(D_8014F808)($a1)
    /* B5AA0 800A6AF0 2401000A */  addiu      $at, $zero, 0xA
    /* B5AA4 800A6AF4 3C0E8004 */  lui        $t6, %hi(currentLevel)
    /* B5AA8 800A6AF8 146100D8 */  bne        $v1, $at, .L800A6E5C_B5E0C
    /* B5AAC 800A6AFC 3C0B8004 */   lui       $t3, %hi(D_8003E000)
    /* B5AB0 800A6B00 8DCE7F90 */  lw         $t6, %lo(currentLevel)($t6)
    /* B5AB4 800A6B04 3C038014 */  lui        $v1, %hi(D_8013D894)
    /* B5AB8 800A6B08 9064D894 */  lbu        $a0, %lo(D_8013D894)($v1)
    /* B5ABC 800A6B0C 000E7880 */  sll        $t7, $t6, 2
    /* B5AC0 800A6B10 01EE7823 */  subu       $t7, $t7, $t6
    /* B5AC4 800A6B14 000F7900 */  sll        $t7, $t7, 4
    /* B5AC8 800A6B18 0004C0C0 */  sll        $t8, $a0, 3
    /* B5ACC 800A6B1C 01F8C821 */  addu       $t9, $t7, $t8
    /* B5AD0 800A6B20 256BE000 */  addiu      $t3, $t3, %lo(D_8003E000)
    /* B5AD4 800A6B24 032B1021 */  addu       $v0, $t9, $t3
    /* B5AD8 800A6B28 844CFFD2 */  lh         $t4, -0x2E($v0)
    /* B5ADC 800A6B2C 8449FFD0 */  lh         $t1, -0x30($v0)
    /* B5AE0 800A6B30 844FFFD6 */  lh         $t7, -0x2A($v0)
    /* B5AE4 800A6B34 258D0001 */  addiu      $t5, $t4, 0x1
    /* B5AE8 800A6B38 000D7200 */  sll        $t6, $t5, 8
    /* B5AEC 800A6B3C 00095200 */  sll        $t2, $t1, 8
    /* B5AF0 800A6B40 A7AA002E */  sh         $t2, 0x2E($sp)
    /* B5AF4 800A6B44 A7AE002C */  sh         $t6, 0x2C($sp)
    /* B5AF8 800A6B48 14800004 */  bnez       $a0, .L800A6B5C_B5B0C
    /* B5AFC 800A6B4C A7AF0028 */   sh        $t7, 0x28($sp)
    /* B5B00 800A6B50 3C018004 */  lui        $at, %hi(D_80047F94)
    /* B5B04 800A6B54 10000004 */  b          .L800A6B68_B5B18
    /* B5B08 800A6B58 AC207F94 */   sw        $zero, %lo(D_80047F94)($at)
  .L800A6B5C_B5B0C:
    /* B5B0C 800A6B5C 2498FFFF */  addiu      $t8, $a0, -0x1
    /* B5B10 800A6B60 3C018004 */  lui        $at, %hi(D_80047F94)
    /* B5B14 800A6B64 AC387F94 */  sw         $t8, %lo(D_80047F94)($at)
  .L800A6B68_B5B18:
    /* B5B18 800A6B68 0C02C320 */  jal        func_800B0C80_BFC30
    /* B5B1C 800A6B6C 00000000 */   nop
    /* B5B20 800A6B70 87B9002E */  lh         $t9, 0x2E($sp)
    /* B5B24 800A6B74 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* B5B28 800A6B78 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* B5B2C 800A6B7C 44992000 */  mtc1       $t9, $f4
    /* B5B30 800A6B80 00000000 */  nop
    /* B5B34 800A6B84 46802020 */  cvt.s.w    $f0, $f4
    /* B5B38 800A6B88 44050000 */  mfc1       $a1, $f0
    /* B5B3C 800A6B8C 0C03ED13 */  jal        func_800FB44C_10A3FC
    /* B5B40 800A6B90 E7A00020 */   swc1      $f0, 0x20($sp)
    /* B5B44 800A6B94 87AB002C */  lh         $t3, 0x2C($sp)
    /* B5B48 800A6B98 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* B5B4C 800A6B9C 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* B5B50 800A6BA0 448B3000 */  mtc1       $t3, $f6
    /* B5B54 800A6BA4 00000000 */  nop
    /* B5B58 800A6BA8 46803020 */  cvt.s.w    $f0, $f6
    /* B5B5C 800A6BAC 44050000 */  mfc1       $a1, $f0
    /* B5B60 800A6BB0 0C03ED21 */  jal        func_800FB484_10A434
    /* B5B64 800A6BB4 E7A0001C */   swc1      $f0, 0x1C($sp)
    /* B5B68 800A6BB8 87A4002E */  lh         $a0, 0x2E($sp)
    /* B5B6C 800A6BBC 0C02E134 */  jal        func_800B84D0_C7480
    /* B5B70 800A6BC0 87A5002C */   lh        $a1, 0x2C($sp)
    /* B5B74 800A6BC4 3C0C8004 */  lui        $t4, %hi(currentLevel)
    /* B5B78 800A6BC8 8D8C7F90 */  lw         $t4, %lo(currentLevel)($t4)
    /* B5B7C 800A6BCC 00021A03 */  sra        $v1, $v0, 8
    /* B5B80 800A6BD0 00034C00 */  sll        $t1, $v1, 16
    /* B5B84 800A6BD4 24010003 */  addiu      $at, $zero, 0x3
    /* B5B88 800A6BD8 15810007 */  bne        $t4, $at, .L800A6BF8_B5BA8
    /* B5B8C 800A6BDC 00091C03 */   sra       $v1, $t1, 16
    /* B5B90 800A6BE0 3C0D8014 */  lui        $t5, %hi(D_8013D894)
    /* B5B94 800A6BE4 91ADD894 */  lbu        $t5, %lo(D_8013D894)($t5)
    /* B5B98 800A6BE8 24010001 */  addiu      $at, $zero, 0x1
    /* B5B9C 800A6BEC 55A10003 */  bnel       $t5, $at, .L800A6BFC_B5BAC
    /* B5BA0 800A6BF0 44834000 */   mtc1      $v1, $f8
    /* B5BA4 800A6BF4 240307D0 */  addiu      $v1, $zero, 0x7D0
  .L800A6BF8_B5BA8:
    /* B5BA8 800A6BF8 44834000 */  mtc1       $v1, $f8
  .L800A6BFC_B5BAC:
    /* B5BAC 800A6BFC 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* B5BB0 800A6C00 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* B5BB4 800A6C04 46804220 */  cvt.s.w    $f8, $f8
    /* B5BB8 800A6C08 44054000 */  mfc1       $a1, $f8
    /* B5BBC 800A6C0C 0C03ED1A */  jal        func_800FB468_10A418
    /* B5BC0 800A6C10 00000000 */   nop
    /* B5BC4 800A6C14 3C0F8005 */  lui        $t7, %hi(D_80052B34)
    /* B5BC8 800A6C18 8DEF2B34 */  lw         $t7, %lo(D_80052B34)($t7)
    /* B5BCC 800A6C1C 87AE0028 */  lh         $t6, 0x28($sp)
    /* B5BD0 800A6C20 2402FF91 */  addiu      $v0, $zero, -0x6F
    /* B5BD4 800A6C24 3C018015 */  lui        $at, %hi(D_801493A0)
    /* B5BD8 800A6C28 A5EE000E */  sh         $t6, 0xE($t7)
    /* B5BDC 800A6C2C 87A5002C */  lh         $a1, 0x2C($sp)
    /* B5BE0 800A6C30 87A4002E */  lh         $a0, 0x2E($sp)
    /* B5BE4 800A6C34 AC2293A0 */  sw         $v0, %lo(D_801493A0)($at)
    /* B5BE8 800A6C38 2403006F */  addiu      $v1, $zero, 0x6F
    /* B5BEC 800A6C3C 3C018015 */  lui        $at, %hi(D_80149398)
    /* B5BF0 800A6C40 AC239398 */  sw         $v1, %lo(D_80149398)($at)
    /* B5BF4 800A6C44 3C018015 */  lui        $at, %hi(D_801493A4)
    /* B5BF8 800A6C48 00055A03 */  sra        $t3, $a1, 8
    /* B5BFC 800A6C4C 0004C203 */  sra        $t8, $a0, 8
    /* B5C00 800A6C50 AC2293A4 */  sw         $v0, %lo(D_801493A4)($at)
    /* B5C04 800A6C54 27040077 */  addiu      $a0, $t8, 0x77
    /* B5C08 800A6C58 25650077 */  addiu      $a1, $t3, 0x77
    /* B5C0C 800A6C5C 3C018015 */  lui        $at, %hi(D_8014939C)
    /* B5C10 800A6C60 30A900FF */  andi       $t1, $a1, 0xFF
    /* B5C14 800A6C64 309900FF */  andi       $t9, $a0, 0xFF
    /* B5C18 800A6C68 3C068020 */  lui        $a2, %hi(D_801FEA30)
    /* B5C1C 800A6C6C AC23939C */  sw         $v1, %lo(D_8014939C)($at)
    /* B5C20 800A6C70 24C6EA30 */  addiu      $a2, $a2, %lo(D_801FEA30)
    /* B5C24 800A6C74 03202025 */  or         $a0, $t9, $zero
    /* B5C28 800A6C78 01202825 */  or         $a1, $t1, $zero
    /* B5C2C 800A6C7C 0C02D014 */  jal        func_800B4050_C3000
    /* B5C30 800A6C80 00003825 */   or        $a3, $zero, $zero
    /* B5C34 800A6C84 3C028005 */  lui        $v0, %hi(D_80052AE8)
    /* B5C38 800A6C88 24422AE8 */  addiu      $v0, $v0, %lo(D_80052AE8)
    /* B5C3C 800A6C8C 3C01457A */  lui        $at, (0x457A0000 >> 16)
    /* B5C40 800A6C90 44815000 */  mtc1       $at, $f10
    /* B5C44 800A6C94 C7A00020 */  lwc1       $f0, 0x20($sp)
    /* B5C48 800A6C98 C7A2001C */  lwc1       $f2, 0x1C($sp)
    /* B5C4C 800A6C9C 3C01447A */  lui        $at, (0x447A0000 >> 16)
    /* B5C50 800A6CA0 44818000 */  mtc1       $at, $f16
    /* B5C54 800A6CA4 87AA002E */  lh         $t2, 0x2E($sp)
    /* B5C58 800A6CA8 87AC002C */  lh         $t4, 0x2C($sp)
    /* B5C5C 800A6CAC 87AD002E */  lh         $t5, 0x2E($sp)
    /* B5C60 800A6CB0 87AE002C */  lh         $t6, 0x2C($sp)
    /* B5C64 800A6CB4 3C188005 */  lui        $t8, %hi(D_80052B34)
    /* B5C68 800A6CB8 E4400000 */  swc1       $f0, 0x0($v0)
    /* B5C6C 800A6CBC E44A0004 */  swc1       $f10, 0x4($v0)
    /* B5C70 800A6CC0 E440000C */  swc1       $f0, 0xC($v0)
    /* B5C74 800A6CC4 E4420008 */  swc1       $f2, 0x8($v0)
    /* B5C78 800A6CC8 E4420014 */  swc1       $f2, 0x14($v0)
    /* B5C7C 800A6CCC E4500010 */  swc1       $f16, 0x10($v0)
    /* B5C80 800A6CD0 A44A0018 */  sh         $t2, 0x18($v0)
    /* B5C84 800A6CD4 A44C001A */  sh         $t4, 0x1A($v0)
    /* B5C88 800A6CD8 A44D003C */  sh         $t5, 0x3C($v0)
    /* B5C8C 800A6CDC A44E003E */  sh         $t6, 0x3E($v0)
    /* B5C90 800A6CE0 8F182B34 */  lw         $t8, %lo(D_80052B34)($t8)
    /* B5C94 800A6CE4 87AF0028 */  lh         $t7, 0x28($sp)
    /* B5C98 800A6CE8 3C198005 */  lui        $t9, %hi(D_80052B2C)
    /* B5C9C 800A6CEC A70F0006 */  sh         $t7, 0x6($t8)
    /* B5CA0 800A6CF0 8F392B2C */  lw         $t9, %lo(D_80052B2C)($t9)
    /* B5CA4 800A6CF4 0C007654 */  jal        coss
    /* B5CA8 800A6CF8 9724001E */   lhu       $a0, 0x1E($t9)
    /* B5CAC 800A6CFC A7A20026 */  sh         $v0, 0x26($sp)
    /* B5CB0 800A6D00 0C007654 */  jal        coss
    /* B5CB4 800A6D04 24040FA0 */   addiu     $a0, $zero, 0xFA0
    /* B5CB8 800A6D08 44829000 */  mtc1       $v0, $f18
    /* B5CBC 800A6D0C 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* B5CC0 800A6D10 44810800 */  mtc1       $at, $f1
    /* B5CC4 800A6D14 46809120 */  cvt.s.w    $f4, $f18
    /* B5CC8 800A6D18 44800000 */  mtc1       $zero, $f0
    /* B5CCC 800A6D1C 3C058005 */  lui        $a1, %hi(D_80052B2C)
    /* B5CD0 800A6D20 24A52B2C */  addiu      $a1, $a1, %lo(D_80052B2C)
    /* B5CD4 800A6D24 8CA30000 */  lw         $v1, 0x0($a1)
    /* B5CD8 800A6D28 87A90026 */  lh         $t1, 0x26($sp)
    /* B5CDC 800A6D2C 460021A1 */  cvt.d.s    $f6, $f4
    /* B5CE0 800A6D30 846B001C */  lh         $t3, 0x1C($v1)
    /* B5CE4 800A6D34 46203203 */  div.d      $f8, $f6, $f0
    /* B5CE8 800A6D38 44892000 */  mtc1       $t1, $f4
    /* B5CEC 800A6D3C 448B5000 */  mtc1       $t3, $f10
    /* B5CF0 800A6D40 468021A0 */  cvt.s.w    $f6, $f4
    /* B5CF4 800A6D44 C464000C */  lwc1       $f4, 0xC($v1)
    /* B5CF8 800A6D48 46805421 */  cvt.d.w    $f16, $f10
    /* B5CFC 800A6D4C 460032A1 */  cvt.d.s    $f10, $f6
    /* B5D00 800A6D50 460021A1 */  cvt.d.s    $f6, $f4
    /* B5D04 800A6D54 46304482 */  mul.d      $f18, $f8, $f16
    /* B5D08 800A6D58 46205203 */  div.d      $f8, $f10, $f0
    /* B5D0C 800A6D5C 46289402 */  mul.d      $f16, $f18, $f8
    /* B5D10 800A6D60 46268280 */  add.d      $f10, $f16, $f6
    /* B5D14 800A6D64 462054A0 */  cvt.s.d    $f18, $f10
    /* B5D18 800A6D68 E4720000 */  swc1       $f18, 0x0($v1)
    /* B5D1C 800A6D6C 8CAA0000 */  lw         $t2, 0x0($a1)
    /* B5D20 800A6D70 0C007660 */  jal        sins
    /* B5D24 800A6D74 9544001E */   lhu       $a0, 0x1E($t2)
    /* B5D28 800A6D78 44824000 */  mtc1       $v0, $f8
    /* B5D2C 800A6D7C 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* B5D30 800A6D80 44810800 */  mtc1       $at, $f1
    /* B5D34 800A6D84 46804120 */  cvt.s.w    $f4, $f8
    /* B5D38 800A6D88 44800000 */  mtc1       $zero, $f0
    /* B5D3C 800A6D8C 3C058005 */  lui        $a1, %hi(D_80052B2C)
    /* B5D40 800A6D90 24A52B2C */  addiu      $a1, $a1, %lo(D_80052B2C)
    /* B5D44 800A6D94 8CA30000 */  lw         $v1, 0x0($a1)
    /* B5D48 800A6D98 3C0D8005 */  lui        $t5, %hi(D_80052B34)
    /* B5D4C 800A6D9C 46002421 */  cvt.d.s    $f16, $f4
    /* B5D50 800A6DA0 846C001C */  lh         $t4, 0x1C($v1)
    /* B5D54 800A6DA4 46208183 */  div.d      $f6, $f16, $f0
    /* B5D58 800A6DA8 8DAD2B34 */  lw         $t5, %lo(D_80052B34)($t5)
    /* B5D5C 800A6DAC 448C5000 */  mtc1       $t4, $f10
    /* B5D60 800A6DB0 85AE0002 */  lh         $t6, 0x2($t5)
    /* B5D64 800A6DB4 468054A1 */  cvt.d.w    $f18, $f10
    /* B5D68 800A6DB8 448E2000 */  mtc1       $t6, $f4
    /* B5D6C 800A6DBC 00000000 */  nop
    /* B5D70 800A6DC0 46802421 */  cvt.d.w    $f16, $f4
    /* B5D74 800A6DC4 46323202 */  mul.d      $f8, $f6, $f18
    /* B5D78 800A6DC8 46304280 */  add.d      $f10, $f8, $f16
    /* B5D7C 800A6DCC 462051A0 */  cvt.s.d    $f6, $f10
    /* B5D80 800A6DD0 E4660004 */  swc1       $f6, 0x4($v1)
    /* B5D84 800A6DD4 8CAF0000 */  lw         $t7, 0x0($a1)
    /* B5D88 800A6DD8 0C007654 */  jal        coss
    /* B5D8C 800A6DDC 95E4001E */   lhu       $a0, 0x1E($t7)
    /* B5D90 800A6DE0 A7A20026 */  sh         $v0, 0x26($sp)
    /* B5D94 800A6DE4 0C007660 */  jal        sins
    /* B5D98 800A6DE8 24040FA0 */   addiu     $a0, $zero, 0xFA0
    /* B5D9C 800A6DEC 44829000 */  mtc1       $v0, $f18
    /* B5DA0 800A6DF0 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* B5DA4 800A6DF4 44810800 */  mtc1       $at, $f1
    /* B5DA8 800A6DF8 46809120 */  cvt.s.w    $f4, $f18
    /* B5DAC 800A6DFC 44800000 */  mtc1       $zero, $f0
    /* B5DB0 800A6E00 3C038005 */  lui        $v1, %hi(D_80052B2C)
    /* B5DB4 800A6E04 8C632B2C */  lw         $v1, %lo(D_80052B2C)($v1)
    /* B5DB8 800A6E08 87B90026 */  lh         $t9, 0x26($sp)
    /* B5DBC 800A6E0C 240400D7 */  addiu      $a0, $zero, 0xD7
    /* B5DC0 800A6E10 46002221 */  cvt.d.s    $f8, $f4
    /* B5DC4 800A6E14 8478001C */  lh         $t8, 0x1C($v1)
    /* B5DC8 800A6E18 46204403 */  div.d      $f16, $f8, $f0
    /* B5DCC 800A6E1C 44992000 */  mtc1       $t9, $f4
    /* B5DD0 800A6E20 44985000 */  mtc1       $t8, $f10
    /* B5DD4 800A6E24 46802220 */  cvt.s.w    $f8, $f4
    /* B5DD8 800A6E28 C4640014 */  lwc1       $f4, 0x14($v1)
    /* B5DDC 800A6E2C 468051A1 */  cvt.d.w    $f6, $f10
    /* B5DE0 800A6E30 460042A1 */  cvt.d.s    $f10, $f8
    /* B5DE4 800A6E34 46002221 */  cvt.d.s    $f8, $f4
    /* B5DE8 800A6E38 46268482 */  mul.d      $f18, $f16, $f6
    /* B5DEC 800A6E3C 46205403 */  div.d      $f16, $f10, $f0
    /* B5DF0 800A6E40 46309182 */  mul.d      $f6, $f18, $f16
    /* B5DF4 800A6E44 46283280 */  add.d      $f10, $f6, $f8
    /* B5DF8 800A6E48 462054A0 */  cvt.s.d    $f18, $f10
    /* B5DFC 800A6E4C 0C0054F6 */  jal        func_800153D8_15FD8
    /* B5E00 800A6E50 E4720008 */   swc1      $f18, 0x8($v1)
    /* B5E04 800A6E54 3C058015 */  lui        $a1, %hi(D_8014F808)
    /* B5E08 800A6E58 90A3F808 */  lbu        $v1, %lo(D_8014F808)($a1)
  .L800A6E5C_B5E0C:
    /* B5E0C 800A6E5C 24010012 */  addiu      $at, $zero, 0x12
    /* B5E10 800A6E60 54610006 */  bnel       $v1, $at, .L800A6E7C_B5E2C
    /* B5E14 800A6E64 24010013 */   addiu     $at, $zero, 0x13
    /* B5E18 800A6E68 0C038D78 */  jal        func_800E35E0_F2590
    /* B5E1C 800A6E6C 24040050 */   addiu     $a0, $zero, 0x50
    /* B5E20 800A6E70 3C058015 */  lui        $a1, %hi(D_8014F808)
    /* B5E24 800A6E74 90A3F808 */  lbu        $v1, %lo(D_8014F808)($a1)
    /* B5E28 800A6E78 24010013 */  addiu      $at, $zero, 0x13
  .L800A6E7C_B5E2C:
    /* B5E2C 800A6E7C 54610006 */  bnel       $v1, $at, .L800A6E98_B5E48
    /* B5E30 800A6E80 28610014 */   slti      $at, $v1, 0x14
    /* B5E34 800A6E84 0C038D78 */  jal        func_800E35E0_F2590
    /* B5E38 800A6E88 240400A0 */   addiu     $a0, $zero, 0xA0
    /* B5E3C 800A6E8C 3C058015 */  lui        $a1, %hi(D_8014F808)
    /* B5E40 800A6E90 90A3F808 */  lbu        $v1, %lo(D_8014F808)($a1)
    /* B5E44 800A6E94 28610014 */  slti       $at, $v1, 0x14
  .L800A6E98_B5E48:
    /* B5E48 800A6E98 5420004B */  bnel       $at, $zero, .L800A6FC8_B5F78
    /* B5E4C 800A6E9C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* B5E50 800A6EA0 0C038D78 */  jal        func_800E35E0_F2590
    /* B5E54 800A6EA4 240400FF */   addiu     $a0, $zero, 0xFF
    /* B5E58 800A6EA8 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* B5E5C 800A6EAC 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* B5E60 800A6EB0 240B0004 */  addiu      $t3, $zero, 0x4
    /* B5E64 800A6EB4 3C018014 */  lui        $at, %hi(D_8013D890)
    /* B5E68 800A6EB8 A02BD890 */  sb         $t3, %lo(D_8013D890)($at)
    /* B5E6C 800A6EBC 3C0740A0 */  lui        $a3, (0x40A00000 >> 16)
    /* B5E70 800A6EC0 84460004 */  lh         $a2, 0x4($v0)
    /* B5E74 800A6EC4 84450002 */  lh         $a1, 0x2($v0)
    /* B5E78 800A6EC8 0C04D751 */  jal        func_80135D44_144CF4
    /* B5E7C 800A6ECC 84440000 */   lh        $a0, 0x0($v0)
    /* B5E80 800A6ED0 1000003D */  b          .L800A6FC8_B5F78
    /* B5E84 800A6ED4 8FBF0014 */   lw        $ra, 0x14($sp)
    /* B5E88 800A6ED8 3C088015 */  lui        $t0, %hi(D_80157A3C)
    /* B5E8C 800A6EDC 25087A3C */  addiu      $t0, $t0, %lo(D_80157A3C)
    /* B5E90 800A6EE0 85090000 */  lh         $t1, 0x0($t0)
    /* B5E94 800A6EE4 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* B5E98 800A6EE8 24190040 */  addiu      $t9, $zero, 0x40
    /* B5E9C 800A6EEC 252A0004 */  addiu      $t2, $t1, 0x4
    /* B5EA0 800A6EF0 A50A0000 */  sh         $t2, 0x0($t0)
    /* B5EA4 800A6EF4 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* B5EA8 800A6EF8 850D0000 */  lh         $t5, 0x0($t0)
    /* B5EAC 800A6EFC 240B0005 */  addiu      $t3, $zero, 0x5
    /* B5EB0 800A6F00 844C0002 */  lh         $t4, 0x2($v0)
    /* B5EB4 800A6F04 000D7040 */  sll        $t6, $t5, 1
    /* B5EB8 800A6F08 018E7823 */  subu       $t7, $t4, $t6
    /* B5EBC 800A6F0C 25F80080 */  addiu      $t8, $t7, 0x80
    /* B5EC0 800A6F10 A4580002 */  sh         $t8, 0x2($v0)
    /* B5EC4 800A6F14 85030000 */  lh         $v1, 0x0($t0)
    /* B5EC8 800A6F18 28610040 */  slti       $at, $v1, 0x40
    /* B5ECC 800A6F1C 14200007 */  bnez       $at, .L800A6F3C_B5EEC
    /* B5ED0 800A6F20 00000000 */   nop
    /* B5ED4 800A6F24 A5190000 */  sh         $t9, 0x0($t0)
    /* B5ED8 800A6F28 3C018014 */  lui        $at, %hi(D_8013D890)
    /* B5EDC 800A6F2C A02BD890 */  sb         $t3, %lo(D_8013D890)($at)
    /* B5EE0 800A6F30 85030000 */  lh         $v1, 0x0($t0)
    /* B5EE4 800A6F34 3C018015 */  lui        $at, %hi(D_8014F808)
    /* B5EE8 800A6F38 A020F808 */  sb         $zero, %lo(D_8014F808)($at)
  .L800A6F3C_B5EEC:
    /* B5EEC 800A6F3C 04610003 */  bgez       $v1, .L800A6F4C_B5EFC
    /* B5EF0 800A6F40 00032083 */   sra       $a0, $v1, 2
    /* B5EF4 800A6F44 24610003 */  addiu      $at, $v1, 0x3
    /* B5EF8 800A6F48 00012083 */  sra        $a0, $at, 2
  .L800A6F4C_B5EFC:
    /* B5EFC 800A6F4C 00044C00 */  sll        $t1, $a0, 16
    /* B5F00 800A6F50 0C029808 */  jal        func_800A6020_B4FD0
    /* B5F04 800A6F54 00092403 */   sra       $a0, $t1, 16
    /* B5F08 800A6F58 1000001B */  b          .L800A6FC8_B5F78
    /* B5F0C 800A6F5C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* B5F10 800A6F60 3C058015 */  lui        $a1, %hi(D_8014F808)
    /* B5F14 800A6F64 90A5F808 */  lbu        $a1, %lo(D_8014F808)($a1)
    /* B5F18 800A6F68 24A40010 */  addiu      $a0, $a1, 0x10
    /* B5F1C 800A6F6C 00046C00 */  sll        $t5, $a0, 16
    /* B5F20 800A6F70 0C029808 */  jal        func_800A6020_B4FD0
    /* B5F24 800A6F74 000D2403 */   sra       $a0, $t5, 16
    /* B5F28 800A6F78 3C058015 */  lui        $a1, %hi(D_8014F808)
    /* B5F2C 800A6F7C 90A5F808 */  lbu        $a1, %lo(D_8014F808)($a1)
    /* B5F30 800A6F80 2401000A */  addiu      $at, $zero, 0xA
    /* B5F34 800A6F84 240E0006 */  addiu      $t6, $zero, 0x6
    /* B5F38 800A6F88 14A10003 */  bne        $a1, $at, .L800A6F98_B5F48
    /* B5F3C 800A6F8C 24AF0001 */   addiu     $t7, $a1, 0x1
    /* B5F40 800A6F90 3C018014 */  lui        $at, %hi(D_8013D890)
    /* B5F44 800A6F94 A02ED890 */  sb         $t6, %lo(D_8013D890)($at)
  .L800A6F98_B5F48:
    /* B5F48 800A6F98 3C018015 */  lui        $at, %hi(D_8014F808)
    /* B5F4C 800A6F9C A02FF808 */  sb         $t7, %lo(D_8014F808)($at)
    /* B5F50 800A6FA0 0C03B11A */  jal        func_800EC468_FB418
    /* B5F54 800A6FA4 00000000 */   nop
    /* B5F58 800A6FA8 0C03EB24 */  jal        func_800FAC90_109C40
    /* B5F5C 800A6FAC 00000000 */   nop
    /* B5F60 800A6FB0 3C018014 */  lui        $at, %hi(D_8013D890)
    /* B5F64 800A6FB4 A020D890 */  sb         $zero, %lo(D_8013D890)($at)
    /* B5F68 800A6FB8 3C018015 */  lui        $at, %hi(D_801493E2)
    /* B5F6C 800A6FBC 24180001 */  addiu      $t8, $zero, 0x1
    /* B5F70 800A6FC0 A43893E2 */  sh         $t8, %lo(D_801493E2)($at)
  .L800A6FC4_B5F74:
    /* B5F74 800A6FC4 8FBF0014 */  lw         $ra, 0x14($sp)
  .L800A6FC8_B5F78:
    /* B5F78 800A6FC8 27BD0030 */  addiu      $sp, $sp, 0x30
    /* B5F7C 800A6FCC 03E00008 */  jr         $ra
    /* B5F80 800A6FD0 00000000 */   nop
endlabel func_800A68CC_B587C
