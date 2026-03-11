nonmatching func_802D83D0_257B10, 0x308

glabel func_802D83D0_257B10
    /* 257B10 802D83D0 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* 257B14 802D83D4 AFB10028 */  sw         $s1, 0x28($sp)
    /* 257B18 802D83D8 309100FF */  andi       $s1, $a0, 0xFF
    /* 257B1C 802D83DC 00117080 */  sll        $t6, $s1, 2
    /* 257B20 802D83E0 01D17021 */  addu       $t6, $t6, $s1
    /* 257B24 802D83E4 3C0F8005 */  lui        $t7, %hi(alienInstances)
    /* 257B28 802D83E8 AFB00024 */  sw         $s0, 0x24($sp)
    /* 257B2C 802D83EC 25EF8198 */  addiu      $t7, $t7, %lo(alienInstances)
    /* 257B30 802D83F0 000E7100 */  sll        $t6, $t6, 4
    /* 257B34 802D83F4 01CF8021 */  addu       $s0, $t6, $t7
    /* 257B38 802D83F8 8618000C */  lh         $t8, 0xC($s0)
    /* 257B3C 802D83FC 3C078015 */  lui        $a3, %hi(D_8014DD50)
    /* 257B40 802D8400 24E7DD50 */  addiu      $a3, $a3, %lo(D_8014DD50)
    /* 257B44 802D8404 0018C900 */  sll        $t9, $t8, 4
    /* 257B48 802D8408 00F95821 */  addu       $t3, $a3, $t9
    /* 257B4C 802D840C 8168000C */  lb         $t0, 0xC($t3)
    /* 257B50 802D8410 AFBF002C */  sw         $ra, 0x2C($sp)
    /* 257B54 802D8414 AFA40060 */  sw         $a0, 0x60($sp)
    /* 257B58 802D8418 00086100 */  sll        $t4, $t0, 4
    /* 257B5C 802D841C 00EC6821 */  addu       $t5, $a3, $t4
    /* 257B60 802D8420 81A9000D */  lb         $t1, 0xD($t5)
    /* 257B64 802D8424 AFA0004C */  sw         $zero, 0x4C($sp)
    /* 257B68 802D8428 322400FF */  andi       $a0, $s1, 0xFF
    /* 257B6C 802D842C 00097100 */  sll        $t6, $t1, 4
    /* 257B70 802D8430 00EE1021 */  addu       $v0, $a3, $t6
    /* 257B74 802D8434 804A000D */  lb         $t2, 0xD($v0)
    /* 257B78 802D8438 804F000C */  lb         $t7, 0xC($v0)
    /* 257B7C 802D843C 240501F4 */  addiu      $a1, $zero, 0x1F4
    /* 257B80 802D8440 000AC100 */  sll        $t8, $t2, 4
    /* 257B84 802D8444 00F81821 */  addu       $v1, $a3, $t8
    /* 257B88 802D8448 8079000C */  lb         $t9, 0xC($v1)
    /* 257B8C 802D844C 806B000D */  lb         $t3, 0xD($v1)
    /* 257B90 802D8450 24060320 */  addiu      $a2, $zero, 0x320
    /* 257B94 802D8454 A7A8005E */  sh         $t0, 0x5E($sp)
    /* 257B98 802D8458 A7A9005A */  sh         $t1, 0x5A($sp)
    /* 257B9C 802D845C A7AA0056 */  sh         $t2, 0x56($sp)
    /* 257BA0 802D8460 A7AF0058 */  sh         $t7, 0x58($sp)
    /* 257BA4 802D8464 A7B90054 */  sh         $t9, 0x54($sp)
    /* 257BA8 802D8468 0C021DFA */  jal        func_800877E8_96798
    /* 257BAC 802D846C A7AB005C */   sh        $t3, 0x5C($sp)
    /* 257BB0 802D8470 8E030020 */  lw         $v1, 0x20($s0)
    /* 257BB4 802D8474 306C9000 */  andi       $t4, $v1, 0x9000
    /* 257BB8 802D8478 15800009 */  bnez       $t4, .L802D84A0_257BE0
    /* 257BBC 802D847C 322400FF */   andi      $a0, $s1, 0xFF
    /* 257BC0 802D8480 87A5005A */  lh         $a1, 0x5A($sp)
    /* 257BC4 802D8484 0C02429B */  jal        func_80090A6C_9FA1C
    /* 257BC8 802D8488 240607D0 */   addiu     $a2, $zero, 0x7D0
    /* 257BCC 802D848C 322400FF */  andi       $a0, $s1, 0xFF
    /* 257BD0 802D8490 87A50056 */  lh         $a1, 0x56($sp)
    /* 257BD4 802D8494 0C02429B */  jal        func_80090A6C_9FA1C
    /* 257BD8 802D8498 240607D0 */   addiu     $a2, $zero, 0x7D0
    /* 257BDC 802D849C 8E030020 */  lw         $v1, 0x20($s0)
  .L802D84A0_257BE0:
    /* 257BE0 802D84A0 306D2000 */  andi       $t5, $v1, 0x2000
    /* 257BE4 802D84A4 15A00004 */  bnez       $t5, .L802D84B8_257BF8
    /* 257BE8 802D84A8 322400FF */   andi      $a0, $s1, 0xFF
    /* 257BEC 802D84AC 87A5005C */  lh         $a1, 0x5C($sp)
    /* 257BF0 802D84B0 0C02429B */  jal        func_80090A6C_9FA1C
    /* 257BF4 802D84B4 240607D0 */   addiu     $a2, $zero, 0x7D0
  .L802D84B8_257BF8:
    /* 257BF8 802D84B8 860E0012 */  lh         $t6, 0x12($s0)
    /* 257BFC 802D84BC 322400FF */  andi       $a0, $s1, 0xFF
    /* 257C00 802D84C0 87A5005E */  lh         $a1, 0x5E($sp)
    /* 257C04 802D84C4 19C00007 */  blez       $t6, .L802D84E4_257C24
    /* 257C08 802D84C8 00000000 */   nop
    /* 257C0C 802D84CC 322400FF */  andi       $a0, $s1, 0xFF
    /* 257C10 802D84D0 87A5005E */  lh         $a1, 0x5E($sp)
    /* 257C14 802D84D4 0C02429B */  jal        func_80090A6C_9FA1C
    /* 257C18 802D84D8 240607D0 */   addiu     $a2, $zero, 0x7D0
    /* 257C1C 802D84DC 10000003 */  b          .L802D84EC_257C2C
    /* 257C20 802D84E0 00000000 */   nop
  .L802D84E4_257C24:
    /* 257C24 802D84E4 0C02188C */  jal        func_80086230_951E0
    /* 257C28 802D84E8 24062000 */   addiu     $a2, $zero, 0x2000
  .L802D84EC_257C2C:
    /* 257C2C 802D84EC 0C000E38 */  jal        func_800038E0_44E0
    /* 257C30 802D84F0 00000000 */   nop
    /* 257C34 802D84F4 24010078 */  addiu      $at, $zero, 0x78
    /* 257C38 802D84F8 0041001A */  div        $zero, $v0, $at
    /* 257C3C 802D84FC 00007810 */  mfhi       $t7
    /* 257C40 802D8500 02202025 */  or         $a0, $s1, $zero
    /* 257C44 802D8504 55E00004 */  bnel       $t7, $zero, .L802D8518_257C58
    /* 257C48 802D8508 8E180020 */   lw        $t8, 0x20($s0)
    /* 257C4C 802D850C 0C04DD1A */  jal        func_80137468_146418
    /* 257C50 802D8510 24050010 */   addiu     $a1, $zero, 0x10
    /* 257C54 802D8514 8E180020 */  lw         $t8, 0x20($s0)
  .L802D8518_257C58:
    /* 257C58 802D8518 3319B000 */  andi       $t9, $t8, 0xB000
    /* 257C5C 802D851C 57200036 */  bnel       $t9, $zero, .L802D85F8_257D38
    /* 257C60 802D8520 87AE0058 */   lh        $t6, 0x58($sp)
    /* 257C64 802D8524 860B001E */  lh         $t3, 0x1E($s0)
    /* 257C68 802D8528 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 257C6C 802D852C 02002825 */  or         $a1, $s0, $zero
    /* 257C70 802D8530 55600031 */  bnel       $t3, $zero, .L802D85F8_257D38
    /* 257C74 802D8534 87AE0058 */   lh        $t6, 0x58($sp)
    /* 257C78 802D8538 0C021395 */  jal        func_80084E54_93E04
    /* 257C7C 802D853C 8C842B34 */   lw        $a0, %lo(D_80052B34)($a0)
    /* 257C80 802D8540 284102EE */  slti       $at, $v0, 0x2EE
    /* 257C84 802D8544 10200006 */  beqz       $at, .L802D8560_257CA0
    /* 257C88 802D8548 AFA2004C */   sw        $v0, 0x4C($sp)
    /* 257C8C 802D854C 8E0C0020 */  lw         $t4, 0x20($s0)
    /* 257C90 802D8550 A2000036 */  sb         $zero, 0x36($s0)
    /* 257C94 802D8554 358D1000 */  ori        $t5, $t4, 0x1000
    /* 257C98 802D8558 10000026 */  b          .L802D85F4_257D34
    /* 257C9C 802D855C AE0D0020 */   sw        $t5, 0x20($s0)
  .L802D8560_257CA0:
    /* 257CA0 802D8560 322400FF */  andi       $a0, $s1, 0xFF
    /* 257CA4 802D8564 0C0213FA */  jal        func_80084FE8_93F98
    /* 257CA8 802D8568 24050400 */   addiu     $a1, $zero, 0x400
    /* 257CAC 802D856C 5040000F */  beql       $v0, $zero, .L802D85AC_257CEC
    /* 257CB0 802D8570 322400FF */   andi      $a0, $s1, 0xFF
    /* 257CB4 802D8574 820E004E */  lb         $t6, 0x4E($s0)
    /* 257CB8 802D8578 51C0000C */  beql       $t6, $zero, .L802D85AC_257CEC
    /* 257CBC 802D857C 322400FF */   andi      $a0, $s1, 0xFF
    /* 257CC0 802D8580 0C000E38 */  jal        func_800038E0_44E0
    /* 257CC4 802D8584 00000000 */   nop
    /* 257CC8 802D8588 28412EE0 */  slti       $at, $v0, 0x2EE0
    /* 257CCC 802D858C 50200007 */  beql       $at, $zero, .L802D85AC_257CEC
    /* 257CD0 802D8590 322400FF */   andi      $a0, $s1, 0xFF
    /* 257CD4 802D8594 8E0F0020 */  lw         $t7, 0x20($s0)
    /* 257CD8 802D8598 A2000036 */  sb         $zero, 0x36($s0)
    /* 257CDC 802D859C 35F82000 */  ori        $t8, $t7, 0x2000
    /* 257CE0 802D85A0 10000014 */  b          .L802D85F4_257D34
    /* 257CE4 802D85A4 AE180020 */   sw        $t8, 0x20($s0)
    /* 257CE8 802D85A8 322400FF */  andi       $a0, $s1, 0xFF
  .L802D85AC_257CEC:
    /* 257CEC 802D85AC 0C0213FA */  jal        func_80084FE8_93F98
    /* 257CF0 802D85B0 24051000 */   addiu     $a1, $zero, 0x1000
    /* 257CF4 802D85B4 50400010 */  beql       $v0, $zero, .L802D85F8_257D38
    /* 257CF8 802D85B8 87AE0058 */   lh        $t6, 0x58($sp)
    /* 257CFC 802D85BC 8219004E */  lb         $t9, 0x4E($s0)
    /* 257D00 802D85C0 322400FF */  andi       $a0, $s1, 0xFF
    /* 257D04 802D85C4 00002825 */  or         $a1, $zero, $zero
    /* 257D08 802D85C8 5320000B */  beql       $t9, $zero, .L802D85F8_257D38
    /* 257D0C 802D85CC 87AE0058 */   lh        $t6, 0x58($sp)
    /* 257D10 802D85D0 0C021C62 */  jal        func_80087188_96138
    /* 257D14 802D85D4 24060020 */   addiu     $a2, $zero, 0x20
    /* 257D18 802D85D8 10400006 */  beqz       $v0, .L802D85F4_257D34
    /* 257D1C 802D85DC 240B0014 */   addiu     $t3, $zero, 0x14
    /* 257D20 802D85E0 8E0C0020 */  lw         $t4, 0x20($s0)
    /* 257D24 802D85E4 A60B001E */  sh         $t3, 0x1E($s0)
    /* 257D28 802D85E8 A200004B */  sb         $zero, 0x4B($s0)
    /* 257D2C 802D85EC 358D8000 */  ori        $t5, $t4, 0x8000
    /* 257D30 802D85F0 AE0D0020 */  sw         $t5, 0x20($s0)
  .L802D85F4_257D34:
    /* 257D34 802D85F4 87AE0058 */  lh         $t6, 0x58($sp)
  .L802D85F8_257D38:
    /* 257D38 802D85F8 87AF0056 */  lh         $t7, 0x56($sp)
    /* 257D3C 802D85FC 87B80054 */  lh         $t8, 0x54($sp)
    /* 257D40 802D8600 322400FF */  andi       $a0, $s1, 0xFF
    /* 257D44 802D8604 8FA5004C */  lw         $a1, 0x4C($sp)
    /* 257D48 802D8608 87A6005E */  lh         $a2, 0x5E($sp)
    /* 257D4C 802D860C 87A7005A */  lh         $a3, 0x5A($sp)
    /* 257D50 802D8610 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 257D54 802D8614 AFAF0014 */  sw         $t7, 0x14($sp)
    /* 257D58 802D8618 0C0B5F42 */  jal        func_802D7D08_257448
    /* 257D5C 802D861C AFB80018 */   sw        $t8, 0x18($sp)
    /* 257D60 802D8620 322400FF */  andi       $a0, $s1, 0xFF
    /* 257D64 802D8624 0C0B5E10 */  jal        func_802D7840_256F80
    /* 257D68 802D8628 87A5005C */   lh        $a1, 0x5C($sp)
    /* 257D6C 802D862C 10400016 */  beqz       $v0, .L802D8688_257DC8
    /* 257D70 802D8630 02002025 */   or        $a0, $s0, $zero
    /* 257D74 802D8634 27B90040 */  addiu      $t9, $sp, 0x40
    /* 257D78 802D8638 AFB90010 */  sw         $t9, 0x10($sp)
    /* 257D7C 802D863C 24050001 */  addiu      $a1, $zero, 0x1
    /* 257D80 802D8640 27A60048 */  addiu      $a2, $sp, 0x48
    /* 257D84 802D8644 27A70044 */  addiu      $a3, $sp, 0x44
    /* 257D88 802D8648 0C04A141 */  jal        func_80128504_1374B4
    /* 257D8C 802D864C AFB10034 */   sw        $s1, 0x34($sp)
    /* 257D90 802D8650 240B00FF */  addiu      $t3, $zero, 0xFF
    /* 257D94 802D8654 240C00FF */  addiu      $t4, $zero, 0xFF
    /* 257D98 802D8658 240D00FF */  addiu      $t5, $zero, 0xFF
    /* 257D9C 802D865C AFAD0018 */  sw         $t5, 0x18($sp)
    /* 257DA0 802D8660 AFAC0014 */  sw         $t4, 0x14($sp)
    /* 257DA4 802D8664 AFAB0010 */  sw         $t3, 0x10($sp)
    /* 257DA8 802D8668 87A4004A */  lh         $a0, 0x4A($sp)
    /* 257DAC 802D866C 87A50046 */  lh         $a1, 0x46($sp)
    /* 257DB0 802D8670 87A60042 */  lh         $a2, 0x42($sp)
    /* 257DB4 802D8674 0C03416A */  jal        func_800D05A8_DF558
    /* 257DB8 802D8678 24070258 */   addiu     $a3, $zero, 0x258
    /* 257DBC 802D867C 8FA40034 */  lw         $a0, 0x34($sp)
    /* 257DC0 802D8680 0C04DD1A */  jal        func_80137468_146418
    /* 257DC4 802D8684 2405025C */   addiu     $a1, $zero, 0x25C
  .L802D8688_257DC8:
    /* 257DC8 802D8688 8E0E0020 */  lw         $t6, 0x20($s0)
    /* 257DCC 802D868C 322400FF */  andi       $a0, $s1, 0xFF
    /* 257DD0 802D8690 24060002 */  addiu      $a2, $zero, 0x2
    /* 257DD4 802D8694 000E7940 */  sll        $t7, $t6, 5
    /* 257DD8 802D8698 05E10003 */  bgez       $t7, .L802D86A8_257DE8
    /* 257DDC 802D869C 3C07802E */   lui       $a3, %hi(D_802DFB38)
    /* 257DE0 802D86A0 10000002 */  b          .L802D86AC_257DEC
    /* 257DE4 802D86A4 87A50058 */   lh        $a1, 0x58($sp)
  .L802D86A8_257DE8:
    /* 257DE8 802D86A8 87A50054 */  lh         $a1, 0x54($sp)
  .L802D86AC_257DEC:
    /* 257DEC 802D86AC 0C028F40 */  jal        func_800A3D00_B2CB0
    /* 257DF0 802D86B0 24E7FB38 */   addiu     $a3, $a3, %lo(D_802DFB38)
    /* 257DF4 802D86B4 8602001E */  lh         $v0, 0x1E($s0)
    /* 257DF8 802D86B8 10400002 */  beqz       $v0, .L802D86C4_257E04
    /* 257DFC 802D86BC 2458FFFF */   addiu     $t8, $v0, -0x1
    /* 257E00 802D86C0 A618001E */  sh         $t8, 0x1E($s0)
  .L802D86C4_257E04:
    /* 257E04 802D86C4 8FBF002C */  lw         $ra, 0x2C($sp)
    /* 257E08 802D86C8 8FB00024 */  lw         $s0, 0x24($sp)
    /* 257E0C 802D86CC 8FB10028 */  lw         $s1, 0x28($sp)
    /* 257E10 802D86D0 03E00008 */  jr         $ra
    /* 257E14 802D86D4 27BD0060 */   addiu     $sp, $sp, 0x60
endlabel func_802D83D0_257B10
