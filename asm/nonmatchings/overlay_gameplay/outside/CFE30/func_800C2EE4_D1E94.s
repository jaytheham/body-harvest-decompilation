nonmatching func_800C2EE4_D1E94, 0x2C8

glabel func_800C2EE4_D1E94
    /* D1E94 800C2EE4 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* D1E98 800C2EE8 AFB20020 */  sw         $s2, 0x20($sp)
    /* D1E9C 800C2EEC 309200FF */  andi       $s2, $a0, 0xFF
    /* D1EA0 800C2EF0 00127080 */  sll        $t6, $s2, 2
    /* D1EA4 800C2EF4 01D27023 */  subu       $t6, $t6, $s2
    /* D1EA8 800C2EF8 3C0F8015 */  lui        $t7, %hi(D_80154088)
    /* D1EAC 800C2EFC 25EF4088 */  addiu      $t7, $t7, %lo(D_80154088)
    /* D1EB0 800C2F00 000E7080 */  sll        $t6, $t6, 2
    /* D1EB4 800C2F04 01CFC021 */  addu       $t8, $t6, $t7
    /* D1EB8 800C2F08 AFBF0024 */  sw         $ra, 0x24($sp)
    /* D1EBC 800C2F0C AFB1001C */  sw         $s1, 0x1C($sp)
    /* D1EC0 800C2F10 AFB00018 */  sw         $s0, 0x18($sp)
    /* D1EC4 800C2F14 AFA40038 */  sw         $a0, 0x38($sp)
    /* D1EC8 800C2F18 AFB80028 */  sw         $t8, 0x28($sp)
    /* D1ECC 800C2F1C 8710000A */  lh         $s0, 0xA($t8)
    /* D1ED0 800C2F20 2408FFFA */  addiu      $t0, $zero, -0x6
    /* D1ED4 800C2F24 3C0A8015 */  lui        $t2, %hi(D_80154318)
    /* D1ED8 800C2F28 16080005 */  bne        $s0, $t0, .L800C2F40_D1EF0
    /* D1EDC 800C2F2C 0010C8C0 */   sll       $t9, $s0, 3
    /* D1EE0 800C2F30 0C0304E1 */  jal        func_800C1384_D0334
    /* D1EE4 800C2F34 324400FF */   andi      $a0, $s2, 0xFF
    /* D1EE8 800C2F38 10000097 */  b          .L800C3198_D2148
    /* D1EEC 800C2F3C 8FBF0024 */   lw        $ra, 0x24($sp)
  .L800C2F40_D1EF0:
    /* D1EF0 800C2F40 0330C823 */  subu       $t9, $t9, $s0
    /* D1EF4 800C2F44 0019C880 */  sll        $t9, $t9, 2
    /* D1EF8 800C2F48 254A4318 */  addiu      $t2, $t2, %lo(D_80154318)
    /* D1EFC 800C2F4C 032A3821 */  addu       $a3, $t9, $t2
    /* D1F00 800C2F50 84F00004 */  lh         $s0, 0x4($a3)
    /* D1F04 800C2F54 2409FFFB */  addiu      $t1, $zero, -0x5
    /* D1F08 800C2F58 24EB0008 */  addiu      $t3, $a3, 0x8
    /* D1F0C 800C2F5C 12090002 */  beq        $s0, $t1, .L800C2F68_D1F18
    /* D1F10 800C2F60 AFAB0030 */   sw        $t3, 0x30($sp)
    /* D1F14 800C2F64 16080007 */  bne        $s0, $t0, .L800C2F84_D1F34
  .L800C2F68_D1F18:
    /* D1F18 800C2F68 324400FF */   andi      $a0, $s2, 0xFF
    /* D1F1C 800C2F6C 0C030506 */  jal        func_800C1418_D03C8
    /* D1F20 800C2F70 00002825 */   or        $a1, $zero, $zero
    /* D1F24 800C2F74 0C0304E1 */  jal        func_800C1384_D0334
    /* D1F28 800C2F78 324400FF */   andi      $a0, $s2, 0xFF
    /* D1F2C 800C2F7C 10000086 */  b          .L800C3198_D2148
    /* D1F30 800C2F80 8FBF0024 */   lw        $ra, 0x24($sp)
  .L800C2F84_D1F34:
    /* D1F34 800C2F84 52090084 */  beql       $s0, $t1, .L800C3198_D2148
    /* D1F38 800C2F88 8FBF0024 */   lw        $ra, 0x24($sp)
    /* D1F3C 800C2F8C 12080081 */  beq        $s0, $t0, .L800C3194_D2144
    /* D1F40 800C2F90 001060C0 */   sll       $t4, $s0, 3
  .L800C2F94_D1F44:
    /* D1F44 800C2F94 01906023 */  subu       $t4, $t4, $s0
    /* D1F48 800C2F98 3C0D8015 */  lui        $t5, %hi(D_80154318)
    /* D1F4C 800C2F9C 25AD4318 */  addiu      $t5, $t5, %lo(D_80154318)
    /* D1F50 800C2FA0 000C6080 */  sll        $t4, $t4, 2
    /* D1F54 800C2FA4 018D3821 */  addu       $a3, $t4, $t5
    /* D1F58 800C2FA8 80EE000C */  lb         $t6, 0xC($a3)
    /* D1F5C 800C2FAC 24E20008 */  addiu      $v0, $a3, 0x8
    /* D1F60 800C2FB0 05C30032 */  bgezl      $t6, .L800C307C_D202C
    /* D1F64 800C2FB4 80440003 */   lb        $a0, 0x3($v0)
    /* D1F68 800C2FB8 90EF0008 */  lbu        $t7, 0x8($a3)
    /* D1F6C 800C2FBC 8FB80030 */  lw         $t8, 0x30($sp)
    /* D1F70 800C2FC0 29E10019 */  slti       $at, $t7, 0x19
    /* D1F74 800C2FC4 5020002D */  beql       $at, $zero, .L800C307C_D202C
    /* D1F78 800C2FC8 80440003 */   lb        $a0, 0x3($v0)
    /* D1F7C 800C2FCC 93190009 */  lbu        $t9, 0x9($t8)
    /* D1F80 800C2FD0 24010002 */  addiu      $at, $zero, 0x2
    /* D1F84 800C2FD4 00102400 */  sll        $a0, $s0, 16
    /* D1F88 800C2FD8 17210019 */  bne        $t9, $at, .L800C3040_D1FF0
    /* D1F8C 800C2FDC 00047403 */   sra       $t6, $a0, 16
    /* D1F90 800C2FE0 8FAA0028 */  lw         $t2, 0x28($sp)
    /* D1F94 800C2FE4 00102400 */  sll        $a0, $s0, 16
    /* D1F98 800C2FE8 00046403 */  sra        $t4, $a0, 16
    /* D1F9C 800C2FEC 914B0004 */  lbu        $t3, 0x4($t2)
    /* D1FA0 800C2FF0 84F10004 */  lh         $s1, 0x4($a3)
    /* D1FA4 800C2FF4 01802025 */  or         $a0, $t4, $zero
    /* D1FA8 800C2FF8 29610003 */  slti       $at, $t3, 0x3
    /* D1FAC 800C2FFC 10200008 */  beqz       $at, .L800C3020_D1FD0
    /* D1FB0 800C3000 324500FF */   andi      $a1, $s2, 0xFF
    /* D1FB4 800C3004 324400FF */  andi       $a0, $s2, 0xFF
    /* D1FB8 800C3008 0C030506 */  jal        func_800C1418_D03C8
    /* D1FBC 800C300C 00002825 */   or        $a1, $zero, $zero
    /* D1FC0 800C3010 0C0304E1 */  jal        func_800C1384_D0334
    /* D1FC4 800C3014 324400FF */   andi      $a0, $s2, 0xFF
    /* D1FC8 800C3018 1000005F */  b          .L800C3198_D2148
    /* D1FCC 800C301C 8FBF0024 */   lw        $ra, 0x24($sp)
  .L800C3020_D1FD0:
    /* D1FD0 800C3020 0C030693 */  jal        func_800C1A4C_D09FC
    /* D1FD4 800C3024 00003025 */   or        $a2, $zero, $zero
    /* D1FD8 800C3028 00118400 */  sll        $s0, $s1, 16
    /* D1FDC 800C302C 00106C03 */  sra        $t5, $s0, 16
    /* D1FE0 800C3030 01A08025 */  or         $s0, $t5, $zero
    /* D1FE4 800C3034 2409FFFB */  addiu      $t1, $zero, -0x5
    /* D1FE8 800C3038 10000052 */  b          .L800C3184_D2134
    /* D1FEC 800C303C 2408FFFA */   addiu     $t0, $zero, -0x6
  .L800C3040_D1FF0:
    /* D1FF0 800C3040 84F10004 */  lh         $s1, 0x4($a3)
    /* D1FF4 800C3044 01C02025 */  or         $a0, $t6, $zero
    /* D1FF8 800C3048 324500FF */  andi       $a1, $s2, 0xFF
    /* D1FFC 800C304C 0C030693 */  jal        func_800C1A4C_D09FC
    /* D2000 800C3050 00003025 */   or        $a2, $zero, $zero
    /* D2004 800C3054 324400FF */  andi       $a0, $s2, 0xFF
    /* D2008 800C3058 0C030AE4 */  jal        func_800C2B90_D1B40
    /* D200C 800C305C 00002825 */   or        $a1, $zero, $zero
    /* D2010 800C3060 00118400 */  sll        $s0, $s1, 16
    /* D2014 800C3064 00107C03 */  sra        $t7, $s0, 16
    /* D2018 800C3068 01E08025 */  or         $s0, $t7, $zero
    /* D201C 800C306C 2409FFFB */  addiu      $t1, $zero, -0x5
    /* D2020 800C3070 10000044 */  b          .L800C3184_D2134
    /* D2024 800C3074 2408FFFA */   addiu     $t0, $zero, -0x6
    /* D2028 800C3078 80440003 */  lb         $a0, 0x3($v0)
  .L800C307C_D202C:
    /* D202C 800C307C 58800013 */  blezl      $a0, .L800C30CC_D207C
    /* D2030 800C3080 90430002 */   lbu       $v1, 0x2($v0)
    /* D2034 800C3084 90430002 */  lbu        $v1, 0x2($v0)
    /* D2038 800C3088 286100E5 */  slti       $at, $v1, 0xE5
    /* D203C 800C308C 10200003 */  beqz       $at, .L800C309C_D204C
    /* D2040 800C3090 0064C021 */   addu      $t8, $v1, $a0
    /* D2044 800C3094 1000001C */  b          .L800C3108_D20B8
    /* D2048 800C3098 A0580002 */   sb        $t8, 0x2($v0)
  .L800C309C_D204C:
    /* D204C 800C309C 804A0001 */  lb         $t2, 0x1($v0)
    /* D2050 800C30A0 24190001 */  addiu      $t9, $zero, 0x1
    /* D2054 800C30A4 A0590002 */  sb         $t9, 0x2($v0)
    /* D2058 800C30A8 254B0001 */  addiu      $t3, $t2, 0x1
    /* D205C 800C30AC A04B0001 */  sb         $t3, 0x1($v0)
    /* D2060 800C30B0 804C0001 */  lb         $t4, 0x1($v0)
    /* D2064 800C30B4 29810004 */  slti       $at, $t4, 0x4
    /* D2068 800C30B8 54200014 */  bnel       $at, $zero, .L800C310C_D20BC
    /* D206C 800C30BC 80440004 */   lb        $a0, 0x4($v0)
    /* D2070 800C30C0 10000011 */  b          .L800C3108_D20B8
    /* D2074 800C30C4 A0400001 */   sb        $zero, 0x1($v0)
    /* D2078 800C30C8 90430002 */  lbu        $v1, 0x2($v0)
  .L800C30CC_D207C:
    /* D207C 800C30CC 28610011 */  slti       $at, $v1, 0x11
    /* D2080 800C30D0 14200003 */  bnez       $at, .L800C30E0_D2090
    /* D2084 800C30D4 00646821 */   addu      $t5, $v1, $a0
    /* D2088 800C30D8 1000000B */  b          .L800C3108_D20B8
    /* D208C 800C30DC A04D0002 */   sb        $t5, 0x2($v0)
  .L800C30E0_D2090:
    /* D2090 800C30E0 804F0001 */  lb         $t7, 0x1($v0)
    /* D2094 800C30E4 240E00E5 */  addiu      $t6, $zero, 0xE5
    /* D2098 800C30E8 A04E0002 */  sb         $t6, 0x2($v0)
    /* D209C 800C30EC 25F8FFFF */  addiu      $t8, $t7, -0x1
    /* D20A0 800C30F0 A0580001 */  sb         $t8, 0x1($v0)
    /* D20A4 800C30F4 80590001 */  lb         $t9, 0x1($v0)
    /* D20A8 800C30F8 240A0003 */  addiu      $t2, $zero, 0x3
    /* D20AC 800C30FC 07230003 */  bgezl      $t9, .L800C310C_D20BC
    /* D20B0 800C3100 80440004 */   lb        $a0, 0x4($v0)
    /* D20B4 800C3104 A04A0001 */  sb         $t2, 0x1($v0)
  .L800C3108_D20B8:
    /* D20B8 800C3108 80440004 */  lb         $a0, 0x4($v0)
  .L800C310C_D20BC:
    /* D20BC 800C310C 58800009 */  blezl      $a0, .L800C3134_D20E4
    /* D20C0 800C3110 904D0000 */   lbu       $t5, 0x0($v0)
    /* D20C4 800C3114 904B0000 */  lbu        $t3, 0x0($v0)
    /* D20C8 800C3118 00046023 */  negu       $t4, $a0
    /* D20CC 800C311C 296100E6 */  slti       $at, $t3, 0xE6
    /* D20D0 800C3120 54200004 */  bnel       $at, $zero, .L800C3134_D20E4
    /* D20D4 800C3124 904D0000 */   lbu       $t5, 0x0($v0)
    /* D20D8 800C3128 A04C0004 */  sb         $t4, 0x4($v0)
    /* D20DC 800C312C 80440004 */  lb         $a0, 0x4($v0)
    /* D20E0 800C3130 904D0000 */  lbu        $t5, 0x0($v0)
  .L800C3134_D20E4:
    /* D20E4 800C3134 80430006 */  lb         $v1, 0x6($v0)
    /* D20E8 800C3138 904F0005 */  lbu        $t7, 0x5($v0)
    /* D20EC 800C313C 01A47021 */  addu       $t6, $t5, $a0
    /* D20F0 800C3140 A04E0000 */  sb         $t6, 0x0($v0)
    /* D20F4 800C3144 01E3C021 */  addu       $t8, $t7, $v1
    /* D20F8 800C3148 18600007 */  blez       $v1, .L800C3168_D2118
    /* D20FC 800C314C A0580005 */   sb        $t8, 0x5($v0)
    /* D2100 800C3150 331900FF */  andi       $t9, $t8, 0xFF
    /* D2104 800C3154 2B2100F4 */  slti       $at, $t9, 0xF4
    /* D2108 800C3158 14200009 */  bnez       $at, .L800C3180_D2130
    /* D210C 800C315C 00035023 */   negu      $t2, $v1
    /* D2110 800C3160 10000007 */  b          .L800C3180_D2130
    /* D2114 800C3164 A04A0006 */   sb        $t2, 0x6($v0)
  .L800C3168_D2118:
    /* D2118 800C3168 904B0005 */  lbu        $t3, 0x5($v0)
    /* D211C 800C316C 00036023 */  negu       $t4, $v1
    /* D2120 800C3170 2961000C */  slti       $at, $t3, 0xC
    /* D2124 800C3174 50200003 */  beql       $at, $zero, .L800C3184_D2134
    /* D2128 800C3178 84F00004 */   lh        $s0, 0x4($a3)
    /* D212C 800C317C A04C0006 */  sb         $t4, 0x6($v0)
  .L800C3180_D2130:
    /* D2130 800C3180 84F00004 */  lh         $s0, 0x4($a3)
  .L800C3184_D2134:
    /* D2134 800C3184 52090004 */  beql       $s0, $t1, .L800C3198_D2148
    /* D2138 800C3188 8FBF0024 */   lw        $ra, 0x24($sp)
    /* D213C 800C318C 5608FF81 */  bnel       $s0, $t0, .L800C2F94_D1F44
    /* D2140 800C3190 001060C0 */   sll       $t4, $s0, 3
  .L800C3194_D2144:
    /* D2144 800C3194 8FBF0024 */  lw         $ra, 0x24($sp)
  .L800C3198_D2148:
    /* D2148 800C3198 8FB00018 */  lw         $s0, 0x18($sp)
    /* D214C 800C319C 8FB1001C */  lw         $s1, 0x1C($sp)
    /* D2150 800C31A0 8FB20020 */  lw         $s2, 0x20($sp)
    /* D2154 800C31A4 03E00008 */  jr         $ra
    /* D2158 800C31A8 27BD0038 */   addiu     $sp, $sp, 0x38
endlabel func_800C2EE4_D1E94
