nonmatching func_80075AA4_84A54, 0x3AC

glabel func_80075AA4_84A54
    /* 84A54 80075AA4 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* 84A58 80075AA8 AFB00018 */  sw         $s0, 0x18($sp)
    /* 84A5C 80075AAC 3C108004 */  lui        $s0, %hi(D_8004771E)
    /* 84A60 80075AB0 2610771E */  addiu      $s0, $s0, %lo(D_8004771E)
    /* 84A64 80075AB4 860E0000 */  lh         $t6, 0x0($s0)
    /* 84A68 80075AB8 2401000A */  addiu      $at, $zero, 0xA
    /* 84A6C 80075ABC AFBF003C */  sw         $ra, 0x3C($sp)
    /* 84A70 80075AC0 AFBE0038 */  sw         $fp, 0x38($sp)
    /* 84A74 80075AC4 AFB70034 */  sw         $s7, 0x34($sp)
    /* 84A78 80075AC8 AFB60030 */  sw         $s6, 0x30($sp)
    /* 84A7C 80075ACC AFB5002C */  sw         $s5, 0x2C($sp)
    /* 84A80 80075AD0 AFB40028 */  sw         $s4, 0x28($sp)
    /* 84A84 80075AD4 AFB30024 */  sw         $s3, 0x24($sp)
    /* 84A88 80075AD8 AFB20020 */  sw         $s2, 0x20($sp)
    /* 84A8C 80075ADC 15C10007 */  bne        $t6, $at, .L80075AFC_84AAC
    /* 84A90 80075AE0 AFB1001C */   sw        $s1, 0x1C($sp)
    /* 84A94 80075AE4 3C048004 */  lui        $a0, %hi(D_8004771C)
    /* 84A98 80075AE8 8484771C */  lh         $a0, %lo(D_8004771C)($a0)
    /* 84A9C 80075AEC 0C0B5334 */  jal        func_802D4CD0_18D7E0
    /* 84AA0 80075AF0 00002825 */   or        $a1, $zero, $zero
    /* 84AA4 80075AF4 240F0009 */  addiu      $t7, $zero, 0x9
    /* 84AA8 80075AF8 A60F0000 */  sh         $t7, 0x0($s0)
  .L80075AFC_84AAC:
    /* 84AAC 80075AFC 3C028004 */  lui        $v0, %hi(currentLevel)
    /* 84AB0 80075B00 8C427F90 */  lw         $v0, %lo(currentLevel)($v0)
    /* 84AB4 80075B04 24010001 */  addiu      $at, $zero, 0x1
    /* 84AB8 80075B08 24040000 */  addiu      $a0, $zero, 0x0
    /* 84ABC 80075B0C 10410005 */  beq        $v0, $at, .L80075B24_84AD4
    /* 84AC0 80075B10 24010002 */   addiu     $at, $zero, 0x2
    /* 84AC4 80075B14 1041000D */  beq        $v0, $at, .L80075B4C_84AFC
    /* 84AC8 80075B18 00000000 */   nop
    /* 84ACC 80075B1C 1000000B */  b          .L80075B4C_84AFC
    /* 84AD0 80075B20 00000000 */   nop
  .L80075B24_84AD4:
    /* 84AD4 80075B24 0C001C9B */  jal        func_8000726C_7E6C
    /* 84AD8 80075B28 24050015 */   addiu     $a1, $zero, 0x15
    /* 84ADC 80075B2C 10400007 */  beqz       $v0, .L80075B4C_84AFC
    /* 84AE0 80075B30 00000000 */   nop
    /* 84AE4 80075B34 0C04E4E8 */  jal        func_801393A0_148350
    /* 84AE8 80075B38 24040008 */   addiu     $a0, $zero, 0x8
    /* 84AEC 80075B3C 14400003 */  bnez       $v0, .L80075B4C_84AFC
    /* 84AF0 80075B40 24040008 */   addiu     $a0, $zero, 0x8
    /* 84AF4 80075B44 0C04E477 */  jal        func_801391DC_14818C
    /* 84AF8 80075B48 24058000 */   addiu     $a1, $zero, -0x8000
  .L80075B4C_84AFC:
    /* 84AFC 80075B4C 3C028005 */  lui        $v0, %hi(D_80052A8C)
    /* 84B00 80075B50 8C422A8C */  lw         $v0, %lo(D_80052A8C)($v0)
    /* 84B04 80075B54 2C4100DD */  sltiu      $at, $v0, 0xDD
    /* 84B08 80075B58 54200006 */  bnel       $at, $zero, .L80075B74_84B24
    /* 84B0C 80075B5C 24010014 */   addiu     $at, $zero, 0x14
    /* 84B10 80075B60 0C00219D */  jal        guess_checkMissions
    /* 84B14 80075B64 00000000 */   nop
    /* 84B18 80075B68 3C028005 */  lui        $v0, %hi(D_80052A8C)
    /* 84B1C 80075B6C 8C422A8C */  lw         $v0, %lo(D_80052A8C)($v0)
    /* 84B20 80075B70 24010014 */  addiu      $at, $zero, 0x14
  .L80075B74_84B24:
    /* 84B24 80075B74 0041001B */  divu       $zero, $v0, $at
    /* 84B28 80075B78 0000C010 */  mfhi       $t8
    /* 84B2C 80075B7C 2404000E */  addiu      $a0, $zero, 0xE
    /* 84B30 80075B80 1700000C */  bnez       $t8, .L80075BB4_84B64
    /* 84B34 80075B84 3C088015 */   lui       $t0, %hi(D_80149B28)
    /* 84B38 80075B88 3C038005 */  lui        $v1, %hi(D_8004D1BE)
    /* 84B3C 80075B8C 2463D1BE */  addiu      $v1, $v1, %lo(D_8004D1BE)
    /* 84B40 80075B90 2405FFFF */  addiu      $a1, $zero, -0x1
  .L80075B94_84B44:
    /* 84B44 80075B94 90620000 */  lbu        $v0, 0x0($v1)
    /* 84B48 80075B98 10A20002 */  beq        $a1, $v0, .L80075BA4_84B54
    /* 84B4C 80075B9C 24590001 */   addiu     $t9, $v0, 0x1
    /* 84B50 80075BA0 A0790000 */  sb         $t9, 0x0($v1)
  .L80075BA4_84B54:
    /* 84B54 80075BA4 00801025 */  or         $v0, $a0, $zero
    /* 84B58 80075BA8 2463FFFF */  addiu      $v1, $v1, -0x1
    /* 84B5C 80075BAC 1480FFF9 */  bnez       $a0, .L80075B94_84B44
    /* 84B60 80075BB0 2484FFFF */   addiu     $a0, $a0, -0x1
  .L80075BB4_84B64:
    /* 84B64 80075BB4 8D089B28 */  lw         $t0, %lo(D_80149B28)($t0)
    /* 84B68 80075BB8 3C0B8015 */  lui        $t3, %hi(D_801494C0)
    /* 84B6C 80075BBC 256B94C0 */  addiu      $t3, $t3, %lo(D_801494C0)
    /* 84B70 80075BC0 AFA8004C */  sw         $t0, 0x4C($sp)
    /* 84B74 80075BC4 2509FFFF */  addiu      $t1, $t0, -0x1
    /* 84B78 80075BC8 11000087 */  beqz       $t0, .L80075DE8_84D98
    /* 84B7C 80075BCC AFA9004C */   sw        $t1, 0x4C($sp)
    /* 84B80 80075BD0 00095080 */  sll        $t2, $t1, 2
    /* 84B84 80075BD4 01495023 */  subu       $t2, $t2, $t1
    /* 84B88 80075BD8 000A5040 */  sll        $t2, $t2, 1
    /* 84B8C 80075BDC 014B6021 */  addu       $t4, $t2, $t3
    /* 84B90 80075BE0 3C168005 */  lui        $s6, %hi(D_8004D14C)
    /* 84B94 80075BE4 3C158005 */  lui        $s5, %hi(D_8004D15C)
    /* 84B98 80075BE8 3C138005 */  lui        $s3, %hi(D_8004D150)
    /* 84B9C 80075BEC 3C128015 */  lui        $s2, %hi(D_801497C4)
    /* 84BA0 80075BF0 3C118015 */  lui        $s1, %hi(D_801497C0)
    /* 84BA4 80075BF4 263197C0 */  addiu      $s1, $s1, %lo(D_801497C0)
    /* 84BA8 80075BF8 265297C4 */  addiu      $s2, $s2, %lo(D_801497C4)
    /* 84BAC 80075BFC 2673D150 */  addiu      $s3, $s3, %lo(D_8004D150)
    /* 84BB0 80075C00 26B5D15C */  addiu      $s5, $s5, %lo(D_8004D15C)
    /* 84BB4 80075C04 26D6D14C */  addiu      $s6, $s6, %lo(D_8004D14C)
    /* 84BB8 80075C08 AFAC0040 */  sw         $t4, 0x40($sp)
    /* 84BBC 80075C0C 241E006E */  addiu      $fp, $zero, 0x6E
    /* 84BC0 80075C10 24170073 */  addiu      $s7, $zero, 0x73
    /* 84BC4 80075C14 24140003 */  addiu      $s4, $zero, 0x3
  .L80075C18_84BC8:
    /* 84BC8 80075C18 8FAD0040 */  lw         $t5, 0x40($sp)
    /* 84BCC 80075C1C 3C018015 */  lui        $at, %hi(D_80149B48)
    /* 84BD0 80075C20 AE2D0000 */  sw         $t5, 0x0($s1)
    /* 84BD4 80075C24 91AE0001 */  lbu        $t6, 0x1($t5)
    /* 84BD8 80075C28 01A01825 */  or         $v1, $t5, $zero
    /* 84BDC 80075C2C A42E9B48 */  sh         $t6, %lo(D_80149B48)($at)
    /* 84BE0 80075C30 91A20000 */  lbu        $v0, 0x0($t5)
    /* 84BE4 80075C34 24010001 */  addiu      $at, $zero, 0x1
    /* 84BE8 80075C38 50400065 */  beql       $v0, $zero, .L80075DD0_84D80
    /* 84BEC 80075C3C 8FAA004C */   lw        $t2, 0x4C($sp)
    /* 84BF0 80075C40 14410014 */  bne        $v0, $at, .L80075C94_84C44
    /* 84BF4 80075C44 02602825 */   or        $a1, $s3, $zero
    /* 84BF8 80075C48 91A40001 */  lbu        $a0, 0x1($t5)
    /* 84BFC 80075C4C 0C001E2E */  jal        func_800078B8_84B8
    /* 84C00 80075C50 02602825 */   or        $a1, $s3, $zero
    /* 84C04 80075C54 1440005D */  bnez       $v0, .L80075DCC_84D7C
    /* 84C08 80075C58 3C058005 */   lui       $a1, %hi(D_8004D154)
    /* 84C0C 80075C5C 8E2F0000 */  lw         $t7, 0x0($s1)
    /* 84C10 80075C60 24A5D154 */  addiu      $a1, $a1, %lo(D_8004D154)
    /* 84C14 80075C64 0C001E2E */  jal        func_800078B8_84B8
    /* 84C18 80075C68 91E40001 */   lbu       $a0, 0x1($t7)
    /* 84C1C 80075C6C 14400057 */  bnez       $v0, .L80075DCC_84D7C
    /* 84C20 80075C70 3C058005 */   lui       $a1, %hi(D_8004D158)
    /* 84C24 80075C74 8E380000 */  lw         $t8, 0x0($s1)
    /* 84C28 80075C78 24A5D158 */  addiu      $a1, $a1, %lo(D_8004D158)
    /* 84C2C 80075C7C 0C001E2E */  jal        func_800078B8_84B8
    /* 84C30 80075C80 93040001 */   lbu       $a0, 0x1($t8)
    /* 84C34 80075C84 50400008 */  beql       $v0, $zero, .L80075CA8_84C58
    /* 84C38 80075C88 8E230000 */   lw        $v1, 0x0($s1)
    /* 84C3C 80075C8C 10000050 */  b          .L80075DD0_84D80
    /* 84C40 80075C90 8FAA004C */   lw        $t2, 0x4C($sp)
  .L80075C94_84C44:
    /* 84C44 80075C94 0C001E2E */  jal        func_800078B8_84B8
    /* 84C48 80075C98 90640001 */   lbu       $a0, 0x1($v1)
    /* 84C4C 80075C9C 5040004C */  beql       $v0, $zero, .L80075DD0_84D80
    /* 84C50 80075CA0 8FAA004C */   lw        $t2, 0x4C($sp)
    /* 84C54 80075CA4 8E230000 */  lw         $v1, 0x0($s1)
  .L80075CA8_84C58:
    /* 84C58 80075CA8 3C098005 */  lui        $t1, %hi(D_8004D348)
    /* 84C5C 80075CAC 2529D348 */  addiu      $t1, $t1, %lo(D_8004D348)
    /* 84C60 80075CB0 90790002 */  lbu        $t9, 0x2($v1)
    /* 84C64 80075CB4 90700003 */  lbu        $s0, 0x3($v1)
    /* 84C68 80075CB8 001940C0 */  sll        $t0, $t9, 3
    /* 84C6C 80075CBC 01194021 */  addu       $t0, $t0, $t9
    /* 84C70 80075CC0 02001025 */  or         $v0, $s0, $zero
    /* 84C74 80075CC4 01095021 */  addu       $t2, $t0, $t1
    /* 84C78 80075CC8 AE4A0000 */  sw         $t2, 0x0($s2)
    /* 84C7C 80075CCC 1200003F */  beqz       $s0, .L80075DCC_84D7C
    /* 84C80 80075CD0 2610FFFF */   addiu     $s0, $s0, -0x1
  .L80075CD4_84C84:
    /* 84C84 80075CD4 0C002075 */  jal        func_800081D4_8DD4
    /* 84C88 80075CD8 8E440000 */   lw        $a0, 0x0($s2)
    /* 84C8C 80075CDC 5040003C */  beql       $v0, $zero, .L80075DD0_84D80
    /* 84C90 80075CE0 8FAA004C */   lw        $t2, 0x4C($sp)
    /* 84C94 80075CE4 8E4B0000 */  lw         $t3, 0x0($s2)
    /* 84C98 80075CE8 256C0009 */  addiu      $t4, $t3, 0x9
    /* 84C9C 80075CEC 16000034 */  bnez       $s0, .L80075DC0_84D70
    /* 84CA0 80075CF0 AE4C0000 */   sw        $t4, 0x0($s2)
    /* 84CA4 80075CF4 8E230000 */  lw         $v1, 0x0($s1)
    /* 84CA8 80075CF8 24010001 */  addiu      $at, $zero, 0x1
    /* 84CAC 80075CFC 02A02825 */  or         $a1, $s5, $zero
    /* 84CB0 80075D00 90620000 */  lbu        $v0, 0x0($v1)
    /* 84CB4 80075D04 10410007 */  beq        $v0, $at, .L80075D24_84CD4
    /* 84CB8 80075D08 24010002 */   addiu     $at, $zero, 0x2
    /* 84CBC 80075D0C 10410026 */  beq        $v0, $at, .L80075DA8_84D58
    /* 84CC0 80075D10 00000000 */   nop
    /* 84CC4 80075D14 10540028 */  beq        $v0, $s4, .L80075DB8_84D68
    /* 84CC8 80075D18 00000000 */   nop
    /* 84CCC 80075D1C 10000029 */  b          .L80075DC4_84D74
    /* 84CD0 80075D20 02001025 */   or        $v0, $s0, $zero
  .L80075D24_84CD4:
    /* 84CD4 80075D24 0C001E2E */  jal        func_800078B8_84B8
    /* 84CD8 80075D28 90640001 */   lbu       $a0, 0x1($v1)
    /* 84CDC 80075D2C 54400003 */  bnel       $v0, $zero, .L80075D3C_84CEC
    /* 84CE0 80075D30 8E2D0000 */   lw        $t5, 0x0($s1)
    /* 84CE4 80075D34 AED70000 */  sw         $s7, 0x0($s6)
    /* 84CE8 80075D38 8E2D0000 */  lw         $t5, 0x0($s1)
  .L80075D3C_84CEC:
    /* 84CEC 80075D3C 3C188015 */  lui        $t8, %hi(D_80149B60)
    /* 84CF0 80075D40 27189B60 */  addiu      $t8, $t8, %lo(D_80149B60)
    /* 84CF4 80075D44 91AE0001 */  lbu        $t6, 0x1($t5)
    /* 84CF8 80075D48 000E7900 */  sll        $t7, $t6, 4
    /* 84CFC 80075D4C 01EE7821 */  addu       $t7, $t7, $t6
    /* 84D00 80075D50 000F7880 */  sll        $t7, $t7, 2
    /* 84D04 80075D54 01EE7821 */  addu       $t7, $t7, $t6
    /* 84D08 80075D58 000F7880 */  sll        $t7, $t7, 2
    /* 84D0C 80075D5C 01EE7823 */  subu       $t7, $t7, $t6
    /* 84D10 80075D60 000F7840 */  sll        $t7, $t7, 1
    /* 84D14 80075D64 01F82021 */  addu       $a0, $t7, $t8
    /* 84D18 80075D68 90990000 */  lbu        $t9, 0x0($a0)
    /* 84D1C 80075D6C 13D90003 */  beq        $fp, $t9, .L80075D7C_84D2C
    /* 84D20 80075D70 00000000 */   nop
    /* 84D24 80075D74 0C006966 */  jal        func_8001A598_1B198
    /* 84D28 80075D78 00000000 */   nop
  .L80075D7C_84D2C:
    /* 84D2C 80075D7C 0C004D16 */  jal        __dummy
    /* 84D30 80075D80 00000000 */   nop
    /* 84D34 80075D84 8E280000 */  lw         $t0, 0x0($s1)
    /* 84D38 80075D88 02602825 */  or         $a1, $s3, $zero
    /* 84D3C 80075D8C 0C001E33 */  jal        func_800078CC_84CC
    /* 84D40 80075D90 91040001 */   lbu       $a0, 0x1($t0)
    /* 84D44 80075D94 8E290000 */  lw         $t1, 0x0($s1)
    /* 84D48 80075D98 0C01CF70 */  jal        func_80073DC0_82D70
    /* 84D4C 80075D9C 91240004 */   lbu       $a0, 0x4($t1)
    /* 84D50 80075DA0 10000008 */  b          .L80075DC4_84D74
    /* 84D54 80075DA4 02001025 */   or        $v0, $s0, $zero
  .L80075DA8_84D58:
    /* 84D58 80075DA8 0C01D90F */  jal        func_8007643C_853EC
    /* 84D5C 80075DAC 90640001 */   lbu       $a0, 0x1($v1)
    /* 84D60 80075DB0 10000004 */  b          .L80075DC4_84D74
    /* 84D64 80075DB4 02001025 */   or        $v0, $s0, $zero
  .L80075DB8_84D68:
    /* 84D68 80075DB8 0C01D971 */  jal        func_800765C4_85574
    /* 84D6C 80075DBC 90640001 */   lbu       $a0, 0x1($v1)
  .L80075DC0_84D70:
    /* 84D70 80075DC0 02001025 */  or         $v0, $s0, $zero
  .L80075DC4_84D74:
    /* 84D74 80075DC4 1600FFC3 */  bnez       $s0, .L80075CD4_84C84
    /* 84D78 80075DC8 2610FFFF */   addiu     $s0, $s0, -0x1
  .L80075DCC_84D7C:
    /* 84D7C 80075DCC 8FAA004C */  lw         $t2, 0x4C($sp)
  .L80075DD0_84D80:
    /* 84D80 80075DD0 8FAC0040 */  lw         $t4, 0x40($sp)
    /* 84D84 80075DD4 254BFFFF */  addiu      $t3, $t2, -0x1
    /* 84D88 80075DD8 258DFFFA */  addiu      $t5, $t4, -0x6
    /* 84D8C 80075DDC AFAD0040 */  sw         $t5, 0x40($sp)
    /* 84D90 80075DE0 1540FF8D */  bnez       $t2, .L80075C18_84BC8
    /* 84D94 80075DE4 AFAB004C */   sw        $t3, 0x4C($sp)
  .L80075DE8_84D98:
    /* 84D98 80075DE8 240E000F */  addiu      $t6, $zero, 0xF
    /* 84D9C 80075DEC 3C108015 */  lui        $s0, %hi(D_801494B4)
    /* 84DA0 80075DF0 261094B4 */  addiu      $s0, $s0, %lo(D_801494B4)
    /* 84DA4 80075DF4 AFAE004C */  sw         $t6, 0x4C($sp)
  .L80075DF8_84DA8:
    /* 84DA8 80075DF8 8E020000 */  lw         $v0, 0x0($s0)
    /* 84DAC 80075DFC 50400004 */  beql       $v0, $zero, .L80075E10_84DC0
    /* 84DB0 80075E00 8FAF004C */   lw        $t7, 0x4C($sp)
    /* 84DB4 80075E04 0040F809 */  jalr       $v0
    /* 84DB8 80075E08 00000000 */   nop
    /* 84DBC 80075E0C 8FAF004C */  lw         $t7, 0x4C($sp)
  .L80075E10_84DC0:
    /* 84DC0 80075E10 2610FFFC */  addiu      $s0, $s0, -0x4
    /* 84DC4 80075E14 25F8FFFF */  addiu      $t8, $t7, -0x1
    /* 84DC8 80075E18 15E0FFF7 */  bnez       $t7, .L80075DF8_84DA8
    /* 84DCC 80075E1C AFB8004C */   sw        $t8, 0x4C($sp)
    /* 84DD0 80075E20 8FBF003C */  lw         $ra, 0x3C($sp)
    /* 84DD4 80075E24 8FB00018 */  lw         $s0, 0x18($sp)
    /* 84DD8 80075E28 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 84DDC 80075E2C 8FB20020 */  lw         $s2, 0x20($sp)
    /* 84DE0 80075E30 8FB30024 */  lw         $s3, 0x24($sp)
    /* 84DE4 80075E34 8FB40028 */  lw         $s4, 0x28($sp)
    /* 84DE8 80075E38 8FB5002C */  lw         $s5, 0x2C($sp)
    /* 84DEC 80075E3C 8FB60030 */  lw         $s6, 0x30($sp)
    /* 84DF0 80075E40 8FB70034 */  lw         $s7, 0x34($sp)
    /* 84DF4 80075E44 8FBE0038 */  lw         $fp, 0x38($sp)
    /* 84DF8 80075E48 03E00008 */  jr         $ra
    /* 84DFC 80075E4C 27BD0050 */   addiu     $sp, $sp, 0x50
endlabel func_80075AA4_84A54
