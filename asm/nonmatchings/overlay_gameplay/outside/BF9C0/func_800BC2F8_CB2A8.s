nonmatching func_800BC2F8_CB2A8, 0x2E4

glabel func_800BC2F8_CB2A8
    /* CB2A8 800BC2F8 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* CB2AC 800BC2FC AFA40038 */  sw         $a0, 0x38($sp)
    /* CB2B0 800BC300 87A6003A */  lh         $a2, 0x3A($sp)
    /* CB2B4 800BC304 AFA5003C */  sw         $a1, 0x3C($sp)
    /* CB2B8 800BC308 00057400 */  sll        $t6, $a1, 16
    /* CB2BC 800BC30C 000E2C03 */  sra        $a1, $t6, 16
    /* CB2C0 800BC310 00051A03 */  sra        $v1, $a1, 8
    /* CB2C4 800BC314 3C028015 */  lui        $v0, %hi(D_8014F8A0)
    /* CB2C8 800BC318 24630080 */  addiu      $v1, $v1, 0x80
    /* CB2CC 800BC31C 00065203 */  sra        $t2, $a2, 8
    /* CB2D0 800BC320 8C42F8A0 */  lw         $v0, %lo(D_8014F8A0)($v0)
    /* CB2D4 800BC324 25460080 */  addiu      $a2, $t2, 0x80
    /* CB2D8 800BC328 0003C400 */  sll        $t8, $v1, 16
    /* CB2DC 800BC32C 00181C03 */  sra        $v1, $t8, 16
    /* CB2E0 800BC330 00065C00 */  sll        $t3, $a2, 16
    /* CB2E4 800BC334 000B3403 */  sra        $a2, $t3, 16
    /* CB2E8 800BC338 00036A40 */  sll        $t5, $v1, 9
    /* CB2EC 800BC33C 00067840 */  sll        $t7, $a2, 1
    /* CB2F0 800BC340 004D7021 */  addu       $t6, $v0, $t5
    /* CB2F4 800BC344 AFBF001C */  sw         $ra, 0x1C($sp)
    /* CB2F8 800BC348 01CF4821 */  addu       $t1, $t6, $t7
    /* CB2FC 800BC34C 95280000 */  lhu        $t0, 0x0($t1)
    /* CB300 800BC350 00083D80 */  sll        $a3, $t0, 22
    /* CB304 800BC354 0007C702 */  srl        $t8, $a3, 28
    /* CB308 800BC358 2B010008 */  slti       $at, $t8, 0x8
    /* CB30C 800BC35C 1420009B */  bnez       $at, .L800BC5CC_CB57C
    /* CB310 800BC360 2B01000D */   slti      $at, $t8, 0xD
    /* CB314 800BC364 10200099 */  beqz       $at, .L800BC5CC_CB57C
    /* CB318 800BC368 3C0D8022 */   lui       $t5, %hi(D_8021EA30)
    /* CB31C 800BC36C 04610003 */  bgez       $v1, .L800BC37C_CB32C
    /* CB320 800BC370 0003C883 */   sra       $t9, $v1, 2
    /* CB324 800BC374 24610003 */  addiu      $at, $v1, 0x3
    /* CB328 800BC378 0001C883 */  sra        $t9, $at, 2
  .L800BC37C_CB32C:
    /* CB32C 800BC37C 00195180 */  sll        $t2, $t9, 6
    /* CB330 800BC380 04C10003 */  bgez       $a2, .L800BC390_CB340
    /* CB334 800BC384 00065883 */   sra       $t3, $a2, 2
    /* CB338 800BC388 24C10003 */  addiu      $at, $a2, 0x3
    /* CB33C 800BC38C 00015883 */  sra        $t3, $at, 2
  .L800BC390_CB340:
    /* CB340 800BC390 014B6021 */  addu       $t4, $t2, $t3
    /* CB344 800BC394 01AC6821 */  addu       $t5, $t5, $t4
    /* CB348 800BC398 91ADEA30 */  lbu        $t5, %lo(D_8021EA30)($t5)
    /* CB34C 800BC39C 24010007 */  addiu      $at, $zero, 0x7
    /* CB350 800BC3A0 00087BC2 */  srl        $t7, $t0, 15
    /* CB354 800BC3A4 31AE000F */  andi       $t6, $t5, 0xF
    /* CB358 800BC3A8 15C10088 */  bne        $t6, $at, .L800BC5CC_CB57C
    /* CB35C 800BC3AC 24010001 */   addiu     $at, $zero, 0x1
    /* CB360 800BC3B0 11E10086 */  beq        $t7, $at, .L800BC5CC_CB57C
    /* CB364 800BC3B4 3C038004 */   lui       $v1, %hi(currentControllerStates)
    /* CB368 800BC3B8 24637588 */  addiu      $v1, $v1, %lo(currentControllerStates)
    /* CB36C 800BC3BC 80620002 */  lb         $v0, 0x2($v1)
    /* CB370 800BC3C0 3C198005 */  lui        $t9, %hi(D_80052B34)
    /* CB374 800BC3C4 04400003 */  bltz       $v0, .L800BC3D4_CB384
    /* CB378 800BC3C8 00022023 */   negu      $a0, $v0
    /* CB37C 800BC3CC 10000001 */  b          .L800BC3D4_CB384
    /* CB380 800BC3D0 00402025 */   or        $a0, $v0, $zero
  .L800BC3D4_CB384:
    /* CB384 800BC3D4 80620003 */  lb         $v0, 0x3($v1)
    /* CB388 800BC3D8 04400003 */  bltz       $v0, .L800BC3E8_CB398
    /* CB38C 800BC3DC 00021823 */   negu      $v1, $v0
    /* CB390 800BC3E0 10000001 */  b          .L800BC3E8_CB398
    /* CB394 800BC3E4 00401825 */   or        $v1, $v0, $zero
  .L800BC3E8_CB398:
    /* CB398 800BC3E8 0064C021 */  addu       $t8, $v1, $a0
    /* CB39C 800BC3EC 2B010011 */  slti       $at, $t8, 0x11
    /* CB3A0 800BC3F0 54200077 */  bnel       $at, $zero, .L800BC5D0_CB580
    /* CB3A4 800BC3F4 8FBF001C */   lw        $ra, 0x1C($sp)
    /* CB3A8 800BC3F8 8F392B34 */  lw         $t9, %lo(D_80052B34)($t9)
    /* CB3AC 800BC3FC 3C0C8004 */  lui        $t4, %hi(currentLevel)
    /* CB3B0 800BC400 972A0020 */  lhu        $t2, 0x20($t9)
    /* CB3B4 800BC404 314B0002 */  andi       $t3, $t2, 0x2
    /* CB3B8 800BC408 55600071 */  bnel       $t3, $zero, .L800BC5D0_CB580
    /* CB3BC 800BC40C 8FBF001C */   lw        $ra, 0x1C($sp)
    /* CB3C0 800BC410 8D8C7F90 */  lw         $t4, %lo(currentLevel)($t4)
    /* CB3C4 800BC414 24010002 */  addiu      $at, $zero, 0x2
    /* CB3C8 800BC418 310DFC3F */  andi       $t5, $t0, 0xFC3F
    /* CB3CC 800BC41C 1581006B */  bne        $t4, $at, .L800BC5CC_CB57C
    /* CB3D0 800BC420 35AE0380 */   ori       $t6, $t5, 0x380
    /* CB3D4 800BC424 A52E0000 */  sh         $t6, 0x0($t1)
    /* CB3D8 800BC428 A7A5003E */  sh         $a1, 0x3E($sp)
    /* CB3DC 800BC42C 0C02E134 */  jal        func_800B84D0_C7480
    /* CB3E0 800BC430 87A4003A */   lh        $a0, 0x3A($sp)
    /* CB3E4 800BC434 00022A03 */  sra        $a1, $v0, 8
    /* CB3E8 800BC438 24A5000A */  addiu      $a1, $a1, 0xA
    /* CB3EC 800BC43C 00057C00 */  sll        $t7, $a1, 16
    /* CB3F0 800BC440 000F2C03 */  sra        $a1, $t7, 16
    /* CB3F4 800BC444 87A4003A */  lh         $a0, 0x3A($sp)
    /* CB3F8 800BC448 87A6003E */  lh         $a2, 0x3E($sp)
    /* CB3FC 800BC44C 24070078 */  addiu      $a3, $zero, 0x78
    /* CB400 800BC450 AFA00010 */  sw         $zero, 0x10($sp)
    /* CB404 800BC454 0C037E72 */  jal        func_800DF9C8_EE978
    /* CB408 800BC458 AFA00014 */   sw        $zero, 0x14($sp)
    /* CB40C 800BC45C 3C038005 */  lui        $v1, %hi(D_80052B34)
    /* CB410 800BC460 8C632B34 */  lw         $v1, %lo(D_80052B34)($v1)
    /* CB414 800BC464 24010007 */  addiu      $at, $zero, 0x7
    /* CB418 800BC468 9079001A */  lbu        $t9, 0x1A($v1)
    /* CB41C 800BC46C 17210008 */  bne        $t9, $at, .L800BC490_CB440
    /* CB420 800BC470 00000000 */   nop
    /* CB424 800BC474 C4640058 */  lwc1       $f4, 0x58($v1)
    /* CB428 800BC478 44803000 */  mtc1       $zero, $f6
    /* CB42C 800BC47C 00000000 */  nop
    /* CB430 800BC480 4606203C */  c.lt.s     $f4, $f6
    /* CB434 800BC484 00000000 */  nop
    /* CB438 800BC488 4501001F */  bc1t       .L800BC508_CB4B8
    /* CB43C 800BC48C 00000000 */   nop
  .L800BC490_CB440:
    /* CB440 800BC490 0C000E38 */  jal        func_800038E0_44E0
    /* CB444 800BC494 00000000 */   nop
    /* CB448 800BC498 0C000E38 */  jal        func_800038E0_44E0
    /* CB44C 800BC49C A7A20020 */   sh        $v0, 0x20($sp)
    /* CB450 800BC4A0 97AA0020 */  lhu        $t2, 0x20($sp)
    /* CB454 800BC4A4 24030010 */  addiu      $v1, $zero, 0x10
    /* CB458 800BC4A8 304E00FF */  andi       $t6, $v0, 0xFF
    /* CB45C 800BC4AC 314B00FF */  andi       $t3, $t2, 0xFF
    /* CB460 800BC4B0 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* CB464 800BC4B4 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* CB468 800BC4B8 05610003 */  bgez       $t3, .L800BC4C8_CB478
    /* CB46C 800BC4BC 000B60C3 */   sra       $t4, $t3, 3
    /* CB470 800BC4C0 25610007 */  addiu      $at, $t3, 0x7
    /* CB474 800BC4C4 000160C3 */  sra        $t4, $at, 3
  .L800BC4C8_CB478:
    /* CB478 800BC4C8 006C6823 */  subu       $t5, $v1, $t4
    /* CB47C 800BC4CC 448D4000 */  mtc1       $t5, $f8
    /* CB480 800BC4D0 3C064220 */  lui        $a2, (0x42200000 >> 16)
    /* CB484 800BC4D4 46804220 */  cvt.s.w    $f8, $f8
    /* CB488 800BC4D8 44054000 */  mfc1       $a1, $f8
    /* CB48C 800BC4DC 05C10003 */  bgez       $t6, .L800BC4EC_CB49C
    /* CB490 800BC4E0 000E78C3 */   sra       $t7, $t6, 3
    /* CB494 800BC4E4 25C10007 */  addiu      $at, $t6, 0x7
    /* CB498 800BC4E8 000178C3 */  sra        $t7, $at, 3
  .L800BC4EC_CB49C:
    /* CB49C 800BC4EC 006FC023 */  subu       $t8, $v1, $t7
    /* CB4A0 800BC4F0 44985000 */  mtc1       $t8, $f10
    /* CB4A4 800BC4F4 00000000 */  nop
    /* CB4A8 800BC4F8 468052A0 */  cvt.s.w    $f10, $f10
    /* CB4AC 800BC4FC 44075000 */  mfc1       $a3, $f10
    /* CB4B0 800BC500 0C040B40 */  jal        func_80102D00_111CB0
    /* CB4B4 800BC504 00000000 */   nop
  .L800BC508_CB4B8:
    /* CB4B8 800BC508 3C028016 */  lui        $v0, %hi(D_80159320)
    /* CB4BC 800BC50C 24429320 */  addiu      $v0, $v0, %lo(D_80159320)
    /* CB4C0 800BC510 8C590000 */  lw         $t9, 0x0($v0)
    /* CB4C4 800BC514 372A0800 */  ori        $t2, $t9, 0x800
    /* CB4C8 800BC518 0C000E38 */  jal        func_800038E0_44E0
    /* CB4CC 800BC51C AC4A0000 */   sw        $t2, 0x0($v0)
    /* CB4D0 800BC520 3C0E8005 */  lui        $t6, %hi(D_80052B34)
    /* CB4D4 800BC524 8DCE2B34 */  lw         $t6, %lo(D_80052B34)($t6)
    /* CB4D8 800BC528 304B0FFF */  andi       $t3, $v0, 0xFFF
    /* CB4DC 800BC52C 240C07FF */  addiu      $t4, $zero, 0x7FF
    /* CB4E0 800BC530 018B6823 */  subu       $t5, $t4, $t3
    /* CB4E4 800BC534 0C000E38 */  jal        func_800038E0_44E0
    /* CB4E8 800BC538 A5CD0026 */   sh        $t5, 0x26($t6)
    /* CB4EC 800BC53C 3C0A8005 */  lui        $t2, %hi(D_80052B34)
    /* CB4F0 800BC540 8D4A2B34 */  lw         $t2, %lo(D_80052B34)($t2)
    /* CB4F4 800BC544 304F0FFF */  andi       $t7, $v0, 0xFFF
    /* CB4F8 800BC548 241807FF */  addiu      $t8, $zero, 0x7FF
    /* CB4FC 800BC54C 030FC823 */  subu       $t9, $t8, $t7
    /* CB500 800BC550 0C000E38 */  jal        func_800038E0_44E0
    /* CB504 800BC554 A5590022 */   sh        $t9, 0x22($t2)
    /* CB508 800BC558 3C0E8005 */  lui        $t6, %hi(D_80052B34)
    /* CB50C 800BC55C 8DCE2B34 */  lw         $t6, %lo(D_80052B34)($t6)
    /* CB510 800BC560 304C0FFF */  andi       $t4, $v0, 0xFFF
    /* CB514 800BC564 240B07FF */  addiu      $t3, $zero, 0x7FF
    /* CB518 800BC568 016C6823 */  subu       $t5, $t3, $t4
    /* CB51C 800BC56C 3C188005 */  lui        $t8, %hi(D_80052B34)
    /* CB520 800BC570 A5CD0024 */  sh         $t5, 0x24($t6)
    /* CB524 800BC574 8F182B34 */  lw         $t8, %lo(D_80052B34)($t8)
    /* CB528 800BC578 87A4003A */  lh         $a0, 0x3A($sp)
    /* CB52C 800BC57C 930F001A */  lbu        $t7, 0x1A($t8)
    /* CB530 800BC580 55E00013 */  bnel       $t7, $zero, .L800BC5D0_CB580
    /* CB534 800BC584 8FBF001C */   lw        $ra, 0x1C($sp)
    /* CB538 800BC588 0C02E134 */  jal        func_800B84D0_C7480
    /* CB53C 800BC58C 87A5003E */   lh        $a1, 0x3E($sp)
    /* CB540 800BC590 00022A03 */  sra        $a1, $v0, 8
    /* CB544 800BC594 24A5000A */  addiu      $a1, $a1, 0xA
    /* CB548 800BC598 0005CC00 */  sll        $t9, $a1, 16
    /* CB54C 800BC59C 240B0064 */  addiu      $t3, $zero, 0x64
    /* CB550 800BC5A0 AFAB0010 */  sw         $t3, 0x10($sp)
    /* CB554 800BC5A4 00192C03 */  sra        $a1, $t9, 16
    /* CB558 800BC5A8 87A4003A */  lh         $a0, 0x3A($sp)
    /* CB55C 800BC5AC 87A6003E */  lh         $a2, 0x3E($sp)
    /* CB560 800BC5B0 24070064 */  addiu      $a3, $zero, 0x64
    /* CB564 800BC5B4 0C04905C */  jal        func_80124170_133120
    /* CB568 800BC5B8 AFA00014 */   sw        $zero, 0x14($sp)
    /* CB56C 800BC5BC 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* CB570 800BC5C0 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* CB574 800BC5C4 0C049046 */  jal        func_80124118_1330C8
    /* CB578 800BC5C8 24050096 */   addiu     $a1, $zero, 0x96
  .L800BC5CC_CB57C:
    /* CB57C 800BC5CC 8FBF001C */  lw         $ra, 0x1C($sp)
  .L800BC5D0_CB580:
    /* CB580 800BC5D0 27BD0038 */  addiu      $sp, $sp, 0x38
    /* CB584 800BC5D4 03E00008 */  jr         $ra
    /* CB588 800BC5D8 00000000 */   nop
endlabel func_800BC2F8_CB2A8
