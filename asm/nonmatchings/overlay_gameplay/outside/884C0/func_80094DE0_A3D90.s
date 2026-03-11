nonmatching func_80094DE0_A3D90, 0x2C8

glabel func_80094DE0_A3D90
    /* A3D90 80094DE0 308E00FF */  andi       $t6, $a0, 0xFF
    /* A3D94 80094DE4 000E7880 */  sll        $t7, $t6, 2
    /* A3D98 80094DE8 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* A3D9C 80094DEC 01EE7821 */  addu       $t7, $t7, $t6
    /* A3DA0 80094DF0 3C188005 */  lui        $t8, %hi(alienInstances)
    /* A3DA4 80094DF4 AFB00020 */  sw         $s0, 0x20($sp)
    /* A3DA8 80094DF8 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* A3DAC 80094DFC 000F7900 */  sll        $t7, $t7, 4
    /* A3DB0 80094E00 01F88021 */  addu       $s0, $t7, $t8
    /* A3DB4 80094E04 8607000C */  lh         $a3, 0xC($s0)
    /* A3DB8 80094E08 3C028015 */  lui        $v0, %hi(D_8014DD50)
    /* A3DBC 80094E0C 2442DD50 */  addiu      $v0, $v0, %lo(D_8014DD50)
    /* A3DC0 80094E10 00075900 */  sll        $t3, $a3, 4
    /* A3DC4 80094E14 004B1821 */  addu       $v1, $v0, $t3
    /* A3DC8 80094E18 8068000C */  lb         $t0, 0xC($v1)
    /* A3DCC 80094E1C AFA40060 */  sw         $a0, 0x60($sp)
    /* A3DD0 80094E20 01C02025 */  or         $a0, $t6, $zero
    /* A3DD4 80094E24 00086100 */  sll        $t4, $t0, 4
    /* A3DD8 80094E28 004C3021 */  addu       $a2, $v0, $t4
    /* A3DDC 80094E2C 80C9000C */  lb         $t1, 0xC($a2)
    /* A3DE0 80094E30 9219001A */  lbu        $t9, 0x1A($s0)
    /* A3DE4 80094E34 AFBF0024 */  sw         $ra, 0x24($sp)
    /* A3DE8 80094E38 00096900 */  sll        $t5, $t1, 4
    /* A3DEC 80094E3C 004D7021 */  addu       $t6, $v0, $t5
    /* A3DF0 80094E40 81CA000D */  lb         $t2, 0xD($t6)
    /* A3DF4 80094E44 A7B9003E */  sh         $t9, 0x3E($sp)
    /* A3DF8 80094E48 2605000E */  addiu      $a1, $s0, 0xE
    /* A3DFC 80094E4C 000A7900 */  sll        $t7, $t2, 4
    /* A3E00 80094E50 004FC021 */  addu       $t8, $v0, $t7
    /* A3E04 80094E54 8319000D */  lb         $t9, 0xD($t8)
    /* A3E08 80094E58 AFA60028 */  sw         $a2, 0x28($sp)
    /* A3E0C 80094E5C A3A40063 */  sb         $a0, 0x63($sp)
    /* A3E10 80094E60 AFA3002C */  sw         $v1, 0x2C($sp)
    /* A3E14 80094E64 A7A7005E */  sh         $a3, 0x5E($sp)
    /* A3E18 80094E68 A7A8005C */  sh         $t0, 0x5C($sp)
    /* A3E1C 80094E6C A7A90058 */  sh         $t1, 0x58($sp)
    /* A3E20 80094E70 A7AA005A */  sh         $t2, 0x5A($sp)
    /* A3E24 80094E74 0C02023C */  jal        func_800808F0_8F8A0
    /* A3E28 80094E78 A7B90056 */   sh        $t9, 0x56($sp)
    /* A3E2C 80094E7C 860C0006 */  lh         $t4, 0x6($s0)
    /* A3E30 80094E80 8FA3002C */  lw         $v1, 0x2C($sp)
    /* A3E34 80094E84 8FA60028 */  lw         $a2, 0x28($sp)
    /* A3E38 80094E88 000C6823 */  negu       $t5, $t4
    /* A3E3C 80094E8C A46C0006 */  sh         $t4, 0x6($v1)
    /* A3E40 80094E90 93A40063 */  lbu        $a0, 0x63($sp)
    /* A3E44 80094E94 87A5005C */  lh         $a1, 0x5C($sp)
    /* A3E48 80094E98 0C021859 */  jal        func_80086164_95114
    /* A3E4C 80094E9C A4CD0006 */   sh        $t5, 0x6($a2)
    /* A3E50 80094EA0 240E003C */  addiu      $t6, $zero, 0x3C
    /* A3E54 80094EA4 240FFFF8 */  addiu      $t7, $zero, -0x8
    /* A3E58 80094EA8 24180070 */  addiu      $t8, $zero, 0x70
    /* A3E5C 80094EAC A7AE0050 */  sh         $t6, 0x50($sp)
    /* A3E60 80094EB0 A7AF0052 */  sh         $t7, 0x52($sp)
    /* A3E64 80094EB4 A7B80054 */  sh         $t8, 0x54($sp)
    /* A3E68 80094EB8 83A4005D */  lb         $a0, 0x5D($sp)
    /* A3E6C 80094EBC 27A50050 */  addiu      $a1, $sp, 0x50
    /* A3E70 80094EC0 0C02A4C7 */  jal        func_800A931C_B82CC
    /* A3E74 80094EC4 27A60044 */   addiu     $a2, $sp, 0x44
    /* A3E78 80094EC8 8FB90044 */  lw         $t9, 0x44($sp)
    /* A3E7C 80094ECC 8FAB0048 */  lw         $t3, 0x48($sp)
    /* A3E80 80094ED0 8FAC004C */  lw         $t4, 0x4C($sp)
    /* A3E84 80094ED4 83A4005F */  lb         $a0, 0x5F($sp)
    /* A3E88 80094ED8 27A50050 */  addiu      $a1, $sp, 0x50
    /* A3E8C 80094EDC 27A60044 */  addiu      $a2, $sp, 0x44
    /* A3E90 80094EE0 A7B90050 */  sh         $t9, 0x50($sp)
    /* A3E94 80094EE4 A7AB0052 */  sh         $t3, 0x52($sp)
    /* A3E98 80094EE8 0C02A4C7 */  jal        func_800A931C_B82CC
    /* A3E9C 80094EEC A7AC0054 */   sh        $t4, 0x54($sp)
    /* A3EA0 80094EF0 87AD003E */  lh         $t5, 0x3E($sp)
    /* A3EA4 80094EF4 3C0F8025 */  lui        $t7, %hi(alienSpecs)
    /* A3EA8 80094EF8 25EF6680 */  addiu      $t7, $t7, %lo(alienSpecs)
    /* A3EAC 80094EFC 000D7080 */  sll        $t6, $t5, 2
    /* A3EB0 80094F00 01CD7023 */  subu       $t6, $t6, $t5
    /* A3EB4 80094F04 000E7080 */  sll        $t6, $t6, 2
    /* A3EB8 80094F08 01CD7021 */  addu       $t6, $t6, $t5
    /* A3EBC 80094F0C 000E70C0 */  sll        $t6, $t6, 3
    /* A3EC0 80094F10 8FB80044 */  lw         $t8, 0x44($sp)
    /* A3EC4 80094F14 8FB90048 */  lw         $t9, 0x48($sp)
    /* A3EC8 80094F18 8FAB004C */  lw         $t3, 0x4C($sp)
    /* A3ECC 80094F1C 01CF1021 */  addu       $v0, $t6, $t7
    /* A3ED0 80094F20 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* A3ED4 80094F24 A4580020 */  sh         $t8, 0x20($v0)
    /* A3ED8 80094F28 A4590022 */  sh         $t9, 0x22($v0)
    /* A3EDC 80094F2C A44B0024 */  sh         $t3, 0x24($v0)
    /* A3EE0 80094F30 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* A3EE4 80094F34 0C021395 */  jal        func_80084E54_93E04
    /* A3EE8 80094F38 02002825 */   or        $a1, $s0, $zero
    /* A3EEC 80094F3C 3C0C8004 */  lui        $t4, %hi(currentLevel)
    /* A3EF0 80094F40 8D8C7F90 */  lw         $t4, %lo(currentLevel)($t4)
    /* A3EF4 80094F44 24010001 */  addiu      $at, $zero, 0x1
    /* A3EF8 80094F48 00403025 */  or         $a2, $v0, $zero
    /* A3EFC 80094F4C 15810003 */  bne        $t4, $at, .L80094F5C_A3F0C
    /* A3F00 80094F50 93A40063 */   lbu       $a0, 0x63($sp)
    /* A3F04 80094F54 10000002 */  b          .L80094F60_A3F10
    /* A3F08 80094F58 2403003C */   addiu     $v1, $zero, 0x3C
  .L80094F5C_A3F0C:
    /* A3F0C 80094F5C 2403001E */  addiu      $v1, $zero, 0x1E
  .L80094F60_A3F10:
    /* A3F10 80094F60 24051000 */  addiu      $a1, $zero, 0x1000
    /* A3F14 80094F64 A7A30034 */  sh         $v1, 0x34($sp)
    /* A3F18 80094F68 0C0213FA */  jal        func_80084FE8_93F98
    /* A3F1C 80094F6C AFA60040 */   sw        $a2, 0x40($sp)
    /* A3F20 80094F70 87A30034 */  lh         $v1, 0x34($sp)
    /* A3F24 80094F74 1040001F */  beqz       $v0, .L80094FF4_A3FA4
    /* A3F28 80094F78 8FA60040 */   lw        $a2, 0x40($sp)
    /* A3F2C 80094F7C 28C107D0 */  slti       $at, $a2, 0x7D0
    /* A3F30 80094F80 1020001C */  beqz       $at, .L80094FF4_A3FA4
    /* A3F34 80094F84 00002825 */   or        $a1, $zero, $zero
    /* A3F38 80094F88 920D0026 */  lbu        $t5, 0x26($s0)
    /* A3F3C 80094F8C 24780028 */  addiu      $t8, $v1, 0x28
    /* A3F40 80094F90 24060028 */  addiu      $a2, $zero, 0x28
    /* A3F44 80094F94 25AE0001 */  addiu      $t6, $t5, 0x1
    /* A3F48 80094F98 31CF00FF */  andi       $t7, $t6, 0xFF
    /* A3F4C 80094F9C 030F082A */  slt        $at, $t8, $t7
    /* A3F50 80094FA0 10200008 */  beqz       $at, .L80094FC4_A3F74
    /* A3F54 80094FA4 A20E0026 */   sb        $t6, 0x26($s0)
    /* A3F58 80094FA8 8E0B0020 */  lw         $t3, 0x20($s0)
    /* A3F5C 80094FAC 2401DFFF */  addiu      $at, $zero, -0x2001
    /* A3F60 80094FB0 24190028 */  addiu      $t9, $zero, 0x28
    /* A3F64 80094FB4 01616024 */  and        $t4, $t3, $at
    /* A3F68 80094FB8 A619001E */  sh         $t9, 0x1E($s0)
    /* A3F6C 80094FBC AE0C0020 */  sw         $t4, 0x20($s0)
    /* A3F70 80094FC0 A2000026 */  sb         $zero, 0x26($s0)
  .L80094FC4_A3F74:
    /* A3F74 80094FC4 0C021C62 */  jal        func_80087188_96138
    /* A3F78 80094FC8 93A40063 */   lbu       $a0, 0x63($sp)
    /* A3F7C 80094FCC 10400011 */  beqz       $v0, .L80095014_A3FC4
    /* A3F80 80094FD0 24190006 */   addiu     $t9, $zero, 0x6
    /* A3F84 80094FD4 8E0D0020 */  lw         $t5, 0x20($s0)
    /* A3F88 80094FD8 A2000036 */  sb         $zero, 0x36($s0)
    /* A3F8C 80094FDC A619001E */  sh         $t9, 0x1E($s0)
    /* A3F90 80094FE0 35AEA000 */  ori        $t6, $t5, 0xA000
    /* A3F94 80094FE4 AE0E0020 */  sw         $t6, 0x20($s0)
    /* A3F98 80094FE8 35D81000 */  ori        $t8, $t6, 0x1000
    /* A3F9C 80094FEC 10000009 */  b          .L80095014_A3FC4
    /* A3FA0 80094FF0 AE180020 */   sw        $t8, 0x20($s0)
  .L80094FF4_A3FA4:
    /* A3FA4 80094FF4 860B001E */  lh         $t3, 0x1E($s0)
    /* A3FA8 80094FF8 240C0028 */  addiu      $t4, $zero, 0x28
    /* A3FAC 80094FFC 240D0028 */  addiu      $t5, $zero, 0x28
    /* A3FB0 80095000 29610028 */  slti       $at, $t3, 0x28
    /* A3FB4 80095004 50200003 */  beql       $at, $zero, .L80095014_A3FC4
    /* A3FB8 80095008 A20D0026 */   sb        $t5, 0x26($s0)
    /* A3FBC 8009500C A60C001E */  sh         $t4, 0x1E($s0)
    /* A3FC0 80095010 A20D0026 */  sb         $t5, 0x26($s0)
  .L80095014_A3FC4:
    /* A3FC4 80095014 8E020020 */  lw         $v0, 0x20($s0)
    /* A3FC8 80095018 24050002 */  addiu      $a1, $zero, 0x2
    /* A3FCC 8009501C 24060002 */  addiu      $a2, $zero, 0x2
    /* A3FD0 80095020 304E9000 */  andi       $t6, $v0, 0x9000
    /* A3FD4 80095024 11C00017 */  beqz       $t6, .L80095084_A4034
    /* A3FD8 80095028 00027940 */   sll       $t7, $v0, 5
    /* A3FDC 8009502C 05E10004 */  bgez       $t7, .L80095040_A3FF0
    /* A3FE0 80095030 27A70038 */   addiu     $a3, $sp, 0x38
    /* A3FE4 80095034 87B80058 */  lh         $t8, 0x58($sp)
    /* A3FE8 80095038 10000003 */  b          .L80095048_A3FF8
    /* A3FEC 8009503C A7B80038 */   sh        $t8, 0x38($sp)
  .L80095040_A3FF0:
    /* A3FF0 80095040 87B9005A */  lh         $t9, 0x5A($sp)
    /* A3FF4 80095044 A7B90038 */  sh         $t9, 0x38($sp)
  .L80095048_A3FF8:
    /* A3FF8 80095048 87AB0056 */  lh         $t3, 0x56($sp)
    /* A3FFC 8009504C 3C0C8014 */  lui        $t4, %hi(D_8013CB8C)
    /* A4000 80095050 258CCB8C */  addiu      $t4, $t4, %lo(D_8013CB8C)
    /* A4004 80095054 AFAC0010 */  sw         $t4, 0x10($sp)
    /* A4008 80095058 93A40063 */  lbu        $a0, 0x63($sp)
    /* A400C 8009505C 0C0207C6 */  jal        func_80081F18_90EC8
    /* A4010 80095060 A7AB003A */   sh        $t3, 0x3A($sp)
    /* A4014 80095064 24010002 */  addiu      $at, $zero, 0x2
    /* A4018 80095068 54410007 */  bnel       $v0, $at, .L80095088_A4038
    /* A401C 8009506C 8602001E */   lh        $v0, 0x1E($s0)
    /* A4020 80095070 8E0D0020 */  lw         $t5, 0x20($s0)
    /* A4024 80095074 3C01FFFF */  lui        $at, (0xFFFF7FFF >> 16)
    /* A4028 80095078 34217FFF */  ori        $at, $at, (0xFFFF7FFF & 0xFFFF)
    /* A402C 8009507C 01A17024 */  and        $t6, $t5, $at
    /* A4030 80095080 AE0E0020 */  sw         $t6, 0x20($s0)
  .L80095084_A4034:
    /* A4034 80095084 8602001E */  lh         $v0, 0x1E($s0)
  .L80095088_A4038:
    /* A4038 80095088 10400002 */  beqz       $v0, .L80095094_A4044
    /* A403C 8009508C 244FFFFF */   addiu     $t7, $v0, -0x1
    /* A4040 80095090 A60F001E */  sh         $t7, 0x1E($s0)
  .L80095094_A4044:
    /* A4044 80095094 8FBF0024 */  lw         $ra, 0x24($sp)
    /* A4048 80095098 8FB00020 */  lw         $s0, 0x20($sp)
    /* A404C 8009509C 27BD0060 */  addiu      $sp, $sp, 0x60
    /* A4050 800950A0 03E00008 */  jr         $ra
    /* A4054 800950A4 00000000 */   nop
endlabel func_80094DE0_A3D90
