nonmatching func_802D9CB8_1F29C8, 0x4D4

glabel func_802D9CB8_1F29C8
    /* 1F29C8 802D9CB8 27BDFF60 */  addiu      $sp, $sp, -0xA0
    /* 1F29CC 802D9CBC AFB10038 */  sw         $s1, 0x38($sp)
    /* 1F29D0 802D9CC0 309100FF */  andi       $s1, $a0, 0xFF
    /* 1F29D4 802D9CC4 AFBF003C */  sw         $ra, 0x3C($sp)
    /* 1F29D8 802D9CC8 AFA400A0 */  sw         $a0, 0xA0($sp)
    /* 1F29DC 802D9CCC 240E0005 */  addiu      $t6, $zero, 0x5
    /* 1F29E0 802D9CD0 AFB00034 */  sw         $s0, 0x34($sp)
    /* 1F29E4 802D9CD4 F7B40028 */  sdc1       $f20, 0x28($sp)
    /* 1F29E8 802D9CD8 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 1F29EC 802D9CDC 322400FF */  andi       $a0, $s1, 0xFF
    /* 1F29F0 802D9CE0 24050046 */  addiu      $a1, $zero, 0x46
    /* 1F29F4 802D9CE4 24060003 */  addiu      $a2, $zero, 0x3
    /* 1F29F8 802D9CE8 0C0227AD */  jal        func_80089EB4_98E64
    /* 1F29FC 802D9CEC 24070006 */   addiu     $a3, $zero, 0x6
    /* 1F2A00 802D9CF0 00117880 */  sll        $t7, $s1, 2
    /* 1F2A04 802D9CF4 01F17821 */  addu       $t7, $t7, $s1
    /* 1F2A08 802D9CF8 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 1F2A0C 802D9CFC 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 1F2A10 802D9D00 000F7900 */  sll        $t7, $t7, 4
    /* 1F2A14 802D9D04 01F88021 */  addu       $s0, $t7, $t8
    /* 1F2A18 802D9D08 8619000C */  lh         $t9, 0xC($s0)
    /* 1F2A1C 802D9D0C 3C028015 */  lui        $v0, %hi(D_8014DD50)
    /* 1F2A20 802D9D10 2442DD50 */  addiu      $v0, $v0, %lo(D_8014DD50)
    /* 1F2A24 802D9D14 00196900 */  sll        $t5, $t9, 4
    /* 1F2A28 802D9D18 004D7021 */  addu       $t6, $v0, $t5
    /* 1F2A2C 802D9D1C 81C5000C */  lb         $a1, 0xC($t6)
    /* 1F2A30 802D9D20 322400FF */  andi       $a0, $s1, 0xFF
    /* 1F2A34 802D9D24 24060BB8 */  addiu      $a2, $zero, 0xBB8
    /* 1F2A38 802D9D28 00057900 */  sll        $t7, $a1, 4
    /* 1F2A3C 802D9D2C 004F1821 */  addu       $v1, $v0, $t7
    /* 1F2A40 802D9D30 806B000D */  lb         $t3, 0xD($v1)
    /* 1F2A44 802D9D34 240703E8 */  addiu      $a3, $zero, 0x3E8
    /* 1F2A48 802D9D38 000BC100 */  sll        $t8, $t3, 4
    /* 1F2A4C 802D9D3C 00584021 */  addu       $t0, $v0, $t8
    /* 1F2A50 802D9D40 810C000D */  lb         $t4, 0xD($t0)
    /* 1F2A54 802D9D44 2418F060 */  addiu      $t8, $zero, -0xFA0
    /* 1F2A58 802D9D48 000CC900 */  sll        $t9, $t4, 4
    /* 1F2A5C 802D9D4C 00595021 */  addu       $t2, $v0, $t9
    /* 1F2A60 802D9D50 8149000D */  lb         $t1, 0xD($t2)
    /* 1F2A64 802D9D54 241907D0 */  addiu      $t9, $zero, 0x7D0
    /* 1F2A68 802D9D58 00096900 */  sll        $t5, $t1, 4
    /* 1F2A6C 802D9D5C 004D7021 */  addu       $t6, $v0, $t5
    /* 1F2A70 802D9D60 81CF000D */  lb         $t7, 0xD($t6)
    /* 1F2A74 802D9D64 240E000E */  addiu      $t6, $zero, 0xE
    /* 1F2A78 802D9D68 240D000A */  addiu      $t5, $zero, 0xA
    /* 1F2A7C 802D9D6C AFAD001C */  sw         $t5, 0x1C($sp)
    /* 1F2A80 802D9D70 AFAE0020 */  sw         $t6, 0x20($sp)
    /* 1F2A84 802D9D74 AFAA0048 */  sw         $t2, 0x48($sp)
    /* 1F2A88 802D9D78 AFA8004C */  sw         $t0, 0x4C($sp)
    /* 1F2A8C 802D9D7C AFA30050 */  sw         $v1, 0x50($sp)
    /* 1F2A90 802D9D80 AFB90018 */  sw         $t9, 0x18($sp)
    /* 1F2A94 802D9D84 AFB80014 */  sw         $t8, 0x14($sp)
    /* 1F2A98 802D9D88 AFA00010 */  sw         $zero, 0x10($sp)
    /* 1F2A9C 802D9D8C A7A5009E */  sh         $a1, 0x9E($sp)
    /* 1F2AA0 802D9D90 A7AB009C */  sh         $t3, 0x9C($sp)
    /* 1F2AA4 802D9D94 A7AC009A */  sh         $t4, 0x9A($sp)
    /* 1F2AA8 802D9D98 A7A90098 */  sh         $t1, 0x98($sp)
    /* 1F2AAC 802D9D9C 0C0224F2 */  jal        func_800893C8_98378
    /* 1F2AB0 802D9DA0 A7AF0096 */   sh        $t7, 0x96($sp)
    /* 1F2AB4 802D9DA4 240F07D0 */  addiu      $t7, $zero, 0x7D0
    /* 1F2AB8 802D9DA8 2418F060 */  addiu      $t8, $zero, -0xFA0
    /* 1F2ABC 802D9DAC 24190FA0 */  addiu      $t9, $zero, 0xFA0
    /* 1F2AC0 802D9DB0 240D0006 */  addiu      $t5, $zero, 0x6
    /* 1F2AC4 802D9DB4 240E000C */  addiu      $t6, $zero, 0xC
    /* 1F2AC8 802D9DB8 AFAE0020 */  sw         $t6, 0x20($sp)
    /* 1F2ACC 802D9DBC AFAD001C */  sw         $t5, 0x1C($sp)
    /* 1F2AD0 802D9DC0 AFB90018 */  sw         $t9, 0x18($sp)
    /* 1F2AD4 802D9DC4 AFB80014 */  sw         $t8, 0x14($sp)
    /* 1F2AD8 802D9DC8 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 1F2ADC 802D9DCC 322400FF */  andi       $a0, $s1, 0xFF
    /* 1F2AE0 802D9DD0 87A5009C */  lh         $a1, 0x9C($sp)
    /* 1F2AE4 802D9DD4 24060BB8 */  addiu      $a2, $zero, 0xBB8
    /* 1F2AE8 802D9DD8 0C0224F2 */  jal        func_800893C8_98378
    /* 1F2AEC 802D9DDC 24071388 */   addiu     $a3, $zero, 0x1388
    /* 1F2AF0 802D9DE0 240FF830 */  addiu      $t7, $zero, -0x7D0
    /* 1F2AF4 802D9DE4 2418F060 */  addiu      $t8, $zero, -0xFA0
    /* 1F2AF8 802D9DE8 24190FA0 */  addiu      $t9, $zero, 0xFA0
    /* 1F2AFC 802D9DEC 240D0006 */  addiu      $t5, $zero, 0x6
    /* 1F2B00 802D9DF0 240E000C */  addiu      $t6, $zero, 0xC
    /* 1F2B04 802D9DF4 AFAE0020 */  sw         $t6, 0x20($sp)
    /* 1F2B08 802D9DF8 AFAD001C */  sw         $t5, 0x1C($sp)
    /* 1F2B0C 802D9DFC AFB90018 */  sw         $t9, 0x18($sp)
    /* 1F2B10 802D9E00 AFB80014 */  sw         $t8, 0x14($sp)
    /* 1F2B14 802D9E04 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 1F2B18 802D9E08 322400FF */  andi       $a0, $s1, 0xFF
    /* 1F2B1C 802D9E0C 87A5009A */  lh         $a1, 0x9A($sp)
    /* 1F2B20 802D9E10 24060BB8 */  addiu      $a2, $zero, 0xBB8
    /* 1F2B24 802D9E14 0C0224F2 */  jal        func_800893C8_98378
    /* 1F2B28 802D9E18 24071388 */   addiu     $a3, $zero, 0x1388
    /* 1F2B2C 802D9E1C 240F2710 */  addiu      $t7, $zero, 0x2710
    /* 1F2B30 802D9E20 2418F830 */  addiu      $t8, $zero, -0x7D0
    /* 1F2B34 802D9E24 241907D0 */  addiu      $t9, $zero, 0x7D0
    /* 1F2B38 802D9E28 240D0004 */  addiu      $t5, $zero, 0x4
    /* 1F2B3C 802D9E2C 240E0008 */  addiu      $t6, $zero, 0x8
    /* 1F2B40 802D9E30 AFAE0020 */  sw         $t6, 0x20($sp)
    /* 1F2B44 802D9E34 AFAD001C */  sw         $t5, 0x1C($sp)
    /* 1F2B48 802D9E38 AFB90018 */  sw         $t9, 0x18($sp)
    /* 1F2B4C 802D9E3C AFB80014 */  sw         $t8, 0x14($sp)
    /* 1F2B50 802D9E40 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 1F2B54 802D9E44 322400FF */  andi       $a0, $s1, 0xFF
    /* 1F2B58 802D9E48 87A50098 */  lh         $a1, 0x98($sp)
    /* 1F2B5C 802D9E4C 00003025 */  or         $a2, $zero, $zero
    /* 1F2B60 802D9E50 0C0224F2 */  jal        func_800893C8_98378
    /* 1F2B64 802D9E54 24070BB8 */   addiu     $a3, $zero, 0xBB8
    /* 1F2B68 802D9E58 240FD6FC */  addiu      $t7, $zero, -0x2904
    /* 1F2B6C 802D9E5C 2418F830 */  addiu      $t8, $zero, -0x7D0
    /* 1F2B70 802D9E60 241907D0 */  addiu      $t9, $zero, 0x7D0
    /* 1F2B74 802D9E64 240D0004 */  addiu      $t5, $zero, 0x4
    /* 1F2B78 802D9E68 240E0008 */  addiu      $t6, $zero, 0x8
    /* 1F2B7C 802D9E6C AFAE0020 */  sw         $t6, 0x20($sp)
    /* 1F2B80 802D9E70 AFAD001C */  sw         $t5, 0x1C($sp)
    /* 1F2B84 802D9E74 AFB90018 */  sw         $t9, 0x18($sp)
    /* 1F2B88 802D9E78 AFB80014 */  sw         $t8, 0x14($sp)
    /* 1F2B8C 802D9E7C AFAF0010 */  sw         $t7, 0x10($sp)
    /* 1F2B90 802D9E80 322400FF */  andi       $a0, $s1, 0xFF
    /* 1F2B94 802D9E84 87A50096 */  lh         $a1, 0x96($sp)
    /* 1F2B98 802D9E88 00003025 */  or         $a2, $zero, $zero
    /* 1F2B9C 802D9E8C 0C0224F2 */  jal        func_800893C8_98378
    /* 1F2BA0 802D9E90 24070BB8 */   addiu     $a3, $zero, 0xBB8
    /* 1F2BA4 802D9E94 8603002C */  lh         $v1, 0x2C($s0)
    /* 1F2BA8 802D9E98 24010019 */  addiu      $at, $zero, 0x19
    /* 1F2BAC 802D9E9C 0061001A */  div        $zero, $v1, $at
    /* 1F2BB0 802D9EA0 00007810 */  mfhi       $t7
    /* 1F2BB4 802D9EA4 28610019 */  slti       $at, $v1, 0x19
    /* 1F2BB8 802D9EA8 55E0004E */  bnel       $t7, $zero, .L802D9FE4_1F2CF4
    /* 1F2BBC 802D9EAC 24010001 */   addiu     $at, $zero, 0x1
    /* 1F2BC0 802D9EB0 5420004C */  bnel       $at, $zero, .L802D9FE4_1F2CF4
    /* 1F2BC4 802D9EB4 24010001 */   addiu     $at, $zero, 0x1
    /* 1F2BC8 802D9EB8 86030004 */  lh         $v1, 0x4($s0)
    /* 1F2BCC 802D9EBC 86020000 */  lh         $v0, 0x0($s0)
    /* 1F2BD0 802D9EC0 00033400 */  sll        $a2, $v1, 16
    /* 1F2BD4 802D9EC4 0006CC03 */  sra        $t9, $a2, 16
    /* 1F2BD8 802D9EC8 00192C00 */  sll        $a1, $t9, 16
    /* 1F2BDC 802D9ECC 00022400 */  sll        $a0, $v0, 16
    /* 1F2BE0 802D9ED0 0004C403 */  sra        $t8, $a0, 16
    /* 1F2BE4 802D9ED4 00056C03 */  sra        $t5, $a1, 16
    /* 1F2BE8 802D9ED8 01A02825 */  or         $a1, $t5, $zero
    /* 1F2BEC 802D9EDC 03002025 */  or         $a0, $t8, $zero
    /* 1F2BF0 802D9EE0 AFB80044 */  sw         $t8, 0x44($sp)
    /* 1F2BF4 802D9EE4 03203025 */  or         $a2, $t9, $zero
    /* 1F2BF8 802D9EE8 0C02E134 */  jal        func_800B84D0_C7480
    /* 1F2BFC 802D9EEC AFB90040 */   sw        $t9, 0x40($sp)
    /* 1F2C00 802D9EF0 9218001A */  lbu        $t8, 0x1A($s0)
    /* 1F2C04 802D9EF4 3C0D8025 */  lui        $t5, %hi(D_8025668C)
    /* 1F2C08 802D9EF8 3C013FE8 */  lui        $at, (0x3FE80000 >> 16)
    /* 1F2C0C 802D9EFC 0018C880 */  sll        $t9, $t8, 2
    /* 1F2C10 802D9F00 0338C823 */  subu       $t9, $t9, $t8
    /* 1F2C14 802D9F04 0019C880 */  sll        $t9, $t9, 2
    /* 1F2C18 802D9F08 0338C821 */  addu       $t9, $t9, $t8
    /* 1F2C1C 802D9F0C 0019C8C0 */  sll        $t9, $t9, 3
    /* 1F2C20 802D9F10 01B96821 */  addu       $t5, $t5, $t9
    /* 1F2C24 802D9F14 85AD668C */  lh         $t5, %lo(D_8025668C)($t5)
    /* 1F2C28 802D9F18 44814800 */  mtc1       $at, $f9
    /* 1F2C2C 802D9F1C 44804000 */  mtc1       $zero, $f8
    /* 1F2C30 802D9F20 448D2000 */  mtc1       $t5, $f4
    /* 1F2C34 802D9F24 00022A03 */  sra        $a1, $v0, 8
    /* 1F2C38 802D9F28 00057400 */  sll        $t6, $a1, 16
    /* 1F2C3C 802D9F2C 468021A1 */  cvt.d.w    $f6, $f4
    /* 1F2C40 802D9F30 000E2C03 */  sra        $a1, $t6, 16
    /* 1F2C44 802D9F34 24070001 */  addiu      $a3, $zero, 0x1
    /* 1F2C48 802D9F38 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* 1F2C4C 802D9F3C 24180002 */  addiu      $t8, $zero, 0x2
    /* 1F2C50 802D9F40 46283282 */  mul.d      $f10, $f6, $f8
    /* 1F2C54 802D9F44 8FA40044 */  lw         $a0, 0x44($sp)
    /* 1F2C58 802D9F48 8FA60040 */  lw         $a2, 0x40($sp)
    /* 1F2C5C 802D9F4C 444EF800 */  cfc1       $t6, $31
    /* 1F2C60 802D9F50 44C7F800 */  ctc1       $a3, $31
    /* 1F2C64 802D9F54 00000000 */  nop
    /* 1F2C68 802D9F58 46205424 */  cvt.w.d    $f16, $f10
    /* 1F2C6C 802D9F5C 4447F800 */  cfc1       $a3, $31
    /* 1F2C70 802D9F60 00000000 */  nop
    /* 1F2C74 802D9F64 30E70078 */  andi       $a3, $a3, 0x78
    /* 1F2C78 802D9F68 50E00014 */  beql       $a3, $zero, .L802D9FBC_1F2CCC
    /* 1F2C7C 802D9F6C 44078000 */   mfc1      $a3, $f16
    /* 1F2C80 802D9F70 44818800 */  mtc1       $at, $f17
    /* 1F2C84 802D9F74 44808000 */  mtc1       $zero, $f16
    /* 1F2C88 802D9F78 24070001 */  addiu      $a3, $zero, 0x1
    /* 1F2C8C 802D9F7C 46305401 */  sub.d      $f16, $f10, $f16
    /* 1F2C90 802D9F80 44C7F800 */  ctc1       $a3, $31
    /* 1F2C94 802D9F84 00000000 */  nop
    /* 1F2C98 802D9F88 46208424 */  cvt.w.d    $f16, $f16
    /* 1F2C9C 802D9F8C 4447F800 */  cfc1       $a3, $31
    /* 1F2CA0 802D9F90 00000000 */  nop
    /* 1F2CA4 802D9F94 30E70078 */  andi       $a3, $a3, 0x78
    /* 1F2CA8 802D9F98 14E00005 */  bnez       $a3, .L802D9FB0_1F2CC0
    /* 1F2CAC 802D9F9C 00000000 */   nop
    /* 1F2CB0 802D9FA0 44078000 */  mfc1       $a3, $f16
    /* 1F2CB4 802D9FA4 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* 1F2CB8 802D9FA8 10000007 */  b          .L802D9FC8_1F2CD8
    /* 1F2CBC 802D9FAC 00E13825 */   or        $a3, $a3, $at
  .L802D9FB0_1F2CC0:
    /* 1F2CC0 802D9FB0 10000005 */  b          .L802D9FC8_1F2CD8
    /* 1F2CC4 802D9FB4 2407FFFF */   addiu     $a3, $zero, -0x1
    /* 1F2CC8 802D9FB8 44078000 */  mfc1       $a3, $f16
  .L802D9FBC_1F2CCC:
    /* 1F2CCC 802D9FBC 00000000 */  nop
    /* 1F2CD0 802D9FC0 04E0FFFB */  bltz       $a3, .L802D9FB0_1F2CC0
    /* 1F2CD4 802D9FC4 00000000 */   nop
  .L802D9FC8_1F2CD8:
    /* 1F2CD8 802D9FC8 44CEF800 */  ctc1       $t6, $31
    /* 1F2CDC 802D9FCC 30EFFFFF */  andi       $t7, $a3, 0xFFFF
    /* 1F2CE0 802D9FD0 01E03825 */  or         $a3, $t7, $zero
    /* 1F2CE4 802D9FD4 0C037E12 */  jal        func_800DF848_EE7F8
    /* 1F2CE8 802D9FD8 AFB80010 */   sw        $t8, 0x10($sp)
    /* 1F2CEC 802D9FDC 8603002C */  lh         $v1, 0x2C($s0)
    /* 1F2CF0 802D9FE0 24010001 */  addiu      $at, $zero, 0x1
  .L802D9FE4_1F2CF4:
    /* 1F2CF4 802D9FE4 14610063 */  bne        $v1, $at, .L802DA174_1F2E84
    /* 1F2CF8 802D9FE8 8FA20050 */   lw        $v0, 0x50($sp)
    /* 1F2CFC 802D9FEC 84590004 */  lh         $t9, 0x4($v0)
    /* 1F2D00 802D9FF0 240D0004 */  addiu      $t5, $zero, 0x4
    /* 1F2D04 802D9FF4 AFAD0018 */  sw         $t5, 0x18($sp)
    /* 1F2D08 802D9FF8 322400FF */  andi       $a0, $s1, 0xFF
    /* 1F2D0C 802D9FFC 87A5009E */  lh         $a1, 0x9E($sp)
    /* 1F2D10 802DA000 84460000 */  lh         $a2, 0x0($v0)
    /* 1F2D14 802DA004 84470002 */  lh         $a3, 0x2($v0)
    /* 1F2D18 802DA008 AFA00014 */  sw         $zero, 0x14($sp)
    /* 1F2D1C 802DA00C AFA0001C */  sw         $zero, 0x1C($sp)
    /* 1F2D20 802DA010 0C022390 */  jal        func_80088E40_97DF0
    /* 1F2D24 802DA014 AFB90010 */   sw        $t9, 0x10($sp)
    /* 1F2D28 802DA018 86020006 */  lh         $v0, 0x6($s0)
    /* 1F2D2C 802DA01C 24422000 */  addiu      $v0, $v0, 0x2000
    /* 1F2D30 802DA020 3044FFFF */  andi       $a0, $v0, 0xFFFF
    /* 1F2D34 802DA024 0C007660 */  jal        sins
    /* 1F2D38 802DA028 AFA40050 */   sw        $a0, 0x50($sp)
    /* 1F2D3C 802DA02C 44829000 */  mtc1       $v0, $f18
    /* 1F2D40 802DA030 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 1F2D44 802DA034 4481A800 */  mtc1       $at, $f21
    /* 1F2D48 802DA038 46809120 */  cvt.s.w    $f4, $f18
    /* 1F2D4C 802DA03C 4480A000 */  mtc1       $zero, $f20
    /* 1F2D50 802DA040 3C01402E */  lui        $at, (0x402E0000 >> 16)
    /* 1F2D54 802DA044 44815800 */  mtc1       $at, $f11
    /* 1F2D58 802DA048 44805000 */  mtc1       $zero, $f10
    /* 1F2D5C 802DA04C 8FA40050 */  lw         $a0, 0x50($sp)
    /* 1F2D60 802DA050 460021A1 */  cvt.d.s    $f6, $f4
    /* 1F2D64 802DA054 46343203 */  div.d      $f8, $f6, $f20
    /* 1F2D68 802DA058 462A4402 */  mul.d      $f16, $f8, $f10
    /* 1F2D6C 802DA05C 462084A0 */  cvt.s.d    $f18, $f16
    /* 1F2D70 802DA060 0C007654 */  jal        coss
    /* 1F2D74 802DA064 E7B2008C */   swc1      $f18, 0x8C($sp)
    /* 1F2D78 802DA068 44824000 */  mtc1       $v0, $f8
    /* 1F2D7C 802DA06C C7A4008C */  lwc1       $f4, 0x8C($sp)
    /* 1F2D80 802DA070 3C01C02E */  lui        $at, (0xC02E0000 >> 16)
    /* 1F2D84 802DA074 468042A0 */  cvt.s.w    $f10, $f8
    /* 1F2D88 802DA078 44812800 */  mtc1       $at, $f5
    /* 1F2D8C 802DA07C 8FA3004C */  lw         $v1, 0x4C($sp)
    /* 1F2D90 802DA080 322400FF */  andi       $a0, $s1, 0xFF
    /* 1F2D94 802DA084 87A5009C */  lh         $a1, 0x9C($sp)
    /* 1F2D98 802DA088 4600218D */  trunc.w.s  $f6, $f4
    /* 1F2D9C 802DA08C 44802000 */  mtc1       $zero, $f4
    /* 1F2DA0 802DA090 846E0004 */  lh         $t6, 0x4($v1)
    /* 1F2DA4 802DA094 46005421 */  cvt.d.s    $f16, $f10
    /* 1F2DA8 802DA098 44183000 */  mfc1       $t8, $f6
    /* 1F2DAC 802DA09C 46348483 */  div.d      $f18, $f16, $f20
    /* 1F2DB0 802DA0A0 AFA00018 */  sw         $zero, 0x18($sp)
    /* 1F2DB4 802DA0A4 84660000 */  lh         $a2, 0x0($v1)
    /* 1F2DB8 802DA0A8 84670002 */  lh         $a3, 0x2($v1)
    /* 1F2DBC 802DA0AC AFAE0010 */  sw         $t6, 0x10($sp)
    /* 1F2DC0 802DA0B0 AFB80014 */  sw         $t8, 0x14($sp)
    /* 1F2DC4 802DA0B4 46249182 */  mul.d      $f6, $f18, $f4
    /* 1F2DC8 802DA0B8 46203220 */  cvt.s.d    $f8, $f6
    /* 1F2DCC 802DA0BC 4600428D */  trunc.w.s  $f10, $f8
    /* 1F2DD0 802DA0C0 440D5000 */  mfc1       $t5, $f10
    /* 1F2DD4 802DA0C4 0C022390 */  jal        func_80088E40_97DF0
    /* 1F2DD8 802DA0C8 AFAD001C */   sw        $t5, 0x1C($sp)
    /* 1F2DDC 802DA0CC 86020006 */  lh         $v0, 0x6($s0)
    /* 1F2DE0 802DA0D0 24426000 */  addiu      $v0, $v0, 0x6000
    /* 1F2DE4 802DA0D4 3044FFFF */  andi       $a0, $v0, 0xFFFF
    /* 1F2DE8 802DA0D8 0C007660 */  jal        sins
    /* 1F2DEC 802DA0DC AFA40050 */   sw        $a0, 0x50($sp)
    /* 1F2DF0 802DA0E0 44828000 */  mtc1       $v0, $f16
    /* 1F2DF4 802DA0E4 3C01402E */  lui        $at, (0x402E0000 >> 16)
    /* 1F2DF8 802DA0E8 44814800 */  mtc1       $at, $f9
    /* 1F2DFC 802DA0EC 468084A0 */  cvt.s.w    $f18, $f16
    /* 1F2E00 802DA0F0 44804000 */  mtc1       $zero, $f8
    /* 1F2E04 802DA0F4 8FA40050 */  lw         $a0, 0x50($sp)
    /* 1F2E08 802DA0F8 46009121 */  cvt.d.s    $f4, $f18
    /* 1F2E0C 802DA0FC 46342183 */  div.d      $f6, $f4, $f20
    /* 1F2E10 802DA100 46283282 */  mul.d      $f10, $f6, $f8
    /* 1F2E14 802DA104 46205420 */  cvt.s.d    $f16, $f10
    /* 1F2E18 802DA108 0C007654 */  jal        coss
    /* 1F2E1C 802DA10C E7B0008C */   swc1      $f16, 0x8C($sp)
    /* 1F2E20 802DA110 44823000 */  mtc1       $v0, $f6
    /* 1F2E24 802DA114 C7B2008C */  lwc1       $f18, 0x8C($sp)
    /* 1F2E28 802DA118 3C01C02E */  lui        $at, (0xC02E0000 >> 16)
    /* 1F2E2C 802DA11C 46803220 */  cvt.s.w    $f8, $f6
    /* 1F2E30 802DA120 44819800 */  mtc1       $at, $f19
    /* 1F2E34 802DA124 8FA30048 */  lw         $v1, 0x48($sp)
    /* 1F2E38 802DA128 322400FF */  andi       $a0, $s1, 0xFF
    /* 1F2E3C 802DA12C 87A5009A */  lh         $a1, 0x9A($sp)
    /* 1F2E40 802DA130 4600910D */  trunc.w.s  $f4, $f18
    /* 1F2E44 802DA134 44809000 */  mtc1       $zero, $f18
    /* 1F2E48 802DA138 846E0004 */  lh         $t6, 0x4($v1)
    /* 1F2E4C 802DA13C 460042A1 */  cvt.d.s    $f10, $f8
    /* 1F2E50 802DA140 44182000 */  mfc1       $t8, $f4
    /* 1F2E54 802DA144 46345403 */  div.d      $f16, $f10, $f20
    /* 1F2E58 802DA148 AFA00018 */  sw         $zero, 0x18($sp)
    /* 1F2E5C 802DA14C 84660000 */  lh         $a2, 0x0($v1)
    /* 1F2E60 802DA150 84670002 */  lh         $a3, 0x2($v1)
    /* 1F2E64 802DA154 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 1F2E68 802DA158 AFB80014 */  sw         $t8, 0x14($sp)
    /* 1F2E6C 802DA15C 46328102 */  mul.d      $f4, $f16, $f18
    /* 1F2E70 802DA160 462021A0 */  cvt.s.d    $f6, $f4
    /* 1F2E74 802DA164 4600320D */  trunc.w.s  $f8, $f6
    /* 1F2E78 802DA168 440D4000 */  mfc1       $t5, $f8
    /* 1F2E7C 802DA16C 0C022390 */  jal        func_80088E40_97DF0
    /* 1F2E80 802DA170 AFAD001C */   sw        $t5, 0x1C($sp)
  .L802DA174_1F2E84:
    /* 1F2E84 802DA174 8FBF003C */  lw         $ra, 0x3C($sp)
    /* 1F2E88 802DA178 D7B40028 */  ldc1       $f20, 0x28($sp)
    /* 1F2E8C 802DA17C 8FB00034 */  lw         $s0, 0x34($sp)
    /* 1F2E90 802DA180 8FB10038 */  lw         $s1, 0x38($sp)
    /* 1F2E94 802DA184 03E00008 */  jr         $ra
    /* 1F2E98 802DA188 27BD00A0 */   addiu     $sp, $sp, 0xA0
endlabel func_802D9CB8_1F29C8
