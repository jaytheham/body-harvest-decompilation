nonmatching func_800CF2E0_DE290, 0x52C

glabel func_800CF2E0_DE290
    /* DE290 800CF2E0 27BDFEF0 */  addiu      $sp, $sp, -0x110
    /* DE294 800CF2E4 24060020 */  addiu      $a2, $zero, 0x20
    /* DE298 800CF2E8 3C018015 */  lui        $at, %hi(D_80153BCD)
    /* DE29C 800CF2EC AFB5005C */  sw         $s5, 0x5C($sp)
    /* DE2A0 800CF2F0 A0263BCD */  sb         $a2, %lo(D_80153BCD)($at)
    /* DE2A4 800CF2F4 3C158006 */  lui        $s5, %hi(D_8005BB2C)
    /* DE2A8 800CF2F8 3C018015 */  lui        $at, %hi(D_80153BCE)
    /* DE2AC 800CF2FC 26B5BB2C */  addiu      $s5, $s5, %lo(D_8005BB2C)
    /* DE2B0 800CF300 A0263BCE */  sb         $a2, %lo(D_80153BCE)($at)
    /* DE2B4 800CF304 8EA20000 */  lw         $v0, 0x0($s5)
    /* DE2B8 800CF308 3C038015 */  lui        $v1, %hi(D_8015425E)
    /* DE2BC 800CF30C 8463425E */  lh         $v1, %lo(D_8015425E)($v1)
    /* DE2C0 800CF310 244A0008 */  addiu      $t2, $v0, 0x8
    /* DE2C4 800CF314 AFBF006C */  sw         $ra, 0x6C($sp)
    /* DE2C8 800CF318 AFBE0068 */  sw         $fp, 0x68($sp)
    /* DE2CC 800CF31C AFB70064 */  sw         $s7, 0x64($sp)
    /* DE2D0 800CF320 AFB60060 */  sw         $s6, 0x60($sp)
    /* DE2D4 800CF324 AFB40058 */  sw         $s4, 0x58($sp)
    /* DE2D8 800CF328 AFB30054 */  sw         $s3, 0x54($sp)
    /* DE2DC 800CF32C AFB20050 */  sw         $s2, 0x50($sp)
    /* DE2E0 800CF330 AFB1004C */  sw         $s1, 0x4C($sp)
    /* DE2E4 800CF334 AFB00048 */  sw         $s0, 0x48($sp)
    /* DE2E8 800CF338 F7BC0040 */  sdc1       $f28, 0x40($sp)
    /* DE2EC 800CF33C F7BA0038 */  sdc1       $f26, 0x38($sp)
    /* DE2F0 800CF340 F7B80030 */  sdc1       $f24, 0x30($sp)
    /* DE2F4 800CF344 F7B60028 */  sdc1       $f22, 0x28($sp)
    /* DE2F8 800CF348 F7B40020 */  sdc1       $f20, 0x20($sp)
    /* DE2FC 800CF34C AEAA0000 */  sw         $t2, 0x0($s5)
    /* DE300 800CF350 3C0BE700 */  lui        $t3, (0xE7000000 >> 16)
    /* DE304 800CF354 AC4B0000 */  sw         $t3, 0x0($v0)
    /* DE308 800CF358 AC400004 */  sw         $zero, 0x4($v0)
    /* DE30C 800CF35C 8EA20000 */  lw         $v0, 0x0($s5)
    /* DE310 800CF360 3C0DFC30 */  lui        $t5, (0xFC309661 >> 16)
    /* DE314 800CF364 3C0E552E */  lui        $t6, (0x552EFF7F >> 16)
    /* DE318 800CF368 244C0008 */  addiu      $t4, $v0, 0x8
    /* DE31C 800CF36C AEAC0000 */  sw         $t4, 0x0($s5)
    /* DE320 800CF370 35CEFF7F */  ori        $t6, $t6, (0x552EFF7F & 0xFFFF)
    /* DE324 800CF374 35AD9661 */  ori        $t5, $t5, (0xFC309661 & 0xFFFF)
    /* DE328 800CF378 2401FFFA */  addiu      $at, $zero, -0x6
    /* DE32C 800CF37C AC4D0000 */  sw         $t5, 0x0($v0)
    /* DE330 800CF380 10610111 */  beq        $v1, $at, .L800CF7C8_DE778
    /* DE334 800CF384 AC4E0004 */   sw        $t6, 0x4($v0)
    /* DE338 800CF388 2401FFFB */  addiu      $at, $zero, -0x5
    /* DE33C 800CF38C 1061010E */  beq        $v1, $at, .L800CF7C8_DE778
    /* DE340 800CF390 27BE00D4 */   addiu     $fp, $sp, 0xD4
    /* DE344 800CF394 3C014008 */  lui        $at, (0x40080000 >> 16)
    /* DE348 800CF398 4481E800 */  mtc1       $at, $f29
    /* DE34C 800CF39C 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* DE350 800CF3A0 4481D000 */  mtc1       $at, $f26
    /* DE354 800CF3A4 3C018014 */  lui        $at, %hi(D_80144008)
    /* DE358 800CF3A8 D4384008 */  ldc1       $f24, %lo(D_80144008)($at)
    /* DE35C 800CF3AC 3C013FE0 */  lui        $at, (0x3FE00000 >> 16)
    /* DE360 800CF3B0 4481B800 */  mtc1       $at, $f23
    /* DE364 800CF3B4 4480E000 */  mtc1       $zero, $f28
    /* DE368 800CF3B8 4480B000 */  mtc1       $zero, $f22
    /* DE36C 800CF3BC 27B700C8 */  addiu      $s7, $sp, 0xC8
    /* DE370 800CF3C0 27B600BC */  addiu      $s6, $sp, 0xBC
  .L800CF3C4_DE374:
    /* DE374 800CF3C4 3C018004 */  lui        $at, %hi(D_80047954)
    /* DE378 800CF3C8 C4247954 */  lwc1       $f4, %lo(D_80047954)($at)
    /* DE37C 800CF3CC 3C018004 */  lui        $at, %hi(D_8004795C)
    /* DE380 800CF3D0 C426795C */  lwc1       $f6, %lo(D_8004795C)($at)
    /* DE384 800CF3D4 461A2282 */  mul.s      $f10, $f4, $f26
    /* DE388 800CF3D8 000378C0 */  sll        $t7, $v1, 3
    /* DE38C 800CF3DC 3C0C8004 */  lui        $t4, %hi(D_80047950)
    /* DE390 800CF3E0 461A3202 */  mul.s      $f8, $f6, $f26
    /* DE394 800CF3E4 858C7950 */  lh         $t4, %lo(D_80047950)($t4)
    /* DE398 800CF3E8 01E37823 */  subu       $t7, $t7, $v1
    /* DE39C 800CF3EC 3C198015 */  lui        $t9, %hi(D_80154318)
    /* DE3A0 800CF3F0 27394318 */  addiu      $t9, $t9, %lo(D_80154318)
    /* DE3A4 800CF3F4 000F7880 */  sll        $t7, $t7, 2
    /* DE3A8 800CF3F8 4600540D */  trunc.w.s  $f16, $f10
    /* DE3AC 800CF3FC 01F9A021 */  addu       $s4, $t7, $t9
    /* DE3B0 800CF400 240D4000 */  addiu      $t5, $zero, 0x4000
    /* DE3B4 800CF404 4600448D */  trunc.w.s  $f18, $f8
    /* DE3B8 800CF408 44078000 */  mfc1       $a3, $f16
    /* DE3BC 800CF40C 01AC7023 */  subu       $t6, $t5, $t4
    /* DE3C0 800CF410 AFAE0014 */  sw         $t6, 0x14($sp)
    /* DE3C4 800CF414 440B9000 */  mfc1       $t3, $f18
    /* DE3C8 800CF418 00074400 */  sll        $t0, $a3, 16
    /* DE3CC 800CF41C 00083C03 */  sra        $a3, $t0, 16
    /* DE3D0 800CF420 86840008 */  lh         $a0, 0x8($s4)
    /* DE3D4 800CF424 8685000C */  lh         $a1, 0xC($s4)
    /* DE3D8 800CF428 96860002 */  lhu        $a2, 0x2($s4)
    /* DE3DC 800CF42C 0C02E4EB */  jal        func_800B93AC_C835C
    /* DE3E0 800CF430 AFAB0010 */   sw        $t3, 0x10($sp)
    /* DE3E4 800CF434 504000DF */  beql       $v0, $zero, .L800CF7B4_DE764
    /* DE3E8 800CF438 86830004 */   lh        $v1, 0x4($s4)
    /* DE3EC 800CF43C 8EA20000 */  lw         $v0, 0x0($s5)
    /* DE3F0 800CF440 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
    /* DE3F4 800CF444 3C188005 */  lui        $t8, %hi(D_80052A8C)
    /* DE3F8 800CF448 244F0008 */  addiu      $t7, $v0, 0x8
    /* DE3FC 800CF44C AEAF0000 */  sw         $t7, 0x0($s5)
    /* DE400 800CF450 AC400004 */  sw         $zero, 0x4($v0)
    /* DE404 800CF454 AC590000 */  sw         $t9, 0x0($v0)
    /* DE408 800CF458 8F182A8C */  lw         $t8, %lo(D_80052A8C)($t8)
    /* DE40C 800CF45C 33080003 */  andi       $t0, $t8, 0x3
    /* DE410 800CF460 2D010002 */  sltiu      $at, $t0, 0x2
    /* DE414 800CF464 5020000D */  beql       $at, $zero, .L800CF49C_DE44C
    /* DE418 800CF468 8EA20000 */   lw        $v0, 0x0($s5)
    /* DE41C 800CF46C 8EA20000 */  lw         $v0, 0x0($s5)
    /* DE420 800CF470 3C0AFA00 */  lui        $t2, (0xFA000000 >> 16)
    /* DE424 800CF474 26900008 */  addiu      $s0, $s4, 0x8
    /* DE428 800CF478 24490008 */  addiu      $t1, $v0, 0x8
    /* DE42C 800CF47C AEA90000 */  sw         $t1, 0x0($s5)
    /* DE430 800CF480 AC4A0000 */  sw         $t2, 0x0($v0)
    /* DE434 800CF484 920D000C */  lbu        $t5, 0xC($s0)
    /* DE438 800CF488 3C01FF00 */  lui        $at, (0xFF000000 >> 16)
    /* DE43C 800CF48C 01A16025 */  or         $t4, $t5, $at
    /* DE440 800CF490 1000000A */  b          .L800CF4BC_DE46C
    /* DE444 800CF494 AC4C0004 */   sw        $t4, 0x4($v0)
    /* DE448 800CF498 8EA20000 */  lw         $v0, 0x0($s5)
  .L800CF49C_DE44C:
    /* DE44C 800CF49C 3C0FFA00 */  lui        $t7, (0xFA000000 >> 16)
    /* DE450 800CF4A0 26900008 */  addiu      $s0, $s4, 0x8
    /* DE454 800CF4A4 244E0008 */  addiu      $t6, $v0, 0x8
    /* DE458 800CF4A8 AEAE0000 */  sw         $t6, 0x0($s5)
    /* DE45C 800CF4AC AC4F0000 */  sw         $t7, 0x0($v0)
    /* DE460 800CF4B0 9218000C */  lbu        $t8, 0xC($s0)
    /* DE464 800CF4B4 37088000 */  ori        $t0, $t8, 0x8000
    /* DE468 800CF4B8 AC480004 */  sw         $t0, 0x4($v0)
  .L800CF4BC_DE46C:
    /* DE46C 800CF4BC 8EA20000 */  lw         $v0, 0x0($s5)
    /* DE470 800CF4C0 3C0AFB00 */  lui        $t2, (0xFB000000 >> 16)
    /* DE474 800CF4C4 2401FF00 */  addiu      $at, $zero, -0x100
    /* DE478 800CF4C8 24490008 */  addiu      $t1, $v0, 0x8
    /* DE47C 800CF4CC AEA90000 */  sw         $t1, 0x0($s5)
    /* DE480 800CF4D0 AC4A0000 */  sw         $t2, 0x0($v0)
    /* DE484 800CF4D4 920D000C */  lbu        $t5, 0xC($s0)
    /* DE488 800CF4D8 260F0006 */  addiu      $t7, $s0, 0x6
    /* DE48C 800CF4DC 3C058015 */  lui        $a1, %hi(D_80153AB8)
    /* DE490 800CF4E0 01A16025 */  or         $t4, $t5, $at
    /* DE494 800CF4E4 AC4C0004 */  sw         $t4, 0x4($v0)
    /* DE498 800CF4E8 86830002 */  lh         $v1, 0x2($s4)
    /* DE49C 800CF4EC 3C018015 */  lui        $at, %hi(D_80153BC8)
    /* DE4A0 800CF4F0 24A53AB8 */  addiu      $a1, $a1, %lo(D_80153AB8)
    /* DE4A4 800CF4F4 44838000 */  mtc1       $v1, $f16
    /* DE4A8 800CF4F8 44832000 */  mtc1       $v1, $f4
    /* DE4AC 800CF4FC 27A600F0 */  addiu      $a2, $sp, 0xF0
    /* DE4B0 800CF500 468081A1 */  cvt.d.w    $f6, $f16
    /* DE4B4 800CF504 468022A0 */  cvt.s.w    $f10, $f4
    /* DE4B8 800CF508 463C3202 */  mul.d      $f8, $f6, $f28
    /* DE4BC 800CF50C E42A3BC8 */  swc1       $f10, %lo(D_80153BC8)($at)
    /* DE4C0 800CF510 920E000C */  lbu        $t6, 0xC($s0)
    /* DE4C4 800CF514 3C018015 */  lui        $at, %hi(D_80153BCC)
    /* DE4C8 800CF518 46204520 */  cvt.s.d    $f20, $f8
    /* DE4CC 800CF51C A02E3BCC */  sb         $t6, %lo(D_80153BCC)($at)
    /* DE4D0 800CF520 3C018015 */  lui        $at, %hi(D_80153BC4)
    /* DE4D4 800CF524 AC2F3BC4 */  sw         $t7, %lo(D_80153BC4)($at)
    /* DE4D8 800CF528 0C03044A */  jal        func_800C1128_D00D8
    /* DE4DC 800CF52C 4600A306 */   mov.s     $f12, $f20
    /* DE4E0 800CF530 3C058015 */  lui        $a1, %hi(D_80153AC4)
    /* DE4E4 800CF534 24A53AC4 */  addiu      $a1, $a1, %lo(D_80153AC4)
    /* DE4E8 800CF538 4600A306 */  mov.s      $f12, $f20
    /* DE4EC 800CF53C 0C03044A */  jal        func_800C1128_D00D8
    /* DE4F0 800CF540 27A600FC */   addiu     $a2, $sp, 0xFC
    /* DE4F4 800CF544 C7B200F0 */  lwc1       $f18, 0xF0($sp)
    /* DE4F8 800CF548 C7A400FC */  lwc1       $f4, 0xFC($sp)
    /* DE4FC 800CF54C 86190000 */  lh         $t9, 0x0($s0)
    /* DE500 800CF550 27A400E0 */  addiu      $a0, $sp, 0xE0
    /* DE504 800CF554 46049281 */  sub.s      $f10, $f18, $f4
    /* DE508 800CF558 44994000 */  mtc1       $t9, $f8
    /* DE50C 800CF55C 02C02825 */  or         $a1, $s6, $zero
    /* DE510 800CF560 02E03025 */  or         $a2, $s7, $zero
    /* DE514 800CF564 46005421 */  cvt.d.s    $f16, $f10
    /* DE518 800CF568 468042A0 */  cvt.s.w    $f10, $f8
    /* DE51C 800CF56C 46368182 */  mul.d      $f6, $f16, $f22
    /* DE520 800CF570 46005421 */  cvt.d.s    $f16, $f10
    /* DE524 800CF574 46303200 */  add.d      $f8, $f6, $f16
    /* DE528 800CF578 C7B00100 */  lwc1       $f16, 0x100($sp)
    /* DE52C 800CF57C C7A600F4 */  lwc1       $f6, 0xF4($sp)
    /* DE530 800CF580 462042A0 */  cvt.s.d    $f10, $f8
    /* DE534 800CF584 46103201 */  sub.s      $f8, $f6, $f16
    /* DE538 800CF588 E7AA00E0 */  swc1       $f10, 0xE0($sp)
    /* DE53C 800CF58C 86180002 */  lh         $t8, 0x2($s0)
    /* DE540 800CF590 E7B20070 */  swc1       $f18, 0x70($sp)
    /* DE544 800CF594 46004221 */  cvt.d.s    $f8, $f8
    /* DE548 800CF598 44989000 */  mtc1       $t8, $f18
    /* DE54C 800CF59C 46364202 */  mul.d      $f8, $f8, $f22
    /* DE550 800CF5A0 E7A40074 */  swc1       $f4, 0x74($sp)
    /* DE554 800CF5A4 C7A40104 */  lwc1       $f4, 0x104($sp)
    /* DE558 800CF5A8 E7AA0078 */  swc1       $f10, 0x78($sp)
    /* DE55C 800CF5AC 468094A0 */  cvt.s.w    $f18, $f18
    /* DE560 800CF5B0 460094A1 */  cvt.d.s    $f18, $f18
    /* DE564 800CF5B4 46324200 */  add.d      $f8, $f8, $f18
    /* DE568 800CF5B8 462044A0 */  cvt.s.d    $f18, $f8
    /* DE56C 800CF5BC C7A800F8 */  lwc1       $f8, 0xF8($sp)
    /* DE570 800CF5C0 E7B200E4 */  swc1       $f18, 0xE4($sp)
    /* DE574 800CF5C4 46044281 */  sub.s      $f10, $f8, $f4
    /* DE578 800CF5C8 86080004 */  lh         $t0, 0x4($s0)
    /* DE57C 800CF5CC E7A6007C */  swc1       $f6, 0x7C($sp)
    /* DE580 800CF5D0 44883000 */  mtc1       $t0, $f6
    /* DE584 800CF5D4 460052A1 */  cvt.d.s    $f10, $f10
    /* DE588 800CF5D8 46365282 */  mul.d      $f10, $f10, $f22
    /* DE58C 800CF5DC 468031A0 */  cvt.s.w    $f6, $f6
    /* DE590 800CF5E0 460031A1 */  cvt.d.s    $f6, $f6
    /* DE594 800CF5E4 46265280 */  add.d      $f10, $f10, $f6
    /* DE598 800CF5E8 462051A0 */  cvt.s.d    $f6, $f10
    /* DE59C 800CF5EC C7AA0074 */  lwc1       $f10, 0x74($sp)
    /* DE5A0 800CF5F0 E7B00074 */  swc1       $f16, 0x74($sp)
    /* DE5A4 800CF5F4 C7B00070 */  lwc1       $f16, 0x70($sp)
    /* DE5A8 800CF5F8 E7A600E8 */  swc1       $f6, 0xE8($sp)
    /* DE5AC 800CF5FC 86090000 */  lh         $t1, 0x0($s0)
    /* DE5B0 800CF600 46105281 */  sub.s      $f10, $f10, $f16
    /* DE5B4 800CF604 46005421 */  cvt.d.s    $f16, $f10
    /* DE5B8 800CF608 46368282 */  mul.d      $f10, $f16, $f22
    /* DE5BC 800CF60C 44898000 */  mtc1       $t1, $f16
    /* DE5C0 800CF610 00000000 */  nop
    /* DE5C4 800CF614 46808420 */  cvt.s.w    $f16, $f16
    /* DE5C8 800CF618 46008421 */  cvt.d.s    $f16, $f16
    /* DE5CC 800CF61C 46305280 */  add.d      $f10, $f10, $f16
    /* DE5D0 800CF620 46205420 */  cvt.s.d    $f16, $f10
    /* DE5D4 800CF624 C7AA0074 */  lwc1       $f10, 0x74($sp)
    /* DE5D8 800CF628 E7B20074 */  swc1       $f18, 0x74($sp)
    /* DE5DC 800CF62C C7B2007C */  lwc1       $f18, 0x7C($sp)
    /* DE5E0 800CF630 E7B000D4 */  swc1       $f16, 0xD4($sp)
    /* DE5E4 800CF634 860A0002 */  lh         $t2, 0x2($s0)
    /* DE5E8 800CF638 46125281 */  sub.s      $f10, $f10, $f18
    /* DE5EC 800CF63C 460054A1 */  cvt.d.s    $f18, $f10
    /* DE5F0 800CF640 46369282 */  mul.d      $f10, $f18, $f22
    /* DE5F4 800CF644 448A9000 */  mtc1       $t2, $f18
    /* DE5F8 800CF648 00000000 */  nop
    /* DE5FC 800CF64C 468094A0 */  cvt.s.w    $f18, $f18
    /* DE600 800CF650 460094A1 */  cvt.d.s    $f18, $f18
    /* DE604 800CF654 46325280 */  add.d      $f10, $f10, $f18
    /* DE608 800CF658 462054A0 */  cvt.s.d    $f18, $f10
    /* DE60C 800CF65C 46082281 */  sub.s      $f10, $f4, $f8
    /* DE610 800CF660 E7B200D8 */  swc1       $f18, 0xD8($sp)
    /* DE614 800CF664 860B0004 */  lh         $t3, 0x4($s0)
    /* DE618 800CF668 460054A1 */  cvt.d.s    $f18, $f10
    /* DE61C 800CF66C 448B4000 */  mtc1       $t3, $f8
    /* DE620 800CF670 46369102 */  mul.d      $f4, $f18, $f22
    /* DE624 800CF674 468042A0 */  cvt.s.w    $f10, $f8
    /* DE628 800CF678 460054A1 */  cvt.d.s    $f18, $f10
    /* DE62C 800CF67C 46322200 */  add.d      $f8, $f4, $f18
    /* DE630 800CF680 C7A40078 */  lwc1       $f4, 0x78($sp)
    /* DE634 800CF684 46048481 */  sub.s      $f18, $f16, $f4
    /* DE638 800CF688 C7A40074 */  lwc1       $f4, 0x74($sp)
    /* DE63C 800CF68C 462042A0 */  cvt.s.d    $f10, $f8
    /* DE640 800CF690 46009221 */  cvt.d.s    $f8, $f18
    /* DE644 800CF694 E7AA00DC */  swc1       $f10, 0xDC($sp)
    /* DE648 800CF698 46384282 */  mul.d      $f10, $f8, $f24
    /* DE64C 800CF69C C7B200D8 */  lwc1       $f18, 0xD8($sp)
    /* DE650 800CF6A0 46049201 */  sub.s      $f8, $f18, $f4
    /* DE654 800CF6A4 C7A400DC */  lwc1       $f4, 0xDC($sp)
    /* DE658 800CF6A8 46205420 */  cvt.s.d    $f16, $f10
    /* DE65C 800CF6AC 460042A1 */  cvt.d.s    $f10, $f8
    /* DE660 800CF6B0 E7B000BC */  swc1       $f16, 0xBC($sp)
    /* DE664 800CF6B4 46385402 */  mul.d      $f16, $f10, $f24
    /* DE668 800CF6B8 46062201 */  sub.s      $f8, $f4, $f6
    /* DE66C 800CF6BC 460042A1 */  cvt.d.s    $f10, $f8
    /* DE670 800CF6C0 462084A0 */  cvt.s.d    $f18, $f16
    /* DE674 800CF6C4 46385402 */  mul.d      $f16, $f10, $f24
    /* DE678 800CF6C8 E7B200C0 */  swc1       $f18, 0xC0($sp)
    /* DE67C 800CF6CC 462084A0 */  cvt.s.d    $f18, $f16
    /* DE680 800CF6D0 0C03043D */  jal        func_800C10F4_D00A4
    /* DE684 800CF6D4 E7B200C4 */   swc1      $f18, 0xC4($sp)
    /* DE688 800CF6D8 03C02025 */  or         $a0, $fp, $zero
    /* DE68C 800CF6DC 02C02825 */  or         $a1, $s6, $zero
    /* DE690 800CF6E0 0C030430 */  jal        func_800C10C0_D0070
    /* DE694 800CF6E4 02C03025 */   or        $a2, $s6, $zero
    /* DE698 800CF6E8 92120009 */  lbu        $s2, 0x9($s0)
    /* DE69C 800CF6EC 9211000A */  lbu        $s1, 0xA($s0)
    /* DE6A0 800CF6F0 00122903 */  sra        $a1, $s2, 4
    /* DE6A4 800CF6F4 00119903 */  sra        $s3, $s1, 4
    /* DE6A8 800CF6F8 30AD00FF */  andi       $t5, $a1, 0xFF
    /* DE6AC 800CF6FC 326E00FF */  andi       $t6, $s3, 0xFF
    /* DE6B0 800CF700 324C000F */  andi       $t4, $s2, 0xF
    /* DE6B4 800CF704 322F000F */  andi       $t7, $s1, 0xF
    /* DE6B8 800CF708 01A02825 */  or         $a1, $t5, $zero
    /* DE6BC 800CF70C 01809025 */  or         $s2, $t4, $zero
    /* DE6C0 800CF710 01C09825 */  or         $s3, $t6, $zero
    /* DE6C4 800CF714 15A0001B */  bnez       $t5, .L800CF784_DE734
    /* DE6C8 800CF718 01E08825 */   or        $s1, $t7, $zero
    /* DE6CC 800CF71C 1580000F */  bnez       $t4, .L800CF75C_DE70C
    /* DE6D0 800CF720 03C02025 */   or        $a0, $fp, $zero
    /* DE6D4 800CF724 15C00006 */  bnez       $t6, .L800CF740_DE6F0
    /* DE6D8 800CF728 02E02025 */   or        $a0, $s7, $zero
    /* DE6DC 800CF72C 02C02025 */  or         $a0, $s6, $zero
    /* DE6E0 800CF730 0C033C5D */  jal        func_800CF174_DE124
    /* DE6E4 800CF734 31E500FF */   andi      $a1, $t7, 0xFF
    /* DE6E8 800CF738 1000001E */  b          .L800CF7B4_DE764
    /* DE6EC 800CF73C 86830004 */   lh        $v1, 0x4($s4)
  .L800CF740_DE6F0:
    /* DE6F0 800CF740 0C033C5D */  jal        func_800CF174_DE124
    /* DE6F4 800CF744 326500FF */   andi      $a1, $s3, 0xFF
    /* DE6F8 800CF748 02C02025 */  or         $a0, $s6, $zero
    /* DE6FC 800CF74C 0C033C5D */  jal        func_800CF174_DE124
    /* DE700 800CF750 322500FF */   andi      $a1, $s1, 0xFF
    /* DE704 800CF754 10000017 */  b          .L800CF7B4_DE764
    /* DE708 800CF758 86830004 */   lh        $v1, 0x4($s4)
  .L800CF75C_DE70C:
    /* DE70C 800CF75C 0C033C5D */  jal        func_800CF174_DE124
    /* DE710 800CF760 322500FF */   andi      $a1, $s1, 0xFF
    /* DE714 800CF764 02E02025 */  or         $a0, $s7, $zero
    /* DE718 800CF768 0C033C5D */  jal        func_800CF174_DE124
    /* DE71C 800CF76C 324500FF */   andi      $a1, $s2, 0xFF
    /* DE720 800CF770 02C02025 */  or         $a0, $s6, $zero
    /* DE724 800CF774 0C033C5D */  jal        func_800CF174_DE124
    /* DE728 800CF778 326500FF */   andi      $a1, $s3, 0xFF
    /* DE72C 800CF77C 1000000D */  b          .L800CF7B4_DE764
    /* DE730 800CF780 86830004 */   lh        $v1, 0x4($s4)
  .L800CF784_DE734:
    /* DE734 800CF784 0C033C5D */  jal        func_800CF174_DE124
    /* DE738 800CF788 27A400E0 */   addiu     $a0, $sp, 0xE0
    /* DE73C 800CF78C 03C02025 */  or         $a0, $fp, $zero
    /* DE740 800CF790 0C033C5D */  jal        func_800CF174_DE124
    /* DE744 800CF794 322500FF */   andi      $a1, $s1, 0xFF
    /* DE748 800CF798 02E02025 */  or         $a0, $s7, $zero
    /* DE74C 800CF79C 0C033C5D */  jal        func_800CF174_DE124
    /* DE750 800CF7A0 324500FF */   andi      $a1, $s2, 0xFF
    /* DE754 800CF7A4 02C02025 */  or         $a0, $s6, $zero
    /* DE758 800CF7A8 0C033C5D */  jal        func_800CF174_DE124
    /* DE75C 800CF7AC 326500FF */   andi      $a1, $s3, 0xFF
    /* DE760 800CF7B0 86830004 */  lh         $v1, 0x4($s4)
  .L800CF7B4_DE764:
    /* DE764 800CF7B4 2401FFFA */  addiu      $at, $zero, -0x6
    /* DE768 800CF7B8 10610003 */  beq        $v1, $at, .L800CF7C8_DE778
    /* DE76C 800CF7BC 2401FFFB */   addiu     $at, $zero, -0x5
    /* DE770 800CF7C0 1461FF00 */  bne        $v1, $at, .L800CF3C4_DE374
    /* DE774 800CF7C4 00000000 */   nop
  .L800CF7C8_DE778:
    /* DE778 800CF7C8 8FBF006C */  lw         $ra, 0x6C($sp)
    /* DE77C 800CF7CC D7B40020 */  ldc1       $f20, 0x20($sp)
    /* DE780 800CF7D0 D7B60028 */  ldc1       $f22, 0x28($sp)
    /* DE784 800CF7D4 D7B80030 */  ldc1       $f24, 0x30($sp)
    /* DE788 800CF7D8 D7BA0038 */  ldc1       $f26, 0x38($sp)
    /* DE78C 800CF7DC D7BC0040 */  ldc1       $f28, 0x40($sp)
    /* DE790 800CF7E0 8FB00048 */  lw         $s0, 0x48($sp)
    /* DE794 800CF7E4 8FB1004C */  lw         $s1, 0x4C($sp)
    /* DE798 800CF7E8 8FB20050 */  lw         $s2, 0x50($sp)
    /* DE79C 800CF7EC 8FB30054 */  lw         $s3, 0x54($sp)
    /* DE7A0 800CF7F0 8FB40058 */  lw         $s4, 0x58($sp)
    /* DE7A4 800CF7F4 8FB5005C */  lw         $s5, 0x5C($sp)
    /* DE7A8 800CF7F8 8FB60060 */  lw         $s6, 0x60($sp)
    /* DE7AC 800CF7FC 8FB70064 */  lw         $s7, 0x64($sp)
    /* DE7B0 800CF800 8FBE0068 */  lw         $fp, 0x68($sp)
    /* DE7B4 800CF804 03E00008 */  jr         $ra
    /* DE7B8 800CF808 27BD0110 */   addiu     $sp, $sp, 0x110
endlabel func_800CF2E0_DE290
