nonmatching func_800B9DB8_C8D68, 0x724

glabel func_800B9DB8_C8D68
    /* C8D68 800B9DB8 27BDFEE8 */  addiu      $sp, $sp, -0x118
    /* C8D6C 800B9DBC AFBF004C */  sw         $ra, 0x4C($sp)
    /* C8D70 800B9DC0 AFB00028 */  sw         $s0, 0x28($sp)
    /* C8D74 800B9DC4 309000FF */  andi       $s0, $a0, 0xFF
    /* C8D78 800B9DC8 AFBE0048 */  sw         $fp, 0x48($sp)
    /* C8D7C 800B9DCC AFB70044 */  sw         $s7, 0x44($sp)
    /* C8D80 800B9DD0 AFB60040 */  sw         $s6, 0x40($sp)
    /* C8D84 800B9DD4 AFB5003C */  sw         $s5, 0x3C($sp)
    /* C8D88 800B9DD8 AFB40038 */  sw         $s4, 0x38($sp)
    /* C8D8C 800B9DDC AFB30034 */  sw         $s3, 0x34($sp)
    /* C8D90 800B9DE0 AFB20030 */  sw         $s2, 0x30($sp)
    /* C8D94 800B9DE4 AFB1002C */  sw         $s1, 0x2C($sp)
    /* C8D98 800B9DE8 AFA40118 */  sw         $a0, 0x118($sp)
    /* C8D9C 800B9DEC A7A000F4 */  sh         $zero, 0xF4($sp)
    /* C8DA0 800B9DF0 0C02E6B2 */  jal        func_800B9AC8_C8A78
    /* C8DA4 800B9DF4 A7A000F2 */   sh        $zero, 0xF2($sp)
    /* C8DA8 800B9DF8 3C0E8015 */  lui        $t6, %hi(D_8014F838)
    /* C8DAC 800B9DFC 8DCEF838 */  lw         $t6, %lo(D_8014F838)($t6)
    /* C8DB0 800B9E00 11C00003 */  beqz       $t6, .L800B9E10_C8DC0
    /* C8DB4 800B9E04 00000000 */   nop
    /* C8DB8 800B9E08 0C02E1E7 */  jal        func_800B879C_C774C
    /* C8DBC 800B9E0C 00000000 */   nop
  .L800B9E10_C8DC0:
    /* C8DC0 800B9E10 3C048006 */  lui        $a0, %hi(D_8005BB34)
    /* C8DC4 800B9E14 2484BB34 */  addiu      $a0, $a0, %lo(D_8005BB34)
    /* C8DC8 800B9E18 8C910000 */  lw         $s1, 0x0($a0)
    /* C8DCC 800B9E1C 0C02D424 */  jal        func_800B5090_C4040
    /* C8DD0 800B9E20 320500FF */   andi      $a1, $s0, 0xFF
    /* C8DD4 800B9E24 3C108006 */  lui        $s0, %hi(D_8005BB2C)
    /* C8DD8 800B9E28 2610BB2C */  addiu      $s0, $s0, %lo(D_8005BB2C)
    /* C8DDC 800B9E2C 8E020000 */  lw         $v0, 0x0($s0)
    /* C8DE0 800B9E30 3C18BA00 */  lui        $t8, (0xBA000C02 >> 16)
    /* C8DE4 800B9E34 24192000 */  addiu      $t9, $zero, 0x2000
    /* C8DE8 800B9E38 244F0008 */  addiu      $t7, $v0, 0x8
    /* C8DEC 800B9E3C AE0F0000 */  sw         $t7, 0x0($s0)
    /* C8DF0 800B9E40 37180C02 */  ori        $t8, $t8, (0xBA000C02 & 0xFFFF)
    /* C8DF4 800B9E44 AC590004 */  sw         $t9, 0x4($v0)
    /* C8DF8 800B9E48 AC580000 */  sw         $t8, 0x0($v0)
    /* C8DFC 800B9E4C 3C018015 */  lui        $at, %hi(D_8014F89A)
    /* C8E00 800B9E50 A420F89A */  sh         $zero, %lo(D_8014F89A)($at)
    /* C8E04 800B9E54 3C018015 */  lui        $at, %hi(D_8014FD28)
    /* C8E08 800B9E58 240E008F */  addiu      $t6, $zero, 0x8F
    /* C8E0C 800B9E5C 3C0D8015 */  lui        $t5, %hi(D_80151DD8)
    /* C8E10 800B9E60 A42EFD28 */  sh         $t6, %lo(D_8014FD28)($at)
    /* C8E14 800B9E64 25AD1DD8 */  addiu      $t5, $t5, %lo(D_80151DD8)
    /* C8E18 800B9E68 91AF0964 */  lbu        $t7, 0x964($t5)
    /* C8E1C 800B9E6C 8E020000 */  lw         $v0, 0x0($s0)
    /* C8E20 800B9E70 91B80965 */  lbu        $t8, 0x965($t5)
    /* C8E24 800B9E74 A7AF010C */  sh         $t7, 0x10C($sp)
    /* C8E28 800B9E78 24590008 */  addiu      $t9, $v0, 0x8
    /* C8E2C 800B9E7C AFB100F8 */  sw         $s1, 0xF8($sp)
    /* C8E30 800B9E80 AFB100FC */  sw         $s1, 0xFC($sp)
    /* C8E34 800B9E84 AE190000 */  sw         $t9, 0x0($s0)
    /* C8E38 800B9E88 3C0FC811 */  lui        $t7, (0xC8112230 >> 16)
    /* C8E3C 800B9E8C 3C0EB900 */  lui        $t6, (0xB900031D >> 16)
    /* C8E40 800B9E90 A7B8010A */  sh         $t8, 0x10A($sp)
    /* C8E44 800B9E94 35CE031D */  ori        $t6, $t6, (0xB900031D & 0xFFFF)
    /* C8E48 800B9E98 35EF2230 */  ori        $t7, $t7, (0xC8112230 & 0xFFFF)
    /* C8E4C 800B9E9C AC4F0004 */  sw         $t7, 0x4($v0)
    /* C8E50 800B9EA0 AC4E0000 */  sw         $t6, 0x0($v0)
    /* C8E54 800B9EA4 8E020000 */  lw         $v0, 0x0($s0)
    /* C8E58 800B9EA8 3C19BA00 */  lui        $t9, (0xBA001301 >> 16)
    /* C8E5C 800B9EAC 37391301 */  ori        $t9, $t9, (0xBA001301 & 0xFFFF)
    /* C8E60 800B9EB0 24580008 */  addiu      $t8, $v0, 0x8
    /* C8E64 800B9EB4 AE180000 */  sw         $t8, 0x0($s0)
    /* C8E68 800B9EB8 3C0E0008 */  lui        $t6, (0x80000 >> 16)
    /* C8E6C 800B9EBC AC4E0004 */  sw         $t6, 0x4($v0)
    /* C8E70 800B9EC0 AC590000 */  sw         $t9, 0x0($v0)
    /* C8E74 800B9EC4 8E020000 */  lw         $v0, 0x0($s0)
    /* C8E78 800B9EC8 3C198000 */  lui        $t9, (0x80008000 >> 16)
    /* C8E7C 800B9ECC 3C18BB00 */  lui        $t8, (0xBB000001 >> 16)
    /* C8E80 800B9ED0 244F0008 */  addiu      $t7, $v0, 0x8
    /* C8E84 800B9ED4 AE0F0000 */  sw         $t7, 0x0($s0)
    /* C8E88 800B9ED8 37180001 */  ori        $t8, $t8, (0xBB000001 & 0xFFFF)
    /* C8E8C 800B9EDC 37398000 */  ori        $t9, $t9, (0x80008000 & 0xFFFF)
    /* C8E90 800B9EE0 AC590004 */  sw         $t9, 0x4($v0)
    /* C8E94 800B9EE4 AC580000 */  sw         $t8, 0x0($v0)
    /* C8E98 800B9EE8 8E020000 */  lw         $v0, 0x0($s0)
    /* C8E9C 800B9EEC 3C0FBA00 */  lui        $t7, (0xBA000E02 >> 16)
    /* C8EA0 800B9EF0 35EF0E02 */  ori        $t7, $t7, (0xBA000E02 & 0xFFFF)
    /* C8EA4 800B9EF4 244E0008 */  addiu      $t6, $v0, 0x8
    /* C8EA8 800B9EF8 AE0E0000 */  sw         $t6, 0x0($s0)
    /* C8EAC 800B9EFC 34188000 */  ori        $t8, $zero, 0x8000
    /* C8EB0 800B9F00 AC580004 */  sw         $t8, 0x4($v0)
    /* C8EB4 800B9F04 AC4F0000 */  sw         $t7, 0x0($v0)
    /* C8EB8 800B9F08 8E020000 */  lw         $v0, 0x0($s0)
    /* C8EBC 800B9F0C 3C0F0002 */  lui        $t7, (0x22200 >> 16)
    /* C8EC0 800B9F10 35EF2200 */  ori        $t7, $t7, (0x22200 & 0xFFFF)
    /* C8EC4 800B9F14 24590008 */  addiu      $t9, $v0, 0x8
    /* C8EC8 800B9F18 AE190000 */  sw         $t9, 0x0($s0)
    /* C8ECC 800B9F1C 3C0EB700 */  lui        $t6, (0xB7000000 >> 16)
    /* C8ED0 800B9F20 AC4E0000 */  sw         $t6, 0x0($v0)
    /* C8ED4 800B9F24 AC4F0004 */  sw         $t7, 0x4($v0)
    /* C8ED8 800B9F28 8E020000 */  lw         $v0, 0x0($s0)
    /* C8EDC 800B9F2C 3C0E8025 */  lui        $t6, %hi(D_80254E80)
    /* C8EE0 800B9F30 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* C8EE4 800B9F34 24580008 */  addiu      $t8, $v0, 0x8
    /* C8EE8 800B9F38 AE180000 */  sw         $t8, 0x0($s0)
    /* C8EEC 800B9F3C 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* C8EF0 800B9F40 25CE4E80 */  addiu      $t6, $t6, %lo(D_80254E80)
    /* C8EF4 800B9F44 01C17824 */  and        $t7, $t6, $at
    /* C8EF8 800B9F48 3C19FD10 */  lui        $t9, (0xFD100000 >> 16)
    /* C8EFC 800B9F4C AC590000 */  sw         $t9, 0x0($v0)
    /* C8F00 800B9F50 AC4F0004 */  sw         $t7, 0x4($v0)
    /* C8F04 800B9F54 8E020000 */  lw         $v0, 0x0($s0)
    /* C8F08 800B9F58 3C19E800 */  lui        $t9, (0xE8000000 >> 16)
    /* C8F0C 800B9F5C 3C0FF500 */  lui        $t7, (0xF5000100 >> 16)
    /* C8F10 800B9F60 24580008 */  addiu      $t8, $v0, 0x8
    /* C8F14 800B9F64 AE180000 */  sw         $t8, 0x0($s0)
    /* C8F18 800B9F68 AC400004 */  sw         $zero, 0x4($v0)
    /* C8F1C 800B9F6C AC590000 */  sw         $t9, 0x0($v0)
    /* C8F20 800B9F70 8E020000 */  lw         $v0, 0x0($s0)
    /* C8F24 800B9F74 3C180700 */  lui        $t8, (0x7000000 >> 16)
    /* C8F28 800B9F78 35EF0100 */  ori        $t7, $t7, (0xF5000100 & 0xFFFF)
    /* C8F2C 800B9F7C 244E0008 */  addiu      $t6, $v0, 0x8
    /* C8F30 800B9F80 AE0E0000 */  sw         $t6, 0x0($s0)
    /* C8F34 800B9F84 AC580004 */  sw         $t8, 0x4($v0)
    /* C8F38 800B9F88 AC4F0000 */  sw         $t7, 0x0($v0)
    /* C8F3C 800B9F8C 8E020000 */  lw         $v0, 0x0($s0)
    /* C8F40 800B9F90 3C1FE600 */  lui        $ra, (0xE6000000 >> 16)
    /* C8F44 800B9F94 3C18073F */  lui        $t8, (0x73FC000 >> 16)
    /* C8F48 800B9F98 24590008 */  addiu      $t9, $v0, 0x8
    /* C8F4C 800B9F9C AE190000 */  sw         $t9, 0x0($s0)
    /* C8F50 800B9FA0 AC400004 */  sw         $zero, 0x4($v0)
    /* C8F54 800B9FA4 AC5F0000 */  sw         $ra, 0x0($v0)
    /* C8F58 800B9FA8 8E020000 */  lw         $v0, 0x0($s0)
    /* C8F5C 800B9FAC 3718C000 */  ori        $t8, $t8, (0x73FC000 & 0xFFFF)
    /* C8F60 800B9FB0 3C0FF000 */  lui        $t7, (0xF0000000 >> 16)
    /* C8F64 800B9FB4 244E0008 */  addiu      $t6, $v0, 0x8
    /* C8F68 800B9FB8 AE0E0000 */  sw         $t6, 0x0($s0)
    /* C8F6C 800B9FBC AC580004 */  sw         $t8, 0x4($v0)
    /* C8F70 800B9FC0 AC4F0000 */  sw         $t7, 0x0($v0)
    /* C8F74 800B9FC4 8E020000 */  lw         $v0, 0x0($s0)
    /* C8F78 800B9FC8 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
    /* C8F7C 800B9FCC 3C188015 */  lui        $t8, %hi(D_801493CC)
    /* C8F80 800B9FD0 24590008 */  addiu      $t9, $v0, 0x8
    /* C8F84 800B9FD4 AE190000 */  sw         $t9, 0x0($s0)
    /* C8F88 800B9FD8 AC400004 */  sw         $zero, 0x4($v0)
    /* C8F8C 800B9FDC AC4E0000 */  sw         $t6, 0x0($v0)
    /* C8F90 800B9FE0 8E020000 */  lw         $v0, 0x0($s0)
    /* C8F94 800B9FE4 3C0EBC00 */  lui        $t6, (0xBC000002 >> 16)
    /* C8F98 800B9FE8 241E0004 */  addiu      $fp, $zero, 0x4
    /* C8F9C 800B9FEC 244F0008 */  addiu      $t7, $v0, 0x8
    /* C8FA0 800B9FF0 AE0F0000 */  sw         $t7, 0x0($s0)
    /* C8FA4 800B9FF4 AC400004 */  sw         $zero, 0x4($v0)
    /* C8FA8 800B9FF8 AC5F0000 */  sw         $ra, 0x0($v0)
    /* C8FAC 800B9FFC 8F1893CC */  lw         $t8, %lo(D_801493CC)($t8)
    /* C8FB0 800BA000 3C0FBC00 */  lui        $t7, (0xBC000002 >> 16)
    /* C8FB4 800BA004 35EF0002 */  ori        $t7, $t7, (0xBC000002 & 0xFFFF)
    /* C8FB8 800BA008 1300001C */  beqz       $t8, .L800BA07C_C902C
    /* C8FBC 800BA00C 0000F825 */   or        $ra, $zero, $zero
    /* C8FC0 800BA010 8E020000 */  lw         $v0, 0x0($s0)
    /* C8FC4 800BA014 3C0F8000 */  lui        $t7, (0x80000040 >> 16)
    /* C8FC8 800BA018 35EF0040 */  ori        $t7, $t7, (0x80000040 & 0xFFFF)
    /* C8FCC 800BA01C 24590008 */  addiu      $t9, $v0, 0x8
    /* C8FD0 800BA020 AE190000 */  sw         $t9, 0x0($s0)
    /* C8FD4 800BA024 35CE0002 */  ori        $t6, $t6, (0xBC000002 & 0xFFFF)
    /* C8FD8 800BA028 AC4E0000 */  sw         $t6, 0x0($v0)
    /* C8FDC 800BA02C AC4F0004 */  sw         $t7, 0x4($v0)
    /* C8FE0 800BA030 8E020000 */  lw         $v0, 0x0($s0)
    /* C8FE4 800BA034 3C0E8014 */  lui        $t6, %hi(D_8013D978)
    /* C8FE8 800BA038 3C190386 */  lui        $t9, (0x3860010 >> 16)
    /* C8FEC 800BA03C 24580008 */  addiu      $t8, $v0, 0x8
    /* C8FF0 800BA040 AE180000 */  sw         $t8, 0x0($s0)
    /* C8FF4 800BA044 37390010 */  ori        $t9, $t9, (0x3860010 & 0xFFFF)
    /* C8FF8 800BA048 25CED978 */  addiu      $t6, $t6, %lo(D_8013D978)
    /* C8FFC 800BA04C AC4E0004 */  sw         $t6, 0x4($v0)
    /* C9000 800BA050 AC590000 */  sw         $t9, 0x0($v0)
    /* C9004 800BA054 8E020000 */  lw         $v0, 0x0($s0)
    /* C9008 800BA058 3C198014 */  lui        $t9, %hi(D_8013D970)
    /* C900C 800BA05C 3C180388 */  lui        $t8, (0x3880010 >> 16)
    /* C9010 800BA060 244F0008 */  addiu      $t7, $v0, 0x8
    /* C9014 800BA064 AE0F0000 */  sw         $t7, 0x0($s0)
    /* C9018 800BA068 37180010 */  ori        $t8, $t8, (0x3880010 & 0xFFFF)
    /* C901C 800BA06C 2739D970 */  addiu      $t9, $t9, %lo(D_8013D970)
    /* C9020 800BA070 AC590004 */  sw         $t9, 0x4($v0)
    /* C9024 800BA074 1000001A */  b          .L800BA0E0_C9090
    /* C9028 800BA078 AC580000 */   sw        $t8, 0x0($v0)
  .L800BA07C_C902C:
    /* C902C 800BA07C 8E020000 */  lw         $v0, 0x0($s0)
    /* C9030 800BA080 3C188000 */  lui        $t8, (0x80000040 >> 16)
    /* C9034 800BA084 37180040 */  ori        $t8, $t8, (0x80000040 & 0xFFFF)
    /* C9038 800BA088 244E0008 */  addiu      $t6, $v0, 0x8
    /* C903C 800BA08C AE0E0000 */  sw         $t6, 0x0($s0)
    /* C9040 800BA090 AC580004 */  sw         $t8, 0x4($v0)
    /* C9044 800BA094 AC4F0000 */  sw         $t7, 0x0($v0)
    /* C9048 800BA098 8E020000 */  lw         $v0, 0x0($s0)
    /* C904C 800BA09C 3C0F8014 */  lui        $t7, %hi(D_8013D960)
    /* C9050 800BA0A0 3C0E0386 */  lui        $t6, (0x3860010 >> 16)
    /* C9054 800BA0A4 24590008 */  addiu      $t9, $v0, 0x8
    /* C9058 800BA0A8 AE190000 */  sw         $t9, 0x0($s0)
    /* C905C 800BA0AC 35CE0010 */  ori        $t6, $t6, (0x3860010 & 0xFFFF)
    /* C9060 800BA0B0 25EFD960 */  addiu      $t7, $t7, %lo(D_8013D960)
    /* C9064 800BA0B4 AC4F0004 */  sw         $t7, 0x4($v0)
    /* C9068 800BA0B8 AC4E0000 */  sw         $t6, 0x0($v0)
    /* C906C 800BA0BC 8E020000 */  lw         $v0, 0x0($s0)
    /* C9070 800BA0C0 3C0E8014 */  lui        $t6, %hi(D_8013D958)
    /* C9074 800BA0C4 3C190388 */  lui        $t9, (0x3880010 >> 16)
    /* C9078 800BA0C8 24580008 */  addiu      $t8, $v0, 0x8
    /* C907C 800BA0CC AE180000 */  sw         $t8, 0x0($s0)
    /* C9080 800BA0D0 37390010 */  ori        $t9, $t9, (0x3880010 & 0xFFFF)
    /* C9084 800BA0D4 25CED958 */  addiu      $t6, $t6, %lo(D_8013D958)
    /* C9088 800BA0D8 AC4E0004 */  sw         $t6, 0x4($v0)
    /* C908C 800BA0DC AC590000 */  sw         $t9, 0x0($v0)
  .L800BA0E0_C9090:
    /* C9090 800BA0E0 87AF010A */  lh         $t7, 0x10A($sp)
    /* C9094 800BA0E4 87A2010C */  lh         $v0, 0x10C($sp)
    /* C9098 800BA0E8 A3A00117 */  sb         $zero, 0x117($sp)
    /* C909C 800BA0EC 05E10003 */  bgez       $t7, .L800BA0FC_C90AC
    /* C90A0 800BA0F0 000FC083 */   sra       $t8, $t7, 2
    /* C90A4 800BA0F4 25E10003 */  addiu      $at, $t7, 0x3
    /* C90A8 800BA0F8 0001C083 */  sra        $t8, $at, 2
  .L800BA0FC_C90AC:
    /* C90AC 800BA0FC AFB8006C */  sw         $t8, 0x6C($sp)
    /* C90B0 800BA100 04410003 */  bgez       $v0, .L800BA110_C90C0
    /* C90B4 800BA104 0002C883 */   sra       $t9, $v0, 2
    /* C90B8 800BA108 24410003 */  addiu      $at, $v0, 0x3
    /* C90BC 800BA10C 0001C883 */  sra        $t9, $at, 2
  .L800BA110_C90C0:
    /* C90C0 800BA110 AFB90068 */  sw         $t9, 0x68($sp)
  .L800BA114_C90C4:
    /* C90C4 800BA114 8FAE006C */  lw         $t6, 0x6C($sp)
    /* C90C8 800BA118 3C198022 */  lui        $t9, %hi(D_8021EA30)
    /* C90CC 800BA11C 2739EA30 */  addiu      $t9, $t9, %lo(D_8021EA30)
    /* C90D0 800BA120 01DF1821 */  addu       $v1, $t6, $ra
    /* C90D4 800BA124 306F00FF */  andi       $t7, $v1, 0xFF
    /* C90D8 800BA128 000FC180 */  sll        $t8, $t7, 6
    /* C90DC 800BA12C 03197021 */  addu       $t6, $t8, $t9
    /* C90E0 800BA130 000FC280 */  sll        $t8, $t7, 10
    /* C90E4 800BA134 34018000 */  ori        $at, $zero, 0x8000
    /* C90E8 800BA138 0301C821 */  addu       $t9, $t8, $at
    /* C90EC 800BA13C AFAE0060 */  sw         $t6, 0x60($sp)
    /* C90F0 800BA140 00197400 */  sll        $t6, $t9, 16
    /* C90F4 800BA144 AFAF0054 */  sw         $t7, 0x54($sp)
    /* C90F8 800BA148 000E7C03 */  sra        $t7, $t6, 16
    /* C90FC 800BA14C AFAF0050 */  sw         $t7, 0x50($sp)
    /* C9100 800BA150 0000B825 */  or         $s7, $zero, $zero
    /* C9104 800BA154 00006825 */  or         $t5, $zero, $zero
  .L800BA158_C9108:
    /* C9108 800BA158 15A00009 */  bnez       $t5, .L800BA180_C9130
    /* C910C 800BA15C 87A2010C */   lh        $v0, 0x10C($sp)
    /* C9110 800BA160 04410004 */  bgez       $v0, .L800BA174_C9124
    /* C9114 800BA164 30540003 */   andi      $s4, $v0, 0x3
    /* C9118 800BA168 12800002 */  beqz       $s4, .L800BA174_C9124
    /* C911C 800BA16C 00000000 */   nop
    /* C9120 800BA170 2694FFFC */  addiu      $s4, $s4, -0x4
  .L800BA174_C9124:
    /* C9124 800BA174 0014C400 */  sll        $t8, $s4, 16
    /* C9128 800BA178 10000002 */  b          .L800BA184_C9134
    /* C912C 800BA17C 0018A403 */   sra       $s4, $t8, 16
  .L800BA180_C9130:
    /* C9130 800BA180 0000A025 */  or         $s4, $zero, $zero
  .L800BA184_C9134:
    /* C9134 800BA184 17CD000B */  bne        $fp, $t5, .L800BA1B4_C9164
    /* C9138 800BA188 3C011FFF */   lui       $at, (0x1FFFFFFF >> 16)
    /* C913C 800BA18C 87B6010C */  lh         $s6, 0x10C($sp)
    /* C9140 800BA190 06C10004 */  bgez       $s6, .L800BA1A4_C9154
    /* C9144 800BA194 32CE0003 */   andi      $t6, $s6, 0x3
    /* C9148 800BA198 11C00002 */  beqz       $t6, .L800BA1A4_C9154
    /* C914C 800BA19C 00000000 */   nop
    /* C9150 800BA1A0 25CEFFFC */  addiu      $t6, $t6, -0x4
  .L800BA1A4_C9154:
    /* C9154 800BA1A4 25D60001 */  addiu      $s6, $t6, 0x1
    /* C9158 800BA1A8 00167C00 */  sll        $t7, $s6, 16
    /* C915C 800BA1AC 10000004 */  b          .L800BA1C0_C9170
    /* C9160 800BA1B0 000FB403 */   sra       $s6, $t7, 16
  .L800BA1B4_C9164:
    /* C9164 800BA1B4 001EB400 */  sll        $s6, $fp, 16
    /* C9168 800BA1B8 0016CC03 */  sra        $t9, $s6, 16
    /* C916C 800BA1BC 0320B025 */  or         $s6, $t9, $zero
  .L800BA1C0_C9170:
    /* C9170 800BA1C0 17E0000A */  bnez       $ra, .L800BA1EC_C919C
    /* C9174 800BA1C4 3421FFFF */   ori       $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* C9178 800BA1C8 87B5010A */  lh         $s5, 0x10A($sp)
    /* C917C 800BA1CC 06A10004 */  bgez       $s5, .L800BA1E0_C9190
    /* C9180 800BA1D0 32AE0003 */   andi      $t6, $s5, 0x3
    /* C9184 800BA1D4 11C00002 */  beqz       $t6, .L800BA1E0_C9190
    /* C9188 800BA1D8 00000000 */   nop
    /* C918C 800BA1DC 25CEFFFC */  addiu      $t6, $t6, -0x4
  .L800BA1E0_C9190:
    /* C9190 800BA1E0 000E7C00 */  sll        $t7, $t6, 16
    /* C9194 800BA1E4 10000002 */  b          .L800BA1F0_C91A0
    /* C9198 800BA1E8 000FAC03 */   sra       $s5, $t7, 16
  .L800BA1EC_C919C:
    /* C919C 800BA1EC 0000A825 */  or         $s5, $zero, $zero
  .L800BA1F0_C91A0:
    /* C91A0 800BA1F0 17DF000B */  bne        $fp, $ra, .L800BA220_C91D0
    /* C91A4 800BA1F4 24060400 */   addiu     $a2, $zero, 0x400
    /* C91A8 800BA1F8 87B3010A */  lh         $s3, 0x10A($sp)
    /* C91AC 800BA1FC 06610004 */  bgez       $s3, .L800BA210_C91C0
    /* C91B0 800BA200 32790003 */   andi      $t9, $s3, 0x3
    /* C91B4 800BA204 13200002 */  beqz       $t9, .L800BA210_C91C0
    /* C91B8 800BA208 00000000 */   nop
    /* C91BC 800BA20C 2739FFFC */  addiu      $t9, $t9, -0x4
  .L800BA210_C91C0:
    /* C91C0 800BA210 27330001 */  addiu      $s3, $t9, 0x1
    /* C91C4 800BA214 00137400 */  sll        $t6, $s3, 16
    /* C91C8 800BA218 10000004 */  b          .L800BA22C_C91DC
    /* C91CC 800BA21C 000E9C03 */   sra       $s3, $t6, 16
  .L800BA220_C91D0:
    /* C91D0 800BA220 001E9C00 */  sll        $s3, $fp, 16
    /* C91D4 800BA224 0013C403 */  sra        $t8, $s3, 16
    /* C91D8 800BA228 03009825 */  or         $s3, $t8, $zero
  .L800BA22C_C91DC:
    /* C91DC 800BA22C 8FB90068 */  lw         $t9, 0x68($sp)
    /* C91E0 800BA230 8FAF0060 */  lw         $t7, 0x60($sp)
    /* C91E4 800BA234 8E020000 */  lw         $v0, 0x0($s0)
    /* C91E8 800BA238 032D5821 */  addu       $t3, $t9, $t5
    /* C91EC 800BA23C 316E00FF */  andi       $t6, $t3, 0xFF
    /* C91F0 800BA240 01EE5021 */  addu       $t2, $t7, $t6
    /* C91F4 800BA244 91580000 */  lbu        $t8, 0x0($t2)
    /* C91F8 800BA248 01C05825 */  or         $t3, $t6, $zero
    /* C91FC 800BA24C 244E0008 */  addiu      $t6, $v0, 0x8
    /* C9200 800BA250 AE0E0000 */  sw         $t6, 0x0($s0)
    /* C9204 800BA254 3C198025 */  lui        $t9, %hi(D_80254E80)
    /* C9208 800BA258 3311000F */  andi       $s1, $t8, 0xF
    /* C920C 800BA25C 0011C240 */  sll        $t8, $s1, 9
    /* C9210 800BA260 27394E80 */  addiu      $t9, $t9, %lo(D_80254E80)
    /* C9214 800BA264 3C0FFD10 */  lui        $t7, (0xFD100000 >> 16)
    /* C9218 800BA268 03197021 */  addu       $t6, $t8, $t9
    /* C921C 800BA26C AC4F0000 */  sw         $t7, 0x0($v0)
    /* C9220 800BA270 01C17824 */  and        $t7, $t6, $at
    /* C9224 800BA274 AC4F0004 */  sw         $t7, 0x4($v0)
    /* C9228 800BA278 8E020000 */  lw         $v0, 0x0($s0)
    /* C922C 800BA27C 3C19E800 */  lui        $t9, (0xE8000000 >> 16)
    /* C9230 800BA280 3C0FF500 */  lui        $t7, (0xF5000100 >> 16)
    /* C9234 800BA284 24580008 */  addiu      $t8, $v0, 0x8
    /* C9238 800BA288 AE180000 */  sw         $t8, 0x0($s0)
    /* C923C 800BA28C AC400004 */  sw         $zero, 0x4($v0)
    /* C9240 800BA290 AC590000 */  sw         $t9, 0x0($v0)
    /* C9244 800BA294 8E020000 */  lw         $v0, 0x0($s0)
    /* C9248 800BA298 3C180700 */  lui        $t8, (0x7000000 >> 16)
    /* C924C 800BA29C 35EF0100 */  ori        $t7, $t7, (0xF5000100 & 0xFFFF)
    /* C9250 800BA2A0 244E0008 */  addiu      $t6, $v0, 0x8
    /* C9254 800BA2A4 AE0E0000 */  sw         $t6, 0x0($s0)
    /* C9258 800BA2A8 AC580004 */  sw         $t8, 0x4($v0)
    /* C925C 800BA2AC AC4F0000 */  sw         $t7, 0x0($v0)
    /* C9260 800BA2B0 8E020000 */  lw         $v0, 0x0($s0)
    /* C9264 800BA2B4 3C12E600 */  lui        $s2, (0xE6000000 >> 16)
    /* C9268 800BA2B8 3C18073F */  lui        $t8, (0x73FC000 >> 16)
    /* C926C 800BA2BC 24590008 */  addiu      $t9, $v0, 0x8
    /* C9270 800BA2C0 AE190000 */  sw         $t9, 0x0($s0)
    /* C9274 800BA2C4 AC400004 */  sw         $zero, 0x4($v0)
    /* C9278 800BA2C8 AC520000 */  sw         $s2, 0x0($v0)
    /* C927C 800BA2CC 8E020000 */  lw         $v0, 0x0($s0)
    /* C9280 800BA2D0 3718C000 */  ori        $t8, $t8, (0x73FC000 & 0xFFFF)
    /* C9284 800BA2D4 3C0FF000 */  lui        $t7, (0xF0000000 >> 16)
    /* C9288 800BA2D8 244E0008 */  addiu      $t6, $v0, 0x8
    /* C928C 800BA2DC AE0E0000 */  sw         $t6, 0x0($s0)
    /* C9290 800BA2E0 AC580004 */  sw         $t8, 0x4($v0)
    /* C9294 800BA2E4 AC4F0000 */  sw         $t7, 0x0($v0)
    /* C9298 800BA2E8 8E020000 */  lw         $v0, 0x0($s0)
    /* C929C 800BA2EC 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
    /* C92A0 800BA2F0 240100F0 */  addiu      $at, $zero, 0xF0
    /* C92A4 800BA2F4 24590008 */  addiu      $t9, $v0, 0x8
    /* C92A8 800BA2F8 AE190000 */  sw         $t9, 0x0($s0)
    /* C92AC 800BA2FC AC400004 */  sw         $zero, 0x4($v0)
    /* C92B0 800BA300 AC4E0000 */  sw         $t6, 0x0($v0)
    /* C92B4 800BA304 8E020000 */  lw         $v0, 0x0($s0)
    /* C92B8 800BA308 000B2280 */  sll        $a0, $t3, 10
    /* C92BC 800BA30C 24070400 */  addiu      $a3, $zero, 0x400
    /* C92C0 800BA310 244F0008 */  addiu      $t7, $v0, 0x8
    /* C92C4 800BA314 AE0F0000 */  sw         $t7, 0x0($s0)
    /* C92C8 800BA318 AC400004 */  sw         $zero, 0x4($v0)
    /* C92CC 800BA31C AC520000 */  sw         $s2, 0x0($v0)
    /* C92D0 800BA320 914C0000 */  lbu        $t4, 0x0($t2)
    /* C92D4 800BA324 3C0FB600 */  lui        $t7, (0xB6000000 >> 16)
    /* C92D8 800BA328 01609025 */  or         $s2, $t3, $zero
    /* C92DC 800BA32C 319800F0 */  andi       $t8, $t4, 0xF0
    /* C92E0 800BA330 13010002 */  beq        $t8, $at, .L800BA33C_C92EC
    /* C92E4 800BA334 25990010 */   addiu     $t9, $t4, 0x10
    /* C92E8 800BA338 A1590000 */  sb         $t9, 0x0($t2)
  .L800BA33C_C92EC:
    /* C92EC 800BA33C 8E020000 */  lw         $v0, 0x0($s0)
    /* C92F0 800BA340 3C180002 */  lui        $t8, (0x20000 >> 16)
    /* C92F4 800BA344 34018000 */  ori        $at, $zero, 0x8000
    /* C92F8 800BA348 244E0008 */  addiu      $t6, $v0, 0x8
    /* C92FC 800BA34C AE0E0000 */  sw         $t6, 0x0($s0)
    /* C9300 800BA350 00812021 */  addu       $a0, $a0, $at
    /* C9304 800BA354 AC580004 */  sw         $t8, 0x4($v0)
    /* C9308 800BA358 AC4F0000 */  sw         $t7, 0x0($v0)
    /* C930C 800BA35C AFBF0070 */  sw         $ra, 0x70($sp)
    /* C9310 800BA360 0004CC00 */  sll        $t9, $a0, 16
    /* C9314 800BA364 00192403 */  sra        $a0, $t9, 16
    /* C9318 800BA368 0C02E583 */  jal        func_800B960C_C85BC
    /* C931C 800BA36C 87A50052 */   lh        $a1, 0x52($sp)
    /* C9320 800BA370 1040001D */  beqz       $v0, .L800BA3E8_C9398
    /* C9324 800BA374 8FBF0070 */   lw        $ra, 0x70($sp)
    /* C9328 800BA378 87AF00F4 */  lh         $t7, 0xF4($sp)
    /* C932C 800BA37C 00153400 */  sll        $a2, $s5, 16
    /* C9330 800BA380 00067403 */  sra        $t6, $a2, 16
    /* C9334 800BA384 01C03025 */  or         $a2, $t6, $zero
    /* C9338 800BA388 8FAE0054 */  lw         $t6, 0x54($sp)
    /* C933C 800BA38C 00163C00 */  sll        $a3, $s6, 16
    /* C9340 800BA390 25F80001 */  addiu      $t8, $t7, 0x1
    /* C9344 800BA394 00077C03 */  sra        $t7, $a3, 16
    /* C9348 800BA398 A7B800F4 */  sh         $t8, 0xF4($sp)
    /* C934C 800BA39C 01E03825 */  or         $a3, $t7, $zero
    /* C9350 800BA3A0 0012C080 */  sll        $t8, $s2, 2
    /* C9354 800BA3A4 000E7A80 */  sll        $t7, $t6, 10
    /* C9358 800BA3A8 030F7021 */  addu       $t6, $t8, $t7
    /* C935C 800BA3AC 00142C00 */  sll        $a1, $s4, 16
    /* C9360 800BA3B0 0005CC03 */  sra        $t9, $a1, 16
    /* C9364 800BA3B4 0015C200 */  sll        $t8, $s5, 8
    /* C9368 800BA3B8 01D87821 */  addu       $t7, $t6, $t8
    /* C936C 800BA3BC 03202825 */  or         $a1, $t9, $zero
    /* C9370 800BA3C0 31F9FFFF */  andi       $t9, $t7, 0xFFFF
    /* C9374 800BA3C4 03347021 */  addu       $t6, $t9, $s4
    /* C9378 800BA3C8 AFBF0070 */  sw         $ra, 0x70($sp)
    /* C937C 800BA3CC AFAE0014 */  sw         $t6, 0x14($sp)
    /* C9380 800BA3D0 8FA400F8 */  lw         $a0, 0xF8($sp)
    /* C9384 800BA3D4 AFB30010 */  sw         $s3, 0x10($sp)
    /* C9388 800BA3D8 0C02D813 */  jal        func_800B604C_C4FFC
    /* C938C 800BA3DC AFB10018 */   sw        $s1, 0x18($sp)
    /* C9390 800BA3E0 10000004 */  b          .L800BA3F4_C93A4
    /* C9394 800BA3E4 8FBF0070 */   lw        $ra, 0x70($sp)
  .L800BA3E8_C9398:
    /* C9398 800BA3E8 87B800F2 */  lh         $t8, 0xF2($sp)
    /* C939C 800BA3EC 270F0001 */  addiu      $t7, $t8, 0x1
    /* C93A0 800BA3F0 A7AF00F2 */  sh         $t7, 0xF2($sp)
  .L800BA3F4_C93A4:
    /* C93A4 800BA3F4 8FB800F8 */  lw         $t8, 0xF8($sp)
    /* C93A8 800BA3F8 26F70001 */  addiu      $s7, $s7, 0x1
    /* C93AC 800BA3FC 03D4C823 */  subu       $t9, $fp, $s4
    /* C93B0 800BA400 32ED00FF */  andi       $t5, $s7, 0xFF
    /* C93B4 800BA404 00197100 */  sll        $t6, $t9, 4
    /* C93B8 800BA408 29A10005 */  slti       $at, $t5, 0x5
    /* C93BC 800BA40C 01D87821 */  addu       $t7, $t6, $t8
    /* C93C0 800BA410 01A0B825 */  or         $s7, $t5, $zero
    /* C93C4 800BA414 1420FF50 */  bnez       $at, .L800BA158_C9108
    /* C93C8 800BA418 AFAF00F8 */   sw        $t7, 0xF8($sp)
    /* C93CC 800BA41C 93A20117 */  lbu        $v0, 0x117($sp)
    /* C93D0 800BA420 03D57023 */  subu       $t6, $fp, $s5
    /* C93D4 800BA424 8FA400FC */  lw         $a0, 0xFC($sp)
    /* C93D8 800BA428 000EC0C0 */  sll        $t8, $t6, 3
    /* C93DC 800BA42C 030EC021 */  addu       $t8, $t8, $t6
    /* C93E0 800BA430 24420001 */  addiu      $v0, $v0, 0x1
    /* C93E4 800BA434 305F00FF */  andi       $ra, $v0, 0xFF
    /* C93E8 800BA438 00187940 */  sll        $t7, $t8, 5
    /* C93EC 800BA43C 2BE10005 */  slti       $at, $ra, 0x5
    /* C93F0 800BA440 01E42021 */  addu       $a0, $t7, $a0
    /* C93F4 800BA444 AFA400FC */  sw         $a0, 0xFC($sp)
    /* C93F8 800BA448 A3BF0117 */  sb         $ra, 0x117($sp)
    /* C93FC 800BA44C 1420FF31 */  bnez       $at, .L800BA114_C90C4
    /* C9400 800BA450 AFA400F8 */   sw        $a0, 0xF8($sp)
    /* C9404 800BA454 8E020000 */  lw         $v0, 0x0($s0)
    /* C9408 800BA458 3C18FC12 */  lui        $t8, (0xFC127FFF >> 16)
    /* C940C 800BA45C 37187FFF */  ori        $t8, $t8, (0xFC127FFF & 0xFFFF)
    /* C9410 800BA460 244E0008 */  addiu      $t6, $v0, 0x8
    /* C9414 800BA464 AE0E0000 */  sw         $t6, 0x0($s0)
    /* C9418 800BA468 240FF838 */  addiu      $t7, $zero, -0x7C8
    /* C941C 800BA46C AC4F0004 */  sw         $t7, 0x4($v0)
    /* C9420 800BA470 AC580000 */  sw         $t8, 0x0($v0)
    /* C9424 800BA474 8E020000 */  lw         $v0, 0x0($s0)
    /* C9428 800BA478 3C11BA00 */  lui        $s1, (0xBA000E02 >> 16)
    /* C942C 800BA47C 36310E02 */  ori        $s1, $s1, (0xBA000E02 & 0xFFFF)
    /* C9430 800BA480 24590008 */  addiu      $t9, $v0, 0x8
    /* C9434 800BA484 AE190000 */  sw         $t9, 0x0($s0)
    /* C9438 800BA488 340E8000 */  ori        $t6, $zero, 0x8000
    /* C943C 800BA48C AC4E0004 */  sw         $t6, 0x4($v0)
    /* C9440 800BA490 0C02DD4F */  jal        func_800B753C_C64EC
    /* C9444 800BA494 AC510000 */   sw        $s1, 0x0($v0)
    /* C9448 800BA498 8E020000 */  lw         $v0, 0x0($s0)
    /* C944C 800BA49C 24580008 */  addiu      $t8, $v0, 0x8
    /* C9450 800BA4A0 AE180000 */  sw         $t8, 0x0($s0)
    /* C9454 800BA4A4 AC400004 */  sw         $zero, 0x4($v0)
    /* C9458 800BA4A8 AC510000 */  sw         $s1, 0x0($v0)
    /* C945C 800BA4AC 8FBF004C */  lw         $ra, 0x4C($sp)
    /* C9460 800BA4B0 8FBE0048 */  lw         $fp, 0x48($sp)
    /* C9464 800BA4B4 8FB70044 */  lw         $s7, 0x44($sp)
    /* C9468 800BA4B8 8FB60040 */  lw         $s6, 0x40($sp)
    /* C946C 800BA4BC 8FB5003C */  lw         $s5, 0x3C($sp)
    /* C9470 800BA4C0 8FB40038 */  lw         $s4, 0x38($sp)
    /* C9474 800BA4C4 8FB30034 */  lw         $s3, 0x34($sp)
    /* C9478 800BA4C8 8FB20030 */  lw         $s2, 0x30($sp)
    /* C947C 800BA4CC 8FB1002C */  lw         $s1, 0x2C($sp)
    /* C9480 800BA4D0 8FB00028 */  lw         $s0, 0x28($sp)
    /* C9484 800BA4D4 03E00008 */  jr         $ra
    /* C9488 800BA4D8 27BD0118 */   addiu     $sp, $sp, 0x118
endlabel func_800B9DB8_C8D68
