nonmatching func_802E3A4C_327B9C, 0x3E4

glabel func_802E3A4C_327B9C
    /* 327B9C 802E3A4C 27BDFF88 */  addiu      $sp, $sp, -0x78
    /* 327BA0 802E3A50 3C0F802E */  lui        $t7, %hi(D_802E71D0)
    /* 327BA4 802E3A54 AFBF002C */  sw         $ra, 0x2C($sp)
    /* 327BA8 802E3A58 AFB00028 */  sw         $s0, 0x28($sp)
    /* 327BAC 802E3A5C AFA40078 */  sw         $a0, 0x78($sp)
    /* 327BB0 802E3A60 25EF71D0 */  addiu      $t7, $t7, %lo(D_802E71D0)
    /* 327BB4 802E3A64 8DE10000 */  lw         $at, 0x0($t7)
    /* 327BB8 802E3A68 27AE0070 */  addiu      $t6, $sp, 0x70
    /* 327BBC 802E3A6C 24050050 */  addiu      $a1, $zero, 0x50
    /* 327BC0 802E3A70 ADC10000 */  sw         $at, 0x0($t6)
    /* 327BC4 802E3A74 95E10004 */  lhu        $at, 0x4($t7)
    /* 327BC8 802E3A78 3C038005 */  lui        $v1, %hi(alienInstances)
    /* 327BCC 802E3A7C 24638198 */  addiu      $v1, $v1, %lo(alienInstances)
    /* 327BD0 802E3A80 A5C10004 */  sh         $at, 0x4($t6)
    /* 327BD4 802E3A84 93A9007B */  lbu        $t1, 0x7B($sp)
    /* 327BD8 802E3A88 01250019 */  multu      $t1, $a1
    /* 327BDC 802E3A8C 00005012 */  mflo       $t2
    /* 327BE0 802E3A90 006A8021 */  addu       $s0, $v1, $t2
    /* 327BE4 802E3A94 92040025 */  lbu        $a0, 0x25($s0)
    /* 327BE8 802E3A98 00801025 */  or         $v0, $a0, $zero
    /* 327BEC 802E3A9C 00450019 */  multu      $v0, $a1
    /* 327BF0 802E3AA0 00005812 */  mflo       $t3
    /* 327BF4 802E3AA4 006B6021 */  addu       $t4, $v1, $t3
    /* 327BF8 802E3AA8 918D0025 */  lbu        $t5, 0x25($t4)
    /* 327BFC 802E3AAC 01A50019 */  multu      $t5, $a1
    /* 327C00 802E3AB0 0000C812 */  mflo       $t9
    /* 327C04 802E3AB4 0079C021 */  addu       $t8, $v1, $t9
    /* 327C08 802E3AB8 0C0B7FC1 */  jal        func_802DFF04_324054
    /* 327C0C 802E3ABC AFB8004C */   sw        $t8, 0x4C($sp)
    /* 327C10 802E3AC0 3C038015 */  lui        $v1, %hi(D_8014DD50)
    /* 327C14 802E3AC4 2463DD50 */  addiu      $v1, $v1, %lo(D_8014DD50)
    /* 327C18 802E3AC8 00027100 */  sll        $t6, $v0, 4
    /* 327C1C 802E3ACC 006E7821 */  addu       $t7, $v1, $t6
    /* 327C20 802E3AD0 81E6000C */  lb         $a2, 0xC($t7)
    /* 327C24 802E3AD4 00022C00 */  sll        $a1, $v0, 16
    /* 327C28 802E3AD8 00056403 */  sra        $t4, $a1, 16
    /* 327C2C 802E3ADC 00064100 */  sll        $t0, $a2, 4
    /* 327C30 802E3AE0 00684821 */  addu       $t1, $v1, $t0
    /* 327C34 802E3AE4 8126000D */  lb         $a2, 0xD($t1)
    /* 327C38 802E3AE8 01802825 */  or         $a1, $t4, $zero
    /* 327C3C 802E3AEC 93A4007B */  lbu        $a0, 0x7B($sp)
    /* 327C40 802E3AF0 00065100 */  sll        $t2, $a2, 4
    /* 327C44 802E3AF4 006A5821 */  addu       $t3, $v1, $t2
    /* 327C48 802E3AF8 8166000D */  lb         $a2, 0xD($t3)
    /* 327C4C 802E3AFC 0C0B8D61 */  jal        func_802E3584_3276D4
    /* 327C50 802E3B00 27A70070 */   addiu     $a3, $sp, 0x70
    /* 327C54 802E3B04 8FAD004C */  lw         $t5, 0x4C($sp)
    /* 327C58 802E3B08 8DB90020 */  lw         $t9, 0x20($t5)
    /* 327C5C 802E3B0C 33388000 */  andi       $t8, $t9, 0x8000
    /* 327C60 802E3B10 1700009B */  bnez       $t8, .L802E3D80_327ED0
    /* 327C64 802E3B14 00000000 */   nop
    /* 327C68 802E3B18 0C000E38 */  jal        func_800038E0_44E0
    /* 327C6C 802E3B1C 00000000 */   nop
    /* 327C70 802E3B20 3C088005 */  lui        $t0, %hi(D_80052A8C)
    /* 327C74 802E3B24 8D082A8C */  lw         $t0, %lo(D_80052A8C)($t0)
    /* 327C78 802E3B28 04410004 */  bgez       $v0, .L802E3B3C_327C8C
    /* 327C7C 802E3B2C 304E0007 */   andi      $t6, $v0, 0x7
    /* 327C80 802E3B30 11C00002 */  beqz       $t6, .L802E3B3C_327C8C
    /* 327C84 802E3B34 00000000 */   nop
    /* 327C88 802E3B38 25CEFFF8 */  addiu      $t6, $t6, -0x8
  .L802E3B3C_327C8C:
    /* 327C8C 802E3B3C 25CF0008 */  addiu      $t7, $t6, 0x8
    /* 327C90 802E3B40 01E84824 */  and        $t1, $t7, $t0
    /* 327C94 802E3B44 1520008E */  bnez       $t1, .L802E3D80_327ED0
    /* 327C98 802E3B48 00000000 */   nop
    /* 327C9C 802E3B4C 0C000E38 */  jal        func_800038E0_44E0
    /* 327CA0 802E3B50 00000000 */   nop
    /* 327CA4 802E3B54 3C0A802E */  lui        $t2, %hi(D_802E7C50)
    /* 327CA8 802E3B58 8D4A7C50 */  lw         $t2, %lo(D_802E7C50)($t2)
    /* 327CAC 802E3B5C 3C013F70 */  lui        $at, (0x3F700000 >> 16)
    /* 327CB0 802E3B60 44814800 */  mtc1       $at, $f9
    /* 327CB4 802E3B64 448A2000 */  mtc1       $t2, $f4
    /* 327CB8 802E3B68 44804000 */  mtc1       $zero, $f8
    /* 327CBC 802E3B6C A7A20052 */  sh         $v0, 0x52($sp)
    /* 327CC0 802E3B70 468021A1 */  cvt.d.w    $f6, $f4
    /* 327CC4 802E3B74 3044FFFF */  andi       $a0, $v0, 0xFFFF
    /* 327CC8 802E3B78 46283282 */  mul.d      $f10, $f6, $f8
    /* 327CCC 802E3B7C 46205420 */  cvt.s.d    $f16, $f10
    /* 327CD0 802E3B80 0C007654 */  jal        coss
    /* 327CD4 802E3B84 E7B00048 */   swc1      $f16, 0x48($sp)
    /* 327CD8 802E3B88 97A40052 */  lhu        $a0, 0x52($sp)
    /* 327CDC 802E3B8C A7A20044 */  sh         $v0, 0x44($sp)
    /* 327CE0 802E3B90 0C007660 */  jal        sins
    /* 327CE4 802E3B94 AFA40038 */   sw        $a0, 0x38($sp)
    /* 327CE8 802E3B98 87AD0044 */  lh         $t5, 0x44($sp)
    /* 327CEC 802E3B9C 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 327CF0 802E3BA0 44811800 */  mtc1       $at, $f3
    /* 327CF4 802E3BA4 448D9000 */  mtc1       $t5, $f18
    /* 327CF8 802E3BA8 44801000 */  mtc1       $zero, $f2
    /* 327CFC 802E3BAC 3C014051 */  lui        $at, (0x40510000 >> 16)
    /* 327D00 802E3BB0 46809120 */  cvt.s.w    $f4, $f18
    /* 327D04 802E3BB4 44816800 */  mtc1       $at, $f13
    /* 327D08 802E3BB8 44806000 */  mtc1       $zero, $f12
    /* 327D0C 802E3BBC 3C01401C */  lui        $at, (0x401C0000 >> 16)
    /* 327D10 802E3BC0 44818800 */  mtc1       $at, $f17
    /* 327D14 802E3BC4 44808000 */  mtc1       $zero, $f16
    /* 327D18 802E3BC8 460021A1 */  cvt.d.s    $f6, $f4
    /* 327D1C 802E3BCC C7AE0048 */  lwc1       $f14, 0x48($sp)
    /* 327D20 802E3BD0 46223203 */  div.d      $f8, $f6, $f2
    /* 327D24 802E3BD4 3C01C026 */  lui        $at, (0xC0260000 >> 16)
    /* 327D28 802E3BD8 27AD0068 */  addiu      $t5, $sp, 0x68
    /* 327D2C 802E3BDC 27B90064 */  addiu      $t9, $sp, 0x64
    /* 327D30 802E3BE0 46007021 */  cvt.d.s    $f0, $f14
    /* 327D34 802E3BE4 AFB90014 */  sw         $t9, 0x14($sp)
    /* 327D38 802E3BE8 F7A00030 */  sdc1       $f0, 0x30($sp)
    /* 327D3C 802E3BEC AFAD0010 */  sw         $t5, 0x10($sp)
    /* 327D40 802E3BF0 02002025 */  or         $a0, $s0, $zero
    /* 327D44 802E3BF4 462C4282 */  mul.d      $f10, $f8, $f12
    /* 327D48 802E3BF8 44824000 */  mtc1       $v0, $f8
    /* 327D4C 802E3BFC 46305480 */  add.d      $f18, $f10, $f16
    /* 327D50 802E3C00 468042A0 */  cvt.s.w    $f10, $f8
    /* 327D54 802E3C04 46209102 */  mul.d      $f4, $f18, $f0
    /* 327D58 802E3C08 46005421 */  cvt.d.s    $f16, $f10
    /* 327D5C 802E3C0C 46228483 */  div.d      $f18, $f16, $f2
    /* 327D60 802E3C10 4620218D */  trunc.w.d  $f6, $f4
    /* 327D64 802E3C14 44813800 */  mtc1       $at, $f7
    /* 327D68 802E3C18 3C014302 */  lui        $at, (0x43020000 >> 16)
    /* 327D6C 802E3C1C 44053000 */  mfc1       $a1, $f6
    /* 327D70 802E3C20 44803000 */  mtc1       $zero, $f6
    /* 327D74 802E3C24 0005C400 */  sll        $t8, $a1, 16
    /* 327D78 802E3C28 00182C03 */  sra        $a1, $t8, 16
    /* 327D7C 802E3C2C 27B80060 */  addiu      $t8, $sp, 0x60
    /* 327D80 802E3C30 AFB80018 */  sw         $t8, 0x18($sp)
    /* 327D84 802E3C34 462C9102 */  mul.d      $f4, $f18, $f12
    /* 327D88 802E3C38 44819000 */  mtc1       $at, $f18
    /* 327D8C 802E3C3C 46262200 */  add.d      $f8, $f4, $f6
    /* 327D90 802E3C40 46204282 */  mul.d      $f10, $f8, $f0
    /* 327D94 802E3C44 00000000 */  nop
    /* 327D98 802E3C48 46127102 */  mul.s      $f4, $f14, $f18
    /* 327D9C 802E3C4C 4620540D */  trunc.w.d  $f16, $f10
    /* 327DA0 802E3C50 4600218D */  trunc.w.s  $f6, $f4
    /* 327DA4 802E3C54 44068000 */  mfc1       $a2, $f16
    /* 327DA8 802E3C58 44073000 */  mfc1       $a3, $f6
    /* 327DAC 802E3C5C 00064400 */  sll        $t0, $a2, 16
    /* 327DB0 802E3C60 00083403 */  sra        $a2, $t0, 16
    /* 327DB4 802E3C64 00075C00 */  sll        $t3, $a3, 16
    /* 327DB8 802E3C68 0C04A10A */  jal        func_80128428_1373D8
    /* 327DBC 802E3C6C 000B3C03 */   sra       $a3, $t3, 16
    /* 327DC0 802E3C70 0C007654 */  jal        coss
    /* 327DC4 802E3C74 97A4003A */   lhu       $a0, 0x3A($sp)
    /* 327DC8 802E3C78 A7A20044 */  sh         $v0, 0x44($sp)
    /* 327DCC 802E3C7C 0C007660 */  jal        sins
    /* 327DD0 802E3C80 97A4003A */   lhu       $a0, 0x3A($sp)
    /* 327DD4 802E3C84 87AE0044 */  lh         $t6, 0x44($sp)
    /* 327DD8 802E3C88 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 327DDC 802E3C8C 44811800 */  mtc1       $at, $f3
    /* 327DE0 802E3C90 448E4000 */  mtc1       $t6, $f8
    /* 327DE4 802E3C94 44801000 */  mtc1       $zero, $f2
    /* 327DE8 802E3C98 3C01802E */  lui        $at, %hi(D_802E7C28)
    /* 327DEC 802E3C9C 468042A0 */  cvt.s.w    $f10, $f8
    /* 327DF0 802E3CA0 D42C7C28 */  ldc1       $f12, %lo(D_802E7C28)($at)
    /* 327DF4 802E3CA4 3C01401C */  lui        $at, (0x401C0000 >> 16)
    /* 327DF8 802E3CA8 44813800 */  mtc1       $at, $f7
    /* 327DFC 802E3CAC 44803000 */  mtc1       $zero, $f6
    /* 327E00 802E3CB0 D7A00030 */  ldc1       $f0, 0x30($sp)
    /* 327E04 802E3CB4 46005421 */  cvt.d.s    $f16, $f10
    /* 327E08 802E3CB8 3C01C034 */  lui        $at, (0xC0340000 >> 16)
    /* 327E0C 802E3CBC 46228483 */  div.d      $f18, $f16, $f2
    /* 327E10 802E3CC0 27AE005C */  addiu      $t6, $sp, 0x5C
    /* 327E14 802E3CC4 27AF0058 */  addiu      $t7, $sp, 0x58
    /* 327E18 802E3CC8 AFAF0014 */  sw         $t7, 0x14($sp)
    /* 327E1C 802E3CCC AFAE0010 */  sw         $t6, 0x10($sp)
    /* 327E20 802E3CD0 02002025 */  or         $a0, $s0, $zero
    /* 327E24 802E3CD4 462C9102 */  mul.d      $f4, $f18, $f12
    /* 327E28 802E3CD8 44829000 */  mtc1       $v0, $f18
    /* 327E2C 802E3CDC 46262200 */  add.d      $f8, $f4, $f6
    /* 327E30 802E3CE0 46809120 */  cvt.s.w    $f4, $f18
    /* 327E34 802E3CE4 46204282 */  mul.d      $f10, $f8, $f0
    /* 327E38 802E3CE8 460021A1 */  cvt.d.s    $f6, $f4
    /* 327E3C 802E3CEC 46223203 */  div.d      $f8, $f6, $f2
    /* 327E40 802E3CF0 4620540D */  trunc.w.d  $f16, $f10
    /* 327E44 802E3CF4 44818800 */  mtc1       $at, $f17
    /* 327E48 802E3CF8 3C0143A4 */  lui        $at, (0x43A40000 >> 16)
    /* 327E4C 802E3CFC 44058000 */  mfc1       $a1, $f16
    /* 327E50 802E3D00 44808000 */  mtc1       $zero, $f16
    /* 327E54 802E3D04 00054400 */  sll        $t0, $a1, 16
    /* 327E58 802E3D08 00082C03 */  sra        $a1, $t0, 16
    /* 327E5C 802E3D0C 27A80054 */  addiu      $t0, $sp, 0x54
    /* 327E60 802E3D10 AFA80018 */  sw         $t0, 0x18($sp)
    /* 327E64 802E3D14 462C4282 */  mul.d      $f10, $f8, $f12
    /* 327E68 802E3D18 C7A80048 */  lwc1       $f8, 0x48($sp)
    /* 327E6C 802E3D1C 46305480 */  add.d      $f18, $f10, $f16
    /* 327E70 802E3D20 44815000 */  mtc1       $at, $f10
    /* 327E74 802E3D24 46209102 */  mul.d      $f4, $f18, $f0
    /* 327E78 802E3D28 00000000 */  nop
    /* 327E7C 802E3D2C 460A4402 */  mul.s      $f16, $f8, $f10
    /* 327E80 802E3D30 4620218D */  trunc.w.d  $f6, $f4
    /* 327E84 802E3D34 4600848D */  trunc.w.s  $f18, $f16
    /* 327E88 802E3D38 44063000 */  mfc1       $a2, $f6
    /* 327E8C 802E3D3C 44079000 */  mfc1       $a3, $f18
    /* 327E90 802E3D40 00065C00 */  sll        $t3, $a2, 16
    /* 327E94 802E3D44 000B3403 */  sra        $a2, $t3, 16
    /* 327E98 802E3D48 0007CC00 */  sll        $t9, $a3, 16
    /* 327E9C 802E3D4C 0C04A10A */  jal        func_80128428_1373D8
    /* 327EA0 802E3D50 00193C03 */   sra       $a3, $t9, 16
    /* 327EA4 802E3D54 8FA90058 */  lw         $t1, 0x58($sp)
    /* 327EA8 802E3D58 8FAA0054 */  lw         $t2, 0x54($sp)
    /* 327EAC 802E3D5C 240B0002 */  addiu      $t3, $zero, 0x2
    /* 327EB0 802E3D60 AFAB0018 */  sw         $t3, 0x18($sp)
    /* 327EB4 802E3D64 87A4006A */  lh         $a0, 0x6A($sp)
    /* 327EB8 802E3D68 87A50066 */  lh         $a1, 0x66($sp)
    /* 327EBC 802E3D6C 87A60062 */  lh         $a2, 0x62($sp)
    /* 327EC0 802E3D70 87A7005E */  lh         $a3, 0x5E($sp)
    /* 327EC4 802E3D74 AFA90010 */  sw         $t1, 0x10($sp)
    /* 327EC8 802E3D78 0C0345AF */  jal        func_800D16BC_E066C
    /* 327ECC 802E3D7C AFAA0014 */   sw        $t2, 0x14($sp)
  .L802E3D80_327ED0:
    /* 327ED0 802E3D80 3C02802E */  lui        $v0, %hi(D_802E7C50)
    /* 327ED4 802E3D84 8C427C50 */  lw         $v0, %lo(D_802E7C50)($v0)
    /* 327ED8 802E3D88 2419000F */  addiu      $t9, $zero, 0xF
    /* 327EDC 802E3D8C 24180003 */  addiu      $t8, $zero, 0x3
    /* 327EE0 802E3D90 28410100 */  slti       $at, $v0, 0x100
    /* 327EE4 802E3D94 10200011 */  beqz       $at, .L802E3DDC_327F2C
    /* 327EE8 802E3D98 24470064 */   addiu     $a3, $v0, 0x64
    /* 327EEC 802E3D9C 00076400 */  sll        $t4, $a3, 16
    /* 327EF0 802E3DA0 240E0028 */  addiu      $t6, $zero, 0x28
    /* 327EF4 802E3DA4 AFAE0018 */  sw         $t6, 0x18($sp)
    /* 327EF8 802E3DA8 000C3C03 */  sra        $a3, $t4, 16
    /* 327EFC 802E3DAC 86040000 */  lh         $a0, 0x0($s0)
    /* 327F00 802E3DB0 86050002 */  lh         $a1, 0x2($s0)
    /* 327F04 802E3DB4 86060004 */  lh         $a2, 0x4($s0)
    /* 327F08 802E3DB8 AFB90010 */  sw         $t9, 0x10($sp)
    /* 327F0C 802E3DBC 0C0315A9 */  jal        func_800C56A4_D4654
    /* 327F10 802E3DC0 AFB80014 */   sw        $t8, 0x14($sp)
    /* 327F14 802E3DC4 3C0F802E */  lui        $t7, %hi(D_802E7C50)
    /* 327F18 802E3DC8 8DEF7C50 */  lw         $t7, %lo(D_802E7C50)($t7)
    /* 327F1C 802E3DCC 3C01802E */  lui        $at, %hi(D_802E7C50)
    /* 327F20 802E3DD0 25E80002 */  addiu      $t0, $t7, 0x2
    /* 327F24 802E3DD4 1000000A */  b          .L802E3E00_327F50
    /* 327F28 802E3DD8 AC287C50 */   sw        $t0, %lo(D_802E7C50)($at)
  .L802E3DDC_327F2C:
    /* 327F2C 802E3DDC 8E020020 */  lw         $v0, 0x20($s0)
    /* 327F30 802E3DE0 3C01FFBF */  lui        $at, (0xFFBFFFFF >> 16)
    /* 327F34 802E3DE4 3421FFFF */  ori        $at, $at, (0xFFBFFFFF & 0xFFFF)
    /* 327F38 802E3DE8 30494000 */  andi       $t1, $v0, 0x4000
    /* 327F3C 802E3DEC 15200004 */  bnez       $t1, .L802E3E00_327F50
    /* 327F40 802E3DF0 344A4000 */   ori       $t2, $v0, 0x4000
    /* 327F44 802E3DF4 AE0A0020 */  sw         $t2, 0x20($s0)
    /* 327F48 802E3DF8 01416024 */  and        $t4, $t2, $at
    /* 327F4C 802E3DFC AE0C0020 */  sw         $t4, 0x20($s0)
  .L802E3E00_327F50:
    /* 327F50 802E3E00 3C040D04 */  lui        $a0, %hi(D_D040F10)
    /* 327F54 802E3E04 0C0047E4 */  jal        func_80011F90_12B90
    /* 327F58 802E3E08 24840F10 */   addiu     $a0, $a0, %lo(D_D040F10)
    /* 327F5C 802E3E0C 3C04802E */  lui        $a0, %hi(D_802E7C52)
    /* 327F60 802E3E10 84847C52 */  lh         $a0, %lo(D_802E7C52)($a0)
    /* 327F64 802E3E14 0C001085 */  jal        func_80004214_4E14
    /* 327F68 802E3E18 00402825 */   or        $a1, $v0, $zero
    /* 327F6C 802E3E1C 8FBF002C */  lw         $ra, 0x2C($sp)
    /* 327F70 802E3E20 8FB00028 */  lw         $s0, 0x28($sp)
    /* 327F74 802E3E24 27BD0078 */  addiu      $sp, $sp, 0x78
    /* 327F78 802E3E28 03E00008 */  jr         $ra
    /* 327F7C 802E3E2C 00000000 */   nop
endlabel func_802E3A4C_327B9C
