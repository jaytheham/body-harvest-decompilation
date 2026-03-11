nonmatching func_80091AC0_A0A70, 0x3B0

glabel func_80091AC0_A0A70
    /* A0A70 80091AC0 27BDFF80 */  addiu      $sp, $sp, -0x80
    /* A0A74 80091AC4 AFA40080 */  sw         $a0, 0x80($sp)
    /* A0A78 80091AC8 93B90083 */  lbu        $t9, 0x83($sp)
    /* A0A7C 80091ACC 3C098005 */  lui        $t1, %hi(alienInstances)
    /* A0A80 80091AD0 AFB00040 */  sw         $s0, 0x40($sp)
    /* A0A84 80091AD4 00194080 */  sll        $t0, $t9, 2
    /* A0A88 80091AD8 01194021 */  addu       $t0, $t0, $t9
    /* A0A8C 80091ADC 00084100 */  sll        $t0, $t0, 4
    /* A0A90 80091AE0 25298198 */  addiu      $t1, $t1, %lo(alienInstances)
    /* A0A94 80091AE4 01098021 */  addu       $s0, $t0, $t1
    /* A0A98 80091AE8 860A000C */  lh         $t2, 0xC($s0)
    /* A0A9C 80091AEC 00A07025 */  or         $t6, $a1, $zero
    /* A0AA0 80091AF0 3C0C8015 */  lui        $t4, %hi(D_8014DD5C)
    /* A0AA4 80091AF4 000A5900 */  sll        $t3, $t2, 4
    /* A0AA8 80091AF8 AFA50084 */  sw         $a1, 0x84($sp)
    /* A0AAC 80091AFC 018B6021 */  addu       $t4, $t4, $t3
    /* A0AB0 80091B00 000E2600 */  sll        $a0, $t6, 24
    /* A0AB4 80091B04 818CDD5C */  lb         $t4, %lo(D_8014DD5C)($t4)
    /* A0AB8 80091B08 00062E00 */  sll        $a1, $a2, 24
    /* A0ABC 80091B0C AFBF0044 */  sw         $ra, 0x44($sp)
    /* A0AC0 80091B10 00057603 */  sra        $t6, $a1, 24
    /* A0AC4 80091B14 00046E03 */  sra        $t5, $a0, 24
    /* A0AC8 80091B18 AFA60088 */  sw         $a2, 0x88($sp)
    /* A0ACC 80091B1C 01A02025 */  or         $a0, $t5, $zero
    /* A0AD0 80091B20 01C02825 */  or         $a1, $t6, $zero
    /* A0AD4 80091B24 0C047498 */  jal        func_8011D260_12C210
    /* A0AD8 80091B28 A7AC005A */   sh        $t4, 0x5A($sp)
    /* A0ADC 80091B2C 304F00FF */  andi       $t7, $v0, 0xFF
    /* A0AE0 80091B30 240100FF */  addiu      $at, $zero, 0xFF
    /* A0AE4 80091B34 15E10003 */  bne        $t7, $at, .L80091B44_A0AF4
    /* A0AE8 80091B38 304600FF */   andi      $a2, $v0, 0xFF
    /* A0AEC 80091B3C 100000C7 */  b          .L80091E5C_A0E0C
    /* A0AF0 80091B40 00001025 */   or        $v0, $zero, $zero
  .L80091B44_A0AF4:
    /* A0AF4 80091B44 86020012 */  lh         $v0, 0x12($s0)
    /* A0AF8 80091B48 00021823 */  negu       $v1, $v0
    /* A0AFC 80091B4C 0062082A */  slt        $at, $v1, $v0
    /* A0B00 80091B50 10200003 */  beqz       $at, .L80091B60_A0B10
    /* A0B04 80091B54 00602025 */   or        $a0, $v1, $zero
    /* A0B08 80091B58 10000001 */  b          .L80091B60_A0B10
    /* A0B0C 80091B5C 00402025 */   or        $a0, $v0, $zero
  .L80091B60_A0B10:
    /* A0B10 80091B60 9218001A */  lbu        $t8, 0x1A($s0)
    /* A0B14 80091B64 3C088025 */  lui        $t0, %hi(D_802566D2)
    /* A0B18 80091B68 240100C8 */  addiu      $at, $zero, 0xC8
    /* A0B1C 80091B6C 0018C880 */  sll        $t9, $t8, 2
    /* A0B20 80091B70 0338C823 */  subu       $t9, $t9, $t8
    /* A0B24 80091B74 0019C880 */  sll        $t9, $t9, 2
    /* A0B28 80091B78 0338C821 */  addu       $t9, $t9, $t8
    /* A0B2C 80091B7C 0019C8C0 */  sll        $t9, $t9, 3
    /* A0B30 80091B80 01194021 */  addu       $t0, $t0, $t9
    /* A0B34 80091B84 910866D2 */  lbu        $t0, %lo(D_802566D2)($t0)
    /* A0B38 80091B88 8E030020 */  lw         $v1, 0x20($s0)
    /* A0B3C 80091B8C A3A6007B */  sb         $a2, 0x7B($sp)
    /* A0B40 80091B90 01040019 */  multu      $t0, $a0
    /* A0B44 80091B94 00035900 */  sll        $t3, $v1, 4
    /* A0B48 80091B98 30C400FF */  andi       $a0, $a2, 0xFF
    /* A0B4C 80091B9C 00002812 */  mflo       $a1
    /* A0B50 80091BA0 00000000 */  nop
    /* A0B54 80091BA4 00000000 */  nop
    /* A0B58 80091BA8 00A1001A */  div        $zero, $a1, $at
    /* A0B5C 80091BAC 00004812 */  mflo       $t1
    /* A0B60 80091BB0 00092943 */  sra        $a1, $t1, 5
    /* A0B64 80091BB4 0562008B */  bltzl      $t3, .L80091DE4_A0D94
    /* A0B68 80091BB8 2401EFFF */   addiu     $at, $zero, -0x1001
    /* A0B6C 80091BBC 0C046FA8 */  jal        func_8011BEA0_12AE50
    /* A0B70 80091BC0 A3A6007B */   sb        $a2, 0x7B($sp)
    /* A0B74 80091BC4 8E030020 */  lw         $v1, 0x20($s0)
    /* A0B78 80091BC8 24050008 */  addiu      $a1, $zero, 0x8
    /* A0B7C 80091BCC 30640600 */  andi       $a0, $v1, 0x600
    /* A0B80 80091BD0 10800005 */  beqz       $a0, .L80091BE8_A0B98
    /* A0B84 80091BD4 00000000 */   nop
    /* A0B88 80091BD8 0C04DD1A */  jal        func_80137468_146418
    /* A0B8C 80091BDC 93A40083 */   lbu       $a0, 0x83($sp)
    /* A0B90 80091BE0 8E030020 */  lw         $v1, 0x20($s0)
    /* A0B94 80091BE4 30640600 */  andi       $a0, $v1, 0x600
  .L80091BE8_A0B98:
    /* A0B98 80091BE8 5080007E */  beql       $a0, $zero, .L80091DE4_A0D94
    /* A0B9C 80091BEC 2401EFFF */   addiu     $at, $zero, -0x1001
    /* A0BA0 80091BF0 86040006 */  lh         $a0, 0x6($s0)
    /* A0BA4 80091BF4 2484C000 */  addiu      $a0, $a0, -0x4000
    /* A0BA8 80091BF8 308CFFFF */  andi       $t4, $a0, 0xFFFF
    /* A0BAC 80091BFC 0C007660 */  jal        sins
    /* A0BB0 80091C00 01802025 */   or        $a0, $t4, $zero
    /* A0BB4 80091C04 44822000 */  mtc1       $v0, $f4
    /* A0BB8 80091C08 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* A0BBC 80091C0C 44815800 */  mtc1       $at, $f11
    /* A0BC0 80091C10 468021A0 */  cvt.s.w    $f6, $f4
    /* A0BC4 80091C14 44805000 */  mtc1       $zero, $f10
    /* A0BC8 80091C18 86040006 */  lh         $a0, 0x6($s0)
    /* A0BCC 80091C1C 2484C000 */  addiu      $a0, $a0, -0x4000
    /* A0BD0 80091C20 46003221 */  cvt.d.s    $f8, $f6
    /* A0BD4 80091C24 308DFFFF */  andi       $t5, $a0, 0xFFFF
    /* A0BD8 80091C28 462A4403 */  div.d      $f16, $f8, $f10
    /* A0BDC 80091C2C 01A02025 */  or         $a0, $t5, $zero
    /* A0BE0 80091C30 462084A0 */  cvt.s.d    $f18, $f16
    /* A0BE4 80091C34 0C007654 */  jal        coss
    /* A0BE8 80091C38 E7B20060 */   swc1      $f18, 0x60($sp)
    /* A0BEC 80091C3C 44822000 */  mtc1       $v0, $f4
    /* A0BF0 80091C40 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* A0BF4 80091C44 44815800 */  mtc1       $at, $f11
    /* A0BF8 80091C48 468021A0 */  cvt.s.w    $f6, $f4
    /* A0BFC 80091C4C 44805000 */  mtc1       $zero, $f10
    /* A0C00 80091C50 87AE005A */  lh         $t6, 0x5A($sp)
    /* A0C04 80091C54 3C188015 */  lui        $t8, %hi(D_8014DD50)
    /* A0C08 80091C58 2718DD50 */  addiu      $t8, $t8, %lo(D_8014DD50)
    /* A0C0C 80091C5C 000E7900 */  sll        $t7, $t6, 4
    /* A0C10 80091C60 46003221 */  cvt.d.s    $f8, $f6
    /* A0C14 80091C64 01F81821 */  addu       $v1, $t7, $t8
    /* A0C18 80091C68 462A4403 */  div.d      $f16, $f8, $f10
    /* A0C1C 80091C6C 84670004 */  lh         $a3, 0x4($v1)
    /* A0C20 80091C70 27A90074 */  addiu      $t1, $sp, 0x74
    /* A0C24 80091C74 27AA0070 */  addiu      $t2, $sp, 0x70
    /* A0C28 80091C78 24E7001E */  addiu      $a3, $a3, 0x1E
    /* A0C2C 80091C7C 0007CC00 */  sll        $t9, $a3, 16
    /* A0C30 80091C80 27AB006C */  addiu      $t3, $sp, 0x6C
    /* A0C34 80091C84 AFAB0018 */  sw         $t3, 0x18($sp)
    /* A0C38 80091C88 00193C03 */  sra        $a3, $t9, 16
    /* A0C3C 80091C8C AFAA0014 */  sw         $t2, 0x14($sp)
    /* A0C40 80091C90 AFA90010 */  sw         $t1, 0x10($sp)
    /* A0C44 80091C94 84650000 */  lh         $a1, 0x0($v1)
    /* A0C48 80091C98 84660002 */  lh         $a2, 0x2($v1)
    /* A0C4C 80091C9C 02002025 */  or         $a0, $s0, $zero
    /* A0C50 80091CA0 46208487 */  neg.d      $f18, $f16
    /* A0C54 80091CA4 46209120 */  cvt.s.d    $f4, $f18
    /* A0C58 80091CA8 0C04A10A */  jal        func_80128428_1373D8
    /* A0C5C 80091CAC E7A4005C */   swc1      $f4, 0x5C($sp)
    /* A0C60 80091CB0 87A40076 */  lh         $a0, 0x76($sp)
    /* A0C64 80091CB4 87A50072 */  lh         $a1, 0x72($sp)
    /* A0C68 80091CB8 87A6006E */  lh         $a2, 0x6E($sp)
    /* A0C6C 80091CBC 0C037A6E */  jal        func_800DE9B8_ED968
    /* A0C70 80091CC0 240700FF */   addiu     $a3, $zero, 0xFF
    /* A0C74 80091CC4 87A40076 */  lh         $a0, 0x76($sp)
    /* A0C78 80091CC8 0C02E134 */  jal        func_800B84D0_C7480
    /* A0C7C 80091CCC 87A5006E */   lh        $a1, 0x6E($sp)
    /* A0C80 80091CD0 00022A03 */  sra        $a1, $v0, 8
    /* A0C84 80091CD4 24A50005 */  addiu      $a1, $a1, 0x5
    /* A0C88 80091CD8 00056400 */  sll        $t4, $a1, 16
    /* A0C8C 80091CDC 240E0010 */  addiu      $t6, $zero, 0x10
    /* A0C90 80091CE0 AFAE0010 */  sw         $t6, 0x10($sp)
    /* A0C94 80091CE4 000C2C03 */  sra        $a1, $t4, 16
    /* A0C98 80091CE8 87A40076 */  lh         $a0, 0x76($sp)
    /* A0C9C 80091CEC 87A6006E */  lh         $a2, 0x6E($sp)
    /* A0CA0 80091CF0 0C037B97 */  jal        func_800DEE5C_EDE0C
    /* A0CA4 80091CF4 24070078 */   addiu     $a3, $zero, 0x78
    /* A0CA8 80091CF8 3C0142FE */  lui        $at, (0x42FE0000 >> 16)
    /* A0CAC 80091CFC 44810000 */  mtc1       $at, $f0
    /* A0CB0 80091D00 C7A60060 */  lwc1       $f6, 0x60($sp)
    /* A0CB4 80091D04 C7B0005C */  lwc1       $f16, 0x5C($sp)
    /* A0CB8 80091D08 24080050 */  addiu      $t0, $zero, 0x50
    /* A0CBC 80091D0C 46003202 */  mul.s      $f8, $f6, $f0
    /* A0CC0 80091D10 240B003C */  addiu      $t3, $zero, 0x3C
    /* A0CC4 80091D14 240C00FF */  addiu      $t4, $zero, 0xFF
    /* A0CC8 80091D18 46008482 */  mul.s      $f18, $f16, $f0
    /* A0CCC 80091D1C 240D0050 */  addiu      $t5, $zero, 0x50
    /* A0CD0 80091D20 240E0028 */  addiu      $t6, $zero, 0x28
    /* A0CD4 80091D24 240F00FF */  addiu      $t7, $zero, 0xFF
    /* A0CD8 80091D28 24190080 */  addiu      $t9, $zero, 0x80
    /* A0CDC 80091D2C AFB90030 */  sw         $t9, 0x30($sp)
    /* A0CE0 80091D30 4600428D */  trunc.w.s  $f10, $f8
    /* A0CE4 80091D34 AFAF0028 */  sw         $t7, 0x28($sp)
    /* A0CE8 80091D38 AFAE0024 */  sw         $t6, 0x24($sp)
    /* A0CEC 80091D3C 4600910D */  trunc.w.s  $f4, $f18
    /* A0CF0 80091D40 44075000 */  mfc1       $a3, $f10
    /* A0CF4 80091D44 AFAD0020 */  sw         $t5, 0x20($sp)
    /* A0CF8 80091D48 AFAC001C */  sw         $t4, 0x1C($sp)
    /* A0CFC 80091D4C 0007C600 */  sll        $t8, $a3, 24
    /* A0D00 80091D50 440A2000 */  mfc1       $t2, $f4
    /* A0D04 80091D54 00183E03 */  sra        $a3, $t8, 24
    /* A0D08 80091D58 241800FF */  addiu      $t8, $zero, 0xFF
    /* A0D0C 80091D5C AFB8002C */  sw         $t8, 0x2C($sp)
    /* A0D10 80091D60 AFAB0018 */  sw         $t3, 0x18($sp)
    /* A0D14 80091D64 AFA80010 */  sw         $t0, 0x10($sp)
    /* A0D18 80091D68 87A40076 */  lh         $a0, 0x76($sp)
    /* A0D1C 80091D6C 87A50072 */  lh         $a1, 0x72($sp)
    /* A0D20 80091D70 87A6006E */  lh         $a2, 0x6E($sp)
    /* A0D24 80091D74 0C031507 */  jal        func_800C541C_D43CC
    /* A0D28 80091D78 AFAA0014 */   sw        $t2, 0x14($sp)
    /* A0D2C 80091D7C 24080008 */  addiu      $t0, $zero, 0x8
    /* A0D30 80091D80 24090006 */  addiu      $t1, $zero, 0x6
    /* A0D34 80091D84 240A0028 */  addiu      $t2, $zero, 0x28
    /* A0D38 80091D88 240B00C8 */  addiu      $t3, $zero, 0xC8
    /* A0D3C 80091D8C 240C001E */  addiu      $t4, $zero, 0x1E
    /* A0D40 80091D90 240D001E */  addiu      $t5, $zero, 0x1E
    /* A0D44 80091D94 240E001E */  addiu      $t6, $zero, 0x1E
    /* A0D48 80091D98 AFAE0028 */  sw         $t6, 0x28($sp)
    /* A0D4C 80091D9C AFAD0024 */  sw         $t5, 0x24($sp)
    /* A0D50 80091DA0 AFAC0020 */  sw         $t4, 0x20($sp)
    /* A0D54 80091DA4 AFAB001C */  sw         $t3, 0x1C($sp)
    /* A0D58 80091DA8 AFAA0018 */  sw         $t2, 0x18($sp)
    /* A0D5C 80091DAC AFA90014 */  sw         $t1, 0x14($sp)
    /* A0D60 80091DB0 AFA80010 */  sw         $t0, 0x10($sp)
    /* A0D64 80091DB4 87A40076 */  lh         $a0, 0x76($sp)
    /* A0D68 80091DB8 87A50072 */  lh         $a1, 0x72($sp)
    /* A0D6C 80091DBC 87A6006E */  lh         $a2, 0x6E($sp)
    /* A0D70 80091DC0 0C037A82 */  jal        func_800DEA08_ED9B8
    /* A0D74 80091DC4 24070096 */   addiu     $a3, $zero, 0x96
    /* A0D78 80091DC8 8FA40074 */  lw         $a0, 0x74($sp)
    /* A0D7C 80091DCC 8FA50070 */  lw         $a1, 0x70($sp)
    /* A0D80 80091DD0 8FA6006C */  lw         $a2, 0x6C($sp)
    /* A0D84 80091DD4 0C04D751 */  jal        func_80135D44_144CF4
    /* A0D88 80091DD8 3C074040 */   lui       $a3, (0x40400000 >> 16)
    /* A0D8C 80091DDC 8E030020 */  lw         $v1, 0x20($s0)
    /* A0D90 80091DE0 2401EFFF */  addiu      $at, $zero, -0x1001
  .L80091DE4_A0D94:
    /* A0D94 80091DE4 00617824 */  and        $t7, $v1, $at
    /* A0D98 80091DE8 000FC100 */  sll        $t8, $t7, 4
    /* A0D9C 80091DEC 93A6007B */  lbu        $a2, 0x7B($sp)
    /* A0DA0 80091DF0 AE0F0020 */  sw         $t7, 0x20($s0)
    /* A0DA4 80091DF4 07000016 */  bltz       $t8, .L80091E50_A0E00
    /* A0DA8 80091DF8 01E01825 */   or        $v1, $t7, $zero
    /* A0DAC 80091DFC 0006C880 */  sll        $t9, $a2, 2
    /* A0DB0 80091E00 0326C823 */  subu       $t9, $t9, $a2
    /* A0DB4 80091E04 0019C8C0 */  sll        $t9, $t9, 3
    /* A0DB8 80091E08 3C088005 */  lui        $t0, %hi(D_80050AE0)
    /* A0DBC 80091E0C 01194021 */  addu       $t0, $t0, $t9
    /* A0DC0 80091E10 8D080AE0 */  lw         $t0, %lo(D_80050AE0)($t0)
    /* A0DC4 80091E14 00084B02 */  srl        $t1, $t0, 12
    /* A0DC8 80091E18 312A100C */  andi       $t2, $t1, 0x100C
    /* A0DCC 80091E1C 5540000A */  bnel       $t2, $zero, .L80091E48_A0DF8
    /* A0DD0 80091E20 2401FEFF */   addiu     $at, $zero, -0x101
    /* A0DD4 80091E24 920B0025 */  lbu        $t3, 0x25($s0)
    /* A0DD8 80091E28 3C018005 */  lui        $at, %hi(D_800481D0)
    /* A0DDC 80091E2C 000B6080 */  sll        $t4, $t3, 2
    /* A0DE0 80091E30 018B6021 */  addu       $t4, $t4, $t3
    /* A0DE4 80091E34 000C6100 */  sll        $t4, $t4, 4
    /* A0DE8 80091E38 002C0821 */  addu       $at, $at, $t4
    /* A0DEC 80091E3C A42681D0 */  sh         $a2, %lo(D_800481D0)($at)
    /* A0DF0 80091E40 8E030020 */  lw         $v1, 0x20($s0)
    /* A0DF4 80091E44 2401FEFF */  addiu      $at, $zero, -0x101
  .L80091E48_A0DF8:
    /* A0DF8 80091E48 00616824 */  and        $t5, $v1, $at
    /* A0DFC 80091E4C AE0D0020 */  sw         $t5, 0x20($s0)
  .L80091E50_A0E00:
    /* A0E00 80091E50 0C02469E */  jal        func_80091A78_A0A28
    /* A0E04 80091E54 93A40083 */   lbu       $a0, 0x83($sp)
    /* A0E08 80091E58 24020001 */  addiu      $v0, $zero, 0x1
  .L80091E5C_A0E0C:
    /* A0E0C 80091E5C 8FBF0044 */  lw         $ra, 0x44($sp)
    /* A0E10 80091E60 8FB00040 */  lw         $s0, 0x40($sp)
    /* A0E14 80091E64 27BD0080 */  addiu      $sp, $sp, 0x80
    /* A0E18 80091E68 03E00008 */  jr         $ra
    /* A0E1C 80091E6C 00000000 */   nop
endlabel func_80091AC0_A0A70
