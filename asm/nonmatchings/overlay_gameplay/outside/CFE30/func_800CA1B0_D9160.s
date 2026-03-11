nonmatching func_800CA1B0_D9160, 0x43C

glabel func_800CA1B0_D9160
    /* D9160 800CA1B0 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* D9164 800CA1B4 AFB00018 */  sw         $s0, 0x18($sp)
    /* D9168 800CA1B8 309000FF */  andi       $s0, $a0, 0xFF
    /* D916C 800CA1BC 00107080 */  sll        $t6, $s0, 2
    /* D9170 800CA1C0 01D07023 */  subu       $t6, $t6, $s0
    /* D9174 800CA1C4 000E7080 */  sll        $t6, $t6, 2
    /* D9178 800CA1C8 3C028015 */  lui        $v0, %hi(D_8015408E)
    /* D917C 800CA1CC 004E1021 */  addu       $v0, $v0, $t6
    /* D9180 800CA1D0 8442408E */  lh         $v0, %lo(D_8015408E)($v0)
    /* D9184 800CA1D4 3C188015 */  lui        $t8, %hi(D_80154318)
    /* D9188 800CA1D8 27184318 */  addiu      $t8, $t8, %lo(D_80154318)
    /* D918C 800CA1DC 000278C0 */  sll        $t7, $v0, 3
    /* D9190 800CA1E0 01E27823 */  subu       $t7, $t7, $v0
    /* D9194 800CA1E4 000F7880 */  sll        $t7, $t7, 2
    /* D9198 800CA1E8 01F8C821 */  addu       $t9, $t7, $t8
    /* D919C 800CA1EC 3C038015 */  lui        $v1, %hi(D_80156ED8)
    /* D91A0 800CA1F0 90636ED8 */  lbu        $v1, %lo(D_80156ED8)($v1)
    /* D91A4 800CA1F4 AFBF001C */  sw         $ra, 0x1C($sp)
    /* D91A8 800CA1F8 AFA40060 */  sw         $a0, 0x60($sp)
    /* D91AC 800CA1FC AFB90030 */  sw         $t9, 0x30($sp)
    /* D91B0 800CA200 87280004 */  lh         $t0, 0x4($t9)
    /* D91B4 800CA204 24010001 */  addiu      $at, $zero, 0x1
    /* D91B8 800CA208 1461000A */  bne        $v1, $at, .L800CA234_D91E4
    /* D91BC 800CA20C A7A80058 */   sh        $t0, 0x58($sp)
    /* D91C0 800CA210 0C000E38 */  jal        func_800038E0_44E0
    /* D91C4 800CA214 00000000 */   nop
    /* D91C8 800CA218 24010009 */  addiu      $at, $zero, 0x9
    /* D91CC 800CA21C 0041001A */  div        $zero, $v0, $at
    /* D91D0 800CA220 00004810 */  mfhi       $t1
    /* D91D4 800CA224 29210003 */  slti       $at, $t1, 0x3
    /* D91D8 800CA228 142000EB */  bnez       $at, .L800CA5D8_D9588
    /* D91DC 800CA22C 3C038015 */   lui       $v1, %hi(D_80156ED8)
    /* D91E0 800CA230 90636ED8 */  lbu        $v1, %lo(D_80156ED8)($v1)
  .L800CA234_D91E4:
    /* D91E4 800CA234 24010001 */  addiu      $at, $zero, 0x1
    /* D91E8 800CA238 54610008 */  bnel       $v1, $at, .L800CA25C_D920C
    /* D91EC 800CA23C 320400FF */   andi      $a0, $s0, 0xFF
    /* D91F0 800CA240 0C000E38 */  jal        func_800038E0_44E0
    /* D91F4 800CA244 00000000 */   nop
    /* D91F8 800CA248 2401000A */  addiu      $at, $zero, 0xA
    /* D91FC 800CA24C 0041001A */  div        $zero, $v0, $at
    /* D9200 800CA250 00005010 */  mfhi       $t2
    /* D9204 800CA254 194000E0 */  blez       $t2, .L800CA5D8_D9588
    /* D9208 800CA258 320400FF */   andi      $a0, $s0, 0xFF
  .L800CA25C_D920C:
    /* D920C 800CA25C 0C0305ED */  jal        func_800C17B4_D0764
    /* D9210 800CA260 00002825 */   or        $a1, $zero, $zero
    /* D9214 800CA264 00022400 */  sll        $a0, $v0, 16
    /* D9218 800CA268 2401FFFD */  addiu      $at, $zero, -0x3
    /* D921C 800CA26C 104100DA */  beq        $v0, $at, .L800CA5D8_D9588
    /* D9220 800CA270 00045C03 */   sra       $t3, $a0, 16
    /* D9224 800CA274 8FA20030 */  lw         $v0, 0x30($sp)
    /* D9228 800CA278 000B60C0 */  sll        $t4, $t3, 3
    /* D922C 800CA27C 018B6023 */  subu       $t4, $t4, $t3
    /* D9230 800CA280 844E0008 */  lh         $t6, 0x8($v0)
    /* D9234 800CA284 3C0D8015 */  lui        $t5, %hi(D_80154318)
    /* D9238 800CA288 25AD4318 */  addiu      $t5, $t5, %lo(D_80154318)
    /* D923C 800CA28C 000C6080 */  sll        $t4, $t4, 2
    /* D9240 800CA290 018D1821 */  addu       $v1, $t4, $t5
    /* D9244 800CA294 A46E0008 */  sh         $t6, 0x8($v1)
    /* D9248 800CA298 87B90058 */  lh         $t9, 0x58($sp)
    /* D924C 800CA29C 844F000A */  lh         $t7, 0xA($v0)
    /* D9250 800CA2A0 3C0A8015 */  lui        $t2, %hi(D_80154318)
    /* D9254 800CA2A4 001940C0 */  sll        $t0, $t9, 3
    /* D9258 800CA2A8 A46F000A */  sh         $t7, 0xA($v1)
    /* D925C 800CA2AC 8458000C */  lh         $t8, 0xC($v0)
    /* D9260 800CA2B0 01194023 */  subu       $t0, $t0, $t9
    /* D9264 800CA2B4 00084080 */  sll        $t0, $t0, 2
    /* D9268 800CA2B8 25090008 */  addiu      $t1, $t0, 0x8
    /* D926C 800CA2BC 254A4318 */  addiu      $t2, $t2, %lo(D_80154318)
    /* D9270 800CA2C0 012A8021 */  addu       $s0, $t1, $t2
    /* D9274 800CA2C4 A478000C */  sh         $t8, 0xC($v1)
    /* D9278 800CA2C8 920B0008 */  lbu        $t3, 0x8($s0)
    /* D927C 800CA2CC AFA30028 */  sw         $v1, 0x28($sp)
    /* D9280 800CA2D0 24420008 */  addiu      $v0, $v0, 0x8
    /* D9284 800CA2D4 0C000E38 */  jal        func_800038E0_44E0
    /* D9288 800CA2D8 A06B0011 */   sb        $t3, 0x11($v1)
    /* D928C 800CA2DC 8FAC0030 */  lw         $t4, 0x30($sp)
    /* D9290 800CA2E0 8FB80028 */  lw         $t8, 0x28($sp)
    /* D9294 800CA2E4 27A40044 */  addiu      $a0, $sp, 0x44
    /* D9298 800CA2E8 85830002 */  lh         $v1, 0x2($t4)
    /* D929C 800CA2EC 00802825 */  or         $a1, $a0, $zero
    /* D92A0 800CA2F0 00036840 */  sll        $t5, $v1, 1
    /* D92A4 800CA2F4 004D001A */  div        $zero, $v0, $t5
    /* D92A8 800CA2F8 00007010 */  mfhi       $t6
    /* D92AC 800CA2FC 01C37821 */  addu       $t7, $t6, $v1
    /* D92B0 800CA300 A70F0002 */  sh         $t7, 0x2($t8)
    /* D92B4 800CA304 82190000 */  lb         $t9, 0x0($s0)
    /* D92B8 800CA308 15A00002 */  bnez       $t5, .L800CA314_D92C4
    /* D92BC 800CA30C 00000000 */   nop
    /* D92C0 800CA310 0007000D */  break      7
  .L800CA314_D92C4:
    /* D92C4 800CA314 2401FFFF */  addiu      $at, $zero, -0x1
    /* D92C8 800CA318 15A10004 */  bne        $t5, $at, .L800CA32C_D92DC
    /* D92CC 800CA31C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D92D0 800CA320 14410002 */  bne        $v0, $at, .L800CA32C_D92DC
    /* D92D4 800CA324 00000000 */   nop
    /* D92D8 800CA328 0006000D */  break      6
  .L800CA32C_D92DC:
    /* D92DC 800CA32C 44992000 */  mtc1       $t9, $f4
    /* D92E0 800CA330 00000000 */  nop
    /* D92E4 800CA334 468021A0 */  cvt.s.w    $f6, $f4
    /* D92E8 800CA338 E7A60044 */  swc1       $f6, 0x44($sp)
    /* D92EC 800CA33C 82080001 */  lb         $t0, 0x1($s0)
    /* D92F0 800CA340 44884000 */  mtc1       $t0, $f8
    /* D92F4 800CA344 00000000 */  nop
    /* D92F8 800CA348 468042A0 */  cvt.s.w    $f10, $f8
    /* D92FC 800CA34C E7AA0048 */  swc1       $f10, 0x48($sp)
    /* D9300 800CA350 82090002 */  lb         $t1, 0x2($s0)
    /* D9304 800CA354 44898000 */  mtc1       $t1, $f16
    /* D9308 800CA358 00000000 */  nop
    /* D930C 800CA35C 468084A0 */  cvt.s.w    $f18, $f16
    /* D9310 800CA360 0C030409 */  jal        func_800C1024_CFFD4
    /* D9314 800CA364 E7B2004C */   swc1      $f18, 0x4C($sp)
    /* D9318 800CA368 0C000E38 */  jal        func_800038E0_44E0
    /* D931C 800CA36C 00000000 */   nop
    /* D9320 800CA370 920A0004 */  lbu        $t2, 0x4($s0)
    /* D9324 800CA374 004A001A */  div        $zero, $v0, $t2
    /* D9328 800CA378 00005810 */  mfhi       $t3
    /* D932C 800CA37C 448B2000 */  mtc1       $t3, $f4
    /* D9330 800CA380 15400002 */  bnez       $t2, .L800CA38C_D933C
    /* D9334 800CA384 00000000 */   nop
    /* D9338 800CA388 0007000D */  break      7
  .L800CA38C_D933C:
    /* D933C 800CA38C 2401FFFF */  addiu      $at, $zero, -0x1
    /* D9340 800CA390 15410004 */  bne        $t2, $at, .L800CA3A4_D9354
    /* D9344 800CA394 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D9348 800CA398 14410002 */  bne        $v0, $at, .L800CA3A4_D9354
    /* D934C 800CA39C 00000000 */   nop
    /* D9350 800CA3A0 0006000D */  break      6
  .L800CA3A4_D9354:
    /* D9354 800CA3A4 468021A0 */  cvt.s.w    $f6, $f4
    /* D9358 800CA3A8 3C018014 */  lui        $at, %hi(D_80143FE0)
    /* D935C 800CA3AC D42A3FE0 */  ldc1       $f10, %lo(D_80143FE0)($at)
    /* D9360 800CA3B0 46003221 */  cvt.d.s    $f8, $f6
    /* D9364 800CA3B4 462A4403 */  div.d      $f16, $f8, $f10
    /* D9368 800CA3B8 462084A0 */  cvt.s.d    $f18, $f16
    /* D936C 800CA3BC 0C000E38 */  jal        func_800038E0_44E0
    /* D9370 800CA3C0 E7B20038 */   swc1      $f18, 0x38($sp)
    /* D9374 800CA3C4 24010015 */  addiu      $at, $zero, 0x15
    /* D9378 800CA3C8 0041001A */  div        $zero, $v0, $at
    /* D937C 800CA3CC 00006010 */  mfhi       $t4
    /* D9380 800CA3D0 2981000A */  slti       $at, $t4, 0xA
    /* D9384 800CA3D4 10200005 */  beqz       $at, .L800CA3EC_D939C
    /* D9388 800CA3D8 C7A60038 */   lwc1      $f6, 0x38($sp)
    /* D938C 800CA3DC 44802000 */  mtc1       $zero, $f4
    /* D9390 800CA3E0 00000000 */  nop
    /* D9394 800CA3E4 46062201 */  sub.s      $f8, $f4, $f6
    /* D9398 800CA3E8 E7A80038 */  swc1       $f8, 0x38($sp)
  .L800CA3EC_D939C:
    /* D939C 800CA3EC C7AA0038 */  lwc1       $f10, 0x38($sp)
    /* D93A0 800CA3F0 C7B00044 */  lwc1       $f16, 0x44($sp)
    /* D93A4 800CA3F4 46105480 */  add.s      $f18, $f10, $f16
    /* D93A8 800CA3F8 0C000E38 */  jal        func_800038E0_44E0
    /* D93AC 800CA3FC E7B20038 */   swc1      $f18, 0x38($sp)
    /* D93B0 800CA400 920D0004 */  lbu        $t5, 0x4($s0)
    /* D93B4 800CA404 004D001A */  div        $zero, $v0, $t5
    /* D93B8 800CA408 00007010 */  mfhi       $t6
    /* D93BC 800CA40C 448E2000 */  mtc1       $t6, $f4
    /* D93C0 800CA410 15A00002 */  bnez       $t5, .L800CA41C_D93CC
    /* D93C4 800CA414 00000000 */   nop
    /* D93C8 800CA418 0007000D */  break      7
  .L800CA41C_D93CC:
    /* D93CC 800CA41C 2401FFFF */  addiu      $at, $zero, -0x1
    /* D93D0 800CA420 15A10004 */  bne        $t5, $at, .L800CA434_D93E4
    /* D93D4 800CA424 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D93D8 800CA428 14410002 */  bne        $v0, $at, .L800CA434_D93E4
    /* D93DC 800CA42C 00000000 */   nop
    /* D93E0 800CA430 0006000D */  break      6
  .L800CA434_D93E4:
    /* D93E4 800CA434 468021A0 */  cvt.s.w    $f6, $f4
    /* D93E8 800CA438 3C018014 */  lui        $at, %hi(D_80143FE8)
    /* D93EC 800CA43C D42A3FE8 */  ldc1       $f10, %lo(D_80143FE8)($at)
    /* D93F0 800CA440 46003221 */  cvt.d.s    $f8, $f6
    /* D93F4 800CA444 462A4403 */  div.d      $f16, $f8, $f10
    /* D93F8 800CA448 462084A0 */  cvt.s.d    $f18, $f16
    /* D93FC 800CA44C 0C000E38 */  jal        func_800038E0_44E0
    /* D9400 800CA450 E7B2003C */   swc1      $f18, 0x3C($sp)
    /* D9404 800CA454 24010015 */  addiu      $at, $zero, 0x15
    /* D9408 800CA458 0041001A */  div        $zero, $v0, $at
    /* D940C 800CA45C 00007810 */  mfhi       $t7
    /* D9410 800CA460 29E1000A */  slti       $at, $t7, 0xA
    /* D9414 800CA464 10200005 */  beqz       $at, .L800CA47C_D942C
    /* D9418 800CA468 C7A6003C */   lwc1      $f6, 0x3C($sp)
    /* D941C 800CA46C 44802000 */  mtc1       $zero, $f4
    /* D9420 800CA470 00000000 */  nop
    /* D9424 800CA474 46062201 */  sub.s      $f8, $f4, $f6
    /* D9428 800CA478 E7A8003C */  swc1       $f8, 0x3C($sp)
  .L800CA47C_D942C:
    /* D942C 800CA47C C7AA003C */  lwc1       $f10, 0x3C($sp)
    /* D9430 800CA480 C7B00048 */  lwc1       $f16, 0x48($sp)
    /* D9434 800CA484 46105480 */  add.s      $f18, $f10, $f16
    /* D9438 800CA488 0C000E38 */  jal        func_800038E0_44E0
    /* D943C 800CA48C E7B2003C */   swc1      $f18, 0x3C($sp)
    /* D9440 800CA490 92180004 */  lbu        $t8, 0x4($s0)
    /* D9444 800CA494 0058001A */  div        $zero, $v0, $t8
    /* D9448 800CA498 0000C810 */  mfhi       $t9
    /* D944C 800CA49C 44992000 */  mtc1       $t9, $f4
    /* D9450 800CA4A0 17000002 */  bnez       $t8, .L800CA4AC_D945C
    /* D9454 800CA4A4 00000000 */   nop
    /* D9458 800CA4A8 0007000D */  break      7
  .L800CA4AC_D945C:
    /* D945C 800CA4AC 2401FFFF */  addiu      $at, $zero, -0x1
    /* D9460 800CA4B0 17010004 */  bne        $t8, $at, .L800CA4C4_D9474
    /* D9464 800CA4B4 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D9468 800CA4B8 14410002 */  bne        $v0, $at, .L800CA4C4_D9474
    /* D946C 800CA4BC 00000000 */   nop
    /* D9470 800CA4C0 0006000D */  break      6
  .L800CA4C4_D9474:
    /* D9474 800CA4C4 468021A0 */  cvt.s.w    $f6, $f4
    /* D9478 800CA4C8 3C018014 */  lui        $at, %hi(D_80143FF0)
    /* D947C 800CA4CC D42A3FF0 */  ldc1       $f10, %lo(D_80143FF0)($at)
    /* D9480 800CA4D0 46003221 */  cvt.d.s    $f8, $f6
    /* D9484 800CA4D4 462A4403 */  div.d      $f16, $f8, $f10
    /* D9488 800CA4D8 462084A0 */  cvt.s.d    $f18, $f16
    /* D948C 800CA4DC 0C000E38 */  jal        func_800038E0_44E0
    /* D9490 800CA4E0 E7B20040 */   swc1      $f18, 0x40($sp)
    /* D9494 800CA4E4 24010015 */  addiu      $at, $zero, 0x15
    /* D9498 800CA4E8 0041001A */  div        $zero, $v0, $at
    /* D949C 800CA4EC 00004010 */  mfhi       $t0
    /* D94A0 800CA4F0 2901000A */  slti       $at, $t0, 0xA
    /* D94A4 800CA4F4 10200005 */  beqz       $at, .L800CA50C_D94BC
    /* D94A8 800CA4F8 C7A60040 */   lwc1      $f6, 0x40($sp)
    /* D94AC 800CA4FC 44802000 */  mtc1       $zero, $f4
    /* D94B0 800CA500 00000000 */  nop
    /* D94B4 800CA504 46062201 */  sub.s      $f8, $f4, $f6
    /* D94B8 800CA508 E7A80040 */  swc1       $f8, 0x40($sp)
  .L800CA50C_D94BC:
    /* D94BC 800CA50C C7AA0040 */  lwc1       $f10, 0x40($sp)
    /* D94C0 800CA510 C7B0004C */  lwc1       $f16, 0x4C($sp)
    /* D94C4 800CA514 27A40038 */  addiu      $a0, $sp, 0x38
    /* D94C8 800CA518 00802825 */  or         $a1, $a0, $zero
    /* D94CC 800CA51C 46105480 */  add.s      $f18, $f10, $f16
    /* D94D0 800CA520 0C030409 */  jal        func_800C1024_CFFD4
    /* D94D4 800CA524 E7B20040 */   swc1      $f18, 0x40($sp)
    /* D94D8 800CA528 92090003 */  lbu        $t1, 0x3($s0)
    /* D94DC 800CA52C C7A80038 */  lwc1       $f8, 0x38($sp)
    /* D94E0 800CA530 8FA20028 */  lw         $v0, 0x28($sp)
    /* D94E4 800CA534 24420008 */  addiu      $v0, $v0, 0x8
    /* D94E8 800CA538 05210003 */  bgez       $t1, .L800CA548_D94F8
    /* D94EC 800CA53C 00095083 */   sra       $t2, $t1, 2
    /* D94F0 800CA540 25210003 */  addiu      $at, $t1, 0x3
    /* D94F4 800CA544 00015083 */  sra        $t2, $at, 2
  .L800CA548_D94F8:
    /* D94F8 800CA548 448A2000 */  mtc1       $t2, $f4
    /* D94FC 800CA54C 00000000 */  nop
    /* D9500 800CA550 468021A0 */  cvt.s.w    $f6, $f4
    /* D9504 800CA554 46083282 */  mul.s      $f10, $f6, $f8
    /* D9508 800CA558 4600540D */  trunc.w.s  $f16, $f10
    /* D950C 800CA55C 440C8000 */  mfc1       $t4, $f16
    /* D9510 800CA560 00000000 */  nop
    /* D9514 800CA564 A04C000A */  sb         $t4, 0xA($v0)
    /* D9518 800CA568 920D0003 */  lbu        $t5, 0x3($s0)
    /* D951C 800CA56C C7A6003C */  lwc1       $f6, 0x3C($sp)
    /* D9520 800CA570 05A10003 */  bgez       $t5, .L800CA580_D9530
    /* D9524 800CA574 000D7083 */   sra       $t6, $t5, 2
    /* D9528 800CA578 25A10003 */  addiu      $at, $t5, 0x3
    /* D952C 800CA57C 00017083 */  sra        $t6, $at, 2
  .L800CA580_D9530:
    /* D9530 800CA580 448E9000 */  mtc1       $t6, $f18
    /* D9534 800CA584 00000000 */  nop
    /* D9538 800CA588 46809120 */  cvt.s.w    $f4, $f18
    /* D953C 800CA58C 46062202 */  mul.s      $f8, $f4, $f6
    /* D9540 800CA590 4600428D */  trunc.w.s  $f10, $f8
    /* D9544 800CA594 44185000 */  mfc1       $t8, $f10
    /* D9548 800CA598 00000000 */  nop
    /* D954C 800CA59C A058000B */  sb         $t8, 0xB($v0)
    /* D9550 800CA5A0 92190003 */  lbu        $t9, 0x3($s0)
    /* D9554 800CA5A4 C7A40040 */  lwc1       $f4, 0x40($sp)
    /* D9558 800CA5A8 07210003 */  bgez       $t9, .L800CA5B8_D9568
    /* D955C 800CA5AC 00194083 */   sra       $t0, $t9, 2
    /* D9560 800CA5B0 27210003 */  addiu      $at, $t9, 0x3
    /* D9564 800CA5B4 00014083 */  sra        $t0, $at, 2
  .L800CA5B8_D9568:
    /* D9568 800CA5B8 44888000 */  mtc1       $t0, $f16
    /* D956C 800CA5BC 00000000 */  nop
    /* D9570 800CA5C0 468084A0 */  cvt.s.w    $f18, $f16
    /* D9574 800CA5C4 46049182 */  mul.s      $f6, $f18, $f4
    /* D9578 800CA5C8 4600320D */  trunc.w.s  $f8, $f6
    /* D957C 800CA5CC 440A4000 */  mfc1       $t2, $f8
    /* D9580 800CA5D0 00000000 */  nop
    /* D9584 800CA5D4 A04A000C */  sb         $t2, 0xC($v0)
  .L800CA5D8_D9588:
    /* D9588 800CA5D8 8FBF001C */  lw         $ra, 0x1C($sp)
    /* D958C 800CA5DC 8FB00018 */  lw         $s0, 0x18($sp)
    /* D9590 800CA5E0 27BD0060 */  addiu      $sp, $sp, 0x60
    /* D9594 800CA5E4 03E00008 */  jr         $ra
    /* D9598 800CA5E8 00000000 */   nop
endlabel func_800CA1B0_D9160
