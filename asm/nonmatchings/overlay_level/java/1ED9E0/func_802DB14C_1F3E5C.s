nonmatching func_802DB14C_1F3E5C, 0x2DC

glabel func_802DB14C_1F3E5C
    /* 1F3E5C 802DB14C 308E00FF */  andi       $t6, $a0, 0xFF
    /* 1F3E60 802DB150 000E7880 */  sll        $t7, $t6, 2
    /* 1F3E64 802DB154 01EE7821 */  addu       $t7, $t7, $t6
    /* 1F3E68 802DB158 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 1F3E6C 802DB15C 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 1F3E70 802DB160 000F7900 */  sll        $t7, $t7, 4
    /* 1F3E74 802DB164 01F83821 */  addu       $a3, $t7, $t8
    /* 1F3E78 802DB168 84F9000C */  lh         $t9, 0xC($a3)
    /* 1F3E7C 802DB16C 3C088015 */  lui        $t0, %hi(D_8014DD50)
    /* 1F3E80 802DB170 2508DD50 */  addiu      $t0, $t0, %lo(D_8014DD50)
    /* 1F3E84 802DB174 00194900 */  sll        $t1, $t9, 4
    /* 1F3E88 802DB178 01095021 */  addu       $t2, $t0, $t1
    /* 1F3E8C 802DB17C 8143000C */  lb         $v1, 0xC($t2)
    /* 1F3E90 802DB180 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* 1F3E94 802DB184 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1F3E98 802DB188 00035900 */  sll        $t3, $v1, 4
    /* 1F3E9C 802DB18C 010B1021 */  addu       $v0, $t0, $t3
    /* 1F3EA0 802DB190 8045000D */  lb         $a1, 0xD($v0)
    /* 1F3EA4 802DB194 AFA40060 */  sw         $a0, 0x60($sp)
    /* 1F3EA8 802DB198 01C02025 */  or         $a0, $t6, $zero
    /* 1F3EAC 802DB19C A3AE0063 */  sb         $t6, 0x63($sp)
    /* 1F3EB0 802DB1A0 AFA20018 */  sw         $v0, 0x18($sp)
    /* 1F3EB4 802DB1A4 AFA7001C */  sw         $a3, 0x1C($sp)
    /* 1F3EB8 802DB1A8 24062000 */  addiu      $a2, $zero, 0x2000
    /* 1F3EBC 802DB1AC A7A3005E */  sh         $v1, 0x5E($sp)
    /* 1F3EC0 802DB1B0 0C02188C */  jal        func_80086230_951E0
    /* 1F3EC4 802DB1B4 A7A5005C */   sh        $a1, 0x5C($sp)
    /* 1F3EC8 802DB1B8 93A40063 */  lbu        $a0, 0x63($sp)
    /* 1F3ECC 802DB1BC 24050014 */  addiu      $a1, $zero, 0x14
    /* 1F3ED0 802DB1C0 0C0B615E */  jal        func_802D8578_1F1288
    /* 1F3ED4 802DB1C4 24060180 */   addiu     $a2, $zero, 0x180
    /* 1F3ED8 802DB1C8 8FA7001C */  lw         $a3, 0x1C($sp)
    /* 1F3EDC 802DB1CC 3C0D8005 */  lui        $t5, %hi(D_80052B34)
    /* 1F3EE0 802DB1D0 8FAF0018 */  lw         $t7, 0x18($sp)
    /* 1F3EE4 802DB1D4 8CE30020 */  lw         $v1, 0x20($a3)
    /* 1F3EE8 802DB1D8 00036040 */  sll        $t4, $v1, 1
    /* 1F3EEC 802DB1DC 05830050 */  bgezl      $t4, .L802DB320_1F4030
    /* 1F3EF0 802DB1E0 A5E0000A */   sh        $zero, 0xA($t7)
    /* 1F3EF4 802DB1E4 8DAD2B34 */  lw         $t5, %lo(D_80052B34)($t5)
    /* 1F3EF8 802DB1E8 3C088025 */  lui        $t0, %hi(D_80257A0C)
    /* 1F3EFC 802DB1EC 91AE001A */  lbu        $t6, 0x1A($t5)
    /* 1F3F00 802DB1F0 000E78C0 */  sll        $t7, $t6, 3
    /* 1F3F04 802DB1F4 01EE7823 */  subu       $t7, $t7, $t6
    /* 1F3F08 802DB1F8 000F7900 */  sll        $t7, $t7, 4
    /* 1F3F0C 802DB1FC 010F4021 */  addu       $t0, $t0, $t7
    /* 1F3F10 802DB200 85087A0C */  lh         $t0, %lo(D_80257A0C)($t0)
    /* 1F3F14 802DB204 10400010 */  beqz       $v0, .L802DB248_1F3F58
    /* 1F3F18 802DB208 25080023 */   addiu     $t0, $t0, 0x23
    /* 1F3F1C 802DB20C 90F80047 */  lbu        $t8, 0x47($a3)
    /* 1F3F20 802DB210 33190001 */  andi       $t9, $t8, 0x1
    /* 1F3F24 802DB214 5720000D */  bnel       $t9, $zero, .L802DB24C_1F3F5C
    /* 1F3F28 802DB218 306C8000 */   andi      $t4, $v1, 0x8000
    /* 1F3F2C 802DB21C 90E9001A */  lbu        $t1, 0x1A($a3)
    /* 1F3F30 802DB220 3C0B8025 */  lui        $t3, %hi(D_802566C0)
    /* 1F3F34 802DB224 8CE30020 */  lw         $v1, 0x20($a3)
    /* 1F3F38 802DB228 00095080 */  sll        $t2, $t1, 2
    /* 1F3F3C 802DB22C 01495023 */  subu       $t2, $t2, $t1
    /* 1F3F40 802DB230 000A5080 */  sll        $t2, $t2, 2
    /* 1F3F44 802DB234 01495021 */  addu       $t2, $t2, $t1
    /* 1F3F48 802DB238 000A50C0 */  sll        $t2, $t2, 3
    /* 1F3F4C 802DB23C 016A5821 */  addu       $t3, $t3, $t2
    /* 1F3F50 802DB240 856B66C0 */  lh         $t3, %lo(D_802566C0)($t3)
    /* 1F3F54 802DB244 A4EB0012 */  sh         $t3, 0x12($a3)
  .L802DB248_1F3F58:
    /* 1F3F58 802DB248 306C8000 */  andi       $t4, $v1, 0x8000
  .L802DB24C_1F3F5C:
    /* 1F3F5C 802DB24C 1180000B */  beqz       $t4, .L802DB27C_1F3F8C
    /* 1F3F60 802DB250 93A40063 */   lbu       $a0, 0x63($sp)
    /* 1F3F64 802DB254 90ED004B */  lbu        $t5, 0x4B($a3)
    /* 1F3F68 802DB258 2401000A */  addiu      $at, $zero, 0xA
    /* 1F3F6C 802DB25C 240503E8 */  addiu      $a1, $zero, 0x3E8
    /* 1F3F70 802DB260 15A10006 */  bne        $t5, $at, .L802DB27C_1F3F8C
    /* 1F3F74 802DB264 240603E8 */   addiu     $a2, $zero, 0x3E8
    /* 1F3F78 802DB268 93A40063 */  lbu        $a0, 0x63($sp)
    /* 1F3F7C 802DB26C 0C021D47 */  jal        func_8008751C_964CC
    /* 1F3F80 802DB270 AFA7001C */   sw        $a3, 0x1C($sp)
    /* 1F3F84 802DB274 1000000A */  b          .L802DB2A0_1F3FB0
    /* 1F3F88 802DB278 8FA7001C */   lw        $a3, 0x1C($sp)
  .L802DB27C_1F3F8C:
    /* 1F3F8C 802DB27C 00082C00 */  sll        $a1, $t0, 16
    /* 1F3F90 802DB280 25060014 */  addiu      $a2, $t0, 0x14
    /* 1F3F94 802DB284 00067C00 */  sll        $t7, $a2, 16
    /* 1F3F98 802DB288 00057403 */  sra        $t6, $a1, 16
    /* 1F3F9C 802DB28C 01C02825 */  or         $a1, $t6, $zero
    /* 1F3FA0 802DB290 000F3403 */  sra        $a2, $t7, 16
    /* 1F3FA4 802DB294 0C021D47 */  jal        func_8008751C_964CC
    /* 1F3FA8 802DB298 AFA7001C */   sw        $a3, 0x1C($sp)
    /* 1F3FAC 802DB29C 8FA7001C */  lw         $a3, 0x1C($sp)
  .L802DB2A0_1F3FB0:
    /* 1F3FB0 802DB2A0 8CF90020 */  lw         $t9, 0x20($a3)
    /* 1F3FB4 802DB2A4 33291000 */  andi       $t1, $t9, 0x1000
    /* 1F3FB8 802DB2A8 1120001D */  beqz       $t1, .L802DB320_1F4030
    /* 1F3FBC 802DB2AC 00000000 */   nop
    /* 1F3FC0 802DB2B0 90E20036 */  lbu        $v0, 0x36($a3)
    /* 1F3FC4 802DB2B4 8FAA0018 */  lw         $t2, 0x18($sp)
    /* 1F3FC8 802DB2B8 00401825 */  or         $v1, $v0, $zero
    /* 1F3FCC 802DB2BC 28610003 */  slti       $at, $v1, 0x3
    /* 1F3FD0 802DB2C0 10200017 */  beqz       $at, .L802DB320_1F4030
    /* 1F3FD4 802DB2C4 00000000 */   nop
    /* 1F3FD8 802DB2C8 854B000E */  lh         $t3, 0xE($t2)
    /* 1F3FDC 802DB2CC 28610002 */  slti       $at, $v1, 0x2
    /* 1F3FE0 802DB2D0 5560000E */  bnel       $t3, $zero, .L802DB30C_1F401C
    /* 1F3FE4 802DB2D4 87A4005E */   lh        $a0, 0x5E($sp)
    /* 1F3FE8 802DB2D8 10200009 */  beqz       $at, .L802DB300_1F4010
    /* 1F3FEC 802DB2DC 93A4005F */   lbu       $a0, 0x5F($sp)
    /* 1F3FF0 802DB2E0 3C0D802E */  lui        $t5, %hi(D_802E0710)
    /* 1F3FF4 802DB2E4 25AD0710 */  addiu      $t5, $t5, %lo(D_802E0710)
    /* 1F3FF8 802DB2E8 00036100 */  sll        $t4, $v1, 4
    /* 1F3FFC 802DB2EC 018D2821 */  addu       $a1, $t4, $t5
    /* 1F4000 802DB2F0 0C020721 */  jal        func_80081C84_90C34
    /* 1F4004 802DB2F4 AFA7001C */   sw        $a3, 0x1C($sp)
    /* 1F4008 802DB2F8 8FA7001C */  lw         $a3, 0x1C($sp)
    /* 1F400C 802DB2FC 90E20036 */  lbu        $v0, 0x36($a3)
  .L802DB300_1F4010:
    /* 1F4010 802DB300 244E0001 */  addiu      $t6, $v0, 0x1
    /* 1F4014 802DB304 A0EE0036 */  sb         $t6, 0x36($a3)
    /* 1F4018 802DB308 87A4005E */  lh         $a0, 0x5E($sp)
  .L802DB30C_1F401C:
    /* 1F401C 802DB30C 0C020797 */  jal        func_80081E5C_90E0C
    /* 1F4020 802DB310 AFA7001C */   sw        $a3, 0x1C($sp)
    /* 1F4024 802DB314 10000002 */  b          .L802DB320_1F4030
    /* 1F4028 802DB318 8FA7001C */   lw        $a3, 0x1C($sp)
    /* 1F402C 802DB31C A5E0000A */  sh         $zero, 0xA($t7)
  .L802DB320_1F4030:
    /* 1F4030 802DB320 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* 1F4034 802DB324 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* 1F4038 802DB328 84F80000 */  lh         $t8, 0x0($a3)
    /* 1F403C 802DB32C 84E90004 */  lh         $t1, 0x4($a3)
    /* 1F4040 802DB330 84590000 */  lh         $t9, 0x0($v0)
    /* 1F4044 802DB334 844A0004 */  lh         $t2, 0x4($v0)
    /* 1F4048 802DB338 03191823 */  subu       $v1, $t8, $t9
    /* 1F404C 802DB33C 00032823 */  negu       $a1, $v1
    /* 1F4050 802DB340 00A3082A */  slt        $at, $a1, $v1
    /* 1F4054 802DB344 10200003 */  beqz       $at, .L802DB354_1F4064
    /* 1F4058 802DB348 012A2023 */   subu      $a0, $t1, $t2
    /* 1F405C 802DB34C 10000002 */  b          .L802DB358_1F4068
    /* 1F4060 802DB350 00604025 */   or        $t0, $v1, $zero
  .L802DB354_1F4064:
    /* 1F4064 802DB354 00A04025 */  or         $t0, $a1, $zero
  .L802DB358_1F4068:
    /* 1F4068 802DB358 00041023 */  negu       $v0, $a0
    /* 1F406C 802DB35C 0044082A */  slt        $at, $v0, $a0
    /* 1F4070 802DB360 10200003 */  beqz       $at, .L802DB370_1F4080
    /* 1F4074 802DB364 00403025 */   or        $a2, $v0, $zero
    /* 1F4078 802DB368 10000001 */  b          .L802DB370_1F4080
    /* 1F407C 802DB36C 00803025 */   or        $a2, $a0, $zero
  .L802DB370_1F4080:
    /* 1F4080 802DB370 00C8082A */  slt        $at, $a2, $t0
    /* 1F4084 802DB374 10200007 */  beqz       $at, .L802DB394_1F40A4
    /* 1F4088 802DB378 00A3082A */   slt       $at, $a1, $v1
    /* 1F408C 802DB37C 10200003 */  beqz       $at, .L802DB38C_1F409C
    /* 1F4090 802DB380 00A01025 */   or        $v0, $a1, $zero
    /* 1F4094 802DB384 1000000A */  b          .L802DB3B0_1F40C0
    /* 1F4098 802DB388 28610064 */   slti      $at, $v1, 0x64
  .L802DB38C_1F409C:
    /* 1F409C 802DB38C 10000007 */  b          .L802DB3AC_1F40BC
    /* 1F40A0 802DB390 00401825 */   or        $v1, $v0, $zero
  .L802DB394_1F40A4:
    /* 1F40A4 802DB394 0044082A */  slt        $at, $v0, $a0
    /* 1F40A8 802DB398 10200003 */  beqz       $at, .L802DB3A8_1F40B8
    /* 1F40AC 802DB39C 00402825 */   or        $a1, $v0, $zero
    /* 1F40B0 802DB3A0 10000001 */  b          .L802DB3A8_1F40B8
    /* 1F40B4 802DB3A4 00802825 */   or        $a1, $a0, $zero
  .L802DB3A8_1F40B8:
    /* 1F40B8 802DB3A8 00A01825 */  or         $v1, $a1, $zero
  .L802DB3AC_1F40BC:
    /* 1F40BC 802DB3AC 28610064 */  slti       $at, $v1, 0x64
  .L802DB3B0_1F40C0:
    /* 1F40C0 802DB3B0 50200010 */  beql       $at, $zero, .L802DB3F4_1F4104
    /* 1F40C4 802DB3B4 8CEF0020 */   lw        $t7, 0x20($a3)
    /* 1F40C8 802DB3B8 8CEB0020 */  lw         $t3, 0x20($a3)
    /* 1F40CC 802DB3BC 93A40063 */  lbu        $a0, 0x63($sp)
    /* 1F40D0 802DB3C0 24050800 */  addiu      $a1, $zero, 0x800
    /* 1F40D4 802DB3C4 316CC000 */  andi       $t4, $t3, 0xC000
    /* 1F40D8 802DB3C8 5580000A */  bnel       $t4, $zero, .L802DB3F4_1F4104
    /* 1F40DC 802DB3CC 8CEF0020 */   lw        $t7, 0x20($a3)
    /* 1F40E0 802DB3D0 0C0213FA */  jal        func_80084FE8_93F98
    /* 1F40E4 802DB3D4 AFA7001C */   sw        $a3, 0x1C($sp)
    /* 1F40E8 802DB3D8 10400005 */  beqz       $v0, .L802DB3F0_1F4100
    /* 1F40EC 802DB3DC 8FA7001C */   lw        $a3, 0x1C($sp)
    /* 1F40F0 802DB3E0 8CED0020 */  lw         $t5, 0x20($a3)
    /* 1F40F4 802DB3E4 A0E0004B */  sb         $zero, 0x4B($a3)
    /* 1F40F8 802DB3E8 35AE8000 */  ori        $t6, $t5, 0x8000
    /* 1F40FC 802DB3EC ACEE0020 */  sw         $t6, 0x20($a3)
  .L802DB3F0_1F4100:
    /* 1F4100 802DB3F0 8CEF0020 */  lw         $t7, 0x20($a3)
  .L802DB3F4_1F4104:
    /* 1F4104 802DB3F4 87B9005C */  lh         $t9, 0x5C($sp)
    /* 1F4108 802DB3F8 3C058015 */  lui        $a1, %hi(D_8014DD5D)
    /* 1F410C 802DB3FC 31F88000 */  andi       $t8, $t7, 0x8000
    /* 1F4110 802DB400 13000005 */  beqz       $t8, .L802DB418_1F4128
    /* 1F4114 802DB404 00194900 */   sll       $t1, $t9, 4
    /* 1F4118 802DB408 00A92821 */  addu       $a1, $a1, $t1
    /* 1F411C 802DB40C 80A5DD5D */  lb         $a1, %lo(D_8014DD5D)($a1)
    /* 1F4120 802DB410 0C0B6BF4 */  jal        func_802DAFD0_1F3CE0
    /* 1F4124 802DB414 93A40063 */   lbu       $a0, 0x63($sp)
  .L802DB418_1F4128:
    /* 1F4128 802DB418 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1F412C 802DB41C 27BD0060 */  addiu      $sp, $sp, 0x60
    /* 1F4130 802DB420 03E00008 */  jr         $ra
    /* 1F4134 802DB424 00000000 */   nop
endlabel func_802DB14C_1F3E5C
