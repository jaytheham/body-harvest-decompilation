nonmatching func_800E988C_F883C, 0x7FC

glabel func_800E988C_F883C
    /* F883C 800E988C 27BDFF70 */  addiu      $sp, $sp, -0x90
    /* F8840 800E9890 AFB00018 */  sw         $s0, 0x18($sp)
    /* F8844 800E9894 00808025 */  or         $s0, $a0, $zero
    /* F8848 800E9898 AFBF001C */  sw         $ra, 0x1C($sp)
    /* F884C 800E989C AFA50094 */  sw         $a1, 0x94($sp)
    /* F8850 800E98A0 0C007660 */  jal        sins
    /* F8854 800E98A4 94840006 */   lhu       $a0, 0x6($a0)
    /* F8858 800E98A8 44822000 */  mtc1       $v0, $f4
    /* F885C 800E98AC 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* F8860 800E98B0 44815800 */  mtc1       $at, $f11
    /* F8864 800E98B4 468021A0 */  cvt.s.w    $f6, $f4
    /* F8868 800E98B8 44805000 */  mtc1       $zero, $f10
    /* F886C 800E98BC 46003221 */  cvt.d.s    $f8, $f6
    /* F8870 800E98C0 462A4403 */  div.d      $f16, $f8, $f10
    /* F8874 800E98C4 462084A0 */  cvt.s.d    $f18, $f16
    /* F8878 800E98C8 E7B2008C */  swc1       $f18, 0x8C($sp)
    /* F887C 800E98CC 0C007654 */  jal        coss
    /* F8880 800E98D0 96040006 */   lhu       $a0, 0x6($s0)
    /* F8884 800E98D4 44822000 */  mtc1       $v0, $f4
    /* F8888 800E98D8 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* F888C 800E98DC 44815800 */  mtc1       $at, $f11
    /* F8890 800E98E0 468021A0 */  cvt.s.w    $f6, $f4
    /* F8894 800E98E4 44805000 */  mtc1       $zero, $f10
    /* F8898 800E98E8 3C0E8005 */  lui        $t6, %hi(D_80052B34)
    /* F889C 800E98EC 8DCE2B34 */  lw         $t6, %lo(D_80052B34)($t6)
    /* F88A0 800E98F0 3C0F8015 */  lui        $t7, %hi(D_801493E0)
    /* F88A4 800E98F4 46003221 */  cvt.d.s    $f8, $f6
    /* F88A8 800E98F8 462A4403 */  div.d      $f16, $f8, $f10
    /* F88AC 800E98FC 160E0004 */  bne        $s0, $t6, .L800E9910_F88C0
    /* F88B0 800E9900 46208320 */   cvt.s.d   $f12, $f16
    /* F88B4 800E9904 85EF93E0 */  lh         $t7, %lo(D_801493E0)($t7)
    /* F88B8 800E9908 51E001DB */  beql       $t7, $zero, .L800EA078_F9028
    /* F88BC 800E990C 8FBF001C */   lw        $ra, 0x1C($sp)
  .L800E9910_F88C0:
    /* F88C0 800E9910 8602000C */  lh         $v0, 0xC($s0)
    /* F88C4 800E9914 2407FFFE */  addiu      $a3, $zero, -0x2
    /* F88C8 800E9918 14E20005 */  bne        $a3, $v0, .L800E9930_F88E0
    /* F88CC 800E991C 00000000 */   nop
    /* F88D0 800E9920 96180020 */  lhu        $t8, 0x20($s0)
    /* F88D4 800E9924 33190800 */  andi       $t9, $t8, 0x800
    /* F88D8 800E9928 572001D3 */  bnel       $t9, $zero, .L800EA078_F9028
    /* F88DC 800E992C 8FBF001C */   lw        $ra, 0x1C($sp)
  .L800E9930_F88E0:
    /* F88E0 800E9930 10E20005 */  beq        $a3, $v0, .L800E9948_F88F8
    /* F88E4 800E9934 00000000 */   nop
    /* F88E8 800E9938 920E001A */  lbu        $t6, 0x1A($s0)
    /* F88EC 800E993C 24010002 */  addiu      $at, $zero, 0x2
    /* F88F0 800E9940 51C101CD */  beql       $t6, $at, .L800EA078_F9028
    /* F88F4 800E9944 8FBF001C */   lw        $ra, 0x1C($sp)
  .L800E9948_F88F8:
    /* F88F8 800E9948 54E20010 */  bnel       $a3, $v0, .L800E998C_F893C
    /* F88FC 800E994C 8FAF0094 */   lw        $t7, 0x94($sp)
    /* F8900 800E9950 920F001A */  lbu        $t7, 0x1A($s0)
    /* F8904 800E9954 3C198025 */  lui        $t9, %hi(vehicleSpecs)
    /* F8908 800E9958 27397A00 */  addiu      $t9, $t9, %lo(vehicleSpecs)
    /* F890C 800E995C 000FC0C0 */  sll        $t8, $t7, 3
    /* F8910 800E9960 030FC023 */  subu       $t8, $t8, $t7
    /* F8914 800E9964 0018C100 */  sll        $t8, $t8, 4
    /* F8918 800E9968 03191021 */  addu       $v0, $t8, $t9
    /* F891C 800E996C 904E006C */  lbu        $t6, 0x6C($v0)
    /* F8920 800E9970 9059006D */  lbu        $t9, 0x6D($v0)
    /* F8924 800E9974 000E7C40 */  sll        $t7, $t6, 17
    /* F8928 800E9978 00197040 */  sll        $t6, $t9, 1
    /* F892C 800E997C 000FFC03 */  sra        $ra, $t7, 16
    /* F8930 800E9980 10000009 */  b          .L800E99A8_F8958
    /* F8934 800E9984 A7AE0084 */   sh        $t6, 0x84($sp)
    /* F8938 800E9988 8FAF0094 */  lw         $t7, 0x94($sp)
  .L800E998C_F893C:
    /* F893C 800E998C 85FF0034 */  lh         $ra, 0x34($t7)
    /* F8940 800E9990 001FC043 */  sra        $t8, $ra, 1
    /* F8944 800E9994 0018CC00 */  sll        $t9, $t8, 16
    /* F8948 800E9998 85F80036 */  lh         $t8, 0x36($t7)
    /* F894C 800E999C 0019FC03 */  sra        $ra, $t9, 16
    /* F8950 800E99A0 0018C843 */  sra        $t9, $t8, 1
    /* F8954 800E99A4 A7B90084 */  sh         $t9, 0x84($sp)
  .L800E99A8_F8958:
    /* F8958 800E99A8 86040000 */  lh         $a0, 0x0($s0)
    /* F895C 800E99AC 86050004 */  lh         $a1, 0x4($s0)
    /* F8960 800E99B0 A7BF0086 */  sh         $ra, 0x86($sp)
    /* F8964 800E99B4 0C02E134 */  jal        func_800B84D0_C7480
    /* F8968 800E99B8 E7AC0088 */   swc1      $f12, 0x88($sp)
    /* F896C 800E99BC 00022A03 */  sra        $a1, $v0, 8
    /* F8970 800E99C0 24A50005 */  addiu      $a1, $a1, 0x5
    /* F8974 800E99C4 86040000 */  lh         $a0, 0x0($s0)
    /* F8978 800E99C8 0C03A56F */  jal        func_800E95BC_F856C
    /* F897C 800E99CC 86060004 */   lh        $a2, 0x4($s0)
    /* F8980 800E99D0 2407FFFE */  addiu      $a3, $zero, -0x2
    /* F8984 800E99D4 87BF0086 */  lh         $ra, 0x86($sp)
    /* F8988 800E99D8 144001A6 */  bnez       $v0, .L800EA074_F9024
    /* F898C 800E99DC C7AC0088 */   lwc1      $f12, 0x88($sp)
    /* F8990 800E99E0 3C0E8015 */  lui        $t6, %hi(D_801575A0)
    /* F8994 800E99E4 8DCE75A0 */  lw         $t6, %lo(D_801575A0)($t6)
    /* F8998 800E99E8 3C0D800F */  lui        $t5, %hi(func_800E9868_F8818)
    /* F899C 800E99EC 3C188022 */  lui        $t8, %hi(D_80222A70)
    /* F89A0 800E99F0 31CF0001 */  andi       $t7, $t6, 0x1
    /* F89A4 800E99F4 11E00005 */  beqz       $t7, .L800E9A0C_F89BC
    /* F89A8 800E99F8 3C038005 */   lui       $v1, %hi(D_80052B34)
    /* F89AC 800E99FC 3C028010 */  lui        $v0, %hi(func_800F9EC4_108E74)
    /* F89B0 800E9A00 24429EC4 */  addiu      $v0, $v0, %lo(func_800F9EC4_108E74)
    /* F89B4 800E9A04 1000000D */  b          .L800E9A3C_F89EC
    /* F89B8 800E9A08 25AD9868 */   addiu     $t5, $t5, %lo(func_800E9868_F8818)
  .L800E9A0C_F89BC:
    /* F89BC 800E9A0C 8F182A70 */  lw         $t8, %lo(D_80222A70)($t8)
    /* F89C0 800E9A10 86190002 */  lh         $t9, 0x2($s0)
    /* F89C4 800E9A14 3C0D8010 */  lui        $t5, %hi(func_800F9F00_108EB0)
    /* F89C8 800E9A18 25AD9F00 */  addiu      $t5, $t5, %lo(func_800F9F00_108EB0)
    /* F89CC 800E9A1C 0319082A */  slt        $at, $t8, $t9
    /* F89D0 800E9A20 14200005 */  bnez       $at, .L800E9A38_F89E8
    /* F89D4 800E9A24 3C028010 */   lui       $v0, %hi(func_800F9EC4_108E74)
    /* F89D8 800E9A28 3C028010 */  lui        $v0, %hi(func_800F9EC4_108E74)
    /* F89DC 800E9A2C 24429EC4 */  addiu      $v0, $v0, %lo(func_800F9EC4_108E74)
    /* F89E0 800E9A30 10000002 */  b          .L800E9A3C_F89EC
    /* F89E4 800E9A34 00406825 */   or        $t5, $v0, $zero
  .L800E9A38_F89E8:
    /* F89E8 800E9A38 24429EC4 */  addiu      $v0, $v0, %lo(func_800F9EC4_108E74)
  .L800E9A3C_F89EC:
    /* F89EC 800E9A3C 15A20010 */  bne        $t5, $v0, .L800E9A80_F8A30
    /* F89F0 800E9A40 3C0E8005 */   lui       $t6, %hi(D_80052B34)
    /* F89F4 800E9A44 8DCE2B34 */  lw         $t6, %lo(D_80052B34)($t6)
    /* F89F8 800E9A48 160E000D */  bne        $s0, $t6, .L800E9A80_F8A30
    /* F89FC 800E9A4C 00000000 */   nop
    /* F8A00 800E9A50 920F001A */  lbu        $t7, 0x1A($s0)
    /* F8A04 800E9A54 3C198025 */  lui        $t9, %hi(D_80257A4C)
    /* F8A08 800E9A58 000FC0C0 */  sll        $t8, $t7, 3
    /* F8A0C 800E9A5C 030FC023 */  subu       $t8, $t8, $t7
    /* F8A10 800E9A60 0018C100 */  sll        $t8, $t8, 4
    /* F8A14 800E9A64 0338C821 */  addu       $t9, $t9, $t8
    /* F8A18 800E9A68 8F397A4C */  lw         $t9, %lo(D_80257A4C)($t9)
    /* F8A1C 800E9A6C 00197080 */  sll        $t6, $t9, 2
    /* F8A20 800E9A70 05C10003 */  bgez       $t6, .L800E9A80_F8A30
    /* F8A24 800E9A74 00000000 */   nop
    /* F8A28 800E9A78 3C0D8010 */  lui        $t5, %hi(func_800F9F00_108EB0)
    /* F8A2C 800E9A7C 25AD9F00 */  addiu      $t5, $t5, %lo(func_800F9F00_108EB0)
  .L800E9A80_F8A30:
    /* F8A30 800E9A80 8C632B34 */  lw         $v1, %lo(D_80052B34)($v1)
    /* F8A34 800E9A84 8FA40094 */  lw         $a0, 0x94($sp)
    /* F8A38 800E9A88 16030021 */  bne        $s0, $v1, .L800E9B10_F8AC0
    /* F8A3C 800E9A8C 8C8C0004 */   lw        $t4, 0x4($a0)
    /* F8A40 800E9A90 9062001A */  lbu        $v0, 0x1A($v1)
    /* F8A44 800E9A94 24010013 */  addiu      $at, $zero, 0x13
    /* F8A48 800E9A98 3C0C0500 */  lui        $t4, %hi(D_5000000)
    /* F8A4C 800E9A9C 10400003 */  beqz       $v0, .L800E9AAC_F8A5C
    /* F8A50 800E9AA0 00000000 */   nop
    /* F8A54 800E9AA4 14410017 */  bne        $v0, $at, .L800E9B04_F8AB4
    /* F8A58 800E9AA8 00000000 */   nop
  .L800E9AAC_F8A5C:
    /* F8A5C 800E9AAC 14400025 */  bnez       $v0, .L800E9B44_F8AF4
    /* F8A60 800E9AB0 258C0000 */   addiu     $t4, $t4, %lo(D_5000000)
    /* F8A64 800E9AB4 848F0034 */  lh         $t7, 0x34($a0)
    /* F8A68 800E9AB8 3C018014 */  lui        $at, %hi(D_801442D0)
    /* F8A6C 800E9ABC D42042D0 */  ldc1       $f0, %lo(D_801442D0)($at)
    /* F8A70 800E9AC0 448F9000 */  mtc1       $t7, $f18
    /* F8A74 800E9AC4 848F0036 */  lh         $t7, 0x36($a0)
    /* F8A78 800E9AC8 46809121 */  cvt.d.w    $f4, $f18
    /* F8A7C 800E9ACC 448F5000 */  mtc1       $t7, $f10
    /* F8A80 800E9AD0 00000000 */  nop
    /* F8A84 800E9AD4 46805421 */  cvt.d.w    $f16, $f10
    /* F8A88 800E9AD8 46202182 */  mul.d      $f6, $f4, $f0
    /* F8A8C 800E9ADC 4620320D */  trunc.w.d  $f8, $f6
    /* F8A90 800E9AE0 46208482 */  mul.d      $f18, $f16, $f0
    /* F8A94 800E9AE4 441F4000 */  mfc1       $ra, $f8
    /* F8A98 800E9AE8 00000000 */  nop
    /* F8A9C 800E9AEC 001FCC00 */  sll        $t9, $ra, 16
    /* F8AA0 800E9AF0 0019FC03 */  sra        $ra, $t9, 16
    /* F8AA4 800E9AF4 4620910D */  trunc.w.d  $f4, $f18
    /* F8AA8 800E9AF8 44192000 */  mfc1       $t9, $f4
    /* F8AAC 800E9AFC 10000011 */  b          .L800E9B44_F8AF4
    /* F8AB0 800E9B00 A7B90084 */   sh        $t9, 0x84($sp)
  .L800E9B04_F8AB4:
    /* F8AB4 800E9B04 3C0C802C */  lui        $t4, %hi(D_802C4080)
    /* F8AB8 800E9B08 1000000E */  b          .L800E9B44_F8AF4
    /* F8ABC 800E9B0C 258C4080 */   addiu     $t4, $t4, %lo(D_802C4080)
  .L800E9B10_F8AC0:
    /* F8AC0 800E9B10 860E000C */  lh         $t6, 0xC($s0)
    /* F8AC4 800E9B14 54EE000C */  bnel       $a3, $t6, .L800E9B48_F8AF8
    /* F8AC8 800E9B18 449F8000 */   mtc1      $ra, $f16
    /* F8ACC 800E9B1C 9202001A */  lbu        $v0, 0x1A($s0)
    /* F8AD0 800E9B20 24010013 */  addiu      $at, $zero, 0x13
    /* F8AD4 800E9B24 3C18802C */  lui        $t8, %hi(D_802C4080)
    /* F8AD8 800E9B28 14410004 */  bne        $v0, $at, .L800E9B3C_F8AEC
    /* F8ADC 800E9B2C 00027A80 */   sll       $t7, $v0, 10
    /* F8AE0 800E9B30 3C0C0500 */  lui        $t4, %hi(D_5000000)
    /* F8AE4 800E9B34 10000003 */  b          .L800E9B44_F8AF4
    /* F8AE8 800E9B38 258C0000 */   addiu     $t4, $t4, %lo(D_5000000)
  .L800E9B3C_F8AEC:
    /* F8AEC 800E9B3C 27184080 */  addiu      $t8, $t8, %lo(D_802C4080)
    /* F8AF0 800E9B40 01F86021 */  addu       $t4, $t7, $t8
  .L800E9B44_F8AF4:
    /* F8AF4 800E9B44 449F8000 */  mtc1       $ra, $f16
  .L800E9B48_F8AF8:
    /* F8AF8 800E9B48 1180003C */  beqz       $t4, .L800E9C3C_F8BEC
    /* F8AFC 800E9B4C 3C078006 */   lui       $a3, %hi(D_8005BB2C)
    /* F8B00 800E9B50 3C078006 */  lui        $a3, %hi(D_8005BB2C)
    /* F8B04 800E9B54 24E7BB2C */  addiu      $a3, $a3, %lo(D_8005BB2C)
    /* F8B08 800E9B58 8CE40000 */  lw         $a0, 0x0($a3)
    /* F8B0C 800E9B5C 3C0EFC12 */  lui        $t6, (0xFC1279FF >> 16)
    /* F8B10 800E9B60 35CE79FF */  ori        $t6, $t6, (0xFC1279FF & 0xFFFF)
    /* F8B14 800E9B64 24990008 */  addiu      $t9, $a0, 0x8
    /* F8B18 800E9B68 ACF90000 */  sw         $t9, 0x0($a3)
    /* F8B1C 800E9B6C 240F9238 */  addiu      $t7, $zero, -0x6DC8
    /* F8B20 800E9B70 AC8F0004 */  sw         $t7, 0x4($a0)
    /* F8B24 800E9B74 AC8E0000 */  sw         $t6, 0x0($a0)
    /* F8B28 800E9B78 8CE40000 */  lw         $a0, 0x0($a3)
    /* F8B2C 800E9B7C 3C19FD70 */  lui        $t9, (0xFD700000 >> 16)
    /* F8B30 800E9B80 3C0FF570 */  lui        $t7, (0xF5700000 >> 16)
    /* F8B34 800E9B84 24980008 */  addiu      $t8, $a0, 0x8
    /* F8B38 800E9B88 ACF80000 */  sw         $t8, 0x0($a3)
    /* F8B3C 800E9B8C AC8C0004 */  sw         $t4, 0x4($a0)
    /* F8B40 800E9B90 AC990000 */  sw         $t9, 0x0($a0)
    /* F8B44 800E9B94 8CE40000 */  lw         $a0, 0x0($a3)
    /* F8B48 800E9B98 3C180700 */  lui        $t8, (0x7000000 >> 16)
    /* F8B4C 800E9B9C 248E0008 */  addiu      $t6, $a0, 0x8
    /* F8B50 800E9BA0 ACEE0000 */  sw         $t6, 0x0($a3)
    /* F8B54 800E9BA4 AC980004 */  sw         $t8, 0x4($a0)
    /* F8B58 800E9BA8 AC8F0000 */  sw         $t7, 0x0($a0)
    /* F8B5C 800E9BAC 8CE40000 */  lw         $a0, 0x0($a3)
    /* F8B60 800E9BB0 3C0EE600 */  lui        $t6, (0xE6000000 >> 16)
    /* F8B64 800E9BB4 3C18F300 */  lui        $t8, (0xF3000000 >> 16)
    /* F8B68 800E9BB8 24990008 */  addiu      $t9, $a0, 0x8
    /* F8B6C 800E9BBC ACF90000 */  sw         $t9, 0x0($a3)
    /* F8B70 800E9BC0 AC800004 */  sw         $zero, 0x4($a0)
    /* F8B74 800E9BC4 AC8E0000 */  sw         $t6, 0x0($a0)
    /* F8B78 800E9BC8 8CE40000 */  lw         $a0, 0x0($a3)
    /* F8B7C 800E9BCC 3C19071F */  lui        $t9, (0x71FF200 >> 16)
    /* F8B80 800E9BD0 3739F200 */  ori        $t9, $t9, (0x71FF200 & 0xFFFF)
    /* F8B84 800E9BD4 248F0008 */  addiu      $t7, $a0, 0x8
    /* F8B88 800E9BD8 ACEF0000 */  sw         $t7, 0x0($a3)
    /* F8B8C 800E9BDC AC990004 */  sw         $t9, 0x4($a0)
    /* F8B90 800E9BE0 AC980000 */  sw         $t8, 0x0($a0)
    /* F8B94 800E9BE4 8CE40000 */  lw         $a0, 0x0($a3)
    /* F8B98 800E9BE8 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
    /* F8B9C 800E9BEC 3C19F568 */  lui        $t9, (0xF5680800 >> 16)
    /* F8BA0 800E9BF0 248E0008 */  addiu      $t6, $a0, 0x8
    /* F8BA4 800E9BF4 ACEE0000 */  sw         $t6, 0x0($a3)
    /* F8BA8 800E9BF8 AC800004 */  sw         $zero, 0x4($a0)
    /* F8BAC 800E9BFC AC8F0000 */  sw         $t7, 0x0($a0)
    /* F8BB0 800E9C00 8CE40000 */  lw         $a0, 0x0($a3)
    /* F8BB4 800E9C04 37390800 */  ori        $t9, $t9, (0xF5680800 & 0xFFFF)
    /* F8BB8 800E9C08 3C0FF200 */  lui        $t7, (0xF2000000 >> 16)
    /* F8BBC 800E9C0C 24980008 */  addiu      $t8, $a0, 0x8
    /* F8BC0 800E9C10 ACF80000 */  sw         $t8, 0x0($a3)
    /* F8BC4 800E9C14 AC800004 */  sw         $zero, 0x4($a0)
    /* F8BC8 800E9C18 AC990000 */  sw         $t9, 0x0($a0)
    /* F8BCC 800E9C1C 8CE40000 */  lw         $a0, 0x0($a3)
    /* F8BD0 800E9C20 3C180007 */  lui        $t8, (0x7C07C >> 16)
    /* F8BD4 800E9C24 3718C07C */  ori        $t8, $t8, (0x7C07C & 0xFFFF)
    /* F8BD8 800E9C28 248E0008 */  addiu      $t6, $a0, 0x8
    /* F8BDC 800E9C2C ACEE0000 */  sw         $t6, 0x0($a3)
    /* F8BE0 800E9C30 AC980004 */  sw         $t8, 0x4($a0)
    /* F8BE4 800E9C34 1000000B */  b          .L800E9C64_F8C14
    /* F8BE8 800E9C38 AC8F0000 */   sw        $t7, 0x0($a0)
  .L800E9C3C_F8BEC:
    /* F8BEC 800E9C3C 24E7BB2C */  addiu      $a3, $a3, %lo(D_8005BB2C)
    /* F8BF0 800E9C40 8CE40000 */  lw         $a0, 0x0($a3)
    /* F8BF4 800E9C44 3C0EFCFF */  lui        $t6, (0xFCFFFFFF >> 16)
    /* F8BF8 800E9C48 3C0FFFFD */  lui        $t7, (0xFFFDF638 >> 16)
    /* F8BFC 800E9C4C 24990008 */  addiu      $t9, $a0, 0x8
    /* F8C00 800E9C50 ACF90000 */  sw         $t9, 0x0($a3)
    /* F8C04 800E9C54 35EFF638 */  ori        $t7, $t7, (0xFFFDF638 & 0xFFFF)
    /* F8C08 800E9C58 35CEFFFF */  ori        $t6, $t6, (0xFCFFFFFF & 0xFFFF)
    /* F8C0C 800E9C5C AC8E0000 */  sw         $t6, 0x0($a0)
    /* F8C10 800E9C60 AC8F0004 */  sw         $t7, 0x4($a0)
  .L800E9C64_F8C14:
    /* F8C14 800E9C64 87B80084 */  lh         $t8, 0x84($sp)
    /* F8C18 800E9C68 468080A0 */  cvt.s.w    $f2, $f16
    /* F8C1C 800E9C6C C7AE008C */  lwc1       $f14, 0x8C($sp)
    /* F8C20 800E9C70 44983000 */  mtc1       $t8, $f6
    /* F8C24 800E9C74 860F0000 */  lh         $t7, 0x0($s0)
    /* F8C28 800E9C78 3C038006 */  lui        $v1, %hi(D_8005BB34)
    /* F8C2C 800E9C7C 46803020 */  cvt.s.w    $f0, $f6
    /* F8C30 800E9C80 2463BB34 */  addiu      $v1, $v1, %lo(D_8005BB34)
    /* F8C34 800E9C84 46007487 */  neg.s      $f18, $f14
    /* F8C38 800E9C88 460C0202 */  mul.s      $f8, $f0, $f12
    /* F8C3C 800E9C8C 4600428D */  trunc.w.s  $f10, $f8
    /* F8C40 800E9C90 46121102 */  mul.s      $f4, $f2, $f18
    /* F8C44 800E9C94 44025000 */  mfc1       $v0, $f10
    /* F8C48 800E9C98 460E0202 */  mul.s      $f8, $f0, $f14
    /* F8C4C 800E9C9C 00027400 */  sll        $t6, $v0, 16
    /* F8C50 800E9CA0 460C1402 */  mul.s      $f16, $f2, $f12
    /* F8C54 800E9CA4 000E1403 */  sra        $v0, $t6, 16
    /* F8C58 800E9CA8 8C6E0000 */  lw         $t6, 0x0($v1)
    /* F8C5C 800E9CAC 01E2C021 */  addu       $t8, $t7, $v0
    /* F8C60 800E9CB0 4600218D */  trunc.w.s  $f6, $f4
    /* F8C64 800E9CB4 4600428D */  trunc.w.s  $f10, $f8
    /* F8C68 800E9CB8 44083000 */  mfc1       $t0, $f6
    /* F8C6C 800E9CBC 4600848D */  trunc.w.s  $f18, $f16
    /* F8C70 800E9CC0 0008CC00 */  sll        $t9, $t0, 16
    /* F8C74 800E9CC4 00194403 */  sra        $t0, $t9, 16
    /* F8C78 800E9CC8 44095000 */  mfc1       $t1, $f10
    /* F8C7C 800E9CCC 0308C821 */  addu       $t9, $t8, $t0
    /* F8C80 800E9CD0 440A9000 */  mfc1       $t2, $f18
    /* F8C84 800E9CD4 A5D90000 */  sh         $t9, 0x0($t6)
    /* F8C88 800E9CD8 86190004 */  lh         $t9, 0x4($s0)
    /* F8C8C 800E9CDC 0009C400 */  sll        $t8, $t1, 16
    /* F8C90 800E9CE0 00184C03 */  sra        $t1, $t8, 16
    /* F8C94 800E9CE4 8C780000 */  lw         $t8, 0x0($v1)
    /* F8C98 800E9CE8 000A7C00 */  sll        $t7, $t2, 16
    /* F8C9C 800E9CEC 000F5403 */  sra        $t2, $t7, 16
    /* F8CA0 800E9CF0 03297021 */  addu       $t6, $t9, $t1
    /* F8CA4 800E9CF4 01CA7821 */  addu       $t7, $t6, $t2
    /* F8CA8 800E9CF8 A70F0004 */  sh         $t7, 0x4($t8)
    /* F8CAC 800E9CFC 8C660000 */  lw         $a2, 0x0($v1)
    /* F8CB0 800E9D00 84C40000 */  lh         $a0, 0x0($a2)
    /* F8CB4 800E9D04 84C50004 */  lh         $a1, 0x4($a2)
    /* F8CB8 800E9D08 AFAD0074 */  sw         $t5, 0x74($sp)
    /* F8CBC 800E9D0C AFAA0024 */  sw         $t2, 0x24($sp)
    /* F8CC0 800E9D10 AFA90028 */  sw         $t1, 0x28($sp)
    /* F8CC4 800E9D14 AFA8002C */  sw         $t0, 0x2C($sp)
    /* F8CC8 800E9D18 01A0F809 */  jalr       $t5
    /* F8CCC 800E9D1C AFA20030 */   sw        $v0, 0x30($sp)
    /* F8CD0 800E9D20 3C038006 */  lui        $v1, %hi(D_8005BB34)
    /* F8CD4 800E9D24 2463BB34 */  addiu      $v1, $v1, %lo(D_8005BB34)
    /* F8CD8 800E9D28 8C790000 */  lw         $t9, 0x0($v1)
    /* F8CDC 800E9D2C 8FAD0074 */  lw         $t5, 0x74($sp)
    /* F8CE0 800E9D30 240E07DA */  addiu      $t6, $zero, 0x7DA
    /* F8CE4 800E9D34 A7220002 */  sh         $v0, 0x2($t9)
    /* F8CE8 800E9D38 8C6F0000 */  lw         $t7, 0x0($v1)
    /* F8CEC 800E9D3C A5EE000A */  sh         $t6, 0xA($t7)
    /* F8CF0 800E9D40 8C780000 */  lw         $t8, 0x0($v1)
    /* F8CF4 800E9D44 240F00FF */  addiu      $t7, $zero, 0xFF
    /* F8CF8 800E9D48 A7000008 */  sh         $zero, 0x8($t8)
    /* F8CFC 800E9D4C 8C790000 */  lw         $t9, 0x0($v1)
    /* F8D00 800E9D50 A320000E */  sb         $zero, 0xE($t9)
    /* F8D04 800E9D54 8C660000 */  lw         $a2, 0x0($v1)
    /* F8D08 800E9D58 90C8000E */  lbu        $t0, 0xE($a2)
    /* F8D0C 800E9D5C A0C8000D */  sb         $t0, 0xD($a2)
    /* F8D10 800E9D60 8C6E0000 */  lw         $t6, 0x0($v1)
    /* F8D14 800E9D64 A1C8000C */  sb         $t0, 0xC($t6)
    /* F8D18 800E9D68 8C780000 */  lw         $t8, 0x0($v1)
    /* F8D1C 800E9D6C A30F000F */  sb         $t7, 0xF($t8)
    /* F8D20 800E9D70 8C790000 */  lw         $t9, 0x0($v1)
    /* F8D24 800E9D74 8FB80030 */  lw         $t8, 0x30($sp)
    /* F8D28 800E9D78 272E0010 */  addiu      $t6, $t9, 0x10
    /* F8D2C 800E9D7C AC6E0000 */  sw         $t6, 0x0($v1)
    /* F8D30 800E9D80 860F0000 */  lh         $t7, 0x0($s0)
    /* F8D34 800E9D84 8FAE002C */  lw         $t6, 0x2C($sp)
    /* F8D38 800E9D88 01F8C823 */  subu       $t9, $t7, $t8
    /* F8D3C 800E9D8C 8C780000 */  lw         $t8, 0x0($v1)
    /* F8D40 800E9D90 032E7821 */  addu       $t7, $t9, $t6
    /* F8D44 800E9D94 A70F0000 */  sh         $t7, 0x0($t8)
    /* F8D48 800E9D98 8FAE0028 */  lw         $t6, 0x28($sp)
    /* F8D4C 800E9D9C 86190004 */  lh         $t9, 0x4($s0)
    /* F8D50 800E9DA0 8FB80024 */  lw         $t8, 0x24($sp)
    /* F8D54 800E9DA4 032E7823 */  subu       $t7, $t9, $t6
    /* F8D58 800E9DA8 8C6E0000 */  lw         $t6, 0x0($v1)
    /* F8D5C 800E9DAC 01F8C821 */  addu       $t9, $t7, $t8
    /* F8D60 800E9DB0 A5D90004 */  sh         $t9, 0x4($t6)
    /* F8D64 800E9DB4 8C660000 */  lw         $a2, 0x0($v1)
    /* F8D68 800E9DB8 84C40000 */  lh         $a0, 0x0($a2)
    /* F8D6C 800E9DBC 01A0F809 */  jalr       $t5
    /* F8D70 800E9DC0 84C50004 */   lh        $a1, 0x4($a2)
    /* F8D74 800E9DC4 3C038006 */  lui        $v1, %hi(D_8005BB34)
    /* F8D78 800E9DC8 2463BB34 */  addiu      $v1, $v1, %lo(D_8005BB34)
    /* F8D7C 800E9DCC 8C6F0000 */  lw         $t7, 0x0($v1)
    /* F8D80 800E9DD0 8FAD0074 */  lw         $t5, 0x74($sp)
    /* F8D84 800E9DD4 A5E20002 */  sh         $v0, 0x2($t7)
    /* F8D88 800E9DD8 8C780000 */  lw         $t8, 0x0($v1)
    /* F8D8C 800E9DDC A7000008 */  sh         $zero, 0x8($t8)
    /* F8D90 800E9DE0 8C790000 */  lw         $t9, 0x0($v1)
    /* F8D94 800E9DE4 241800FF */  addiu      $t8, $zero, 0xFF
    /* F8D98 800E9DE8 A720000A */  sh         $zero, 0xA($t9)
    /* F8D9C 800E9DEC 8C6E0000 */  lw         $t6, 0x0($v1)
    /* F8DA0 800E9DF0 A1C0000E */  sb         $zero, 0xE($t6)
    /* F8DA4 800E9DF4 8C660000 */  lw         $a2, 0x0($v1)
    /* F8DA8 800E9DF8 90C8000E */  lbu        $t0, 0xE($a2)
    /* F8DAC 800E9DFC A0C8000D */  sb         $t0, 0xD($a2)
    /* F8DB0 800E9E00 8C6F0000 */  lw         $t7, 0x0($v1)
    /* F8DB4 800E9E04 A1E8000C */  sb         $t0, 0xC($t7)
    /* F8DB8 800E9E08 8C790000 */  lw         $t9, 0x0($v1)
    /* F8DBC 800E9E0C A338000F */  sb         $t8, 0xF($t9)
    /* F8DC0 800E9E10 8C6E0000 */  lw         $t6, 0x0($v1)
    /* F8DC4 800E9E14 8FB90030 */  lw         $t9, 0x30($sp)
    /* F8DC8 800E9E18 25CF0010 */  addiu      $t7, $t6, 0x10
    /* F8DCC 800E9E1C AC6F0000 */  sw         $t7, 0x0($v1)
    /* F8DD0 800E9E20 86180000 */  lh         $t8, 0x0($s0)
    /* F8DD4 800E9E24 8FAF002C */  lw         $t7, 0x2C($sp)
    /* F8DD8 800E9E28 03197021 */  addu       $t6, $t8, $t9
    /* F8DDC 800E9E2C 8C790000 */  lw         $t9, 0x0($v1)
    /* F8DE0 800E9E30 01CFC023 */  subu       $t8, $t6, $t7
    /* F8DE4 800E9E34 A7380000 */  sh         $t8, 0x0($t9)
    /* F8DE8 800E9E38 8FAF0028 */  lw         $t7, 0x28($sp)
    /* F8DEC 800E9E3C 860E0004 */  lh         $t6, 0x4($s0)
    /* F8DF0 800E9E40 8FB90024 */  lw         $t9, 0x24($sp)
    /* F8DF4 800E9E44 01CFC021 */  addu       $t8, $t6, $t7
    /* F8DF8 800E9E48 8C6F0000 */  lw         $t7, 0x0($v1)
    /* F8DFC 800E9E4C 03197023 */  subu       $t6, $t8, $t9
    /* F8E00 800E9E50 A5EE0004 */  sh         $t6, 0x4($t7)
    /* F8E04 800E9E54 8C660000 */  lw         $a2, 0x0($v1)
    /* F8E08 800E9E58 84C40000 */  lh         $a0, 0x0($a2)
    /* F8E0C 800E9E5C 01A0F809 */  jalr       $t5
    /* F8E10 800E9E60 84C50004 */   lh        $a1, 0x4($a2)
    /* F8E14 800E9E64 3C038006 */  lui        $v1, %hi(D_8005BB34)
    /* F8E18 800E9E68 2463BB34 */  addiu      $v1, $v1, %lo(D_8005BB34)
    /* F8E1C 800E9E6C 8C780000 */  lw         $t8, 0x0($v1)
    /* F8E20 800E9E70 8FAD0074 */  lw         $t5, 0x74($sp)
    /* F8E24 800E9E74 240907DA */  addiu      $t1, $zero, 0x7DA
    /* F8E28 800E9E78 A7020002 */  sh         $v0, 0x2($t8)
    /* F8E2C 800E9E7C 8C790000 */  lw         $t9, 0x0($v1)
    /* F8E30 800E9E80 A7290008 */  sh         $t1, 0x8($t9)
    /* F8E34 800E9E84 8C6E0000 */  lw         $t6, 0x0($v1)
    /* F8E38 800E9E88 241900FF */  addiu      $t9, $zero, 0xFF
    /* F8E3C 800E9E8C A5C9000A */  sh         $t1, 0xA($t6)
    /* F8E40 800E9E90 8C6F0000 */  lw         $t7, 0x0($v1)
    /* F8E44 800E9E94 A1E0000E */  sb         $zero, 0xE($t7)
    /* F8E48 800E9E98 8C660000 */  lw         $a2, 0x0($v1)
    /* F8E4C 800E9E9C 90C8000E */  lbu        $t0, 0xE($a2)
    /* F8E50 800E9EA0 A0C8000D */  sb         $t0, 0xD($a2)
    /* F8E54 800E9EA4 8C780000 */  lw         $t8, 0x0($v1)
    /* F8E58 800E9EA8 A308000C */  sb         $t0, 0xC($t8)
    /* F8E5C 800E9EAC 8C6E0000 */  lw         $t6, 0x0($v1)
    /* F8E60 800E9EB0 A1D9000F */  sb         $t9, 0xF($t6)
    /* F8E64 800E9EB4 8C6F0000 */  lw         $t7, 0x0($v1)
    /* F8E68 800E9EB8 8FAE0030 */  lw         $t6, 0x30($sp)
    /* F8E6C 800E9EBC 25F80010 */  addiu      $t8, $t7, 0x10
    /* F8E70 800E9EC0 AC780000 */  sw         $t8, 0x0($v1)
    /* F8E74 800E9EC4 86190000 */  lh         $t9, 0x0($s0)
    /* F8E78 800E9EC8 8FB8002C */  lw         $t8, 0x2C($sp)
    /* F8E7C 800E9ECC 032E7823 */  subu       $t7, $t9, $t6
    /* F8E80 800E9ED0 8C6E0000 */  lw         $t6, 0x0($v1)
    /* F8E84 800E9ED4 01F8C823 */  subu       $t9, $t7, $t8
    /* F8E88 800E9ED8 A5D90000 */  sh         $t9, 0x0($t6)
    /* F8E8C 800E9EDC 8FB80028 */  lw         $t8, 0x28($sp)
    /* F8E90 800E9EE0 860F0004 */  lh         $t7, 0x4($s0)
    /* F8E94 800E9EE4 8FAE0024 */  lw         $t6, 0x24($sp)
    /* F8E98 800E9EE8 01F8C823 */  subu       $t9, $t7, $t8
    /* F8E9C 800E9EEC 8C780000 */  lw         $t8, 0x0($v1)
    /* F8EA0 800E9EF0 032E7823 */  subu       $t7, $t9, $t6
    /* F8EA4 800E9EF4 A70F0004 */  sh         $t7, 0x4($t8)
    /* F8EA8 800E9EF8 8C660000 */  lw         $a2, 0x0($v1)
    /* F8EAC 800E9EFC 84C40000 */  lh         $a0, 0x0($a2)
    /* F8EB0 800E9F00 01A0F809 */  jalr       $t5
    /* F8EB4 800E9F04 84C50004 */   lh        $a1, 0x4($a2)
    /* F8EB8 800E9F08 3C038006 */  lui        $v1, %hi(D_8005BB34)
    /* F8EBC 800E9F0C 2463BB34 */  addiu      $v1, $v1, %lo(D_8005BB34)
    /* F8EC0 800E9F10 8C790000 */  lw         $t9, 0x0($v1)
    /* F8EC4 800E9F14 8FAD0074 */  lw         $t5, 0x74($sp)
    /* F8EC8 800E9F18 240E07DA */  addiu      $t6, $zero, 0x7DA
    /* F8ECC 800E9F1C A7220002 */  sh         $v0, 0x2($t9)
    /* F8ED0 800E9F20 8C6F0000 */  lw         $t7, 0x0($v1)
    /* F8ED4 800E9F24 A5EE0008 */  sh         $t6, 0x8($t7)
    /* F8ED8 800E9F28 8C780000 */  lw         $t8, 0x0($v1)
    /* F8EDC 800E9F2C 240F00FF */  addiu      $t7, $zero, 0xFF
    /* F8EE0 800E9F30 A700000A */  sh         $zero, 0xA($t8)
    /* F8EE4 800E9F34 8C790000 */  lw         $t9, 0x0($v1)
    /* F8EE8 800E9F38 A320000E */  sb         $zero, 0xE($t9)
    /* F8EEC 800E9F3C 8C660000 */  lw         $a2, 0x0($v1)
    /* F8EF0 800E9F40 90C8000E */  lbu        $t0, 0xE($a2)
    /* F8EF4 800E9F44 A0C8000D */  sb         $t0, 0xD($a2)
    /* F8EF8 800E9F48 8C6E0000 */  lw         $t6, 0x0($v1)
    /* F8EFC 800E9F4C A1C8000C */  sb         $t0, 0xC($t6)
    /* F8F00 800E9F50 8C780000 */  lw         $t8, 0x0($v1)
    /* F8F04 800E9F54 A30F000F */  sb         $t7, 0xF($t8)
    /* F8F08 800E9F58 8C790000 */  lw         $t9, 0x0($v1)
    /* F8F0C 800E9F5C 272E0010 */  addiu      $t6, $t9, 0x10
    /* F8F10 800E9F60 AC6E0000 */  sw         $t6, 0x0($v1)
    /* F8F14 800E9F64 860F0000 */  lh         $t7, 0x0($s0)
    /* F8F18 800E9F68 A5CF0000 */  sh         $t7, 0x0($t6)
    /* F8F1C 800E9F6C 86190004 */  lh         $t9, 0x4($s0)
    /* F8F20 800E9F70 8C6E0000 */  lw         $t6, 0x0($v1)
    /* F8F24 800E9F74 A5D90004 */  sh         $t9, 0x4($t6)
    /* F8F28 800E9F78 86050004 */  lh         $a1, 0x4($s0)
    /* F8F2C 800E9F7C 01A0F809 */  jalr       $t5
    /* F8F30 800E9F80 86040000 */   lh        $a0, 0x0($s0)
    /* F8F34 800E9F84 3C038006 */  lui        $v1, %hi(D_8005BB34)
    /* F8F38 800E9F88 2463BB34 */  addiu      $v1, $v1, %lo(D_8005BB34)
    /* F8F3C 800E9F8C 8C6F0000 */  lw         $t7, 0x0($v1)
    /* F8F40 800E9F90 241803ED */  addiu      $t8, $zero, 0x3ED
    /* F8F44 800E9F94 3C078006 */  lui        $a3, %hi(D_8005BB2C)
    /* F8F48 800E9F98 A5E20002 */  sh         $v0, 0x2($t7)
    /* F8F4C 800E9F9C 8C790000 */  lw         $t9, 0x0($v1)
    /* F8F50 800E9FA0 24E7BB2C */  addiu      $a3, $a3, %lo(D_8005BB2C)
    /* F8F54 800E9FA4 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* F8F58 800E9FA8 A738000A */  sh         $t8, 0xA($t9)
    /* F8F5C 800E9FAC 8C660000 */  lw         $a2, 0x0($v1)
    /* F8F60 800E9FB0 241900FF */  addiu      $t9, $zero, 0xFF
    /* F8F64 800E9FB4 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* F8F68 800E9FB8 84CE000A */  lh         $t6, 0xA($a2)
    /* F8F6C 800E9FBC A4CE0008 */  sh         $t6, 0x8($a2)
    /* F8F70 800E9FC0 8C6F0000 */  lw         $t7, 0x0($v1)
    /* F8F74 800E9FC4 A1E0000E */  sb         $zero, 0xE($t7)
    /* F8F78 800E9FC8 8C660000 */  lw         $a2, 0x0($v1)
    /* F8F7C 800E9FCC 90C8000E */  lbu        $t0, 0xE($a2)
    /* F8F80 800E9FD0 A0C8000D */  sb         $t0, 0xD($a2)
    /* F8F84 800E9FD4 8C780000 */  lw         $t8, 0x0($v1)
    /* F8F88 800E9FD8 A308000C */  sb         $t0, 0xC($t8)
    /* F8F8C 800E9FDC 8C6E0000 */  lw         $t6, 0x0($v1)
    /* F8F90 800E9FE0 A1D9000F */  sb         $t9, 0xF($t6)
    /* F8F94 800E9FE4 8C6F0000 */  lw         $t7, 0x0($v1)
    /* F8F98 800E9FE8 8CE40000 */  lw         $a0, 0x0($a3)
    /* F8F9C 800E9FEC 3C0E0400 */  lui        $t6, (0x400144F >> 16)
    /* F8FA0 800E9FF0 25F80010 */  addiu      $t8, $t7, 0x10
    /* F8FA4 800E9FF4 24990008 */  addiu      $t9, $a0, 0x8
    /* F8FA8 800E9FF8 AC780000 */  sw         $t8, 0x0($v1)
    /* F8FAC 800E9FFC ACF90000 */  sw         $t9, 0x0($a3)
    /* F8FB0 800EA000 35CE144F */  ori        $t6, $t6, (0x400144F & 0xFFFF)
    /* F8FB4 800EA004 AC8E0000 */  sw         $t6, 0x0($a0)
    /* F8FB8 800EA008 8C6F0000 */  lw         $t7, 0x0($v1)
    /* F8FBC 800EA00C 25F8FFB0 */  addiu      $t8, $t7, -0x50
    /* F8FC0 800EA010 0301C824 */  and        $t9, $t8, $at
    /* F8FC4 800EA014 AC990004 */  sw         $t9, 0x4($a0)
    /* F8FC8 800EA018 8CE40000 */  lw         $a0, 0x0($a3)
    /* F8FCC 800EA01C 3C180006 */  lui        $t8, (0x60208 >> 16)
    /* F8FD0 800EA020 3C0FB102 */  lui        $t7, (0xB1020008 >> 16)
    /* F8FD4 800EA024 248E0008 */  addiu      $t6, $a0, 0x8
    /* F8FD8 800EA028 ACEE0000 */  sw         $t6, 0x0($a3)
    /* F8FDC 800EA02C 35EF0008 */  ori        $t7, $t7, (0xB1020008 & 0xFFFF)
    /* F8FE0 800EA030 37180208 */  ori        $t8, $t8, (0x60208 & 0xFFFF)
    /* F8FE4 800EA034 AC980004 */  sw         $t8, 0x4($a0)
    /* F8FE8 800EA038 AC8F0000 */  sw         $t7, 0x0($a0)
    /* F8FEC 800EA03C 8CE40000 */  lw         $a0, 0x0($a3)
    /* F8FF0 800EA040 3C0EB104 */  lui        $t6, (0xB1040608 >> 16)
    /* F8FF4 800EA044 35CE0608 */  ori        $t6, $t6, (0xB1040608 & 0xFFFF)
    /* F8FF8 800EA048 24990008 */  addiu      $t9, $a0, 0x8
    /* F8FFC 800EA04C ACF90000 */  sw         $t9, 0x0($a3)
    /* F9000 800EA050 240F0408 */  addiu      $t7, $zero, 0x408
    /* F9004 800EA054 AC8F0004 */  sw         $t7, 0x4($a0)
    /* F9008 800EA058 AC8E0000 */  sw         $t6, 0x0($a0)
    /* F900C 800EA05C 8CE40000 */  lw         $a0, 0x0($a3)
    /* F9010 800EA060 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
    /* F9014 800EA064 24980008 */  addiu      $t8, $a0, 0x8
    /* F9018 800EA068 ACF80000 */  sw         $t8, 0x0($a3)
    /* F901C 800EA06C AC800004 */  sw         $zero, 0x4($a0)
    /* F9020 800EA070 AC990000 */  sw         $t9, 0x0($a0)
  .L800EA074_F9024:
    /* F9024 800EA074 8FBF001C */  lw         $ra, 0x1C($sp)
  .L800EA078_F9028:
    /* F9028 800EA078 8FB00018 */  lw         $s0, 0x18($sp)
    /* F902C 800EA07C 27BD0090 */  addiu      $sp, $sp, 0x90
    /* F9030 800EA080 03E00008 */  jr         $ra
    /* F9034 800EA084 00000000 */   nop
endlabel func_800E988C_F883C
