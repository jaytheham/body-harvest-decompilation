nonmatching func_800DF038_EDFE8, 0x810

glabel func_800DF038_EDFE8
    /* EDFE8 800DF038 27BDFF68 */  addiu      $sp, $sp, -0x98
    /* EDFEC 800DF03C AFB7005C */  sw         $s7, 0x5C($sp)
    /* EDFF0 800DF040 AFB60058 */  sw         $s6, 0x58($sp)
    /* EDFF4 800DF044 AFB50054 */  sw         $s5, 0x54($sp)
    /* EDFF8 800DF048 0004AC00 */  sll        $s5, $a0, 16
    /* EDFFC 800DF04C 0006B400 */  sll        $s6, $a2, 16
    /* EE000 800DF050 0005BC00 */  sll        $s7, $a1, 16
    /* EE004 800DF054 00177C03 */  sra        $t7, $s7, 16
    /* EE008 800DF058 0016C403 */  sra        $t8, $s6, 16
    /* EE00C 800DF05C 00157403 */  sra        $t6, $s5, 16
    /* EE010 800DF060 AFBF0064 */  sw         $ra, 0x64($sp)
    /* EE014 800DF064 AFBE0060 */  sw         $fp, 0x60($sp)
    /* EE018 800DF068 30FEFFFF */  andi       $fp, $a3, 0xFFFF
    /* EE01C 800DF06C 01C0A825 */  or         $s5, $t6, $zero
    /* EE020 800DF070 0300B025 */  or         $s6, $t8, $zero
    /* EE024 800DF074 01E0B825 */  or         $s7, $t7, $zero
    /* EE028 800DF078 AFB40050 */  sw         $s4, 0x50($sp)
    /* EE02C 800DF07C AFB3004C */  sw         $s3, 0x4C($sp)
    /* EE030 800DF080 AFB20048 */  sw         $s2, 0x48($sp)
    /* EE034 800DF084 AFB10044 */  sw         $s1, 0x44($sp)
    /* EE038 800DF088 AFB00040 */  sw         $s0, 0x40($sp)
    /* EE03C 800DF08C AFA40098 */  sw         $a0, 0x98($sp)
    /* EE040 800DF090 AFA5009C */  sw         $a1, 0x9C($sp)
    /* EE044 800DF094 AFA600A0 */  sw         $a2, 0xA0($sp)
    /* EE048 800DF098 0C000E38 */  jal        func_800038E0_44E0
    /* EE04C 800DF09C AFA700A4 */   sw        $a3, 0xA4($sp)
    /* EE050 800DF0A0 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* EE054 800DF0A4 44810000 */  mtc1       $at, $f0
    /* EE058 800DF0A8 3C018004 */  lui        $at, %hi(D_80047954)
    /* EE05C 800DF0AC C4247954 */  lwc1       $f4, %lo(D_80047954)($at)
    /* EE060 800DF0B0 3C018004 */  lui        $at, %hi(D_8004795C)
    /* EE064 800DF0B4 C42A795C */  lwc1       $f10, %lo(D_8004795C)($at)
    /* EE068 800DF0B8 46002182 */  mul.s      $f6, $f4, $f0
    /* EE06C 800DF0BC 3C0F8004 */  lui        $t7, %hi(D_80047950)
    /* EE070 800DF0C0 85EF7950 */  lh         $t7, %lo(D_80047950)($t7)
    /* EE074 800DF0C4 46005402 */  mul.s      $f16, $f10, $f0
    /* EE078 800DF0C8 00152400 */  sll        $a0, $s5, 16
    /* EE07C 800DF0CC 0004CC03 */  sra        $t9, $a0, 16
    /* EE080 800DF0D0 03202025 */  or         $a0, $t9, $zero
    /* EE084 800DF0D4 00162C00 */  sll        $a1, $s6, 16
    /* EE088 800DF0D8 001E3040 */  sll        $a2, $fp, 1
    /* EE08C 800DF0DC 4600320D */  trunc.w.s  $f8, $f6
    /* EE090 800DF0E0 24184000 */  addiu      $t8, $zero, 0x4000
    /* EE094 800DF0E4 30C9FFFF */  andi       $t1, $a2, 0xFFFF
    /* EE098 800DF0E8 4600848D */  trunc.w.s  $f18, $f16
    /* EE09C 800DF0EC 44074000 */  mfc1       $a3, $f8
    /* EE0A0 800DF0F0 00054403 */  sra        $t0, $a1, 16
    /* EE0A4 800DF0F4 030FC823 */  subu       $t9, $t8, $t7
    /* EE0A8 800DF0F8 440E9000 */  mfc1       $t6, $f18
    /* EE0AC 800DF0FC 00075C00 */  sll        $t3, $a3, 16
    /* EE0B0 800DF100 000B3C03 */  sra        $a3, $t3, 16
    /* EE0B4 800DF104 AFB90014 */  sw         $t9, 0x14($sp)
    /* EE0B8 800DF108 01002825 */  or         $a1, $t0, $zero
    /* EE0BC 800DF10C 01203025 */  or         $a2, $t1, $zero
    /* EE0C0 800DF110 03C0A025 */  or         $s4, $fp, $zero
    /* EE0C4 800DF114 0C02E4EB */  jal        func_800B93AC_C835C
    /* EE0C8 800DF118 AFAE0010 */   sw        $t6, 0x10($sp)
    /* EE0CC 800DF11C 104001BD */  beqz       $v0, .L800DF814_EE7C4
    /* EE0D0 800DF120 2A81001E */   slti      $at, $s4, 0x1E
    /* EE0D4 800DF124 10200003 */  beqz       $at, .L800DF134_EE0E4
    /* EE0D8 800DF128 3C088022 */   lui       $t0, %hi(D_80222A70)
    /* EE0DC 800DF12C 241E001E */  addiu      $fp, $zero, 0x1E
    /* EE0E0 800DF130 2414001E */  addiu      $s4, $zero, 0x1E
  .L800DF134_EE0E4:
    /* EE0E4 800DF134 2A81012D */  slti       $at, $s4, 0x12D
    /* EE0E8 800DF138 14200002 */  bnez       $at, .L800DF144_EE0F4
    /* EE0EC 800DF13C 3C078004 */   lui       $a3, %hi(currentLevel)
    /* EE0F0 800DF140 241E012C */  addiu      $fp, $zero, 0x12C
  .L800DF144_EE0F4:
    /* EE0F4 800DF144 8D082A70 */  lw         $t0, %lo(D_80222A70)($t0)
    /* EE0F8 800DF148 00152400 */  sll        $a0, $s5, 16
    /* EE0FC 800DF14C 00046C03 */  sra        $t5, $a0, 16
    /* EE100 800DF150 2509FFCE */  addiu      $t1, $t0, -0x32
    /* EE104 800DF154 02E9082A */  slt        $at, $s7, $t1
    /* EE108 800DF158 10200079 */  beqz       $at, .L800DF340_EE2F0
    /* EE10C 800DF15C 01A02025 */   or        $a0, $t5, $zero
    /* EE110 800DF160 8CE77F90 */  lw         $a3, %lo(currentLevel)($a3)
    /* EE114 800DF164 24010004 */  addiu      $at, $zero, 0x4
    /* EE118 800DF168 3C0A8004 */  lui        $t2, %hi(D_80047F94)
    /* EE11C 800DF16C 14E10009 */  bne        $a3, $at, .L800DF194_EE144
    /* EE120 800DF170 00008025 */   or        $s0, $zero, $zero
    /* EE124 800DF174 8D4A7F94 */  lw         $t2, %lo(D_80047F94)($t2)
    /* EE128 800DF178 24010002 */  addiu      $at, $zero, 0x2
    /* EE12C 800DF17C 3C0B8005 */  lui        $t3, %hi(gameplayMode)
    /* EE130 800DF180 15410004 */  bne        $t2, $at, .L800DF194_EE144
    /* EE134 800DF184 00000000 */   nop
    /* EE138 800DF188 8D6B2ADC */  lw         $t3, %lo(gameplayMode)($t3)
    /* EE13C 800DF18C 2401000B */  addiu      $at, $zero, 0xB
    /* EE140 800DF190 1161006B */  beq        $t3, $at, .L800DF340_EE2F0
  .L800DF194_EE144:
    /* EE144 800DF194 3C068014 */   lui       $a2, %hi(D_8013DF90)
    /* EE148 800DF198 3C058014 */  lui        $a1, %hi(D_8013DF9C)
    /* EE14C 800DF19C 24A5DF9C */  addiu      $a1, $a1, %lo(D_8013DF9C)
    /* EE150 800DF1A0 24C6DF90 */  addiu      $a2, $a2, %lo(D_8013DF90)
    /* EE154 800DF1A4 03C0A025 */  or         $s4, $fp, $zero
    /* EE158 800DF1A8 24040005 */  addiu      $a0, $zero, 0x5
    /* EE15C 800DF1AC 00106080 */  sll        $t4, $s0, 2
  .L800DF1B0_EE160:
    /* EE160 800DF1B0 01906023 */  subu       $t4, $t4, $s0
    /* EE164 800DF1B4 27AD0078 */  addiu      $t5, $sp, 0x78
    /* EE168 800DF1B8 018D1821 */  addu       $v1, $t4, $t5
    /* EE16C 800DF1BC 00001025 */  or         $v0, $zero, $zero
  .L800DF1C0_EE170:
    /* EE170 800DF1C0 14870009 */  bne        $a0, $a3, .L800DF1E8_EE198
    /* EE174 800DF1C4 00104880 */   sll       $t1, $s0, 2
    /* EE178 800DF1C8 00107080 */  sll        $t6, $s0, 2
    /* EE17C 800DF1CC 01D07023 */  subu       $t6, $t6, $s0
    /* EE180 800DF1D0 00AEC021 */  addu       $t8, $a1, $t6
    /* EE184 800DF1D4 03027821 */  addu       $t7, $t8, $v0
    /* EE188 800DF1D8 91F90000 */  lbu        $t9, 0x0($t7)
    /* EE18C 800DF1DC 00624021 */  addu       $t0, $v1, $v0
    /* EE190 800DF1E0 10000007 */  b          .L800DF200_EE1B0
    /* EE194 800DF1E4 A1190000 */   sb        $t9, 0x0($t0)
  .L800DF1E8_EE198:
    /* EE198 800DF1E8 01304823 */  subu       $t1, $t1, $s0
    /* EE19C 800DF1EC 00C95021 */  addu       $t2, $a2, $t1
    /* EE1A0 800DF1F0 01425821 */  addu       $t3, $t2, $v0
    /* EE1A4 800DF1F4 916C0000 */  lbu        $t4, 0x0($t3)
    /* EE1A8 800DF1F8 00626821 */  addu       $t5, $v1, $v0
    /* EE1AC 800DF1FC A1AC0000 */  sb         $t4, 0x0($t5)
  .L800DF200_EE1B0:
    /* EE1B0 800DF200 24420001 */  addiu      $v0, $v0, 0x1
    /* EE1B4 800DF204 00027400 */  sll        $t6, $v0, 16
    /* EE1B8 800DF208 000E1403 */  sra        $v0, $t6, 16
    /* EE1BC 800DF20C 28410003 */  slti       $at, $v0, 0x3
    /* EE1C0 800DF210 1420FFEB */  bnez       $at, .L800DF1C0_EE170
    /* EE1C4 800DF214 00000000 */   nop
    /* EE1C8 800DF218 26100001 */  addiu      $s0, $s0, 0x1
    /* EE1CC 800DF21C 00107C00 */  sll        $t7, $s0, 16
    /* EE1D0 800DF220 000F8403 */  sra        $s0, $t7, 16
    /* EE1D4 800DF224 2A010004 */  slti       $at, $s0, 0x4
    /* EE1D8 800DF228 5420FFE1 */  bnel       $at, $zero, .L800DF1B0_EE160
    /* EE1DC 800DF22C 00106080 */   sll       $t4, $s0, 2
    /* EE1E0 800DF230 00152400 */  sll        $a0, $s5, 16
    /* EE1E4 800DF234 00172C00 */  sll        $a1, $s7, 16
    /* EE1E8 800DF238 00163400 */  sll        $a2, $s6, 16
    /* EE1EC 800DF23C 00065403 */  sra        $t2, $a2, 16
    /* EE1F0 800DF240 00054C03 */  sra        $t1, $a1, 16
    /* EE1F4 800DF244 00044403 */  sra        $t0, $a0, 16
    /* EE1F8 800DF248 27AB0078 */  addiu      $t3, $sp, 0x78
    /* EE1FC 800DF24C AFAB0010 */  sw         $t3, 0x10($sp)
    /* EE200 800DF250 01002025 */  or         $a0, $t0, $zero
    /* EE204 800DF254 01202825 */  or         $a1, $t1, $zero
    /* EE208 800DF258 01403025 */  or         $a2, $t2, $zero
    /* EE20C 800DF25C 0C03184F */  jal        func_800C613C_D50EC
    /* EE210 800DF260 33C7FFFF */   andi      $a3, $fp, 0xFFFF
    /* EE214 800DF264 2401000A */  addiu      $at, $zero, 0xA
    /* EE218 800DF268 0281001A */  div        $zero, $s4, $at
    /* EE21C 800DF26C 00009012 */  mflo       $s2
    /* EE220 800DF270 A7A2008E */  sh         $v0, 0x8E($sp)
    /* EE224 800DF274 1A40003D */  blez       $s2, .L800DF36C_EE31C
    /* EE228 800DF278 00008025 */   or        $s0, $zero, $zero
    /* EE22C 800DF27C 00148843 */  sra        $s1, $s4, 1
  .L800DF280_EE230:
    /* EE230 800DF280 0C000E38 */  jal        func_800038E0_44E0
    /* EE234 800DF284 00000000 */   nop
    /* EE238 800DF288 0C000E38 */  jal        func_800038E0_44E0
    /* EE23C 800DF28C 3053FFFF */   andi      $s3, $v0, 0xFFFF
    /* EE240 800DF290 0274001A */  div        $zero, $s3, $s4
    /* EE244 800DF294 00006010 */  mfhi       $t4
    /* EE248 800DF298 01956821 */  addu       $t5, $t4, $s5
    /* EE24C 800DF29C 16800002 */  bnez       $s4, .L800DF2A8_EE258
    /* EE250 800DF2A0 00000000 */   nop
    /* EE254 800DF2A4 0007000D */  break      7
  .L800DF2A8_EE258:
    /* EE258 800DF2A8 2401FFFF */  addiu      $at, $zero, -0x1
    /* EE25C 800DF2AC 16810004 */  bne        $s4, $at, .L800DF2C0_EE270
    /* EE260 800DF2B0 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* EE264 800DF2B4 16610002 */  bne        $s3, $at, .L800DF2C0_EE270
    /* EE268 800DF2B8 00000000 */   nop
    /* EE26C 800DF2BC 0006000D */  break      6
  .L800DF2C0_EE270:
    /* EE270 800DF2C0 0054001A */  div        $zero, $v0, $s4
    /* EE274 800DF2C4 0000C810 */  mfhi       $t9
    /* EE278 800DF2C8 03364021 */  addu       $t0, $t9, $s6
    /* EE27C 800DF2CC 01B12023 */  subu       $a0, $t5, $s1
    /* EE280 800DF2D0 00047400 */  sll        $t6, $a0, 16
    /* EE284 800DF2D4 01113023 */  subu       $a2, $t0, $s1
    /* EE288 800DF2D8 00172C00 */  sll        $a1, $s7, 16
    /* EE28C 800DF2DC 00057C03 */  sra        $t7, $a1, 16
    /* EE290 800DF2E0 00064C00 */  sll        $t1, $a2, 16
    /* EE294 800DF2E4 000EC403 */  sra        $t8, $t6, 16
    /* EE298 800DF2E8 03002025 */  or         $a0, $t8, $zero
    /* EE29C 800DF2EC 00093403 */  sra        $a2, $t1, 16
    /* EE2A0 800DF2F0 01E02825 */  or         $a1, $t7, $zero
    /* EE2A4 800DF2F4 16800002 */  bnez       $s4, .L800DF300_EE2B0
    /* EE2A8 800DF2F8 00000000 */   nop
    /* EE2AC 800DF2FC 0007000D */  break      7
  .L800DF300_EE2B0:
    /* EE2B0 800DF300 2401FFFF */  addiu      $at, $zero, -0x1
    /* EE2B4 800DF304 16810004 */  bne        $s4, $at, .L800DF318_EE2C8
    /* EE2B8 800DF308 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* EE2BC 800DF30C 14410002 */  bne        $v0, $at, .L800DF318_EE2C8
    /* EE2C0 800DF310 00000000 */   nop
    /* EE2C4 800DF314 0006000D */  break      6
  .L800DF318_EE2C8:
    /* EE2C8 800DF318 0C0363E8 */  jal        func_800D8FA0_E7F50
    /* EE2CC 800DF31C 00000000 */   nop
    /* EE2D0 800DF320 26100001 */  addiu      $s0, $s0, 0x1
    /* EE2D4 800DF324 00105C00 */  sll        $t3, $s0, 16
    /* EE2D8 800DF328 000B8403 */  sra        $s0, $t3, 16
    /* EE2DC 800DF32C 0212082A */  slt        $at, $s0, $s2
    /* EE2E0 800DF330 1420FFD3 */  bnez       $at, .L800DF280_EE230
    /* EE2E4 800DF334 00000000 */   nop
    /* EE2E8 800DF338 1000000D */  b          .L800DF370_EE320
    /* EE2EC 800DF33C 87B9008E */   lh        $t9, 0x8E($sp)
  .L800DF340_EE2F0:
    /* EE2F0 800DF340 8FAF00AC */  lw         $t7, 0xAC($sp)
    /* EE2F4 800DF344 00172C00 */  sll        $a1, $s7, 16
    /* EE2F8 800DF348 00163400 */  sll        $a2, $s6, 16
    /* EE2FC 800DF34C 0006C403 */  sra        $t8, $a2, 16
    /* EE300 800DF350 00057403 */  sra        $t6, $a1, 16
    /* EE304 800DF354 01C02825 */  or         $a1, $t6, $zero
    /* EE308 800DF358 03003025 */  or         $a2, $t8, $zero
    /* EE30C 800DF35C 33C7FFFF */  andi       $a3, $fp, 0xFFFF
    /* EE310 800DF360 0C03184F */  jal        func_800C613C_D50EC
    /* EE314 800DF364 AFAF0010 */   sw        $t7, 0x10($sp)
    /* EE318 800DF368 A7A2008E */  sh         $v0, 0x8E($sp)
  .L800DF36C_EE31C:
    /* EE31C 800DF36C 87B9008E */  lh         $t9, 0x8E($sp)
  .L800DF370_EE320:
    /* EE320 800DF370 2401FFFD */  addiu      $at, $zero, -0x3
    /* EE324 800DF374 13210125 */  beq        $t9, $at, .L800DF80C_EE7BC
    /* EE328 800DF378 2BC1012C */   slti      $at, $fp, 0x12C
    /* EE32C 800DF37C 14200008 */  bnez       $at, .L800DF3A0_EE350
    /* EE330 800DF380 03C0A025 */   or        $s4, $fp, $zero
    /* EE334 800DF384 02A02025 */  or         $a0, $s5, $zero
    /* EE338 800DF388 02E02825 */  or         $a1, $s7, $zero
    /* EE33C 800DF38C 02C03025 */  or         $a2, $s6, $zero
    /* EE340 800DF390 0C04D751 */  jal        func_80135D44_144CF4
    /* EE344 800DF394 3C074100 */   lui       $a3, (0x41000000 >> 16)
    /* EE348 800DF398 10000012 */  b          .L800DF3E4_EE394
    /* EE34C 800DF39C 2A810051 */   slti      $at, $s4, 0x51
  .L800DF3A0_EE350:
    /* EE350 800DF3A0 2A810096 */  slti       $at, $s4, 0x96
    /* EE354 800DF3A4 14200007 */  bnez       $at, .L800DF3C4_EE374
    /* EE358 800DF3A8 02A02025 */   or        $a0, $s5, $zero
    /* EE35C 800DF3AC 02E02825 */  or         $a1, $s7, $zero
    /* EE360 800DF3B0 02C03025 */  or         $a2, $s6, $zero
    /* EE364 800DF3B4 0C04D751 */  jal        func_80135D44_144CF4
    /* EE368 800DF3B8 3C074040 */   lui       $a3, (0x40400000 >> 16)
    /* EE36C 800DF3BC 10000009 */  b          .L800DF3E4_EE394
    /* EE370 800DF3C0 2A810051 */   slti      $at, $s4, 0x51
  .L800DF3C4_EE374:
    /* EE374 800DF3C4 2A810050 */  slti       $at, $s4, 0x50
    /* EE378 800DF3C8 14200005 */  bnez       $at, .L800DF3E0_EE390
    /* EE37C 800DF3CC 02A02025 */   or        $a0, $s5, $zero
    /* EE380 800DF3D0 02E02825 */  or         $a1, $s7, $zero
    /* EE384 800DF3D4 02C03025 */  or         $a2, $s6, $zero
    /* EE388 800DF3D8 0C04D751 */  jal        func_80135D44_144CF4
    /* EE38C 800DF3DC 3C074000 */   lui       $a3, (0x40000000 >> 16)
  .L800DF3E0_EE390:
    /* EE390 800DF3E0 2A810051 */  slti       $at, $s4, 0x51
  .L800DF3E4_EE394:
    /* EE394 800DF3E4 1420001E */  bnez       $at, .L800DF460_EE410
    /* EE398 800DF3E8 00152400 */   sll       $a0, $s5, 16
    /* EE39C 800DF3EC 2401000A */  addiu      $at, $zero, 0xA
    /* EE3A0 800DF3F0 0281001A */  div        $zero, $s4, $at
    /* EE3A4 800DF3F4 00009012 */  mflo       $s2
    /* EE3A8 800DF3F8 26470014 */  addiu      $a3, $s2, 0x14
    /* EE3AC 800DF3FC 00172C00 */  sll        $a1, $s7, 16
    /* EE3B0 800DF400 00163400 */  sll        $a2, $s6, 16
    /* EE3B4 800DF404 00065403 */  sra        $t2, $a2, 16
    /* EE3B8 800DF408 00054C03 */  sra        $t1, $a1, 16
    /* EE3BC 800DF40C 30EB00FF */  andi       $t3, $a3, 0xFF
    /* EE3C0 800DF410 00044403 */  sra        $t0, $a0, 16
    /* EE3C4 800DF414 240C0006 */  addiu      $t4, $zero, 0x6
    /* EE3C8 800DF418 AFAC0010 */  sw         $t4, 0x10($sp)
    /* EE3CC 800DF41C 01002025 */  or         $a0, $t0, $zero
    /* EE3D0 800DF420 01603825 */  or         $a3, $t3, $zero
    /* EE3D4 800DF424 01202825 */  or         $a1, $t1, $zero
    /* EE3D8 800DF428 0C037B97 */  jal        func_800DEE5C_EDE0C
    /* EE3DC 800DF42C 01403025 */   or        $a2, $t2, $zero
    /* EE3E0 800DF430 00152C00 */  sll        $a1, $s5, 16
    /* EE3E4 800DF434 00173400 */  sll        $a2, $s7, 16
    /* EE3E8 800DF438 00163C00 */  sll        $a3, $s6, 16
    /* EE3EC 800DF43C 0007C403 */  sra        $t8, $a3, 16
    /* EE3F0 800DF440 00067403 */  sra        $t6, $a2, 16
    /* EE3F4 800DF444 00056C03 */  sra        $t5, $a1, 16
    /* EE3F8 800DF448 01A02825 */  or         $a1, $t5, $zero
    /* EE3FC 800DF44C 01C03025 */  or         $a2, $t6, $zero
    /* EE400 800DF450 03003825 */  or         $a3, $t8, $zero
    /* EE404 800DF454 2404015F */  addiu      $a0, $zero, 0x15F
    /* EE408 800DF458 0C04DC8D */  jal        func_80137234_1461E4
    /* EE40C 800DF45C AFB20010 */   sw        $s2, 0x10($sp)
  .L800DF460_EE410:
    /* EE410 800DF460 00152400 */  sll        $a0, $s5, 16
    /* EE414 800DF464 00172C00 */  sll        $a1, $s7, 16
    /* EE418 800DF468 00163400 */  sll        $a2, $s6, 16
    /* EE41C 800DF46C 00064403 */  sra        $t0, $a2, 16
    /* EE420 800DF470 0005CC03 */  sra        $t9, $a1, 16
    /* EE424 800DF474 00047C03 */  sra        $t7, $a0, 16
    /* EE428 800DF478 001448C0 */  sll        $t1, $s4, 3
    /* EE42C 800DF47C AFA90010 */  sw         $t1, 0x10($sp)
    /* EE430 800DF480 01E02025 */  or         $a0, $t7, $zero
    /* EE434 800DF484 03202825 */  or         $a1, $t9, $zero
    /* EE438 800DF488 01003025 */  or         $a2, $t0, $zero
    /* EE43C 800DF48C 0C0376D8 */  jal        func_800DDB60_ECB10
    /* EE440 800DF490 24070007 */   addiu     $a3, $zero, 0x7
    /* EE444 800DF494 304400FF */  andi       $a0, $v0, 0xFF
    /* EE448 800DF498 0C037787 */  jal        func_800DDE1C_ECDCC
    /* EE44C 800DF49C 240500B4 */   addiu     $a1, $zero, 0xB4
    /* EE450 800DF4A0 24110006 */  addiu      $s1, $zero, 0x6
    /* EE454 800DF4A4 02910019 */  multu      $s4, $s1
    /* EE458 800DF4A8 00152400 */  sll        $a0, $s5, 16
    /* EE45C 800DF4AC 00172C00 */  sll        $a1, $s7, 16
    /* EE460 800DF4B0 00163400 */  sll        $a2, $s6, 16
    /* EE464 800DF4B4 00066403 */  sra        $t4, $a2, 16
    /* EE468 800DF4B8 00055C03 */  sra        $t3, $a1, 16
    /* EE46C 800DF4BC 00045403 */  sra        $t2, $a0, 16
    /* EE470 800DF4C0 01402025 */  or         $a0, $t2, $zero
    /* EE474 800DF4C4 01602825 */  or         $a1, $t3, $zero
    /* EE478 800DF4C8 01803025 */  or         $a2, $t4, $zero
    /* EE47C 800DF4CC 00006812 */  mflo       $t5
    /* EE480 800DF4D0 AFAD0010 */  sw         $t5, 0x10($sp)
    /* EE484 800DF4D4 0C0376D8 */  jal        func_800DDB60_ECB10
    /* EE488 800DF4D8 24070007 */   addiu     $a3, $zero, 0x7
    /* EE48C 800DF4DC 305000FF */  andi       $s0, $v0, 0xFF
    /* EE490 800DF4E0 304400FF */  andi       $a0, $v0, 0xFF
    /* EE494 800DF4E4 0C037787 */  jal        func_800DDE1C_ECDCC
    /* EE498 800DF4E8 2405006E */   addiu     $a1, $zero, 0x6E
    /* EE49C 800DF4EC 320400FF */  andi       $a0, $s0, 0xFF
    /* EE4A0 800DF4F0 0C0377B8 */  jal        func_800DDEE0_ECE90
    /* EE4A4 800DF4F4 24050001 */   addiu     $a1, $zero, 0x1
    /* EE4A8 800DF4F8 3C0E8015 */  lui        $t6, %hi(D_80153B87)
    /* EE4AC 800DF4FC 91CE3B87 */  lbu        $t6, %lo(D_80153B87)($t6)
    /* EE4B0 800DF500 00152400 */  sll        $a0, $s5, 16
    /* EE4B4 800DF504 00047C03 */  sra        $t7, $a0, 16
    /* EE4B8 800DF508 15C00028 */  bnez       $t6, .L800DF5AC_EE55C
    /* EE4BC 800DF50C 01E02025 */   or        $a0, $t7, $zero
    /* EE4C0 800DF510 0291001A */  div        $zero, $s4, $s1
    /* EE4C4 800DF514 16200002 */  bnez       $s1, .L800DF520_EE4D0
    /* EE4C8 800DF518 00000000 */   nop
    /* EE4CC 800DF51C 0007000D */  break      7
  .L800DF520_EE4D0:
    /* EE4D0 800DF520 2401FFFF */  addiu      $at, $zero, -0x1
    /* EE4D4 800DF524 16210004 */  bne        $s1, $at, .L800DF538_EE4E8
    /* EE4D8 800DF528 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* EE4DC 800DF52C 16810002 */  bne        $s4, $at, .L800DF538_EE4E8
    /* EE4E0 800DF530 00000000 */   nop
    /* EE4E4 800DF534 0006000D */  break      6
  .L800DF538_EE4E8:
    /* EE4E8 800DF538 00001012 */  mflo       $v0
    /* EE4EC 800DF53C 3058FFFF */  andi       $t8, $v0, 0xFFFF
    /* EE4F0 800DF540 2B010029 */  slti       $at, $t8, 0x29
    /* EE4F4 800DF544 14200002 */  bnez       $at, .L800DF550_EE500
    /* EE4F8 800DF548 3043FFFF */   andi      $v1, $v0, 0xFFFF
    /* EE4FC 800DF54C 24030028 */  addiu      $v1, $zero, 0x28
  .L800DF550_EE500:
    /* EE500 800DF550 00172C00 */  sll        $a1, $s7, 16
    /* EE504 800DF554 00163400 */  sll        $a2, $s6, 16
    /* EE508 800DF558 00064403 */  sra        $t0, $a2, 16
    /* EE50C 800DF55C 0005CC03 */  sra        $t9, $a1, 16
    /* EE510 800DF560 2409007F */  addiu      $t1, $zero, 0x7F
    /* EE514 800DF564 240A00B4 */  addiu      $t2, $zero, 0xB4
    /* EE518 800DF568 240B0006 */  addiu      $t3, $zero, 0x6
    /* EE51C 800DF56C 240C00FF */  addiu      $t4, $zero, 0xFF
    /* EE520 800DF570 240D00FF */  addiu      $t5, $zero, 0xFF
    /* EE524 800DF574 240E00FF */  addiu      $t6, $zero, 0xFF
    /* EE528 800DF578 AFAE0030 */  sw         $t6, 0x30($sp)
    /* EE52C 800DF57C AFAD002C */  sw         $t5, 0x2C($sp)
    /* EE530 800DF580 AFAC0028 */  sw         $t4, 0x28($sp)
    /* EE534 800DF584 AFAB0024 */  sw         $t3, 0x24($sp)
    /* EE538 800DF588 AFAA001C */  sw         $t2, 0x1C($sp)
    /* EE53C 800DF58C AFA90010 */  sw         $t1, 0x10($sp)
    /* EE540 800DF590 03202825 */  or         $a1, $t9, $zero
    /* EE544 800DF594 01003025 */  or         $a2, $t0, $zero
    /* EE548 800DF598 00003825 */  or         $a3, $zero, $zero
    /* EE54C 800DF59C AFA00014 */  sw         $zero, 0x14($sp)
    /* EE550 800DF5A0 AFBE0018 */  sw         $fp, 0x18($sp)
    /* EE554 800DF5A4 0C031507 */  jal        func_800C541C_D43CC
    /* EE558 800DF5A8 AFA30020 */   sw        $v1, 0x20($sp)
  .L800DF5AC_EE55C:
    /* EE55C 800DF5AC 2A810096 */  slti       $at, $s4, 0x96
    /* EE560 800DF5B0 1020000E */  beqz       $at, .L800DF5EC_EE59C
    /* EE564 800DF5B4 240400EA */   addiu     $a0, $zero, 0xEA
    /* EE568 800DF5B8 00152C00 */  sll        $a1, $s5, 16
    /* EE56C 800DF5BC 00173400 */  sll        $a2, $s7, 16
    /* EE570 800DF5C0 00163C00 */  sll        $a3, $s6, 16
    /* EE574 800DF5C4 0007CC03 */  sra        $t9, $a3, 16
    /* EE578 800DF5C8 00067C03 */  sra        $t7, $a2, 16
    /* EE57C 800DF5CC 0005C403 */  sra        $t8, $a1, 16
    /* EE580 800DF5D0 03002825 */  or         $a1, $t8, $zero
    /* EE584 800DF5D4 01E03025 */  or         $a2, $t7, $zero
    /* EE588 800DF5D8 03203825 */  or         $a3, $t9, $zero
    /* EE58C 800DF5DC 0C04DC8D */  jal        func_80137234_1461E4
    /* EE590 800DF5E0 AFBE0010 */   sw        $fp, 0x10($sp)
    /* EE594 800DF5E4 1000001E */  b          .L800DF660_EE610
    /* EE598 800DF5E8 93B100AB */   lbu       $s1, 0xAB($sp)
  .L800DF5EC_EE59C:
    /* EE59C 800DF5EC 2A810191 */  slti       $at, $s4, 0x191
    /* EE5A0 800DF5F0 1420000F */  bnez       $at, .L800DF630_EE5E0
    /* EE5A4 800DF5F4 240400E9 */   addiu     $a0, $zero, 0xE9
    /* EE5A8 800DF5F8 00152C00 */  sll        $a1, $s5, 16
    /* EE5AC 800DF5FC 00173400 */  sll        $a2, $s7, 16
    /* EE5B0 800DF600 00163C00 */  sll        $a3, $s6, 16
    /* EE5B4 800DF604 00075403 */  sra        $t2, $a3, 16
    /* EE5B8 800DF608 00064C03 */  sra        $t1, $a2, 16
    /* EE5BC 800DF60C 00054403 */  sra        $t0, $a1, 16
    /* EE5C0 800DF610 01002825 */  or         $a1, $t0, $zero
    /* EE5C4 800DF614 01203025 */  or         $a2, $t1, $zero
    /* EE5C8 800DF618 01403825 */  or         $a3, $t2, $zero
    /* EE5CC 800DF61C 240400E8 */  addiu      $a0, $zero, 0xE8
    /* EE5D0 800DF620 0C04DC8D */  jal        func_80137234_1461E4
    /* EE5D4 800DF624 AFBE0010 */   sw        $fp, 0x10($sp)
    /* EE5D8 800DF628 1000000D */  b          .L800DF660_EE610
    /* EE5DC 800DF62C 93B100AB */   lbu       $s1, 0xAB($sp)
  .L800DF630_EE5E0:
    /* EE5E0 800DF630 00152C00 */  sll        $a1, $s5, 16
    /* EE5E4 800DF634 00173400 */  sll        $a2, $s7, 16
    /* EE5E8 800DF638 00163C00 */  sll        $a3, $s6, 16
    /* EE5EC 800DF63C 00076C03 */  sra        $t5, $a3, 16
    /* EE5F0 800DF640 00066403 */  sra        $t4, $a2, 16
    /* EE5F4 800DF644 00055C03 */  sra        $t3, $a1, 16
    /* EE5F8 800DF648 01602825 */  or         $a1, $t3, $zero
    /* EE5FC 800DF64C 01803025 */  or         $a2, $t4, $zero
    /* EE600 800DF650 01A03825 */  or         $a3, $t5, $zero
    /* EE604 800DF654 0C04DC8D */  jal        func_80137234_1461E4
    /* EE608 800DF658 AFBE0010 */   sw        $fp, 0x10($sp)
    /* EE60C 800DF65C 93B100AB */  lbu        $s1, 0xAB($sp)
  .L800DF660_EE610:
    /* EE610 800DF660 00149C00 */  sll        $s3, $s4, 16
    /* EE614 800DF664 00137403 */  sra        $t6, $s3, 16
    /* EE618 800DF668 1A200025 */  blez       $s1, .L800DF700_EE6B0
    /* EE61C 800DF66C 00008025 */   or        $s0, $zero, $zero
    /* EE620 800DF670 3C128014 */  lui        $s2, %hi(D_8013DD20)
    /* EE624 800DF674 2652DD20 */  addiu      $s2, $s2, %lo(D_8013DD20)
    /* EE628 800DF678 01C09825 */  or         $s3, $t6, $zero
  .L800DF67C_EE62C:
    /* EE62C 800DF67C 0C000E38 */  jal        func_800038E0_44E0
    /* EE630 800DF680 00000000 */   nop
    /* EE634 800DF684 87A9008E */  lh         $t1, 0x8E($sp)
    /* EE638 800DF688 00152400 */  sll        $a0, $s5, 16
    /* EE63C 800DF68C 00172C00 */  sll        $a1, $s7, 16
    /* EE640 800DF690 00163400 */  sll        $a2, $s6, 16
    /* EE644 800DF694 00133C00 */  sll        $a3, $s3, 16
    /* EE648 800DF698 00074403 */  sra        $t0, $a3, 16
    /* EE64C 800DF69C 0006CC03 */  sra        $t9, $a2, 16
    /* EE650 800DF6A0 00057C03 */  sra        $t7, $a1, 16
    /* EE654 800DF6A4 0004C403 */  sra        $t8, $a0, 16
    /* EE658 800DF6A8 03002025 */  or         $a0, $t8, $zero
    /* EE65C 800DF6AC 01E02825 */  or         $a1, $t7, $zero
    /* EE660 800DF6B0 03203025 */  or         $a2, $t9, $zero
    /* EE664 800DF6B4 01003825 */  or         $a3, $t0, $zero
    /* EE668 800DF6B8 AFBE0014 */  sw         $fp, 0x14($sp)
    /* EE66C 800DF6BC AFA90010 */  sw         $t1, 0x10($sp)
    /* EE670 800DF6C0 04410004 */  bgez       $v0, .L800DF6D4_EE684
    /* EE674 800DF6C4 304A0007 */   andi      $t2, $v0, 0x7
    /* EE678 800DF6C8 11400002 */  beqz       $t2, .L800DF6D4_EE684
    /* EE67C 800DF6CC 00000000 */   nop
    /* EE680 800DF6D0 254AFFF8 */  addiu      $t2, $t2, -0x8
  .L800DF6D4_EE684:
    /* EE684 800DF6D4 000A5880 */  sll        $t3, $t2, 2
    /* EE688 800DF6D8 024B6021 */  addu       $t4, $s2, $t3
    /* EE68C 800DF6DC 8D8D0000 */  lw         $t5, 0x0($t4)
    /* EE690 800DF6E0 AFA0001C */  sw         $zero, 0x1C($sp)
    /* EE694 800DF6E4 0C031E49 */  jal        func_800C7924_D68D4
    /* EE698 800DF6E8 AFAD0018 */   sw        $t5, 0x18($sp)
    /* EE69C 800DF6EC 26100001 */  addiu      $s0, $s0, 0x1
    /* EE6A0 800DF6F0 320E00FF */  andi       $t6, $s0, 0xFF
    /* EE6A4 800DF6F4 01D1082A */  slt        $at, $t6, $s1
    /* EE6A8 800DF6F8 1420FFE0 */  bnez       $at, .L800DF67C_EE62C
    /* EE6AC 800DF6FC 01C08025 */   or        $s0, $t6, $zero
  .L800DF700_EE6B0:
    /* EE6B0 800DF700 00149C00 */  sll        $s3, $s4, 16
    /* EE6B4 800DF704 0013C403 */  sra        $t8, $s3, 16
    /* EE6B8 800DF708 2A810096 */  slti       $at, $s4, 0x96
    /* EE6BC 800DF70C 10200021 */  beqz       $at, .L800DF794_EE744
    /* EE6C0 800DF710 03009825 */   or        $s3, $t8, $zero
    /* EE6C4 800DF714 00152400 */  sll        $a0, $s5, 16
    /* EE6C8 800DF718 00047C03 */  sra        $t7, $a0, 16
    /* EE6CC 800DF71C 00183C00 */  sll        $a3, $t8, 16
    /* EE6D0 800DF720 01E02025 */  or         $a0, $t7, $zero
    /* EE6D4 800DF724 00172C00 */  sll        $a1, $s7, 16
    /* EE6D8 800DF728 00163400 */  sll        $a2, $s6, 16
    /* EE6DC 800DF72C 00064403 */  sra        $t0, $a2, 16
    /* EE6E0 800DF730 0005CC03 */  sra        $t9, $a1, 16
    /* EE6E4 800DF734 240F0032 */  addiu      $t7, $zero, 0x32
    /* EE6E8 800DF738 00074C03 */  sra        $t1, $a3, 16
    /* EE6EC 800DF73C 24180032 */  addiu      $t8, $zero, 0x32
    /* EE6F0 800DF740 240B0001 */  addiu      $t3, $zero, 0x1
    /* EE6F4 800DF744 240C001E */  addiu      $t4, $zero, 0x1E
    /* EE6F8 800DF748 240D00FA */  addiu      $t5, $zero, 0xFA
    /* EE6FC 800DF74C 240E0032 */  addiu      $t6, $zero, 0x32
    /* EE700 800DF750 AFAE0020 */  sw         $t6, 0x20($sp)
    /* EE704 800DF754 AFAD001C */  sw         $t5, 0x1C($sp)
    /* EE708 800DF758 AFAC0018 */  sw         $t4, 0x18($sp)
    /* EE70C 800DF75C AFAB0014 */  sw         $t3, 0x14($sp)
    /* EE710 800DF760 AFB80024 */  sw         $t8, 0x24($sp)
    /* EE714 800DF764 01203825 */  or         $a3, $t1, $zero
    /* EE718 800DF768 AFAF0028 */  sw         $t7, 0x28($sp)
    /* EE71C 800DF76C 03202825 */  or         $a1, $t9, $zero
    /* EE720 800DF770 01003025 */  or         $a2, $t0, $zero
    /* EE724 800DF774 06810003 */  bgez       $s4, .L800DF784_EE734
    /* EE728 800DF778 00145103 */   sra       $t2, $s4, 4
    /* EE72C 800DF77C 2681000F */  addiu      $at, $s4, 0xF
    /* EE730 800DF780 00015103 */  sra        $t2, $at, 4
  .L800DF784_EE734:
    /* EE734 800DF784 0C037A82 */  jal        func_800DEA08_ED9B8
    /* EE738 800DF788 AFAA0010 */   sw        $t2, 0x10($sp)
    /* EE73C 800DF78C 1000001F */  b          .L800DF80C_EE7BC
    /* EE740 800DF790 00000000 */   nop
  .L800DF794_EE744:
    /* EE744 800DF794 00152400 */  sll        $a0, $s5, 16
    /* EE748 800DF798 0004CC03 */  sra        $t9, $a0, 16
    /* EE74C 800DF79C 03202025 */  or         $a0, $t9, $zero
    /* EE750 800DF7A0 00172C00 */  sll        $a1, $s7, 16
    /* EE754 800DF7A4 00163400 */  sll        $a2, $s6, 16
    /* EE758 800DF7A8 00133C00 */  sll        $a3, $s3, 16
    /* EE75C 800DF7AC 00075403 */  sra        $t2, $a3, 16
    /* EE760 800DF7B0 00064C03 */  sra        $t1, $a2, 16
    /* EE764 800DF7B4 00054403 */  sra        $t0, $a1, 16
    /* EE768 800DF7B8 24190032 */  addiu      $t9, $zero, 0x32
    /* EE76C 800DF7BC 240C0001 */  addiu      $t4, $zero, 0x1
    /* EE770 800DF7C0 240D003C */  addiu      $t5, $zero, 0x3C
    /* EE774 800DF7C4 240E00FA */  addiu      $t6, $zero, 0xFA
    /* EE778 800DF7C8 24180032 */  addiu      $t8, $zero, 0x32
    /* EE77C 800DF7CC 240F0032 */  addiu      $t7, $zero, 0x32
    /* EE780 800DF7D0 AFAF0024 */  sw         $t7, 0x24($sp)
    /* EE784 800DF7D4 AFB80020 */  sw         $t8, 0x20($sp)
    /* EE788 800DF7D8 AFAE001C */  sw         $t6, 0x1C($sp)
    /* EE78C 800DF7DC AFAD0018 */  sw         $t5, 0x18($sp)
    /* EE790 800DF7E0 AFAC0014 */  sw         $t4, 0x14($sp)
    /* EE794 800DF7E4 AFB90028 */  sw         $t9, 0x28($sp)
    /* EE798 800DF7E8 01002825 */  or         $a1, $t0, $zero
    /* EE79C 800DF7EC 01203025 */  or         $a2, $t1, $zero
    /* EE7A0 800DF7F0 01403825 */  or         $a3, $t2, $zero
    /* EE7A4 800DF7F4 06810003 */  bgez       $s4, .L800DF804_EE7B4
    /* EE7A8 800DF7F8 00145903 */   sra       $t3, $s4, 4
    /* EE7AC 800DF7FC 2681000F */  addiu      $at, $s4, 0xF
    /* EE7B0 800DF800 00015903 */  sra        $t3, $at, 4
  .L800DF804_EE7B4:
    /* EE7B4 800DF804 0C037A82 */  jal        func_800DEA08_ED9B8
    /* EE7B8 800DF808 AFAB0010 */   sw        $t3, 0x10($sp)
  .L800DF80C_EE7BC:
    /* EE7BC 800DF80C 10000002 */  b          .L800DF818_EE7C8
    /* EE7C0 800DF810 87A2008E */   lh        $v0, 0x8E($sp)
  .L800DF814_EE7C4:
    /* EE7C4 800DF814 2402FFFD */  addiu      $v0, $zero, -0x3
  .L800DF818_EE7C8:
    /* EE7C8 800DF818 8FBF0064 */  lw         $ra, 0x64($sp)
    /* EE7CC 800DF81C 8FB00040 */  lw         $s0, 0x40($sp)
    /* EE7D0 800DF820 8FB10044 */  lw         $s1, 0x44($sp)
    /* EE7D4 800DF824 8FB20048 */  lw         $s2, 0x48($sp)
    /* EE7D8 800DF828 8FB3004C */  lw         $s3, 0x4C($sp)
    /* EE7DC 800DF82C 8FB40050 */  lw         $s4, 0x50($sp)
    /* EE7E0 800DF830 8FB50054 */  lw         $s5, 0x54($sp)
    /* EE7E4 800DF834 8FB60058 */  lw         $s6, 0x58($sp)
    /* EE7E8 800DF838 8FB7005C */  lw         $s7, 0x5C($sp)
    /* EE7EC 800DF83C 8FBE0060 */  lw         $fp, 0x60($sp)
    /* EE7F0 800DF840 03E00008 */  jr         $ra
    /* EE7F4 800DF844 27BD0098 */   addiu     $sp, $sp, 0x98
endlabel func_800DF038_EDFE8
