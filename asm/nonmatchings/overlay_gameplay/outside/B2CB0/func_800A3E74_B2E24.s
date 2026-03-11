nonmatching func_800A3E74_B2E24, 0x2DC

glabel func_800A3E74_B2E24
    /* B2E24 800A3E74 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* B2E28 800A3E78 AFA40048 */  sw         $a0, 0x48($sp)
    /* B2E2C 800A3E7C 93AE004B */  lbu        $t6, 0x4B($sp)
    /* B2E30 800A3E80 3C188005 */  lui        $t8, %hi(alienInstances)
    /* B2E34 800A3E84 AFB10020 */  sw         $s1, 0x20($sp)
    /* B2E38 800A3E88 000E7880 */  sll        $t7, $t6, 2
    /* B2E3C 800A3E8C 01EE7821 */  addu       $t7, $t7, $t6
    /* B2E40 800A3E90 000F7900 */  sll        $t7, $t7, 4
    /* B2E44 800A3E94 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* B2E48 800A3E98 01F88821 */  addu       $s1, $t7, $t8
    /* B2E4C 800A3E9C 8225003C */  lb         $a1, 0x3C($s1)
    /* B2E50 800A3EA0 AFBF0024 */  sw         $ra, 0x24($sp)
    /* B2E54 800A3EA4 3C048014 */  lui        $a0, %hi(D_80142754)
    /* B2E58 800A3EA8 AFB0001C */  sw         $s0, 0x1C($sp)
    /* B2E5C 800A3EAC F7B40010 */  sdc1       $f20, 0x10($sp)
    /* B2E60 800A3EB0 24842754 */  addiu      $a0, $a0, %lo(D_80142754)
    /* B2E64 800A3EB4 0C00731B */  jal        osSyncPrintf
    /* B2E68 800A3EB8 AFA5003C */   sw        $a1, 0x3C($sp)
    /* B2E6C 800A3EBC 0C01E55B */  jal        func_8007956C_8851C
    /* B2E70 800A3EC0 9224003C */   lbu       $a0, 0x3C($s1)
    /* B2E74 800A3EC4 3C048014 */  lui        $a0, %hi(D_8014276C)
    /* B2E78 800A3EC8 A3A20042 */  sb         $v0, 0x42($sp)
    /* B2E7C 800A3ECC 2484276C */  addiu      $a0, $a0, %lo(D_8014276C)
    /* B2E80 800A3ED0 0C00731B */  jal        osSyncPrintf
    /* B2E84 800A3ED4 304500FF */   andi      $a1, $v0, 0xFF
    /* B2E88 800A3ED8 93B90042 */  lbu        $t9, 0x42($sp)
    /* B2E8C 800A3EDC 93A80042 */  lbu        $t0, 0x42($sp)
    /* B2E90 800A3EE0 240100FF */  addiu      $at, $zero, 0xFF
    /* B2E94 800A3EE4 17210003 */  bne        $t9, $at, .L800A3EF4_B2EA4
    /* B2E98 800A3EE8 00084880 */   sll       $t1, $t0, 2
    /* B2E9C 800A3EEC 10000092 */  b          .L800A4138_B30E8
    /* B2EA0 800A3EF0 00001025 */   or        $v0, $zero, $zero
  .L800A3EF4_B2EA4:
    /* B2EA4 800A3EF4 01284821 */  addu       $t1, $t1, $t0
    /* B2EA8 800A3EF8 3C0A8005 */  lui        $t2, %hi(alienInstances)
    /* B2EAC 800A3EFC 254A8198 */  addiu      $t2, $t2, %lo(alienInstances)
    /* B2EB0 800A3F00 00094900 */  sll        $t1, $t1, 4
    /* B2EB4 800A3F04 012A8021 */  addu       $s0, $t1, $t2
    /* B2EB8 800A3F08 8E0B0020 */  lw         $t3, 0x20($s0)
    /* B2EBC 800A3F0C 8FA2003C */  lw         $v0, 0x3C($sp)
    /* B2EC0 800A3F10 3C010100 */  lui        $at, (0x1000000 >> 16)
    /* B2EC4 800A3F14 01616025 */  or         $t4, $t3, $at
    /* B2EC8 800A3F18 2401000A */  addiu      $at, $zero, 0xA
    /* B2ECC 800A3F1C 14410003 */  bne        $v0, $at, .L800A3F2C_B2EDC
    /* B2ED0 800A3F20 AE0C0020 */   sw        $t4, 0x20($s0)
    /* B2ED4 800A3F24 240D0064 */  addiu      $t5, $zero, 0x64
    /* B2ED8 800A3F28 A60D003A */  sh         $t5, 0x3A($s0)
  .L800A3F2C_B2EDC:
    /* B2EDC 800A3F2C 2401000D */  addiu      $at, $zero, 0xD
    /* B2EE0 800A3F30 5441000B */  bnel       $v0, $at, .L800A3F60_B2F10
    /* B2EE4 800A3F34 86230006 */   lh        $v1, 0x6($s1)
    /* B2EE8 800A3F38 0C000E38 */  jal        func_800038E0_44E0
    /* B2EEC 800A3F3C 00000000 */   nop
    /* B2EF0 800A3F40 24010FA0 */  addiu      $at, $zero, 0xFA0
    /* B2EF4 800A3F44 0041001A */  div        $zero, $v0, $at
    /* B2EF8 800A3F48 862F0006 */  lh         $t7, 0x6($s1)
    /* B2EFC 800A3F4C 00007010 */  mfhi       $t6
    /* B2F00 800A3F50 01CF1821 */  addu       $v1, $t6, $t7
    /* B2F04 800A3F54 10000002 */  b          .L800A3F60_B2F10
    /* B2F08 800A3F58 2463F830 */   addiu     $v1, $v1, -0x7D0
    /* B2F0C 800A3F5C 86230006 */  lh         $v1, 0x6($s1)
  .L800A3F60_B2F10:
    /* B2F10 800A3F60 A603000E */  sh         $v1, 0xE($s0)
    /* B2F14 800A3F64 A6030006 */  sh         $v1, 0x6($s0)
    /* B2F18 800A3F68 96240006 */  lhu        $a0, 0x6($s1)
    /* B2F1C 800A3F6C 0C007654 */  jal        coss
    /* B2F20 800A3F70 AFA30038 */   sw        $v1, 0x38($sp)
    /* B2F24 800A3F74 44822000 */  mtc1       $v0, $f4
    /* B2F28 800A3F78 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* B2F2C 800A3F7C 4481A800 */  mtc1       $at, $f21
    /* B2F30 800A3F80 468021A0 */  cvt.s.w    $f6, $f4
    /* B2F34 800A3F84 4480A000 */  mtc1       $zero, $f20
    /* B2F38 800A3F88 3C014059 */  lui        $at, (0x40590000 >> 16)
    /* B2F3C 800A3F8C 44818800 */  mtc1       $at, $f17
    /* B2F40 800A3F90 44808000 */  mtc1       $zero, $f16
    /* B2F44 800A3F94 86380000 */  lh         $t8, 0x0($s1)
    /* B2F48 800A3F98 46003221 */  cvt.d.s    $f8, $f6
    /* B2F4C 800A3F9C 46344283 */  div.d      $f10, $f8, $f20
    /* B2F50 800A3FA0 44982000 */  mtc1       $t8, $f4
    /* B2F54 800A3FA4 00000000 */  nop
    /* B2F58 800A3FA8 468021A1 */  cvt.d.w    $f6, $f4
    /* B2F5C 800A3FAC 46305482 */  mul.d      $f18, $f10, $f16
    /* B2F60 800A3FB0 46269200 */  add.d      $f8, $f18, $f6
    /* B2F64 800A3FB4 4620428D */  trunc.w.d  $f10, $f8
    /* B2F68 800A3FB8 44085000 */  mfc1       $t0, $f10
    /* B2F6C 800A3FBC 00000000 */  nop
    /* B2F70 800A3FC0 A6080000 */  sh         $t0, 0x0($s0)
    /* B2F74 800A3FC4 0C007660 */  jal        sins
    /* B2F78 800A3FC8 96240006 */   lhu       $a0, 0x6($s1)
    /* B2F7C 800A3FCC 44828000 */  mtc1       $v0, $f16
    /* B2F80 800A3FD0 3C014059 */  lui        $at, (0x40590000 >> 16)
    /* B2F84 800A3FD4 44814800 */  mtc1       $at, $f9
    /* B2F88 800A3FD8 46808120 */  cvt.s.w    $f4, $f16
    /* B2F8C 800A3FDC 44804000 */  mtc1       $zero, $f8
    /* B2F90 800A3FE0 86290004 */  lh         $t1, 0x4($s1)
    /* B2F94 800A3FE4 93AC004B */  lbu        $t4, 0x4B($sp)
    /* B2F98 800A3FE8 44898000 */  mtc1       $t1, $f16
    /* B2F9C 800A3FEC 460024A1 */  cvt.d.s    $f18, $f4
    /* B2FA0 800A3FF0 A20C0025 */  sb         $t4, 0x25($s0)
    /* B2FA4 800A3FF4 46349183 */  div.d      $f6, $f18, $f20
    /* B2FA8 800A3FF8 46808121 */  cvt.d.w    $f4, $f16
    /* B2FAC 800A3FFC 46283282 */  mul.d      $f10, $f6, $f8
    /* B2FB0 800A4000 46245480 */  add.d      $f18, $f10, $f4
    /* B2FB4 800A4004 4620918D */  trunc.w.d  $f6, $f18
    /* B2FB8 800A4008 440B3000 */  mfc1       $t3, $f6
    /* B2FBC 800A400C 0C028F72 */  jal        func_800A3DC8_B2D78
    /* B2FC0 800A4010 A60B0004 */   sh        $t3, 0x4($s0)
    /* B2FC4 800A4014 8FA30038 */  lw         $v1, 0x38($sp)
    /* B2FC8 800A4018 240D0460 */  addiu      $t5, $zero, 0x460
    /* B2FCC 800A401C A2020026 */  sb         $v0, 0x26($s0)
    /* B2FD0 800A4020 3064FFFF */  andi       $a0, $v1, 0xFFFF
    /* B2FD4 800A4024 A60D0012 */  sh         $t5, 0x12($s0)
    /* B2FD8 800A4028 0C007654 */  jal        coss
    /* B2FDC 800A402C AFA40028 */   sw        $a0, 0x28($sp)
    /* B2FE0 800A4030 44824000 */  mtc1       $v0, $f8
    /* B2FE4 800A4034 3C014079 */  lui        $at, (0x40790000 >> 16)
    /* B2FE8 800A4038 44819800 */  mtc1       $at, $f19
    /* B2FEC 800A403C 46804420 */  cvt.s.w    $f16, $f8
    /* B2FF0 800A4040 44809000 */  mtc1       $zero, $f18
    /* B2FF4 800A4044 862E0000 */  lh         $t6, 0x0($s1)
    /* B2FF8 800A4048 8FA40028 */  lw         $a0, 0x28($sp)
    /* B2FFC 800A404C 448E4000 */  mtc1       $t6, $f8
    /* B3000 800A4050 460082A1 */  cvt.d.s    $f10, $f16
    /* B3004 800A4054 46345103 */  div.d      $f4, $f10, $f20
    /* B3008 800A4058 46804421 */  cvt.d.w    $f16, $f8
    /* B300C 800A405C 46322182 */  mul.d      $f6, $f4, $f18
    /* B3010 800A4060 46303280 */  add.d      $f10, $f6, $f16
    /* B3014 800A4064 4620510D */  trunc.w.d  $f4, $f10
    /* B3018 800A4068 44182000 */  mfc1       $t8, $f4
    /* B301C 800A406C 00000000 */  nop
    /* B3020 800A4070 A6180014 */  sh         $t8, 0x14($s0)
    /* B3024 800A4074 86390002 */  lh         $t9, 0x2($s1)
    /* B3028 800A4078 0C007660 */  jal        sins
    /* B302C 800A407C A6190016 */   sh        $t9, 0x16($s0)
    /* B3030 800A4080 44829000 */  mtc1       $v0, $f18
    /* B3034 800A4084 3C014079 */  lui        $at, (0x40790000 >> 16)
    /* B3038 800A4088 44815800 */  mtc1       $at, $f11
    /* B303C 800A408C 46809220 */  cvt.s.w    $f8, $f18
    /* B3040 800A4090 44805000 */  mtc1       $zero, $f10
    /* B3044 800A4094 86280004 */  lh         $t0, 0x4($s1)
    /* B3048 800A4098 920C001A */  lbu        $t4, 0x1A($s0)
    /* B304C 800A409C 240B001E */  addiu      $t3, $zero, 0x1E
    /* B3050 800A40A0 44889000 */  mtc1       $t0, $f18
    /* B3054 800A40A4 460041A1 */  cvt.d.s    $f6, $f8
    /* B3058 800A40A8 000C6880 */  sll        $t5, $t4, 2
    /* B305C 800A40AC 46343403 */  div.d      $f16, $f6, $f20
    /* B3060 800A40B0 01AC6823 */  subu       $t5, $t5, $t4
    /* B3064 800A40B4 000D6880 */  sll        $t5, $t5, 2
    /* B3068 800A40B8 01AC6821 */  addu       $t5, $t5, $t4
    /* B306C 800A40BC 46809221 */  cvt.d.w    $f8, $f18
    /* B3070 800A40C0 000D68C0 */  sll        $t5, $t5, 3
    /* B3074 800A40C4 3C0E8025 */  lui        $t6, %hi(D_802566D4)
    /* B3078 800A40C8 A60B002C */  sh         $t3, 0x2C($s0)
    /* B307C 800A40CC 01CD7021 */  addu       $t6, $t6, $t5
    /* B3080 800A40D0 462A8102 */  mul.d      $f4, $f16, $f10
    /* B3084 800A40D4 46282180 */  add.d      $f6, $f4, $f8
    /* B3088 800A40D8 4620340D */  trunc.w.d  $f16, $f6
    /* B308C 800A40DC 440A8000 */  mfc1       $t2, $f16
    /* B3090 800A40E0 00000000 */  nop
    /* B3094 800A40E4 A60A0018 */  sh         $t2, 0x18($s0)
    /* B3098 800A40E8 8DCE66D4 */  lw         $t6, %lo(D_802566D4)($t6)
    /* B309C 800A40EC 31CF0001 */  andi       $t7, $t6, 0x1
    /* B30A0 800A40F0 11E0000E */  beqz       $t7, .L800A412C_B30DC
    /* B30A4 800A40F4 00000000 */   nop
    /* B30A8 800A40F8 86040000 */  lh         $a0, 0x0($s0)
    /* B30AC 800A40FC 0C02E134 */  jal        func_800B84D0_C7480
    /* B30B0 800A4100 86050004 */   lh        $a1, 0x4($s0)
    /* B30B4 800A4104 0002C203 */  sra        $t8, $v0, 8
    /* B30B8 800A4108 A7B80036 */  sh         $t8, 0x36($sp)
    /* B30BC 800A410C 86040000 */  lh         $a0, 0x0($s0)
    /* B30C0 800A4110 86050004 */  lh         $a1, 0x4($s0)
    /* B30C4 800A4114 0C0479BF */  jal        func_8011E6FC_12D6AC
    /* B30C8 800A4118 27A60036 */   addiu     $a2, $sp, 0x36
    /* B30CC 800A411C 87B90036 */  lh         $t9, 0x36($sp)
    /* B30D0 800A4120 27280019 */  addiu      $t0, $t9, 0x19
    /* B30D4 800A4124 10000003 */  b          .L800A4134_B30E4
    /* B30D8 800A4128 A6080002 */   sh        $t0, 0x2($s0)
  .L800A412C_B30DC:
    /* B30DC 800A412C 0C020144 */  jal        func_80080510_8F4C0
    /* B30E0 800A4130 93A40042 */   lbu       $a0, 0x42($sp)
  .L800A4134_B30E4:
    /* B30E4 800A4134 24020001 */  addiu      $v0, $zero, 0x1
  .L800A4138_B30E8:
    /* B30E8 800A4138 8FBF0024 */  lw         $ra, 0x24($sp)
    /* B30EC 800A413C D7B40010 */  ldc1       $f20, 0x10($sp)
    /* B30F0 800A4140 8FB0001C */  lw         $s0, 0x1C($sp)
    /* B30F4 800A4144 8FB10020 */  lw         $s1, 0x20($sp)
    /* B30F8 800A4148 03E00008 */  jr         $ra
    /* B30FC 800A414C 27BD0048 */   addiu     $sp, $sp, 0x48
endlabel func_800A3E74_B2E24
