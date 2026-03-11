nonmatching func_800C7E18_D6DC8, 0x2D8

glabel func_800C7E18_D6DC8
    /* D6DC8 800C7E18 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* D6DCC 800C7E1C AFB70040 */  sw         $s7, 0x40($sp)
    /* D6DD0 800C7E20 AFB6003C */  sw         $s6, 0x3C($sp)
    /* D6DD4 800C7E24 AFB50038 */  sw         $s5, 0x38($sp)
    /* D6DD8 800C7E28 AFB40034 */  sw         $s4, 0x34($sp)
    /* D6DDC 800C7E2C AFB30030 */  sw         $s3, 0x30($sp)
    /* D6DE0 800C7E30 3C178014 */  lui        $s7, %hi(D_8013DD20)
    /* D6DE4 800C7E34 AFBF0044 */  sw         $ra, 0x44($sp)
    /* D6DE8 800C7E38 AFB2002C */  sw         $s2, 0x2C($sp)
    /* D6DEC 800C7E3C AFB10028 */  sw         $s1, 0x28($sp)
    /* D6DF0 800C7E40 AFB00024 */  sw         $s0, 0x24($sp)
    /* D6DF4 800C7E44 26F7DD20 */  addiu      $s7, $s7, %lo(D_8013DD20)
    /* D6DF8 800C7E48 24130014 */  addiu      $s3, $zero, 0x14
    /* D6DFC 800C7E4C 0000A025 */  or         $s4, $zero, $zero
    /* D6E00 800C7E50 2415001E */  addiu      $s5, $zero, 0x1E
    /* D6E04 800C7E54 24160032 */  addiu      $s6, $zero, 0x32
  .L800C7E58_D6E08:
    /* D6E08 800C7E58 0C000E38 */  jal        func_800038E0_44E0
    /* D6E0C 800C7E5C 00000000 */   nop
    /* D6E10 800C7E60 0C000E38 */  jal        func_800038E0_44E0
    /* D6E14 800C7E64 3050FFFF */   andi      $s0, $v0, 0xFFFF
    /* D6E18 800C7E68 0216001A */  div        $zero, $s0, $s6
    /* D6E1C 800C7E6C 00003810 */  mfhi       $a3
    /* D6E20 800C7E70 24E70064 */  addiu      $a3, $a3, 0x64
    /* D6E24 800C7E74 00077400 */  sll        $t6, $a3, 16
    /* D6E28 800C7E78 000E7C03 */  sra        $t7, $t6, 16
    /* D6E2C 800C7E7C 2418FFF8 */  addiu      $t8, $zero, -0x8
    /* D6E30 800C7E80 24190064 */  addiu      $t9, $zero, 0x64
    /* D6E34 800C7E84 240C0002 */  addiu      $t4, $zero, 0x2
    /* D6E38 800C7E88 AFB90014 */  sw         $t9, 0x14($sp)
    /* D6E3C 800C7E8C AFB80010 */  sw         $t8, 0x10($sp)
    /* D6E40 800C7E90 01E03825 */  or         $a3, $t7, $zero
    /* D6E44 800C7E94 24044AFC */  addiu      $a0, $zero, 0x4AFC
    /* D6E48 800C7E98 24050348 */  addiu      $a1, $zero, 0x348
    /* D6E4C 800C7E9C 2406F980 */  addiu      $a2, $zero, -0x680
    /* D6E50 800C7EA0 16C00002 */  bnez       $s6, .L800C7EAC_D6E5C
    /* D6E54 800C7EA4 00000000 */   nop
    /* D6E58 800C7EA8 0007000D */  break      7
  .L800C7EAC_D6E5C:
    /* D6E5C 800C7EAC 2401FFFF */  addiu      $at, $zero, -0x1
    /* D6E60 800C7EB0 16C10004 */  bne        $s6, $at, .L800C7EC4_D6E74
    /* D6E64 800C7EB4 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D6E68 800C7EB8 16010002 */  bne        $s0, $at, .L800C7EC4_D6E74
    /* D6E6C 800C7EBC 00000000 */   nop
    /* D6E70 800C7EC0 0006000D */  break      6
  .L800C7EC4_D6E74:
    /* D6E74 800C7EC4 04410004 */  bgez       $v0, .L800C7ED8_D6E88
    /* D6E78 800C7EC8 30480007 */   andi      $t0, $v0, 0x7
    /* D6E7C 800C7ECC 11000002 */  beqz       $t0, .L800C7ED8_D6E88
    /* D6E80 800C7ED0 00000000 */   nop
    /* D6E84 800C7ED4 2508FFF8 */  addiu      $t0, $t0, -0x8
  .L800C7ED8_D6E88:
    /* D6E88 800C7ED8 00084880 */  sll        $t1, $t0, 2
    /* D6E8C 800C7EDC 02E95021 */  addu       $t2, $s7, $t1
    /* D6E90 800C7EE0 8D4B0000 */  lw         $t3, 0x0($t2)
    /* D6E94 800C7EE4 AFAC001C */  sw         $t4, 0x1C($sp)
    /* D6E98 800C7EE8 0C031E49 */  jal        func_800C7924_D68D4
    /* D6E9C 800C7EEC AFAB0018 */   sw        $t3, 0x18($sp)
    /* D6EA0 800C7EF0 00029400 */  sll        $s2, $v0, 16
    /* D6EA4 800C7EF4 00126C03 */  sra        $t5, $s2, 16
    /* D6EA8 800C7EF8 0C000E38 */  jal        func_800038E0_44E0
    /* D6EAC 800C7EFC 01A09025 */   or        $s2, $t5, $zero
    /* D6EB0 800C7F00 0C000E38 */  jal        func_800038E0_44E0
    /* D6EB4 800C7F04 3051FFFF */   andi      $s1, $v0, 0xFFFF
    /* D6EB8 800C7F08 0C000E38 */  jal        func_800038E0_44E0
    /* D6EBC 800C7F0C 3050FFFF */   andi      $s0, $v0, 0xFFFF
    /* D6EC0 800C7F10 0235001A */  div        $zero, $s1, $s5
    /* D6EC4 800C7F14 00002010 */  mfhi       $a0
    /* D6EC8 800C7F18 2484FFF1 */  addiu      $a0, $a0, -0xF
    /* D6ECC 800C7F1C 16A00002 */  bnez       $s5, .L800C7F28_D6ED8
    /* D6ED0 800C7F20 00000000 */   nop
    /* D6ED4 800C7F24 0007000D */  break      7
  .L800C7F28_D6ED8:
    /* D6ED8 800C7F28 2401FFFF */  addiu      $at, $zero, -0x1
    /* D6EDC 800C7F2C 16A10004 */  bne        $s5, $at, .L800C7F40_D6EF0
    /* D6EE0 800C7F30 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D6EE4 800C7F34 16210002 */  bne        $s1, $at, .L800C7F40_D6EF0
    /* D6EE8 800C7F38 00000000 */   nop
    /* D6EEC 800C7F3C 0006000D */  break      6
  .L800C7F40_D6EF0:
    /* D6EF0 800C7F40 0213001A */  div        $zero, $s0, $s3
    /* D6EF4 800C7F44 00002810 */  mfhi       $a1
    /* D6EF8 800C7F48 24A5FFFB */  addiu      $a1, $a1, -0x5
    /* D6EFC 800C7F4C 0005C600 */  sll        $t8, $a1, 24
    /* D6F00 800C7F50 0055001A */  div        $zero, $v0, $s5
    /* D6F04 800C7F54 00003010 */  mfhi       $a2
    /* D6F08 800C7F58 24C6FFF1 */  addiu      $a2, $a2, -0xF
    /* D6F0C 800C7F5C 00047600 */  sll        $t6, $a0, 24
    /* D6F10 800C7F60 00123C00 */  sll        $a3, $s2, 16
    /* D6F14 800C7F64 00075403 */  sra        $t2, $a3, 16
    /* D6F18 800C7F68 000E7E03 */  sra        $t7, $t6, 24
    /* D6F1C 800C7F6C 00064600 */  sll        $t0, $a2, 24
    /* D6F20 800C7F70 0018CE03 */  sra        $t9, $t8, 24
    /* D6F24 800C7F74 03202825 */  or         $a1, $t9, $zero
    /* D6F28 800C7F78 00083603 */  sra        $a2, $t0, 24
    /* D6F2C 800C7F7C 01E02025 */  or         $a0, $t7, $zero
    /* D6F30 800C7F80 16600002 */  bnez       $s3, .L800C7F8C_D6F3C
    /* D6F34 800C7F84 00000000 */   nop
    /* D6F38 800C7F88 0007000D */  break      7
  .L800C7F8C_D6F3C:
    /* D6F3C 800C7F8C 2401FFFF */  addiu      $at, $zero, -0x1
    /* D6F40 800C7F90 16610004 */  bne        $s3, $at, .L800C7FA4_D6F54
    /* D6F44 800C7F94 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D6F48 800C7F98 16010002 */  bne        $s0, $at, .L800C7FA4_D6F54
    /* D6F4C 800C7F9C 00000000 */   nop
    /* D6F50 800C7FA0 0006000D */  break      6
  .L800C7FA4_D6F54:
    /* D6F54 800C7FA4 01403825 */  or         $a3, $t2, $zero
    /* D6F58 800C7FA8 16A00002 */  bnez       $s5, .L800C7FB4_D6F64
    /* D6F5C 800C7FAC 00000000 */   nop
    /* D6F60 800C7FB0 0007000D */  break      7
  .L800C7FB4_D6F64:
    /* D6F64 800C7FB4 2401FFFF */  addiu      $at, $zero, -0x1
    /* D6F68 800C7FB8 16A10004 */  bne        $s5, $at, .L800C7FCC_D6F7C
    /* D6F6C 800C7FBC 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D6F70 800C7FC0 14410002 */  bne        $v0, $at, .L800C7FCC_D6F7C
    /* D6F74 800C7FC4 00000000 */   nop
    /* D6F78 800C7FC8 0006000D */  break      6
  .L800C7FCC_D6F7C:
    /* D6F7C 800C7FCC 0C032061 */  jal        func_800C8184_D7134
    /* D6F80 800C7FD0 00000000 */   nop
    /* D6F84 800C7FD4 0C000E38 */  jal        func_800038E0_44E0
    /* D6F88 800C7FD8 00000000 */   nop
    /* D6F8C 800C7FDC 0C000E38 */  jal        func_800038E0_44E0
    /* D6F90 800C7FE0 3051FFFF */   andi      $s1, $v0, 0xFFFF
    /* D6F94 800C7FE4 0C000E38 */  jal        func_800038E0_44E0
    /* D6F98 800C7FE8 3050FFFF */   andi      $s0, $v0, 0xFFFF
    /* D6F9C 800C7FEC 0233001A */  div        $zero, $s1, $s3
    /* D6FA0 800C7FF0 00002010 */  mfhi       $a0
    /* D6FA4 800C7FF4 2484FFF6 */  addiu      $a0, $a0, -0xA
    /* D6FA8 800C7FF8 16600002 */  bnez       $s3, .L800C8004_D6FB4
    /* D6FAC 800C7FFC 00000000 */   nop
    /* D6FB0 800C8000 0007000D */  break      7
  .L800C8004_D6FB4:
    /* D6FB4 800C8004 2401FFFF */  addiu      $at, $zero, -0x1
    /* D6FB8 800C8008 16610004 */  bne        $s3, $at, .L800C801C_D6FCC
    /* D6FBC 800C800C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D6FC0 800C8010 16210002 */  bne        $s1, $at, .L800C801C_D6FCC
    /* D6FC4 800C8014 00000000 */   nop
    /* D6FC8 800C8018 0006000D */  break      6
  .L800C801C_D6FCC:
    /* D6FCC 800C801C 0213001A */  div        $zero, $s0, $s3
    /* D6FD0 800C8020 00002810 */  mfhi       $a1
    /* D6FD4 800C8024 24A5FFF6 */  addiu      $a1, $a1, -0xA
    /* D6FD8 800C8028 00056E00 */  sll        $t5, $a1, 24
    /* D6FDC 800C802C 0053001A */  div        $zero, $v0, $s3
    /* D6FE0 800C8030 00003010 */  mfhi       $a2
    /* D6FE4 800C8034 24C6FFF6 */  addiu      $a2, $a2, -0xA
    /* D6FE8 800C8038 00045E00 */  sll        $t3, $a0, 24
    /* D6FEC 800C803C 00123C00 */  sll        $a3, $s2, 16
    /* D6FF0 800C8040 0007CC03 */  sra        $t9, $a3, 16
    /* D6FF4 800C8044 000B6603 */  sra        $t4, $t3, 24
    /* D6FF8 800C8048 00067E00 */  sll        $t7, $a2, 24
    /* D6FFC 800C804C 000D7603 */  sra        $t6, $t5, 24
    /* D7000 800C8050 01C02825 */  or         $a1, $t6, $zero
    /* D7004 800C8054 000F3603 */  sra        $a2, $t7, 24
    /* D7008 800C8058 01802025 */  or         $a0, $t4, $zero
    /* D700C 800C805C 16600002 */  bnez       $s3, .L800C8068_D7018
    /* D7010 800C8060 00000000 */   nop
    /* D7014 800C8064 0007000D */  break      7
  .L800C8068_D7018:
    /* D7018 800C8068 2401FFFF */  addiu      $at, $zero, -0x1
    /* D701C 800C806C 16610004 */  bne        $s3, $at, .L800C8080_D7030
    /* D7020 800C8070 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D7024 800C8074 16010002 */  bne        $s0, $at, .L800C8080_D7030
    /* D7028 800C8078 00000000 */   nop
    /* D702C 800C807C 0006000D */  break      6
  .L800C8080_D7030:
    /* D7030 800C8080 03203825 */  or         $a3, $t9, $zero
    /* D7034 800C8084 16600002 */  bnez       $s3, .L800C8090_D7040
    /* D7038 800C8088 00000000 */   nop
    /* D703C 800C808C 0007000D */  break      7
  .L800C8090_D7040:
    /* D7040 800C8090 2401FFFF */  addiu      $at, $zero, -0x1
    /* D7044 800C8094 16610004 */  bne        $s3, $at, .L800C80A8_D7058
    /* D7048 800C8098 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D704C 800C809C 14410002 */  bne        $v0, $at, .L800C80A8_D7058
    /* D7050 800C80A0 00000000 */   nop
    /* D7054 800C80A4 0006000D */  break      6
  .L800C80A8_D7058:
    /* D7058 800C80A8 0C032083 */  jal        func_800C820C_D71BC
    /* D705C 800C80AC 00000000 */   nop
    /* D7060 800C80B0 26940001 */  addiu      $s4, $s4, 0x1
    /* D7064 800C80B4 328800FF */  andi       $t0, $s4, 0xFF
    /* D7068 800C80B8 2901000C */  slti       $at, $t0, 0xC
    /* D706C 800C80BC 1420FF66 */  bnez       $at, .L800C7E58_D6E08
    /* D7070 800C80C0 0100A025 */   or        $s4, $t0, $zero
    /* D7074 800C80C4 8FBF0044 */  lw         $ra, 0x44($sp)
    /* D7078 800C80C8 8FB00024 */  lw         $s0, 0x24($sp)
    /* D707C 800C80CC 8FB10028 */  lw         $s1, 0x28($sp)
    /* D7080 800C80D0 8FB2002C */  lw         $s2, 0x2C($sp)
    /* D7084 800C80D4 8FB30030 */  lw         $s3, 0x30($sp)
    /* D7088 800C80D8 8FB40034 */  lw         $s4, 0x34($sp)
    /* D708C 800C80DC 8FB50038 */  lw         $s5, 0x38($sp)
    /* D7090 800C80E0 8FB6003C */  lw         $s6, 0x3C($sp)
    /* D7094 800C80E4 8FB70040 */  lw         $s7, 0x40($sp)
    /* D7098 800C80E8 03E00008 */  jr         $ra
    /* D709C 800C80EC 27BD0048 */   addiu     $sp, $sp, 0x48
endlabel func_800C7E18_D6DC8
