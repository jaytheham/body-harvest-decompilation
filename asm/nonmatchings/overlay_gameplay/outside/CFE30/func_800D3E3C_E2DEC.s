nonmatching func_800D3E3C_E2DEC, 0x778

glabel func_800D3E3C_E2DEC
    /* E2DEC 800D3E3C 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* E2DF0 800D3E40 AFB10018 */  sw         $s1, 0x18($sp)
    /* E2DF4 800D3E44 3C118006 */  lui        $s1, %hi(D_8005BB2C)
    /* E2DF8 800D3E48 2631BB2C */  addiu      $s1, $s1, %lo(D_8005BB2C)
    /* E2DFC 800D3E4C 8E230000 */  lw         $v1, 0x0($s1)
    /* E2E00 800D3E50 AFB00014 */  sw         $s0, 0x14($sp)
    /* E2E04 800D3E54 AFBF002C */  sw         $ra, 0x2C($sp)
    /* E2E08 800D3E58 246E0008 */  addiu      $t6, $v1, 0x8
    /* E2E0C 800D3E5C AFB50028 */  sw         $s5, 0x28($sp)
    /* E2E10 800D3E60 AFB40024 */  sw         $s4, 0x24($sp)
    /* E2E14 800D3E64 AFB30020 */  sw         $s3, 0x20($sp)
    /* E2E18 800D3E68 AFB2001C */  sw         $s2, 0x1C($sp)
    /* E2E1C 800D3E6C AFA40030 */  sw         $a0, 0x30($sp)
    /* E2E20 800D3E70 AFA50034 */  sw         $a1, 0x34($sp)
    /* E2E24 800D3E74 AFA60038 */  sw         $a2, 0x38($sp)
    /* E2E28 800D3E78 AFA7003C */  sw         $a3, 0x3C($sp)
    /* E2E2C 800D3E7C AE2E0000 */  sw         $t6, 0x0($s1)
    /* E2E30 800D3E80 3C10E700 */  lui        $s0, (0xE7000000 >> 16)
    /* E2E34 800D3E84 AC700000 */  sw         $s0, 0x0($v1)
    /* E2E38 800D3E88 AC600004 */  sw         $zero, 0x4($v1)
    /* E2E3C 800D3E8C 8E230000 */  lw         $v1, 0x0($s1)
    /* E2E40 800D3E90 3C18FCFF */  lui        $t8, (0xFCFF99FF >> 16)
    /* E2E44 800D3E94 3C19FF32 */  lui        $t9, (0xFF327F3F >> 16)
    /* E2E48 800D3E98 246F0008 */  addiu      $t7, $v1, 0x8
    /* E2E4C 800D3E9C AE2F0000 */  sw         $t7, 0x0($s1)
    /* E2E50 800D3EA0 37397F3F */  ori        $t9, $t9, (0xFF327F3F & 0xFFFF)
    /* E2E54 800D3EA4 371899FF */  ori        $t8, $t8, (0xFCFF99FF & 0xFFFF)
    /* E2E58 800D3EA8 AC780000 */  sw         $t8, 0x0($v1)
    /* E2E5C 800D3EAC AC790004 */  sw         $t9, 0x4($v1)
    /* E2E60 800D3EB0 8E230000 */  lw         $v1, 0x0($s1)
    /* E2E64 800D3EB4 3C0EFD90 */  lui        $t6, (0xFD900000 >> 16)
    /* E2E68 800D3EB8 246B0008 */  addiu      $t3, $v1, 0x8
    /* E2E6C 800D3EBC AE2B0000 */  sw         $t3, 0x0($s1)
    /* E2E70 800D3EC0 AC600004 */  sw         $zero, 0x4($v1)
    /* E2E74 800D3EC4 AC700000 */  sw         $s0, 0x0($v1)
    /* E2E78 800D3EC8 8E230000 */  lw         $v1, 0x0($s1)
    /* E2E7C 800D3ECC 246C0008 */  addiu      $t4, $v1, 0x8
    /* E2E80 800D3ED0 AE2C0000 */  sw         $t4, 0x0($s1)
    /* E2E84 800D3ED4 AC600004 */  sw         $zero, 0x4($v1)
    /* E2E88 800D3ED8 AC700000 */  sw         $s0, 0x0($v1)
    /* E2E8C 800D3EDC 8E320000 */  lw         $s2, 0x0($s1)
    /* E2E90 800D3EE0 264D0008 */  addiu      $t5, $s2, 0x8
    /* E2E94 800D3EE4 AE2D0000 */  sw         $t5, 0x0($s1)
    /* E2E98 800D3EE8 0C000E38 */  jal        func_800038E0_44E0
    /* E2E9C 800D3EEC AE4E0000 */   sw        $t6, 0x0($s2)
    /* E2EA0 800D3EF0 04410004 */  bgez       $v0, .L800D3F04_E2EB4
    /* E2EA4 800D3EF4 304F0003 */   andi      $t7, $v0, 0x3
    /* E2EA8 800D3EF8 11E00002 */  beqz       $t7, .L800D3F04_E2EB4
    /* E2EAC 800D3EFC 00000000 */   nop
    /* E2EB0 800D3F00 25EFFFFC */  addiu      $t7, $t7, -0x4
  .L800D3F04_E2EB4:
    /* E2EB4 800D3F04 3C190101 */  lui        $t9, %hi(D_100B4F0)
    /* E2EB8 800D3F08 2739B4F0 */  addiu      $t9, $t9, %lo(D_100B4F0)
    /* E2EBC 800D3F0C 000FC240 */  sll        $t8, $t7, 9
    /* E2EC0 800D3F10 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* E2EC4 800D3F14 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* E2EC8 800D3F18 03195821 */  addu       $t3, $t8, $t9
    /* E2ECC 800D3F1C 01616024 */  and        $t4, $t3, $at
    /* E2ED0 800D3F20 AE4C0004 */  sw         $t4, 0x4($s2)
    /* E2ED4 800D3F24 8E230000 */  lw         $v1, 0x0($s1)
    /* E2ED8 800D3F28 3C0F0708 */  lui        $t7, (0x7080200 >> 16)
    /* E2EDC 800D3F2C 35EF0200 */  ori        $t7, $t7, (0x7080200 & 0xFFFF)
    /* E2EE0 800D3F30 246D0008 */  addiu      $t5, $v1, 0x8
    /* E2EE4 800D3F34 AE2D0000 */  sw         $t5, 0x0($s1)
    /* E2EE8 800D3F38 3C0EF590 */  lui        $t6, (0xF5900000 >> 16)
    /* E2EEC 800D3F3C AC6E0000 */  sw         $t6, 0x0($v1)
    /* E2EF0 800D3F40 AC6F0004 */  sw         $t7, 0x4($v1)
    /* E2EF4 800D3F44 8E230000 */  lw         $v1, 0x0($s1)
    /* E2EF8 800D3F48 3C19E600 */  lui        $t9, (0xE6000000 >> 16)
    /* E2EFC 800D3F4C 3C0D070F */  lui        $t5, (0x70FF400 >> 16)
    /* E2F00 800D3F50 24780008 */  addiu      $t8, $v1, 0x8
    /* E2F04 800D3F54 AE380000 */  sw         $t8, 0x0($s1)
    /* E2F08 800D3F58 AC600004 */  sw         $zero, 0x4($v1)
    /* E2F0C 800D3F5C AC790000 */  sw         $t9, 0x0($v1)
    /* E2F10 800D3F60 8E230000 */  lw         $v1, 0x0($s1)
    /* E2F14 800D3F64 35ADF400 */  ori        $t5, $t5, (0x70FF400 & 0xFFFF)
    /* E2F18 800D3F68 3C0CF300 */  lui        $t4, (0xF3000000 >> 16)
    /* E2F1C 800D3F6C 246B0008 */  addiu      $t3, $v1, 0x8
    /* E2F20 800D3F70 AE2B0000 */  sw         $t3, 0x0($s1)
    /* E2F24 800D3F74 AC6D0004 */  sw         $t5, 0x4($v1)
    /* E2F28 800D3F78 AC6C0000 */  sw         $t4, 0x0($v1)
    /* E2F2C 800D3F7C 8E230000 */  lw         $v1, 0x0($s1)
    /* E2F30 800D3F80 3C190008 */  lui        $t9, (0x80200 >> 16)
    /* E2F34 800D3F84 3C18F580 */  lui        $t8, (0xF5800400 >> 16)
    /* E2F38 800D3F88 246E0008 */  addiu      $t6, $v1, 0x8
    /* E2F3C 800D3F8C AE2E0000 */  sw         $t6, 0x0($s1)
    /* E2F40 800D3F90 AC600004 */  sw         $zero, 0x4($v1)
    /* E2F44 800D3F94 AC700000 */  sw         $s0, 0x0($v1)
    /* E2F48 800D3F98 8E230000 */  lw         $v1, 0x0($s1)
    /* E2F4C 800D3F9C 37180400 */  ori        $t8, $t8, (0xF5800400 & 0xFFFF)
    /* E2F50 800D3FA0 37390200 */  ori        $t9, $t9, (0x80200 & 0xFFFF)
    /* E2F54 800D3FA4 246F0008 */  addiu      $t7, $v1, 0x8
    /* E2F58 800D3FA8 AE2F0000 */  sw         $t7, 0x0($s1)
    /* E2F5C 800D3FAC AC790004 */  sw         $t9, 0x4($v1)
    /* E2F60 800D3FB0 AC780000 */  sw         $t8, 0x0($v1)
    /* E2F64 800D3FB4 8E230000 */  lw         $v1, 0x0($s1)
    /* E2F68 800D3FB8 3C0D0007 */  lui        $t5, (0x7C07C >> 16)
    /* E2F6C 800D3FBC 35ADC07C */  ori        $t5, $t5, (0x7C07C & 0xFFFF)
    /* E2F70 800D3FC0 246B0008 */  addiu      $t3, $v1, 0x8
    /* E2F74 800D3FC4 AE2B0000 */  sw         $t3, 0x0($s1)
    /* E2F78 800D3FC8 3C0CF200 */  lui        $t4, (0xF2000000 >> 16)
    /* E2F7C 800D3FCC AC6C0000 */  sw         $t4, 0x0($v1)
    /* E2F80 800D3FD0 AC6D0004 */  sw         $t5, 0x4($v1)
    /* E2F84 800D3FD4 8E230000 */  lw         $v1, 0x0($s1)
    /* E2F88 800D3FD8 246E0008 */  addiu      $t6, $v1, 0x8
    /* E2F8C 800D3FDC AE2E0000 */  sw         $t6, 0x0($s1)
    /* E2F90 800D3FE0 AC600004 */  sw         $zero, 0x4($v1)
    /* E2F94 800D3FE4 0C000E38 */  jal        func_800038E0_44E0
    /* E2F98 800D3FE8 AC700000 */   sw        $s0, 0x0($v1)
    /* E2F9C 800D3FEC 24100037 */  addiu      $s0, $zero, 0x37
    /* E2FA0 800D3FF0 0050001A */  div        $zero, $v0, $s0
    /* E2FA4 800D3FF4 0000A010 */  mfhi       $s4
    /* E2FA8 800D3FF8 269400C8 */  addiu      $s4, $s4, 0xC8
    /* E2FAC 800D3FFC 328F00FF */  andi       $t7, $s4, 0xFF
    /* E2FB0 800D4000 16000002 */  bnez       $s0, .L800D400C_E2FBC
    /* E2FB4 800D4004 00000000 */   nop
    /* E2FB8 800D4008 0007000D */  break      7
  .L800D400C_E2FBC:
    /* E2FBC 800D400C 2401FFFF */  addiu      $at, $zero, -0x1
    /* E2FC0 800D4010 16010004 */  bne        $s0, $at, .L800D4024_E2FD4
    /* E2FC4 800D4014 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* E2FC8 800D4018 14410002 */  bne        $v0, $at, .L800D4024_E2FD4
    /* E2FCC 800D401C 00000000 */   nop
    /* E2FD0 800D4020 0006000D */  break      6
  .L800D4024_E2FD4:
    /* E2FD4 800D4024 01E0A025 */  or         $s4, $t7, $zero
    /* E2FD8 800D4028 0C000E38 */  jal        func_800038E0_44E0
    /* E2FDC 800D402C 00000000 */   nop
    /* E2FE0 800D4030 0050001A */  div        $zero, $v0, $s0
    /* E2FE4 800D4034 0000A810 */  mfhi       $s5
    /* E2FE8 800D4038 26B50032 */  addiu      $s5, $s5, 0x32
    /* E2FEC 800D403C 32B800FF */  andi       $t8, $s5, 0xFF
    /* E2FF0 800D4040 16000002 */  bnez       $s0, .L800D404C_E2FFC
    /* E2FF4 800D4044 00000000 */   nop
    /* E2FF8 800D4048 0007000D */  break      7
  .L800D404C_E2FFC:
    /* E2FFC 800D404C 2401FFFF */  addiu      $at, $zero, -0x1
    /* E3000 800D4050 16010004 */  bne        $s0, $at, .L800D4064_E3014
    /* E3004 800D4054 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* E3008 800D4058 14410002 */  bne        $v0, $at, .L800D4064_E3014
    /* E300C 800D405C 00000000 */   nop
    /* E3010 800D4060 0006000D */  break      6
  .L800D4064_E3014:
    /* E3014 800D4064 0300A825 */  or         $s5, $t8, $zero
    /* E3018 800D4068 0C000E38 */  jal        func_800038E0_44E0
    /* E301C 800D406C 00000000 */   nop
    /* E3020 800D4070 0050001A */  div        $zero, $v0, $s0
    /* E3024 800D4074 00009810 */  mfhi       $s3
    /* E3028 800D4078 26730082 */  addiu      $s3, $s3, 0x82
    /* E302C 800D407C 327900FF */  andi       $t9, $s3, 0xFF
    /* E3030 800D4080 16000002 */  bnez       $s0, .L800D408C_E303C
    /* E3034 800D4084 00000000 */   nop
    /* E3038 800D4088 0007000D */  break      7
  .L800D408C_E303C:
    /* E303C 800D408C 2401FFFF */  addiu      $at, $zero, -0x1
    /* E3040 800D4090 16010004 */  bne        $s0, $at, .L800D40A4_E3054
    /* E3044 800D4094 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* E3048 800D4098 14410002 */  bne        $v0, $at, .L800D40A4_E3054
    /* E304C 800D409C 00000000 */   nop
    /* E3050 800D40A0 0006000D */  break      6
  .L800D40A4_E3054:
    /* E3054 800D40A4 03209825 */  or         $s3, $t9, $zero
    /* E3058 800D40A8 0C000E38 */  jal        func_800038E0_44E0
    /* E305C 800D40AC 00000000 */   nop
    /* E3060 800D40B0 2412000F */  addiu      $s2, $zero, 0xF
    /* E3064 800D40B4 0052001A */  div        $zero, $v0, $s2
    /* E3068 800D40B8 87AC0032 */  lh         $t4, 0x32($sp)
    /* E306C 800D40BC 3C108006 */  lui        $s0, %hi(D_8005BB34)
    /* E3070 800D40C0 2610BB34 */  addiu      $s0, $s0, %lo(D_8005BB34)
    /* E3074 800D40C4 00005810 */  mfhi       $t3
    /* E3078 800D40C8 8E0F0000 */  lw         $t7, 0x0($s0)
    /* E307C 800D40CC 016C6821 */  addu       $t5, $t3, $t4
    /* E3080 800D40D0 25AE0014 */  addiu      $t6, $t5, 0x14
    /* E3084 800D40D4 16400002 */  bnez       $s2, .L800D40E0_E3090
    /* E3088 800D40D8 00000000 */   nop
    /* E308C 800D40DC 0007000D */  break      7
  .L800D40E0_E3090:
    /* E3090 800D40E0 2401FFFF */  addiu      $at, $zero, -0x1
    /* E3094 800D40E4 16410004 */  bne        $s2, $at, .L800D40F8_E30A8
    /* E3098 800D40E8 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* E309C 800D40EC 14410002 */  bne        $v0, $at, .L800D40F8_E30A8
    /* E30A0 800D40F0 00000000 */   nop
    /* E30A4 800D40F4 0006000D */  break      6
  .L800D40F8_E30A8:
    /* E30A8 800D40F8 A5EE0000 */  sh         $t6, 0x0($t7)
    /* E30AC 800D40FC 0C000E38 */  jal        func_800038E0_44E0
    /* E30B0 800D4100 00000000 */   nop
    /* E30B4 800D4104 0052001A */  div        $zero, $v0, $s2
    /* E30B8 800D4108 87B90036 */  lh         $t9, 0x36($sp)
    /* E30BC 800D410C 0000C010 */  mfhi       $t8
    /* E30C0 800D4110 8E0D0000 */  lw         $t5, 0x0($s0)
    /* E30C4 800D4114 03195821 */  addu       $t3, $t8, $t9
    /* E30C8 800D4118 256C0014 */  addiu      $t4, $t3, 0x14
    /* E30CC 800D411C 16400002 */  bnez       $s2, .L800D4128_E30D8
    /* E30D0 800D4120 00000000 */   nop
    /* E30D4 800D4124 0007000D */  break      7
  .L800D4128_E30D8:
    /* E30D8 800D4128 2401FFFF */  addiu      $at, $zero, -0x1
    /* E30DC 800D412C 16410004 */  bne        $s2, $at, .L800D4140_E30F0
    /* E30E0 800D4130 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* E30E4 800D4134 14410002 */  bne        $v0, $at, .L800D4140_E30F0
    /* E30E8 800D4138 00000000 */   nop
    /* E30EC 800D413C 0006000D */  break      6
  .L800D4140_E30F0:
    /* E30F0 800D4140 A5AC0002 */  sh         $t4, 0x2($t5)
    /* E30F4 800D4144 0C000E38 */  jal        func_800038E0_44E0
    /* E30F8 800D4148 00000000 */   nop
    /* E30FC 800D414C 0052001A */  div        $zero, $v0, $s2
    /* E3100 800D4150 87AF003A */  lh         $t7, 0x3A($sp)
    /* E3104 800D4154 8E0B0000 */  lw         $t3, 0x0($s0)
    /* E3108 800D4158 00007010 */  mfhi       $t6
    /* E310C 800D415C 01CFC021 */  addu       $t8, $t6, $t7
    /* E3110 800D4160 27190014 */  addiu      $t9, $t8, 0x14
    /* E3114 800D4164 A5790004 */  sh         $t9, 0x4($t3)
    /* E3118 800D4168 8E0C0000 */  lw         $t4, 0x0($s0)
    /* E311C 800D416C 16400002 */  bnez       $s2, .L800D4178_E3128
    /* E3120 800D4170 00000000 */   nop
    /* E3124 800D4174 0007000D */  break      7
  .L800D4178_E3128:
    /* E3128 800D4178 2401FFFF */  addiu      $at, $zero, -0x1
    /* E312C 800D417C 16410004 */  bne        $s2, $at, .L800D4190_E3140
    /* E3130 800D4180 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* E3134 800D4184 14410002 */  bne        $v0, $at, .L800D4190_E3140
    /* E3138 800D4188 00000000 */   nop
    /* E313C 800D418C 0006000D */  break      6
  .L800D4190_E3140:
    /* E3140 800D4190 A5800006 */  sh         $zero, 0x6($t4)
    /* E3144 800D4194 8E0D0000 */  lw         $t5, 0x0($s0)
    /* E3148 800D4198 A5A00008 */  sh         $zero, 0x8($t5)
    /* E314C 800D419C 8E0E0000 */  lw         $t6, 0x0($s0)
    /* E3150 800D41A0 A5C0000A */  sh         $zero, 0xA($t6)
    /* E3154 800D41A4 8E0F0000 */  lw         $t7, 0x0($s0)
    /* E3158 800D41A8 A1F4000C */  sb         $s4, 0xC($t7)
    /* E315C 800D41AC 8E180000 */  lw         $t8, 0x0($s0)
    /* E3160 800D41B0 A315000D */  sb         $s5, 0xD($t8)
    /* E3164 800D41B4 8E190000 */  lw         $t9, 0x0($s0)
    /* E3168 800D41B8 A333000E */  sb         $s3, 0xE($t9)
    /* E316C 800D41BC 8E0C0000 */  lw         $t4, 0x0($s0)
    /* E3170 800D41C0 93AB004B */  lbu        $t3, 0x4B($sp)
    /* E3174 800D41C4 A18B000F */  sb         $t3, 0xF($t4)
    /* E3178 800D41C8 8E0D0000 */  lw         $t5, 0x0($s0)
    /* E317C 800D41CC 25AE0010 */  addiu      $t6, $t5, 0x10
    /* E3180 800D41D0 0C000E38 */  jal        func_800038E0_44E0
    /* E3184 800D41D4 AE0E0000 */   sw        $t6, 0x0($s0)
    /* E3188 800D41D8 0052001A */  div        $zero, $v0, $s2
    /* E318C 800D41DC 87AF0032 */  lh         $t7, 0x32($sp)
    /* E3190 800D41E0 0000C010 */  mfhi       $t8
    /* E3194 800D41E4 8E0C0000 */  lw         $t4, 0x0($s0)
    /* E3198 800D41E8 01F8C823 */  subu       $t9, $t7, $t8
    /* E319C 800D41EC 272BFFEC */  addiu      $t3, $t9, -0x14
    /* E31A0 800D41F0 16400002 */  bnez       $s2, .L800D41FC_E31AC
    /* E31A4 800D41F4 00000000 */   nop
    /* E31A8 800D41F8 0007000D */  break      7
  .L800D41FC_E31AC:
    /* E31AC 800D41FC 2401FFFF */  addiu      $at, $zero, -0x1
    /* E31B0 800D4200 16410004 */  bne        $s2, $at, .L800D4214_E31C4
    /* E31B4 800D4204 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* E31B8 800D4208 14410002 */  bne        $v0, $at, .L800D4214_E31C4
    /* E31BC 800D420C 00000000 */   nop
    /* E31C0 800D4210 0006000D */  break      6
  .L800D4214_E31C4:
    /* E31C4 800D4214 A58B0000 */  sh         $t3, 0x0($t4)
    /* E31C8 800D4218 0C000E38 */  jal        func_800038E0_44E0
    /* E31CC 800D421C 00000000 */   nop
    /* E31D0 800D4220 0052001A */  div        $zero, $v0, $s2
    /* E31D4 800D4224 87AD0036 */  lh         $t5, 0x36($sp)
    /* E31D8 800D4228 00007010 */  mfhi       $t6
    /* E31DC 800D422C 8E190000 */  lw         $t9, 0x0($s0)
    /* E31E0 800D4230 01AE7823 */  subu       $t7, $t5, $t6
    /* E31E4 800D4234 25F8FFEC */  addiu      $t8, $t7, -0x14
    /* E31E8 800D4238 16400002 */  bnez       $s2, .L800D4244_E31F4
    /* E31EC 800D423C 00000000 */   nop
    /* E31F0 800D4240 0007000D */  break      7
  .L800D4244_E31F4:
    /* E31F4 800D4244 2401FFFF */  addiu      $at, $zero, -0x1
    /* E31F8 800D4248 16410004 */  bne        $s2, $at, .L800D425C_E320C
    /* E31FC 800D424C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* E3200 800D4250 14410002 */  bne        $v0, $at, .L800D425C_E320C
    /* E3204 800D4254 00000000 */   nop
    /* E3208 800D4258 0006000D */  break      6
  .L800D425C_E320C:
    /* E320C 800D425C A7380002 */  sh         $t8, 0x2($t9)
    /* E3210 800D4260 0C000E38 */  jal        func_800038E0_44E0
    /* E3214 800D4264 00000000 */   nop
    /* E3218 800D4268 0052001A */  div        $zero, $v0, $s2
    /* E321C 800D426C 87AB003A */  lh         $t3, 0x3A($sp)
    /* E3220 800D4270 8E0F0000 */  lw         $t7, 0x0($s0)
    /* E3224 800D4274 00006010 */  mfhi       $t4
    /* E3228 800D4278 016C6823 */  subu       $t5, $t3, $t4
    /* E322C 800D427C 25AEFFEC */  addiu      $t6, $t5, -0x14
    /* E3230 800D4280 A5EE0004 */  sh         $t6, 0x4($t7)
    /* E3234 800D4284 8E180000 */  lw         $t8, 0x0($s0)
    /* E3238 800D4288 240B0800 */  addiu      $t3, $zero, 0x800
    /* E323C 800D428C 16400002 */  bnez       $s2, .L800D4298_E3248
    /* E3240 800D4290 00000000 */   nop
    /* E3244 800D4294 0007000D */  break      7
  .L800D4298_E3248:
    /* E3248 800D4298 2401FFFF */  addiu      $at, $zero, -0x1
    /* E324C 800D429C 16410004 */  bne        $s2, $at, .L800D42B0_E3260
    /* E3250 800D42A0 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* E3254 800D42A4 14410002 */  bne        $v0, $at, .L800D42B0_E3260
    /* E3258 800D42A8 00000000 */   nop
    /* E325C 800D42AC 0006000D */  break      6
  .L800D42B0_E3260:
    /* E3260 800D42B0 A7000006 */  sh         $zero, 0x6($t8)
    /* E3264 800D42B4 8E190000 */  lw         $t9, 0x0($s0)
    /* E3268 800D42B8 A7200008 */  sh         $zero, 0x8($t9)
    /* E326C 800D42BC 8E0C0000 */  lw         $t4, 0x0($s0)
    /* E3270 800D42C0 A58B000A */  sh         $t3, 0xA($t4)
    /* E3274 800D42C4 8E0D0000 */  lw         $t5, 0x0($s0)
    /* E3278 800D42C8 A1B4000C */  sb         $s4, 0xC($t5)
    /* E327C 800D42CC 8E0E0000 */  lw         $t6, 0x0($s0)
    /* E3280 800D42D0 A1D5000D */  sb         $s5, 0xD($t6)
    /* E3284 800D42D4 8E0F0000 */  lw         $t7, 0x0($s0)
    /* E3288 800D42D8 A1F3000E */  sb         $s3, 0xE($t7)
    /* E328C 800D42DC 8E190000 */  lw         $t9, 0x0($s0)
    /* E3290 800D42E0 93B8004B */  lbu        $t8, 0x4B($sp)
    /* E3294 800D42E4 A338000F */  sb         $t8, 0xF($t9)
    /* E3298 800D42E8 8E0B0000 */  lw         $t3, 0x0($s0)
    /* E329C 800D42EC 256C0010 */  addiu      $t4, $t3, 0x10
    /* E32A0 800D42F0 0C000E38 */  jal        func_800038E0_44E0
    /* E32A4 800D42F4 AE0C0000 */   sw        $t4, 0x0($s0)
    /* E32A8 800D42F8 0052001A */  div        $zero, $v0, $s2
    /* E32AC 800D42FC 87AE003E */  lh         $t6, 0x3E($sp)
    /* E32B0 800D4300 00006810 */  mfhi       $t5
    /* E32B4 800D4304 8E190000 */  lw         $t9, 0x0($s0)
    /* E32B8 800D4308 01AE7821 */  addu       $t7, $t5, $t6
    /* E32BC 800D430C 25F80014 */  addiu      $t8, $t7, 0x14
    /* E32C0 800D4310 16400002 */  bnez       $s2, .L800D431C_E32CC
    /* E32C4 800D4314 00000000 */   nop
    /* E32C8 800D4318 0007000D */  break      7
  .L800D431C_E32CC:
    /* E32CC 800D431C 2401FFFF */  addiu      $at, $zero, -0x1
    /* E32D0 800D4320 16410004 */  bne        $s2, $at, .L800D4334_E32E4
    /* E32D4 800D4324 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* E32D8 800D4328 14410002 */  bne        $v0, $at, .L800D4334_E32E4
    /* E32DC 800D432C 00000000 */   nop
    /* E32E0 800D4330 0006000D */  break      6
  .L800D4334_E32E4:
    /* E32E4 800D4334 A7380000 */  sh         $t8, 0x0($t9)
    /* E32E8 800D4338 0C000E38 */  jal        func_800038E0_44E0
    /* E32EC 800D433C 00000000 */   nop
    /* E32F0 800D4340 0052001A */  div        $zero, $v0, $s2
    /* E32F4 800D4344 87AC0042 */  lh         $t4, 0x42($sp)
    /* E32F8 800D4348 00005810 */  mfhi       $t3
    /* E32FC 800D434C 8E0F0000 */  lw         $t7, 0x0($s0)
    /* E3300 800D4350 016C6821 */  addu       $t5, $t3, $t4
    /* E3304 800D4354 25AE0014 */  addiu      $t6, $t5, 0x14
    /* E3308 800D4358 16400002 */  bnez       $s2, .L800D4364_E3314
    /* E330C 800D435C 00000000 */   nop
    /* E3310 800D4360 0007000D */  break      7
  .L800D4364_E3314:
    /* E3314 800D4364 2401FFFF */  addiu      $at, $zero, -0x1
    /* E3318 800D4368 16410004 */  bne        $s2, $at, .L800D437C_E332C
    /* E331C 800D436C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* E3320 800D4370 14410002 */  bne        $v0, $at, .L800D437C_E332C
    /* E3324 800D4374 00000000 */   nop
    /* E3328 800D4378 0006000D */  break      6
  .L800D437C_E332C:
    /* E332C 800D437C A5EE0002 */  sh         $t6, 0x2($t7)
    /* E3330 800D4380 0C000E38 */  jal        func_800038E0_44E0
    /* E3334 800D4384 00000000 */   nop
    /* E3338 800D4388 0052001A */  div        $zero, $v0, $s2
    /* E333C 800D438C 87B90046 */  lh         $t9, 0x46($sp)
    /* E3340 800D4390 8E0D0000 */  lw         $t5, 0x0($s0)
    /* E3344 800D4394 0000C010 */  mfhi       $t8
    /* E3348 800D4398 03195821 */  addu       $t3, $t8, $t9
    /* E334C 800D439C 256C0014 */  addiu      $t4, $t3, 0x14
    /* E3350 800D43A0 A5AC0004 */  sh         $t4, 0x4($t5)
    /* E3354 800D43A4 8E0E0000 */  lw         $t6, 0x0($s0)
    /* E3358 800D43A8 24030800 */  addiu      $v1, $zero, 0x800
    /* E335C 800D43AC 16400002 */  bnez       $s2, .L800D43B8_E3368
    /* E3360 800D43B0 00000000 */   nop
    /* E3364 800D43B4 0007000D */  break      7
  .L800D43B8_E3368:
    /* E3368 800D43B8 2401FFFF */  addiu      $at, $zero, -0x1
    /* E336C 800D43BC 16410004 */  bne        $s2, $at, .L800D43D0_E3380
    /* E3370 800D43C0 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* E3374 800D43C4 14410002 */  bne        $v0, $at, .L800D43D0_E3380
    /* E3378 800D43C8 00000000 */   nop
    /* E337C 800D43CC 0006000D */  break      6
  .L800D43D0_E3380:
    /* E3380 800D43D0 A5C00006 */  sh         $zero, 0x6($t6)
    /* E3384 800D43D4 8E0F0000 */  lw         $t7, 0x0($s0)
    /* E3388 800D43D8 A5E30008 */  sh         $v1, 0x8($t7)
    /* E338C 800D43DC 8E180000 */  lw         $t8, 0x0($s0)
    /* E3390 800D43E0 A703000A */  sh         $v1, 0xA($t8)
    /* E3394 800D43E4 8E190000 */  lw         $t9, 0x0($s0)
    /* E3398 800D43E8 A334000C */  sb         $s4, 0xC($t9)
    /* E339C 800D43EC 8E0B0000 */  lw         $t3, 0x0($s0)
    /* E33A0 800D43F0 A175000D */  sb         $s5, 0xD($t3)
    /* E33A4 800D43F4 8E0C0000 */  lw         $t4, 0x0($s0)
    /* E33A8 800D43F8 A193000E */  sb         $s3, 0xE($t4)
    /* E33AC 800D43FC 8E0E0000 */  lw         $t6, 0x0($s0)
    /* E33B0 800D4400 93AD004B */  lbu        $t5, 0x4B($sp)
    /* E33B4 800D4404 A1CD000F */  sb         $t5, 0xF($t6)
    /* E33B8 800D4408 8E0F0000 */  lw         $t7, 0x0($s0)
    /* E33BC 800D440C 25F80010 */  addiu      $t8, $t7, 0x10
    /* E33C0 800D4410 0C000E38 */  jal        func_800038E0_44E0
    /* E33C4 800D4414 AE180000 */   sw        $t8, 0x0($s0)
    /* E33C8 800D4418 0052001A */  div        $zero, $v0, $s2
    /* E33CC 800D441C 87B9003E */  lh         $t9, 0x3E($sp)
    /* E33D0 800D4420 00005810 */  mfhi       $t3
    /* E33D4 800D4424 8E0E0000 */  lw         $t6, 0x0($s0)
    /* E33D8 800D4428 032B6023 */  subu       $t4, $t9, $t3
    /* E33DC 800D442C 258DFFEC */  addiu      $t5, $t4, -0x14
    /* E33E0 800D4430 16400002 */  bnez       $s2, .L800D443C_E33EC
    /* E33E4 800D4434 00000000 */   nop
    /* E33E8 800D4438 0007000D */  break      7
  .L800D443C_E33EC:
    /* E33EC 800D443C 2401FFFF */  addiu      $at, $zero, -0x1
    /* E33F0 800D4440 16410004 */  bne        $s2, $at, .L800D4454_E3404
    /* E33F4 800D4444 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* E33F8 800D4448 14410002 */  bne        $v0, $at, .L800D4454_E3404
    /* E33FC 800D444C 00000000 */   nop
    /* E3400 800D4450 0006000D */  break      6
  .L800D4454_E3404:
    /* E3404 800D4454 A5CD0000 */  sh         $t5, 0x0($t6)
    /* E3408 800D4458 0C000E38 */  jal        func_800038E0_44E0
    /* E340C 800D445C 00000000 */   nop
    /* E3410 800D4460 0052001A */  div        $zero, $v0, $s2
    /* E3414 800D4464 87AF0042 */  lh         $t7, 0x42($sp)
    /* E3418 800D4468 0000C010 */  mfhi       $t8
    /* E341C 800D446C 8E0C0000 */  lw         $t4, 0x0($s0)
    /* E3420 800D4470 01F8C823 */  subu       $t9, $t7, $t8
    /* E3424 800D4474 272BFFEC */  addiu      $t3, $t9, -0x14
    /* E3428 800D4478 16400002 */  bnez       $s2, .L800D4484_E3434
    /* E342C 800D447C 00000000 */   nop
    /* E3430 800D4480 0007000D */  break      7
  .L800D4484_E3434:
    /* E3434 800D4484 2401FFFF */  addiu      $at, $zero, -0x1
    /* E3438 800D4488 16410004 */  bne        $s2, $at, .L800D449C_E344C
    /* E343C 800D448C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* E3440 800D4490 14410002 */  bne        $v0, $at, .L800D449C_E344C
    /* E3444 800D4494 00000000 */   nop
    /* E3448 800D4498 0006000D */  break      6
  .L800D449C_E344C:
    /* E344C 800D449C A58B0002 */  sh         $t3, 0x2($t4)
    /* E3450 800D44A0 0C000E38 */  jal        func_800038E0_44E0
    /* E3454 800D44A4 00000000 */   nop
    /* E3458 800D44A8 0052001A */  div        $zero, $v0, $s2
    /* E345C 800D44AC 87AD0046 */  lh         $t5, 0x46($sp)
    /* E3460 800D44B0 8E190000 */  lw         $t9, 0x0($s0)
    /* E3464 800D44B4 00007010 */  mfhi       $t6
    /* E3468 800D44B8 01AE7823 */  subu       $t7, $t5, $t6
    /* E346C 800D44BC 25F8FFEC */  addiu      $t8, $t7, -0x14
    /* E3470 800D44C0 A7380004 */  sh         $t8, 0x4($t9)
    /* E3474 800D44C4 8E0B0000 */  lw         $t3, 0x0($s0)
    /* E3478 800D44C8 240C0800 */  addiu      $t4, $zero, 0x800
    /* E347C 800D44CC 16400002 */  bnez       $s2, .L800D44D8_E3488
    /* E3480 800D44D0 00000000 */   nop
    /* E3484 800D44D4 0007000D */  break      7
  .L800D44D8_E3488:
    /* E3488 800D44D8 2401FFFF */  addiu      $at, $zero, -0x1
    /* E348C 800D44DC 16410004 */  bne        $s2, $at, .L800D44F0_E34A0
    /* E3490 800D44E0 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* E3494 800D44E4 14410002 */  bne        $v0, $at, .L800D44F0_E34A0
    /* E3498 800D44E8 00000000 */   nop
    /* E349C 800D44EC 0006000D */  break      6
  .L800D44F0_E34A0:
    /* E34A0 800D44F0 A5600006 */  sh         $zero, 0x6($t3)
    /* E34A4 800D44F4 8E0D0000 */  lw         $t5, 0x0($s0)
    /* E34A8 800D44F8 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* E34AC 800D44FC 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* E34B0 800D4500 A5AC0008 */  sh         $t4, 0x8($t5)
    /* E34B4 800D4504 8E0E0000 */  lw         $t6, 0x0($s0)
    /* E34B8 800D4508 A5C0000A */  sh         $zero, 0xA($t6)
    /* E34BC 800D450C 8E0F0000 */  lw         $t7, 0x0($s0)
    /* E34C0 800D4510 A1F4000C */  sb         $s4, 0xC($t7)
    /* E34C4 800D4514 8E180000 */  lw         $t8, 0x0($s0)
    /* E34C8 800D4518 A315000D */  sb         $s5, 0xD($t8)
    /* E34CC 800D451C 8E190000 */  lw         $t9, 0x0($s0)
    /* E34D0 800D4520 3C180400 */  lui        $t8, (0x400103F >> 16)
    /* E34D4 800D4524 3718103F */  ori        $t8, $t8, (0x400103F & 0xFFFF)
    /* E34D8 800D4528 A333000E */  sb         $s3, 0xE($t9)
    /* E34DC 800D452C 8E0C0000 */  lw         $t4, 0x0($s0)
    /* E34E0 800D4530 93AB004B */  lbu        $t3, 0x4B($sp)
    /* E34E4 800D4534 A18B000F */  sb         $t3, 0xF($t4)
    /* E34E8 800D4538 8E0D0000 */  lw         $t5, 0x0($s0)
    /* E34EC 800D453C 8E230000 */  lw         $v1, 0x0($s1)
    /* E34F0 800D4540 25AE0010 */  addiu      $t6, $t5, 0x10
    /* E34F4 800D4544 246F0008 */  addiu      $t7, $v1, 0x8
    /* E34F8 800D4548 AE0E0000 */  sw         $t6, 0x0($s0)
    /* E34FC 800D454C AE2F0000 */  sw         $t7, 0x0($s1)
    /* E3500 800D4550 AC780000 */  sw         $t8, 0x0($v1)
    /* E3504 800D4554 8E190000 */  lw         $t9, 0x0($s0)
    /* E3508 800D4558 00602025 */  or         $a0, $v1, $zero
    /* E350C 800D455C 3C0F0004 */  lui        $t7, (0x40602 >> 16)
    /* E3510 800D4560 272BFFC0 */  addiu      $t3, $t9, -0x40
    /* E3514 800D4564 01616024 */  and        $t4, $t3, $at
    /* E3518 800D4568 AC6C0004 */  sw         $t4, 0x4($v1)
    /* E351C 800D456C 8E230000 */  lw         $v1, 0x0($s1)
    /* E3520 800D4570 3C0EB100 */  lui        $t6, (0xB1000206 >> 16)
    /* E3524 800D4574 35CE0206 */  ori        $t6, $t6, (0xB1000206 & 0xFFFF)
    /* E3528 800D4578 246D0008 */  addiu      $t5, $v1, 0x8
    /* E352C 800D457C AE2D0000 */  sw         $t5, 0x0($s1)
    /* E3530 800D4580 35EF0602 */  ori        $t7, $t7, (0x40602 & 0xFFFF)
    /* E3534 800D4584 AC6F0004 */  sw         $t7, 0x4($v1)
    /* E3538 800D4588 AC6E0000 */  sw         $t6, 0x0($v1)
    /* E353C 800D458C 8FBF002C */  lw         $ra, 0x2C($sp)
    /* E3540 800D4590 8FB50028 */  lw         $s5, 0x28($sp)
    /* E3544 800D4594 8FB40024 */  lw         $s4, 0x24($sp)
    /* E3548 800D4598 8FB30020 */  lw         $s3, 0x20($sp)
    /* E354C 800D459C 8FB2001C */  lw         $s2, 0x1C($sp)
    /* E3550 800D45A0 8FB10018 */  lw         $s1, 0x18($sp)
    /* E3554 800D45A4 8FB00014 */  lw         $s0, 0x14($sp)
    /* E3558 800D45A8 27BD0030 */  addiu      $sp, $sp, 0x30
    /* E355C 800D45AC 03E00008 */  jr         $ra
    /* E3560 800D45B0 00602825 */   or        $a1, $v1, $zero
endlabel func_800D3E3C_E2DEC
