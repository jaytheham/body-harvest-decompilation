nonmatching func_802D9FE4_2BC414, 0x4E8

glabel func_802D9FE4_2BC414
    /* 2BC414 802D9FE4 308600FF */  andi       $a2, $a0, 0xFF
    /* 2BC418 802D9FE8 00067080 */  sll        $t6, $a2, 2
    /* 2BC41C 802D9FEC 27BDFF90 */  addiu      $sp, $sp, -0x70
    /* 2BC420 802D9FF0 01C67021 */  addu       $t6, $t6, $a2
    /* 2BC424 802D9FF4 3C0F8005 */  lui        $t7, %hi(alienInstances)
    /* 2BC428 802D9FF8 AFB00028 */  sw         $s0, 0x28($sp)
    /* 2BC42C 802D9FFC 25EF8198 */  addiu      $t7, $t7, %lo(alienInstances)
    /* 2BC430 802DA000 000E7100 */  sll        $t6, $t6, 4
    /* 2BC434 802DA004 01CF8021 */  addu       $s0, $t6, $t7
    /* 2BC438 802DA008 8E180020 */  lw         $t8, 0x20($s0)
    /* 2BC43C 802DA00C AFA40070 */  sw         $a0, 0x70($sp)
    /* 2BC440 802DA010 AFBF002C */  sw         $ra, 0x2C($sp)
    /* 2BC444 802DA014 33190600 */  andi       $t9, $t8, 0x600
    /* 2BC448 802DA018 13200127 */  beqz       $t9, .L802DA4B8_2BC8E8
    /* 2BC44C 802DA01C 00C02025 */   or        $a0, $a2, $zero
    /* 2BC450 802DA020 24050193 */  addiu      $a1, $zero, 0x193
    /* 2BC454 802DA024 AFA6003C */  sw         $a2, 0x3C($sp)
    /* 2BC458 802DA028 0C04DD1A */  jal        func_80137468_146418
    /* 2BC45C 802DA02C A3A60073 */   sb        $a2, 0x73($sp)
    /* 2BC460 802DA030 860A000C */  lh         $t2, 0xC($s0)
    /* 2BC464 802DA034 3C078015 */  lui        $a3, %hi(D_8014DD50)
    /* 2BC468 802DA038 24E7DD50 */  addiu      $a3, $a3, %lo(D_8014DD50)
    /* 2BC46C 802DA03C 000A5900 */  sll        $t3, $t2, 4
    /* 2BC470 802DA040 00EB6021 */  addu       $t4, $a3, $t3
    /* 2BC474 802DA044 8182000C */  lb         $v0, 0xC($t4)
    /* 2BC478 802DA048 9209001A */  lbu        $t1, 0x1A($s0)
    /* 2BC47C 802DA04C 86040000 */  lh         $a0, 0x0($s0)
    /* 2BC480 802DA050 00026900 */  sll        $t5, $v0, 4
    /* 2BC484 802DA054 00ED7021 */  addu       $t6, $a3, $t5
    /* 2BC488 802DA058 81C3000D */  lb         $v1, 0xD($t6)
    /* 2BC48C 802DA05C 86050004 */  lh         $a1, 0x4($s0)
    /* 2BC490 802DA060 AFA9005C */  sw         $t1, 0x5C($sp)
    /* 2BC494 802DA064 00037900 */  sll        $t7, $v1, 4
    /* 2BC498 802DA068 00EF3021 */  addu       $a2, $a3, $t7
    /* 2BC49C 802DA06C 80D8000C */  lb         $t8, 0xC($a2)
    /* 2BC4A0 802DA070 AFA60038 */  sw         $a2, 0x38($sp)
    /* 2BC4A4 802DA074 0C02E134 */  jal        func_800B84D0_C7480
    /* 2BC4A8 802DA078 A7B8006A */   sh        $t8, 0x6A($sp)
    /* 2BC4AC 802DA07C 3C048022 */  lui        $a0, %hi(D_80222A70)
    /* 2BC4B0 802DA080 8C842A70 */  lw         $a0, %lo(D_80222A70)($a0)
    /* 2BC4B4 802DA084 00022A03 */  sra        $a1, $v0, 8
    /* 2BC4B8 802DA088 0085082A */  slt        $at, $a0, $a1
    /* 2BC4BC 802DA08C 14200002 */  bnez       $at, .L802DA098_2BC4C8
    /* 2BC4C0 802DA090 00000000 */   nop
    /* 2BC4C4 802DA094 00802825 */  or         $a1, $a0, $zero
  .L802DA098_2BC4C8:
    /* 2BC4C8 802DA098 3C048005 */  lui        $a0, %hi(D_80052A8C)
    /* 2BC4CC 802DA09C 8C842A8C */  lw         $a0, %lo(D_80052A8C)($a0)
    /* 2BC4D0 802DA0A0 AFA50044 */  sw         $a1, 0x44($sp)
    /* 2BC4D4 802DA0A4 0004C880 */  sll        $t9, $a0, 2
    /* 2BC4D8 802DA0A8 0324C823 */  subu       $t9, $t9, $a0
    /* 2BC4DC 802DA0AC 0019C900 */  sll        $t9, $t9, 4
    /* 2BC4E0 802DA0B0 0324C823 */  subu       $t9, $t9, $a0
    /* 2BC4E4 802DA0B4 0019C8C0 */  sll        $t9, $t9, 3
    /* 2BC4E8 802DA0B8 0324C823 */  subu       $t9, $t9, $a0
    /* 2BC4EC 802DA0BC 0019C880 */  sll        $t9, $t9, 2
    /* 2BC4F0 802DA0C0 0C007660 */  jal        sins
    /* 2BC4F4 802DA0C4 3324FFFF */   andi      $a0, $t9, 0xFFFF
    /* 2BC4F8 802DA0C8 44822000 */  mtc1       $v0, $f4
    /* 2BC4FC 802DA0CC 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2BC500 802DA0D0 44815800 */  mtc1       $at, $f11
    /* 2BC504 802DA0D4 468021A0 */  cvt.s.w    $f6, $f4
    /* 2BC508 802DA0D8 44805000 */  mtc1       $zero, $f10
    /* 2BC50C 802DA0DC 8FAA005C */  lw         $t2, 0x5C($sp)
    /* 2BC510 802DA0E0 3C0C8025 */  lui        $t4, %hi(alienSpecs)
    /* 2BC514 802DA0E4 258C6680 */  addiu      $t4, $t4, %lo(alienSpecs)
    /* 2BC518 802DA0E8 000A5880 */  sll        $t3, $t2, 2
    /* 2BC51C 802DA0EC 46003221 */  cvt.d.s    $f8, $f6
    /* 2BC520 802DA0F0 016A5823 */  subu       $t3, $t3, $t2
    /* 2BC524 802DA0F4 462A4403 */  div.d      $f16, $f8, $f10
    /* 2BC528 802DA0F8 000B5880 */  sll        $t3, $t3, 2
    /* 2BC52C 802DA0FC 016A5821 */  addu       $t3, $t3, $t2
    /* 2BC530 802DA100 000B58C0 */  sll        $t3, $t3, 3
    /* 2BC534 802DA104 016C6821 */  addu       $t5, $t3, $t4
    /* 2BC538 802DA108 AFAD0034 */  sw         $t5, 0x34($sp)
    /* 2BC53C 802DA10C 85AE0058 */  lh         $t6, 0x58($t5)
    /* 2BC540 802DA110 8FA50044 */  lw         $a1, 0x44($sp)
    /* 2BC544 802DA114 3C014034 */  lui        $at, (0x40340000 >> 16)
    /* 2BC548 802DA118 44819800 */  mtc1       $at, $f19
    /* 2BC54C 802DA11C 44809000 */  mtc1       $zero, $f18
    /* 2BC550 802DA120 00AE7821 */  addu       $t7, $a1, $t6
    /* 2BC554 802DA124 448F3000 */  mtc1       $t7, $f6
    /* 2BC558 802DA128 8E090020 */  lw         $t1, 0x20($s0)
    /* 2BC55C 802DA12C 240B0064 */  addiu      $t3, $zero, 0x64
    /* 2BC560 802DA130 46803221 */  cvt.d.w    $f8, $f6
    /* 2BC564 802DA134 000952C0 */  sll        $t2, $t1, 11
    /* 2BC568 802DA138 46328102 */  mul.d      $f4, $f16, $f18
    /* 2BC56C 802DA13C 46282280 */  add.d      $f10, $f4, $f8
    /* 2BC570 802DA140 4620540D */  trunc.w.d  $f16, $f10
    /* 2BC574 802DA144 44198000 */  mfc1       $t9, $f16
    /* 2BC578 802DA148 05400011 */  bltz       $t2, .L802DA190_2BC5C0
    /* 2BC57C 802DA14C A6190002 */   sh        $t9, 0x2($s0)
    /* 2BC580 802DA150 A60B002C */  sh         $t3, 0x2C($s0)
    /* 2BC584 802DA154 0C021F14 */  jal        func_80087C50_96C00
    /* 2BC588 802DA158 93A40073 */   lbu       $a0, 0x73($sp)
    /* 2BC58C 802DA15C 8FAC0034 */  lw         $t4, 0x34($sp)
    /* 2BC590 802DA160 240D0006 */  addiu      $t5, $zero, 0x6
    /* 2BC594 802DA164 86040000 */  lh         $a0, 0x0($s0)
    /* 2BC598 802DA168 9587000C */  lhu        $a3, 0xC($t4)
    /* 2BC59C 802DA16C AFAD0010 */  sw         $t5, 0x10($sp)
    /* 2BC5A0 802DA170 86050002 */  lh         $a1, 0x2($s0)
    /* 2BC5A4 802DA174 0C037E12 */  jal        func_800DF848_EE7F8
    /* 2BC5A8 802DA178 86060004 */   lh        $a2, 0x4($s0)
    /* 2BC5AC 802DA17C 8FA4003C */  lw         $a0, 0x3C($sp)
    /* 2BC5B0 802DA180 0C04DD1A */  jal        func_80137468_146418
    /* 2BC5B4 802DA184 24050010 */   addiu     $a1, $zero, 0x10
    /* 2BC5B8 802DA188 100000CC */  b          .L802DA4BC_2BC8EC
    /* 2BC5BC 802DA18C 8FBF002C */   lw        $ra, 0x2C($sp)
  .L802DA190_2BC5C0:
    /* 2BC5C0 802DA190 0C021F1D */  jal        func_80087C74_96C24
    /* 2BC5C4 802DA194 93A40073 */   lbu       $a0, 0x73($sp)
    /* 2BC5C8 802DA198 93A40073 */  lbu        $a0, 0x73($sp)
    /* 2BC5CC 802DA19C 24050004 */  addiu      $a1, $zero, 0x4
    /* 2BC5D0 802DA1A0 0C022480 */  jal        func_80089200_981B0
    /* 2BC5D4 802DA1A4 24060064 */   addiu     $a2, $zero, 0x64
    /* 2BC5D8 802DA1A8 920E0047 */  lbu        $t6, 0x47($s0)
    /* 2BC5DC 802DA1AC 31CF0001 */  andi       $t7, $t6, 0x1
    /* 2BC5E0 802DA1B0 11E00005 */  beqz       $t7, .L802DA1C8_2BC5F8
    /* 2BC5E4 802DA1B4 00000000 */   nop
    /* 2BC5E8 802DA1B8 0C020193 */  jal        func_8008064C_8F5FC
    /* 2BC5EC 802DA1BC 93A40073 */   lbu       $a0, 0x73($sp)
    /* 2BC5F0 802DA1C0 10000004 */  b          .L802DA1D4_2BC604
    /* 2BC5F4 802DA1C4 8603002C */   lh        $v1, 0x2C($s0)
  .L802DA1C8_2BC5F8:
    /* 2BC5F8 802DA1C8 0C0201DB */  jal        func_8008076C_8F71C
    /* 2BC5FC 802DA1CC 93A40073 */   lbu       $a0, 0x73($sp)
    /* 2BC600 802DA1D0 8603002C */  lh         $v1, 0x2C($s0)
  .L802DA1D4_2BC604:
    /* 2BC604 802DA1D4 86180006 */  lh         $t8, 0x6($s0)
    /* 2BC608 802DA1D8 24010032 */  addiu      $at, $zero, 0x32
    /* 2BC60C 802DA1DC 0003C880 */  sll        $t9, $v1, 2
    /* 2BC610 802DA1E0 0323C821 */  addu       $t9, $t9, $v1
    /* 2BC614 802DA1E4 0019C880 */  sll        $t9, $t9, 2
    /* 2BC618 802DA1E8 0323C823 */  subu       $t9, $t9, $v1
    /* 2BC61C 802DA1EC 0019C880 */  sll        $t9, $t9, 2
    /* 2BC620 802DA1F0 0323C823 */  subu       $t9, $t9, $v1
    /* 2BC624 802DA1F4 0019C840 */  sll        $t9, $t9, 1
    /* 2BC628 802DA1F8 03194823 */  subu       $t1, $t8, $t9
    /* 2BC62C 802DA1FC 252A3A98 */  addiu      $t2, $t1, 0x3A98
    /* 2BC630 802DA200 14610051 */  bne        $v1, $at, .L802DA348_2BC778
    /* 2BC634 802DA204 A60A0006 */   sh        $t2, 0x6($s0)
    /* 2BC638 802DA208 86020006 */  lh         $v0, 0x6($s0)
    /* 2BC63C 802DA20C 3044FFFF */  andi       $a0, $v0, 0xFFFF
    /* 2BC640 802DA210 0C007660 */  jal        sins
    /* 2BC644 802DA214 AFA4003C */   sw        $a0, 0x3C($sp)
    /* 2BC648 802DA218 44829000 */  mtc1       $v0, $f18
    /* 2BC64C 802DA21C 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2BC650 802DA220 44814800 */  mtc1       $at, $f9
    /* 2BC654 802DA224 468091A0 */  cvt.s.w    $f6, $f18
    /* 2BC658 802DA228 44804000 */  mtc1       $zero, $f8
    /* 2BC65C 802DA22C 3C01402E */  lui        $at, (0x402E0000 >> 16)
    /* 2BC660 802DA230 44818800 */  mtc1       $at, $f17
    /* 2BC664 802DA234 44808000 */  mtc1       $zero, $f16
    /* 2BC668 802DA238 8FA4003C */  lw         $a0, 0x3C($sp)
    /* 2BC66C 802DA23C 46003121 */  cvt.d.s    $f4, $f6
    /* 2BC670 802DA240 46282283 */  div.d      $f10, $f4, $f8
    /* 2BC674 802DA244 46305482 */  mul.d      $f18, $f10, $f16
    /* 2BC678 802DA248 462091A0 */  cvt.s.d    $f6, $f18
    /* 2BC67C 802DA24C 0C007654 */  jal        coss
    /* 2BC680 802DA250 E7A6004C */   swc1      $f6, 0x4C($sp)
    /* 2BC684 802DA254 44825000 */  mtc1       $v0, $f10
    /* 2BC688 802DA258 C7A4004C */  lwc1       $f4, 0x4C($sp)
    /* 2BC68C 802DA25C 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2BC690 802DA260 46805420 */  cvt.s.w    $f16, $f10
    /* 2BC694 802DA264 44813800 */  mtc1       $at, $f7
    /* 2BC698 802DA268 44803000 */  mtc1       $zero, $f6
    /* 2BC69C 802DA26C 3C01C02E */  lui        $at, (0xC02E0000 >> 16)
    /* 2BC6A0 802DA270 87A5006A */  lh         $a1, 0x6A($sp)
    /* 2BC6A4 802DA274 4600220D */  trunc.w.s  $f8, $f4
    /* 2BC6A8 802DA278 44814800 */  mtc1       $at, $f9
    /* 2BC6AC 802DA27C 8FA80038 */  lw         $t0, 0x38($sp)
    /* 2BC6B0 802DA280 460084A1 */  cvt.d.s    $f18, $f16
    /* 2BC6B4 802DA284 44184000 */  mfc1       $t8, $f8
    /* 2BC6B8 802DA288 46269103 */  div.d      $f4, $f18, $f6
    /* 2BC6BC 802DA28C 44804000 */  mtc1       $zero, $f8
    /* 2BC6C0 802DA290 3C0C8015 */  lui        $t4, %hi(D_8014DD50)
    /* 2BC6C4 802DA294 258CDD50 */  addiu      $t4, $t4, %lo(D_8014DD50)
    /* 2BC6C8 802DA298 00055900 */  sll        $t3, $a1, 4
    /* 2BC6CC 802DA29C 016C1821 */  addu       $v1, $t3, $t4
    /* 2BC6D0 802DA2A0 846D0000 */  lh         $t5, 0x0($v1)
    /* 2BC6D4 802DA2A4 84790002 */  lh         $t9, 0x2($v1)
    /* 2BC6D8 802DA2A8 850E0000 */  lh         $t6, 0x0($t0)
    /* 2BC6DC 802DA2AC 85090002 */  lh         $t1, 0x2($t0)
    /* 2BC6E0 802DA2B0 846C0004 */  lh         $t4, 0x4($v1)
    /* 2BC6E4 802DA2B4 01AE3021 */  addu       $a2, $t5, $t6
    /* 2BC6E8 802DA2B8 03293821 */  addu       $a3, $t9, $t1
    /* 2BC6EC 802DA2BC 850D0004 */  lh         $t5, 0x4($t0)
    /* 2BC6F0 802DA2C0 00075400 */  sll        $t2, $a3, 16
    /* 2BC6F4 802DA2C4 000A3C03 */  sra        $a3, $t2, 16
    /* 2BC6F8 802DA2C8 2419000F */  addiu      $t9, $zero, 0xF
    /* 2BC6FC 802DA2CC 00067C00 */  sll        $t7, $a2, 16
    /* 2BC700 802DA2D0 018D7021 */  addu       $t6, $t4, $t5
    /* 2BC704 802DA2D4 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 2BC708 802DA2D8 000F3403 */  sra        $a2, $t7, 16
    /* 2BC70C 802DA2DC AFB90018 */  sw         $t9, 0x18($sp)
    /* 2BC710 802DA2E0 93A40073 */  lbu        $a0, 0x73($sp)
    /* 2BC714 802DA2E4 AFB80014 */  sw         $t8, 0x14($sp)
    /* 2BC718 802DA2E8 46282282 */  mul.d      $f10, $f4, $f8
    /* 2BC71C 802DA2EC 46205420 */  cvt.s.d    $f16, $f10
    /* 2BC720 802DA2F0 4600848D */  trunc.w.s  $f18, $f16
    /* 2BC724 802DA2F4 440A9000 */  mfc1       $t2, $f18
    /* 2BC728 802DA2F8 0C022390 */  jal        func_80088E40_97DF0
    /* 2BC72C 802DA2FC AFAA001C */   sw        $t2, 0x1C($sp)
    /* 2BC730 802DA300 8FAD0034 */  lw         $t5, 0x34($sp)
    /* 2BC734 802DA304 86050002 */  lh         $a1, 0x2($s0)
    /* 2BC738 802DA308 860E002C */  lh         $t6, 0x2C($s0)
    /* 2BC73C 802DA30C 95A7000C */  lhu        $a3, 0xC($t5)
    /* 2BC740 802DA310 24A50046 */  addiu      $a1, $a1, 0x46
    /* 2BC744 802DA314 00055C00 */  sll        $t3, $a1, 16
    /* 2BC748 802DA318 240F00F0 */  addiu      $t7, $zero, 0xF0
    /* 2BC74C 802DA31C 24180078 */  addiu      $t8, $zero, 0x78
    /* 2BC750 802DA320 AFB80018 */  sw         $t8, 0x18($sp)
    /* 2BC754 802DA324 AFAF0014 */  sw         $t7, 0x14($sp)
    /* 2BC758 802DA328 000B2C03 */  sra        $a1, $t3, 16
    /* 2BC75C 802DA32C AFA0001C */  sw         $zero, 0x1C($sp)
    /* 2BC760 802DA330 86040000 */  lh         $a0, 0x0($s0)
    /* 2BC764 802DA334 86060004 */  lh         $a2, 0x4($s0)
    /* 2BC768 802DA338 0C030EF6 */  jal        func_800C3BD8_D2B88
    /* 2BC76C 802DA33C AFAE0010 */   sw        $t6, 0x10($sp)
    /* 2BC770 802DA340 A6020038 */  sh         $v0, 0x38($s0)
    /* 2BC774 802DA344 8603002C */  lh         $v1, 0x2C($s0)
  .L802DA348_2BC778:
    /* 2BC778 802DA348 28610032 */  slti       $at, $v1, 0x32
    /* 2BC77C 802DA34C 50200026 */  beql       $at, $zero, .L802DA3E8_2BC818
    /* 2BC780 802DA350 860A002C */   lh        $t2, 0x2C($s0)
    /* 2BC784 802DA354 86070038 */  lh         $a3, 0x38($s0)
    /* 2BC788 802DA358 2401FFFD */  addiu      $at, $zero, -0x3
    /* 2BC78C 802DA35C 8FB90034 */  lw         $t9, 0x34($sp)
    /* 2BC790 802DA360 10E1000D */  beq        $a3, $at, .L802DA398_2BC7C8
    /* 2BC794 802DA364 00000000 */   nop
    /* 2BC798 802DA368 87290038 */  lh         $t1, 0x38($t9)
    /* 2BC79C 802DA36C 860B0002 */  lh         $t3, 0x2($s0)
    /* 2BC7A0 802DA370 86040000 */  lh         $a0, 0x0($s0)
    /* 2BC7A4 802DA374 05210003 */  bgez       $t1, .L802DA384_2BC7B4
    /* 2BC7A8 802DA378 00095043 */   sra       $t2, $t1, 1
    /* 2BC7AC 802DA37C 25210001 */  addiu      $at, $t1, 0x1
    /* 2BC7B0 802DA380 00015043 */  sra        $t2, $at, 1
  .L802DA384_2BC7B4:
    /* 2BC7B4 802DA384 014B2821 */  addu       $a1, $t2, $t3
    /* 2BC7B8 802DA388 00056400 */  sll        $t4, $a1, 16
    /* 2BC7BC 802DA38C 000C2C03 */  sra        $a1, $t4, 16
    /* 2BC7C0 802DA390 0C030F62 */  jal        func_800C3D88_D2D38
    /* 2BC7C4 802DA394 86060004 */   lh        $a2, 0x4($s0)
  .L802DA398_2BC7C8:
    /* 2BC7C8 802DA398 0C000E38 */  jal        func_800038E0_44E0
    /* 2BC7CC 802DA39C 00000000 */   nop
    /* 2BC7D0 802DA3A0 2401000A */  addiu      $at, $zero, 0xA
    /* 2BC7D4 802DA3A4 0041001A */  div        $zero, $v0, $at
    /* 2BC7D8 802DA3A8 00007010 */  mfhi       $t6
    /* 2BC7DC 802DA3AC 8FAF0034 */  lw         $t7, 0x34($sp)
    /* 2BC7E0 802DA3B0 15C0000C */  bnez       $t6, .L802DA3E4_2BC814
    /* 2BC7E4 802DA3B4 24090006 */   addiu     $t1, $zero, 0x6
    /* 2BC7E8 802DA3B8 85E7000C */  lh         $a3, 0xC($t7)
    /* 2BC7EC 802DA3BC AFA90010 */  sw         $t1, 0x10($sp)
    /* 2BC7F0 802DA3C0 86040000 */  lh         $a0, 0x0($s0)
    /* 2BC7F4 802DA3C4 86050002 */  lh         $a1, 0x2($s0)
    /* 2BC7F8 802DA3C8 86060004 */  lh         $a2, 0x4($s0)
    /* 2BC7FC 802DA3CC 04E10003 */  bgez       $a3, .L802DA3DC_2BC80C
    /* 2BC800 802DA3D0 0007C043 */   sra       $t8, $a3, 1
    /* 2BC804 802DA3D4 24E10001 */  addiu      $at, $a3, 0x1
    /* 2BC808 802DA3D8 0001C043 */  sra        $t8, $at, 1
  .L802DA3DC_2BC80C:
    /* 2BC80C 802DA3DC 0C037E12 */  jal        func_800DF848_EE7F8
    /* 2BC810 802DA3E0 3307FFFF */   andi      $a3, $t8, 0xFFFF
  .L802DA3E4_2BC814:
    /* 2BC814 802DA3E4 860A002C */  lh         $t2, 0x2C($s0)
  .L802DA3E8_2BC818:
    /* 2BC818 802DA3E8 24010001 */  addiu      $at, $zero, 0x1
    /* 2BC81C 802DA3EC 8FAB0034 */  lw         $t3, 0x34($sp)
    /* 2BC820 802DA3F0 15410031 */  bne        $t2, $at, .L802DA4B8_2BC8E8
    /* 2BC824 802DA3F4 240F0006 */   addiu     $t7, $zero, 0x6
    /* 2BC828 802DA3F8 856C000C */  lh         $t4, 0xC($t3)
    /* 2BC82C 802DA3FC 3C013FF8 */  lui        $at, (0x3FF80000 >> 16)
    /* 2BC830 802DA400 44814800 */  mtc1       $at, $f9
    /* 2BC834 802DA404 448C3000 */  mtc1       $t4, $f6
    /* 2BC838 802DA408 44804000 */  mtc1       $zero, $f8
    /* 2BC83C 802DA40C 24070001 */  addiu      $a3, $zero, 0x1
    /* 2BC840 802DA410 46803121 */  cvt.d.w    $f4, $f6
    /* 2BC844 802DA414 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* 2BC848 802DA418 86040000 */  lh         $a0, 0x0($s0)
    /* 2BC84C 802DA41C 86050002 */  lh         $a1, 0x2($s0)
    /* 2BC850 802DA420 86060004 */  lh         $a2, 0x4($s0)
    /* 2BC854 802DA424 46282282 */  mul.d      $f10, $f4, $f8
    /* 2BC858 802DA428 444DF800 */  cfc1       $t5, $31
    /* 2BC85C 802DA42C 44C7F800 */  ctc1       $a3, $31
    /* 2BC860 802DA430 00000000 */  nop
    /* 2BC864 802DA434 46205424 */  cvt.w.d    $f16, $f10
    /* 2BC868 802DA438 4447F800 */  cfc1       $a3, $31
    /* 2BC86C 802DA43C 00000000 */  nop
    /* 2BC870 802DA440 30E70078 */  andi       $a3, $a3, 0x78
    /* 2BC874 802DA444 50E00014 */  beql       $a3, $zero, .L802DA498_2BC8C8
    /* 2BC878 802DA448 44078000 */   mfc1      $a3, $f16
    /* 2BC87C 802DA44C 44818800 */  mtc1       $at, $f17
    /* 2BC880 802DA450 44808000 */  mtc1       $zero, $f16
    /* 2BC884 802DA454 24070001 */  addiu      $a3, $zero, 0x1
    /* 2BC888 802DA458 46305401 */  sub.d      $f16, $f10, $f16
    /* 2BC88C 802DA45C 44C7F800 */  ctc1       $a3, $31
    /* 2BC890 802DA460 00000000 */  nop
    /* 2BC894 802DA464 46208424 */  cvt.w.d    $f16, $f16
    /* 2BC898 802DA468 4447F800 */  cfc1       $a3, $31
    /* 2BC89C 802DA46C 00000000 */  nop
    /* 2BC8A0 802DA470 30E70078 */  andi       $a3, $a3, 0x78
    /* 2BC8A4 802DA474 14E00005 */  bnez       $a3, .L802DA48C_2BC8BC
    /* 2BC8A8 802DA478 00000000 */   nop
    /* 2BC8AC 802DA47C 44078000 */  mfc1       $a3, $f16
    /* 2BC8B0 802DA480 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* 2BC8B4 802DA484 10000007 */  b          .L802DA4A4_2BC8D4
    /* 2BC8B8 802DA488 00E13825 */   or        $a3, $a3, $at
  .L802DA48C_2BC8BC:
    /* 2BC8BC 802DA48C 10000005 */  b          .L802DA4A4_2BC8D4
    /* 2BC8C0 802DA490 2407FFFF */   addiu     $a3, $zero, -0x1
    /* 2BC8C4 802DA494 44078000 */  mfc1       $a3, $f16
  .L802DA498_2BC8C8:
    /* 2BC8C8 802DA498 00000000 */  nop
    /* 2BC8CC 802DA49C 04E0FFFB */  bltz       $a3, .L802DA48C_2BC8BC
    /* 2BC8D0 802DA4A0 00000000 */   nop
  .L802DA4A4_2BC8D4:
    /* 2BC8D4 802DA4A4 44CDF800 */  ctc1       $t5, $31
    /* 2BC8D8 802DA4A8 30EEFFFF */  andi       $t6, $a3, 0xFFFF
    /* 2BC8DC 802DA4AC 01C03825 */  or         $a3, $t6, $zero
    /* 2BC8E0 802DA4B0 0C037E12 */  jal        func_800DF848_EE7F8
    /* 2BC8E4 802DA4B4 AFAF0010 */   sw        $t7, 0x10($sp)
  .L802DA4B8_2BC8E8:
    /* 2BC8E8 802DA4B8 8FBF002C */  lw         $ra, 0x2C($sp)
  .L802DA4BC_2BC8EC:
    /* 2BC8EC 802DA4BC 8FB00028 */  lw         $s0, 0x28($sp)
    /* 2BC8F0 802DA4C0 27BD0070 */  addiu      $sp, $sp, 0x70
    /* 2BC8F4 802DA4C4 03E00008 */  jr         $ra
    /* 2BC8F8 802DA4C8 00000000 */   nop
endlabel func_802D9FE4_2BC414
