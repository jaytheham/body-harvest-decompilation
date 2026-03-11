nonmatching func_800AC2FC_BB2AC, 0x2C0

glabel func_800AC2FC_BB2AC
    /* BB2AC 800AC2FC 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* BB2B0 800AC300 AFA40050 */  sw         $a0, 0x50($sp)
    /* BB2B4 800AC304 93AE0053 */  lbu        $t6, 0x53($sp)
    /* BB2B8 800AC308 240A0050 */  addiu      $t2, $zero, 0x50
    /* BB2BC 800AC30C 3C098005 */  lui        $t1, %hi(alienInstances)
    /* BB2C0 800AC310 01CA0019 */  multu      $t6, $t2
    /* BB2C4 800AC314 25298198 */  addiu      $t1, $t1, %lo(alienInstances)
    /* BB2C8 800AC318 AFB00020 */  sw         $s0, 0x20($sp)
    /* BB2CC 800AC31C 3C08003D */  lui        $t0, (0x3D0900 >> 16)
    /* BB2D0 800AC320 35080900 */  ori        $t0, $t0, (0x3D0900 & 0xFFFF)
    /* BB2D4 800AC324 AFA8004C */  sw         $t0, 0x4C($sp)
    /* BB2D8 800AC328 AFBF0024 */  sw         $ra, 0x24($sp)
    /* BB2DC 800AC32C 24080014 */  addiu      $t0, $zero, 0x14
    /* BB2E0 800AC330 00007812 */  mflo       $t7
    /* BB2E4 800AC334 012F8021 */  addu       $s0, $t1, $t7
    /* BB2E8 800AC338 92020024 */  lbu        $v0, 0x24($s0)
    /* BB2EC 800AC33C 50400006 */  beql       $v0, $zero, .L800AC358_BB308
    /* BB2F0 800AC340 8E050020 */   lw        $a1, 0x20($s0)
    /* BB2F4 800AC344 51020004 */  beql       $t0, $v0, .L800AC358_BB308
    /* BB2F8 800AC348 8E050020 */   lw        $a1, 0x20($s0)
    /* BB2FC 800AC34C 10000096 */  b          .L800AC5A8_BB558
    /* BB300 800AC350 24020001 */   addiu     $v0, $zero, 0x1
    /* BB304 800AC354 8E050020 */  lw         $a1, 0x20($s0)
  .L800AC358_BB308:
    /* BB308 800AC358 24080014 */  addiu      $t0, $zero, 0x14
    /* BB30C 800AC35C 30B801A0 */  andi       $t8, $a1, 0x1A0
    /* BB310 800AC360 57000061 */  bnel       $t8, $zero, .L800AC4E8_BB498
    /* BB314 800AC364 86070038 */   lh        $a3, 0x38($s0)
    /* BB318 800AC368 9219001A */  lbu        $t9, 0x1A($s0)
    /* BB31C 800AC36C 3C038025 */  lui        $v1, %hi(D_802566D1)
    /* BB320 800AC370 2404FFFF */  addiu      $a0, $zero, -0x1
    /* BB324 800AC374 00195880 */  sll        $t3, $t9, 2
    /* BB328 800AC378 01795823 */  subu       $t3, $t3, $t9
    /* BB32C 800AC37C 000B5880 */  sll        $t3, $t3, 2
    /* BB330 800AC380 01795821 */  addu       $t3, $t3, $t9
    /* BB334 800AC384 000B58C0 */  sll        $t3, $t3, 3
    /* BB338 800AC388 006B1821 */  addu       $v1, $v1, $t3
    /* BB33C 800AC38C 11020019 */  beq        $t0, $v0, .L800AC3F4_BB3A4
    /* BB340 800AC390 906366D1 */   lbu       $v1, %lo(D_802566D1)($v1)
    /* BB344 800AC394 0068001A */  div        $zero, $v1, $t0
    /* BB348 800AC398 00003012 */  mflo       $a2
    /* BB34C 800AC39C 00066400 */  sll        $t4, $a2, 16
    /* BB350 800AC3A0 240E102C */  addiu      $t6, $zero, 0x102C
    /* BB354 800AC3A4 AFAE0010 */  sw         $t6, 0x10($sp)
    /* BB358 800AC3A8 000C3403 */  sra        $a2, $t4, 16
    /* BB35C 800AC3AC 86040000 */  lh         $a0, 0x0($s0)
    /* BB360 800AC3B0 86050004 */  lh         $a1, 0x4($s0)
    /* BB364 800AC3B4 15000002 */  bnez       $t0, .L800AC3C0_BB370
    /* BB368 800AC3B8 00000000 */   nop
    /* BB36C 800AC3BC 0007000D */  break      7
  .L800AC3C0_BB370:
    /* BB370 800AC3C0 2401FFFF */  addiu      $at, $zero, -0x1
    /* BB374 800AC3C4 15010004 */  bne        $t0, $at, .L800AC3D8_BB388
    /* BB378 800AC3C8 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* BB37C 800AC3CC 14610002 */  bne        $v1, $at, .L800AC3D8_BB388
    /* BB380 800AC3D0 00000000 */   nop
    /* BB384 800AC3D4 0006000D */  break      6
  .L800AC3D8_BB388:
    /* BB388 800AC3D8 24070001 */  addiu      $a3, $zero, 0x1
    /* BB38C 800AC3DC 0C046DB0 */  jal        func_8011B6C0_12A670
    /* BB390 800AC3E0 00000000 */   nop
    /* BB394 800AC3E4 00022400 */  sll        $a0, $v0, 16
    /* BB398 800AC3E8 00047C03 */  sra        $t7, $a0, 16
    /* BB39C 800AC3EC 10000001 */  b          .L800AC3F4_BB3A4
    /* BB3A0 800AC3F0 01E02025 */   or        $a0, $t7, $zero
  .L800AC3F4_BB3A4:
    /* BB3A4 800AC3F4 2401FFFF */  addiu      $at, $zero, -0x1
    /* BB3A8 800AC3F8 10810008 */  beq        $a0, $at, .L800AC41C_BB3CC
    /* BB3AC 800AC3FC 241800FF */   addiu     $t8, $zero, 0xFF
    /* BB3B0 800AC400 A6040038 */  sh         $a0, 0x38($s0)
    /* BB3B4 800AC404 26050014 */  addiu      $a1, $s0, 0x14
    /* BB3B8 800AC408 26060016 */  addiu      $a2, $s0, 0x16
    /* BB3BC 800AC40C 0C046CFC */  jal        func_8011B3F0_12A3A0
    /* BB3C0 800AC410 26070018 */   addiu     $a3, $s0, 0x18
    /* BB3C4 800AC414 10000003 */  b          .L800AC424_BB3D4
    /* BB3C8 800AC418 00401825 */   or        $v1, $v0, $zero
  .L800AC41C_BB3CC:
    /* BB3CC 800AC41C A6180038 */  sh         $t8, 0x38($s0)
    /* BB3D0 800AC420 00001825 */  or         $v1, $zero, $zero
  .L800AC424_BB3D4:
    /* BB3D4 800AC424 10600008 */  beqz       $v1, .L800AC448_BB3F8
    /* BB3D8 800AC428 27A6004C */   addiu     $a2, $sp, 0x4C
    /* BB3DC 800AC42C 8E190020 */  lw         $t9, 0x20($s0)
    /* BB3E0 800AC430 240C00A0 */  addiu      $t4, $zero, 0xA0
    /* BB3E4 800AC434 A60C0048 */  sh         $t4, 0x48($s0)
    /* BB3E8 800AC438 372B0100 */  ori        $t3, $t9, 0x100
    /* BB3EC 800AC43C AE0B0020 */  sw         $t3, 0x20($s0)
    /* BB3F0 800AC440 10000059 */  b          .L800AC5A8_BB558
    /* BB3F4 800AC444 00001025 */   or        $v0, $zero, $zero
  .L800AC448_BB3F8:
    /* BB3F8 800AC448 86040000 */  lh         $a0, 0x0($s0)
    /* BB3FC 800AC44C 0C02097A */  jal        func_800825E8_91598
    /* BB400 800AC450 86050004 */   lh        $a1, 0x4($s0)
    /* BB404 800AC454 8FA8004C */  lw         $t0, 0x4C($sp)
    /* BB408 800AC458 3C010007 */  lui        $at, (0x77A10 >> 16)
    /* BB40C 800AC45C 34217A10 */  ori        $at, $at, (0x77A10 & 0xFFFF)
    /* BB410 800AC460 0101082A */  slt        $at, $t0, $at
    /* BB414 800AC464 1020000D */  beqz       $at, .L800AC49C_BB44C
    /* BB418 800AC468 240C0040 */   addiu     $t4, $zero, 0x40
    /* BB41C 800AC46C 8E0D0020 */  lw         $t5, 0x20($s0)
    /* BB420 800AC470 2401FE5F */  addiu      $at, $zero, -0x1A1
    /* BB424 800AC474 241900A0 */  addiu      $t9, $zero, 0xA0
    /* BB428 800AC478 01A17024 */  and        $t6, $t5, $at
    /* BB42C 800AC47C AE0E0020 */  sw         $t6, 0x20($s0)
    /* BB430 800AC480 35D80060 */  ori        $t8, $t6, 0x60
    /* BB434 800AC484 304B00FF */  andi       $t3, $v0, 0xFF
    /* BB438 800AC488 AE180020 */  sw         $t8, 0x20($s0)
    /* BB43C 800AC48C A6190048 */  sh         $t9, 0x48($s0)
    /* BB440 800AC490 A60B0038 */  sh         $t3, 0x38($s0)
    /* BB444 800AC494 10000044 */  b          .L800AC5A8_BB558
    /* BB448 800AC498 00001025 */   or        $v0, $zero, $zero
  .L800AC49C_BB44C:
    /* BB44C 800AC49C 8E0D0020 */  lw         $t5, 0x20($s0)
    /* BB450 800AC4A0 2401FE5F */  addiu      $at, $zero, -0x1A1
    /* BB454 800AC4A4 A60C0048 */  sh         $t4, 0x48($s0)
    /* BB458 800AC4A8 01A17024 */  and        $t6, $t5, $at
    /* BB45C 800AC4AC 0C000E38 */  jal        func_800038E0_44E0
    /* BB460 800AC4B0 AE0E0020 */   sw        $t6, 0x20($s0)
    /* BB464 800AC4B4 0002C2C0 */  sll        $t8, $v0, 11
    /* BB468 800AC4B8 3401FFFF */  ori        $at, $zero, 0xFFFF
    /* BB46C 800AC4BC 0301001A */  div        $zero, $t8, $at
    /* BB470 800AC4C0 860F000E */  lh         $t7, 0xE($s0)
    /* BB474 800AC4C4 0000C812 */  mflo       $t9
    /* BB478 800AC4C8 93A40053 */  lbu        $a0, 0x53($sp)
    /* BB47C 800AC4CC 01F95821 */  addu       $t3, $t7, $t9
    /* BB480 800AC4D0 256CFC00 */  addiu      $t4, $t3, -0x400
    /* BB484 800AC4D4 0C02B066 */  jal        func_800AC198_BB148
    /* BB488 800AC4D8 A60C000E */   sh        $t4, 0xE($s0)
    /* BB48C 800AC4DC 10000032 */  b          .L800AC5A8_BB558
    /* BB490 800AC4E0 00001025 */   or        $v0, $zero, $zero
    /* BB494 800AC4E4 86070038 */  lh         $a3, 0x38($s0)
  .L800AC4E8_BB498:
    /* BB498 800AC4E8 240100FF */  addiu      $at, $zero, 0xFF
    /* BB49C 800AC4EC 30B90040 */  andi       $t9, $a1, 0x40
    /* BB4A0 800AC4F0 14E10013 */  bne        $a3, $at, .L800AC540_BB4F0
    /* BB4A4 800AC4F4 00000000 */   nop
    /* BB4A8 800AC4F8 8602002C */  lh         $v0, 0x2C($s0)
    /* BB4AC 800AC4FC 3C048014 */  lui        $a0, %hi(D_80142910)
    /* BB4B0 800AC500 10400003 */  beqz       $v0, .L800AC510_BB4C0
    /* BB4B4 800AC504 244DFFFF */   addiu     $t5, $v0, -0x1
    /* BB4B8 800AC508 10000026 */  b          .L800AC5A4_BB554
    /* BB4BC 800AC50C A60D002C */   sh        $t5, 0x2C($s0)
  .L800AC510_BB4C0:
    /* BB4C0 800AC510 0C00731B */  jal        osSyncPrintf
    /* BB4C4 800AC514 24842910 */   addiu     $a0, $a0, %lo(D_80142910)
    /* BB4C8 800AC518 8E0E0020 */  lw         $t6, 0x20($s0)
    /* BB4CC 800AC51C 2401EEFF */  addiu      $at, $zero, -0x1101
    /* BB4D0 800AC520 240F0040 */  addiu      $t7, $zero, 0x40
    /* BB4D4 800AC524 01C1C024 */  and        $t8, $t6, $at
    /* BB4D8 800AC528 AE180020 */  sw         $t8, 0x20($s0)
    /* BB4DC 800AC52C A60F0048 */  sh         $t7, 0x48($s0)
    /* BB4E0 800AC530 0C02AF9F */  jal        func_800ABE7C_BAE2C
    /* BB4E4 800AC534 93A40053 */   lbu       $a0, 0x53($sp)
    /* BB4E8 800AC538 1000001B */  b          .L800AC5A8_BB558
    /* BB4EC 800AC53C 24020001 */   addiu     $v0, $zero, 0x1
  .L800AC540_BB4F0:
    /* BB4F0 800AC540 13200018 */  beqz       $t9, .L800AC5A4_BB554
    /* BB4F4 800AC544 30E600FF */   andi      $a2, $a3, 0xFF
    /* BB4F8 800AC548 00CA0019 */  multu      $a2, $t2
    /* BB4FC 800AC54C 860D0000 */  lh         $t5, 0x0($s0)
    /* BB500 800AC550 86180004 */  lh         $t8, 0x4($s0)
    /* BB504 800AC554 3C01001D */  lui        $at, (0x1DE841 >> 16)
    /* BB508 800AC558 3421E841 */  ori        $at, $at, (0x1DE841 & 0xFFFF)
    /* BB50C 800AC55C 00005812 */  mflo       $t3
    /* BB510 800AC560 012B1821 */  addu       $v1, $t1, $t3
    /* BB514 800AC564 846C0000 */  lh         $t4, 0x0($v1)
    /* BB518 800AC568 846E0004 */  lh         $t6, 0x4($v1)
    /* BB51C 800AC56C 018D1023 */  subu       $v0, $t4, $t5
    /* BB520 800AC570 00420019 */  multu      $v0, $v0
    /* BB524 800AC574 01D82023 */  subu       $a0, $t6, $t8
    /* BB528 800AC578 00007812 */  mflo       $t7
    /* BB52C 800AC57C 00000000 */  nop
    /* BB530 800AC580 00000000 */  nop
    /* BB534 800AC584 00840019 */  multu      $a0, $a0
    /* BB538 800AC588 0000C812 */  mflo       $t9
    /* BB53C 800AC58C 01F94021 */  addu       $t0, $t7, $t9
    /* BB540 800AC590 0101082A */  slt        $at, $t0, $at
    /* BB544 800AC594 14200003 */  bnez       $at, .L800AC5A4_BB554
    /* BB548 800AC598 2401FE9F */   addiu     $at, $zero, -0x161
    /* BB54C 800AC59C 00A15824 */  and        $t3, $a1, $at
    /* BB550 800AC5A0 AE0B0020 */  sw         $t3, 0x20($s0)
  .L800AC5A4_BB554:
    /* BB554 800AC5A4 24020001 */  addiu      $v0, $zero, 0x1
  .L800AC5A8_BB558:
    /* BB558 800AC5A8 8FBF0024 */  lw         $ra, 0x24($sp)
    /* BB55C 800AC5AC 8FB00020 */  lw         $s0, 0x20($sp)
    /* BB560 800AC5B0 27BD0050 */  addiu      $sp, $sp, 0x50
    /* BB564 800AC5B4 03E00008 */  jr         $ra
    /* BB568 800AC5B8 00000000 */   nop
endlabel func_800AC2FC_BB2AC
