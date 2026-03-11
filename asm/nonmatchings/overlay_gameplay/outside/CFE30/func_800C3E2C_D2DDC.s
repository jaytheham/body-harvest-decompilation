nonmatching func_800C3E2C_D2DDC, 0x448

glabel func_800C3E2C_D2DDC
    /* D2DDC 800C3E2C 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* D2DE0 800C3E30 AFB60038 */  sw         $s6, 0x38($sp)
    /* D2DE4 800C3E34 3C168015 */  lui        $s6, %hi(D_8015428E)
    /* D2DE8 800C3E38 86D6428E */  lh         $s6, %lo(D_8015428E)($s6)
    /* D2DEC 800C3E3C 2405FFFB */  addiu      $a1, $zero, -0x5
    /* D2DF0 800C3E40 AFBF0044 */  sw         $ra, 0x44($sp)
    /* D2DF4 800C3E44 AFBE0040 */  sw         $fp, 0x40($sp)
    /* D2DF8 800C3E48 AFB7003C */  sw         $s7, 0x3C($sp)
    /* D2DFC 800C3E4C AFB50034 */  sw         $s5, 0x34($sp)
    /* D2E00 800C3E50 AFB40030 */  sw         $s4, 0x30($sp)
    /* D2E04 800C3E54 AFB3002C */  sw         $s3, 0x2C($sp)
    /* D2E08 800C3E58 AFB20028 */  sw         $s2, 0x28($sp)
    /* D2E0C 800C3E5C AFB10024 */  sw         $s1, 0x24($sp)
    /* D2E10 800C3E60 12C50003 */  beq        $s6, $a1, .L800C3E70_D2E20
    /* D2E14 800C3E64 AFB00020 */   sw        $s0, 0x20($sp)
    /* D2E18 800C3E68 2406FFFA */  addiu      $a2, $zero, -0x6
    /* D2E1C 800C3E6C 16C60005 */  bne        $s6, $a2, .L800C3E84_D2E34
  .L800C3E70_D2E20:
    /* D2E20 800C3E70 2404000C */   addiu     $a0, $zero, 0xC
    /* D2E24 800C3E74 0C030506 */  jal        func_800C1418_D03C8
    /* D2E28 800C3E78 24050001 */   addiu     $a1, $zero, 0x1
    /* D2E2C 800C3E7C 100000F2 */  b          .L800C4248_D31F8
    /* D2E30 800C3E80 8FBF0044 */   lw        $ra, 0x44($sp)
  .L800C3E84_D2E34:
    /* D2E34 800C3E84 52C500F0 */  beql       $s6, $a1, .L800C4248_D31F8
    /* D2E38 800C3E88 8FBF0044 */   lw        $ra, 0x44($sp)
    /* D2E3C 800C3E8C 12C600ED */  beq        $s6, $a2, .L800C4244_D31F4
    /* D2E40 800C3E90 2404001C */   addiu     $a0, $zero, 0x1C
  .L800C3E94_D2E44:
    /* D2E44 800C3E94 02C40019 */  multu      $s6, $a0
    /* D2E48 800C3E98 3C038015 */  lui        $v1, %hi(D_80154318)
    /* D2E4C 800C3E9C 24634318 */  addiu      $v1, $v1, %lo(D_80154318)
    /* D2E50 800C3EA0 24010010 */  addiu      $at, $zero, 0x10
    /* D2E54 800C3EA4 00007012 */  mflo       $t6
    /* D2E58 800C3EA8 006EA021 */  addu       $s4, $v1, $t6
    /* D2E5C 800C3EAC 86820004 */  lh         $v0, 0x4($s4)
    /* D2E60 800C3EB0 26920008 */  addiu      $s2, $s4, 0x8
    /* D2E64 800C3EB4 0240F025 */  or         $fp, $s2, $zero
    /* D2E68 800C3EB8 00440019 */  multu      $v0, $a0
    /* D2E6C 800C3EBC 00007812 */  mflo       $t7
    /* D2E70 800C3EC0 006F9821 */  addu       $s3, $v1, $t7
    /* D2E74 800C3EC4 9278000C */  lbu        $t8, 0xC($s3)
    /* D2E78 800C3EC8 27190001 */  addiu      $t9, $t8, 0x1
    /* D2E7C 800C3ECC 332900FF */  andi       $t1, $t9, 0xFF
    /* D2E80 800C3ED0 15210002 */  bne        $t1, $at, .L800C3EDC_D2E8C
    /* D2E84 800C3ED4 A279000C */   sb        $t9, 0xC($s3)
    /* D2E88 800C3ED8 A260000C */  sb         $zero, 0xC($s3)
  .L800C3EDC_D2E8C:
    /* D2E8C 800C3EDC 0C000E38 */  jal        func_800038E0_44E0
    /* D2E90 800C3EE0 26700008 */   addiu     $s0, $s3, 0x8
    /* D2E94 800C3EE4 04410004 */  bgez       $v0, .L800C3EF8_D2EA8
    /* D2E98 800C3EE8 304A0007 */   andi      $t2, $v0, 0x7
    /* D2E9C 800C3EEC 11400002 */  beqz       $t2, .L800C3EF8_D2EA8
    /* D2EA0 800C3EF0 00000000 */   nop
    /* D2EA4 800C3EF4 254AFFF8 */  addiu      $t2, $t2, -0x8
  .L800C3EF8_D2EA8:
    /* D2EA8 800C3EF8 55400081 */  bnel       $t2, $zero, .L800C4100_D30B0
    /* D2EAC 800C3EFC 86440000 */   lh        $a0, 0x0($s2)
    /* D2EB0 800C3F00 0C000E38 */  jal        func_800038E0_44E0
    /* D2EB4 800C3F04 00000000 */   nop
    /* D2EB8 800C3F08 0C000E38 */  jal        func_800038E0_44E0
    /* D2EBC 800C3F0C 3055FFFF */   andi      $s5, $v0, 0xFFFF
    /* D2EC0 800C3F10 0C000E38 */  jal        func_800038E0_44E0
    /* D2EC4 800C3F14 3051FFFF */   andi      $s1, $v0, 0xFFFF
    /* D2EC8 800C3F18 86830002 */  lh         $v1, 0x2($s4)
    /* D2ECC 800C3F1C 864B0000 */  lh         $t3, 0x0($s2)
    /* D2ED0 800C3F20 864A0002 */  lh         $t2, 0x2($s2)
    /* D2ED4 800C3F24 02A3001A */  div        $zero, $s5, $v1
    /* D2ED8 800C3F28 04610003 */  bgez       $v1, .L800C3F38_D2EE8
    /* D2EDC 800C3F2C 00034083 */   sra       $t0, $v1, 2
    /* D2EE0 800C3F30 24610003 */  addiu      $at, $v1, 0x3
    /* D2EE4 800C3F34 00014083 */  sra        $t0, $at, 2
  .L800C3F38_D2EE8:
    /* D2EE8 800C3F38 14600002 */  bnez       $v1, .L800C3F44_D2EF4
    /* D2EEC 800C3F3C 00000000 */   nop
    /* D2EF0 800C3F40 0007000D */  break      7
  .L800C3F44_D2EF4:
    /* D2EF4 800C3F44 2401FFFF */  addiu      $at, $zero, -0x1
    /* D2EF8 800C3F48 14610004 */  bne        $v1, $at, .L800C3F5C_D2F0C
    /* D2EFC 800C3F4C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D2F00 800C3F50 16A10002 */  bne        $s5, $at, .L800C3F5C_D2F0C
    /* D2F04 800C3F54 00000000 */   nop
    /* D2F08 800C3F58 0006000D */  break      6
  .L800C3F5C_D2F0C:
    /* D2F0C 800C3F5C 00006010 */  mfhi       $t4
    /* D2F10 800C3F60 2407000C */  addiu      $a3, $zero, 0xC
    /* D2F14 800C3F64 05810003 */  bgez       $t4, .L800C3F74_D2F24
    /* D2F18 800C3F68 000C6843 */   sra       $t5, $t4, 1
    /* D2F1C 800C3F6C 25810001 */  addiu      $at, $t4, 0x1
    /* D2F20 800C3F70 00016843 */  sra        $t5, $at, 1
  .L800C3F74_D2F24:
    /* D2F24 800C3F74 016D7021 */  addu       $t6, $t3, $t5
    /* D2F28 800C3F78 01C82023 */  subu       $a0, $t6, $t0
    /* D2F2C 800C3F7C 00047C00 */  sll        $t7, $a0, 16
    /* D2F30 800C3F80 000FC403 */  sra        $t8, $t7, 16
    /* D2F34 800C3F84 864D0004 */  lh         $t5, 0x4($s2)
    /* D2F38 800C3F88 03002025 */  or         $a0, $t8, $zero
    /* D2F3C 800C3F8C 04610003 */  bgez       $v1, .L800C3F9C_D2F4C
    /* D2F40 800C3F90 0003C843 */   sra       $t9, $v1, 1
    /* D2F44 800C3F94 24610001 */  addiu      $at, $v1, 0x1
    /* D2F48 800C3F98 0001C843 */  sra        $t9, $at, 1
  .L800C3F9C_D2F4C:
    /* D2F4C 800C3F9C 0239001A */  div        $zero, $s1, $t9
    /* D2F50 800C3FA0 00004810 */  mfhi       $t1
    /* D2F54 800C3FA4 012A2821 */  addu       $a1, $t1, $t2
    /* D2F58 800C3FA8 17200002 */  bnez       $t9, .L800C3FB4_D2F64
    /* D2F5C 800C3FAC 00000000 */   nop
    /* D2F60 800C3FB0 0007000D */  break      7
  .L800C3FB4_D2F64:
    /* D2F64 800C3FB4 2401FFFF */  addiu      $at, $zero, -0x1
    /* D2F68 800C3FB8 17210004 */  bne        $t9, $at, .L800C3FCC_D2F7C
    /* D2F6C 800C3FBC 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D2F70 800C3FC0 16210002 */  bne        $s1, $at, .L800C3FCC_D2F7C
    /* D2F74 800C3FC4 00000000 */   nop
    /* D2F78 800C3FC8 0006000D */  break      6
  .L800C3FCC_D2F7C:
    /* D2F7C 800C3FCC 0043001A */  div        $zero, $v0, $v1
    /* D2F80 800C3FD0 00007010 */  mfhi       $t6
    /* D2F84 800C3FD4 00056400 */  sll        $t4, $a1, 16
    /* D2F88 800C3FD8 000C5C03 */  sra        $t3, $t4, 16
    /* D2F8C 800C3FDC 01602825 */  or         $a1, $t3, $zero
    /* D2F90 800C3FE0 14600002 */  bnez       $v1, .L800C3FEC_D2F9C
    /* D2F94 800C3FE4 00000000 */   nop
    /* D2F98 800C3FE8 0007000D */  break      7
  .L800C3FEC_D2F9C:
    /* D2F9C 800C3FEC 2401FFFF */  addiu      $at, $zero, -0x1
    /* D2FA0 800C3FF0 14610004 */  bne        $v1, $at, .L800C4004_D2FB4
    /* D2FA4 800C3FF4 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D2FA8 800C3FF8 14410002 */  bne        $v0, $at, .L800C4004_D2FB4
    /* D2FAC 800C3FFC 00000000 */   nop
    /* D2FB0 800C4000 0006000D */  break      6
  .L800C4004_D2FB4:
    /* D2FB4 800C4004 AFA80010 */  sw         $t0, 0x10($sp)
    /* D2FB8 800C4008 05C10003 */  bgez       $t6, .L800C4018_D2FC8
    /* D2FBC 800C400C 000E7843 */   sra       $t7, $t6, 1
    /* D2FC0 800C4010 25C10001 */  addiu      $at, $t6, 0x1
    /* D2FC4 800C4014 00017843 */  sra        $t7, $at, 1
  .L800C4018_D2FC8:
    /* D2FC8 800C4018 01AFC021 */  addu       $t8, $t5, $t7
    /* D2FCC 800C401C 03083023 */  subu       $a2, $t8, $t0
    /* D2FD0 800C4020 0006CC00 */  sll        $t9, $a2, 16
    /* D2FD4 800C4024 0C0376D8 */  jal        func_800DDB60_ECB10
    /* D2FD8 800C4028 00193403 */   sra       $a2, $t9, 16
    /* D2FDC 800C402C 0C000E38 */  jal        func_800038E0_44E0
    /* D2FE0 800C4030 305700FF */   andi      $s7, $v0, 0xFF
    /* D2FE4 800C4034 0C000E38 */  jal        func_800038E0_44E0
    /* D2FE8 800C4038 3055FFFF */   andi      $s5, $v0, 0xFFFF
    /* D2FEC 800C403C 0C000E38 */  jal        func_800038E0_44E0
    /* D2FF0 800C4040 3051FFFF */   andi      $s1, $v0, 0xFFFF
    /* D2FF4 800C4044 24030032 */  addiu      $v1, $zero, 0x32
    /* D2FF8 800C4048 02A3001A */  div        $zero, $s5, $v1
    /* D2FFC 800C404C 00002810 */  mfhi       $a1
    /* D3000 800C4050 24A50046 */  addiu      $a1, $a1, 0x46
    /* D3004 800C4054 30AA00FF */  andi       $t2, $a1, 0xFF
    /* D3008 800C4058 0223001A */  div        $zero, $s1, $v1
    /* D300C 800C405C 00003010 */  mfhi       $a2
    /* D3010 800C4060 24C60046 */  addiu      $a2, $a2, 0x46
    /* D3014 800C4064 30CC00FF */  andi       $t4, $a2, 0xFF
    /* D3018 800C4068 0043001A */  div        $zero, $v0, $v1
    /* D301C 800C406C 00003810 */  mfhi       $a3
    /* D3020 800C4070 24E70046 */  addiu      $a3, $a3, 0x46
    /* D3024 800C4074 30EB00FF */  andi       $t3, $a3, 0xFF
    /* D3028 800C4078 01603825 */  or         $a3, $t3, $zero
    /* D302C 800C407C 01803025 */  or         $a2, $t4, $zero
    /* D3030 800C4080 01402825 */  or         $a1, $t2, $zero
    /* D3034 800C4084 32E400FF */  andi       $a0, $s7, 0xFF
    /* D3038 800C4088 14600002 */  bnez       $v1, .L800C4094_D3044
    /* D303C 800C408C 00000000 */   nop
    /* D3040 800C4090 0007000D */  break      7
  .L800C4094_D3044:
    /* D3044 800C4094 2401FFFF */  addiu      $at, $zero, -0x1
    /* D3048 800C4098 14610004 */  bne        $v1, $at, .L800C40AC_D305C
    /* D304C 800C409C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D3050 800C40A0 16A10002 */  bne        $s5, $at, .L800C40AC_D305C
    /* D3054 800C40A4 00000000 */   nop
    /* D3058 800C40A8 0006000D */  break      6
  .L800C40AC_D305C:
    /* D305C 800C40AC 14600002 */  bnez       $v1, .L800C40B8_D3068
    /* D3060 800C40B0 00000000 */   nop
    /* D3064 800C40B4 0007000D */  break      7
  .L800C40B8_D3068:
    /* D3068 800C40B8 2401FFFF */  addiu      $at, $zero, -0x1
    /* D306C 800C40BC 14610004 */  bne        $v1, $at, .L800C40D0_D3080
    /* D3070 800C40C0 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D3074 800C40C4 16210002 */  bne        $s1, $at, .L800C40D0_D3080
    /* D3078 800C40C8 00000000 */   nop
    /* D307C 800C40CC 0006000D */  break      6
  .L800C40D0_D3080:
    /* D3080 800C40D0 14600002 */  bnez       $v1, .L800C40DC_D308C
    /* D3084 800C40D4 00000000 */   nop
    /* D3088 800C40D8 0007000D */  break      7
  .L800C40DC_D308C:
    /* D308C 800C40DC 2401FFFF */  addiu      $at, $zero, -0x1
    /* D3090 800C40E0 14610004 */  bne        $v1, $at, .L800C40F4_D30A4
    /* D3094 800C40E4 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D3098 800C40E8 14410002 */  bne        $v0, $at, .L800C40F4_D30A4
    /* D309C 800C40EC 00000000 */   nop
    /* D30A0 800C40F0 0006000D */  break      6
  .L800C40F4_D30A4:
    /* D30A4 800C40F4 0C037764 */  jal        func_800DDD90_ECD40
    /* D30A8 800C40F8 00000000 */   nop
    /* D30AC 800C40FC 86440000 */  lh         $a0, 0x0($s2)
  .L800C4100_D30B0:
    /* D30B0 800C4100 86450002 */  lh         $a1, 0x2($s2)
    /* D30B4 800C4104 86460004 */  lh         $a2, 0x4($s2)
    /* D30B8 800C4108 AFB60010 */  sw         $s6, 0x10($sp)
    /* D30BC 800C410C 0C04DCDA */  jal        func_80137368_146318
    /* D30C0 800C4110 24070001 */   addiu     $a3, $zero, 0x1
    /* D30C4 800C4114 96030000 */  lhu        $v1, 0x0($s0)
    /* D30C8 800C4118 3401FFFF */  ori        $at, $zero, 0xFFFF
    /* D30CC 800C411C 10610043 */  beq        $v1, $at, .L800C422C_D31DC
    /* D30D0 800C4120 00601025 */   or        $v0, $v1, $zero
    /* D30D4 800C4124 920E0005 */  lbu        $t6, 0x5($s0)
    /* D30D8 800C4128 28410008 */  slti       $at, $v0, 0x8
    /* D30DC 800C412C 19C00019 */  blez       $t6, .L800C4194_D3144
    /* D30E0 800C4130 00000000 */   nop
    /* D30E4 800C4134 860F0002 */  lh         $t7, 0x2($s0)
    /* D30E8 800C4138 868D0002 */  lh         $t5, 0x2($s4)
    /* D30EC 800C413C 05E10003 */  bgez       $t7, .L800C414C_D30FC
    /* D30F0 800C4140 000FC0C3 */   sra       $t8, $t7, 3
    /* D30F4 800C4144 25E10007 */  addiu      $at, $t7, 0x7
    /* D30F8 800C4148 0001C0C3 */  sra        $t8, $at, 3
  .L800C414C_D30FC:
    /* D30FC 800C414C 01B8C821 */  addu       $t9, $t5, $t8
    /* D3100 800C4150 A6990002 */  sh         $t9, 0x2($s4)
    /* D3104 800C4154 860A0002 */  lh         $t2, 0x2($s0)
    /* D3108 800C4158 87C90002 */  lh         $t1, 0x2($fp)
    /* D310C 800C415C 05410003 */  bgez       $t2, .L800C416C_D311C
    /* D3110 800C4160 000A6103 */   sra       $t4, $t2, 4
    /* D3114 800C4164 2541000F */  addiu      $at, $t2, 0xF
    /* D3118 800C4168 00016103 */  sra        $t4, $at, 4
  .L800C416C_D311C:
    /* D311C 800C416C 012C5821 */  addu       $t3, $t1, $t4
    /* D3120 800C4170 A7CB0002 */  sh         $t3, 0x2($fp)
    /* D3124 800C4174 920E0005 */  lbu        $t6, 0x5($s0)
    /* D3128 800C4178 960D0000 */  lhu        $t5, 0x0($s0)
    /* D312C 800C417C 25CFFFFF */  addiu      $t7, $t6, -0x1
    /* D3130 800C4180 25B8FFFF */  addiu      $t8, $t5, -0x1
    /* D3134 800C4184 A20F0005 */  sb         $t7, 0x5($s0)
    /* D3138 800C4188 A6180000 */  sh         $t8, 0x0($s0)
    /* D313C 800C418C 10000028 */  b          .L800C4230_D31E0
    /* D3140 800C4190 86760004 */   lh        $s6, 0x4($s3)
  .L800C4194_D3144:
    /* D3144 800C4194 14200004 */  bnez       $at, .L800C41A8_D3158
    /* D3148 800C4198 2479FFFF */   addiu     $t9, $v1, -0x1
    /* D314C 800C419C A6190000 */  sh         $t9, 0x0($s0)
    /* D3150 800C41A0 10000023 */  b          .L800C4230_D31E0
    /* D3154 800C41A4 86760004 */   lh        $s6, 0x4($s3)
  .L800C41A8_D3158:
    /* D3158 800C41A8 1440000B */  bnez       $v0, .L800C41D8_D3188
    /* D315C 800C41AC 00162400 */   sll       $a0, $s6, 16
    /* D3160 800C41B0 00045403 */  sra        $t2, $a0, 16
    /* D3164 800C41B4 86700004 */  lh         $s0, 0x4($s3)
    /* D3168 800C41B8 01402025 */  or         $a0, $t2, $zero
    /* D316C 800C41BC 2405000C */  addiu      $a1, $zero, 0xC
    /* D3170 800C41C0 0C030789 */  jal        func_800C1E24_D0DD4
    /* D3174 800C41C4 24060001 */   addiu     $a2, $zero, 0x1
    /* D3178 800C41C8 0010B400 */  sll        $s6, $s0, 16
    /* D317C 800C41CC 00164C03 */  sra        $t1, $s6, 16
    /* D3180 800C41D0 10000017 */  b          .L800C4230_D31E0
    /* D3184 800C41D4 0120B025 */   or        $s6, $t1, $zero
  .L800C41D8_D3188:
    /* D3188 800C41D8 860B0002 */  lh         $t3, 0x2($s0)
    /* D318C 800C41DC 868C0002 */  lh         $t4, 0x2($s4)
    /* D3190 800C41E0 05610003 */  bgez       $t3, .L800C41F0_D31A0
    /* D3194 800C41E4 000B70C3 */   sra       $t6, $t3, 3
    /* D3198 800C41E8 25610007 */  addiu      $at, $t3, 0x7
    /* D319C 800C41EC 000170C3 */  sra        $t6, $at, 3
  .L800C41F0_D31A0:
    /* D31A0 800C41F0 018E7823 */  subu       $t7, $t4, $t6
    /* D31A4 800C41F4 A68F0002 */  sh         $t7, 0x2($s4)
    /* D31A8 800C41F8 86180002 */  lh         $t8, 0x2($s0)
    /* D31AC 800C41FC 87CD0002 */  lh         $t5, 0x2($fp)
    /* D31B0 800C4200 07010003 */  bgez       $t8, .L800C4210_D31C0
    /* D31B4 800C4204 0018C903 */   sra       $t9, $t8, 4
    /* D31B8 800C4208 2701000F */  addiu      $at, $t8, 0xF
    /* D31BC 800C420C 0001C903 */  sra        $t9, $at, 4
  .L800C4210_D31C0:
    /* D31C0 800C4210 01B95023 */  subu       $t2, $t5, $t9
    /* D31C4 800C4214 A7CA0002 */  sh         $t2, 0x2($fp)
    /* D31C8 800C4218 96090000 */  lhu        $t1, 0x0($s0)
    /* D31CC 800C421C 252BFFFF */  addiu      $t3, $t1, -0x1
    /* D31D0 800C4220 A60B0000 */  sh         $t3, 0x0($s0)
    /* D31D4 800C4224 10000002 */  b          .L800C4230_D31E0
    /* D31D8 800C4228 86760004 */   lh        $s6, 0x4($s3)
  .L800C422C_D31DC:
    /* D31DC 800C422C 86760004 */  lh         $s6, 0x4($s3)
  .L800C4230_D31E0:
    /* D31E0 800C4230 2401FFFB */  addiu      $at, $zero, -0x5
    /* D31E4 800C4234 12C10003 */  beq        $s6, $at, .L800C4244_D31F4
    /* D31E8 800C4238 2401FFFA */   addiu     $at, $zero, -0x6
    /* D31EC 800C423C 56C1FF15 */  bnel       $s6, $at, .L800C3E94_D2E44
    /* D31F0 800C4240 2404001C */   addiu     $a0, $zero, 0x1C
  .L800C4244_D31F4:
    /* D31F4 800C4244 8FBF0044 */  lw         $ra, 0x44($sp)
  .L800C4248_D31F8:
    /* D31F8 800C4248 8FB00020 */  lw         $s0, 0x20($sp)
    /* D31FC 800C424C 8FB10024 */  lw         $s1, 0x24($sp)
    /* D3200 800C4250 8FB20028 */  lw         $s2, 0x28($sp)
    /* D3204 800C4254 8FB3002C */  lw         $s3, 0x2C($sp)
    /* D3208 800C4258 8FB40030 */  lw         $s4, 0x30($sp)
    /* D320C 800C425C 8FB50034 */  lw         $s5, 0x34($sp)
    /* D3210 800C4260 8FB60038 */  lw         $s6, 0x38($sp)
    /* D3214 800C4264 8FB7003C */  lw         $s7, 0x3C($sp)
    /* D3218 800C4268 8FBE0040 */  lw         $fp, 0x40($sp)
    /* D321C 800C426C 03E00008 */  jr         $ra
    /* D3220 800C4270 27BD0048 */   addiu     $sp, $sp, 0x48
endlabel func_800C3E2C_D2DDC
