nonmatching func_800DE2E8_ED298, 0x6D0

glabel func_800DE2E8_ED298
    /* ED298 800DE2E8 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* ED29C 800DE2EC AFBE0048 */  sw         $fp, 0x48($sp)
    /* ED2A0 800DE2F0 AFB70044 */  sw         $s7, 0x44($sp)
    /* ED2A4 800DE2F4 AFB60040 */  sw         $s6, 0x40($sp)
    /* ED2A8 800DE2F8 AFB40038 */  sw         $s4, 0x38($sp)
    /* ED2AC 800DE2FC AFB00028 */  sw         $s0, 0x28($sp)
    /* ED2B0 800DE300 F7B40020 */  sdc1       $f20, 0x20($sp)
    /* ED2B4 800DE304 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* ED2B8 800DE308 AFB5003C */  sw         $s5, 0x3C($sp)
    /* ED2BC 800DE30C AFB30034 */  sw         $s3, 0x34($sp)
    /* ED2C0 800DE310 AFB20030 */  sw         $s2, 0x30($sp)
    /* ED2C4 800DE314 3C108006 */  lui        $s0, %hi(D_8005BB2C)
    /* ED2C8 800DE318 3C148015 */  lui        $s4, %hi(D_80153BB8)
    /* ED2CC 800DE31C 3C168014 */  lui        $s6, %hi(D_8013DFF4)
    /* ED2D0 800DE320 3C178014 */  lui        $s7, %hi(D_8013E0C0)
    /* ED2D4 800DE324 3C1E1FFF */  lui        $fp, (0x1FFFFFFF >> 16)
    /* ED2D8 800DE328 4481A000 */  mtc1       $at, $f20
    /* ED2DC 800DE32C AFBF004C */  sw         $ra, 0x4C($sp)
    /* ED2E0 800DE330 AFB1002C */  sw         $s1, 0x2C($sp)
    /* ED2E4 800DE334 00009025 */  or         $s2, $zero, $zero
    /* ED2E8 800DE338 37DEFFFF */  ori        $fp, $fp, (0x1FFFFFFF & 0xFFFF)
    /* ED2EC 800DE33C 26F7E0C0 */  addiu      $s7, $s7, %lo(D_8013E0C0)
    /* ED2F0 800DE340 26D6DFF4 */  addiu      $s6, $s6, %lo(D_8013DFF4)
    /* ED2F4 800DE344 26943BB8 */  addiu      $s4, $s4, %lo(D_80153BB8)
    /* ED2F8 800DE348 2610BB2C */  addiu      $s0, $s0, %lo(D_8005BB2C)
    /* ED2FC 800DE34C 3C13E700 */  lui        $s3, (0xE7000000 >> 16)
    /* ED300 800DE350 241500FF */  addiu      $s5, $zero, 0xFF
  .L800DE354_ED304:
    /* ED304 800DE354 00127080 */  sll        $t6, $s2, 2
    /* ED308 800DE358 01D27021 */  addu       $t6, $t6, $s2
    /* ED30C 800DE35C 3C0F8015 */  lui        $t7, %hi(D_80156EF0)
    /* ED310 800DE360 25EF6EF0 */  addiu      $t7, $t7, %lo(D_80156EF0)
    /* ED314 800DE364 000E7080 */  sll        $t6, $t6, 2
    /* ED318 800DE368 01CF8821 */  addu       $s1, $t6, $t7
    /* ED31C 800DE36C 8638000A */  lh         $t8, 0xA($s1)
    /* ED320 800DE370 3C018004 */  lui        $at, %hi(D_80047954)
    /* ED324 800DE374 5300017F */  beql       $t8, $zero, .L800DE974_ED924
    /* ED328 800DE378 26520001 */   addiu     $s2, $s2, 0x1
    /* ED32C 800DE37C C4247954 */  lwc1       $f4, %lo(D_80047954)($at)
    /* ED330 800DE380 3C018004 */  lui        $at, %hi(D_8004795C)
    /* ED334 800DE384 C42A795C */  lwc1       $f10, %lo(D_8004795C)($at)
    /* ED338 800DE388 46142182 */  mul.s      $f6, $f4, $f20
    /* ED33C 800DE38C 3C0F8004 */  lui        $t7, %hi(D_80047950)
    /* ED340 800DE390 85EF7950 */  lh         $t7, %lo(D_80047950)($t7)
    /* ED344 800DE394 46145402 */  mul.s      $f16, $f10, $f20
    /* ED348 800DE398 24184000 */  addiu      $t8, $zero, 0x4000
    /* ED34C 800DE39C 86240000 */  lh         $a0, 0x0($s1)
    /* ED350 800DE3A0 86250004 */  lh         $a1, 0x4($s1)
    /* ED354 800DE3A4 4600320D */  trunc.w.s  $f8, $f6
    /* ED358 800DE3A8 4600848D */  trunc.w.s  $f18, $f16
    /* ED35C 800DE3AC 44064000 */  mfc1       $a2, $f8
    /* ED360 800DE3B0 44079000 */  mfc1       $a3, $f18
    /* ED364 800DE3B4 00067400 */  sll        $t6, $a2, 16
    /* ED368 800DE3B8 000E3403 */  sra        $a2, $t6, 16
    /* ED36C 800DE3BC 0007CC00 */  sll        $t9, $a3, 16
    /* ED370 800DE3C0 00193C03 */  sra        $a3, $t9, 16
    /* ED374 800DE3C4 030FC823 */  subu       $t9, $t8, $t7
    /* ED378 800DE3C8 0C02E48A */  jal        func_800B9228_C81D8
    /* ED37C 800DE3CC AFB90010 */   sw        $t9, 0x10($sp)
    /* ED380 800DE3D0 50400168 */  beql       $v0, $zero, .L800DE974_ED924
    /* ED384 800DE3D4 26520001 */   addiu     $s2, $s2, 0x1
    /* ED388 800DE3D8 922E000F */  lbu        $t6, 0xF($s1)
    /* ED38C 800DE3DC 55C00165 */  bnel       $t6, $zero, .L800DE974_ED924
    /* ED390 800DE3E0 26520001 */   addiu     $s2, $s2, 0x1
    /* ED394 800DE3E4 922D000C */  lbu        $t5, 0xC($s1)
    /* ED398 800DE3E8 56AD0005 */  bnel       $s5, $t5, .L800DE400_ED3B0
    /* ED39C 800DE3EC 8E020000 */   lw        $v0, 0x0($s0)
    /* ED3A0 800DE3F0 9238000E */  lbu        $t8, 0xE($s1)
    /* ED3A4 800DE3F4 52B80133 */  beql       $s5, $t8, .L800DE8C4_ED874
    /* ED3A8 800DE3F8 86390000 */   lh        $t9, 0x0($s1)
    /* ED3AC 800DE3FC 8E020000 */  lw         $v0, 0x0($s0)
  .L800DE400_ED3B0:
    /* ED3B0 800DE400 000DC8C0 */  sll        $t9, $t5, 3
    /* ED3B4 800DE404 02D94821 */  addu       $t1, $s6, $t9
    /* ED3B8 800DE408 244F0008 */  addiu      $t7, $v0, 0x8
    /* ED3BC 800DE40C AE0F0000 */  sw         $t7, 0x0($s0)
    /* ED3C0 800DE410 AC400004 */  sw         $zero, 0x4($v0)
    /* ED3C4 800DE414 AC530000 */  sw         $s3, 0x0($v0)
    /* ED3C8 800DE418 81240005 */  lb         $a0, 0x5($t1)
    /* ED3CC 800DE41C 24010001 */  addiu      $at, $zero, 0x1
    /* ED3D0 800DE420 14800098 */  bnez       $a0, .L800DE684_ED634
    /* ED3D4 800DE424 00000000 */   nop
    /* ED3D8 800DE428 812E0007 */  lb         $t6, 0x7($t1)
    /* ED3DC 800DE42C 9238000E */  lbu        $t8, 0xE($s1)
    /* ED3E0 800DE430 81390006 */  lb         $t9, 0x6($t1)
    /* ED3E4 800DE434 8E020000 */  lw         $v0, 0x0($s0)
    /* ED3E8 800DE438 01D80019 */  multu      $t6, $t8
    /* ED3EC 800DE43C 240807FF */  addiu      $t0, $zero, 0x7FF
    /* ED3F0 800DE440 24580008 */  addiu      $t8, $v0, 0x8
    /* ED3F4 800DE444 AE180000 */  sw         $t8, 0x0($s0)
    /* ED3F8 800DE448 3C18BA00 */  lui        $t8, (0xBA000602 >> 16)
    /* ED3FC 800DE44C 37180602 */  ori        $t8, $t8, (0xBA000602 & 0xFFFF)
    /* ED400 800DE450 00007812 */  mflo       $t7
    /* ED404 800DE454 00000000 */  nop
    /* ED408 800DE458 00000000 */  nop
    /* ED40C 800DE45C 01F90019 */  multu      $t7, $t9
    /* ED410 800DE460 3C19FF32 */  lui        $t9, (0xFF327F3F >> 16)
    /* ED414 800DE464 3C0FFCFF */  lui        $t7, (0xFCFF99FF >> 16)
    /* ED418 800DE468 35EF99FF */  ori        $t7, $t7, (0xFCFF99FF & 0xFFFF)
    /* ED41C 800DE46C 37397F3F */  ori        $t9, $t9, (0xFF327F3F & 0xFFFF)
    /* ED420 800DE470 AC590004 */  sw         $t9, 0x4($v0)
    /* ED424 800DE474 AC4F0000 */  sw         $t7, 0x0($v0)
    /* ED428 800DE478 8E040000 */  lw         $a0, 0x0($s0)
    /* ED42C 800DE47C 3C19BA00 */  lui        $t9, (0xBA000402 >> 16)
    /* ED430 800DE480 37390402 */  ori        $t9, $t9, (0xBA000402 & 0xFFFF)
    /* ED434 800DE484 00005012 */  mflo       $t2
    /* ED438 800DE488 05410003 */  bgez       $t2, .L800DE498_ED448
    /* ED43C 800DE48C 000A7043 */   sra       $t6, $t2, 1
    /* ED440 800DE490 25410001 */  addiu      $at, $t2, 0x1
    /* ED444 800DE494 00017043 */  sra        $t6, $at, 1
  .L800DE498_ED448:
    /* ED448 800DE498 01C05025 */  or         $t2, $t6, $zero
    /* ED44C 800DE49C 248E0008 */  addiu      $t6, $a0, 0x8
    /* ED450 800DE4A0 AE0E0000 */  sw         $t6, 0x0($s0)
    /* ED454 800DE4A4 AC800004 */  sw         $zero, 0x4($a0)
    /* ED458 800DE4A8 AC980000 */  sw         $t8, 0x0($a0)
    /* ED45C 800DE4AC 8E050000 */  lw         $a1, 0x0($s0)
    /* ED460 800DE4B0 3C18FD90 */  lui        $t8, (0xFD900000 >> 16)
    /* ED464 800DE4B4 24AF0008 */  addiu      $t7, $a1, 0x8
    /* ED468 800DE4B8 AE0F0000 */  sw         $t7, 0x0($s0)
    /* ED46C 800DE4BC ACA00004 */  sw         $zero, 0x4($a1)
    /* ED470 800DE4C0 ACB90000 */  sw         $t9, 0x0($a1)
    /* ED474 800DE4C4 8E060000 */  lw         $a2, 0x0($s0)
    /* ED478 800DE4C8 000D7880 */  sll        $t7, $t5, 2
    /* ED47C 800DE4CC 02EFC821 */  addu       $t9, $s7, $t7
    /* ED480 800DE4D0 24CE0008 */  addiu      $t6, $a2, 0x8
    /* ED484 800DE4D4 AE0E0000 */  sw         $t6, 0x0($s0)
    /* ED488 800DE4D8 ACD80000 */  sw         $t8, 0x0($a2)
    /* ED48C 800DE4DC 8F2E0000 */  lw         $t6, 0x0($t9)
    /* ED490 800DE4E0 01CAC021 */  addu       $t8, $t6, $t2
    /* ED494 800DE4E4 031E7824 */  and        $t7, $t8, $fp
    /* ED498 800DE4E8 ACCF0004 */  sw         $t7, 0x4($a2)
    /* ED49C 800DE4EC 8E020000 */  lw         $v0, 0x0($s0)
    /* ED4A0 800DE4F0 3C180708 */  lui        $t8, (0x7080200 >> 16)
    /* ED4A4 800DE4F4 37180200 */  ori        $t8, $t8, (0x7080200 & 0xFFFF)
    /* ED4A8 800DE4F8 24590008 */  addiu      $t9, $v0, 0x8
    /* ED4AC 800DE4FC AE190000 */  sw         $t9, 0x0($s0)
    /* ED4B0 800DE500 3C0EF590 */  lui        $t6, (0xF5900000 >> 16)
    /* ED4B4 800DE504 AC4E0000 */  sw         $t6, 0x0($v0)
    /* ED4B8 800DE508 AC580004 */  sw         $t8, 0x4($v0)
    /* ED4BC 800DE50C 8E020000 */  lw         $v0, 0x0($s0)
    /* ED4C0 800DE510 3C19E600 */  lui        $t9, (0xE6000000 >> 16)
    /* ED4C4 800DE514 3C18F300 */  lui        $t8, (0xF3000000 >> 16)
    /* ED4C8 800DE518 244F0008 */  addiu      $t7, $v0, 0x8
    /* ED4CC 800DE51C AE0F0000 */  sw         $t7, 0x0($s0)
    /* ED4D0 800DE520 AC400004 */  sw         $zero, 0x4($v0)
    /* ED4D4 800DE524 AC590000 */  sw         $t9, 0x0($v0)
    /* ED4D8 800DE528 8E1F0000 */  lw         $ra, 0x0($s0)
    /* ED4DC 800DE52C 27EE0008 */  addiu      $t6, $ra, 0x8
    /* ED4E0 800DE530 AE0E0000 */  sw         $t6, 0x0($s0)
    /* ED4E4 800DE534 AFF80000 */  sw         $t8, 0x0($ra)
    /* ED4E8 800DE538 812F0007 */  lb         $t7, 0x7($t1)
    /* ED4EC 800DE53C 812B0006 */  lb         $t3, 0x6($t1)
    /* ED4F0 800DE540 01EB0019 */  multu      $t7, $t3
    /* ED4F4 800DE544 00006012 */  mflo       $t4
    /* ED4F8 800DE548 258C0003 */  addiu      $t4, $t4, 0x3
    /* ED4FC 800DE54C 000CC883 */  sra        $t9, $t4, 2
    /* ED500 800DE550 272CFFFF */  addiu      $t4, $t9, -0x1
    /* ED504 800DE554 298107FF */  slti       $at, $t4, 0x7FF
    /* ED508 800DE558 10200003 */  beqz       $at, .L800DE568_ED518
    /* ED50C 800DE55C 00000000 */   nop
    /* ED510 800DE560 10000001 */  b          .L800DE568_ED518
    /* ED514 800DE564 01804025 */   or        $t0, $t4, $zero
  .L800DE568_ED518:
    /* ED518 800DE568 05610003 */  bgez       $t3, .L800DE578_ED528
    /* ED51C 800DE56C 000B1103 */   sra       $v0, $t3, 4
    /* ED520 800DE570 2561000F */  addiu      $at, $t3, 0xF
    /* ED524 800DE574 00011103 */  sra        $v0, $at, 4
  .L800DE578_ED528:
    /* ED528 800DE578 1C400003 */  bgtz       $v0, .L800DE588_ED538
    /* ED52C 800DE57C 00403825 */   or        $a3, $v0, $zero
    /* ED530 800DE580 10000001 */  b          .L800DE588_ED538
    /* ED534 800DE584 24070001 */   addiu     $a3, $zero, 0x1
  .L800DE588_ED538:
    /* ED538 800DE588 1C400003 */  bgtz       $v0, .L800DE598_ED548
    /* ED53C 800DE58C 24EE07FF */   addiu     $t6, $a3, 0x7FF
    /* ED540 800DE590 10000002 */  b          .L800DE59C_ED54C
    /* ED544 800DE594 24030001 */   addiu     $v1, $zero, 0x1
  .L800DE598_ED548:
    /* ED548 800DE598 00401825 */  or         $v1, $v0, $zero
  .L800DE59C_ED54C:
    /* ED54C 800DE59C 01C3001A */  div        $zero, $t6, $v1
    /* ED550 800DE5A0 14600002 */  bnez       $v1, .L800DE5AC_ED55C
    /* ED554 800DE5A4 00000000 */   nop
    /* ED558 800DE5A8 0007000D */  break      7
  .L800DE5AC_ED55C:
    /* ED55C 800DE5AC 2401FFFF */  addiu      $at, $zero, -0x1
    /* ED560 800DE5B0 14610004 */  bne        $v1, $at, .L800DE5C4_ED574
    /* ED564 800DE5B4 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* ED568 800DE5B8 15C10002 */  bne        $t6, $at, .L800DE5C4_ED574
    /* ED56C 800DE5BC 00000000 */   nop
    /* ED570 800DE5C0 0006000D */  break      6
  .L800DE5C4_ED574:
    /* ED574 800DE5C4 0000C012 */  mflo       $t8
    /* ED578 800DE5C8 330F0FFF */  andi       $t7, $t8, 0xFFF
    /* ED57C 800DE5CC 3C010700 */  lui        $at, (0x7000000 >> 16)
    /* ED580 800DE5D0 310E0FFF */  andi       $t6, $t0, 0xFFF
    /* ED584 800DE5D4 000EC300 */  sll        $t8, $t6, 12
    /* ED588 800DE5D8 01E1C825 */  or         $t9, $t7, $at
    /* ED58C 800DE5DC 03387825 */  or         $t7, $t9, $t8
    /* ED590 800DE5E0 AFEF0004 */  sw         $t7, 0x4($ra)
    /* ED594 800DE5E4 8E020000 */  lw         $v0, 0x0($s0)
    /* ED598 800DE5E8 3C01F580 */  lui        $at, (0xF5800000 >> 16)
    /* ED59C 800DE5EC 244E0008 */  addiu      $t6, $v0, 0x8
    /* ED5A0 800DE5F0 AE0E0000 */  sw         $t6, 0x0($s0)
    /* ED5A4 800DE5F4 AC400004 */  sw         $zero, 0x4($v0)
    /* ED5A8 800DE5F8 AC530000 */  sw         $s3, 0x0($v0)
    /* ED5AC 800DE5FC 00402025 */  or         $a0, $v0, $zero
    /* ED5B0 800DE600 8E020000 */  lw         $v0, 0x0($s0)
    /* ED5B4 800DE604 81380006 */  lb         $t8, 0x6($t1)
    /* ED5B8 800DE608 24590008 */  addiu      $t9, $v0, 0x8
    /* ED5BC 800DE60C 00187843 */  sra        $t7, $t8, 1
    /* ED5C0 800DE610 25EE0007 */  addiu      $t6, $t7, 0x7
    /* ED5C4 800DE614 AE190000 */  sw         $t9, 0x0($s0)
    /* ED5C8 800DE618 000EC8C3 */  sra        $t9, $t6, 3
    /* ED5CC 800DE61C 333801FF */  andi       $t8, $t9, 0x1FF
    /* ED5D0 800DE620 00187A40 */  sll        $t7, $t8, 9
    /* ED5D4 800DE624 3C190008 */  lui        $t9, (0x80200 >> 16)
    /* ED5D8 800DE628 37390200 */  ori        $t9, $t9, (0x80200 & 0xFFFF)
    /* ED5DC 800DE62C 01E17025 */  or         $t6, $t7, $at
    /* ED5E0 800DE630 AC4E0000 */  sw         $t6, 0x0($v0)
    /* ED5E4 800DE634 AC590004 */  sw         $t9, 0x4($v0)
    /* ED5E8 800DE638 00402825 */  or         $a1, $v0, $zero
    /* ED5EC 800DE63C 8E020000 */  lw         $v0, 0x0($s0)
    /* ED5F0 800DE640 3C0FF200 */  lui        $t7, (0xF2000000 >> 16)
    /* ED5F4 800DE644 24580008 */  addiu      $t8, $v0, 0x8
    /* ED5F8 800DE648 AE180000 */  sw         $t8, 0x0($s0)
    /* ED5FC 800DE64C AC4F0000 */  sw         $t7, 0x0($v0)
    /* ED600 800DE650 812E0007 */  lb         $t6, 0x7($t1)
    /* ED604 800DE654 00403025 */  or         $a2, $v0, $zero
    /* ED608 800DE658 25D9FFFF */  addiu      $t9, $t6, -0x1
    /* ED60C 800DE65C 812E0006 */  lb         $t6, 0x6($t1)
    /* ED610 800DE660 0019C080 */  sll        $t8, $t9, 2
    /* ED614 800DE664 330F0FFF */  andi       $t7, $t8, 0xFFF
    /* ED618 800DE668 25D9FFFF */  addiu      $t9, $t6, -0x1
    /* ED61C 800DE66C 0019C080 */  sll        $t8, $t9, 2
    /* ED620 800DE670 330E0FFF */  andi       $t6, $t8, 0xFFF
    /* ED624 800DE674 000ECB00 */  sll        $t9, $t6, 12
    /* ED628 800DE678 01F9C025 */  or         $t8, $t7, $t9
    /* ED62C 800DE67C 10000085 */  b          .L800DE894_ED844
    /* ED630 800DE680 AC580004 */   sw        $t8, 0x4($v0)
  .L800DE684_ED634:
    /* ED634 800DE684 54810084 */  bnel       $a0, $at, .L800DE898_ED848
    /* ED638 800DE688 812F0006 */   lb        $t7, 0x6($t1)
    /* ED63C 800DE68C 812E0007 */  lb         $t6, 0x7($t1)
    /* ED640 800DE690 922F000E */  lbu        $t7, 0xE($s1)
    /* ED644 800DE694 81380006 */  lb         $t8, 0x6($t1)
    /* ED648 800DE698 8E020000 */  lw         $v0, 0x0($s0)
    /* ED64C 800DE69C 01CF0019 */  multu      $t6, $t7
    /* ED650 800DE6A0 3C0FFC40 */  lui        $t7, (0xFC40C281 >> 16)
    /* ED654 800DE6A4 244E0008 */  addiu      $t6, $v0, 0x8
    /* ED658 800DE6A8 AE0E0000 */  sw         $t6, 0x0($s0)
    /* ED65C 800DE6AC 35EFC281 */  ori        $t7, $t7, (0xFC40C281 & 0xFFFF)
    /* ED660 800DE6B0 AC4F0000 */  sw         $t7, 0x0($v0)
    /* ED664 800DE6B4 000D7880 */  sll        $t7, $t5, 2
    /* ED668 800DE6B8 3C0EFD70 */  lui        $t6, (0xFD700000 >> 16)
    /* ED66C 800DE6BC 240807FF */  addiu      $t0, $zero, 0x7FF
    /* ED670 800DE6C0 0000C812 */  mflo       $t9
    /* ED674 800DE6C4 00000000 */  nop
    /* ED678 800DE6C8 00000000 */  nop
    /* ED67C 800DE6CC 03380019 */  multu      $t9, $t8
    /* ED680 800DE6D0 3C19FF87 */  lui        $t9, (0xFF87FFFF >> 16)
    /* ED684 800DE6D4 3739FFFF */  ori        $t9, $t9, (0xFF87FFFF & 0xFFFF)
    /* ED688 800DE6D8 AC590004 */  sw         $t9, 0x4($v0)
    /* ED68C 800DE6DC 8E040000 */  lw         $a0, 0x0($s0)
    /* ED690 800DE6E0 02EFC821 */  addu       $t9, $s7, $t7
    /* ED694 800DE6E4 24980008 */  addiu      $t8, $a0, 0x8
    /* ED698 800DE6E8 AE180000 */  sw         $t8, 0x0($s0)
    /* ED69C 800DE6EC AC8E0000 */  sw         $t6, 0x0($a0)
    /* ED6A0 800DE6F0 8F380000 */  lw         $t8, 0x0($t9)
    /* ED6A4 800DE6F4 00005012 */  mflo       $t2
    /* ED6A8 800DE6F8 030A7021 */  addu       $t6, $t8, $t2
    /* ED6AC 800DE6FC 01DE7824 */  and        $t7, $t6, $fp
    /* ED6B0 800DE700 AC8F0004 */  sw         $t7, 0x4($a0)
    /* ED6B4 800DE704 8E050000 */  lw         $a1, 0x0($s0)
    /* ED6B8 800DE708 3C0E0708 */  lui        $t6, (0x7080200 >> 16)
    /* ED6BC 800DE70C 35CE0200 */  ori        $t6, $t6, (0x7080200 & 0xFFFF)
    /* ED6C0 800DE710 24B90008 */  addiu      $t9, $a1, 0x8
    /* ED6C4 800DE714 AE190000 */  sw         $t9, 0x0($s0)
    /* ED6C8 800DE718 3C18F570 */  lui        $t8, (0xF5700000 >> 16)
    /* ED6CC 800DE71C ACB80000 */  sw         $t8, 0x0($a1)
    /* ED6D0 800DE720 ACAE0004 */  sw         $t6, 0x4($a1)
    /* ED6D4 800DE724 8E060000 */  lw         $a2, 0x0($s0)
    /* ED6D8 800DE728 3C19E600 */  lui        $t9, (0xE6000000 >> 16)
    /* ED6DC 800DE72C 3C0EF300 */  lui        $t6, (0xF3000000 >> 16)
    /* ED6E0 800DE730 24CF0008 */  addiu      $t7, $a2, 0x8
    /* ED6E4 800DE734 AE0F0000 */  sw         $t7, 0x0($s0)
    /* ED6E8 800DE738 ACC00004 */  sw         $zero, 0x4($a2)
    /* ED6EC 800DE73C ACD90000 */  sw         $t9, 0x0($a2)
    /* ED6F0 800DE740 8E0C0000 */  lw         $t4, 0x0($s0)
    /* ED6F4 800DE744 25980008 */  addiu      $t8, $t4, 0x8
    /* ED6F8 800DE748 AE180000 */  sw         $t8, 0x0($s0)
    /* ED6FC 800DE74C AD8E0000 */  sw         $t6, 0x0($t4)
    /* ED700 800DE750 812F0007 */  lb         $t7, 0x7($t1)
    /* ED704 800DE754 812B0006 */  lb         $t3, 0x6($t1)
    /* ED708 800DE758 01EB0019 */  multu      $t7, $t3
    /* ED70C 800DE75C 00003812 */  mflo       $a3
    /* ED710 800DE760 24E70001 */  addiu      $a3, $a3, 0x1
    /* ED714 800DE764 0007C843 */  sra        $t9, $a3, 1
    /* ED718 800DE768 2727FFFF */  addiu      $a3, $t9, -0x1
    /* ED71C 800DE76C 28E107FF */  slti       $at, $a3, 0x7FF
    /* ED720 800DE770 10200003 */  beqz       $at, .L800DE780_ED730
    /* ED724 800DE774 00000000 */   nop
    /* ED728 800DE778 10000001 */  b          .L800DE780_ED730
    /* ED72C 800DE77C 00E04025 */   or        $t0, $a3, $zero
  .L800DE780_ED730:
    /* ED730 800DE780 05610003 */  bgez       $t3, .L800DE790_ED740
    /* ED734 800DE784 000B10C3 */   sra       $v0, $t3, 3
    /* ED738 800DE788 25610007 */  addiu      $at, $t3, 0x7
    /* ED73C 800DE78C 000110C3 */  sra        $v0, $at, 3
  .L800DE790_ED740:
    /* ED740 800DE790 1C400003 */  bgtz       $v0, .L800DE7A0_ED750
    /* ED744 800DE794 00403825 */   or        $a3, $v0, $zero
    /* ED748 800DE798 10000001 */  b          .L800DE7A0_ED750
    /* ED74C 800DE79C 24070001 */   addiu     $a3, $zero, 0x1
  .L800DE7A0_ED750:
    /* ED750 800DE7A0 1C400003 */  bgtz       $v0, .L800DE7B0_ED760
    /* ED754 800DE7A4 24F807FF */   addiu     $t8, $a3, 0x7FF
    /* ED758 800DE7A8 10000002 */  b          .L800DE7B4_ED764
    /* ED75C 800DE7AC 24030001 */   addiu     $v1, $zero, 0x1
  .L800DE7B0_ED760:
    /* ED760 800DE7B0 00401825 */  or         $v1, $v0, $zero
  .L800DE7B4_ED764:
    /* ED764 800DE7B4 0303001A */  div        $zero, $t8, $v1
    /* ED768 800DE7B8 14600002 */  bnez       $v1, .L800DE7C4_ED774
    /* ED76C 800DE7BC 00000000 */   nop
    /* ED770 800DE7C0 0007000D */  break      7
  .L800DE7C4_ED774:
    /* ED774 800DE7C4 2401FFFF */  addiu      $at, $zero, -0x1
    /* ED778 800DE7C8 14610004 */  bne        $v1, $at, .L800DE7DC_ED78C
    /* ED77C 800DE7CC 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* ED780 800DE7D0 17010002 */  bne        $t8, $at, .L800DE7DC_ED78C
    /* ED784 800DE7D4 00000000 */   nop
    /* ED788 800DE7D8 0006000D */  break      6
  .L800DE7DC_ED78C:
    /* ED78C 800DE7DC 00007012 */  mflo       $t6
    /* ED790 800DE7E0 31CF0FFF */  andi       $t7, $t6, 0xFFF
    /* ED794 800DE7E4 3C010700 */  lui        $at, (0x7000000 >> 16)
    /* ED798 800DE7E8 31180FFF */  andi       $t8, $t0, 0xFFF
    /* ED79C 800DE7EC 00187300 */  sll        $t6, $t8, 12
    /* ED7A0 800DE7F0 01E1C825 */  or         $t9, $t7, $at
    /* ED7A4 800DE7F4 032E7825 */  or         $t7, $t9, $t6
    /* ED7A8 800DE7F8 AD8F0004 */  sw         $t7, 0x4($t4)
    /* ED7AC 800DE7FC 8E020000 */  lw         $v0, 0x0($s0)
    /* ED7B0 800DE800 3C01F568 */  lui        $at, (0xF5680000 >> 16)
    /* ED7B4 800DE804 24580008 */  addiu      $t8, $v0, 0x8
    /* ED7B8 800DE808 AE180000 */  sw         $t8, 0x0($s0)
    /* ED7BC 800DE80C AC400004 */  sw         $zero, 0x4($v0)
    /* ED7C0 800DE810 AC530000 */  sw         $s3, 0x0($v0)
    /* ED7C4 800DE814 00402025 */  or         $a0, $v0, $zero
    /* ED7C8 800DE818 8E020000 */  lw         $v0, 0x0($s0)
    /* ED7CC 800DE81C 812E0006 */  lb         $t6, 0x6($t1)
    /* ED7D0 800DE820 24590008 */  addiu      $t9, $v0, 0x8
    /* ED7D4 800DE824 25CF0007 */  addiu      $t7, $t6, 0x7
    /* ED7D8 800DE828 000FC0C3 */  sra        $t8, $t7, 3
    /* ED7DC 800DE82C AE190000 */  sw         $t9, 0x0($s0)
    /* ED7E0 800DE830 331901FF */  andi       $t9, $t8, 0x1FF
    /* ED7E4 800DE834 00197240 */  sll        $t6, $t9, 9
    /* ED7E8 800DE838 3C180008 */  lui        $t8, (0x80200 >> 16)
    /* ED7EC 800DE83C 37180200 */  ori        $t8, $t8, (0x80200 & 0xFFFF)
    /* ED7F0 800DE840 01C17825 */  or         $t7, $t6, $at
    /* ED7F4 800DE844 AC4F0000 */  sw         $t7, 0x0($v0)
    /* ED7F8 800DE848 AC580004 */  sw         $t8, 0x4($v0)
    /* ED7FC 800DE84C 00402825 */  or         $a1, $v0, $zero
    /* ED800 800DE850 8E020000 */  lw         $v0, 0x0($s0)
    /* ED804 800DE854 3C0EF200 */  lui        $t6, (0xF2000000 >> 16)
    /* ED808 800DE858 24590008 */  addiu      $t9, $v0, 0x8
    /* ED80C 800DE85C AE190000 */  sw         $t9, 0x0($s0)
    /* ED810 800DE860 AC4E0000 */  sw         $t6, 0x0($v0)
    /* ED814 800DE864 812F0007 */  lb         $t7, 0x7($t1)
    /* ED818 800DE868 00403025 */  or         $a2, $v0, $zero
    /* ED81C 800DE86C 25F8FFFF */  addiu      $t8, $t7, -0x1
    /* ED820 800DE870 812F0006 */  lb         $t7, 0x6($t1)
    /* ED824 800DE874 0018C880 */  sll        $t9, $t8, 2
    /* ED828 800DE878 332E0FFF */  andi       $t6, $t9, 0xFFF
    /* ED82C 800DE87C 25F8FFFF */  addiu      $t8, $t7, -0x1
    /* ED830 800DE880 0018C880 */  sll        $t9, $t8, 2
    /* ED834 800DE884 332F0FFF */  andi       $t7, $t9, 0xFFF
    /* ED838 800DE888 000FC300 */  sll        $t8, $t7, 12
    /* ED83C 800DE88C 01D8C825 */  or         $t9, $t6, $t8
    /* ED840 800DE890 AC590004 */  sw         $t9, 0x4($v0)
  .L800DE894_ED844:
    /* ED844 800DE894 812F0006 */  lb         $t7, 0x6($t1)
  .L800DE898_ED848:
    /* ED848 800DE898 3C018015 */  lui        $at, %hi(D_80153BCD)
    /* ED84C 800DE89C A02F3BCD */  sb         $t7, %lo(D_80153BCD)($at)
    /* ED850 800DE8A0 812E0007 */  lb         $t6, 0x7($t1)
    /* ED854 800DE8A4 3C018015 */  lui        $at, %hi(D_80153BCE)
    /* ED858 800DE8A8 A02E3BCE */  sb         $t6, %lo(D_80153BCE)($at)
    /* ED85C 800DE8AC 8E020000 */  lw         $v0, 0x0($s0)
    /* ED860 800DE8B0 24580008 */  addiu      $t8, $v0, 0x8
    /* ED864 800DE8B4 AE180000 */  sw         $t8, 0x0($s0)
    /* ED868 800DE8B8 AC400004 */  sw         $zero, 0x4($v0)
    /* ED86C 800DE8BC AC530000 */  sw         $s3, 0x0($v0)
    /* ED870 800DE8C0 86390000 */  lh         $t9, 0x0($s1)
  .L800DE8C4_ED874:
    /* ED874 800DE8C4 862F0002 */  lh         $t7, 0x2($s1)
    /* ED878 800DE8C8 862E0004 */  lh         $t6, 0x4($s1)
    /* ED87C 800DE8CC 44992000 */  mtc1       $t9, $f4
    /* ED880 800DE8D0 448F4000 */  mtc1       $t7, $f8
    /* ED884 800DE8D4 448E8000 */  mtc1       $t6, $f16
    /* ED888 800DE8D8 468021A0 */  cvt.s.w    $f6, $f4
    /* ED88C 800DE8DC 26380006 */  addiu      $t8, $s1, 0x6
    /* ED890 800DE8E0 3C018015 */  lui        $at, %hi(D_80153BC4)
    /* ED894 800DE8E4 000D70C0 */  sll        $t6, $t5, 3
    /* ED898 800DE8E8 468042A0 */  cvt.s.w    $f10, $f8
    /* ED89C 800DE8EC E6860000 */  swc1       $f6, 0x0($s4)
    /* ED8A0 800DE8F0 468084A0 */  cvt.s.w    $f18, $f16
    /* ED8A4 800DE8F4 E68A0004 */  swc1       $f10, 0x4($s4)
    /* ED8A8 800DE8F8 E6920008 */  swc1       $f18, 0x8($s4)
    /* ED8AC 800DE8FC AC383BC4 */  sw         $t8, %lo(D_80153BC4)($at)
    /* ED8B0 800DE900 8639000A */  lh         $t9, 0xA($s1)
    /* ED8B4 800DE904 3C018015 */  lui        $at, %hi(D_80153BC8)
    /* ED8B8 800DE908 02CEC021 */  addu       $t8, $s6, $t6
    /* ED8BC 800DE90C 44992000 */  mtc1       $t9, $f4
    /* ED8C0 800DE910 00000000 */  nop
    /* ED8C4 800DE914 468021A0 */  cvt.s.w    $f6, $f4
    /* ED8C8 800DE918 E4263BC8 */  swc1       $f6, %lo(D_80153BC8)($at)
    /* ED8CC 800DE91C 922F000D */  lbu        $t7, 0xD($s1)
    /* ED8D0 800DE920 3C018015 */  lui        $at, %hi(D_80153BCC)
    /* ED8D4 800DE924 A02F3BCC */  sb         $t7, %lo(D_80153BCC)($at)
    /* ED8D8 800DE928 83030004 */  lb         $v1, 0x4($t8)
    /* ED8DC 800DE92C 24010002 */  addiu      $at, $zero, 0x2
    /* ED8E0 800DE930 10600005 */  beqz       $v1, .L800DE948_ED8F8
    /* ED8E4 800DE934 00000000 */   nop
    /* ED8E8 800DE938 10610007 */  beq        $v1, $at, .L800DE958_ED908
    /* ED8EC 800DE93C 3C048014 */   lui       $a0, %hi(D_80143E78)
    /* ED8F0 800DE940 10000009 */  b          .L800DE968_ED918
    /* ED8F4 800DE944 00000000 */   nop
  .L800DE948_ED8F8:
    /* ED8F8 800DE948 0C036CD4 */  jal        func_800DB350_EA300
    /* ED8FC 800DE94C 00000000 */   nop
    /* ED900 800DE950 10000008 */  b          .L800DE974_ED924
    /* ED904 800DE954 26520001 */   addiu     $s2, $s2, 0x1
  .L800DE958_ED908:
    /* ED908 800DE958 0C036BF3 */  jal        func_800DAFCC_E9F7C
    /* ED90C 800DE95C 00000000 */   nop
    /* ED910 800DE960 10000004 */  b          .L800DE974_ED924
    /* ED914 800DE964 26520001 */   addiu     $s2, $s2, 0x1
  .L800DE968_ED918:
    /* ED918 800DE968 0C00731B */  jal        osSyncPrintf
    /* ED91C 800DE96C 24843E78 */   addiu     $a0, $a0, %lo(D_80143E78)
    /* ED920 800DE970 26520001 */  addiu      $s2, $s2, 0x1
  .L800DE974_ED924:
    /* ED924 800DE974 325900FF */  andi       $t9, $s2, 0xFF
    /* ED928 800DE978 2B210050 */  slti       $at, $t9, 0x50
    /* ED92C 800DE97C 1420FE75 */  bnez       $at, .L800DE354_ED304
    /* ED930 800DE980 03209025 */   or        $s2, $t9, $zero
    /* ED934 800DE984 8FBF004C */  lw         $ra, 0x4C($sp)
    /* ED938 800DE988 D7B40020 */  ldc1       $f20, 0x20($sp)
    /* ED93C 800DE98C 8FB00028 */  lw         $s0, 0x28($sp)
    /* ED940 800DE990 8FB1002C */  lw         $s1, 0x2C($sp)
    /* ED944 800DE994 8FB20030 */  lw         $s2, 0x30($sp)
    /* ED948 800DE998 8FB30034 */  lw         $s3, 0x34($sp)
    /* ED94C 800DE99C 8FB40038 */  lw         $s4, 0x38($sp)
    /* ED950 800DE9A0 8FB5003C */  lw         $s5, 0x3C($sp)
    /* ED954 800DE9A4 8FB60040 */  lw         $s6, 0x40($sp)
    /* ED958 800DE9A8 8FB70044 */  lw         $s7, 0x44($sp)
    /* ED95C 800DE9AC 8FBE0048 */  lw         $fp, 0x48($sp)
    /* ED960 800DE9B0 03E00008 */  jr         $ra
    /* ED964 800DE9B4 27BD0050 */   addiu     $sp, $sp, 0x50
endlabel func_800DE2E8_ED298
