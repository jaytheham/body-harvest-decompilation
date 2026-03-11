nonmatching func_800E2ED4_F1E84, 0x3F0

glabel func_800E2ED4_F1E84
    /* F1E84 800E2ED4 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* F1E88 800E2ED8 3C0E8015 */  lui        $t6, %hi(D_801493CC)
    /* F1E8C 800E2EDC 8DCE93CC */  lw         $t6, %lo(D_801493CC)($t6)
    /* F1E90 800E2EE0 AFBF0034 */  sw         $ra, 0x34($sp)
    /* F1E94 800E2EE4 AFB70030 */  sw         $s7, 0x30($sp)
    /* F1E98 800E2EE8 AFB6002C */  sw         $s6, 0x2C($sp)
    /* F1E9C 800E2EEC AFB50028 */  sw         $s5, 0x28($sp)
    /* F1EA0 800E2EF0 AFB40024 */  sw         $s4, 0x24($sp)
    /* F1EA4 800E2EF4 AFB30020 */  sw         $s3, 0x20($sp)
    /* F1EA8 800E2EF8 AFB2001C */  sw         $s2, 0x1C($sp)
    /* F1EAC 800E2EFC AFB10018 */  sw         $s1, 0x18($sp)
    /* F1EB0 800E2F00 15C000E5 */  bnez       $t6, .L800E3298_F2248
    /* F1EB4 800E2F04 AFB00014 */   sw        $s0, 0x14($sp)
    /* F1EB8 800E2F08 0C038B6D */  jal        func_800E2DB4_F1D64
    /* F1EBC 800E2F0C 00000000 */   nop
    /* F1EC0 800E2F10 3C0C8015 */  lui        $t4, %hi(D_80154080)
    /* F1EC4 800E2F14 258C4080 */  addiu      $t4, $t4, %lo(D_80154080)
    /* F1EC8 800E2F18 818F0000 */  lb         $t7, 0x0($t4)
    /* F1ECC 800E2F1C 3C038006 */  lui        $v1, %hi(D_8005BB2C)
    /* F1ED0 800E2F20 2463BB2C */  addiu      $v1, $v1, %lo(D_8005BB2C)
    /* F1ED4 800E2F24 05E10041 */  bgez       $t7, .L800E302C_F1FDC
    /* F1ED8 800E2F28 3C0DE700 */   lui       $t5, (0xE7000000 >> 16)
    /* F1EDC 800E2F2C 3C038006 */  lui        $v1, %hi(D_8005BB2C)
    /* F1EE0 800E2F30 2463BB2C */  addiu      $v1, $v1, %lo(D_8005BB2C)
    /* F1EE4 800E2F34 8C620000 */  lw         $v0, 0x0($v1)
    /* F1EE8 800E2F38 3C19FD90 */  lui        $t9, (0xFD900000 >> 16)
    /* F1EEC 800E2F3C 3C0DE700 */  lui        $t5, (0xE7000000 >> 16)
    /* F1EF0 800E2F40 24580008 */  addiu      $t8, $v0, 0x8
    /* F1EF4 800E2F44 AC780000 */  sw         $t8, 0x0($v1)
    /* F1EF8 800E2F48 AC590000 */  sw         $t9, 0x0($v0)
    /* F1EFC 800E2F4C 818E0000 */  lb         $t6, 0x0($t4)
    /* F1F00 800E2F50 3C180101 */  lui        $t8, %hi(D_100E480)
    /* F1F04 800E2F54 2718E480 */  addiu      $t8, $t8, %lo(D_100E480)
    /* F1F08 800E2F58 000E0823 */  negu       $at, $t6
    /* F1F0C 800E2F5C 000179C0 */  sll        $t7, $at, 7
    /* F1F10 800E2F60 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* F1F14 800E2F64 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* F1F18 800E2F68 01F8C821 */  addu       $t9, $t7, $t8
    /* F1F1C 800E2F6C 03217024 */  and        $t6, $t9, $at
    /* F1F20 800E2F70 AC4E0004 */  sw         $t6, 0x4($v0)
    /* F1F24 800E2F74 8C620000 */  lw         $v0, 0x0($v1)
    /* F1F28 800E2F78 3C190701 */  lui        $t9, (0x7014140 >> 16)
    /* F1F2C 800E2F7C 37394140 */  ori        $t9, $t9, (0x7014140 & 0xFFFF)
    /* F1F30 800E2F80 244F0008 */  addiu      $t7, $v0, 0x8
    /* F1F34 800E2F84 AC6F0000 */  sw         $t7, 0x0($v1)
    /* F1F38 800E2F88 3C18F590 */  lui        $t8, (0xF5900000 >> 16)
    /* F1F3C 800E2F8C AC580000 */  sw         $t8, 0x0($v0)
    /* F1F40 800E2F90 AC590004 */  sw         $t9, 0x4($v0)
    /* F1F44 800E2F94 8C620000 */  lw         $v0, 0x0($v1)
    /* F1F48 800E2F98 3C0FE600 */  lui        $t7, (0xE6000000 >> 16)
    /* F1F4C 800E2F9C 3C19F300 */  lui        $t9, (0xF3000000 >> 16)
    /* F1F50 800E2FA0 244E0008 */  addiu      $t6, $v0, 0x8
    /* F1F54 800E2FA4 AC6E0000 */  sw         $t6, 0x0($v1)
    /* F1F58 800E2FA8 AC400004 */  sw         $zero, 0x4($v0)
    /* F1F5C 800E2FAC AC4F0000 */  sw         $t7, 0x0($v0)
    /* F1F60 800E2FB0 8C620000 */  lw         $v0, 0x0($v1)
    /* F1F64 800E2FB4 3C0E0703 */  lui        $t6, (0x703F800 >> 16)
    /* F1F68 800E2FB8 35CEF800 */  ori        $t6, $t6, (0x703F800 & 0xFFFF)
    /* F1F6C 800E2FBC 24580008 */  addiu      $t8, $v0, 0x8
    /* F1F70 800E2FC0 AC780000 */  sw         $t8, 0x0($v1)
    /* F1F74 800E2FC4 AC4E0004 */  sw         $t6, 0x4($v0)
    /* F1F78 800E2FC8 AC590000 */  sw         $t9, 0x0($v0)
    /* F1F7C 800E2FCC 8C620000 */  lw         $v0, 0x0($v1)
    /* F1F80 800E2FD0 3C19F580 */  lui        $t9, (0xF5800200 >> 16)
    /* F1F84 800E2FD4 3C0E0001 */  lui        $t6, (0x14140 >> 16)
    /* F1F88 800E2FD8 244F0008 */  addiu      $t7, $v0, 0x8
    /* F1F8C 800E2FDC AC6F0000 */  sw         $t7, 0x0($v1)
    /* F1F90 800E2FE0 AC400004 */  sw         $zero, 0x4($v0)
    /* F1F94 800E2FE4 AC4D0000 */  sw         $t5, 0x0($v0)
    /* F1F98 800E2FE8 8C620000 */  lw         $v0, 0x0($v1)
    /* F1F9C 800E2FEC 35CE4140 */  ori        $t6, $t6, (0x14140 & 0xFFFF)
    /* F1FA0 800E2FF0 37390200 */  ori        $t9, $t9, (0xF5800200 & 0xFFFF)
    /* F1FA4 800E2FF4 24580008 */  addiu      $t8, $v0, 0x8
    /* F1FA8 800E2FF8 AC780000 */  sw         $t8, 0x0($v1)
    /* F1FAC 800E2FFC AC4E0004 */  sw         $t6, 0x4($v0)
    /* F1FB0 800E3000 AC590000 */  sw         $t9, 0x0($v0)
    /* F1FB4 800E3004 8C620000 */  lw         $v0, 0x0($v1)
    /* F1FB8 800E3008 3C190003 */  lui        $t9, (0x3C03C >> 16)
    /* F1FBC 800E300C 3739C03C */  ori        $t9, $t9, (0x3C03C & 0xFFFF)
    /* F1FC0 800E3010 244F0008 */  addiu      $t7, $v0, 0x8
    /* F1FC4 800E3014 AC6F0000 */  sw         $t7, 0x0($v1)
    /* F1FC8 800E3018 3C18F200 */  lui        $t8, (0xF2000000 >> 16)
    /* F1FCC 800E301C 240B0200 */  addiu      $t3, $zero, 0x200
    /* F1FD0 800E3020 AC580000 */  sw         $t8, 0x0($v0)
    /* F1FD4 800E3024 1000003C */  b          .L800E3118_F20C8
    /* F1FD8 800E3028 AC590004 */   sw        $t9, 0x4($v0)
  .L800E302C_F1FDC:
    /* F1FDC 800E302C 8C620000 */  lw         $v0, 0x0($v1)
    /* F1FE0 800E3030 3C0FFD90 */  lui        $t7, (0xFD900000 >> 16)
    /* F1FE4 800E3034 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* F1FE8 800E3038 244E0008 */  addiu      $t6, $v0, 0x8
    /* F1FEC 800E303C AC6E0000 */  sw         $t6, 0x0($v1)
    /* F1FF0 800E3040 AC4F0000 */  sw         $t7, 0x0($v0)
    /* F1FF4 800E3044 81980000 */  lb         $t8, 0x0($t4)
    /* F1FF8 800E3048 3C0E0101 */  lui        $t6, %hi(D_100E480)
    /* F1FFC 800E304C 25CEE480 */  addiu      $t6, $t6, %lo(D_100E480)
    /* F2000 800E3050 0018C9C0 */  sll        $t9, $t8, 7
    /* F2004 800E3054 032E7821 */  addu       $t7, $t9, $t6
    /* F2008 800E3058 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* F200C 800E305C 01E1C024 */  and        $t8, $t7, $at
    /* F2010 800E3060 AC580004 */  sw         $t8, 0x4($v0)
    /* F2014 800E3064 8C620000 */  lw         $v0, 0x0($v1)
    /* F2018 800E3068 3C0F0701 */  lui        $t7, (0x7014140 >> 16)
    /* F201C 800E306C 35EF4140 */  ori        $t7, $t7, (0x7014140 & 0xFFFF)
    /* F2020 800E3070 24590008 */  addiu      $t9, $v0, 0x8
    /* F2024 800E3074 AC790000 */  sw         $t9, 0x0($v1)
    /* F2028 800E3078 3C0EF590 */  lui        $t6, (0xF5900000 >> 16)
    /* F202C 800E307C AC4E0000 */  sw         $t6, 0x0($v0)
    /* F2030 800E3080 AC4F0004 */  sw         $t7, 0x4($v0)
    /* F2034 800E3084 8C620000 */  lw         $v0, 0x0($v1)
    /* F2038 800E3088 3C19E600 */  lui        $t9, (0xE6000000 >> 16)
    /* F203C 800E308C 3C0FF300 */  lui        $t7, (0xF3000000 >> 16)
    /* F2040 800E3090 24580008 */  addiu      $t8, $v0, 0x8
    /* F2044 800E3094 AC780000 */  sw         $t8, 0x0($v1)
    /* F2048 800E3098 AC400004 */  sw         $zero, 0x4($v0)
    /* F204C 800E309C AC590000 */  sw         $t9, 0x0($v0)
    /* F2050 800E30A0 8C620000 */  lw         $v0, 0x0($v1)
    /* F2054 800E30A4 3C180703 */  lui        $t8, (0x703F800 >> 16)
    /* F2058 800E30A8 3718F800 */  ori        $t8, $t8, (0x703F800 & 0xFFFF)
    /* F205C 800E30AC 244E0008 */  addiu      $t6, $v0, 0x8
    /* F2060 800E30B0 AC6E0000 */  sw         $t6, 0x0($v1)
    /* F2064 800E30B4 AC580004 */  sw         $t8, 0x4($v0)
    /* F2068 800E30B8 AC4F0000 */  sw         $t7, 0x0($v0)
    /* F206C 800E30BC 8C620000 */  lw         $v0, 0x0($v1)
    /* F2070 800E30C0 3C0FF580 */  lui        $t7, (0xF5800200 >> 16)
    /* F2074 800E30C4 3C180001 */  lui        $t8, (0x14140 >> 16)
    /* F2078 800E30C8 24590008 */  addiu      $t9, $v0, 0x8
    /* F207C 800E30CC AC790000 */  sw         $t9, 0x0($v1)
    /* F2080 800E30D0 AC400004 */  sw         $zero, 0x4($v0)
    /* F2084 800E30D4 AC4D0000 */  sw         $t5, 0x0($v0)
    /* F2088 800E30D8 8C620000 */  lw         $v0, 0x0($v1)
    /* F208C 800E30DC 37184140 */  ori        $t8, $t8, (0x14140 & 0xFFFF)
    /* F2090 800E30E0 35EF0200 */  ori        $t7, $t7, (0xF5800200 & 0xFFFF)
    /* F2094 800E30E4 244E0008 */  addiu      $t6, $v0, 0x8
    /* F2098 800E30E8 AC6E0000 */  sw         $t6, 0x0($v1)
    /* F209C 800E30EC AC580004 */  sw         $t8, 0x4($v0)
    /* F20A0 800E30F0 AC4F0000 */  sw         $t7, 0x0($v0)
    /* F20A4 800E30F4 8C620000 */  lw         $v0, 0x0($v1)
    /* F20A8 800E30F8 3C0F0003 */  lui        $t7, (0x3C03C >> 16)
    /* F20AC 800E30FC 35EFC03C */  ori        $t7, $t7, (0x3C03C & 0xFFFF)
    /* F20B0 800E3100 24590008 */  addiu      $t9, $v0, 0x8
    /* F20B4 800E3104 AC790000 */  sw         $t9, 0x0($v1)
    /* F20B8 800E3108 3C0EF200 */  lui        $t6, (0xF2000000 >> 16)
    /* F20BC 800E310C 00005825 */  or         $t3, $zero, $zero
    /* F20C0 800E3110 AC4E0000 */  sw         $t6, 0x0($v0)
    /* F20C4 800E3114 AC4F0004 */  sw         $t7, 0x4($v0)
  .L800E3118_F20C8:
    /* F20C8 800E3118 8C620000 */  lw         $v0, 0x0($v1)
    /* F20CC 800E311C 3C178015 */  lui        $s7, %hi(D_80154300)
    /* F20D0 800E3120 26F74300 */  addiu      $s7, $s7, %lo(D_80154300)
    /* F20D4 800E3124 24580008 */  addiu      $t8, $v0, 0x8
    /* F20D8 800E3128 AC780000 */  sw         $t8, 0x0($v1)
    /* F20DC 800E312C AC400004 */  sw         $zero, 0x4($v0)
    /* F20E0 800E3130 AC4D0000 */  sw         $t5, 0x0($v0)
    /* F20E4 800E3134 8EF90000 */  lw         $t9, 0x0($s7)
    /* F20E8 800E3138 0160B025 */  or         $s6, $t3, $zero
    /* F20EC 800E313C 00167400 */  sll        $t6, $s6, 16
    /* F20F0 800E3140 1B200055 */  blez       $t9, .L800E3298_F2248
    /* F20F4 800E3144 00006025 */   or        $t4, $zero, $zero
    /* F20F8 800E3148 3C150400 */  lui        $s5, (0x4000400 >> 16)
    /* F20FC 800E314C 3C108015 */  lui        $s0, %hi(D_80153BD0)
    /* F2100 800E3150 3C0B8015 */  lui        $t3, %hi(D_801541F0)
    /* F2104 800E3154 256B41F0 */  addiu      $t3, $t3, %lo(D_801541F0)
    /* F2108 800E3158 26103BD0 */  addiu      $s0, $s0, %lo(D_80153BD0)
    /* F210C 800E315C 36B50400 */  ori        $s5, $s5, (0x4000400 & 0xFFFF)
    /* F2110 800E3160 01C0B025 */  or         $s6, $t6, $zero
    /* F2114 800E3164 3C14B300 */  lui        $s4, (0xB3000000 >> 16)
    /* F2118 800E3168 3C13B400 */  lui        $s3, (0xB4000000 >> 16)
    /* F211C 800E316C 3C12E400 */  lui        $s2, (0xE4000000 >> 16)
    /* F2120 800E3170 24110006 */  addiu      $s1, $zero, 0x6
    /* F2124 800E3174 3C1FFA00 */  lui        $ra, (0xFA000000 >> 16)
    /* F2128 800E3178 8C620000 */  lw         $v0, 0x0($v1)
  .L800E317C_F212C:
    /* F212C 800E317C 01910019 */  multu      $t4, $s1
    /* F2130 800E3180 258C0001 */  addiu      $t4, $t4, 0x1
    /* F2134 800E3184 244F0008 */  addiu      $t7, $v0, 0x8
    /* F2138 800E3188 AC6F0000 */  sw         $t7, 0x0($v1)
    /* F213C 800E318C AC5F0000 */  sw         $ra, 0x0($v0)
    /* F2140 800E3190 91790000 */  lbu        $t9, 0x0($t3)
    /* F2144 800E3194 91780001 */  lbu        $t8, 0x1($t3)
    /* F2148 800E3198 00197600 */  sll        $t6, $t9, 24
    /* F214C 800E319C 0018CC00 */  sll        $t9, $t8, 16
    /* F2150 800E31A0 01D97825 */  or         $t7, $t6, $t9
    /* F2154 800E31A4 916E0002 */  lbu        $t6, 0x2($t3)
    /* F2158 800E31A8 000ECA00 */  sll        $t9, $t6, 8
    /* F215C 800E31AC 01F9C025 */  or         $t8, $t7, $t9
    /* F2160 800E31B0 370E0023 */  ori        $t6, $t8, 0x23
    /* F2164 800E31B4 AC4E0004 */  sw         $t6, 0x4($v0)
    /* F2168 800E31B8 8C620000 */  lw         $v0, 0x0($v1)
    /* F216C 800E31BC 0000C012 */  mflo       $t8
    /* F2170 800E31C0 02182021 */  addu       $a0, $s0, $t8
    /* F2174 800E31C4 244F0008 */  addiu      $t7, $v0, 0x8
    /* F2178 800E31C8 AC6F0000 */  sw         $t7, 0x0($v1)
    /* F217C 800E31CC AC400004 */  sw         $zero, 0x4($v0)
    /* F2180 800E31D0 AC4D0000 */  sw         $t5, 0x0($v0)
    /* F2184 800E31D4 8C620000 */  lw         $v0, 0x0($v1)
    /* F2188 800E31D8 848E0002 */  lh         $t6, 0x2($a0)
    /* F218C 800E31DC 24590008 */  addiu      $t9, $v0, 0x8
    /* F2190 800E31E0 AC790000 */  sw         $t9, 0x0($v1)
    /* F2194 800E31E4 000E7903 */  sra        $t7, $t6, 4
    /* F2198 800E31E8 25F90010 */  addiu      $t9, $t7, 0x10
    /* F219C 800E31EC 0019C080 */  sll        $t8, $t9, 2
    /* F21A0 800E31F0 84990000 */  lh         $t9, 0x0($a0)
    /* F21A4 800E31F4 330E0FFF */  andi       $t6, $t8, 0xFFF
    /* F21A8 800E31F8 01D27825 */  or         $t7, $t6, $s2
    /* F21AC 800E31FC 0019C103 */  sra        $t8, $t9, 4
    /* F21B0 800E3200 270E0010 */  addiu      $t6, $t8, 0x10
    /* F21B4 800E3204 000EC880 */  sll        $t9, $t6, 2
    /* F21B8 800E3208 33380FFF */  andi       $t8, $t9, 0xFFF
    /* F21BC 800E320C 00187300 */  sll        $t6, $t8, 12
    /* F21C0 800E3210 01EEC825 */  or         $t9, $t7, $t6
    /* F21C4 800E3214 AC590000 */  sw         $t9, 0x0($v0)
    /* F21C8 800E3218 84980002 */  lh         $t8, 0x2($a0)
    /* F21CC 800E321C 00187903 */  sra        $t7, $t8, 4
    /* F21D0 800E3220 84980000 */  lh         $t8, 0x0($a0)
    /* F21D4 800E3224 000F7080 */  sll        $t6, $t7, 2
    /* F21D8 800E3228 31D90FFF */  andi       $t9, $t6, 0xFFF
    /* F21DC 800E322C 00187903 */  sra        $t7, $t8, 4
    /* F21E0 800E3230 000F7080 */  sll        $t6, $t7, 2
    /* F21E4 800E3234 31D80FFF */  andi       $t8, $t6, 0xFFF
    /* F21E8 800E3238 00187B00 */  sll        $t7, $t8, 12
    /* F21EC 800E323C 032F7025 */  or         $t6, $t9, $t7
    /* F21F0 800E3240 AC4E0004 */  sw         $t6, 0x4($v0)
    /* F21F4 800E3244 8C620000 */  lw         $v0, 0x0($v1)
    /* F21F8 800E3248 318E00FF */  andi       $t6, $t4, 0xFF
    /* F21FC 800E324C 01C06025 */  or         $t4, $t6, $zero
    /* F2200 800E3250 24580008 */  addiu      $t8, $v0, 0x8
    /* F2204 800E3254 AC780000 */  sw         $t8, 0x0($v1)
    /* F2208 800E3258 AC560004 */  sw         $s6, 0x4($v0)
    /* F220C 800E325C AC530000 */  sw         $s3, 0x0($v0)
    /* F2210 800E3260 8C620000 */  lw         $v0, 0x0($v1)
    /* F2214 800E3264 24590008 */  addiu      $t9, $v0, 0x8
    /* F2218 800E3268 AC790000 */  sw         $t9, 0x0($v1)
    /* F221C 800E326C AC550004 */  sw         $s5, 0x4($v0)
    /* F2220 800E3270 AC540000 */  sw         $s4, 0x0($v0)
    /* F2224 800E3274 8C620000 */  lw         $v0, 0x0($v1)
    /* F2228 800E3278 244F0008 */  addiu      $t7, $v0, 0x8
    /* F222C 800E327C AC6F0000 */  sw         $t7, 0x0($v1)
    /* F2230 800E3280 AC400004 */  sw         $zero, 0x4($v0)
    /* F2234 800E3284 AC4D0000 */  sw         $t5, 0x0($v0)
    /* F2238 800E3288 8EF80000 */  lw         $t8, 0x0($s7)
    /* F223C 800E328C 01D8082A */  slt        $at, $t6, $t8
    /* F2240 800E3290 5420FFBA */  bnel       $at, $zero, .L800E317C_F212C
    /* F2244 800E3294 8C620000 */   lw        $v0, 0x0($v1)
  .L800E3298_F2248:
    /* F2248 800E3298 8FBF0034 */  lw         $ra, 0x34($sp)
    /* F224C 800E329C 8FB00014 */  lw         $s0, 0x14($sp)
    /* F2250 800E32A0 8FB10018 */  lw         $s1, 0x18($sp)
    /* F2254 800E32A4 8FB2001C */  lw         $s2, 0x1C($sp)
    /* F2258 800E32A8 8FB30020 */  lw         $s3, 0x20($sp)
    /* F225C 800E32AC 8FB40024 */  lw         $s4, 0x24($sp)
    /* F2260 800E32B0 8FB50028 */  lw         $s5, 0x28($sp)
    /* F2264 800E32B4 8FB6002C */  lw         $s6, 0x2C($sp)
    /* F2268 800E32B8 8FB70030 */  lw         $s7, 0x30($sp)
    /* F226C 800E32BC 03E00008 */  jr         $ra
    /* F2270 800E32C0 27BD0038 */   addiu     $sp, $sp, 0x38
endlabel func_800E2ED4_F1E84
