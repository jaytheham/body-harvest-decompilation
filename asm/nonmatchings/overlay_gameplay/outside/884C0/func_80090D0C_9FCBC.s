nonmatching func_80090D0C_9FCBC, 0x514

glabel func_80090D0C_9FCBC
    /* 9FCBC 80090D0C 308E00FF */  andi       $t6, $a0, 0xFF
    /* 9FCC0 80090D10 000E7880 */  sll        $t7, $t6, 2
    /* 9FCC4 80090D14 27BDFF88 */  addiu      $sp, $sp, -0x78
    /* 9FCC8 80090D18 01EE7821 */  addu       $t7, $t7, $t6
    /* 9FCCC 80090D1C 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 9FCD0 80090D20 AFB00028 */  sw         $s0, 0x28($sp)
    /* 9FCD4 80090D24 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 9FCD8 80090D28 000F7900 */  sll        $t7, $t7, 4
    /* 9FCDC 80090D2C 01F88021 */  addu       $s0, $t7, $t8
    /* 9FCE0 80090D30 8609000C */  lh         $t1, 0xC($s0)
    /* 9FCE4 80090D34 3C058015 */  lui        $a1, %hi(D_8014DD5C)
    /* 9FCE8 80090D38 9219001A */  lbu        $t9, 0x1A($s0)
    /* 9FCEC 80090D3C 00095100 */  sll        $t2, $t1, 4
    /* 9FCF0 80090D40 00AA2821 */  addu       $a1, $a1, $t2
    /* 9FCF4 80090D44 80A5DD5C */  lb         $a1, %lo(D_8014DD5C)($a1)
    /* 9FCF8 80090D48 AFBF002C */  sw         $ra, 0x2C($sp)
    /* 9FCFC 80090D4C AFA40078 */  sw         $a0, 0x78($sp)
    /* 9FD00 80090D50 01C02025 */  or         $a0, $t6, $zero
    /* 9FD04 80090D54 A3AE007B */  sb         $t6, 0x7B($sp)
    /* 9FD08 80090D58 240617E8 */  addiu      $a2, $zero, 0x17E8
    /* 9FD0C 80090D5C A3B90077 */  sb         $t9, 0x77($sp)
    /* 9FD10 80090D60 0C02188C */  jal        func_80086230_951E0
    /* 9FD14 80090D64 A7A5006A */   sh        $a1, 0x6A($sp)
    /* 9FD18 80090D68 920B0025 */  lbu        $t3, 0x25($s0)
    /* 9FD1C 80090D6C 8E0E0020 */  lw         $t6, 0x20($s0)
    /* 9FD20 80090D70 3C010800 */  lui        $at, (0x8008100 >> 16)
    /* 9FD24 80090D74 000B6080 */  sll        $t4, $t3, 2
    /* 9FD28 80090D78 3C0D8005 */  lui        $t5, %hi(alienInstances)
    /* 9FD2C 80090D7C 34218100 */  ori        $at, $at, (0x8008100 & 0xFFFF)
    /* 9FD30 80090D80 018B6021 */  addu       $t4, $t4, $t3
    /* 9FD34 80090D84 000C6100 */  sll        $t4, $t4, 4
    /* 9FD38 80090D88 25AD8198 */  addiu      $t5, $t5, %lo(alienInstances)
    /* 9FD3C 80090D8C 01C17825 */  or         $t7, $t6, $at
    /* 9FD40 80090D90 018D4021 */  addu       $t0, $t4, $t5
    /* 9FD44 80090D94 AE0F0020 */  sw         $t7, 0x20($s0)
    /* 9FD48 80090D98 8D180010 */  lw         $t8, 0x10($t0)
    /* 9FD4C 80090D9C 8D030020 */  lw         $v1, 0x20($t0)
    /* 9FD50 80090DA0 3C0D8015 */  lui        $t5, %hi(D_8014DD5C)
    /* 9FD54 80090DA4 2719FFFF */  addiu      $t9, $t8, -0x1
    /* 9FD58 80090DA8 00034BC0 */  sll        $t1, $v1, 15
    /* 9FD5C 80090DAC 0521003B */  bgez       $t1, .L80090E9C_9FE4C
    /* 9FD60 80090DB0 AD190010 */   sw        $t9, 0x10($t0)
    /* 9FD64 80090DB4 17200003 */  bnez       $t9, .L80090DC4_9FD74
    /* 9FD68 80090DB8 24050002 */   addiu     $a1, $zero, 0x2
    /* 9FD6C 80090DBC 240B0001 */  addiu      $t3, $zero, 0x1
    /* 9FD70 80090DC0 AD0B0010 */  sw         $t3, 0x10($t0)
  .L80090DC4_9FD74:
    /* 9FD74 80090DC4 8602000C */  lh         $v0, 0xC($s0)
    /* 9FD78 80090DC8 3C0E8014 */  lui        $t6, %hi(D_8013C848)
    /* 9FD7C 80090DCC 25CEC848 */  addiu      $t6, $t6, %lo(D_8013C848)
    /* 9FD80 80090DD0 00026100 */  sll        $t4, $v0, 4
    /* 9FD84 80090DD4 01AC6821 */  addu       $t5, $t5, $t4
    /* 9FD88 80090DD8 81ADDD5C */  lb         $t5, %lo(D_8014DD5C)($t5)
    /* 9FD8C 80090DDC AFAE0010 */  sw         $t6, 0x10($sp)
    /* 9FD90 80090DE0 93A4007B */  lbu        $a0, 0x7B($sp)
    /* 9FD94 80090DE4 24060005 */  addiu      $a2, $zero, 0x5
    /* 9FD98 80090DE8 27A7006C */  addiu      $a3, $sp, 0x6C
    /* 9FD9C 80090DEC AFA80044 */  sw         $t0, 0x44($sp)
    /* 9FDA0 80090DF0 A7A2006C */  sh         $v0, 0x6C($sp)
    /* 9FDA4 80090DF4 0C0207C6 */  jal        func_80081F18_90EC8
    /* 9FDA8 80090DF8 A7AD006E */   sh        $t5, 0x6E($sp)
    /* 9FDAC 80090DFC 920F0036 */  lbu        $t7, 0x36($s0)
    /* 9FDB0 80090E00 24010002 */  addiu      $at, $zero, 0x2
    /* 9FDB4 80090E04 8FA80044 */  lw         $t0, 0x44($sp)
    /* 9FDB8 80090E08 11E10003 */  beq        $t7, $at, .L80090E18_9FDC8
    /* 9FDBC 80090E0C A3A20063 */   sb        $v0, 0x63($sp)
    /* 9FDC0 80090E10 24010001 */  addiu      $at, $zero, 0x1
    /* 9FDC4 80090E14 14410017 */  bne        $v0, $at, .L80090E74_9FE24
  .L80090E18_9FDC8:
    /* 9FDC8 80090E18 24040040 */   addiu     $a0, $zero, 0x40
    /* 9FDCC 80090E1C 2405001F */  addiu      $a1, $zero, 0x1F
    /* 9FDD0 80090E20 0C021C36 */  jal        func_800870D8_96088
    /* 9FDD4 80090E24 AFA80044 */   sw        $t0, 0x44($sp)
    /* 9FDD8 80090E28 34018000 */  ori        $at, $zero, 0x8000
    /* 9FDDC 80090E2C 00413021 */  addu       $a2, $v0, $at
    /* 9FDE0 80090E30 0006C400 */  sll        $t8, $a2, 16
    /* 9FDE4 80090E34 00183403 */  sra        $a2, $t8, 16
    /* 9FDE8 80090E38 93A4007B */  lbu        $a0, 0x7B($sp)
    /* 9FDEC 80090E3C 0C021A8D */  jal        func_80086A34_959E4
    /* 9FDF0 80090E40 24050001 */   addiu     $a1, $zero, 0x1
    /* 9FDF4 80090E44 10400008 */  beqz       $v0, .L80090E68_9FE18
    /* 9FDF8 80090E48 8FA80044 */   lw        $t0, 0x44($sp)
    /* 9FDFC 80090E4C 93A4007B */  lbu        $a0, 0x7B($sp)
    /* 9FE00 80090E50 2405000A */  addiu      $a1, $zero, 0xA
    /* 9FE04 80090E54 0C04DD1A */  jal        func_80137468_146418
    /* 9FE08 80090E58 AFA80044 */   sw        $t0, 0x44($sp)
    /* 9FE0C 80090E5C 24090008 */  addiu      $t1, $zero, 0x8
    /* 9FE10 80090E60 8FA80044 */  lw         $t0, 0x44($sp)
    /* 9FE14 80090E64 A609001E */  sh         $t1, 0x1E($s0)
  .L80090E68_9FE18:
    /* 9FE18 80090E68 860A001E */  lh         $t2, 0x1E($s0)
    /* 9FE1C 80090E6C 254BFFFF */  addiu      $t3, $t2, -0x1
    /* 9FE20 80090E70 A60B001E */  sh         $t3, 0x1E($s0)
  .L80090E74_9FE24:
    /* 9FE24 80090E74 83AC0063 */  lb         $t4, 0x63($sp)
    /* 9FE28 80090E78 24010005 */  addiu      $at, $zero, 0x5
    /* 9FE2C 80090E7C 558100E4 */  bnel       $t4, $at, .L80091210_A01C0
    /* 9FE30 80090E80 8FBF002C */   lw        $ra, 0x2C($sp)
    /* 9FE34 80090E84 8D0D0020 */  lw         $t5, 0x20($t0)
    /* 9FE38 80090E88 3C01FFFE */  lui        $at, (0xFFFEFFFF >> 16)
    /* 9FE3C 80090E8C 3421FFFF */  ori        $at, $at, (0xFFFEFFFF & 0xFFFF)
    /* 9FE40 80090E90 01A17024 */  and        $t6, $t5, $at
    /* 9FE44 80090E94 100000DD */  b          .L8009120C_A01BC
    /* 9FE48 80090E98 AD0E0020 */   sw        $t6, 0x20($t0)
  .L80090E9C_9FE4C:
    /* 9FE4C 80090E9C 00037B80 */  sll        $t7, $v1, 14
    /* 9FE50 80090EA0 05E1003B */  bgez       $t7, .L80090F90_9FF40
    /* 9FE54 80090EA4 93A4007B */   lbu       $a0, 0x7B($sp)
    /* 9FE58 80090EA8 8D180010 */  lw         $t8, 0x10($t0)
    /* 9FE5C 80090EAC 3C01FFFD */  lui        $at, (0xFFFDFFFF >> 16)
    /* 9FE60 80090EB0 24190001 */  addiu      $t9, $zero, 0x1
    /* 9FE64 80090EB4 17000002 */  bnez       $t8, .L80090EC0_9FE70
    /* 9FE68 80090EB8 3421FFFF */   ori       $at, $at, (0xFFFDFFFF & 0xFFFF)
    /* 9FE6C 80090EBC AD190010 */  sw         $t9, 0x10($t0)
  .L80090EC0_9FE70:
    /* 9FE70 80090EC0 8602001E */  lh         $v0, 0x1E($s0)
    /* 9FE74 80090EC4 18400003 */  blez       $v0, .L80090ED4_9FE84
    /* 9FE78 80090EC8 2449FFFF */   addiu     $t1, $v0, -0x1
    /* 9FE7C 80090ECC 1000000D */  b          .L80090F04_9FEB4
    /* 9FE80 80090ED0 A609001E */   sh        $t1, 0x1E($s0)
  .L80090ED4_9FE84:
    /* 9FE84 80090ED4 8D0A0020 */  lw         $t2, 0x20($t0)
    /* 9FE88 80090ED8 3C0C8004 */  lui        $t4, %hi(currentLevel)
    /* 9FE8C 80090EDC 240E002D */  addiu      $t6, $zero, 0x2D
    /* 9FE90 80090EE0 01415824 */  and        $t3, $t2, $at
    /* 9FE94 80090EE4 AD0B0020 */  sw         $t3, 0x20($t0)
    /* 9FE98 80090EE8 8D8C7F90 */  lw         $t4, %lo(currentLevel)($t4)
    /* 9FE9C 80090EEC 93A4007B */  lbu        $a0, 0x7B($sp)
    /* 9FEA0 80090EF0 00002825 */  or         $a1, $zero, $zero
    /* 9FEA4 80090EF4 000C6880 */  sll        $t5, $t4, 2
    /* 9FEA8 80090EF8 01AC6821 */  addu       $t5, $t5, $t4
    /* 9FEAC 80090EFC 0C021C73 */  jal        func_800871CC_9617C
    /* 9FEB0 80090F00 01CD3023 */   subu      $a2, $t6, $t5
  .L80090F04_9FEB4:
    /* 9FEB4 80090F04 87AF006A */  lh         $t7, 0x6A($sp)
    /* 9FEB8 80090F08 3C198015 */  lui        $t9, %hi(D_8014DD50)
    /* 9FEBC 80090F0C 2739DD50 */  addiu      $t9, $t9, %lo(D_8014DD50)
    /* 9FEC0 80090F10 000FC100 */  sll        $t8, $t7, 4
    /* 9FEC4 80090F14 03191021 */  addu       $v0, $t8, $t9
    /* 9FEC8 80090F18 84460002 */  lh         $a2, 0x2($v0)
    /* 9FECC 80090F1C 84470004 */  lh         $a3, 0x4($v0)
    /* 9FED0 80090F20 27AF0054 */  addiu      $t7, $sp, 0x54
    /* 9FED4 80090F24 24C6000A */  addiu      $a2, $a2, 0xA
    /* 9FED8 80090F28 24E70037 */  addiu      $a3, $a3, 0x37
    /* 9FEDC 80090F2C 00075C00 */  sll        $t3, $a3, 16
    /* 9FEE0 80090F30 00064C00 */  sll        $t1, $a2, 16
    /* 9FEE4 80090F34 27AE005C */  addiu      $t6, $sp, 0x5C
    /* 9FEE8 80090F38 27AD0058 */  addiu      $t5, $sp, 0x58
    /* 9FEEC 80090F3C AFAD0014 */  sw         $t5, 0x14($sp)
    /* 9FEF0 80090F40 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 9FEF4 80090F44 00093403 */  sra        $a2, $t1, 16
    /* 9FEF8 80090F48 000B3C03 */  sra        $a3, $t3, 16
    /* 9FEFC 80090F4C AFAF0018 */  sw         $t7, 0x18($sp)
    /* 9FF00 80090F50 84450000 */  lh         $a1, 0x0($v0)
    /* 9FF04 80090F54 0C04A10A */  jal        func_80128428_1373D8
    /* 9FF08 80090F58 02002025 */   or        $a0, $s0, $zero
    /* 9FF0C 80090F5C 2418000A */  addiu      $t8, $zero, 0xA
    /* 9FF10 80090F60 24190010 */  addiu      $t9, $zero, 0x10
    /* 9FF14 80090F64 24090028 */  addiu      $t1, $zero, 0x28
    /* 9FF18 80090F68 AFA90018 */  sw         $t1, 0x18($sp)
    /* 9FF1C 80090F6C AFB90014 */  sw         $t9, 0x14($sp)
    /* 9FF20 80090F70 AFB80010 */  sw         $t8, 0x10($sp)
    /* 9FF24 80090F74 87A4005E */  lh         $a0, 0x5E($sp)
    /* 9FF28 80090F78 87A5005A */  lh         $a1, 0x5A($sp)
    /* 9FF2C 80090F7C 87A60056 */  lh         $a2, 0x56($sp)
    /* 9FF30 80090F80 0C0315A9 */  jal        func_800C56A4_D4654
    /* 9FF34 80090F84 2407008C */   addiu     $a3, $zero, 0x8C
    /* 9FF38 80090F88 100000A1 */  b          .L80091210_A01C0
    /* 9FF3C 80090F8C 8FBF002C */   lw        $ra, 0x2C($sp)
  .L80090F90_9FF40:
    /* 9FF40 80090F90 2405015E */  addiu      $a1, $zero, 0x15E
    /* 9FF44 80090F94 240601F4 */  addiu      $a2, $zero, 0x1F4
    /* 9FF48 80090F98 0C021D47 */  jal        func_8008751C_964CC
    /* 9FF4C 80090F9C AFA80044 */   sw        $t0, 0x44($sp)
    /* 9FF50 80090FA0 93A4007B */  lbu        $a0, 0x7B($sp)
    /* 9FF54 80090FA4 0C0213FA */  jal        func_80084FE8_93F98
    /* 9FF58 80090FA8 24054000 */   addiu     $a1, $zero, 0x4000
    /* 9FF5C 80090FAC 10400047 */  beqz       $v0, .L800910CC_A007C
    /* 9FF60 80090FB0 8FA80044 */   lw        $t0, 0x44($sp)
    /* 9FF64 80090FB4 8E0A0020 */  lw         $t2, 0x20($s0)
    /* 9FF68 80090FB8 2401FFBF */  addiu      $at, $zero, -0x41
    /* 9FF6C 80090FBC AFA80044 */  sw         $t0, 0x44($sp)
    /* 9FF70 80090FC0 01415824 */  and        $t3, $t2, $at
    /* 9FF74 80090FC4 0C000E38 */  jal        func_800038E0_44E0
    /* 9FF78 80090FC8 AE0B0020 */   sw        $t3, 0x20($s0)
    /* 9FF7C 80090FCC 24010005 */  addiu      $at, $zero, 0x5
    /* 9FF80 80090FD0 0041001A */  div        $zero, $v0, $at
    /* 9FF84 80090FD4 00007010 */  mfhi       $t6
    /* 9FF88 80090FD8 3C0C8005 */  lui        $t4, %hi(D_80052A8C)
    /* 9FF8C 80090FDC 8D8C2A8C */  lw         $t4, %lo(D_80052A8C)($t4)
    /* 9FF90 80090FE0 25CD0004 */  addiu      $t5, $t6, 0x4
    /* 9FF94 80090FE4 87B8006A */  lh         $t8, 0x6A($sp)
    /* 9FF98 80090FE8 018D001B */  divu       $zero, $t4, $t5
    /* 9FF9C 80090FEC 00007810 */  mfhi       $t7
    /* 9FFA0 80090FF0 8FA80044 */  lw         $t0, 0x44($sp)
    /* 9FFA4 80090FF4 15A00002 */  bnez       $t5, .L80091000_9FFB0
    /* 9FFA8 80090FF8 00000000 */   nop
    /* 9FFAC 80090FFC 0007000D */  break      7
  .L80091000_9FFB0:
    /* 9FFB0 80091000 02002025 */  or         $a0, $s0, $zero
    /* 9FFB4 80091004 15E00034 */  bnez       $t7, .L800910D8_A0088
    /* 9FFB8 80091008 0018C900 */   sll       $t9, $t8, 4
    /* 9FFBC 8009100C 3C098015 */  lui        $t1, %hi(D_8014DD50)
    /* 9FFC0 80091010 2529DD50 */  addiu      $t1, $t1, %lo(D_8014DD50)
    /* 9FFC4 80091014 03291021 */  addu       $v0, $t9, $t1
    /* 9FFC8 80091018 84460002 */  lh         $a2, 0x2($v0)
    /* 9FFCC 8009101C 84470004 */  lh         $a3, 0x4($v0)
    /* 9FFD0 80091020 27AD005C */  addiu      $t5, $sp, 0x5C
    /* 9FFD4 80091024 24C6000A */  addiu      $a2, $a2, 0xA
    /* 9FFD8 80091028 24E70014 */  addiu      $a3, $a3, 0x14
    /* 9FFDC 8009102C 00077400 */  sll        $t6, $a3, 16
    /* 9FFE0 80091030 00065400 */  sll        $t2, $a2, 16
    /* 9FFE4 80091034 27AF0058 */  addiu      $t7, $sp, 0x58
    /* 9FFE8 80091038 27B80054 */  addiu      $t8, $sp, 0x54
    /* 9FFEC 8009103C AFB80018 */  sw         $t8, 0x18($sp)
    /* 9FFF0 80091040 AFAF0014 */  sw         $t7, 0x14($sp)
    /* 9FFF4 80091044 000A3403 */  sra        $a2, $t2, 16
    /* 9FFF8 80091048 000E3C03 */  sra        $a3, $t6, 16
    /* 9FFFC 8009104C AFAD0010 */  sw         $t5, 0x10($sp)
    /* A0000 80091050 84450000 */  lh         $a1, 0x0($v0)
    /* A0004 80091054 0C04A10A */  jal        func_80128428_1373D8
    /* A0008 80091058 AFA80044 */   sw        $t0, 0x44($sp)
    /* A000C 8009105C 0C000E38 */  jal        func_800038E0_44E0
    /* A0010 80091060 00000000 */   nop
    /* A0014 80091064 24010006 */  addiu      $at, $zero, 0x6
    /* A0018 80091068 0041001A */  div        $zero, $v0, $at
    /* A001C 8009106C 00003010 */  mfhi       $a2
    /* A0020 80091070 8FA90058 */  lw         $t1, 0x58($sp)
    /* A0024 80091074 8FAA0054 */  lw         $t2, 0x54($sp)
    /* A0028 80091078 24C60006 */  addiu      $a2, $a2, 0x6
    /* A002C 8009107C 30D900FF */  andi       $t9, $a2, 0xFF
    /* A0030 80091080 03203025 */  or         $a2, $t9, $zero
    /* A0034 80091084 24040028 */  addiu      $a0, $zero, 0x28
    /* A0038 80091088 24050032 */  addiu      $a1, $zero, 0x32
    /* A003C 8009108C 87A7005E */  lh         $a3, 0x5E($sp)
    /* A0040 80091090 AFA90010 */  sw         $t1, 0x10($sp)
    /* A0044 80091094 0C0331EC */  jal        func_800CC7B0_DB760
    /* A0048 80091098 AFAA0014 */   sw        $t2, 0x14($sp)
    /* A004C 8009109C 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
    /* A0050 800910A0 44812000 */  mtc1       $at, $f4
    /* A0054 800910A4 860B0004 */  lh         $t3, 0x4($s0)
    /* A0058 800910A8 02002025 */  or         $a0, $s0, $zero
    /* A005C 800910AC 2405013F */  addiu      $a1, $zero, 0x13F
    /* A0060 800910B0 86060000 */  lh         $a2, 0x0($s0)
    /* A0064 800910B4 86070002 */  lh         $a3, 0x2($s0)
    /* A0068 800910B8 AFAB0010 */  sw         $t3, 0x10($sp)
    /* A006C 800910BC 0C04DC6E */  jal        func_801371B8_146168
    /* A0070 800910C0 E7A40014 */   swc1      $f4, 0x14($sp)
    /* A0074 800910C4 10000004 */  b          .L800910D8_A0088
    /* A0078 800910C8 8FA80044 */   lw        $t0, 0x44($sp)
  .L800910CC_A007C:
    /* A007C 800910CC 8E0E0020 */  lw         $t6, 0x20($s0)
    /* A0080 800910D0 35CC0040 */  ori        $t4, $t6, 0x40
    /* A0084 800910D4 AE0C0020 */  sw         $t4, 0x20($s0)
  .L800910D8_A0088:
    /* A0088 800910D8 8D0D0010 */  lw         $t5, 0x10($t0)
    /* A008C 800910DC 59A00006 */  blezl      $t5, .L800910F8_A00A8
    /* A0090 800910E0 8E190020 */   lw        $t9, 0x20($s0)
    /* A0094 800910E4 920F0047 */  lbu        $t7, 0x47($s0)
    /* A0098 800910E8 31F80001 */  andi       $t8, $t7, 0x1
    /* A009C 800910EC 13000018 */  beqz       $t8, .L80091150_A0100
    /* A00A0 800910F0 00000000 */   nop
    /* A00A4 800910F4 8E190020 */  lw         $t9, 0x20($s0)
  .L800910F8_A00A8:
    /* A00A8 800910F8 3C01F7FF */  lui        $at, (0xF7FF7EBF >> 16)
    /* A00AC 800910FC 34217EBF */  ori        $at, $at, (0xF7FF7EBF & 0xFFFF)
    /* A00B0 80091100 03214824 */  and        $t1, $t9, $at
    /* A00B4 80091104 AE090020 */  sw         $t1, 0x20($s0)
    /* A00B8 80091108 AD000010 */  sw         $zero, 0x10($t0)
    /* A00BC 8009110C 87AA006A */  lh         $t2, 0x6A($sp)
    /* A00C0 80091110 3C058015 */  lui        $a1, %hi(D_8014DD50)
    /* A00C4 80091114 24A5DD50 */  addiu      $a1, $a1, %lo(D_8014DD50)
    /* A00C8 80091118 000A5900 */  sll        $t3, $t2, 4
    /* A00CC 8009111C 00AB7021 */  addu       $t6, $a1, $t3
    /* A00D0 80091120 81C2000C */  lb         $v0, 0xC($t6)
    /* A00D4 80091124 2419FFFC */  addiu      $t9, $zero, -0x4
    /* A00D8 80091128 00026100 */  sll        $t4, $v0, 4
    /* A00DC 8009112C 00AC6821 */  addu       $t5, $a1, $t4
    /* A00E0 80091130 81A3000D */  lb         $v1, 0xD($t5)
    /* A00E4 80091134 00037900 */  sll        $t7, $v1, 4
    /* A00E8 80091138 00AFC021 */  addu       $t8, $a1, $t7
    /* A00EC 8009113C 8304000D */  lb         $a0, 0xD($t8)
    /* A00F0 80091140 00044900 */  sll        $t1, $a0, 4
    /* A00F4 80091144 00A95021 */  addu       $t2, $a1, $t1
    /* A00F8 80091148 10000030 */  b          .L8009120C_A01BC
    /* A00FC 8009114C A5590002 */   sh        $t9, 0x2($t2)
  .L80091150_A0100:
    /* A0100 80091150 3C058005 */  lui        $a1, %hi(D_80052B34)
    /* A0104 80091154 8CA52B34 */  lw         $a1, %lo(D_80052B34)($a1)
    /* A0108 80091158 02002025 */  or         $a0, $s0, $zero
    /* A010C 8009115C 0C021395 */  jal        func_80084E54_93E04
    /* A0110 80091160 AFA80044 */   sw        $t0, 0x44($sp)
    /* A0114 80091164 284102EE */  slti       $at, $v0, 0x2EE
    /* A0118 80091168 10200028 */  beqz       $at, .L8009120C_A01BC
    /* A011C 8009116C 8FA80044 */   lw        $t0, 0x44($sp)
    /* A0120 80091170 860B000E */  lh         $t3, 0xE($s0)
    /* A0124 80091174 860E002A */  lh         $t6, 0x2A($s0)
    /* A0128 80091178 93AF0077 */  lbu        $t7, 0x77($sp)
    /* A012C 8009117C 3C098025 */  lui        $t1, %hi(D_802566C2)
    /* A0130 80091180 016E1023 */  subu       $v0, $t3, $t6
    /* A0134 80091184 00026400 */  sll        $t4, $v0, 16
    /* A0138 80091188 000C6C03 */  sra        $t5, $t4, 16
    /* A013C 8009118C 05A00003 */  bltz       $t5, .L8009119C_A014C
    /* A0140 80091190 01A01025 */   or        $v0, $t5, $zero
    /* A0144 80091194 10000002 */  b          .L800911A0_A0150
    /* A0148 80091198 01A01825 */   or        $v1, $t5, $zero
  .L8009119C_A014C:
    /* A014C 8009119C 00021823 */  negu       $v1, $v0
  .L800911A0_A0150:
    /* A0150 800911A0 000FC080 */  sll        $t8, $t7, 2
    /* A0154 800911A4 030FC023 */  subu       $t8, $t8, $t7
    /* A0158 800911A8 0018C080 */  sll        $t8, $t8, 2
    /* A015C 800911AC 030FC021 */  addu       $t8, $t8, $t7
    /* A0160 800911B0 0018C0C0 */  sll        $t8, $t8, 3
    /* A0164 800911B4 01384821 */  addu       $t1, $t1, $t8
    /* A0168 800911B8 852966C2 */  lh         $t1, %lo(D_802566C2)($t1)
    /* A016C 800911BC 0069082A */  slt        $at, $v1, $t1
    /* A0170 800911C0 50200013 */  beql       $at, $zero, .L80091210_A01C0
    /* A0174 800911C4 8FBF002C */   lw        $ra, 0x2C($sp)
    /* A0178 800911C8 8E190020 */  lw         $t9, 0x20($s0)
    /* A017C 800911CC 332A0040 */  andi       $t2, $t9, 0x40
    /* A0180 800911D0 51400009 */  beql       $t2, $zero, .L800911F8_A01A8
    /* A0184 800911D4 8D0C0020 */   lw        $t4, 0x20($t0)
    /* A0188 800911D8 8D0B0020 */  lw         $t3, 0x20($t0)
    /* A018C 800911DC 3C010001 */  lui        $at, (0x10000 >> 16)
    /* A0190 800911E0 01617025 */  or         $t6, $t3, $at
    /* A0194 800911E4 AD0E0020 */  sw         $t6, 0x20($t0)
    /* A0198 800911E8 A2000036 */  sb         $zero, 0x36($s0)
    /* A019C 800911EC 10000007 */  b          .L8009120C_A01BC
    /* A01A0 800911F0 A600001E */   sh        $zero, 0x1E($s0)
    /* A01A4 800911F4 8D0C0020 */  lw         $t4, 0x20($t0)
  .L800911F8_A01A8:
    /* A01A8 800911F8 3C010002 */  lui        $at, (0x20000 >> 16)
    /* A01AC 800911FC 240F0028 */  addiu      $t7, $zero, 0x28
    /* A01B0 80091200 01816825 */  or         $t5, $t4, $at
    /* A01B4 80091204 AD0D0020 */  sw         $t5, 0x20($t0)
    /* A01B8 80091208 A60F001E */  sh         $t7, 0x1E($s0)
  .L8009120C_A01BC:
    /* A01BC 8009120C 8FBF002C */  lw         $ra, 0x2C($sp)
  .L80091210_A01C0:
    /* A01C0 80091210 8FB00028 */  lw         $s0, 0x28($sp)
    /* A01C4 80091214 27BD0078 */  addiu      $sp, $sp, 0x78
    /* A01C8 80091218 03E00008 */  jr         $ra
    /* A01CC 8009121C 00000000 */   nop
endlabel func_80090D0C_9FCBC
