nonmatching func_802D6CA0_2B90D0, 0x2AC

glabel func_802D6CA0_2B90D0
    /* 2B90D0 802D6CA0 3C0E8005 */  lui        $t6, %hi(D_8004D1B2)
    /* 2B90D4 802D6CA4 91CED1B2 */  lbu        $t6, %lo(D_8004D1B2)($t6)
    /* 2B90D8 802D6CA8 240F0069 */  addiu      $t7, $zero, 0x69
    /* 2B90DC 802D6CAC 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* 2B90E0 802D6CB0 01EE1023 */  subu       $v0, $t7, $t6
    /* 2B90E4 802D6CB4 0002C400 */  sll        $t8, $v0, 16
    /* 2B90E8 802D6CB8 0018CC03 */  sra        $t9, $t8, 16
    /* 2B90EC 802D6CBC 2B2100C8 */  slti       $at, $t9, 0xC8
    /* 2B90F0 802D6CC0 10200003 */  beqz       $at, .L802D6CD0_2B9100
    /* 2B90F4 802D6CC4 AFBF0014 */   sw        $ra, 0x14($sp)
    /* 2B90F8 802D6CC8 0C026FD9 */  jal        func_8009BF64_AAF14
    /* 2B90FC 802D6CCC 3324FFFF */   andi      $a0, $t9, 0xFFFF
  .L802D6CD0_2B9100:
    /* 2B9100 802D6CD0 3C068005 */  lui        $a2, %hi(D_80052B34)
    /* 2B9104 802D6CD4 8CC62B34 */  lw         $a2, %lo(D_80052B34)($a2)
    /* 2B9108 802D6CD8 24010005 */  addiu      $at, $zero, 0x5
    /* 2B910C 802D6CDC 90C9001A */  lbu        $t1, 0x1A($a2)
    /* 2B9110 802D6CE0 55210097 */  bnel       $t1, $at, .L802D6F40_2B9370
    /* 2B9114 802D6CE4 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 2B9118 802D6CE8 94CA0020 */  lhu        $t2, 0x20($a2)
    /* 2B911C 802D6CEC 3C0C802E */  lui        $t4, %hi(D_802E309C)
    /* 2B9120 802D6CF0 314B0800 */  andi       $t3, $t2, 0x800
    /* 2B9124 802D6CF4 51600092 */  beql       $t3, $zero, .L802D6F40_2B9370
    /* 2B9128 802D6CF8 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 2B912C 802D6CFC 858C309C */  lh         $t4, %lo(D_802E309C)($t4)
    /* 2B9130 802D6D00 2401FFFF */  addiu      $at, $zero, -0x1
    /* 2B9134 802D6D04 55810008 */  bnel       $t4, $at, .L802D6D28_2B9158
    /* 2B9138 802D6D08 84C20000 */   lh        $v0, 0x0($a2)
    /* 2B913C 802D6D0C 0C03EB98 */  jal        func_800FAE60_109E10
    /* 2B9140 802D6D10 00C02025 */   or        $a0, $a2, $zero
    /* 2B9144 802D6D14 3C01802E */  lui        $at, %hi(D_802E309C)
    /* 2B9148 802D6D18 3C068005 */  lui        $a2, %hi(D_80052B34)
    /* 2B914C 802D6D1C 8CC62B34 */  lw         $a2, %lo(D_80052B34)($a2)
    /* 2B9150 802D6D20 A422309C */  sh         $v0, %lo(D_802E309C)($at)
    /* 2B9154 802D6D24 84C20000 */  lh         $v0, 0x0($a2)
  .L802D6D28_2B9158:
    /* 2B9158 802D6D28 84C30004 */  lh         $v1, 0x4($a2)
    /* 2B915C 802D6D2C 00026A03 */  sra        $t5, $v0, 8
    /* 2B9160 802D6D30 00037A03 */  sra        $t7, $v1, 8
    /* 2B9164 802D6D34 000F2E00 */  sll        $a1, $t7, 24
    /* 2B9168 802D6D38 000D2600 */  sll        $a0, $t5, 24
    /* 2B916C 802D6D3C 00047603 */  sra        $t6, $a0, 24
    /* 2B9170 802D6D40 0005C603 */  sra        $t8, $a1, 24
    /* 2B9174 802D6D44 03002825 */  or         $a1, $t8, $zero
    /* 2B9178 802D6D48 0C047498 */  jal        func_8011D260_12C210
    /* 2B917C 802D6D4C 01C02025 */   or        $a0, $t6, $zero
    /* 2B9180 802D6D50 24010045 */  addiu      $at, $zero, 0x45
    /* 2B9184 802D6D54 10410007 */  beq        $v0, $at, .L802D6D74_2B91A4
    /* 2B9188 802D6D58 00404025 */   or        $t0, $v0, $zero
    /* 2B918C 802D6D5C 24010050 */  addiu      $at, $zero, 0x50
    /* 2B9190 802D6D60 10410004 */  beq        $v0, $at, .L802D6D74_2B91A4
    /* 2B9194 802D6D64 24010041 */   addiu     $at, $zero, 0x41
    /* 2B9198 802D6D68 10410002 */  beq        $v0, $at, .L802D6D74_2B91A4
    /* 2B919C 802D6D6C 24010056 */   addiu     $at, $zero, 0x56
    /* 2B91A0 802D6D70 14410067 */  bne        $v0, $at, .L802D6F10_2B9340
  .L802D6D74_2B91A4:
    /* 2B91A4 802D6D74 24070018 */   addiu     $a3, $zero, 0x18
    /* 2B91A8 802D6D78 00470019 */  multu      $v0, $a3
    /* 2B91AC 802D6D7C 3C058005 */  lui        $a1, %hi(buildingInstances)
    /* 2B91B0 802D6D80 24A50AD8 */  addiu      $a1, $a1, %lo(buildingInstances)
    /* 2B91B4 802D6D84 0000C812 */  mflo       $t9
    /* 2B91B8 802D6D88 00B94821 */  addu       $t1, $a1, $t9
    /* 2B91BC 802D6D8C 912A0007 */  lbu        $t2, 0x7($t1)
    /* 2B91C0 802D6D90 1140005F */  beqz       $t2, .L802D6F10_2B9340
    /* 2B91C4 802D6D94 00000000 */   nop
    /* 2B91C8 802D6D98 01070019 */  multu      $t0, $a3
    /* 2B91CC 802D6D9C 3C068005 */  lui        $a2, %hi(D_80052B34)
    /* 2B91D0 802D6DA0 8CC62B34 */  lw         $a2, %lo(D_80052B34)($a2)
    /* 2B91D4 802D6DA4 84CC0000 */  lh         $t4, 0x0($a2)
    /* 2B91D8 802D6DA8 00005812 */  mflo       $t3
    /* 2B91DC 802D6DAC 00AB1021 */  addu       $v0, $a1, $t3
    /* 2B91E0 802D6DB0 844D0000 */  lh         $t5, 0x0($v0)
    /* 2B91E4 802D6DB4 8C490008 */  lw         $t1, 0x8($v0)
    /* 2B91E8 802D6DB8 84580004 */  lh         $t8, 0x4($v0)
    /* 2B91EC 802D6DBC 018D7823 */  subu       $t7, $t4, $t5
    /* 2B91F0 802D6DC0 AFAF0040 */  sw         $t7, 0x40($sp)
    /* 2B91F4 802D6DC4 84CE0004 */  lh         $t6, 0x4($a2)
    /* 2B91F8 802D6DC8 00095380 */  sll        $t2, $t1, 14
    /* 2B91FC 802D6DCC 3144FFFF */  andi       $a0, $t2, 0xFFFF
    /* 2B9200 802D6DD0 01D8C823 */  subu       $t9, $t6, $t8
    /* 2B9204 802D6DD4 AFB9003C */  sw         $t9, 0x3C($sp)
    /* 2B9208 802D6DD8 AFA40028 */  sw         $a0, 0x28($sp)
    /* 2B920C 802D6DDC 0C007654 */  jal        coss
    /* 2B9210 802D6DE0 AFA8004C */   sw        $t0, 0x4C($sp)
    /* 2B9214 802D6DE4 A7A2002C */  sh         $v0, 0x2C($sp)
    /* 2B9218 802D6DE8 0C007660 */  jal        sins
    /* 2B921C 802D6DEC 97A4002A */   lhu       $a0, 0x2A($sp)
    /* 2B9220 802D6DF0 8FAC003C */  lw         $t4, 0x3C($sp)
    /* 2B9224 802D6DF4 87AD002C */  lh         $t5, 0x2C($sp)
    /* 2B9228 802D6DF8 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2B922C 802D6DFC 448C3000 */  mtc1       $t4, $f6
    /* 2B9230 802D6E00 448D4000 */  mtc1       $t5, $f8
    /* 2B9234 802D6E04 44816800 */  mtc1       $at, $f13
    /* 2B9238 802D6E08 468030A1 */  cvt.d.w    $f2, $f6
    /* 2B923C 802D6E0C 44823000 */  mtc1       $v0, $f6
    /* 2B9240 802D6E10 44806000 */  mtc1       $zero, $f12
    /* 2B9244 802D6E14 8FAB0040 */  lw         $t3, 0x40($sp)
    /* 2B9248 802D6E18 468042A0 */  cvt.s.w    $f10, $f8
    /* 2B924C 802D6E1C F7A20018 */  sdc1       $f2, 0x18($sp)
    /* 2B9250 802D6E20 448B2000 */  mtc1       $t3, $f4
    /* 2B9254 802D6E24 97A4002A */  lhu        $a0, 0x2A($sp)
    /* 2B9258 802D6E28 46803220 */  cvt.s.w    $f8, $f6
    /* 2B925C 802D6E2C 46005421 */  cvt.d.s    $f16, $f10
    /* 2B9260 802D6E30 460042A1 */  cvt.d.s    $f10, $f8
    /* 2B9264 802D6E34 462C8483 */  div.d      $f18, $f16, $f12
    /* 2B9268 802D6E38 46802021 */  cvt.d.w    $f0, $f4
    /* 2B926C 802D6E3C F7A00020 */  sdc1       $f0, 0x20($sp)
    /* 2B9270 802D6E40 462C5403 */  div.d      $f16, $f10, $f12
    /* 2B9274 802D6E44 46320102 */  mul.d      $f4, $f0, $f18
    /* 2B9278 802D6E48 00000000 */  nop
    /* 2B927C 802D6E4C 46228482 */  mul.d      $f18, $f16, $f2
    /* 2B9280 802D6E50 46322181 */  sub.d      $f6, $f4, $f18
    /* 2B9284 802D6E54 4620320D */  trunc.w.d  $f8, $f6
    /* 2B9288 802D6E58 0C007660 */  jal        sins
    /* 2B928C 802D6E5C E7A80038 */   swc1      $f8, 0x38($sp)
    /* 2B9290 802D6E60 A7A2002C */  sh         $v0, 0x2C($sp)
    /* 2B9294 802D6E64 0C007654 */  jal        coss
    /* 2B9298 802D6E68 97A4002A */   lhu       $a0, 0x2A($sp)
    /* 2B929C 802D6E6C 8FAE0038 */  lw         $t6, 0x38($sp)
    /* 2B92A0 802D6E70 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2B92A4 802D6E74 44816800 */  mtc1       $at, $f13
    /* 2B92A8 802D6E78 44806000 */  mtc1       $zero, $f12
    /* 2B92AC 802D6E7C D7A00020 */  ldc1       $f0, 0x20($sp)
    /* 2B92B0 802D6E80 05C10023 */  bgez       $t6, .L802D6F10_2B9340
    /* 2B92B4 802D6E84 D7A20018 */   ldc1      $f2, 0x18($sp)
    /* 2B92B8 802D6E88 44825000 */  mtc1       $v0, $f10
    /* 2B92BC 802D6E8C 87B8002C */  lh         $t8, 0x2C($sp)
    /* 2B92C0 802D6E90 3C0C8005 */  lui        $t4, %hi(vehicleInstances)
    /* 2B92C4 802D6E94 46805420 */  cvt.s.w    $f16, $f10
    /* 2B92C8 802D6E98 44984000 */  mtc1       $t8, $f8
    /* 2B92CC 802D6E9C 3C04802D */  lui        $a0, %hi(func_802D6A70_2B8EA0)
    /* 2B92D0 802D6EA0 8FAA004C */  lw         $t2, 0x4C($sp)
    /* 2B92D4 802D6EA4 3C01802E */  lui        $at, %hi(D_802E30F8)
    /* 2B92D8 802D6EA8 468042A0 */  cvt.s.w    $f10, $f8
    /* 2B92DC 802D6EAC 258CDCD0 */  addiu      $t4, $t4, %lo(vehicleInstances)
    /* 2B92E0 802D6EB0 3C0B8005 */  lui        $t3, %hi(D_80052B34)
    /* 2B92E4 802D6EB4 24846A70 */  addiu      $a0, $a0, %lo(func_802D6A70_2B8EA0)
    /* 2B92E8 802D6EB8 46008121 */  cvt.d.s    $f4, $f16
    /* 2B92EC 802D6EBC 46005421 */  cvt.d.s    $f16, $f10
    /* 2B92F0 802D6EC0 462C2483 */  div.d      $f18, $f4, $f12
    /* 2B92F4 802D6EC4 462C8103 */  div.d      $f4, $f16, $f12
    /* 2B92F8 802D6EC8 46229182 */  mul.d      $f6, $f18, $f2
    /* 2B92FC 802D6ECC 00000000 */  nop
    /* 2B9300 802D6ED0 46240482 */  mul.d      $f18, $f0, $f4
    /* 2B9304 802D6ED4 46323200 */  add.d      $f8, $f6, $f18
    /* 2B9308 802D6ED8 4620428D */  trunc.w.d  $f10, $f8
    /* 2B930C 802D6EDC 44095000 */  mfc1       $t1, $f10
    /* 2B9310 802D6EE0 00000000 */  nop
    /* 2B9314 802D6EE4 1920000A */  blez       $t1, .L802D6F10_2B9340
    /* 2B9318 802D6EE8 00000000 */   nop
    /* 2B931C 802D6EEC 8D6B2B34 */  lw         $t3, %lo(D_80052B34)($t3)
    /* 2B9320 802D6EF0 AC2A30F8 */  sw         $t2, %lo(D_802E30F8)($at)
    /* 2B9324 802D6EF4 2401005C */  addiu      $at, $zero, 0x5C
    /* 2B9328 802D6EF8 016C6823 */  subu       $t5, $t3, $t4
    /* 2B932C 802D6EFC 01A1001A */  div        $zero, $t5, $at
    /* 2B9330 802D6F00 00007812 */  mflo       $t7
    /* 2B9334 802D6F04 3C01802E */  lui        $at, %hi(D_802E30FC)
    /* 2B9338 802D6F08 0C001D04 */  jal        func_80007410_8010
    /* 2B933C 802D6F0C AC2F30FC */   sw        $t7, %lo(D_802E30FC)($at)
  .L802D6F10_2B9340:
    /* 2B9340 802D6F10 3C0E8016 */  lui        $t6, %hi(D_801591C4)
    /* 2B9344 802D6F14 85CE91C4 */  lh         $t6, %lo(D_801591C4)($t6)
    /* 2B9348 802D6F18 24010014 */  addiu      $at, $zero, 0x14
    /* 2B934C 802D6F1C 24040000 */  addiu      $a0, $zero, 0x0
    /* 2B9350 802D6F20 55C10007 */  bnel       $t6, $at, .L802D6F40_2B9370
    /* 2B9354 802D6F24 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 2B9358 802D6F28 0C001CB3 */  jal        func_800072CC_7ECC
    /* 2B935C 802D6F2C 24050021 */   addiu     $a1, $zero, 0x21
    /* 2B9360 802D6F30 3C04802D */  lui        $a0, %hi(func_802D6CA0_2B90D0)
    /* 2B9364 802D6F34 0C001D2F */  jal        func_800074BC_80BC
    /* 2B9368 802D6F38 24846CA0 */   addiu     $a0, $a0, %lo(func_802D6CA0_2B90D0)
    /* 2B936C 802D6F3C 8FBF0014 */  lw         $ra, 0x14($sp)
  .L802D6F40_2B9370:
    /* 2B9370 802D6F40 27BD0050 */  addiu      $sp, $sp, 0x50
    /* 2B9374 802D6F44 03E00008 */  jr         $ra
    /* 2B9378 802D6F48 00000000 */   nop
endlabel func_802D6CA0_2B90D0
