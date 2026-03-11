nonmatching func_8000EFB8_FBB8, 0x1AC

glabel func_8000EFB8_FBB8
    /* FBB8 8000EFB8 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* FBBC 8000EFBC 3C028026 */  lui        $v0, %hi(D_80267080)
    /* FBC0 8000EFC0 3C03802B */  lui        $v1, %hi(D_802B2080)
    /* FBC4 8000EFC4 AFBF001C */  sw         $ra, 0x1C($sp)
    /* FBC8 8000EFC8 AFA40020 */  sw         $a0, 0x20($sp)
    /* FBCC 8000EFCC 24632080 */  addiu      $v1, $v1, %lo(D_802B2080)
    /* FBD0 8000EFD0 24427080 */  addiu      $v0, $v0, %lo(D_80267080)
  .L8000EFD4_FBD4:
    /* FBD4 8000EFD4 24420008 */  addiu      $v0, $v0, 0x8
    /* FBD8 8000EFD8 A440FFFA */  sh         $zero, -0x6($v0)
    /* FBDC 8000EFDC A440FFFC */  sh         $zero, -0x4($v0)
    /* FBE0 8000EFE0 A440FFFE */  sh         $zero, -0x2($v0)
    /* FBE4 8000EFE4 1443FFFB */  bne        $v0, $v1, .L8000EFD4_FBD4
    /* FBE8 8000EFE8 A440FFF8 */   sh        $zero, -0x8($v0)
    /* FBEC 8000EFEC 0C007A70 */  jal        osCreateViManager
    /* FBF0 8000EFF0 240400FE */   addiu     $a0, $zero, 0xFE
    /* FBF4 8000EFF4 3C028000 */  lui        $v0, %hi(osTvType)
    /* FBF8 8000EFF8 8C420300 */  lw         $v0, %lo(osTvType)($v0)
    /* FBFC 8000EFFC 54400009 */  bnel       $v0, $zero, .L8000F024_FC24
    /* FC00 8000F000 24010002 */   addiu     $at, $zero, 0x2
    /* FC04 8000F004 0C003BE6 */  jal        func_8000EF98_FB98
    /* FC08 8000F008 00000000 */   nop
    /* FC0C 8000F00C 3C048003 */  lui        $a0, %hi(D_80035B30)
    /* FC10 8000F010 0C007B60 */  jal        osViSetMode
    /* FC14 8000F014 24845B30 */   addiu     $a0, $a0, %lo(D_80035B30)
    /* FC18 8000F018 1000000B */  b          .L8000F048_FC48
    /* FC1C 8000F01C 00000000 */   nop
    /* FC20 8000F020 24010002 */  addiu      $at, $zero, 0x2
  .L8000F024_FC24:
    /* FC24 8000F024 14410006 */  bne        $v0, $at, .L8000F040_FC40
    /* FC28 8000F028 3C048003 */   lui       $a0, %hi(D_800356D0)
    /* FC2C 8000F02C 3C048003 */  lui        $a0, %hi(D_80035F90)
    /* FC30 8000F030 0C007B60 */  jal        osViSetMode
    /* FC34 8000F034 24845F90 */   addiu     $a0, $a0, %lo(D_80035F90)
    /* FC38 8000F038 10000003 */  b          .L8000F048_FC48
    /* FC3C 8000F03C 00000000 */   nop
  .L8000F040_FC40:
    /* FC40 8000F040 0C007B60 */  jal        osViSetMode
    /* FC44 8000F044 248456D0 */   addiu     $a0, $a0, %lo(D_800356D0)
  .L8000F048_FC48:
    /* FC48 8000F048 3C048026 */  lui        $a0, %hi(D_80267080)
    /* FC4C 8000F04C 0C007B7C */  jal        osViSwapBuffer
    /* FC50 8000F050 24847080 */   addiu     $a0, $a0, %lo(D_80267080)
    /* FC54 8000F054 3C048006 */  lui        $a0, %hi(D_80067538)
    /* FC58 8000F058 3C0E8006 */  lui        $t6, %hi(D_8005CF68)
    /* FC5C 8000F05C 24847538 */  addiu      $a0, $a0, %lo(D_80067538)
    /* FC60 8000F060 25CECF68 */  addiu      $t6, $t6, %lo(D_8005CF68)
    /* FC64 8000F064 3C068001 */  lui        $a2, %hi(func_8000F6B0_102B0)
    /* FC68 8000F068 240F0008 */  addiu      $t7, $zero, 0x8
    /* FC6C 8000F06C AC800000 */  sw         $zero, 0x0($a0)
    /* FC70 8000F070 AC800008 */  sw         $zero, 0x8($a0)
    /* FC74 8000F074 AFAF0014 */  sw         $t7, 0x14($sp)
    /* FC78 8000F078 24C6F6B0 */  addiu      $a2, $a2, %lo(func_8000F6B0_102B0)
    /* FC7C 8000F07C AFAE0010 */  sw         $t6, 0x10($sp)
    /* FC80 8000F080 24050006 */  addiu      $a1, $zero, 0x6
    /* FC84 8000F084 0C006BA4 */  jal        osCreateThread
    /* FC88 8000F088 8FA70020 */   lw        $a3, 0x20($sp)
    /* FC8C 8000F08C 3C048006 */  lui        $a0, %hi(D_800676E8)
    /* FC90 8000F090 3C188006 */  lui        $t8, %hi(D_80064F70)
    /* FC94 8000F094 248476E8 */  addiu      $a0, $a0, %lo(D_800676E8)
    /* FC98 8000F098 27184F70 */  addiu      $t8, $t8, %lo(D_80064F70)
    /* FC9C 8000F09C 3C068001 */  lui        $a2, %hi(func_8000FE50_10A50)
    /* FCA0 8000F0A0 24190004 */  addiu      $t9, $zero, 0x4
    /* FCA4 8000F0A4 AC800000 */  sw         $zero, 0x0($a0)
    /* FCA8 8000F0A8 AC800008 */  sw         $zero, 0x8($a0)
    /* FCAC 8000F0AC AFB90014 */  sw         $t9, 0x14($sp)
    /* FCB0 8000F0B0 24C6FE50 */  addiu      $a2, $a2, %lo(func_8000FE50_10A50)
    /* FCB4 8000F0B4 AFB80010 */  sw         $t8, 0x10($sp)
    /* FCB8 8000F0B8 24050003 */  addiu      $a1, $zero, 0x3
    /* FCBC 8000F0BC 0C006BA4 */  jal        osCreateThread
    /* FCC0 8000F0C0 8FA70020 */   lw        $a3, 0x20($sp)
    /* FCC4 8000F0C4 3C048006 */  lui        $a0, %hi(D_80067898)
    /* FCC8 8000F0C8 3C088006 */  lui        $t0, %hi(D_80066780)
    /* FCCC 8000F0CC 24847898 */  addiu      $a0, $a0, %lo(D_80067898)
    /* FCD0 8000F0D0 25086780 */  addiu      $t0, $t0, %lo(D_80066780)
    /* FCD4 8000F0D4 3C068000 */  lui        $a2, %hi(func_80002EF8_3AF8)
    /* FCD8 8000F0D8 24090005 */  addiu      $t1, $zero, 0x5
    /* FCDC 8000F0DC AC800000 */  sw         $zero, 0x0($a0)
    /* FCE0 8000F0E0 AC800008 */  sw         $zero, 0x8($a0)
    /* FCE4 8000F0E4 AFA90014 */  sw         $t1, 0x14($sp)
    /* FCE8 8000F0E8 24C62EF8 */  addiu      $a2, $a2, %lo(func_80002EF8_3AF8)
    /* FCEC 8000F0EC AFA80010 */  sw         $t0, 0x10($sp)
    /* FCF0 8000F0F0 24050007 */  addiu      $a1, $zero, 0x7
    /* FCF4 8000F0F4 0C006BA4 */  jal        osCreateThread
    /* FCF8 8000F0F8 8FA70020 */   lw        $a3, 0x20($sp)
    /* FCFC 8000F0FC 0C003C86 */  jal        func_8000F218_FE18
    /* FD00 8000F100 00000000 */   nop
    /* FD04 8000F104 3C058007 */  lui        $a1, %hi(D_80068060)
    /* FD08 8000F108 3C068007 */  lui        $a2, %hi(D_80068040)
    /* FD0C 8000F10C 24C68040 */  addiu      $a2, $a2, %lo(D_80068040)
    /* FD10 8000F110 24A58060 */  addiu      $a1, $a1, %lo(D_80068060)
    /* FD14 8000F114 24040096 */  addiu      $a0, $zero, 0x96
    /* FD18 8000F118 0C007B90 */  jal        osCreatePiManager
    /* FD1C 8000F11C 24070008 */   addiu     $a3, $zero, 0x8
    /* FD20 8000F120 24040009 */  addiu      $a0, $zero, 0x9
    /* FD24 8000F124 0C0011F4 */  jal        func_800047D0_53D0
    /* FD28 8000F128 24050005 */   addiu     $a1, $zero, 0x5
    /* FD2C 8000F12C 3C048006 */  lui        $a0, %hi(D_80067538)
    /* FD30 8000F130 0C006BF8 */  jal        osStartThread
    /* FD34 8000F134 24847538 */   addiu     $a0, $a0, %lo(D_80067538)
    /* FD38 8000F138 3C048006 */  lui        $a0, %hi(D_80067898)
    /* FD3C 8000F13C 0C006BF8 */  jal        osStartThread
    /* FD40 8000F140 24847898 */   addiu     $a0, $a0, %lo(D_80067898)
    /* FD44 8000F144 3C048006 */  lui        $a0, %hi(D_800676E8)
    /* FD48 8000F148 0C006BF8 */  jal        osStartThread
    /* FD4C 8000F14C 248476E8 */   addiu     $a0, $a0, %lo(D_800676E8)
    /* FD50 8000F150 00002025 */  or         $a0, $zero, $zero
    /* FD54 8000F154 0C007BF4 */  jal        osSetThreadPri
    /* FD58 8000F158 00002825 */   or        $a1, $zero, $zero
  .L8000F15C_FD5C:
    /* FD5C 8000F15C 1000FFFF */  b          .L8000F15C_FD5C
    /* FD60 8000F160 00000000 */   nop
endlabel func_8000EFB8_FBB8
    /* FD64 8000F164 00000000 */  nop
    /* FD68 8000F168 00000000 */  nop
    /* FD6C 8000F16C 00000000 */  nop
    /* FD70 8000F170 00000000 */  nop
    /* FD74 8000F174 00000000 */  nop
    /* FD78 8000F178 00000000 */  nop
    /* FD7C 8000F17C 00000000 */  nop
