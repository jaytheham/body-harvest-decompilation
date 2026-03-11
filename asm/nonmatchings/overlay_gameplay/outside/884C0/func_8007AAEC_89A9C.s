nonmatching func_8007AAEC_89A9C, 0x4A0

glabel func_8007AAEC_89A9C
    /* 89A9C 8007AAEC 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 89AA0 8007AAF0 AFB10028 */  sw         $s1, 0x28($sp)
    /* 89AA4 8007AAF4 AFB00024 */  sw         $s0, 0x24($sp)
    /* 89AA8 8007AAF8 AFBF002C */  sw         $ra, 0x2C($sp)
    /* 89AAC 8007AAFC 3C118016 */  lui        $s1, %hi(D_80158FEC)
    /* 89AB0 8007AB00 3C108005 */  lui        $s0, %hi(D_80052B34)
    /* 89AB4 8007AB04 8E318FEC */  lw         $s1, %lo(D_80158FEC)($s1)
    /* 89AB8 8007AB08 0C01EBE3 */  jal        func_8007AF8C_89F3C
    /* 89ABC 8007AB0C 8E102B34 */   lw        $s0, %lo(D_80052B34)($s0)
    /* 89AC0 8007AB10 0C01F5A4 */  jal        func_8007D690_8C640
    /* 89AC4 8007AB14 00000000 */   nop
    /* 89AC8 8007AB18 0C01F509 */  jal        func_8007D424_8C3D4
    /* 89ACC 8007AB1C 00000000 */   nop
    /* 89AD0 8007AB20 0C01FF76 */  jal        func_8007FDD8_8ED88
    /* 89AD4 8007AB24 00000000 */   nop
    /* 89AD8 8007AB28 24040001 */  addiu      $a0, $zero, 0x1
    /* 89ADC 8007AB2C 0C000D61 */  jal        isButtonNewlyPressed
    /* 89AE0 8007AB30 24050010 */   addiu     $a1, $zero, 0x10
    /* 89AE4 8007AB34 50400111 */  beql       $v0, $zero, .L8007AF7C_89F2C
    /* 89AE8 8007AB38 8FBF002C */   lw        $ra, 0x2C($sp)
    /* 89AEC 8007AB3C 1200005C */  beqz       $s0, .L8007ACB0_89C60
    /* 89AF0 8007AB40 3C0E8005 */   lui       $t6, %hi(vehicleInstances)
    /* 89AF4 8007AB44 25CEDCD0 */  addiu      $t6, $t6, %lo(vehicleInstances)
    /* 89AF8 8007AB48 020E2823 */  subu       $a1, $s0, $t6
    /* 89AFC 8007AB4C 2401005C */  addiu      $at, $zero, 0x5C
    /* 89B00 8007AB50 00A1001A */  div        $zero, $a1, $at
    /* 89B04 8007AB54 00002812 */  mflo       $a1
    /* 89B08 8007AB58 3C048014 */  lui        $a0, %hi(D_80141990)
    /* 89B0C 8007AB5C 0C00731B */  jal        osSyncPrintf
    /* 89B10 8007AB60 24841990 */   addiu     $a0, $a0, %lo(D_80141990)
    /* 89B14 8007AB64 9218001A */  lbu        $t8, 0x1A($s0)
    /* 89B18 8007AB68 3C088025 */  lui        $t0, %hi(D_80257A18)
    /* 89B1C 8007AB6C 3C058003 */  lui        $a1, %hi(D_800344B4)
    /* 89B20 8007AB70 0018C8C0 */  sll        $t9, $t8, 3
    /* 89B24 8007AB74 0338C823 */  subu       $t9, $t9, $t8
    /* 89B28 8007AB78 0019C900 */  sll        $t9, $t9, 4
    /* 89B2C 8007AB7C 01194021 */  addu       $t0, $t0, $t9
    /* 89B30 8007AB80 8D087A18 */  lw         $t0, %lo(D_80257A18)($t0)
    /* 89B34 8007AB84 3C048014 */  lui        $a0, %hi(D_8014199C)
    /* 89B38 8007AB88 2484199C */  addiu      $a0, $a0, %lo(D_8014199C)
    /* 89B3C 8007AB8C 000848C0 */  sll        $t1, $t0, 3
    /* 89B40 8007AB90 00A92821 */  addu       $a1, $a1, $t1
    /* 89B44 8007AB94 0C00731B */  jal        osSyncPrintf
    /* 89B48 8007AB98 8CA544B4 */   lw        $a1, %lo(D_800344B4)($a1)
    /* 89B4C 8007AB9C 3C048014 */  lui        $a0, %hi(D_801419A8)
    /* 89B50 8007ABA0 248419A8 */  addiu      $a0, $a0, %lo(D_801419A8)
    /* 89B54 8007ABA4 86050000 */  lh         $a1, 0x0($s0)
    /* 89B58 8007ABA8 86060002 */  lh         $a2, 0x2($s0)
    /* 89B5C 8007ABAC 0C00731B */  jal        osSyncPrintf
    /* 89B60 8007ABB0 86070004 */   lh        $a3, 0x4($s0)
    /* 89B64 8007ABB4 3C048014 */  lui        $a0, %hi(D_801419B8)
    /* 89B68 8007ABB8 248419B8 */  addiu      $a0, $a0, %lo(D_801419B8)
    /* 89B6C 8007ABBC 86050006 */  lh         $a1, 0x6($s0)
    /* 89B70 8007ABC0 8606000A */  lh         $a2, 0xA($s0)
    /* 89B74 8007ABC4 0C00731B */  jal        osSyncPrintf
    /* 89B78 8007ABC8 86070008 */   lh        $a3, 0x8($s0)
    /* 89B7C 8007ABCC 3C048014 */  lui        $a0, %hi(D_801419C8)
    /* 89B80 8007ABD0 248419C8 */  addiu      $a0, $a0, %lo(D_801419C8)
    /* 89B84 8007ABD4 0C00731B */  jal        osSyncPrintf
    /* 89B88 8007ABD8 8605000E */   lh        $a1, 0xE($s0)
    /* 89B8C 8007ABDC 3C048014 */  lui        $a0, %hi(D_801419D8)
    /* 89B90 8007ABE0 248419D8 */  addiu      $a0, $a0, %lo(D_801419D8)
    /* 89B94 8007ABE4 0C00731B */  jal        osSyncPrintf
    /* 89B98 8007ABE8 86050010 */   lh        $a1, 0x10($s0)
    /* 89B9C 8007ABEC 3C048014 */  lui        $a0, %hi(D_801419E8)
    /* 89BA0 8007ABF0 248419E8 */  addiu      $a0, $a0, %lo(D_801419E8)
    /* 89BA4 8007ABF4 0C00731B */  jal        osSyncPrintf
    /* 89BA8 8007ABF8 86050012 */   lh        $a1, 0x12($s0)
    /* 89BAC 8007ABFC C6080034 */  lwc1       $f8, 0x34($s0)
    /* 89BB0 8007AC00 C6040030 */  lwc1       $f4, 0x30($s0)
    /* 89BB4 8007AC04 3C048014 */  lui        $a0, %hi(D_801419F4)
    /* 89BB8 8007AC08 460042A1 */  cvt.d.s    $f10, $f8
    /* 89BBC 8007AC0C 460021A1 */  cvt.d.s    $f6, $f4
    /* 89BC0 8007AC10 F7AA0010 */  sdc1       $f10, 0x10($sp)
    /* 89BC4 8007AC14 C6100038 */  lwc1       $f16, 0x38($s0)
    /* 89BC8 8007AC18 44073000 */  mfc1       $a3, $f6
    /* 89BCC 8007AC1C 44063800 */  mfc1       $a2, $f7
    /* 89BD0 8007AC20 460084A1 */  cvt.d.s    $f18, $f16
    /* 89BD4 8007AC24 248419F4 */  addiu      $a0, $a0, %lo(D_801419F4)
    /* 89BD8 8007AC28 0C00731B */  jal        osSyncPrintf
    /* 89BDC 8007AC2C F7B20018 */   sdc1      $f18, 0x18($sp)
    /* 89BE0 8007AC30 3C048014 */  lui        $a0, %hi(D_80141A04)
    /* 89BE4 8007AC34 24841A04 */  addiu      $a0, $a0, %lo(D_80141A04)
    /* 89BE8 8007AC38 0C00731B */  jal        osSyncPrintf
    /* 89BEC 8007AC3C 96050020 */   lhu       $a1, 0x20($s0)
    /* 89BF0 8007AC40 96020020 */  lhu        $v0, 0x20($s0)
    /* 89BF4 8007AC44 3C048014 */  lui        $a0, %hi(D_80141A10)
    /* 89BF8 8007AC48 304A0002 */  andi       $t2, $v0, 0x2
    /* 89BFC 8007AC4C 51400005 */  beql       $t2, $zero, .L8007AC64_89C14
    /* 89C00 8007AC50 304B0800 */   andi      $t3, $v0, 0x800
    /* 89C04 8007AC54 0C00731B */  jal        osSyncPrintf
    /* 89C08 8007AC58 24841A10 */   addiu     $a0, $a0, %lo(D_80141A10)
    /* 89C0C 8007AC5C 96020020 */  lhu        $v0, 0x20($s0)
    /* 89C10 8007AC60 304B0800 */  andi       $t3, $v0, 0x800
  .L8007AC64_89C14:
    /* 89C14 8007AC64 11600004 */  beqz       $t3, .L8007AC78_89C28
    /* 89C18 8007AC68 3C048014 */   lui       $a0, %hi(D_80141A1C)
    /* 89C1C 8007AC6C 0C00731B */  jal        osSyncPrintf
    /* 89C20 8007AC70 24841A1C */   addiu     $a0, $a0, %lo(D_80141A1C)
    /* 89C24 8007AC74 96020020 */  lhu        $v0, 0x20($s0)
  .L8007AC78_89C28:
    /* 89C28 8007AC78 304C0004 */  andi       $t4, $v0, 0x4
    /* 89C2C 8007AC7C 11800004 */  beqz       $t4, .L8007AC90_89C40
    /* 89C30 8007AC80 3C048014 */   lui       $a0, %hi(D_80141A28)
    /* 89C34 8007AC84 0C00731B */  jal        osSyncPrintf
    /* 89C38 8007AC88 24841A28 */   addiu     $a0, $a0, %lo(D_80141A28)
    /* 89C3C 8007AC8C 96020020 */  lhu        $v0, 0x20($s0)
  .L8007AC90_89C40:
    /* 89C40 8007AC90 304D0008 */  andi       $t5, $v0, 0x8
    /* 89C44 8007AC94 11A00003 */  beqz       $t5, .L8007ACA4_89C54
    /* 89C48 8007AC98 3C048014 */   lui       $a0, %hi(D_80141A38)
    /* 89C4C 8007AC9C 0C00731B */  jal        osSyncPrintf
    /* 89C50 8007ACA0 24841A38 */   addiu     $a0, $a0, %lo(D_80141A38)
  .L8007ACA4_89C54:
    /* 89C54 8007ACA4 3C048014 */  lui        $a0, %hi(D_80141A48)
    /* 89C58 8007ACA8 0C00731B */  jal        osSyncPrintf
    /* 89C5C 8007ACAC 24841A48 */   addiu     $a0, $a0, %lo(D_80141A48)
  .L8007ACB0_89C60:
    /* 89C60 8007ACB0 122000B1 */  beqz       $s1, .L8007AF78_89F28
    /* 89C64 8007ACB4 3C0E8005 */   lui       $t6, %hi(alienInstances)
    /* 89C68 8007ACB8 25CE8198 */  addiu      $t6, $t6, %lo(alienInstances)
    /* 89C6C 8007ACBC 022E2823 */  subu       $a1, $s1, $t6
    /* 89C70 8007ACC0 24010050 */  addiu      $at, $zero, 0x50
    /* 89C74 8007ACC4 00A1001A */  div        $zero, $a1, $at
    /* 89C78 8007ACC8 00002812 */  mflo       $a1
    /* 89C7C 8007ACCC 3C048014 */  lui        $a0, %hi(D_80141A4C)
    /* 89C80 8007ACD0 0C00731B */  jal        osSyncPrintf
    /* 89C84 8007ACD4 24841A4C */   addiu     $a0, $a0, %lo(D_80141A4C)
    /* 89C88 8007ACD8 9238001A */  lbu        $t8, 0x1A($s1)
    /* 89C8C 8007ACDC 3C058025 */  lui        $a1, %hi(D_80256698)
    /* 89C90 8007ACE0 3C048014 */  lui        $a0, %hi(D_80141A58)
    /* 89C94 8007ACE4 0018C880 */  sll        $t9, $t8, 2
    /* 89C98 8007ACE8 0338C823 */  subu       $t9, $t9, $t8
    /* 89C9C 8007ACEC 0019C880 */  sll        $t9, $t9, 2
    /* 89CA0 8007ACF0 0338C821 */  addu       $t9, $t9, $t8
    /* 89CA4 8007ACF4 0019C8C0 */  sll        $t9, $t9, 3
    /* 89CA8 8007ACF8 00B92821 */  addu       $a1, $a1, $t9
    /* 89CAC 8007ACFC 8CA56698 */  lw         $a1, %lo(D_80256698)($a1)
    /* 89CB0 8007AD00 0C00731B */  jal        osSyncPrintf
    /* 89CB4 8007AD04 24841A58 */   addiu     $a0, $a0, %lo(D_80141A58)
    /* 89CB8 8007AD08 9228001A */  lbu        $t0, 0x1A($s1)
    /* 89CBC 8007AD0C 24010001 */  addiu      $at, $zero, 0x1
    /* 89CC0 8007AD10 15010004 */  bne        $t0, $at, .L8007AD24_89CD4
    /* 89CC4 8007AD14 3C048014 */   lui       $a0, %hi(D_80141A64)
    /* 89CC8 8007AD18 24841A64 */  addiu      $a0, $a0, %lo(D_80141A64)
    /* 89CCC 8007AD1C 0C00731B */  jal        osSyncPrintf
    /* 89CD0 8007AD20 92250024 */   lbu       $a1, 0x24($s1)
  .L8007AD24_89CD4:
    /* 89CD4 8007AD24 3C048014 */  lui        $a0, %hi(D_80141A74)
    /* 89CD8 8007AD28 24841A74 */  addiu      $a0, $a0, %lo(D_80141A74)
    /* 89CDC 8007AD2C 86250000 */  lh         $a1, 0x0($s1)
    /* 89CE0 8007AD30 86260002 */  lh         $a2, 0x2($s1)
    /* 89CE4 8007AD34 0C00731B */  jal        osSyncPrintf
    /* 89CE8 8007AD38 86270004 */   lh        $a3, 0x4($s1)
    /* 89CEC 8007AD3C 3C048014 */  lui        $a0, %hi(D_80141A84)
    /* 89CF0 8007AD40 24841A84 */  addiu      $a0, $a0, %lo(D_80141A84)
    /* 89CF4 8007AD44 86250006 */  lh         $a1, 0x6($s1)
    /* 89CF8 8007AD48 8626000A */  lh         $a2, 0xA($s1)
    /* 89CFC 8007AD4C 0C00731B */  jal        osSyncPrintf
    /* 89D00 8007AD50 86270008 */   lh        $a3, 0x8($s1)
    /* 89D04 8007AD54 3C048014 */  lui        $a0, %hi(D_80141A94)
    /* 89D08 8007AD58 24841A94 */  addiu      $a0, $a0, %lo(D_80141A94)
    /* 89D0C 8007AD5C 0C00731B */  jal        osSyncPrintf
    /* 89D10 8007AD60 8625000E */   lh        $a1, 0xE($s1)
    /* 89D14 8007AD64 3C048014 */  lui        $a0, %hi(D_80141AA4)
    /* 89D18 8007AD68 24841AA4 */  addiu      $a0, $a0, %lo(D_80141AA4)
    /* 89D1C 8007AD6C 0C00731B */  jal        osSyncPrintf
    /* 89D20 8007AD70 8625002A */   lh        $a1, 0x2A($s1)
    /* 89D24 8007AD74 3C048014 */  lui        $a0, %hi(D_80141ABC)
    /* 89D28 8007AD78 24841ABC */  addiu      $a0, $a0, %lo(D_80141ABC)
    /* 89D2C 8007AD7C 0C00731B */  jal        osSyncPrintf
    /* 89D30 8007AD80 86250012 */   lh        $a1, 0x12($s1)
    /* 89D34 8007AD84 3C048014 */  lui        $a0, %hi(D_80141AC8)
    /* 89D38 8007AD88 24841AC8 */  addiu      $a0, $a0, %lo(D_80141AC8)
    /* 89D3C 8007AD8C 0C00731B */  jal        osSyncPrintf
    /* 89D40 8007AD90 86250010 */   lh        $a1, 0x10($s1)
    /* 89D44 8007AD94 3C048014 */  lui        $a0, %hi(D_80141AD8)
    /* 89D48 8007AD98 24841AD8 */  addiu      $a0, $a0, %lo(D_80141AD8)
    /* 89D4C 8007AD9C 0C00731B */  jal        osSyncPrintf
    /* 89D50 8007ADA0 8E250020 */   lw        $a1, 0x20($s1)
    /* 89D54 8007ADA4 8E220020 */  lw         $v0, 0x20($s1)
    /* 89D58 8007ADA8 30490020 */  andi       $t1, $v0, 0x20
    /* 89D5C 8007ADAC 11200004 */  beqz       $t1, .L8007ADC0_89D70
    /* 89D60 8007ADB0 3C048014 */   lui       $a0, %hi(D_80141AE8)
    /* 89D64 8007ADB4 0C00731B */  jal        osSyncPrintf
    /* 89D68 8007ADB8 24841AE8 */   addiu     $a0, $a0, %lo(D_80141AE8)
    /* 89D6C 8007ADBC 8E220020 */  lw         $v0, 0x20($s1)
  .L8007ADC0_89D70:
    /* 89D70 8007ADC0 304A0080 */  andi       $t2, $v0, 0x80
    /* 89D74 8007ADC4 11400004 */  beqz       $t2, .L8007ADD8_89D88
    /* 89D78 8007ADC8 3C048014 */   lui       $a0, %hi(D_80141AF4)
    /* 89D7C 8007ADCC 0C00731B */  jal        osSyncPrintf
    /* 89D80 8007ADD0 24841AF4 */   addiu     $a0, $a0, %lo(D_80141AF4)
    /* 89D84 8007ADD4 8E220020 */  lw         $v0, 0x20($s1)
  .L8007ADD8_89D88:
    /* 89D88 8007ADD8 304B0100 */  andi       $t3, $v0, 0x100
    /* 89D8C 8007ADDC 11600004 */  beqz       $t3, .L8007ADF0_89DA0
    /* 89D90 8007ADE0 3C048014 */   lui       $a0, %hi(D_80141B04)
    /* 89D94 8007ADE4 0C00731B */  jal        osSyncPrintf
    /* 89D98 8007ADE8 24841B04 */   addiu     $a0, $a0, %lo(D_80141B04)
    /* 89D9C 8007ADEC 8E220020 */  lw         $v0, 0x20($s1)
  .L8007ADF0_89DA0:
    /* 89DA0 8007ADF0 00026100 */  sll        $t4, $v0, 4
    /* 89DA4 8007ADF4 05810004 */  bgez       $t4, .L8007AE08_89DB8
    /* 89DA8 8007ADF8 3C048014 */   lui       $a0, %hi(D_80141B10)
    /* 89DAC 8007ADFC 0C00731B */  jal        osSyncPrintf
    /* 89DB0 8007AE00 24841B10 */   addiu     $a0, $a0, %lo(D_80141B10)
    /* 89DB4 8007AE04 8E220020 */  lw         $v0, 0x20($s1)
  .L8007AE08_89DB8:
    /* 89DB8 8007AE08 304D0040 */  andi       $t5, $v0, 0x40
    /* 89DBC 8007AE0C 11A00004 */  beqz       $t5, .L8007AE20_89DD0
    /* 89DC0 8007AE10 3C048014 */   lui       $a0, %hi(D_80141B18)
    /* 89DC4 8007AE14 0C00731B */  jal        osSyncPrintf
    /* 89DC8 8007AE18 24841B18 */   addiu     $a0, $a0, %lo(D_80141B18)
    /* 89DCC 8007AE1C 8E220020 */  lw         $v0, 0x20($s1)
  .L8007AE20_89DD0:
    /* 89DD0 8007AE20 00027040 */  sll        $t6, $v0, 1
    /* 89DD4 8007AE24 05C10004 */  bgez       $t6, .L8007AE38_89DE8
    /* 89DD8 8007AE28 3C048014 */   lui       $a0, %hi(D_80141B20)
    /* 89DDC 8007AE2C 0C00731B */  jal        osSyncPrintf
    /* 89DE0 8007AE30 24841B20 */   addiu     $a0, $a0, %lo(D_80141B20)
    /* 89DE4 8007AE34 8E220020 */  lw         $v0, 0x20($s1)
  .L8007AE38_89DE8:
    /* 89DE8 8007AE38 00027A40 */  sll        $t7, $v0, 9
    /* 89DEC 8007AE3C 05E10003 */  bgez       $t7, .L8007AE4C_89DFC
    /* 89DF0 8007AE40 3C048014 */   lui       $a0, %hi(D_80141B28)
    /* 89DF4 8007AE44 0C00731B */  jal        osSyncPrintf
    /* 89DF8 8007AE48 24841B28 */   addiu     $a0, $a0, %lo(D_80141B28)
  .L8007AE4C_89DFC:
    /* 89DFC 8007AE4C 3C048014 */  lui        $a0, %hi(D_80141B34)
    /* 89E00 8007AE50 0C00731B */  jal        osSyncPrintf
    /* 89E04 8007AE54 24841B34 */   addiu     $a0, $a0, %lo(D_80141B34)
    /* 89E08 8007AE58 3C048014 */  lui        $a0, %hi(D_80141B38)
    /* 89E0C 8007AE5C 24841B38 */  addiu      $a0, $a0, %lo(D_80141B38)
    /* 89E10 8007AE60 0C00731B */  jal        osSyncPrintf
    /* 89E14 8007AE64 8625001C */   lh        $a1, 0x1C($s1)
    /* 89E18 8007AE68 3C048014 */  lui        $a0, %hi(D_80141B48)
    /* 89E1C 8007AE6C 24841B48 */  addiu      $a0, $a0, %lo(D_80141B48)
    /* 89E20 8007AE70 0C00731B */  jal        osSyncPrintf
    /* 89E24 8007AE74 92250047 */   lbu       $a1, 0x47($s1)
    /* 89E28 8007AE78 86380018 */  lh         $t8, 0x18($s1)
    /* 89E2C 8007AE7C 3C048014 */  lui        $a0, %hi(D_80141B60)
    /* 89E30 8007AE80 86250038 */  lh         $a1, 0x38($s1)
    /* 89E34 8007AE84 86260014 */  lh         $a2, 0x14($s1)
    /* 89E38 8007AE88 86270016 */  lh         $a3, 0x16($s1)
    /* 89E3C 8007AE8C 24841B60 */  addiu      $a0, $a0, %lo(D_80141B60)
    /* 89E40 8007AE90 0C00731B */  jal        osSyncPrintf
    /* 89E44 8007AE94 AFB80010 */   sw        $t8, 0x10($sp)
    /* 89E48 8007AE98 3C048014 */  lui        $a0, %hi(D_80141B78)
    /* 89E4C 8007AE9C 24841B78 */  addiu      $a0, $a0, %lo(D_80141B78)
    /* 89E50 8007AEA0 82250028 */  lb         $a1, 0x28($s1)
    /* 89E54 8007AEA4 0C00731B */  jal        osSyncPrintf
    /* 89E58 8007AEA8 82260029 */   lb        $a2, 0x29($s1)
    /* 89E5C 8007AEAC 92390037 */  lbu        $t9, 0x37($s1)
    /* 89E60 8007AEB0 8625002C */  lh         $a1, 0x2C($s1)
    /* 89E64 8007AEB4 86260034 */  lh         $a2, 0x34($s1)
    /* 89E68 8007AEB8 92270036 */  lbu        $a3, 0x36($s1)
    /* 89E6C 8007AEBC AFB90010 */  sw         $t9, 0x10($sp)
    /* 89E70 8007AEC0 8628003A */  lh         $t0, 0x3A($s1)
    /* 89E74 8007AEC4 3C048014 */  lui        $a0, %hi(D_80141B94)
    /* 89E78 8007AEC8 24841B94 */  addiu      $a0, $a0, %lo(D_80141B94)
    /* 89E7C 8007AECC AFA80014 */  sw         $t0, 0x14($sp)
    /* 89E80 8007AED0 86290040 */  lh         $t1, 0x40($s1)
    /* 89E84 8007AED4 AFA90018 */  sw         $t1, 0x18($sp)
    /* 89E88 8007AED8 862A001E */  lh         $t2, 0x1E($s1)
    /* 89E8C 8007AEDC 0C00731B */  jal        osSyncPrintf
    /* 89E90 8007AEE0 AFAA001C */   sw        $t2, 0x1C($sp)
    /* 89E94 8007AEE4 3C048014 */  lui        $a0, %hi(D_80141BD8)
    /* 89E98 8007AEE8 24841BD8 */  addiu      $a0, $a0, %lo(D_80141BD8)
    /* 89E9C 8007AEEC 0C00731B */  jal        osSyncPrintf
    /* 89EA0 8007AEF0 9225001B */   lbu       $a1, 0x1B($s1)
    /* 89EA4 8007AEF4 9222001A */  lbu        $v0, 0x1A($s1)
    /* 89EA8 8007AEF8 24010019 */  addiu      $at, $zero, 0x19
    /* 89EAC 8007AEFC 3C0D8005 */  lui        $t5, %hi(alienInstances)
    /* 89EB0 8007AF00 10410004 */  beq        $v0, $at, .L8007AF14_89EC4
    /* 89EB4 8007AF04 25AD8198 */   addiu     $t5, $t5, %lo(alienInstances)
    /* 89EB8 8007AF08 2401001B */  addiu      $at, $zero, 0x1B
    /* 89EBC 8007AF0C 5441001B */  bnel       $v0, $at, .L8007AF7C_89F2C
    /* 89EC0 8007AF10 8FBF002C */   lw        $ra, 0x2C($sp)
  .L8007AF14_89EC4:
    /* 89EC4 8007AF14 922B0025 */  lbu        $t3, 0x25($s1)
    /* 89EC8 8007AF18 3C048014 */  lui        $a0, %hi(D_80141BE4)
    /* 89ECC 8007AF1C 24841BE4 */  addiu      $a0, $a0, %lo(D_80141BE4)
    /* 89ED0 8007AF20 000B6080 */  sll        $t4, $t3, 2
    /* 89ED4 8007AF24 018B6021 */  addu       $t4, $t4, $t3
    /* 89ED8 8007AF28 000C6100 */  sll        $t4, $t4, 4
    /* 89EDC 8007AF2C 0C00731B */  jal        osSyncPrintf
    /* 89EE0 8007AF30 018D8021 */   addu      $s0, $t4, $t5
    /* 89EE4 8007AF34 3C048014 */  lui        $a0, %hi(D_80141C08)
    /* 89EE8 8007AF38 24841C08 */  addiu      $a0, $a0, %lo(D_80141C08)
    /* 89EEC 8007AF3C 8E050010 */  lw         $a1, 0x10($s0)
    /* 89EF0 8007AF40 0C00731B */  jal        osSyncPrintf
    /* 89EF4 8007AF44 8E060014 */   lw        $a2, 0x14($s0)
    /* 89EF8 8007AF48 3C048014 */  lui        $a0, %hi(D_80141C24)
    /* 89EFC 8007AF4C 24841C24 */  addiu      $a0, $a0, %lo(D_80141C24)
    /* 89F00 8007AF50 0C00731B */  jal        osSyncPrintf
    /* 89F04 8007AF54 8E050020 */   lw        $a1, 0x20($s0)
    /* 89F08 8007AF58 922E001A */  lbu        $t6, 0x1A($s1)
    /* 89F0C 8007AF5C 24010019 */  addiu      $at, $zero, 0x19
    /* 89F10 8007AF60 3C048014 */  lui        $a0, %hi(D_80141C38)
    /* 89F14 8007AF64 15C10004 */  bne        $t6, $at, .L8007AF78_89F28
    /* 89F18 8007AF68 24841C38 */   addiu     $a0, $a0, %lo(D_80141C38)
    /* 89F1C 8007AF6C 9205001B */  lbu        $a1, 0x1B($s0)
    /* 89F20 8007AF70 0C00731B */  jal        osSyncPrintf
    /* 89F24 8007AF74 9206001E */   lbu       $a2, 0x1E($s0)
  .L8007AF78_89F28:
    /* 89F28 8007AF78 8FBF002C */  lw         $ra, 0x2C($sp)
  .L8007AF7C_89F2C:
    /* 89F2C 8007AF7C 8FB00024 */  lw         $s0, 0x24($sp)
    /* 89F30 8007AF80 8FB10028 */  lw         $s1, 0x28($sp)
    /* 89F34 8007AF84 03E00008 */  jr         $ra
    /* 89F38 8007AF88 27BD0030 */   addiu     $sp, $sp, 0x30
endlabel func_8007AAEC_89A9C
