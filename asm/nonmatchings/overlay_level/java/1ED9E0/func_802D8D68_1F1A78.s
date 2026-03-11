nonmatching func_802D8D68_1F1A78, 0x490

glabel func_802D8D68_1F1A78
    /* 1F1A78 802D8D68 308E00FF */  andi       $t6, $a0, 0xFF
    /* 1F1A7C 802D8D6C 000E7880 */  sll        $t7, $t6, 2
    /* 1F1A80 802D8D70 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* 1F1A84 802D8D74 01EE7821 */  addu       $t7, $t7, $t6
    /* 1F1A88 802D8D78 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 1F1A8C 802D8D7C AFB00020 */  sw         $s0, 0x20($sp)
    /* 1F1A90 802D8D80 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 1F1A94 802D8D84 000F7900 */  sll        $t7, $t7, 4
    /* 1F1A98 802D8D88 01F88021 */  addu       $s0, $t7, $t8
    /* 1F1A9C 802D8D8C 92190047 */  lbu        $t9, 0x47($s0)
    /* 1F1AA0 802D8D90 AFA40050 */  sw         $a0, 0x50($sp)
    /* 1F1AA4 802D8D94 01C02025 */  or         $a0, $t6, $zero
    /* 1F1AA8 802D8D98 33280001 */  andi       $t0, $t9, 0x1
    /* 1F1AAC 802D8D9C 11000005 */  beqz       $t0, .L802D8DB4_1F1AC4
    /* 1F1AB0 802D8DA0 AFBF0024 */   sw        $ra, 0x24($sp)
    /* 1F1AB4 802D8DA4 0C020193 */  jal        func_8008064C_8F5FC
    /* 1F1AB8 802D8DA8 A3AE0053 */   sb        $t6, 0x53($sp)
    /* 1F1ABC 802D8DAC 10000004 */  b          .L802D8DC0_1F1AD0
    /* 1F1AC0 802D8DB0 86090000 */   lh        $t1, 0x0($s0)
  .L802D8DB4_1F1AC4:
    /* 1F1AC4 802D8DB4 0C0201DB */  jal        func_8008076C_8F71C
    /* 1F1AC8 802D8DB8 A3A40053 */   sb        $a0, 0x53($sp)
    /* 1F1ACC 802D8DBC 86090000 */  lh         $t1, 0x0($s0)
  .L802D8DC0_1F1AD0:
    /* 1F1AD0 802D8DC0 860A0014 */  lh         $t2, 0x14($s0)
    /* 1F1AD4 802D8DC4 860B0004 */  lh         $t3, 0x4($s0)
    /* 1F1AD8 802D8DC8 860C0018 */  lh         $t4, 0x18($s0)
    /* 1F1ADC 802D8DCC 012A1023 */  subu       $v0, $t1, $t2
    /* 1F1AE0 802D8DD0 00420019 */  multu      $v0, $v0
    /* 1F1AE4 802D8DD4 016C1823 */  subu       $v1, $t3, $t4
    /* 1F1AE8 802D8DD8 3C010022 */  lui        $at, (0x225511 >> 16)
    /* 1F1AEC 802D8DDC 34215511 */  ori        $at, $at, (0x225511 & 0xFFFF)
    /* 1F1AF0 802D8DE0 00006812 */  mflo       $t5
    /* 1F1AF4 802D8DE4 00000000 */  nop
    /* 1F1AF8 802D8DE8 00000000 */  nop
    /* 1F1AFC 802D8DEC 00630019 */  multu      $v1, $v1
    /* 1F1B00 802D8DF0 00007012 */  mflo       $t6
    /* 1F1B04 802D8DF4 01AE2021 */  addu       $a0, $t5, $t6
    /* 1F1B08 802D8DF8 0081082A */  slt        $at, $a0, $at
    /* 1F1B0C 802D8DFC 50200008 */  beql       $at, $zero, .L802D8E20_1F1B30
    /* 1F1B10 802D8E00 8E190020 */   lw        $t9, 0x20($s0)
    /* 1F1B14 802D8E04 920F0047 */  lbu        $t7, 0x47($s0)
    /* 1F1B18 802D8E08 3C01000F */  lui        $at, (0xF4241 >> 16)
    /* 1F1B1C 802D8E0C 34214241 */  ori        $at, $at, (0xF4241 & 0xFFFF)
    /* 1F1B20 802D8E10 31F80001 */  andi       $t8, $t7, 0x1
    /* 1F1B24 802D8E14 13000008 */  beqz       $t8, .L802D8E38_1F1B48
    /* 1F1B28 802D8E18 0081082A */   slt       $at, $a0, $at
    /* 1F1B2C 802D8E1C 8E190020 */  lw         $t9, 0x20($s0)
  .L802D8E20_1F1B30:
    /* 1F1B30 802D8E20 2401F7BF */  addiu      $at, $zero, -0x841
    /* 1F1B34 802D8E24 37280100 */  ori        $t0, $t9, 0x100
    /* 1F1B38 802D8E28 AE080020 */  sw         $t0, 0x20($s0)
    /* 1F1B3C 802D8E2C 01015024 */  and        $t2, $t0, $at
    /* 1F1B40 802D8E30 10000010 */  b          .L802D8E74_1F1B84
    /* 1F1B44 802D8E34 AE0A0020 */   sw        $t2, 0x20($s0)
  .L802D8E38_1F1B48:
    /* 1F1B48 802D8E38 54200009 */  bnel       $at, $zero, .L802D8E60_1F1B70
    /* 1F1B4C 802D8E3C 8E0F0020 */   lw        $t7, 0x20($s0)
    /* 1F1B50 802D8E40 8E0B0020 */  lw         $t3, 0x20($s0)
    /* 1F1B54 802D8E44 2401FEBF */  addiu      $at, $zero, -0x141
    /* 1F1B58 802D8E48 356C0800 */  ori        $t4, $t3, 0x800
    /* 1F1B5C 802D8E4C AE0C0020 */  sw         $t4, 0x20($s0)
    /* 1F1B60 802D8E50 01817024 */  and        $t6, $t4, $at
    /* 1F1B64 802D8E54 10000007 */  b          .L802D8E74_1F1B84
    /* 1F1B68 802D8E58 AE0E0020 */   sw        $t6, 0x20($s0)
    /* 1F1B6C 802D8E5C 8E0F0020 */  lw         $t7, 0x20($s0)
  .L802D8E60_1F1B70:
    /* 1F1B70 802D8E60 2401F7FF */  addiu      $at, $zero, -0x801
    /* 1F1B74 802D8E64 35F80140 */  ori        $t8, $t7, 0x140
    /* 1F1B78 802D8E68 AE180020 */  sw         $t8, 0x20($s0)
    /* 1F1B7C 802D8E6C 03014024 */  and        $t0, $t8, $at
    /* 1F1B80 802D8E70 AE080020 */  sw         $t0, 0x20($s0)
  .L802D8E74_1F1B84:
    /* 1F1B84 802D8E74 8E020020 */  lw         $v0, 0x20($s0)
    /* 1F1B88 802D8E78 30491000 */  andi       $t1, $v0, 0x1000
    /* 1F1B8C 802D8E7C 11200032 */  beqz       $t1, .L802D8F48_1F1C58
    /* 1F1B90 802D8E80 00026840 */   sll       $t5, $v0, 1
    /* 1F1B94 802D8E84 8602002C */  lh         $v0, 0x2C($s0)
    /* 1F1B98 802D8E88 3C0E8022 */  lui        $t6, %hi(D_80222A70)
    /* 1F1B9C 802D8E8C 10400003 */  beqz       $v0, .L802D8E9C_1F1BAC
    /* 1F1BA0 802D8E90 244AFFFF */   addiu     $t2, $v0, -0x1
    /* 1F1BA4 802D8E94 10000004 */  b          .L802D8EA8_1F1BB8
    /* 1F1BA8 802D8E98 A60A002C */   sh        $t2, 0x2C($s0)
  .L802D8E9C_1F1BAC:
    /* 1F1BAC 802D8E9C 860B0010 */  lh         $t3, 0x10($s0)
    /* 1F1BB0 802D8EA0 256C0040 */  addiu      $t4, $t3, 0x40
    /* 1F1BB4 802D8EA4 A60C0010 */  sh         $t4, 0x10($s0)
  .L802D8EA8_1F1BB8:
    /* 1F1BB8 802D8EA8 860D0010 */  lh         $t5, 0x10($s0)
    /* 1F1BBC 802D8EAC 05A3001C */  bgezl      $t5, .L802D8F20_1F1C30
    /* 1F1BC0 802D8EB0 8E020020 */   lw        $v0, 0x20($s0)
    /* 1F1BC4 802D8EB4 8DCE2A70 */  lw         $t6, %lo(D_80222A70)($t6)
    /* 1F1BC8 802D8EB8 860F0002 */  lh         $t7, 0x2($s0)
    /* 1F1BCC 802D8EBC 01CF082A */  slt        $at, $t6, $t7
    /* 1F1BD0 802D8EC0 50200017 */  beql       $at, $zero, .L802D8F20_1F1C30
    /* 1F1BD4 802D8EC4 8E020020 */   lw        $v0, 0x20($s0)
    /* 1F1BD8 802D8EC8 8E180020 */  lw         $t8, 0x20($s0)
    /* 1F1BDC 802D8ECC A600001E */  sh         $zero, 0x1E($s0)
    /* 1F1BE0 802D8ED0 02002025 */  or         $a0, $s0, $zero
    /* 1F1BE4 802D8ED4 0018C900 */  sll        $t9, $t8, 4
    /* 1F1BE8 802D8ED8 07210007 */  bgez       $t9, .L802D8EF8_1F1C08
    /* 1F1BEC 802D8EDC 00002825 */   or        $a1, $zero, $zero
    /* 1F1BF0 802D8EE0 93A40053 */  lbu        $a0, 0x53($sp)
    /* 1F1BF4 802D8EE4 00002825 */  or         $a1, $zero, $zero
    /* 1F1BF8 802D8EE8 0C021C73 */  jal        func_800871CC_9617C
    /* 1F1BFC 802D8EEC 24060018 */   addiu     $a2, $zero, 0x18
    /* 1F1C00 802D8EF0 10000007 */  b          .L802D8F10_1F1C20
    /* 1F1C04 802D8EF4 8E090020 */   lw        $t1, 0x20($s0)
  .L802D8EF8_1F1C08:
    /* 1F1C08 802D8EF8 86080018 */  lh         $t0, 0x18($s0)
    /* 1F1C0C 802D8EFC 86060014 */  lh         $a2, 0x14($s0)
    /* 1F1C10 802D8F00 86070016 */  lh         $a3, 0x16($s0)
    /* 1F1C14 802D8F04 0C04A4D5 */  jal        func_80129354_138304
    /* 1F1C18 802D8F08 AFA80010 */   sw        $t0, 0x10($sp)
    /* 1F1C1C 802D8F0C 8E090020 */  lw         $t1, 0x20($s0)
  .L802D8F10_1F1C20:
    /* 1F1C20 802D8F10 2401EFFF */  addiu      $at, $zero, -0x1001
    /* 1F1C24 802D8F14 01215024 */  and        $t2, $t1, $at
    /* 1F1C28 802D8F18 AE0A0020 */  sw         $t2, 0x20($s0)
    /* 1F1C2C 802D8F1C 8E020020 */  lw         $v0, 0x20($s0)
  .L802D8F20_1F1C30:
    /* 1F1C30 802D8F20 3C038022 */  lui        $v1, %hi(D_80222A70)
    /* 1F1C34 802D8F24 3C044000 */  lui        $a0, (0x40000000 >> 16)
    /* 1F1C38 802D8F28 00025840 */  sll        $t3, $v0, 1
    /* 1F1C3C 802D8F2C 05600004 */  bltz       $t3, .L802D8F40_1F1C50
    /* 1F1C40 802D8F30 8C632A70 */   lw        $v1, %lo(D_80222A70)($v1)
    /* 1F1C44 802D8F34 00446025 */  or         $t4, $v0, $a0
    /* 1F1C48 802D8F38 AE0C0020 */  sw         $t4, 0x20($s0)
    /* 1F1C4C 802D8F3C A600002C */  sh         $zero, 0x2C($s0)
  .L802D8F40_1F1C50:
    /* 1F1C50 802D8F40 1000006F */  b          .L802D9100_1F1E10
    /* 1F1C54 802D8F44 86020002 */   lh        $v0, 0x2($s0)
  .L802D8F48_1F1C58:
    /* 1F1C58 802D8F48 05A10016 */  bgez       $t5, .L802D8FA4_1F1CB4
    /* 1F1C5C 802D8F4C 3C038022 */   lui       $v1, %hi(D_80222A70)
    /* 1F1C60 802D8F50 86020002 */  lh         $v0, 0x2($s0)
    /* 1F1C64 802D8F54 8C632A70 */  lw         $v1, %lo(D_80222A70)($v1)
    /* 1F1C68 802D8F58 0043082A */  slt        $at, $v0, $v1
    /* 1F1C6C 802D8F5C 10200007 */  beqz       $at, .L802D8F7C_1F1C8C
    /* 1F1C70 802D8F60 246FFFEC */   addiu     $t7, $v1, -0x14
    /* 1F1C74 802D8F64 86040010 */  lh         $a0, 0x10($s0)
    /* 1F1C78 802D8F68 2881FFA0 */  slti       $at, $a0, -0x60
    /* 1F1C7C 802D8F6C 10200003 */  beqz       $at, .L802D8F7C_1F1C8C
    /* 1F1C80 802D8F70 248E0040 */   addiu     $t6, $a0, 0x40
    /* 1F1C84 802D8F74 A60E0010 */  sh         $t6, 0x10($s0)
    /* 1F1C88 802D8F78 86020002 */  lh         $v0, 0x2($s0)
  .L802D8F7C_1F1C8C:
    /* 1F1C8C 802D8F7C 004F082A */  slt        $at, $v0, $t7
    /* 1F1C90 802D8F80 50200060 */  beql       $at, $zero, .L802D9104_1F1E14
    /* 1F1C94 802D8F84 24790005 */   addiu     $t9, $v1, 0x5
    /* 1F1C98 802D8F88 8E180020 */  lw         $t8, 0x20($s0)
    /* 1F1C9C 802D8F8C 3C01BFFF */  lui        $at, (0xBFFFFFFF >> 16)
    /* 1F1CA0 802D8F90 3421FFFF */  ori        $at, $at, (0xBFFFFFFF & 0xFFFF)
    /* 1F1CA4 802D8F94 0301C824 */  and        $t9, $t8, $at
    /* 1F1CA8 802D8F98 AE190020 */  sw         $t9, 0x20($s0)
    /* 1F1CAC 802D8F9C 10000058 */  b          .L802D9100_1F1E10
    /* 1F1CB0 802D8FA0 86020002 */   lh        $v0, 0x2($s0)
  .L802D8FA4_1F1CB4:
    /* 1F1CB4 802D8FA4 0C000E38 */  jal        func_800038E0_44E0
    /* 1F1CB8 802D8FA8 00000000 */   nop
    /* 1F1CBC 802D8FAC 284103E8 */  slti       $at, $v0, 0x3E8
    /* 1F1CC0 802D8FB0 10200050 */  beqz       $at, .L802D90F4_1F1E04
    /* 1F1CC4 802D8FB4 3C038022 */   lui       $v1, %hi(D_80222A70)
    /* 1F1CC8 802D8FB8 8608001E */  lh         $t0, 0x1E($s0)
    /* 1F1CCC 802D8FBC 5500004E */  bnel       $t0, $zero, .L802D90F8_1F1E08
    /* 1F1CD0 802D8FC0 A6000010 */   sh        $zero, 0x10($s0)
    /* 1F1CD4 802D8FC4 86090012 */  lh         $t1, 0x12($s0)
    /* 1F1CD8 802D8FC8 29210081 */  slti       $at, $t1, 0x81
    /* 1F1CDC 802D8FCC 5420004A */  bnel       $at, $zero, .L802D90F8_1F1E08
    /* 1F1CE0 802D8FD0 A6000010 */   sh        $zero, 0x10($s0)
    /* 1F1CE4 802D8FD4 86020000 */  lh         $v0, 0x0($s0)
    /* 1F1CE8 802D8FD8 86030004 */  lh         $v1, 0x4($s0)
    /* 1F1CEC 802D8FDC 24061000 */  addiu      $a2, $zero, 0x1000
    /* 1F1CF0 802D8FE0 00026203 */  sra        $t4, $v0, 8
    /* 1F1CF4 802D8FE4 00037A03 */  sra        $t7, $v1, 8
    /* 1F1CF8 802D8FE8 25E5FFFF */  addiu      $a1, $t7, -0x1
    /* 1F1CFC 802D8FEC 2584FFFF */  addiu      $a0, $t4, -0x1
    /* 1F1D00 802D8FF0 0004C600 */  sll        $t8, $a0, 24
    /* 1F1D04 802D8FF4 00054600 */  sll        $t0, $a1, 24
    /* 1F1D08 802D8FF8 00082E03 */  sra        $a1, $t0, 24
    /* 1F1D0C 802D8FFC 00182603 */  sra        $a0, $t8, 24
    /* 1F1D10 802D9000 AFA40034 */  sw         $a0, 0x34($sp)
    /* 1F1D14 802D9004 AFA50030 */  sw         $a1, 0x30($sp)
    /* 1F1D18 802D9008 A3AF0042 */  sb         $t7, 0x42($sp)
    /* 1F1D1C 802D900C 0C02CC97 */  jal        func_800B325C_C220C
    /* 1F1D20 802D9010 A3AC0043 */   sb        $t4, 0x43($sp)
    /* 1F1D24 802D9014 10400033 */  beqz       $v0, .L802D90E4_1F1DF4
    /* 1F1D28 802D9018 83A40037 */   lb        $a0, 0x37($sp)
    /* 1F1D2C 802D901C 83A50042 */  lb         $a1, 0x42($sp)
    /* 1F1D30 802D9020 0C02CC97 */  jal        func_800B325C_C220C
    /* 1F1D34 802D9024 24061000 */   addiu     $a2, $zero, 0x1000
    /* 1F1D38 802D9028 1040002E */  beqz       $v0, .L802D90E4_1F1DF4
    /* 1F1D3C 802D902C 83A50042 */   lb        $a1, 0x42($sp)
    /* 1F1D40 802D9030 24A50001 */  addiu      $a1, $a1, 0x1
    /* 1F1D44 802D9034 00055600 */  sll        $t2, $a1, 24
    /* 1F1D48 802D9038 000A2E03 */  sra        $a1, $t2, 24
    /* 1F1D4C 802D903C AFA5002C */  sw         $a1, 0x2C($sp)
    /* 1F1D50 802D9040 83A40037 */  lb         $a0, 0x37($sp)
    /* 1F1D54 802D9044 0C02CC97 */  jal        func_800B325C_C220C
    /* 1F1D58 802D9048 24061000 */   addiu     $a2, $zero, 0x1000
    /* 1F1D5C 802D904C 10400025 */  beqz       $v0, .L802D90E4_1F1DF4
    /* 1F1D60 802D9050 83A40043 */   lb        $a0, 0x43($sp)
    /* 1F1D64 802D9054 24840001 */  addiu      $a0, $a0, 0x1
    /* 1F1D68 802D9058 00046600 */  sll        $t4, $a0, 24
    /* 1F1D6C 802D905C 000C2603 */  sra        $a0, $t4, 24
    /* 1F1D70 802D9060 AFA40034 */  sw         $a0, 0x34($sp)
    /* 1F1D74 802D9064 83A50033 */  lb         $a1, 0x33($sp)
    /* 1F1D78 802D9068 0C02CC97 */  jal        func_800B325C_C220C
    /* 1F1D7C 802D906C 24061000 */   addiu     $a2, $zero, 0x1000
    /* 1F1D80 802D9070 1040001C */  beqz       $v0, .L802D90E4_1F1DF4
    /* 1F1D84 802D9074 83A40037 */   lb        $a0, 0x37($sp)
    /* 1F1D88 802D9078 83A50042 */  lb         $a1, 0x42($sp)
    /* 1F1D8C 802D907C 0C02CC97 */  jal        func_800B325C_C220C
    /* 1F1D90 802D9080 24061000 */   addiu     $a2, $zero, 0x1000
    /* 1F1D94 802D9084 10400017 */  beqz       $v0, .L802D90E4_1F1DF4
    /* 1F1D98 802D9088 83A40037 */   lb        $a0, 0x37($sp)
    /* 1F1D9C 802D908C 83A5002F */  lb         $a1, 0x2F($sp)
    /* 1F1DA0 802D9090 0C02CC97 */  jal        func_800B325C_C220C
    /* 1F1DA4 802D9094 24061000 */   addiu     $a2, $zero, 0x1000
    /* 1F1DA8 802D9098 10400012 */  beqz       $v0, .L802D90E4_1F1DF4
    /* 1F1DAC 802D909C 83A40043 */   lb        $a0, 0x43($sp)
    /* 1F1DB0 802D90A0 83A50033 */  lb         $a1, 0x33($sp)
    /* 1F1DB4 802D90A4 0C02CC97 */  jal        func_800B325C_C220C
    /* 1F1DB8 802D90A8 24061000 */   addiu     $a2, $zero, 0x1000
    /* 1F1DBC 802D90AC 1040000D */  beqz       $v0, .L802D90E4_1F1DF4
    /* 1F1DC0 802D90B0 83A40043 */   lb        $a0, 0x43($sp)
    /* 1F1DC4 802D90B4 83A5002F */  lb         $a1, 0x2F($sp)
    /* 1F1DC8 802D90B8 0C02CC97 */  jal        func_800B325C_C220C
    /* 1F1DCC 802D90BC 24061000 */   addiu     $a2, $zero, 0x1000
    /* 1F1DD0 802D90C0 10400008 */  beqz       $v0, .L802D90E4_1F1DF4
    /* 1F1DD4 802D90C4 3C014000 */   lui       $at, (0x40001000 >> 16)
    /* 1F1DD8 802D90C8 8E0E0020 */  lw         $t6, 0x20($s0)
    /* 1F1DDC 802D90CC 34211000 */  ori        $at, $at, (0x40001000 & 0xFFFF)
    /* 1F1DE0 802D90D0 24180006 */  addiu      $t8, $zero, 0x6
    /* 1F1DE4 802D90D4 01C17825 */  or         $t7, $t6, $at
    /* 1F1DE8 802D90D8 AE0F0020 */  sw         $t7, 0x20($s0)
    /* 1F1DEC 802D90DC A618002C */  sh         $t8, 0x2C($s0)
    /* 1F1DF0 802D90E0 A6000010 */  sh         $zero, 0x10($s0)
  .L802D90E4_1F1DF4:
    /* 1F1DF4 802D90E4 3C038022 */  lui        $v1, %hi(D_80222A70)
    /* 1F1DF8 802D90E8 8C632A70 */  lw         $v1, %lo(D_80222A70)($v1)
    /* 1F1DFC 802D90EC 10000004 */  b          .L802D9100_1F1E10
    /* 1F1E00 802D90F0 86020002 */   lh        $v0, 0x2($s0)
  .L802D90F4_1F1E04:
    /* 1F1E04 802D90F4 A6000010 */  sh         $zero, 0x10($s0)
  .L802D90F8_1F1E08:
    /* 1F1E08 802D90F8 8C632A70 */  lw         $v1, %lo(D_80222A70)($v1)
    /* 1F1E0C 802D90FC 86020002 */  lh         $v0, 0x2($s0)
  .L802D9100_1F1E10:
    /* 1F1E10 802D9100 24790005 */  addiu      $t9, $v1, 0x5
  .L802D9104_1F1E14:
    /* 1F1E14 802D9104 0059082A */  slt        $at, $v0, $t9
    /* 1F1E18 802D9108 50200004 */  beql       $at, $zero, .L802D911C_1F1E2C
    /* 1F1E1C 802D910C 8608000C */   lh        $t0, 0xC($s0)
    /* 1F1E20 802D9110 0C03892E */  jal        func_800E24B8_F1468
    /* 1F1E24 802D9114 93A40053 */   lbu       $a0, 0x53($sp)
    /* 1F1E28 802D9118 8608000C */  lh         $t0, 0xC($s0)
  .L802D911C_1F1E2C:
    /* 1F1E2C 802D911C 3C068015 */  lui        $a2, %hi(D_8014DD50)
    /* 1F1E30 802D9120 24C6DD50 */  addiu      $a2, $a2, %lo(D_8014DD50)
    /* 1F1E34 802D9124 00084900 */  sll        $t1, $t0, 4
    /* 1F1E38 802D9128 00C95021 */  addu       $t2, $a2, $t1
    /* 1F1E3C 802D912C 8142000C */  lb         $v0, 0xC($t2)
    /* 1F1E40 802D9130 860C0010 */  lh         $t4, 0x10($s0)
    /* 1F1E44 802D9134 3C088005 */  lui        $t0, %hi(D_80052A8C)
    /* 1F1E48 802D9138 00025900 */  sll        $t3, $v0, 4
    /* 1F1E4C 802D913C 00CB2821 */  addu       $a1, $a2, $t3
    /* 1F1E50 802D9140 000C6823 */  negu       $t5, $t4
    /* 1F1E54 802D9144 80A3000D */  lb         $v1, 0xD($a1)
    /* 1F1E58 802D9148 000D70C0 */  sll        $t6, $t5, 3
    /* 1F1E5C 802D914C A60E000A */  sh         $t6, 0xA($s0)
    /* 1F1E60 802D9150 8618000A */  lh         $t8, 0xA($s0)
    /* 1F1E64 802D9154 00037900 */  sll        $t7, $v1, 4
    /* 1F1E68 802D9158 00CF3821 */  addu       $a3, $a2, $t7
    /* 1F1E6C 802D915C A4F8000A */  sh         $t8, 0xA($a3)
    /* 1F1E70 802D9160 8D082A8C */  lw         $t0, %lo(D_80052A8C)($t0)
    /* 1F1E74 802D9164 93B90053 */  lbu        $t9, 0x53($sp)
    /* 1F1E78 802D9168 AFA7002C */  sw         $a3, 0x2C($sp)
    /* 1F1E7C 802D916C AFA50030 */  sw         $a1, 0x30($sp)
    /* 1F1E80 802D9170 03282021 */  addu       $a0, $t9, $t0
    /* 1F1E84 802D9174 00044940 */  sll        $t1, $a0, 5
    /* 1F1E88 802D9178 01244823 */  subu       $t1, $t1, $a0
    /* 1F1E8C 802D917C 00094880 */  sll        $t1, $t1, 2
    /* 1F1E90 802D9180 01244821 */  addu       $t1, $t1, $a0
    /* 1F1E94 802D9184 00094900 */  sll        $t1, $t1, 4
    /* 1F1E98 802D9188 0C007660 */  jal        sins
    /* 1F1E9C 802D918C 3124FFFF */   andi      $a0, $t1, 0xFFFF
    /* 1F1EA0 802D9190 44822000 */  mtc1       $v0, $f4
    /* 1F1EA4 802D9194 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 1F1EA8 802D9198 44815800 */  mtc1       $at, $f11
    /* 1F1EAC 802D919C 468021A0 */  cvt.s.w    $f6, $f4
    /* 1F1EB0 802D91A0 44805000 */  mtc1       $zero, $f10
    /* 1F1EB4 802D91A4 3C01802E */  lui        $at, %hi(D_802E0F58)
    /* 1F1EB8 802D91A8 D4320F58 */  ldc1       $f18, %lo(D_802E0F58)($at)
    /* 1F1EBC 802D91AC 8FA50030 */  lw         $a1, 0x30($sp)
    /* 1F1EC0 802D91B0 8603001E */  lh         $v1, 0x1E($s0)
    /* 1F1EC4 802D91B4 46003221 */  cvt.d.s    $f8, $f6
    /* 1F1EC8 802D91B8 8FA7002C */  lw         $a3, 0x2C($sp)
    /* 1F1ECC 802D91BC 462A4403 */  div.d      $f16, $f8, $f10
    /* 1F1ED0 802D91C0 246EFFFF */  addiu      $t6, $v1, -0x1
    /* 1F1ED4 802D91C4 46328102 */  mul.d      $f4, $f16, $f18
    /* 1F1ED8 802D91C8 4620218D */  trunc.w.d  $f6, $f4
    /* 1F1EDC 802D91CC 440D3000 */  mfc1       $t5, $f6
    /* 1F1EE0 802D91D0 00000000 */  nop
    /* 1F1EE4 802D91D4 A4AD0006 */  sh         $t5, 0x6($a1)
    /* 1F1EE8 802D91D8 10600002 */  beqz       $v1, .L802D91E4_1F1EF4
    /* 1F1EEC 802D91DC A4ED0006 */   sh        $t5, 0x6($a3)
    /* 1F1EF0 802D91E0 A60E001E */  sh         $t6, 0x1E($s0)
  .L802D91E4_1F1EF4:
    /* 1F1EF4 802D91E4 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 1F1EF8 802D91E8 8FB00020 */  lw         $s0, 0x20($sp)
    /* 1F1EFC 802D91EC 27BD0050 */  addiu      $sp, $sp, 0x50
    /* 1F1F00 802D91F0 03E00008 */  jr         $ra
    /* 1F1F04 802D91F4 00000000 */   nop
endlabel func_802D8D68_1F1A78
