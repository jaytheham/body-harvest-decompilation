nonmatching func_802DC4A8_1F51B8, 0x290

glabel func_802DC4A8_1F51B8
    /* 1F51B8 802DC4A8 308E00FF */  andi       $t6, $a0, 0xFF
    /* 1F51BC 802DC4AC 000E7880 */  sll        $t7, $t6, 2
    /* 1F51C0 802DC4B0 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* 1F51C4 802DC4B4 01EE7821 */  addu       $t7, $t7, $t6
    /* 1F51C8 802DC4B8 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 1F51CC 802DC4BC AFB00040 */  sw         $s0, 0x40($sp)
    /* 1F51D0 802DC4C0 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 1F51D4 802DC4C4 000F7900 */  sll        $t7, $t7, 4
    /* 1F51D8 802DC4C8 01F88021 */  addu       $s0, $t7, $t8
    /* 1F51DC 802DC4CC 8E020020 */  lw         $v0, 0x20($s0)
    /* 1F51E0 802DC4D0 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 1F51E4 802DC4D4 AFA40060 */  sw         $a0, 0x60($sp)
    /* 1F51E8 802DC4D8 0002CAC0 */  sll        $t9, $v0, 11
    /* 1F51EC 802DC4DC 07200013 */  bltz       $t9, .L802DC52C_1F523C
    /* 1F51F0 802DC4E0 30480600 */   andi      $t0, $v0, 0x600
    /* 1F51F4 802DC4E4 11000011 */  beqz       $t0, .L802DC52C_1F523C
    /* 1F51F8 802DC4E8 3C02802E */   lui       $v0, %hi(D_802E0884)
    /* 1F51FC 802DC4EC 24420884 */  addiu      $v0, $v0, %lo(D_802E0884)
    /* 1F5200 802DC4F0 904A0000 */  lbu        $t2, 0x0($v0)
    /* 1F5204 802DC4F4 904B0001 */  lbu        $t3, 0x1($v0)
    /* 1F5208 802DC4F8 904C0002 */  lbu        $t4, 0x2($v0)
    /* 1F520C 802DC4FC 24090050 */  addiu      $t1, $zero, 0x50
    /* 1F5210 802DC500 A609002C */  sh         $t1, 0x2C($s0)
    /* 1F5214 802DC504 86040000 */  lh         $a0, 0x0($s0)
    /* 1F5218 802DC508 86050002 */  lh         $a1, 0x2($s0)
    /* 1F521C 802DC50C 86060004 */  lh         $a2, 0x4($s0)
    /* 1F5220 802DC510 240707D0 */  addiu      $a3, $zero, 0x7D0
    /* 1F5224 802DC514 AFAA0010 */  sw         $t2, 0x10($sp)
    /* 1F5228 802DC518 AFAB0014 */  sw         $t3, 0x14($sp)
    /* 1F522C 802DC51C 0C03416A */  jal        func_800D05A8_DF558
    /* 1F5230 802DC520 AFAC0018 */   sw        $t4, 0x18($sp)
    /* 1F5234 802DC524 10000080 */  b          .L802DC728_1F5438
    /* 1F5238 802DC528 8FBF0044 */   lw        $ra, 0x44($sp)
  .L802DC52C_1F523C:
    /* 1F523C 802DC52C 0C000E38 */  jal        func_800038E0_44E0
    /* 1F5240 802DC530 00000000 */   nop
    /* 1F5244 802DC534 2401000A */  addiu      $at, $zero, 0xA
    /* 1F5248 802DC538 0041001A */  div        $zero, $v0, $at
    /* 1F524C 802DC53C 00006810 */  mfhi       $t5
    /* 1F5250 802DC540 8603002C */  lh         $v1, 0x2C($s0)
    /* 1F5254 802DC544 25AE0004 */  addiu      $t6, $t5, 0x4
    /* 1F5258 802DC548 006E001A */  div        $zero, $v1, $t6
    /* 1F525C 802DC54C 00007810 */  mfhi       $t7
    /* 1F5260 802DC550 15C00002 */  bnez       $t6, .L802DC55C_1F526C
    /* 1F5264 802DC554 00000000 */   nop
    /* 1F5268 802DC558 0007000D */  break      7
  .L802DC55C_1F526C:
    /* 1F526C 802DC55C 2401FFFF */  addiu      $at, $zero, -0x1
    /* 1F5270 802DC560 15C10004 */  bne        $t6, $at, .L802DC574_1F5284
    /* 1F5274 802DC564 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 1F5278 802DC568 14610002 */  bne        $v1, $at, .L802DC574_1F5284
    /* 1F527C 802DC56C 00000000 */   nop
    /* 1F5280 802DC570 0006000D */  break      6
  .L802DC574_1F5284:
    /* 1F5284 802DC574 55E00053 */  bnel       $t7, $zero, .L802DC6C4_1F53D4
    /* 1F5288 802DC578 24010001 */   addiu     $at, $zero, 0x1
    /* 1F528C 802DC57C 0C000E38 */  jal        func_800038E0_44E0
    /* 1F5290 802DC580 00000000 */   nop
    /* 1F5294 802DC584 04410004 */  bgez       $v0, .L802DC598_1F52A8
    /* 1F5298 802DC588 30580003 */   andi      $t8, $v0, 0x3
    /* 1F529C 802DC58C 13000002 */  beqz       $t8, .L802DC598_1F52A8
    /* 1F52A0 802DC590 00000000 */   nop
    /* 1F52A4 802DC594 2718FFFC */  addiu      $t8, $t8, -0x4
  .L802DC598_1F52A8:
    /* 1F52A8 802DC598 0C000E38 */  jal        func_800038E0_44E0
    /* 1F52AC 802DC59C A7B8005C */   sh        $t8, 0x5C($sp)
    /* 1F52B0 802DC5A0 2401005A */  addiu      $at, $zero, 0x5A
    /* 1F52B4 802DC5A4 0041001A */  div        $zero, $v0, $at
    /* 1F52B8 802DC5A8 86080000 */  lh         $t0, 0x0($s0)
    /* 1F52BC 802DC5AC 0000C810 */  mfhi       $t9
    /* 1F52C0 802DC5B0 03284821 */  addu       $t1, $t9, $t0
    /* 1F52C4 802DC5B4 252AFFD3 */  addiu      $t2, $t1, -0x2D
    /* 1F52C8 802DC5B8 0C000E38 */  jal        func_800038E0_44E0
    /* 1F52CC 802DC5BC A7AA005A */   sh        $t2, 0x5A($sp)
    /* 1F52D0 802DC5C0 240100A0 */  addiu      $at, $zero, 0xA0
    /* 1F52D4 802DC5C4 0041001A */  div        $zero, $v0, $at
    /* 1F52D8 802DC5C8 860C0002 */  lh         $t4, 0x2($s0)
    /* 1F52DC 802DC5CC 00005810 */  mfhi       $t3
    /* 1F52E0 802DC5D0 016C6821 */  addu       $t5, $t3, $t4
    /* 1F52E4 802DC5D4 0C000E38 */  jal        func_800038E0_44E0
    /* 1F52E8 802DC5D8 A7AD0058 */   sh        $t5, 0x58($sp)
    /* 1F52EC 802DC5DC 2401005A */  addiu      $at, $zero, 0x5A
    /* 1F52F0 802DC5E0 0041001A */  div        $zero, $v0, $at
    /* 1F52F4 802DC5E4 860F0004 */  lh         $t7, 0x4($s0)
    /* 1F52F8 802DC5E8 00007010 */  mfhi       $t6
    /* 1F52FC 802DC5EC 01CFC021 */  addu       $t8, $t6, $t7
    /* 1F5300 802DC5F0 2719FFD3 */  addiu      $t9, $t8, -0x2D
    /* 1F5304 802DC5F4 0C000E38 */  jal        func_800038E0_44E0
    /* 1F5308 802DC5F8 A7B90056 */   sh        $t9, 0x56($sp)
    /* 1F530C 802DC5FC 24010190 */  addiu      $at, $zero, 0x190
    /* 1F5310 802DC600 0041001A */  div        $zero, $v0, $at
    /* 1F5314 802DC604 87A9005C */  lh         $t1, 0x5C($sp)
    /* 1F5318 802DC608 3C0B802E */  lui        $t3, %hi(D_802E0884)
    /* 1F531C 802DC60C 256B0884 */  addiu      $t3, $t3, %lo(D_802E0884)
    /* 1F5320 802DC610 00095080 */  sll        $t2, $t1, 2
    /* 1F5324 802DC614 01495023 */  subu       $t2, $t2, $t1
    /* 1F5328 802DC618 014B1821 */  addu       $v1, $t2, $t3
    /* 1F532C 802DC61C 00003810 */  mfhi       $a3
    /* 1F5330 802DC620 906C0000 */  lbu        $t4, 0x0($v1)
    /* 1F5334 802DC624 906D0001 */  lbu        $t5, 0x1($v1)
    /* 1F5338 802DC628 906E0002 */  lbu        $t6, 0x2($v1)
    /* 1F533C 802DC62C 24E70064 */  addiu      $a3, $a3, 0x64
    /* 1F5340 802DC630 30E8FFFF */  andi       $t0, $a3, 0xFFFF
    /* 1F5344 802DC634 01003825 */  or         $a3, $t0, $zero
    /* 1F5348 802DC638 AFA3004C */  sw         $v1, 0x4C($sp)
    /* 1F534C 802DC63C 87A4005A */  lh         $a0, 0x5A($sp)
    /* 1F5350 802DC640 87A50058 */  lh         $a1, 0x58($sp)
    /* 1F5354 802DC644 87A60056 */  lh         $a2, 0x56($sp)
    /* 1F5358 802DC648 AFAC0010 */  sw         $t4, 0x10($sp)
    /* 1F535C 802DC64C AFAD0014 */  sw         $t5, 0x14($sp)
    /* 1F5360 802DC650 0C03416A */  jal        func_800D05A8_DF558
    /* 1F5364 802DC654 AFAE0018 */   sw        $t6, 0x18($sp)
    /* 1F5368 802DC658 8FA3004C */  lw         $v1, 0x4C($sp)
    /* 1F536C 802DC65C 240F007F */  addiu      $t7, $zero, 0x7F
    /* 1F5370 802DC660 24180064 */  addiu      $t8, $zero, 0x64
    /* 1F5374 802DC664 906A0000 */  lbu        $t2, 0x0($v1)
    /* 1F5378 802DC668 906B0001 */  lbu        $t3, 0x1($v1)
    /* 1F537C 802DC66C 906C0002 */  lbu        $t4, 0x2($v1)
    /* 1F5380 802DC670 2419000C */  addiu      $t9, $zero, 0xC
    /* 1F5384 802DC674 24080008 */  addiu      $t0, $zero, 0x8
    /* 1F5388 802DC678 240900FF */  addiu      $t1, $zero, 0xFF
    /* 1F538C 802DC67C 240D0096 */  addiu      $t5, $zero, 0x96
    /* 1F5390 802DC680 AFAD0034 */  sw         $t5, 0x34($sp)
    /* 1F5394 802DC684 AFA90024 */  sw         $t1, 0x24($sp)
    /* 1F5398 802DC688 AFA80020 */  sw         $t0, 0x20($sp)
    /* 1F539C 802DC68C AFB9001C */  sw         $t9, 0x1C($sp)
    /* 1F53A0 802DC690 AFB80018 */  sw         $t8, 0x18($sp)
    /* 1F53A4 802DC694 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 1F53A8 802DC698 87A4005A */  lh         $a0, 0x5A($sp)
    /* 1F53AC 802DC69C 87A50058 */  lh         $a1, 0x58($sp)
    /* 1F53B0 802DC6A0 87A60056 */  lh         $a2, 0x56($sp)
    /* 1F53B4 802DC6A4 00003825 */  or         $a3, $zero, $zero
    /* 1F53B8 802DC6A8 AFA00014 */  sw         $zero, 0x14($sp)
    /* 1F53BC 802DC6AC AFAA0028 */  sw         $t2, 0x28($sp)
    /* 1F53C0 802DC6B0 AFAB002C */  sw         $t3, 0x2C($sp)
    /* 1F53C4 802DC6B4 0C03297B */  jal        func_800CA5EC_D959C
    /* 1F53C8 802DC6B8 AFAC0030 */   sw        $t4, 0x30($sp)
    /* 1F53CC 802DC6BC 8603002C */  lh         $v1, 0x2C($s0)
    /* 1F53D0 802DC6C0 24010001 */  addiu      $at, $zero, 0x1
  .L802DC6C4_1F53D4:
    /* 1F53D4 802DC6C4 14610017 */  bne        $v1, $at, .L802DC724_1F5434
    /* 1F53D8 802DC6C8 02002025 */   or        $a0, $s0, $zero
    /* 1F53DC 802DC6CC 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
    /* 1F53E0 802DC6D0 44812000 */  mtc1       $at, $f4
    /* 1F53E4 802DC6D4 860E0004 */  lh         $t6, 0x4($s0)
    /* 1F53E8 802DC6D8 240500EB */  addiu      $a1, $zero, 0xEB
    /* 1F53EC 802DC6DC 86060000 */  lh         $a2, 0x0($s0)
    /* 1F53F0 802DC6E0 86070002 */  lh         $a3, 0x2($s0)
    /* 1F53F4 802DC6E4 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 1F53F8 802DC6E8 0C04DC6E */  jal        func_801371B8_146168
    /* 1F53FC 802DC6EC E7A40014 */   swc1      $f4, 0x14($sp)
    /* 1F5400 802DC6F0 3C02802E */  lui        $v0, %hi(D_802E0884)
    /* 1F5404 802DC6F4 24420884 */  addiu      $v0, $v0, %lo(D_802E0884)
    /* 1F5408 802DC6F8 904F0000 */  lbu        $t7, 0x0($v0)
    /* 1F540C 802DC6FC 90580001 */  lbu        $t8, 0x1($v0)
    /* 1F5410 802DC700 90590002 */  lbu        $t9, 0x2($v0)
    /* 1F5414 802DC704 86040000 */  lh         $a0, 0x0($s0)
    /* 1F5418 802DC708 86050002 */  lh         $a1, 0x2($s0)
    /* 1F541C 802DC70C 86060004 */  lh         $a2, 0x4($s0)
    /* 1F5420 802DC710 240707D0 */  addiu      $a3, $zero, 0x7D0
    /* 1F5424 802DC714 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 1F5428 802DC718 AFB80014 */  sw         $t8, 0x14($sp)
    /* 1F542C 802DC71C 0C03416A */  jal        func_800D05A8_DF558
    /* 1F5430 802DC720 AFB90018 */   sw        $t9, 0x18($sp)
  .L802DC724_1F5434:
    /* 1F5434 802DC724 8FBF0044 */  lw         $ra, 0x44($sp)
  .L802DC728_1F5438:
    /* 1F5438 802DC728 8FB00040 */  lw         $s0, 0x40($sp)
    /* 1F543C 802DC72C 27BD0060 */  addiu      $sp, $sp, 0x60
    /* 1F5440 802DC730 03E00008 */  jr         $ra
    /* 1F5444 802DC734 00000000 */   nop
endlabel func_802DC4A8_1F51B8
