nonmatching func_800C5894_D4844, 0x480

glabel func_800C5894_D4844
    /* D4844 800C5894 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* D4848 800C5898 AFB60030 */  sw         $s6, 0x30($sp)
    /* D484C 800C589C 309600FF */  andi       $s6, $a0, 0xFF
    /* D4850 800C58A0 00167080 */  sll        $t6, $s6, 2
    /* D4854 800C58A4 01D67023 */  subu       $t6, $t6, $s6
    /* D4858 800C58A8 3C0F8015 */  lui        $t7, %hi(D_80154088)
    /* D485C 800C58AC 25EF4088 */  addiu      $t7, $t7, %lo(D_80154088)
    /* D4860 800C58B0 000E7080 */  sll        $t6, $t6, 2
    /* D4864 800C58B4 01CFC021 */  addu       $t8, $t6, $t7
    /* D4868 800C58B8 AFBF0034 */  sw         $ra, 0x34($sp)
    /* D486C 800C58BC AFB5002C */  sw         $s5, 0x2C($sp)
    /* D4870 800C58C0 AFB40028 */  sw         $s4, 0x28($sp)
    /* D4874 800C58C4 AFB30024 */  sw         $s3, 0x24($sp)
    /* D4878 800C58C8 AFB20020 */  sw         $s2, 0x20($sp)
    /* D487C 800C58CC AFB1001C */  sw         $s1, 0x1C($sp)
    /* D4880 800C58D0 AFB00018 */  sw         $s0, 0x18($sp)
    /* D4884 800C58D4 AFA40050 */  sw         $a0, 0x50($sp)
    /* D4888 800C58D8 AFB8003C */  sw         $t8, 0x3C($sp)
    /* D488C 800C58DC 87110006 */  lh         $s1, 0x6($t8)
    /* D4890 800C58E0 2415001C */  addiu      $s5, $zero, 0x1C
    /* D4894 800C58E4 3C148015 */  lui        $s4, %hi(D_80154318)
    /* D4898 800C58E8 02350019 */  multu      $s1, $s5
    /* D489C 800C58EC 26944318 */  addiu      $s4, $s4, %lo(D_80154318)
    /* D48A0 800C58F0 2408FFFB */  addiu      $t0, $zero, -0x5
    /* D48A4 800C58F4 00009825 */  or         $s3, $zero, $zero
    /* D48A8 800C58F8 2409FFFA */  addiu      $t1, $zero, -0x6
    /* D48AC 800C58FC 00002825 */  or         $a1, $zero, $zero
    /* D48B0 800C5900 0000C812 */  mflo       $t9
    /* D48B4 800C5904 02993821 */  addu       $a3, $s4, $t9
    /* D48B8 800C5908 84F10004 */  lh         $s1, 0x4($a3)
    /* D48BC 800C590C 24F20008 */  addiu      $s2, $a3, 0x8
    /* D48C0 800C5910 12280003 */  beq        $s1, $t0, .L800C5920_D48D0
    /* D48C4 800C5914 00000000 */   nop
    /* D48C8 800C5918 16290007 */  bne        $s1, $t1, .L800C5938_D48E8
    /* D48CC 800C591C 00000000 */   nop
  .L800C5920_D48D0:
    /* D48D0 800C5920 0C030506 */  jal        func_800C1418_D03C8
    /* D48D4 800C5924 32C400FF */   andi      $a0, $s6, 0xFF
    /* D48D8 800C5928 0C0304E1 */  jal        func_800C1384_D0334
    /* D48DC 800C592C 32C400FF */   andi      $a0, $s6, 0xFF
    /* D48E0 800C5930 100000EF */  b          .L800C5CF0_D4CA0
    /* D48E4 800C5934 8FBF0034 */   lw        $ra, 0x34($sp)
  .L800C5938_D48E8:
    /* D48E8 800C5938 522800B9 */  beql       $s1, $t0, .L800C5C20_D4BD0
    /* D48EC 800C593C 924A000A */   lbu       $t2, 0xA($s2)
    /* D48F0 800C5940 522900B7 */  beql       $s1, $t1, .L800C5C20_D4BD0
    /* D48F4 800C5944 924A000A */   lbu       $t2, 0xA($s2)
    /* D48F8 800C5948 924C000A */  lbu        $t4, 0xA($s2)
  .L800C594C_D48FC:
    /* D48FC 800C594C 26730001 */  addiu      $s3, $s3, 0x1
    /* D4900 800C5950 00135400 */  sll        $t2, $s3, 16
    /* D4904 800C5954 000A5C03 */  sra        $t3, $t2, 16
    /* D4908 800C5958 24010002 */  addiu      $at, $zero, 0x2
    /* D490C 800C595C 1581004E */  bne        $t4, $at, .L800C5A98_D4A48
    /* D4910 800C5960 01609825 */   or        $s3, $t3, $zero
    /* D4914 800C5964 92450009 */  lbu        $a1, 0x9($s2)
    /* D4918 800C5968 14A00008 */  bnez       $a1, .L800C598C_D493C
    /* D491C 800C596C 00000000 */   nop
    /* D4920 800C5970 32C400FF */  andi       $a0, $s6, 0xFF
    /* D4924 800C5974 0C030506 */  jal        func_800C1418_D03C8
    /* D4928 800C5978 00002825 */   or        $a1, $zero, $zero
    /* D492C 800C597C 0C0304E1 */  jal        func_800C1384_D0334
    /* D4930 800C5980 32C400FF */   andi      $a0, $s6, 0xFF
    /* D4934 800C5984 100000DA */  b          .L800C5CF0_D4CA0
    /* D4938 800C5988 8FBF0034 */   lw        $ra, 0x34($sp)
  .L800C598C_D493C:
    /* D493C 800C598C 02350019 */  multu      $s1, $s5
    /* D4940 800C5990 864E0000 */  lh         $t6, 0x0($s2)
    /* D4944 800C5994 00006812 */  mflo       $t5
    /* D4948 800C5998 028D3821 */  addu       $a3, $s4, $t5
    /* D494C 800C599C 24F00008 */  addiu      $s0, $a3, 0x8
    /* D4950 800C59A0 86030000 */  lh         $v1, 0x0($s0)
    /* D4954 800C59A4 86020002 */  lh         $v0, 0x2($s0)
    /* D4958 800C59A8 86040004 */  lh         $a0, 0x4($s0)
    /* D495C 800C59AC 01C37823 */  subu       $t7, $t6, $v1
    /* D4960 800C59B0 01E5001A */  div        $zero, $t7, $a1
    /* D4964 800C59B4 0000C012 */  mflo       $t8
    /* D4968 800C59B8 A2180006 */  sb         $t8, 0x6($s0)
    /* D496C 800C59BC 86590002 */  lh         $t9, 0x2($s2)
    /* D4970 800C59C0 924B0009 */  lbu        $t3, 0x9($s2)
    /* D4974 800C59C4 14A00002 */  bnez       $a1, .L800C59D0_D4980
    /* D4978 800C59C8 00000000 */   nop
    /* D497C 800C59CC 0007000D */  break      7
  .L800C59D0_D4980:
    /* D4980 800C59D0 2401FFFF */  addiu      $at, $zero, -0x1
    /* D4984 800C59D4 14A10004 */  bne        $a1, $at, .L800C59E8_D4998
    /* D4988 800C59D8 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D498C 800C59DC 15E10002 */  bne        $t7, $at, .L800C59E8_D4998
    /* D4990 800C59E0 00000000 */   nop
    /* D4994 800C59E4 0006000D */  break      6
  .L800C59E8_D4998:
    /* D4998 800C59E8 03225023 */  subu       $t2, $t9, $v0
    /* D499C 800C59EC 014B001A */  div        $zero, $t2, $t3
    /* D49A0 800C59F0 00006012 */  mflo       $t4
    /* D49A4 800C59F4 A20C0007 */  sb         $t4, 0x7($s0)
    /* D49A8 800C59F8 864D0004 */  lh         $t5, 0x4($s2)
    /* D49AC 800C59FC 924F0009 */  lbu        $t7, 0x9($s2)
    /* D49B0 800C5A00 15600002 */  bnez       $t3, .L800C5A0C_D49BC
    /* D49B4 800C5A04 00000000 */   nop
    /* D49B8 800C5A08 0007000D */  break      7
  .L800C5A0C_D49BC:
    /* D49BC 800C5A0C 2401FFFF */  addiu      $at, $zero, -0x1
    /* D49C0 800C5A10 15610004 */  bne        $t3, $at, .L800C5A24_D49D4
    /* D49C4 800C5A14 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D49C8 800C5A18 15410002 */  bne        $t2, $at, .L800C5A24_D49D4
    /* D49CC 800C5A1C 00000000 */   nop
    /* D49D0 800C5A20 0006000D */  break      6
  .L800C5A24_D49D4:
    /* D49D4 800C5A24 01A47023 */  subu       $t6, $t5, $a0
    /* D49D8 800C5A28 01CF001A */  div        $zero, $t6, $t7
    /* D49DC 800C5A2C 820B0007 */  lb         $t3, 0x7($s0)
    /* D49E0 800C5A30 0000C012 */  mflo       $t8
    /* D49E4 800C5A34 A2180008 */  sb         $t8, 0x8($s0)
    /* D49E8 800C5A38 15E00002 */  bnez       $t7, .L800C5A44_D49F4
    /* D49EC 800C5A3C 00000000 */   nop
    /* D49F0 800C5A40 0007000D */  break      7
  .L800C5A44_D49F4:
    /* D49F4 800C5A44 2401FFFF */  addiu      $at, $zero, -0x1
    /* D49F8 800C5A48 15E10004 */  bne        $t7, $at, .L800C5A5C_D4A0C
    /* D49FC 800C5A4C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D4A00 800C5A50 15C10002 */  bne        $t6, $at, .L800C5A5C_D4A0C
    /* D4A04 800C5A54 00000000 */   nop
    /* D4A08 800C5A58 0006000D */  break      6
  .L800C5A5C_D4A0C:
    /* D4A0C 800C5A5C 004B6021 */  addu       $t4, $v0, $t3
    /* D4A10 800C5A60 82190006 */  lb         $t9, 0x6($s0)
    /* D4A14 800C5A64 820D0008 */  lb         $t5, 0x8($s0)
    /* D4A18 800C5A68 92020009 */  lbu        $v0, 0x9($s0)
    /* D4A1C 800C5A6C 00795021 */  addu       $t2, $v1, $t9
    /* D4A20 800C5A70 008D7021 */  addu       $t6, $a0, $t5
    /* D4A24 800C5A74 284100EB */  slti       $at, $v0, 0xEB
    /* D4A28 800C5A78 A60A0000 */  sh         $t2, 0x0($s0)
    /* D4A2C 800C5A7C A60C0002 */  sh         $t4, 0x2($s0)
    /* D4A30 800C5A80 10200003 */  beqz       $at, .L800C5A90_D4A40
    /* D4A34 800C5A84 A60E0004 */   sh        $t6, 0x4($s0)
    /* D4A38 800C5A88 244F0014 */  addiu      $t7, $v0, 0x14
    /* D4A3C 800C5A8C A20F0009 */  sb         $t7, 0x9($s0)
  .L800C5A90_D4A40:
    /* D4A40 800C5A90 1000005E */  b          .L800C5C0C_D4BBC
    /* D4A44 800C5A94 84F10004 */   lh        $s1, 0x4($a3)
  .L800C5A98_D4A48:
    /* D4A48 800C5A98 02350019 */  multu      $s1, $s5
    /* D4A4C 800C5A9C 00112400 */  sll        $a0, $s1, 16
    /* D4A50 800C5AA0 00046C03 */  sra        $t5, $a0, 16
    /* D4A54 800C5AA4 3C0A8022 */  lui        $t2, %hi(D_80222A70)
    /* D4A58 800C5AA8 8FAB003C */  lw         $t3, 0x3C($sp)
    /* D4A5C 800C5AAC 01A02025 */  or         $a0, $t5, $zero
    /* D4A60 800C5AB0 32C500FF */  andi       $a1, $s6, 0xFF
    /* D4A64 800C5AB4 00003025 */  or         $a2, $zero, $zero
    /* D4A68 800C5AB8 0000C012 */  mflo       $t8
    /* D4A6C 800C5ABC 02983821 */  addu       $a3, $s4, $t8
    /* D4A70 800C5AC0 24F00008 */  addiu      $s0, $a3, 0x8
    /* D4A74 800C5AC4 92190009 */  lbu        $t9, 0x9($s0)
    /* D4A78 800C5AC8 2B21000F */  slti       $at, $t9, 0xF
    /* D4A7C 800C5ACC 54200007 */  bnel       $at, $zero, .L800C5AEC_D4A9C
    /* D4A80 800C5AD0 916C0004 */   lbu       $t4, 0x4($t3)
    /* D4A84 800C5AD4 86020002 */  lh         $v0, 0x2($s0)
    /* D4A88 800C5AD8 8D4A2A70 */  lw         $t2, %lo(D_80222A70)($t2)
    /* D4A8C 800C5ADC 0142082A */  slt        $at, $t2, $v0
    /* D4A90 800C5AE0 54200019 */  bnel       $at, $zero, .L800C5B48_D4AF8
    /* D4A94 800C5AE4 86190000 */   lh        $t9, 0x0($s0)
    /* D4A98 800C5AE8 916C0004 */  lbu        $t4, 0x4($t3)
  .L800C5AEC_D4A9C:
    /* D4A9C 800C5AEC 29810003 */  slti       $at, $t4, 0x3
    /* D4AA0 800C5AF0 10200008 */  beqz       $at, .L800C5B14_D4AC4
    /* D4AA4 800C5AF4 00000000 */   nop
    /* D4AA8 800C5AF8 32C400FF */  andi       $a0, $s6, 0xFF
    /* D4AAC 800C5AFC 0C030506 */  jal        func_800C1418_D03C8
    /* D4AB0 800C5B00 00002825 */   or        $a1, $zero, $zero
    /* D4AB4 800C5B04 0C0304E1 */  jal        func_800C1384_D0334
    /* D4AB8 800C5B08 32C400FF */   andi      $a0, $s6, 0xFF
    /* D4ABC 800C5B0C 10000078 */  b          .L800C5CF0_D4CA0
    /* D4AC0 800C5B10 8FBF0034 */   lw        $ra, 0x34($sp)
  .L800C5B14_D4AC4:
    /* D4AC4 800C5B14 0C030693 */  jal        func_800C1A4C_D09FC
    /* D4AC8 800C5B18 84F00004 */   lh        $s0, 0x4($a3)
    /* D4ACC 800C5B1C 2673FFFF */  addiu      $s3, $s3, -0x1
    /* D4AD0 800C5B20 00108C00 */  sll        $s1, $s0, 16
    /* D4AD4 800C5B24 00137C00 */  sll        $t7, $s3, 16
    /* D4AD8 800C5B28 00117403 */  sra        $t6, $s1, 16
    /* D4ADC 800C5B2C 000FC403 */  sra        $t8, $t7, 16
    /* D4AE0 800C5B30 01C08825 */  or         $s1, $t6, $zero
    /* D4AE4 800C5B34 03009825 */  or         $s3, $t8, $zero
    /* D4AE8 800C5B38 2409FFFA */  addiu      $t1, $zero, -0x6
    /* D4AEC 800C5B3C 10000033 */  b          .L800C5C0C_D4BBC
    /* D4AF0 800C5B40 2408FFFB */   addiu     $t0, $zero, -0x5
    /* D4AF4 800C5B44 86190000 */  lh         $t9, 0x0($s0)
  .L800C5B48_D4AF8:
    /* D4AF8 800C5B48 820A0006 */  lb         $t2, 0x6($s0)
    /* D4AFC 800C5B4C 860C0004 */  lh         $t4, 0x4($s0)
    /* D4B00 800C5B50 820D0008 */  lb         $t5, 0x8($s0)
    /* D4B04 800C5B54 820F0007 */  lb         $t7, 0x7($s0)
    /* D4B08 800C5B58 032A5821 */  addu       $t3, $t9, $t2
    /* D4B0C 800C5B5C 018D7021 */  addu       $t6, $t4, $t5
    /* D4B10 800C5B60 A60B0000 */  sh         $t3, 0x0($s0)
    /* D4B14 800C5B64 A60E0004 */  sh         $t6, 0x4($s0)
    /* D4B18 800C5B68 004FC021 */  addu       $t8, $v0, $t7
    /* D4B1C 800C5B6C A6180002 */  sh         $t8, 0x2($s0)
    /* D4B20 800C5B70 86050004 */  lh         $a1, 0x4($s0)
    /* D4B24 800C5B74 86040000 */  lh         $a0, 0x0($s0)
    /* D4B28 800C5B78 0C02E134 */  jal        func_800B84D0_C7480
    /* D4B2C 800C5B7C AFA70038 */   sw        $a3, 0x38($sp)
    /* D4B30 800C5B80 9219000A */  lbu        $t9, 0xA($s0)
    /* D4B34 800C5B84 8FA70038 */  lw         $a3, 0x38($sp)
    /* D4B38 800C5B88 2409FFFA */  addiu      $t1, $zero, -0x6
    /* D4B3C 800C5B8C 272A0001 */  addiu      $t2, $t9, 0x1
    /* D4B40 800C5B90 314B00FF */  andi       $t3, $t2, 0xFF
    /* D4B44 800C5B94 2961000B */  slti       $at, $t3, 0xB
    /* D4B48 800C5B98 14200008 */  bnez       $at, .L800C5BBC_D4B6C
    /* D4B4C 800C5B9C A20A000A */   sb        $t2, 0xA($s0)
    /* D4B50 800C5BA0 92030009 */  lbu        $v1, 0x9($s0)
    /* D4B54 800C5BA4 2463FFEC */  addiu      $v1, $v1, -0x14
    /* D4B58 800C5BA8 04630004 */  bgezl      $v1, .L800C5BBC_D4B6C
    /* D4B5C 800C5BAC A2030009 */   sb        $v1, 0x9($s0)
    /* D4B60 800C5BB0 10000002 */  b          .L800C5BBC_D4B6C
    /* D4B64 800C5BB4 A2000009 */   sb        $zero, 0x9($s0)
    /* D4B68 800C5BB8 A2030009 */  sb         $v1, 0x9($s0)
  .L800C5BBC_D4B6C:
    /* D4B6C 800C5BBC 860E0002 */  lh         $t6, 0x2($s0)
    /* D4B70 800C5BC0 00021A03 */  sra        $v1, $v0, 8
    /* D4B74 800C5BC4 00036400 */  sll        $t4, $v1, 16
    /* D4B78 800C5BC8 000C6C03 */  sra        $t5, $t4, 16
    /* D4B7C 800C5BCC 01AE082A */  slt        $at, $t5, $t6
    /* D4B80 800C5BD0 14200004 */  bnez       $at, .L800C5BE4_D4B94
    /* D4B84 800C5BD4 2408FFFB */   addiu     $t0, $zero, -0x5
    /* D4B88 800C5BD8 25AF0002 */  addiu      $t7, $t5, 0x2
    /* D4B8C 800C5BDC A60F0002 */  sh         $t7, 0x2($s0)
    /* D4B90 800C5BE0 A2000007 */  sb         $zero, 0x7($s0)
  .L800C5BE4_D4B94:
    /* D4B94 800C5BE4 82020007 */  lb         $v0, 0x7($s0)
    /* D4B98 800C5BE8 2841FFED */  slti       $at, $v0, -0x13
    /* D4B9C 800C5BEC 54200005 */  bnel       $at, $zero, .L800C5C04_D4BB4
    /* D4BA0 800C5BF0 2419FFEC */   addiu     $t9, $zero, -0x14
    /* D4BA4 800C5BF4 2458FFFF */  addiu      $t8, $v0, -0x1
    /* D4BA8 800C5BF8 10000003 */  b          .L800C5C08_D4BB8
    /* D4BAC 800C5BFC A2180007 */   sb        $t8, 0x7($s0)
    /* D4BB0 800C5C00 2419FFEC */  addiu      $t9, $zero, -0x14
  .L800C5C04_D4BB4:
    /* D4BB4 800C5C04 A2190007 */  sb         $t9, 0x7($s0)
  .L800C5C08_D4BB8:
    /* D4BB8 800C5C08 84F10004 */  lh         $s1, 0x4($a3)
  .L800C5C0C_D4BBC:
    /* D4BBC 800C5C0C 52280004 */  beql       $s1, $t0, .L800C5C20_D4BD0
    /* D4BC0 800C5C10 924A000A */   lbu       $t2, 0xA($s2)
    /* D4BC4 800C5C14 5629FF4D */  bnel       $s1, $t1, .L800C594C_D48FC
    /* D4BC8 800C5C18 924C000A */   lbu       $t4, 0xA($s2)
    /* D4BCC 800C5C1C 924A000A */  lbu        $t2, 0xA($s2)
  .L800C5C20_D4BD0:
    /* D4BD0 800C5C20 24010002 */  addiu      $at, $zero, 0x2
    /* D4BD4 800C5C24 55410032 */  bnel       $t2, $at, .L800C5CF0_D4CA0
    /* D4BD8 800C5C28 8FBF0034 */   lw        $ra, 0x34($sp)
    /* D4BDC 800C5C2C 924B0009 */  lbu        $t3, 0x9($s2)
    /* D4BE0 800C5C30 256CFFFF */  addiu      $t4, $t3, -0x1
    /* D4BE4 800C5C34 0C000E38 */  jal        func_800038E0_44E0
    /* D4BE8 800C5C38 A24C0009 */   sb        $t4, 0x9($s2)
    /* D4BEC 800C5C3C 24100037 */  addiu      $s0, $zero, 0x37
    /* D4BF0 800C5C40 0050001A */  div        $zero, $v0, $s0
    /* D4BF4 800C5C44 00006810 */  mfhi       $t5
    /* D4BF8 800C5C48 25AE00C8 */  addiu      $t6, $t5, 0xC8
    /* D4BFC 800C5C4C 16000002 */  bnez       $s0, .L800C5C58_D4C08
    /* D4C00 800C5C50 00000000 */   nop
    /* D4C04 800C5C54 0007000D */  break      7
  .L800C5C58_D4C08:
    /* D4C08 800C5C58 2401FFFF */  addiu      $at, $zero, -0x1
    /* D4C0C 800C5C5C 16010004 */  bne        $s0, $at, .L800C5C70_D4C20
    /* D4C10 800C5C60 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D4C14 800C5C64 14410002 */  bne        $v0, $at, .L800C5C70_D4C20
    /* D4C18 800C5C68 00000000 */   nop
    /* D4C1C 800C5C6C 0006000D */  break      6
  .L800C5C70_D4C20:
    /* D4C20 800C5C70 A24E0006 */  sb         $t6, 0x6($s2)
    /* D4C24 800C5C74 0C000E38 */  jal        func_800038E0_44E0
    /* D4C28 800C5C78 00000000 */   nop
    /* D4C2C 800C5C7C 0050001A */  div        $zero, $v0, $s0
    /* D4C30 800C5C80 00007810 */  mfhi       $t7
    /* D4C34 800C5C84 25F800C8 */  addiu      $t8, $t7, 0xC8
    /* D4C38 800C5C88 16000002 */  bnez       $s0, .L800C5C94_D4C44
    /* D4C3C 800C5C8C 00000000 */   nop
    /* D4C40 800C5C90 0007000D */  break      7
  .L800C5C94_D4C44:
    /* D4C44 800C5C94 2401FFFF */  addiu      $at, $zero, -0x1
    /* D4C48 800C5C98 16010004 */  bne        $s0, $at, .L800C5CAC_D4C5C
    /* D4C4C 800C5C9C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D4C50 800C5CA0 14410002 */  bne        $v0, $at, .L800C5CAC_D4C5C
    /* D4C54 800C5CA4 00000000 */   nop
    /* D4C58 800C5CA8 0006000D */  break      6
  .L800C5CAC_D4C5C:
    /* D4C5C 800C5CAC A2580007 */  sb         $t8, 0x7($s2)
    /* D4C60 800C5CB0 0C000E38 */  jal        func_800038E0_44E0
    /* D4C64 800C5CB4 00000000 */   nop
    /* D4C68 800C5CB8 0050001A */  div        $zero, $v0, $s0
    /* D4C6C 800C5CBC 0000C810 */  mfhi       $t9
    /* D4C70 800C5CC0 272A00C8 */  addiu      $t2, $t9, 0xC8
    /* D4C74 800C5CC4 A24A0008 */  sb         $t2, 0x8($s2)
    /* D4C78 800C5CC8 16000002 */  bnez       $s0, .L800C5CD4_D4C84
    /* D4C7C 800C5CCC 00000000 */   nop
    /* D4C80 800C5CD0 0007000D */  break      7
  .L800C5CD4_D4C84:
    /* D4C84 800C5CD4 2401FFFF */  addiu      $at, $zero, -0x1
    /* D4C88 800C5CD8 16010004 */  bne        $s0, $at, .L800C5CEC_D4C9C
    /* D4C8C 800C5CDC 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D4C90 800C5CE0 14410002 */  bne        $v0, $at, .L800C5CEC_D4C9C
    /* D4C94 800C5CE4 00000000 */   nop
    /* D4C98 800C5CE8 0006000D */  break      6
  .L800C5CEC_D4C9C:
    /* D4C9C 800C5CEC 8FBF0034 */  lw         $ra, 0x34($sp)
  .L800C5CF0_D4CA0:
    /* D4CA0 800C5CF0 8FB00018 */  lw         $s0, 0x18($sp)
    /* D4CA4 800C5CF4 8FB1001C */  lw         $s1, 0x1C($sp)
    /* D4CA8 800C5CF8 8FB20020 */  lw         $s2, 0x20($sp)
    /* D4CAC 800C5CFC 8FB30024 */  lw         $s3, 0x24($sp)
    /* D4CB0 800C5D00 8FB40028 */  lw         $s4, 0x28($sp)
    /* D4CB4 800C5D04 8FB5002C */  lw         $s5, 0x2C($sp)
    /* D4CB8 800C5D08 8FB60030 */  lw         $s6, 0x30($sp)
    /* D4CBC 800C5D0C 03E00008 */  jr         $ra
    /* D4CC0 800C5D10 27BD0050 */   addiu     $sp, $sp, 0x50
endlabel func_800C5894_D4844
