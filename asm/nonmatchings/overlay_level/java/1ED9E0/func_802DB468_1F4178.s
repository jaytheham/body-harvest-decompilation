nonmatching func_802DB468_1F4178, 0x33C

glabel func_802DB468_1F4178
    /* 1F4178 802DB468 27BDFF90 */  addiu      $sp, $sp, -0x70
    /* 1F417C 802DB46C AFA40070 */  sw         $a0, 0x70($sp)
    /* 1F4180 802DB470 93A40073 */  lbu        $a0, 0x73($sp)
    /* 1F4184 802DB474 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 1F4188 802DB478 AFB00040 */  sw         $s0, 0x40($sp)
    /* 1F418C 802DB47C 24050025 */  addiu      $a1, $zero, 0x25
    /* 1F4190 802DB480 0C04DD1A */  jal        func_80137468_146418
    /* 1F4194 802DB484 AFA40050 */   sw        $a0, 0x50($sp)
    /* 1F4198 802DB488 93AE0073 */  lbu        $t6, 0x73($sp)
    /* 1F419C 802DB48C 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 1F41A0 802DB490 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 1F41A4 802DB494 000E7880 */  sll        $t7, $t6, 2
    /* 1F41A8 802DB498 01EE7821 */  addu       $t7, $t7, $t6
    /* 1F41AC 802DB49C 000F7900 */  sll        $t7, $t7, 4
    /* 1F41B0 802DB4A0 01F88021 */  addu       $s0, $t7, $t8
    /* 1F41B4 802DB4A4 8E030020 */  lw         $v1, 0x20($s0)
    /* 1F41B8 802DB4A8 00003825 */  or         $a3, $zero, $zero
    /* 1F41BC 802DB4AC 24080001 */  addiu      $t0, $zero, 0x1
    /* 1F41C0 802DB4B0 0003C800 */  sll        $t9, $v1, 0
    /* 1F41C4 802DB4B4 07210016 */  bgez       $t9, .L802DB510_1F4220
    /* 1F41C8 802DB4B8 24090050 */   addiu     $t1, $zero, 0x50
    /* 1F41CC 802DB4BC 240A0004 */  addiu      $t2, $zero, 0x4
    /* 1F41D0 802DB4C0 240B000A */  addiu      $t3, $zero, 0xA
    /* 1F41D4 802DB4C4 240C00FF */  addiu      $t4, $zero, 0xFF
    /* 1F41D8 802DB4C8 240D00C8 */  addiu      $t5, $zero, 0xC8
    /* 1F41DC 802DB4CC 240E0032 */  addiu      $t6, $zero, 0x32
    /* 1F41E0 802DB4D0 240F00FF */  addiu      $t7, $zero, 0xFF
    /* 1F41E4 802DB4D4 AFAF0034 */  sw         $t7, 0x34($sp)
    /* 1F41E8 802DB4D8 AFAE002C */  sw         $t6, 0x2C($sp)
    /* 1F41EC 802DB4DC AFAD0028 */  sw         $t5, 0x28($sp)
    /* 1F41F0 802DB4E0 AFAC0024 */  sw         $t4, 0x24($sp)
    /* 1F41F4 802DB4E4 AFAB0020 */  sw         $t3, 0x20($sp)
    /* 1F41F8 802DB4E8 AFAA001C */  sw         $t2, 0x1C($sp)
    /* 1F41FC 802DB4EC 86040000 */  lh         $a0, 0x0($s0)
    /* 1F4200 802DB4F0 86050002 */  lh         $a1, 0x2($s0)
    /* 1F4204 802DB4F4 86060004 */  lh         $a2, 0x4($s0)
    /* 1F4208 802DB4F8 AFA80010 */  sw         $t0, 0x10($sp)
    /* 1F420C 802DB4FC AFA00014 */  sw         $zero, 0x14($sp)
    /* 1F4210 802DB500 AFA90018 */  sw         $t1, 0x18($sp)
    /* 1F4214 802DB504 0C03297B */  jal        func_800CA5EC_D959C
    /* 1F4218 802DB508 AFA00030 */   sw        $zero, 0x30($sp)
    /* 1F421C 802DB50C 8E030020 */  lw         $v1, 0x20($s0)
  .L802DB510_1F4220:
    /* 1F4220 802DB510 0003C040 */  sll        $t8, $v1, 1
    /* 1F4224 802DB514 07010008 */  bgez       $t8, .L802DB538_1F4248
    /* 1F4228 802DB518 02002025 */   or        $a0, $s0, $zero
    /* 1F422C 802DB51C 86190010 */  lh         $t9, 0x10($s0)
    /* 1F4230 802DB520 3C01BFFF */  lui        $at, (0xBFFFFFFF >> 16)
    /* 1F4234 802DB524 3421FFFF */  ori        $at, $at, (0xBFFFFFFF & 0xFFFF)
    /* 1F4238 802DB528 0721008F */  bgez       $t9, .L802DB768_1F4478
    /* 1F423C 802DB52C 00614024 */   and       $t0, $v1, $at
    /* 1F4240 802DB530 1000008D */  b          .L802DB768_1F4478
    /* 1F4244 802DB534 AE080020 */   sw        $t0, 0x20($s0)
  .L802DB538_1F4248:
    /* 1F4248 802DB538 3C058005 */  lui        $a1, %hi(D_80052B34)
    /* 1F424C 802DB53C 0C021395 */  jal        func_80084E54_93E04
    /* 1F4250 802DB540 8CA52B34 */   lw        $a1, %lo(D_80052B34)($a1)
    /* 1F4254 802DB544 28410258 */  slti       $at, $v0, 0x258
    /* 1F4258 802DB548 10200006 */  beqz       $at, .L802DB564_1F4274
    /* 1F425C 802DB54C AFA2006C */   sw        $v0, 0x6C($sp)
    /* 1F4260 802DB550 93A40073 */  lbu        $a0, 0x73($sp)
    /* 1F4264 802DB554 0C023A5E */  jal        func_8008E978_9D928
    /* 1F4268 802DB558 240500C8 */   addiu     $a1, $zero, 0xC8
    /* 1F426C 802DB55C 10000005 */  b          .L802DB574_1F4284
    /* 1F4270 802DB560 8E090020 */   lw        $t1, 0x20($s0)
  .L802DB564_1F4274:
    /* 1F4274 802DB564 93A40073 */  lbu        $a0, 0x73($sp)
    /* 1F4278 802DB568 0C023A5E */  jal        func_8008E978_9D928
    /* 1F427C 802DB56C 24050190 */   addiu     $a1, $zero, 0x190
    /* 1F4280 802DB570 8E090020 */  lw         $t1, 0x20($s0)
  .L802DB574_1F4284:
    /* 1F4284 802DB574 312A2000 */  andi       $t2, $t1, 0x2000
    /* 1F4288 802DB578 5140006D */  beql       $t2, $zero, .L802DB730_1F4440
    /* 1F428C 802DB57C 86040000 */   lh        $a0, 0x0($s0)
    /* 1F4290 802DB580 8602002C */  lh         $v0, 0x2C($s0)
    /* 1F4294 802DB584 02002025 */  or         $a0, $s0, $zero
    /* 1F4298 802DB588 00002825 */  or         $a1, $zero, $zero
    /* 1F429C 802DB58C 10400003 */  beqz       $v0, .L802DB59C_1F42AC
    /* 1F42A0 802DB590 244BFFFF */   addiu     $t3, $v0, -0x1
    /* 1F42A4 802DB594 A60B002C */  sh         $t3, 0x2C($s0)
    /* 1F42A8 802DB598 8602002C */  lh         $v0, 0x2C($s0)
  .L802DB59C_1F42AC:
    /* 1F42AC 802DB59C 28410009 */  slti       $at, $v0, 0x9
    /* 1F42B0 802DB5A0 14200007 */  bnez       $at, .L802DB5C0_1F42D0
    /* 1F42B4 802DB5A4 304C0001 */   andi      $t4, $v0, 0x1
    /* 1F42B8 802DB5A8 51800006 */  beql       $t4, $zero, .L802DB5C4_1F42D4
    /* 1F42BC 802DB5AC 24010002 */   addiu     $at, $zero, 0x2
    /* 1F42C0 802DB5B0 860D004C */  lh         $t5, 0x4C($s0)
    /* 1F42C4 802DB5B4 8602002C */  lh         $v0, 0x2C($s0)
    /* 1F42C8 802DB5B8 25AE0001 */  addiu      $t6, $t5, 0x1
    /* 1F42CC 802DB5BC A60E004C */  sh         $t6, 0x4C($s0)
  .L802DB5C0_1F42D0:
    /* 1F42D0 802DB5C0 24010002 */  addiu      $at, $zero, 0x2
  .L802DB5C4_1F42D4:
    /* 1F42D4 802DB5C4 14410046 */  bne        $v0, $at, .L802DB6E0_1F43F0
    /* 1F42D8 802DB5C8 27A60064 */   addiu     $a2, $sp, 0x64
    /* 1F42DC 802DB5CC 27AF005C */  addiu      $t7, $sp, 0x5C
    /* 1F42E0 802DB5D0 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 1F42E4 802DB5D4 0C04A141 */  jal        func_80128504_1374B4
    /* 1F42E8 802DB5D8 27A70060 */   addiu     $a3, $sp, 0x60
    /* 1F42EC 802DB5DC 86180006 */  lh         $t8, 0x6($s0)
    /* 1F42F0 802DB5E0 93A40073 */  lbu        $a0, 0x73($sp)
    /* 1F42F4 802DB5E4 00002825 */  or         $a1, $zero, $zero
    /* 1F42F8 802DB5E8 00003025 */  or         $a2, $zero, $zero
    /* 1F42FC 802DB5EC 24071194 */  addiu      $a3, $zero, 0x1194
    /* 1F4300 802DB5F0 0C021A29 */  jal        func_800868A4_95854
    /* 1F4304 802DB5F4 A7B8005A */   sh        $t8, 0x5A($sp)
    /* 1F4308 802DB5F8 10400039 */  beqz       $v0, .L802DB6E0_1F43F0
    /* 1F430C 802DB5FC 97A4005A */   lhu       $a0, 0x5A($sp)
    /* 1F4310 802DB600 0C007654 */  jal        coss
    /* 1F4314 802DB604 AFA40048 */   sw        $a0, 0x48($sp)
    /* 1F4318 802DB608 8FA40048 */  lw         $a0, 0x48($sp)
    /* 1F431C 802DB60C 0C007660 */  jal        sins
    /* 1F4320 802DB610 A7A20056 */   sh        $v0, 0x56($sp)
    /* 1F4324 802DB614 87B90056 */  lh         $t9, 0x56($sp)
    /* 1F4328 802DB618 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 1F432C 802DB61C 44810800 */  mtc1       $at, $f1
    /* 1F4330 802DB620 44992000 */  mtc1       $t9, $f4
    /* 1F4334 802DB624 44800000 */  mtc1       $zero, $f0
    /* 1F4338 802DB628 3C014059 */  lui        $at, (0x40590000 >> 16)
    /* 1F433C 802DB62C 468021A0 */  cvt.s.w    $f6, $f4
    /* 1F4340 802DB630 44822000 */  mtc1       $v0, $f4
    /* 1F4344 802DB634 44811800 */  mtc1       $at, $f3
    /* 1F4348 802DB638 44801000 */  mtc1       $zero, $f2
    /* 1F434C 802DB63C 24190014 */  addiu      $t9, $zero, 0x14
    /* 1F4350 802DB640 240BFFD2 */  addiu      $t3, $zero, -0x2E
    /* 1F4354 802DB644 46003221 */  cvt.d.s    $f8, $f6
    /* 1F4358 802DB648 468021A0 */  cvt.s.w    $f6, $f4
    /* 1F435C 802DB64C 240E0096 */  addiu      $t6, $zero, 0x96
    /* 1F4360 802DB650 240F0007 */  addiu      $t7, $zero, 0x7
    /* 1F4364 802DB654 2418001E */  addiu      $t8, $zero, 0x1E
    /* 1F4368 802DB658 240800C8 */  addiu      $t0, $zero, 0xC8
    /* 1F436C 802DB65C 46204283 */  div.d      $f10, $f8, $f0
    /* 1F4370 802DB660 240A00FF */  addiu      $t2, $zero, 0xFF
    /* 1F4374 802DB664 AFAA0034 */  sw         $t2, 0x34($sp)
    /* 1F4378 802DB668 AFA80028 */  sw         $t0, 0x28($sp)
    /* 1F437C 802DB66C 46003221 */  cvt.d.s    $f8, $f6
    /* 1F4380 802DB670 AFB80020 */  sw         $t8, 0x20($sp)
    /* 1F4384 802DB674 AFAF001C */  sw         $t7, 0x1C($sp)
    /* 1F4388 802DB678 AFAE0018 */  sw         $t6, 0x18($sp)
    /* 1F438C 802DB67C AFAB0010 */  sw         $t3, 0x10($sp)
    /* 1F4390 802DB680 AFB90024 */  sw         $t9, 0x24($sp)
    /* 1F4394 802DB684 87A40066 */  lh         $a0, 0x66($sp)
    /* 1F4398 802DB688 87A50062 */  lh         $a1, 0x62($sp)
    /* 1F439C 802DB68C 87A6005E */  lh         $a2, 0x5E($sp)
    /* 1F43A0 802DB690 AFA00030 */  sw         $zero, 0x30($sp)
    /* 1F43A4 802DB694 46225402 */  mul.d      $f16, $f10, $f2
    /* 1F43A8 802DB698 46204283 */  div.d      $f10, $f8, $f0
    /* 1F43AC 802DB69C 4620848D */  trunc.w.d  $f18, $f16
    /* 1F43B0 802DB6A0 44079000 */  mfc1       $a3, $f18
    /* 1F43B4 802DB6A4 00000000 */  nop
    /* 1F43B8 802DB6A8 00074E00 */  sll        $t1, $a3, 24
    /* 1F43BC 802DB6AC 00093E03 */  sra        $a3, $t1, 24
    /* 1F43C0 802DB6B0 24090032 */  addiu      $t1, $zero, 0x32
    /* 1F43C4 802DB6B4 AFA9002C */  sw         $t1, 0x2C($sp)
    /* 1F43C8 802DB6B8 46225402 */  mul.d      $f16, $f10, $f2
    /* 1F43CC 802DB6BC 4620848D */  trunc.w.d  $f18, $f16
    /* 1F43D0 802DB6C0 440D9000 */  mfc1       $t5, $f18
    /* 1F43D4 802DB6C4 0C03297B */  jal        func_800CA5EC_D959C
    /* 1F43D8 802DB6C8 AFAD0014 */   sw        $t5, 0x14($sp)
    /* 1F43DC 802DB6CC 240B0028 */  addiu      $t3, $zero, 0x28
    /* 1F43E0 802DB6D0 A60B001E */  sh         $t3, 0x1E($s0)
    /* 1F43E4 802DB6D4 8FA40050 */  lw         $a0, 0x50($sp)
    /* 1F43E8 802DB6D8 0C04DD1A */  jal        func_80137468_146418
    /* 1F43EC 802DB6DC 240500CD */   addiu     $a1, $zero, 0xCD
  .L802DB6E0_1F43F0:
    /* 1F43F0 802DB6E0 8602002C */  lh         $v0, 0x2C($s0)
    /* 1F43F4 802DB6E4 28410003 */  slti       $at, $v0, 0x3
    /* 1F43F8 802DB6E8 10200008 */  beqz       $at, .L802DB70C_1F441C
    /* 1F43FC 802DB6EC 00000000 */   nop
    /* 1F4400 802DB6F0 860C004C */  lh         $t4, 0x4C($s0)
    /* 1F4404 802DB6F4 8602002C */  lh         $v0, 0x2C($s0)
    /* 1F4408 802DB6F8 05810003 */  bgez       $t4, .L802DB708_1F4418
    /* 1F440C 802DB6FC 000C6843 */   sra       $t5, $t4, 1
    /* 1F4410 802DB700 25810001 */  addiu      $at, $t4, 0x1
    /* 1F4414 802DB704 00016843 */  sra        $t5, $at, 1
  .L802DB708_1F4418:
    /* 1F4418 802DB708 A60D004C */  sh         $t5, 0x4C($s0)
  .L802DB70C_1F441C:
    /* 1F441C 802DB70C 14400016 */  bnez       $v0, .L802DB768_1F4478
    /* 1F4420 802DB710 00000000 */   nop
    /* 1F4424 802DB714 8E0E0020 */  lw         $t6, 0x20($s0)
    /* 1F4428 802DB718 2401DFFF */  addiu      $at, $zero, -0x2001
    /* 1F442C 802DB71C A600004C */  sh         $zero, 0x4C($s0)
    /* 1F4430 802DB720 01C17824 */  and        $t7, $t6, $at
    /* 1F4434 802DB724 10000010 */  b          .L802DB768_1F4478
    /* 1F4438 802DB728 AE0F0020 */   sw        $t7, 0x20($s0)
    /* 1F443C 802DB72C 86040000 */  lh         $a0, 0x0($s0)
  .L802DB730_1F4440:
    /* 1F4440 802DB730 0C02E134 */  jal        func_800B84D0_C7480
    /* 1F4444 802DB734 86050004 */   lh        $a1, 0x4($s0)
    /* 1F4448 802DB738 8FB8006C */  lw         $t8, 0x6C($sp)
    /* 1F444C 802DB73C 2B010190 */  slti       $at, $t8, 0x190
    /* 1F4450 802DB740 10200009 */  beqz       $at, .L802DB768_1F4478
    /* 1F4454 802DB744 00000000 */   nop
    /* 1F4458 802DB748 8619001E */  lh         $t9, 0x1E($s0)
    /* 1F445C 802DB74C 17200006 */  bnez       $t9, .L802DB768_1F4478
    /* 1F4460 802DB750 00000000 */   nop
    /* 1F4464 802DB754 8E080020 */  lw         $t0, 0x20($s0)
    /* 1F4468 802DB758 240A0020 */  addiu      $t2, $zero, 0x20
    /* 1F446C 802DB75C A60A002C */  sh         $t2, 0x2C($s0)
    /* 1F4470 802DB760 35092000 */  ori        $t1, $t0, 0x2000
    /* 1F4474 802DB764 AE090020 */  sw         $t1, 0x20($s0)
  .L802DB768_1F4478:
    /* 1F4478 802DB768 0C023BC7 */  jal        func_8008EF1C_9DECC
    /* 1F447C 802DB76C 93A40073 */   lbu       $a0, 0x73($sp)
    /* 1F4480 802DB770 93A40073 */  lbu        $a0, 0x73($sp)
    /* 1F4484 802DB774 240500FA */  addiu      $a1, $zero, 0xFA
    /* 1F4488 802DB778 0C021D47 */  jal        func_8008751C_964CC
    /* 1F448C 802DB77C 240600F0 */   addiu     $a2, $zero, 0xF0
    /* 1F4490 802DB780 8603001E */  lh         $v1, 0x1E($s0)
    /* 1F4494 802DB784 10600002 */  beqz       $v1, .L802DB790_1F44A0
    /* 1F4498 802DB788 246BFFFF */   addiu     $t3, $v1, -0x1
    /* 1F449C 802DB78C A60B001E */  sh         $t3, 0x1E($s0)
  .L802DB790_1F44A0:
    /* 1F44A0 802DB790 8FBF0044 */  lw         $ra, 0x44($sp)
    /* 1F44A4 802DB794 8FB00040 */  lw         $s0, 0x40($sp)
    /* 1F44A8 802DB798 27BD0070 */  addiu      $sp, $sp, 0x70
    /* 1F44AC 802DB79C 03E00008 */  jr         $ra
    /* 1F44B0 802DB7A0 00000000 */   nop
endlabel func_802DB468_1F4178
