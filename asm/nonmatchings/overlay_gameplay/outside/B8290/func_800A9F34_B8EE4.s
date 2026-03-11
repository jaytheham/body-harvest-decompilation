nonmatching func_800A9F34_B8EE4, 0x40C

glabel func_800A9F34_B8EE4
    /* B8EE4 800A9F34 27BDFF78 */  addiu      $sp, $sp, -0x88
    /* B8EE8 800A9F38 AFA40088 */  sw         $a0, 0x88($sp)
    /* B8EEC 800A9F3C 93AE008B */  lbu        $t6, 0x8B($sp)
    /* B8EF0 800A9F40 24050050 */  addiu      $a1, $zero, 0x50
    /* B8EF4 800A9F44 3C038005 */  lui        $v1, %hi(alienInstances)
    /* B8EF8 800A9F48 01C50019 */  multu      $t6, $a1
    /* B8EFC 800A9F4C 24638198 */  addiu      $v1, $v1, %lo(alienInstances)
    /* B8F00 800A9F50 AFB00028 */  sw         $s0, 0x28($sp)
    /* B8F04 800A9F54 AFBF002C */  sw         $ra, 0x2C($sp)
    /* B8F08 800A9F58 00007812 */  mflo       $t7
    /* B8F0C 800A9F5C 006F8021 */  addu       $s0, $v1, $t7
    /* B8F10 800A9F60 92020025 */  lbu        $v0, 0x25($s0)
    /* B8F14 800A9F64 00450019 */  multu      $v0, $a1
    /* B8F18 800A9F68 0000C012 */  mflo       $t8
    /* B8F1C 800A9F6C 00783021 */  addu       $a2, $v1, $t8
    /* B8F20 800A9F70 8CD90020 */  lw         $t9, 0x20($a2)
    /* B8F24 800A9F74 001943C0 */  sll        $t0, $t9, 15
    /* B8F28 800A9F78 050200EC */  bltzl      $t0, .L800AA32C_B92DC
    /* B8F2C 800A9F7C 00001025 */   or        $v0, $zero, $zero
    /* B8F30 800A9F80 86090000 */  lh         $t1, 0x0($s0)
    /* B8F34 800A9F84 860A0004 */  lh         $t2, 0x4($s0)
    /* B8F38 800A9F88 AFA60038 */  sw         $a2, 0x38($sp)
    /* B8F3C 800A9F8C AFA9006C */  sw         $t1, 0x6C($sp)
    /* B8F40 800A9F90 0C000E38 */  jal        func_800038E0_44E0
    /* B8F44 800A9F94 AFAA0068 */   sw        $t2, 0x68($sp)
    /* B8F48 800A9F98 240103E8 */  addiu      $at, $zero, 0x3E8
    /* B8F4C 800A9F9C 0041001A */  div        $zero, $v0, $at
    /* B8F50 800A9FA0 8FAC0038 */  lw         $t4, 0x38($sp)
    /* B8F54 800A9FA4 00005810 */  mfhi       $t3
    /* B8F58 800A9FA8 858D0024 */  lh         $t5, 0x24($t4)
    /* B8F5C 800A9FAC 016D7021 */  addu       $t6, $t3, $t5
    /* B8F60 800A9FB0 25CFFC18 */  addiu      $t7, $t6, -0x3E8
    /* B8F64 800A9FB4 0C000E38 */  jal        func_800038E0_44E0
    /* B8F68 800A9FB8 AFAF0064 */   sw        $t7, 0x64($sp)
    /* B8F6C 800A9FBC 240103E8 */  addiu      $at, $zero, 0x3E8
    /* B8F70 800A9FC0 0041001A */  div        $zero, $v0, $at
    /* B8F74 800A9FC4 8FB90038 */  lw         $t9, 0x38($sp)
    /* B8F78 800A9FC8 8FA9006C */  lw         $t1, 0x6C($sp)
    /* B8F7C 800A9FCC 8FAA0064 */  lw         $t2, 0x64($sp)
    /* B8F80 800A9FD0 87280026 */  lh         $t0, 0x26($t9)
    /* B8F84 800A9FD4 0000C010 */  mfhi       $t8
    /* B8F88 800A9FD8 012A1823 */  subu       $v1, $t1, $t2
    /* B8F8C 800A9FDC 00032023 */  negu       $a0, $v1
    /* B8F90 800A9FE0 0083082A */  slt        $at, $a0, $v1
    /* B8F94 800A9FE4 03082821 */  addu       $a1, $t8, $t0
    /* B8F98 800A9FE8 10200003 */  beqz       $at, .L800A9FF8_B8FA8
    /* B8F9C 800A9FEC 24A5FC18 */   addiu     $a1, $a1, -0x3E8
    /* B8FA0 800A9FF0 10000002 */  b          .L800A9FFC_B8FAC
    /* B8FA4 800A9FF4 00603025 */   or        $a2, $v1, $zero
  .L800A9FF8_B8FA8:
    /* B8FA8 800A9FF8 00803025 */  or         $a2, $a0, $zero
  .L800A9FFC_B8FAC:
    /* B8FAC 800A9FFC 8FAC0068 */  lw         $t4, 0x68($sp)
    /* B8FB0 800AA000 01851023 */  subu       $v0, $t4, $a1
    /* B8FB4 800AA004 00022023 */  negu       $a0, $v0
    /* B8FB8 800AA008 0082082A */  slt        $at, $a0, $v0
    /* B8FBC 800AA00C 10200003 */  beqz       $at, .L800AA01C_B8FCC
    /* B8FC0 800AA010 00801825 */   or        $v1, $a0, $zero
    /* B8FC4 800AA014 10000001 */  b          .L800AA01C_B8FCC
    /* B8FC8 800AA018 00401825 */   or        $v1, $v0, $zero
  .L800AA01C_B8FCC:
    /* B8FCC 800AA01C 00C60019 */  multu      $a2, $a2
    /* B8FD0 800AA020 AFA50060 */  sw         $a1, 0x60($sp)
    /* B8FD4 800AA024 00005812 */  mflo       $t3
    /* B8FD8 800AA028 00000000 */  nop
    /* B8FDC 800AA02C 00000000 */  nop
    /* B8FE0 800AA030 00630019 */  multu      $v1, $v1
    /* B8FE4 800AA034 00006812 */  mflo       $t5
    /* B8FE8 800AA038 016D7021 */  addu       $t6, $t3, $t5
    /* B8FEC 800AA03C 448E2000 */  mtc1       $t6, $f4
    /* B8FF0 800AA040 0C007650 */  jal        sqrtf
    /* B8FF4 800AA044 46802320 */   cvt.s.w   $f12, $f4
    /* B8FF8 800AA048 860F0012 */  lh         $t7, 0x12($s0)
    /* B8FFC 800AA04C 05E2002A */  bltzl      $t7, .L800AA0F8_B90A8
    /* B9000 800AA050 86040006 */   lh        $a0, 0x6($s0)
    /* B9004 800AA054 86040006 */  lh         $a0, 0x6($s0)
    /* B9008 800AA058 2484C000 */  addiu      $a0, $a0, -0x4000
    /* B900C 800AA05C 3099FFFF */  andi       $t9, $a0, 0xFFFF
    /* B9010 800AA060 0C007660 */  jal        sins
    /* B9014 800AA064 03202025 */   or        $a0, $t9, $zero
    /* B9018 800AA068 44823000 */  mtc1       $v0, $f6
    /* B901C 800AA06C 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* B9020 800AA070 44818800 */  mtc1       $at, $f17
    /* B9024 800AA074 46803220 */  cvt.s.w    $f8, $f6
    /* B9028 800AA078 44808000 */  mtc1       $zero, $f16
    /* B902C 800AA07C 3C014070 */  lui        $at, (0x40700000 >> 16)
    /* B9030 800AA080 44812800 */  mtc1       $at, $f5
    /* B9034 800AA084 44802000 */  mtc1       $zero, $f4
    /* B9038 800AA088 86040006 */  lh         $a0, 0x6($s0)
    /* B903C 800AA08C 460042A1 */  cvt.d.s    $f10, $f8
    /* B9040 800AA090 46305483 */  div.d      $f18, $f10, $f16
    /* B9044 800AA094 2484C000 */  addiu      $a0, $a0, -0x4000
    /* B9048 800AA098 3088FFFF */  andi       $t0, $a0, 0xFFFF
    /* B904C 800AA09C 01002025 */  or         $a0, $t0, $zero
    /* B9050 800AA0A0 46249182 */  mul.d      $f6, $f18, $f4
    /* B9054 800AA0A4 4620320D */  trunc.w.d  $f8, $f6
    /* B9058 800AA0A8 44064000 */  mfc1       $a2, $f8
    /* B905C 800AA0AC 0C007654 */  jal        coss
    /* B9060 800AA0B0 AFA6005C */   sw        $a2, 0x5C($sp)
    /* B9064 800AA0B4 44825000 */  mtc1       $v0, $f10
    /* B9068 800AA0B8 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* B906C 800AA0BC 44812800 */  mtc1       $at, $f5
    /* B9070 800AA0C0 46805420 */  cvt.s.w    $f16, $f10
    /* B9074 800AA0C4 44802000 */  mtc1       $zero, $f4
    /* B9078 800AA0C8 3C01C070 */  lui        $at, (0xC0700000 >> 16)
    /* B907C 800AA0CC 44814800 */  mtc1       $at, $f9
    /* B9080 800AA0D0 44804000 */  mtc1       $zero, $f8
    /* B9084 800AA0D4 8FA6005C */  lw         $a2, 0x5C($sp)
    /* B9088 800AA0D8 460084A1 */  cvt.d.s    $f18, $f16
    /* B908C 800AA0DC 46249183 */  div.d      $f6, $f18, $f4
    /* B9090 800AA0E0 46283282 */  mul.d      $f10, $f6, $f8
    /* B9094 800AA0E4 4620540D */  trunc.w.d  $f16, $f10
    /* B9098 800AA0E8 44038000 */  mfc1       $v1, $f16
    /* B909C 800AA0EC 10000029 */  b          .L800AA194_B9144
    /* B90A0 800AA0F0 860E0000 */   lh        $t6, 0x0($s0)
    /* B90A4 800AA0F4 86040006 */  lh         $a0, 0x6($s0)
  .L800AA0F8_B90A8:
    /* B90A8 800AA0F8 24844000 */  addiu      $a0, $a0, 0x4000
    /* B90AC 800AA0FC 308AFFFF */  andi       $t2, $a0, 0xFFFF
    /* B90B0 800AA100 0C007660 */  jal        sins
    /* B90B4 800AA104 01402025 */   or        $a0, $t2, $zero
    /* B90B8 800AA108 44829000 */  mtc1       $v0, $f18
    /* B90BC 800AA10C 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* B90C0 800AA110 44814800 */  mtc1       $at, $f9
    /* B90C4 800AA114 46809120 */  cvt.s.w    $f4, $f18
    /* B90C8 800AA118 44804000 */  mtc1       $zero, $f8
    /* B90CC 800AA11C 3C014070 */  lui        $at, (0x40700000 >> 16)
    /* B90D0 800AA120 44818800 */  mtc1       $at, $f17
    /* B90D4 800AA124 44808000 */  mtc1       $zero, $f16
    /* B90D8 800AA128 86040006 */  lh         $a0, 0x6($s0)
    /* B90DC 800AA12C 460021A1 */  cvt.d.s    $f6, $f4
    /* B90E0 800AA130 46283283 */  div.d      $f10, $f6, $f8
    /* B90E4 800AA134 24844000 */  addiu      $a0, $a0, 0x4000
    /* B90E8 800AA138 308BFFFF */  andi       $t3, $a0, 0xFFFF
    /* B90EC 800AA13C 01602025 */  or         $a0, $t3, $zero
    /* B90F0 800AA140 46305482 */  mul.d      $f18, $f10, $f16
    /* B90F4 800AA144 4620910D */  trunc.w.d  $f4, $f18
    /* B90F8 800AA148 44062000 */  mfc1       $a2, $f4
    /* B90FC 800AA14C 0C007654 */  jal        coss
    /* B9100 800AA150 AFA6005C */   sw        $a2, 0x5C($sp)
    /* B9104 800AA154 44823000 */  mtc1       $v0, $f6
    /* B9108 800AA158 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* B910C 800AA15C 44818800 */  mtc1       $at, $f17
    /* B9110 800AA160 46803220 */  cvt.s.w    $f8, $f6
    /* B9114 800AA164 44808000 */  mtc1       $zero, $f16
    /* B9118 800AA168 3C01C070 */  lui        $at, (0xC0700000 >> 16)
    /* B911C 800AA16C 44812800 */  mtc1       $at, $f5
    /* B9120 800AA170 44802000 */  mtc1       $zero, $f4
    /* B9124 800AA174 8FA6005C */  lw         $a2, 0x5C($sp)
    /* B9128 800AA178 460042A1 */  cvt.d.s    $f10, $f8
    /* B912C 800AA17C 46305483 */  div.d      $f18, $f10, $f16
    /* B9130 800AA180 46249182 */  mul.d      $f6, $f18, $f4
    /* B9134 800AA184 4620320D */  trunc.w.d  $f8, $f6
    /* B9138 800AA188 44034000 */  mfc1       $v1, $f8
    /* B913C 800AA18C 00000000 */  nop
    /* B9140 800AA190 860E0000 */  lh         $t6, 0x0($s0)
  .L800AA194_B9144:
    /* B9144 800AA194 86180004 */  lh         $t8, 0x4($s0)
    /* B9148 800AA198 01C62023 */  subu       $a0, $t6, $a2
    /* B914C 800AA19C 03032823 */  subu       $a1, $t8, $v1
    /* B9150 800AA1A0 00054400 */  sll        $t0, $a1, 16
    /* B9154 800AA1A4 00047C00 */  sll        $t7, $a0, 16
    /* B9158 800AA1A8 000F2403 */  sra        $a0, $t7, 16
    /* B915C 800AA1AC 0C02E134 */  jal        func_800B84D0_C7480
    /* B9160 800AA1B0 00082C03 */   sra       $a1, $t0, 16
    /* B9164 800AA1B4 00025203 */  sra        $t2, $v0, 8
    /* B9168 800AA1B8 AFAA0050 */  sw         $t2, 0x50($sp)
    /* B916C 800AA1BC 86040000 */  lh         $a0, 0x0($s0)
    /* B9170 800AA1C0 0C02E134 */  jal        func_800B84D0_C7480
    /* B9174 800AA1C4 86050004 */   lh        $a1, 0x4($s0)
    /* B9178 800AA1C8 8FAC0050 */  lw         $t4, 0x50($sp)
    /* B917C 800AA1CC 00025A03 */  sra        $t3, $v0, 8
    /* B9180 800AA1D0 256D0005 */  addiu      $t5, $t3, 0x5
    /* B9184 800AA1D4 01AC082A */  slt        $at, $t5, $t4
    /* B9188 800AA1D8 10200053 */  beqz       $at, .L800AA328_B92D8
    /* B918C 800AA1DC 8FA20038 */   lw        $v0, 0x38($sp)
    /* B9190 800AA1E0 8C4E0020 */  lw         $t6, 0x20($v0)
    /* B9194 800AA1E4 3C010001 */  lui        $at, (0x10000 >> 16)
    /* B9198 800AA1E8 240D0002 */  addiu      $t5, $zero, 0x2
    /* B919C 800AA1EC 01C17825 */  or         $t7, $t6, $at
    /* B91A0 800AA1F0 AC4F0020 */  sw         $t7, 0x20($v0)
    /* B91A4 800AA1F4 8E190020 */  lw         $t9, 0x20($s0)
    /* B91A8 800AA1F8 3C010040 */  lui        $at, (0x400000 >> 16)
    /* B91AC 800AA1FC A6000012 */  sh         $zero, 0x12($s0)
    /* B91B0 800AA200 0321C025 */  or         $t8, $t9, $at
    /* B91B4 800AA204 AE180020 */  sw         $t8, 0x20($s0)
    /* B91B8 800AA208 3C0E8015 */  lui        $t6, %hi(D_8014F820)
    /* B91BC 800AA20C 8FA80064 */  lw         $t0, 0x64($sp)
    /* B91C0 800AA210 8FAA0060 */  lw         $t2, 0x60($sp)
    /* B91C4 800AA214 8DCEF820 */  lw         $t6, %lo(D_8014F820)($t6)
    /* B91C8 800AA218 93AC008B */  lbu        $t4, 0x8B($sp)
    /* B91CC 800AA21C 3C19800B */  lui        $t9, %hi(func_800A9E1C_B8DCC)
    /* B91D0 800AA220 27399E1C */  addiu      $t9, $t9, %lo(func_800A9E1C_B8DCC)
    /* B91D4 800AA224 00084A03 */  sra        $t1, $t0, 8
    /* B91D8 800AA228 000A5A03 */  sra        $t3, $t2, 8
    /* B91DC 800AA22C 25CF0008 */  addiu      $t7, $t6, 0x8
    /* B91E0 800AA230 A3A90071 */  sb         $t1, 0x71($sp)
    /* B91E4 800AA234 A3AB0072 */  sb         $t3, 0x72($sp)
    /* B91E8 800AA238 A3AD0070 */  sb         $t5, 0x70($sp)
    /* B91EC 800AA23C AFAF0074 */  sw         $t7, 0x74($sp)
    /* B91F0 800AA240 AFB9007C */  sw         $t9, 0x7C($sp)
    /* B91F4 800AA244 27A40070 */  addiu      $a0, $sp, 0x70
    /* B91F8 800AA248 0C02B915 */  jal        func_800AE454_BD404
    /* B91FC 800AA24C A3AC0078 */   sb        $t4, 0x78($sp)
    /* B9200 800AA250 3C188004 */  lui        $t8, %hi(currentLevel)
    /* B9204 800AA254 8F187F90 */  lw         $t8, %lo(currentLevel)($t8)
    /* B9208 800AA258 3C078014 */  lui        $a3, %hi(D_8013D8C6)
    /* B920C 800AA25C 240900A0 */  addiu      $t1, $zero, 0xA0
    /* B9210 800AA260 00184080 */  sll        $t0, $t8, 2
    /* B9214 800AA264 00E83821 */  addu       $a3, $a3, $t0
    /* B9218 800AA268 240A00FF */  addiu      $t2, $zero, 0xFF
    /* B921C 800AA26C 240B0003 */  addiu      $t3, $zero, 0x3
    /* B9220 800AA270 AFAB001C */  sw         $t3, 0x1C($sp)
    /* B9224 800AA274 AFAA0014 */  sw         $t2, 0x14($sp)
    /* B9228 800AA278 84E7D8C6 */  lh         $a3, %lo(D_8013D8C6)($a3)
    /* B922C 800AA27C AFA90010 */  sw         $t1, 0x10($sp)
    /* B9230 800AA280 86040000 */  lh         $a0, 0x0($s0)
    /* B9234 800AA284 86050002 */  lh         $a1, 0x2($s0)
    /* B9238 800AA288 86060004 */  lh         $a2, 0x4($s0)
    /* B923C 800AA28C 0C033E03 */  jal        func_800CF80C_DE7BC
    /* B9240 800AA290 AFA00018 */   sw        $zero, 0x18($sp)
    /* B9244 800AA294 87B00066 */  lh         $s0, 0x66($sp)
    /* B9248 800AA298 87A60062 */  lh         $a2, 0x62($sp)
    /* B924C 800AA29C 00102400 */  sll        $a0, $s0, 16
    /* B9250 800AA2A0 00062C00 */  sll        $a1, $a2, 16
    /* B9254 800AA2A4 00056C03 */  sra        $t5, $a1, 16
    /* B9258 800AA2A8 00046403 */  sra        $t4, $a0, 16
    /* B925C 800AA2AC 01802025 */  or         $a0, $t4, $zero
    /* B9260 800AA2B0 01A02825 */  or         $a1, $t5, $zero
    /* B9264 800AA2B4 0C02E134 */  jal        func_800B84D0_C7480
    /* B9268 800AA2B8 AFA60038 */   sw        $a2, 0x38($sp)
    /* B926C 800AA2BC 3C0E8025 */  lui        $t6, %hi(D_802571D0)
    /* B9270 800AA2C0 85CE71D0 */  lh         $t6, %lo(D_802571D0)($t6)
    /* B9274 800AA2C4 3C088004 */  lui        $t0, %hi(currentLevel)
    /* B9278 800AA2C8 8D087F90 */  lw         $t0, %lo(currentLevel)($t0)
    /* B927C 800AA2CC 25CF0008 */  addiu      $t7, $t6, 0x8
    /* B9280 800AA2D0 01E21807 */  srav       $v1, $v0, $t7
    /* B9284 800AA2D4 00032C00 */  sll        $a1, $v1, 16
    /* B9288 800AA2D8 00102400 */  sll        $a0, $s0, 16
    /* B928C 800AA2DC 3C078014 */  lui        $a3, %hi(D_8013D8C6)
    /* B9290 800AA2E0 00084880 */  sll        $t1, $t0, 2
    /* B9294 800AA2E4 00E93821 */  addu       $a3, $a3, $t1
    /* B9298 800AA2E8 0004CC03 */  sra        $t9, $a0, 16
    /* B929C 800AA2EC 0005C403 */  sra        $t8, $a1, 16
    /* B92A0 800AA2F0 240A00A0 */  addiu      $t2, $zero, 0xA0
    /* B92A4 800AA2F4 240B00FF */  addiu      $t3, $zero, 0xFF
    /* B92A8 800AA2F8 240C0002 */  addiu      $t4, $zero, 0x2
    /* B92AC 800AA2FC 8FA60038 */  lw         $a2, 0x38($sp)
    /* B92B0 800AA300 AFAC001C */  sw         $t4, 0x1C($sp)
    /* B92B4 800AA304 AFAB0014 */  sw         $t3, 0x14($sp)
    /* B92B8 800AA308 AFAA0010 */  sw         $t2, 0x10($sp)
    /* B92BC 800AA30C 03002825 */  or         $a1, $t8, $zero
    /* B92C0 800AA310 03202025 */  or         $a0, $t9, $zero
    /* B92C4 800AA314 84E7D8C6 */  lh         $a3, %lo(D_8013D8C6)($a3)
    /* B92C8 800AA318 0C033E03 */  jal        func_800CF80C_DE7BC
    /* B92CC 800AA31C AFA00018 */   sw        $zero, 0x18($sp)
    /* B92D0 800AA320 10000002 */  b          .L800AA32C_B92DC
    /* B92D4 800AA324 24020001 */   addiu     $v0, $zero, 0x1
  .L800AA328_B92D8:
    /* B92D8 800AA328 00001025 */  or         $v0, $zero, $zero
  .L800AA32C_B92DC:
    /* B92DC 800AA32C 8FBF002C */  lw         $ra, 0x2C($sp)
    /* B92E0 800AA330 8FB00028 */  lw         $s0, 0x28($sp)
    /* B92E4 800AA334 27BD0088 */  addiu      $sp, $sp, 0x88
    /* B92E8 800AA338 03E00008 */  jr         $ra
    /* B92EC 800AA33C 00000000 */   nop
endlabel func_800A9F34_B8EE4
