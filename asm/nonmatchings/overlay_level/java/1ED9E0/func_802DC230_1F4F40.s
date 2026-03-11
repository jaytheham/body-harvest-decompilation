nonmatching func_802DC230_1F4F40, 0x278

glabel func_802DC230_1F4F40
    /* 1F4F40 802DC230 27BDFF98 */  addiu      $sp, $sp, -0x68
    /* 1F4F44 802DC234 AFA40068 */  sw         $a0, 0x68($sp)
    /* 1F4F48 802DC238 93AE006B */  lbu        $t6, 0x6B($sp)
    /* 1F4F4C 802DC23C 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 1F4F50 802DC240 AFB00040 */  sw         $s0, 0x40($sp)
    /* 1F4F54 802DC244 000E7880 */  sll        $t7, $t6, 2
    /* 1F4F58 802DC248 01EE7821 */  addu       $t7, $t7, $t6
    /* 1F4F5C 802DC24C 000F7900 */  sll        $t7, $t7, 4
    /* 1F4F60 802DC250 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 1F4F64 802DC254 01F88021 */  addu       $s0, $t7, $t8
    /* 1F4F68 802DC258 8E190020 */  lw         $t9, 0x20($s0)
    /* 1F4F6C 802DC25C AFBF0044 */  sw         $ra, 0x44($sp)
    /* 1F4F70 802DC260 27A60056 */  addiu      $a2, $sp, 0x56
    /* 1F4F74 802DC264 33282000 */  andi       $t0, $t9, 0x2000
    /* 1F4F78 802DC268 1500000D */  bnez       $t0, .L802DC2A0_1F4FB0
    /* 1F4F7C 802DC26C 00000000 */   nop
    /* 1F4F80 802DC270 86040000 */  lh         $a0, 0x0($s0)
    /* 1F4F84 802DC274 0C0479BF */  jal        func_8011E6FC_12D6AC
    /* 1F4F88 802DC278 86050004 */   lh        $a1, 0x4($s0)
    /* 1F4F8C 802DC27C 2401FFFF */  addiu      $at, $zero, -0x1
    /* 1F4F90 802DC280 10410007 */  beq        $v0, $at, .L802DC2A0_1F4FB0
    /* 1F4F94 802DC284 00000000 */   nop
    /* 1F4F98 802DC288 8E090020 */  lw         $t1, 0x20($s0)
    /* 1F4F9C 802DC28C 87AB0056 */  lh         $t3, 0x56($sp)
    /* 1F4FA0 802DC290 352A1000 */  ori        $t2, $t1, 0x1000
    /* 1F4FA4 802DC294 256CFFE2 */  addiu      $t4, $t3, -0x1E
    /* 1F4FA8 802DC298 AE0A0020 */  sw         $t2, 0x20($s0)
    /* 1F4FAC 802DC29C A60C0002 */  sh         $t4, 0x2($s0)
  .L802DC2A0_1F4FB0:
    /* 1F4FB0 802DC2A0 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 1F4FB4 802DC2A4 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 1F4FB8 802DC2A8 0C021395 */  jal        func_80084E54_93E04
    /* 1F4FBC 802DC2AC 02002825 */   or        $a1, $s0, $zero
    /* 1F4FC0 802DC2B0 284105DC */  slti       $at, $v0, 0x5DC
    /* 1F4FC4 802DC2B4 1020000F */  beqz       $at, .L802DC2F4_1F5004
    /* 1F4FC8 802DC2B8 3C0E8005 */   lui       $t6, %hi(D_80052B34)
    /* 1F4FCC 802DC2BC 8DCE2B34 */  lw         $t6, %lo(D_80052B34)($t6)
    /* 1F4FD0 802DC2C0 860D0002 */  lh         $t5, 0x2($s0)
    /* 1F4FD4 802DC2C4 93A4006B */  lbu        $a0, 0x6B($sp)
    /* 1F4FD8 802DC2C8 85CF0002 */  lh         $t7, 0x2($t6)
    /* 1F4FDC 802DC2CC 00002825 */  or         $a1, $zero, $zero
    /* 1F4FE0 802DC2D0 01AF082A */  slt        $at, $t5, $t7
    /* 1F4FE4 802DC2D4 14200005 */  bnez       $at, .L802DC2EC_1F4FFC
    /* 1F4FE8 802DC2D8 00000000 */   nop
    /* 1F4FEC 802DC2DC 8E180020 */  lw         $t8, 0x20($s0)
    /* 1F4FF0 802DC2E0 33191000 */  andi       $t9, $t8, 0x1000
    /* 1F4FF4 802DC2E4 53200004 */  beql       $t9, $zero, .L802DC2F8_1F5008
    /* 1F4FF8 802DC2E8 8602001E */   lh        $v0, 0x1E($s0)
  .L802DC2EC_1F4FFC:
    /* 1F4FFC 802DC2EC 0C021C73 */  jal        func_800871CC_9617C
    /* 1F5000 802DC2F0 00003025 */   or        $a2, $zero, $zero
  .L802DC2F4_1F5004:
    /* 1F5004 802DC2F4 8602001E */  lh         $v0, 0x1E($s0)
  .L802DC2F8_1F5008:
    /* 1F5008 802DC2F8 10400002 */  beqz       $v0, .L802DC304_1F5014
    /* 1F500C 802DC2FC 2448FFFF */   addiu     $t0, $v0, -0x1
    /* 1F5010 802DC300 A608001E */  sh         $t0, 0x1E($s0)
  .L802DC304_1F5014:
    /* 1F5014 802DC304 8602002C */  lh         $v0, 0x2C($s0)
    /* 1F5018 802DC308 10400003 */  beqz       $v0, .L802DC318_1F5028
    /* 1F501C 802DC30C 2449FFFF */   addiu     $t1, $v0, -0x1
    /* 1F5020 802DC310 10000031 */  b          .L802DC3D8_1F50E8
    /* 1F5024 802DC314 A609002C */   sh        $t1, 0x2C($s0)
  .L802DC318_1F5028:
    /* 1F5028 802DC318 0C000E38 */  jal        func_800038E0_44E0
    /* 1F502C 802DC31C 00000000 */   nop
    /* 1F5030 802DC320 04410004 */  bgez       $v0, .L802DC334_1F5044
    /* 1F5034 802DC324 304A0007 */   andi      $t2, $v0, 0x7
    /* 1F5038 802DC328 11400002 */  beqz       $t2, .L802DC334_1F5044
    /* 1F503C 802DC32C 00000000 */   nop
    /* 1F5040 802DC330 254AFFF8 */  addiu      $t2, $t2, -0x8
  .L802DC334_1F5044:
    /* 1F5044 802DC334 0C000E38 */  jal        func_800038E0_44E0
    /* 1F5048 802DC338 A60A002C */   sh        $t2, 0x2C($s0)
    /* 1F504C 802DC33C 24010006 */  addiu      $at, $zero, 0x6
    /* 1F5050 802DC340 0041001A */  div        $zero, $v0, $at
    /* 1F5054 802DC344 920B001A */  lbu        $t3, 0x1A($s0)
    /* 1F5058 802DC348 860D0002 */  lh         $t5, 0x2($s0)
    /* 1F505C 802DC34C 00003010 */  mfhi       $a2
    /* 1F5060 802DC350 000B6080 */  sll        $t4, $t3, 2
    /* 1F5064 802DC354 018B6023 */  subu       $t4, $t4, $t3
    /* 1F5068 802DC358 000C6080 */  sll        $t4, $t4, 2
    /* 1F506C 802DC35C 018B6021 */  addu       $t4, $t4, $t3
    /* 1F5070 802DC360 86180004 */  lh         $t8, 0x4($s0)
    /* 1F5074 802DC364 000C60C0 */  sll        $t4, $t4, 3
    /* 1F5078 802DC368 24C60006 */  addiu      $a2, $a2, 0x6
    /* 1F507C 802DC36C 3C058025 */  lui        $a1, %hi(D_8025668C)
    /* 1F5080 802DC370 00AC2821 */  addu       $a1, $a1, $t4
    /* 1F5084 802DC374 30CE00FF */  andi       $t6, $a2, 0xFF
    /* 1F5088 802DC378 25AF0028 */  addiu      $t7, $t5, 0x28
    /* 1F508C 802DC37C AFAF0010 */  sw         $t7, 0x10($sp)
    /* 1F5090 802DC380 01C03025 */  or         $a2, $t6, $zero
    /* 1F5094 802DC384 84A5668C */  lh         $a1, %lo(D_8025668C)($a1)
    /* 1F5098 802DC388 2404003C */  addiu      $a0, $zero, 0x3C
    /* 1F509C 802DC38C 86070000 */  lh         $a3, 0x0($s0)
    /* 1F50A0 802DC390 0C0331EC */  jal        func_800CC7B0_DB760
    /* 1F50A4 802DC394 AFB80014 */   sw        $t8, 0x14($sp)
    /* 1F50A8 802DC398 0C000E38 */  jal        func_800038E0_44E0
    /* 1F50AC 802DC39C 00000000 */   nop
    /* 1F50B0 802DC3A0 2401000A */  addiu      $at, $zero, 0xA
    /* 1F50B4 802DC3A4 0041001A */  div        $zero, $v0, $at
    /* 1F50B8 802DC3A8 0000C810 */  mfhi       $t9
    /* 1F50BC 802DC3AC 02002025 */  or         $a0, $s0, $zero
    /* 1F50C0 802DC3B0 13200009 */  beqz       $t9, .L802DC3D8_1F50E8
    /* 1F50C4 802DC3B4 2405013F */   addiu     $a1, $zero, 0x13F
    /* 1F50C8 802DC3B8 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
    /* 1F50CC 802DC3BC 44812000 */  mtc1       $at, $f4
    /* 1F50D0 802DC3C0 86080004 */  lh         $t0, 0x4($s0)
    /* 1F50D4 802DC3C4 86060000 */  lh         $a2, 0x0($s0)
    /* 1F50D8 802DC3C8 86070002 */  lh         $a3, 0x2($s0)
    /* 1F50DC 802DC3CC AFA80010 */  sw         $t0, 0x10($sp)
    /* 1F50E0 802DC3D0 0C04DC6E */  jal        func_801371B8_146168
    /* 1F50E4 802DC3D4 E7A40014 */   swc1      $f4, 0x14($sp)
  .L802DC3D8_1F50E8:
    /* 1F50E8 802DC3D8 8E090020 */  lw         $t1, 0x20($s0)
    /* 1F50EC 802DC3DC 00095000 */  sll        $t2, $t1, 0
    /* 1F50F0 802DC3E0 0543002A */  bgezl      $t2, .L802DC48C_1F519C
    /* 1F50F4 802DC3E4 93A4006B */   lbu       $a0, 0x6B($sp)
    /* 1F50F8 802DC3E8 0C000E38 */  jal        func_800038E0_44E0
    /* 1F50FC 802DC3EC 00000000 */   nop
    /* 1F5100 802DC3F0 86050002 */  lh         $a1, 0x2($s0)
    /* 1F5104 802DC3F4 3C0A802E */  lui        $t2, %hi(D_802E0884)
    /* 1F5108 802DC3F8 254A0884 */  addiu      $t2, $t2, %lo(D_802E0884)
    /* 1F510C 802DC3FC 24A50080 */  addiu      $a1, $a1, 0x80
    /* 1F5110 802DC400 00055C00 */  sll        $t3, $a1, 16
    /* 1F5114 802DC404 000B6403 */  sra        $t4, $t3, 16
    /* 1F5118 802DC408 240E007F */  addiu      $t6, $zero, 0x7F
    /* 1F511C 802DC40C AFAE0010 */  sw         $t6, 0x10($sp)
    /* 1F5120 802DC410 01802825 */  or         $a1, $t4, $zero
    /* 1F5124 802DC414 240D005A */  addiu      $t5, $zero, 0x5A
    /* 1F5128 802DC418 AFAD0018 */  sw         $t5, 0x18($sp)
    /* 1F512C 802DC41C 240D0096 */  addiu      $t5, $zero, 0x96
    /* 1F5130 802DC420 240F000C */  addiu      $t7, $zero, 0xC
    /* 1F5134 802DC424 2418000A */  addiu      $t8, $zero, 0xA
    /* 1F5138 802DC428 241900FF */  addiu      $t9, $zero, 0xFF
    /* 1F513C 802DC42C AFB90024 */  sw         $t9, 0x24($sp)
    /* 1F5140 802DC430 AFB80020 */  sw         $t8, 0x20($sp)
    /* 1F5144 802DC434 AFAF001C */  sw         $t7, 0x1C($sp)
    /* 1F5148 802DC438 AFAD0034 */  sw         $t5, 0x34($sp)
    /* 1F514C 802DC43C 86040000 */  lh         $a0, 0x0($s0)
    /* 1F5150 802DC440 86060004 */  lh         $a2, 0x4($s0)
    /* 1F5154 802DC444 00003825 */  or         $a3, $zero, $zero
    /* 1F5158 802DC448 AFA00014 */  sw         $zero, 0x14($sp)
    /* 1F515C 802DC44C 04410004 */  bgez       $v0, .L802DC460_1F5170
    /* 1F5160 802DC450 30480003 */   andi      $t0, $v0, 0x3
    /* 1F5164 802DC454 11000002 */  beqz       $t0, .L802DC460_1F5170
    /* 1F5168 802DC458 00000000 */   nop
    /* 1F516C 802DC45C 2508FFFC */  addiu      $t0, $t0, -0x4
  .L802DC460_1F5170:
    /* 1F5170 802DC460 00084880 */  sll        $t1, $t0, 2
    /* 1F5174 802DC464 01284823 */  subu       $t1, $t1, $t0
    /* 1F5178 802DC468 012A1821 */  addu       $v1, $t1, $t2
    /* 1F517C 802DC46C 906B0000 */  lbu        $t3, 0x0($v1)
    /* 1F5180 802DC470 906C0001 */  lbu        $t4, 0x1($v1)
    /* 1F5184 802DC474 906E0002 */  lbu        $t6, 0x2($v1)
    /* 1F5188 802DC478 AFAB0028 */  sw         $t3, 0x28($sp)
    /* 1F518C 802DC47C AFAC002C */  sw         $t4, 0x2C($sp)
    /* 1F5190 802DC480 0C03297B */  jal        func_800CA5EC_D959C
    /* 1F5194 802DC484 AFAE0030 */   sw        $t6, 0x30($sp)
    /* 1F5198 802DC488 93A4006B */  lbu        $a0, 0x6B($sp)
  .L802DC48C_1F519C:
    /* 1F519C 802DC48C 0C04DD1A */  jal        func_80137468_146418
    /* 1F51A0 802DC490 240500CB */   addiu     $a1, $zero, 0xCB
    /* 1F51A4 802DC494 8FBF0044 */  lw         $ra, 0x44($sp)
    /* 1F51A8 802DC498 8FB00040 */  lw         $s0, 0x40($sp)
    /* 1F51AC 802DC49C 27BD0068 */  addiu      $sp, $sp, 0x68
    /* 1F51B0 802DC4A0 03E00008 */  jr         $ra
    /* 1F51B4 802DC4A4 00000000 */   nop
endlabel func_802DC230_1F4F40
