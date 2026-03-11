nonmatching func_800C1ECC_D0E7C, 0x324

glabel func_800C1ECC_D0E7C
    /* D0E7C 800C1ECC 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* D0E80 800C1ED0 AFB00020 */  sw         $s0, 0x20($sp)
    /* D0E84 800C1ED4 30F000FF */  andi       $s0, $a3, 0xFF
    /* D0E88 800C1ED8 2A01001E */  slti       $at, $s0, 0x1E
    /* D0E8C 800C1EDC AFBF0024 */  sw         $ra, 0x24($sp)
    /* D0E90 800C1EE0 AFA40048 */  sw         $a0, 0x48($sp)
    /* D0E94 800C1EE4 AFA5004C */  sw         $a1, 0x4C($sp)
    /* D0E98 800C1EE8 AFA60050 */  sw         $a2, 0x50($sp)
    /* D0E9C 800C1EEC AFA70054 */  sw         $a3, 0x54($sp)
    /* D0EA0 800C1EF0 102000BA */  beqz       $at, .L800C21DC_D118C
    /* D0EA4 800C1EF4 AFB0003C */   sw        $s0, 0x3C($sp)
    /* D0EA8 800C1EF8 00107880 */  sll        $t7, $s0, 2
    /* D0EAC 800C1EFC 01F07823 */  subu       $t7, $t7, $s0
    /* D0EB0 800C1F00 3C188015 */  lui        $t8, %hi(D_80154088)
    /* D0EB4 800C1F04 27184088 */  addiu      $t8, $t8, %lo(D_80154088)
    /* D0EB8 800C1F08 000F7880 */  sll        $t7, $t7, 2
    /* D0EBC 800C1F0C 01F8C821 */  addu       $t9, $t7, $t8
    /* D0EC0 800C1F10 AFB90038 */  sw         $t9, 0x38($sp)
    /* D0EC4 800C1F14 93280000 */  lbu        $t0, 0x0($t9)
    /* D0EC8 800C1F18 3C028015 */  lui        $v0, %hi(D_80156ED8)
    /* D0ECC 800C1F1C 550000B0 */  bnel       $t0, $zero, .L800C21E0_D1190
    /* D0ED0 800C1F20 8FBF0024 */   lw        $ra, 0x24($sp)
    /* D0ED4 800C1F24 90426ED8 */  lbu        $v0, %lo(D_80156ED8)($v0)
    /* D0ED8 800C1F28 24010001 */  addiu      $at, $zero, 0x1
    /* D0EDC 800C1F2C 5441000B */  bnel       $v0, $at, .L800C1F5C_D0F0C
    /* D0EE0 800C1F30 24010002 */   addiu     $at, $zero, 0x2
    /* D0EE4 800C1F34 0C000E38 */  jal        func_800038E0_44E0
    /* D0EE8 800C1F38 00000000 */   nop
    /* D0EEC 800C1F3C 24010009 */  addiu      $at, $zero, 0x9
    /* D0EF0 800C1F40 0041001A */  div        $zero, $v0, $at
    /* D0EF4 800C1F44 00004810 */  mfhi       $t1
    /* D0EF8 800C1F48 29210006 */  slti       $at, $t1, 0x6
    /* D0EFC 800C1F4C 102000A3 */  beqz       $at, .L800C21DC_D118C
    /* D0F00 800C1F50 3C028015 */   lui       $v0, %hi(D_80156ED8)
    /* D0F04 800C1F54 90426ED8 */  lbu        $v0, %lo(D_80156ED8)($v0)
    /* D0F08 800C1F58 24010002 */  addiu      $at, $zero, 0x2
  .L800C1F5C_D0F0C:
    /* D0F0C 800C1F5C 14410009 */  bne        $v0, $at, .L800C1F84_D0F34
    /* D0F10 800C1F60 00000000 */   nop
    /* D0F14 800C1F64 0C000E38 */  jal        func_800038E0_44E0
    /* D0F18 800C1F68 00000000 */   nop
    /* D0F1C 800C1F6C 24010009 */  addiu      $at, $zero, 0x9
    /* D0F20 800C1F70 0041001A */  div        $zero, $v0, $at
    /* D0F24 800C1F74 00005010 */  mfhi       $t2
    /* D0F28 800C1F78 29410003 */  slti       $at, $t2, 0x3
    /* D0F2C 800C1F7C 50200098 */  beql       $at, $zero, .L800C21E0_D1190
    /* D0F30 800C1F80 8FBF0024 */   lw        $ra, 0x24($sp)
  .L800C1F84_D0F34:
    /* D0F34 800C1F84 0C030634 */  jal        func_800C18D0_D0880
    /* D0F38 800C1F88 320400FF */   andi      $a0, $s0, 0xFF
    /* D0F3C 800C1F8C 2401FFFD */  addiu      $at, $zero, -0x3
    /* D0F40 800C1F90 10410092 */  beq        $v0, $at, .L800C21DC_D118C
    /* D0F44 800C1F94 A7A20042 */   sh        $v0, 0x42($sp)
    /* D0F48 800C1F98 93A4005B */  lbu        $a0, 0x5B($sp)
    /* D0F4C 800C1F9C 24010002 */  addiu      $at, $zero, 0x2
    /* D0F50 800C1FA0 10800003 */  beqz       $a0, .L800C1FB0_D0F60
    /* D0F54 800C1FA4 00000000 */   nop
    /* D0F58 800C1FA8 5481003C */  bnel       $a0, $at, .L800C209C_D104C
    /* D0F5C 800C1FAC 24010001 */   addiu     $at, $zero, 0x1
  .L800C1FB0_D0F60:
    /* D0F60 800C1FB0 0C000E38 */  jal        func_800038E0_44E0
    /* D0F64 800C1FB4 AFA4002C */   sw        $a0, 0x2C($sp)
    /* D0F68 800C1FB8 2401000C */  addiu      $at, $zero, 0xC
    /* D0F6C 800C1FBC 0041001A */  div        $zero, $v0, $at
    /* D0F70 800C1FC0 87AB0042 */  lh         $t3, 0x42($sp)
    /* D0F74 800C1FC4 3C0D8015 */  lui        $t5, %hi(D_80154318)
    /* D0F78 800C1FC8 25AD4318 */  addiu      $t5, $t5, %lo(D_80154318)
    /* D0F7C 800C1FCC 000B60C0 */  sll        $t4, $t3, 3
    /* D0F80 800C1FD0 018B6023 */  subu       $t4, $t4, $t3
    /* D0F84 800C1FD4 000C6080 */  sll        $t4, $t4, 2
    /* D0F88 800C1FD8 00007010 */  mfhi       $t6
    /* D0F8C 800C1FDC 25CF0010 */  addiu      $t7, $t6, 0x10
    /* D0F90 800C1FE0 018D1821 */  addu       $v1, $t4, $t5
    /* D0F94 800C1FE4 A46F0002 */  sh         $t7, 0x2($v1)
    /* D0F98 800C1FE8 0C000E38 */  jal        func_800038E0_44E0
    /* D0F9C 800C1FEC AFA30034 */   sw        $v1, 0x34($sp)
    /* D0FA0 800C1FF0 2401000D */  addiu      $at, $zero, 0xD
    /* D0FA4 800C1FF4 0041001A */  div        $zero, $v0, $at
    /* D0FA8 800C1FF8 87B9004A */  lh         $t9, 0x4A($sp)
    /* D0FAC 800C1FFC 8FA30034 */  lw         $v1, 0x34($sp)
    /* D0FB0 800C2000 0000C010 */  mfhi       $t8
    /* D0FB4 800C2004 03194021 */  addu       $t0, $t8, $t9
    /* D0FB8 800C2008 2509FFFA */  addiu      $t1, $t0, -0x6
    /* D0FBC 800C200C 24700008 */  addiu      $s0, $v1, 0x8
    /* D0FC0 800C2010 0C000E38 */  jal        func_800038E0_44E0
    /* D0FC4 800C2014 A6090000 */   sh        $t1, 0x0($s0)
    /* D0FC8 800C2018 24010013 */  addiu      $at, $zero, 0x13
    /* D0FCC 800C201C 0041001A */  div        $zero, $v0, $at
    /* D0FD0 800C2020 87AB004E */  lh         $t3, 0x4E($sp)
    /* D0FD4 800C2024 00005010 */  mfhi       $t2
    /* D0FD8 800C2028 014B6021 */  addu       $t4, $t2, $t3
    /* D0FDC 800C202C 258DFFF7 */  addiu      $t5, $t4, -0x9
    /* D0FE0 800C2030 0C000E38 */  jal        func_800038E0_44E0
    /* D0FE4 800C2034 A60D0002 */   sh        $t5, 0x2($s0)
    /* D0FE8 800C2038 2401000D */  addiu      $at, $zero, 0xD
    /* D0FEC 800C203C 0041001A */  div        $zero, $v0, $at
    /* D0FF0 800C2040 8FA4002C */  lw         $a0, 0x2C($sp)
    /* D0FF4 800C2044 87AF0052 */  lh         $t7, 0x52($sp)
    /* D0FF8 800C2048 00007010 */  mfhi       $t6
    /* D0FFC 800C204C 240300F5 */  addiu      $v1, $zero, 0xF5
    /* D1000 800C2050 01CFC021 */  addu       $t8, $t6, $t7
    /* D1004 800C2054 2719FFFA */  addiu      $t9, $t8, -0x6
    /* D1008 800C2058 240800FF */  addiu      $t0, $zero, 0xFF
    /* D100C 800C205C A6190004 */  sh         $t9, 0x4($s0)
    /* D1010 800C2060 A2030006 */  sb         $v1, 0x6($s0)
    /* D1014 800C2064 A2030007 */  sb         $v1, 0x7($s0)
    /* D1018 800C2068 A2030008 */  sb         $v1, 0x8($s0)
    /* D101C 800C206C 14800051 */  bnez       $a0, .L800C21B4_D1164
    /* D1020 800C2070 A2080009 */   sb        $t0, 0x9($s0)
    /* D1024 800C2074 8FA9003C */  lw         $t1, 0x3C($sp)
    /* D1028 800C2078 86040000 */  lh         $a0, 0x0($s0)
    /* D102C 800C207C 86050002 */  lh         $a1, 0x2($s0)
    /* D1030 800C2080 86060004 */  lh         $a2, 0x4($s0)
    /* D1034 800C2084 24070004 */  addiu      $a3, $zero, 0x4
    /* D1038 800C2088 0C04DCDA */  jal        func_80137368_146318
    /* D103C 800C208C AFA90010 */   sw        $t1, 0x10($sp)
    /* D1040 800C2090 10000049 */  b          .L800C21B8_D1168
    /* D1044 800C2094 87B80042 */   lh        $t8, 0x42($sp)
    /* D1048 800C2098 24010001 */  addiu      $at, $zero, 0x1
  .L800C209C_D104C:
    /* D104C 800C209C 54810046 */  bnel       $a0, $at, .L800C21B8_D1168
    /* D1050 800C20A0 87B80042 */   lh        $t8, 0x42($sp)
    /* D1054 800C20A4 0C000E38 */  jal        func_800038E0_44E0
    /* D1058 800C20A8 00000000 */   nop
    /* D105C 800C20AC 24010014 */  addiu      $at, $zero, 0x14
    /* D1060 800C20B0 0041001A */  div        $zero, $v0, $at
    /* D1064 800C20B4 87AA0042 */  lh         $t2, 0x42($sp)
    /* D1068 800C20B8 3C0C8015 */  lui        $t4, %hi(D_80154318)
    /* D106C 800C20BC 258C4318 */  addiu      $t4, $t4, %lo(D_80154318)
    /* D1070 800C20C0 000A58C0 */  sll        $t3, $t2, 3
    /* D1074 800C20C4 016A5823 */  subu       $t3, $t3, $t2
    /* D1078 800C20C8 000B5880 */  sll        $t3, $t3, 2
    /* D107C 800C20CC 00006810 */  mfhi       $t5
    /* D1080 800C20D0 25AE0014 */  addiu      $t6, $t5, 0x14
    /* D1084 800C20D4 016C1821 */  addu       $v1, $t3, $t4
    /* D1088 800C20D8 A46E0002 */  sh         $t6, 0x2($v1)
    /* D108C 800C20DC 0C000E38 */  jal        func_800038E0_44E0
    /* D1090 800C20E0 AFA30034 */   sw        $v1, 0x34($sp)
    /* D1094 800C20E4 24010014 */  addiu      $at, $zero, 0x14
    /* D1098 800C20E8 0041001A */  div        $zero, $v0, $at
    /* D109C 800C20EC 87B8004A */  lh         $t8, 0x4A($sp)
    /* D10A0 800C20F0 8FA30034 */  lw         $v1, 0x34($sp)
    /* D10A4 800C20F4 00007810 */  mfhi       $t7
    /* D10A8 800C20F8 01F8C821 */  addu       $t9, $t7, $t8
    /* D10AC 800C20FC 2728FFF6 */  addiu      $t0, $t9, -0xA
    /* D10B0 800C2100 24700008 */  addiu      $s0, $v1, 0x8
    /* D10B4 800C2104 0C000E38 */  jal        func_800038E0_44E0
    /* D10B8 800C2108 A6080000 */   sh        $t0, 0x0($s0)
    /* D10BC 800C210C 24010014 */  addiu      $at, $zero, 0x14
    /* D10C0 800C2110 0041001A */  div        $zero, $v0, $at
    /* D10C4 800C2114 87AA004E */  lh         $t2, 0x4E($sp)
    /* D10C8 800C2118 00004810 */  mfhi       $t1
    /* D10CC 800C211C 012A5821 */  addu       $t3, $t1, $t2
    /* D10D0 800C2120 256CFFF6 */  addiu      $t4, $t3, -0xA
    /* D10D4 800C2124 0C000E38 */  jal        func_800038E0_44E0
    /* D10D8 800C2128 A60C0002 */   sh        $t4, 0x2($s0)
    /* D10DC 800C212C 24010014 */  addiu      $at, $zero, 0x14
    /* D10E0 800C2130 0041001A */  div        $zero, $v0, $at
    /* D10E4 800C2134 87AE0052 */  lh         $t6, 0x52($sp)
    /* D10E8 800C2138 00006810 */  mfhi       $t5
    /* D10EC 800C213C 01AE7821 */  addu       $t7, $t5, $t6
    /* D10F0 800C2140 25F8FFF6 */  addiu      $t8, $t7, -0xA
    /* D10F4 800C2144 0C000E38 */  jal        func_800038E0_44E0
    /* D10F8 800C2148 A6180004 */   sh        $t8, 0x4($s0)
    /* D10FC 800C214C 24010064 */  addiu      $at, $zero, 0x64
    /* D1100 800C2150 0041001A */  div        $zero, $v0, $at
    /* D1104 800C2154 0000C810 */  mfhi       $t9
    /* D1108 800C2158 27280082 */  addiu      $t0, $t9, 0x82
    /* D110C 800C215C 0C000E38 */  jal        func_800038E0_44E0
    /* D1110 800C2160 A2080006 */   sb        $t0, 0x6($s0)
    /* D1114 800C2164 24010064 */  addiu      $at, $zero, 0x64
    /* D1118 800C2168 0041001A */  div        $zero, $v0, $at
    /* D111C 800C216C 00004810 */  mfhi       $t1
    /* D1120 800C2170 252A0082 */  addiu      $t2, $t1, 0x82
    /* D1124 800C2174 0C000E38 */  jal        func_800038E0_44E0
    /* D1128 800C2178 A20A0007 */   sb        $t2, 0x7($s0)
    /* D112C 800C217C 24010064 */  addiu      $at, $zero, 0x64
    /* D1130 800C2180 0041001A */  div        $zero, $v0, $at
    /* D1134 800C2184 00005810 */  mfhi       $t3
    /* D1138 800C2188 256C0082 */  addiu      $t4, $t3, 0x82
    /* D113C 800C218C 240D00FF */  addiu      $t5, $zero, 0xFF
    /* D1140 800C2190 A20C0008 */  sb         $t4, 0x8($s0)
    /* D1144 800C2194 A20D0009 */  sb         $t5, 0x9($s0)
    /* D1148 800C2198 8FAE003C */  lw         $t6, 0x3C($sp)
    /* D114C 800C219C 86040000 */  lh         $a0, 0x0($s0)
    /* D1150 800C21A0 86050002 */  lh         $a1, 0x2($s0)
    /* D1154 800C21A4 86060004 */  lh         $a2, 0x4($s0)
    /* D1158 800C21A8 24070005 */  addiu      $a3, $zero, 0x5
    /* D115C 800C21AC 0C04DCDA */  jal        func_80137368_146318
    /* D1160 800C21B0 AFAE0010 */   sw        $t6, 0x10($sp)
  .L800C21B4_D1164:
    /* D1164 800C21B4 87B80042 */  lh         $t8, 0x42($sp)
  .L800C21B8_D1168:
    /* D1168 800C21B8 93AF005B */  lbu        $t7, 0x5B($sp)
    /* D116C 800C21BC 8FA80038 */  lw         $t0, 0x38($sp)
    /* D1170 800C21C0 0018C8C0 */  sll        $t9, $t8, 3
    /* D1174 800C21C4 0338C823 */  subu       $t9, $t9, $t8
    /* D1178 800C21C8 0019C880 */  sll        $t9, $t9, 2
    /* D117C 800C21CC 3C018015 */  lui        $at, %hi(D_8015432A)
    /* D1180 800C21D0 00390821 */  addu       $at, $at, $t9
    /* D1184 800C21D4 A02F432A */  sb         $t7, %lo(D_8015432A)($at)
    /* D1188 800C21D8 A518000A */  sh         $t8, 0xA($t0)
  .L800C21DC_D118C:
    /* D118C 800C21DC 8FBF0024 */  lw         $ra, 0x24($sp)
  .L800C21E0_D1190:
    /* D1190 800C21E0 8FB00020 */  lw         $s0, 0x20($sp)
    /* D1194 800C21E4 27BD0048 */  addiu      $sp, $sp, 0x48
    /* D1198 800C21E8 03E00008 */  jr         $ra
    /* D119C 800C21EC 00000000 */   nop
endlabel func_800C1ECC_D0E7C
