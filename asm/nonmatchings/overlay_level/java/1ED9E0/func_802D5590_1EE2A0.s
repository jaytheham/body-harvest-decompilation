nonmatching func_802D5590_1EE2A0, 0x264

glabel func_802D5590_1EE2A0
    /* 1EE2A0 802D5590 27BDFFA8 */  addiu      $sp, $sp, -0x58
    /* 1EE2A4 802D5594 AFB00034 */  sw         $s0, 0x34($sp)
    /* 1EE2A8 802D5598 3C10802E */  lui        $s0, %hi(D_802E0FB0)
    /* 1EE2AC 802D559C 26100FB0 */  addiu      $s0, $s0, %lo(D_802E0FB0)
    /* 1EE2B0 802D55A0 86020000 */  lh         $v0, 0x0($s0)
    /* 1EE2B4 802D55A4 2401FFFF */  addiu      $at, $zero, -0x1
    /* 1EE2B8 802D55A8 AFBF0054 */  sw         $ra, 0x54($sp)
    /* 1EE2BC 802D55AC AFB70050 */  sw         $s7, 0x50($sp)
    /* 1EE2C0 802D55B0 AFB6004C */  sw         $s6, 0x4C($sp)
    /* 1EE2C4 802D55B4 AFB50048 */  sw         $s5, 0x48($sp)
    /* 1EE2C8 802D55B8 AFB40044 */  sw         $s4, 0x44($sp)
    /* 1EE2CC 802D55BC AFB30040 */  sw         $s3, 0x40($sp)
    /* 1EE2D0 802D55C0 AFB2003C */  sw         $s2, 0x3C($sp)
    /* 1EE2D4 802D55C4 AFB10038 */  sw         $s1, 0x38($sp)
    /* 1EE2D8 802D55C8 F7B60028 */  sdc1       $f22, 0x28($sp)
    /* 1EE2DC 802D55CC 14410006 */  bne        $v0, $at, .L802D55E8_1EE2F8
    /* 1EE2E0 802D55D0 F7B40020 */   sdc1      $f20, 0x20($sp)
    /* 1EE2E4 802D55D4 0C001DB5 */  jal        func_800076D4_82D4
    /* 1EE2E8 802D55D8 24040008 */   addiu     $a0, $zero, 0x8
    /* 1EE2EC 802D55DC 0C00635F */  jal        func_80018D7C_1997C
    /* 1EE2F0 802D55E0 240400DC */   addiu     $a0, $zero, 0xDC
    /* 1EE2F4 802D55E4 86020000 */  lh         $v0, 0x0($s0)
  .L802D55E8_1EE2F8:
    /* 1EE2F8 802D55E8 244E0001 */  addiu      $t6, $v0, 0x1
    /* 1EE2FC 802D55EC A60E0000 */  sh         $t6, 0x0($s0)
    /* 1EE300 802D55F0 860F0000 */  lh         $t7, 0x0($s0)
    /* 1EE304 802D55F4 2401000A */  addiu      $at, $zero, 0xA
    /* 1EE308 802D55F8 3C048005 */  lui        $a0, %hi(D_8004F990)
    /* 1EE30C 802D55FC 15E10004 */  bne        $t7, $at, .L802D5610_1EE320
    /* 1EE310 802D5600 2484F990 */   addiu     $a0, $a0, %lo(D_8004F990)
    /* 1EE314 802D5604 0C048FA4 */  jal        func_80123E90_132E40
    /* 1EE318 802D5608 24050002 */   addiu     $a1, $zero, 0x2
    /* 1EE31C 802D560C A6000000 */  sh         $zero, 0x0($s0)
  .L802D5610_1EE320:
    /* 1EE320 802D5610 3C108005 */  lui        $s0, %hi(vehicleInstances)
    /* 1EE324 802D5614 2610DCD0 */  addiu      $s0, $s0, %lo(vehicleInstances)
    /* 1EE328 802D5618 86181CDC */  lh         $t8, 0x1CDC($s0)
    /* 1EE32C 802D561C 3C04802D */  lui        $a0, %hi(func_802D5590_1EE2A0)
    /* 1EE330 802D5620 5F000068 */  bgtzl      $t8, .L802D57C4_1EE4D4
    /* 1EE334 802D5624 8FBF0054 */   lw        $ra, 0x54($sp)
    /* 1EE338 802D5628 0C001D2F */  jal        func_800074BC_80BC
    /* 1EE33C 802D562C 24845590 */   addiu     $a0, $a0, %lo(func_802D5590_1EE2A0)
    /* 1EE340 802D5630 3C178016 */  lui        $s7, %hi(D_801591C4)
    /* 1EE344 802D5634 26F791C4 */  addiu      $s7, $s7, %lo(D_801591C4)
    /* 1EE348 802D5638 0C02B864 */  jal        func_800AE190_BD140
    /* 1EE34C 802D563C 86E40000 */   lh        $a0, 0x0($s7)
    /* 1EE350 802D5640 86051CC2 */  lh         $a1, 0x1CC2($s0)
    /* 1EE354 802D5644 86041CC0 */  lh         $a0, 0x1CC0($s0)
    /* 1EE358 802D5648 86061CC4 */  lh         $a2, 0x1CC4($s0)
    /* 1EE35C 802D564C 24A5000A */  addiu      $a1, $a1, 0xA
    /* 1EE360 802D5650 0005CC00 */  sll        $t9, $a1, 16
    /* 1EE364 802D5654 00192C03 */  sra        $a1, $t9, 16
    /* 1EE368 802D5658 240700C8 */  addiu      $a3, $zero, 0xC8
    /* 1EE36C 802D565C AFA00010 */  sw         $zero, 0x10($sp)
    /* 1EE370 802D5660 0C037E72 */  jal        func_800DF9C8_EE978
    /* 1EE374 802D5664 AFA00014 */   sw        $zero, 0x14($sp)
    /* 1EE378 802D5668 86E30000 */  lh         $v1, 0x0($s7)
    /* 1EE37C 802D566C 0002B400 */  sll        $s6, $v0, 16
    /* 1EE380 802D5670 00164C03 */  sra        $t1, $s6, 16
    /* 1EE384 802D5674 28610009 */  slti       $at, $v1, 0x9
    /* 1EE388 802D5678 0120B025 */  or         $s6, $t1, $zero
    /* 1EE38C 802D567C 14200003 */  bnez       $at, .L802D568C_1EE39C
    /* 1EE390 802D5680 00008825 */   or        $s1, $zero, $zero
    /* 1EE394 802D5684 10000002 */  b          .L802D5690_1EE3A0
    /* 1EE398 802D5688 24020008 */   addiu     $v0, $zero, 0x8
  .L802D568C_1EE39C:
    /* 1EE39C 802D568C 00601025 */  or         $v0, $v1, $zero
  .L802D5690_1EE3A0:
    /* 1EE3A0 802D5690 18400048 */  blez       $v0, .L802D57B4_1EE4C4
    /* 1EE3A4 802D5694 3C013FD0 */   lui       $at, (0x3FD00000 >> 16)
    /* 1EE3A8 802D5698 4481B800 */  mtc1       $at, $f23
    /* 1EE3AC 802D569C 3C01802E */  lui        $at, %hi(D_802E0EA8)
    /* 1EE3B0 802D56A0 3C150503 */  lui        $s5, %hi(D_502D390)
    /* 1EE3B4 802D56A4 3C138025 */  lui        $s3, %hi(vehicleSpecs)
    /* 1EE3B8 802D56A8 4480B000 */  mtc1       $zero, $f22
    /* 1EE3BC 802D56AC 26737A00 */  addiu      $s3, $s3, %lo(vehicleSpecs)
    /* 1EE3C0 802D56B0 26B5D390 */  addiu      $s5, $s5, %lo(D_502D390)
    /* 1EE3C4 802D56B4 D4340EA8 */  ldc1       $f20, %lo(D_802E0EA8)($at)
    /* 1EE3C8 802D56B8 24140070 */  addiu      $s4, $zero, 0x70
    /* 1EE3CC 802D56BC 24120064 */  addiu      $s2, $zero, 0x64
    /* 1EE3D0 802D56C0 2A210004 */  slti       $at, $s1, 0x4
  .L802D56C4_1EE3D4:
    /* 1EE3D4 802D56C4 5020001D */  beql       $at, $zero, .L802D573C_1EE44C
    /* 1EE3D8 802D56C8 920E1CDA */   lbu       $t6, 0x1CDA($s0)
    /* 1EE3DC 802D56CC 0C000E38 */  jal        func_800038E0_44E0
    /* 1EE3E0 802D56D0 00000000 */   nop
    /* 1EE3E4 802D56D4 0052001A */  div        $zero, $v0, $s2
    /* 1EE3E8 802D56D8 00005810 */  mfhi       $t3
    /* 1EE3EC 802D56DC 448B2000 */  mtc1       $t3, $f4
    /* 1EE3F0 802D56E0 860A1CC4 */  lh         $t2, 0x1CC4($s0)
    /* 1EE3F4 802D56E4 00002025 */  or         $a0, $zero, $zero
    /* 1EE3F8 802D56E8 468021A0 */  cvt.s.w    $f6, $f4
    /* 1EE3FC 802D56EC 24050185 */  addiu      $a1, $zero, 0x185
    /* 1EE400 802D56F0 86061CC0 */  lh         $a2, 0x1CC0($s0)
    /* 1EE404 802D56F4 86071CC2 */  lh         $a3, 0x1CC2($s0)
    /* 1EE408 802D56F8 AFAA0010 */  sw         $t2, 0x10($sp)
    /* 1EE40C 802D56FC 16400002 */  bnez       $s2, .L802D5708_1EE418
    /* 1EE410 802D5700 00000000 */   nop
    /* 1EE414 802D5704 0007000D */  break      7
  .L802D5708_1EE418:
    /* 1EE418 802D5708 2401FFFF */  addiu      $at, $zero, -0x1
    /* 1EE41C 802D570C 16410004 */  bne        $s2, $at, .L802D5720_1EE430
    /* 1EE420 802D5710 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 1EE424 802D5714 14410002 */  bne        $v0, $at, .L802D5720_1EE430
    /* 1EE428 802D5718 00000000 */   nop
    /* 1EE42C 802D571C 0006000D */  break      6
  .L802D5720_1EE430:
    /* 1EE430 802D5720 46003221 */  cvt.d.s    $f8, $f6
    /* 1EE434 802D5724 46344283 */  div.d      $f10, $f8, $f20
    /* 1EE438 802D5728 46365400 */  add.d      $f16, $f10, $f22
    /* 1EE43C 802D572C 462084A0 */  cvt.s.d    $f18, $f16
    /* 1EE440 802D5730 0C04DC6E */  jal        func_801371B8_146168
    /* 1EE444 802D5734 E7B20014 */   swc1      $f18, 0x14($sp)
    /* 1EE448 802D5738 920E1CDA */  lbu        $t6, 0x1CDA($s0)
  .L802D573C_1EE44C:
    /* 1EE44C 802D573C 86051CC2 */  lh         $a1, 0x1CC2($s0)
    /* 1EE450 802D5740 24090001 */  addiu      $t1, $zero, 0x1
    /* 1EE454 802D5744 01D40019 */  multu      $t6, $s4
    /* 1EE458 802D5748 24A5000A */  addiu      $a1, $a1, 0xA
    /* 1EE45C 802D574C 00056400 */  sll        $t4, $a1, 16
    /* 1EE460 802D5750 000C2C03 */  sra        $a1, $t4, 16
    /* 1EE464 802D5754 86041CC0 */  lh         $a0, 0x1CC0($s0)
    /* 1EE468 802D5758 86061CC4 */  lh         $a2, 0x1CC4($s0)
    /* 1EE46C 802D575C 24070010 */  addiu      $a3, $zero, 0x10
    /* 1EE470 802D5760 AFB60010 */  sw         $s6, 0x10($sp)
    /* 1EE474 802D5764 00007812 */  mflo       $t7
    /* 1EE478 802D5768 026FC021 */  addu       $t8, $s3, $t7
    /* 1EE47C 802D576C 87190036 */  lh         $t9, 0x36($t8)
    /* 1EE480 802D5770 AFA9001C */  sw         $t1, 0x1C($sp)
    /* 1EE484 802D5774 AFB50018 */  sw         $s5, 0x18($sp)
    /* 1EE488 802D5778 00194040 */  sll        $t0, $t9, 1
    /* 1EE48C 802D577C 0C031E49 */  jal        func_800C7924_D68D4
    /* 1EE490 802D5780 AFA80014 */   sw        $t0, 0x14($sp)
    /* 1EE494 802D5784 86E30000 */  lh         $v1, 0x0($s7)
    /* 1EE498 802D5788 26310001 */  addiu      $s1, $s1, 0x1
    /* 1EE49C 802D578C 00115400 */  sll        $t2, $s1, 16
    /* 1EE4A0 802D5790 28610009 */  slti       $at, $v1, 0x9
    /* 1EE4A4 802D5794 14200003 */  bnez       $at, .L802D57A4_1EE4B4
    /* 1EE4A8 802D5798 000A8C03 */   sra       $s1, $t2, 16
    /* 1EE4AC 802D579C 10000002 */  b          .L802D57A8_1EE4B8
    /* 1EE4B0 802D57A0 24020008 */   addiu     $v0, $zero, 0x8
  .L802D57A4_1EE4B4:
    /* 1EE4B4 802D57A4 00601025 */  or         $v0, $v1, $zero
  .L802D57A8_1EE4B8:
    /* 1EE4B8 802D57A8 0222082A */  slt        $at, $s1, $v0
    /* 1EE4BC 802D57AC 5420FFC5 */  bnel       $at, $zero, .L802D56C4_1EE3D4
    /* 1EE4C0 802D57B0 2A210004 */   slti      $at, $s1, 0x4
  .L802D57B4_1EE4C4:
    /* 1EE4C4 802D57B4 A6E00000 */  sh         $zero, 0x0($s7)
    /* 1EE4C8 802D57B8 0C001DB5 */  jal        func_800076D4_82D4
    /* 1EE4CC 802D57BC 24040009 */   addiu     $a0, $zero, 0x9
    /* 1EE4D0 802D57C0 8FBF0054 */  lw         $ra, 0x54($sp)
  .L802D57C4_1EE4D4:
    /* 1EE4D4 802D57C4 D7B40020 */  ldc1       $f20, 0x20($sp)
    /* 1EE4D8 802D57C8 D7B60028 */  ldc1       $f22, 0x28($sp)
    /* 1EE4DC 802D57CC 8FB00034 */  lw         $s0, 0x34($sp)
    /* 1EE4E0 802D57D0 8FB10038 */  lw         $s1, 0x38($sp)
    /* 1EE4E4 802D57D4 8FB2003C */  lw         $s2, 0x3C($sp)
    /* 1EE4E8 802D57D8 8FB30040 */  lw         $s3, 0x40($sp)
    /* 1EE4EC 802D57DC 8FB40044 */  lw         $s4, 0x44($sp)
    /* 1EE4F0 802D57E0 8FB50048 */  lw         $s5, 0x48($sp)
    /* 1EE4F4 802D57E4 8FB6004C */  lw         $s6, 0x4C($sp)
    /* 1EE4F8 802D57E8 8FB70050 */  lw         $s7, 0x50($sp)
    /* 1EE4FC 802D57EC 03E00008 */  jr         $ra
    /* 1EE500 802D57F0 27BD0058 */   addiu     $sp, $sp, 0x58
endlabel func_802D5590_1EE2A0
