nonmatching func_802D84B0_2BA8E0, 0x480

glabel func_802D84B0_2BA8E0
    /* 2BA8E0 802D84B0 27BDFF88 */  addiu      $sp, $sp, -0x78
    /* 2BA8E4 802D84B4 AFB10020 */  sw         $s1, 0x20($sp)
    /* 2BA8E8 802D84B8 309100FF */  andi       $s1, $a0, 0xFF
    /* 2BA8EC 802D84BC 00117080 */  sll        $t6, $s1, 2
    /* 2BA8F0 802D84C0 01D17021 */  addu       $t6, $t6, $s1
    /* 2BA8F4 802D84C4 3C0F8005 */  lui        $t7, %hi(alienInstances)
    /* 2BA8F8 802D84C8 AFB0001C */  sw         $s0, 0x1C($sp)
    /* 2BA8FC 802D84CC 25EF8198 */  addiu      $t7, $t7, %lo(alienInstances)
    /* 2BA900 802D84D0 000E7100 */  sll        $t6, $t6, 4
    /* 2BA904 802D84D4 01CF8021 */  addu       $s0, $t6, $t7
    /* 2BA908 802D84D8 8618000C */  lh         $t8, 0xC($s0)
    /* 2BA90C 802D84DC 3C028015 */  lui        $v0, %hi(D_8014DD50)
    /* 2BA910 802D84E0 2442DD50 */  addiu      $v0, $v0, %lo(D_8014DD50)
    /* 2BA914 802D84E4 0018C900 */  sll        $t9, $t8, 4
    /* 2BA918 802D84E8 00596021 */  addu       $t4, $v0, $t9
    /* 2BA91C 802D84EC 8187000C */  lb         $a3, 0xC($t4)
    /* 2BA920 802D84F0 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 2BA924 802D84F4 AFA40078 */  sw         $a0, 0x78($sp)
    /* 2BA928 802D84F8 00076900 */  sll        $t5, $a3, 4
    /* 2BA92C 802D84FC 004D1821 */  addu       $v1, $v0, $t5
    /* 2BA930 802D8500 806B000D */  lb         $t3, 0xD($v1)
    /* 2BA934 802D8504 806E000C */  lb         $t6, 0xC($v1)
    /* 2BA938 802D8508 000B7900 */  sll        $t7, $t3, 4
    /* 2BA93C 802D850C 004F3021 */  addu       $a2, $v0, $t7
    /* 2BA940 802D8510 80C9000D */  lb         $t1, 0xD($a2)
    /* 2BA944 802D8514 80D8000C */  lb         $t8, 0xC($a2)
    /* 2BA948 802D8518 A7AE0074 */  sh         $t6, 0x74($sp)
    /* 2BA94C 802D851C 0009C900 */  sll        $t9, $t1, 4
    /* 2BA950 802D8520 00592821 */  addu       $a1, $v0, $t9
    /* 2BA954 802D8524 80AA000C */  lb         $t2, 0xC($a1)
    /* 2BA958 802D8528 80A8000D */  lb         $t0, 0xD($a1)
    /* 2BA95C 802D852C A7B80070 */  sh         $t8, 0x70($sp)
    /* 2BA960 802D8530 000A6100 */  sll        $t4, $t2, 4
    /* 2BA964 802D8534 004C6821 */  addu       $t5, $v0, $t4
    /* 2BA968 802D8538 00087900 */  sll        $t7, $t0, 4
    /* 2BA96C 802D853C 81AE000C */  lb         $t6, 0xC($t5)
    /* 2BA970 802D8540 004FC021 */  addu       $t8, $v0, $t7
    /* 2BA974 802D8544 8319000C */  lb         $t9, 0xC($t8)
    /* 2BA978 802D8548 AFA60030 */  sw         $a2, 0x30($sp)
    /* 2BA97C 802D854C A7A70076 */  sh         $a3, 0x76($sp)
    /* 2BA980 802D8550 A7AB0072 */  sh         $t3, 0x72($sp)
    /* 2BA984 802D8554 A7A9006E */  sh         $t1, 0x6E($sp)
    /* 2BA988 802D8558 A7AA006C */  sh         $t2, 0x6C($sp)
    /* 2BA98C 802D855C A7A80068 */  sh         $t0, 0x68($sp)
    /* 2BA990 802D8560 A7AE006A */  sh         $t6, 0x6A($sp)
    /* 2BA994 802D8564 0C000E38 */  jal        func_800038E0_44E0
    /* 2BA998 802D8568 A7B90066 */   sh        $t9, 0x66($sp)
    /* 2BA99C 802D856C 24010078 */  addiu      $at, $zero, 0x78
    /* 2BA9A0 802D8570 0041001A */  div        $zero, $v0, $at
    /* 2BA9A4 802D8574 00006010 */  mfhi       $t4
    /* 2BA9A8 802D8578 15800003 */  bnez       $t4, .L802D8588_2BA9B8
    /* 2BA9AC 802D857C 02202025 */   or        $a0, $s1, $zero
    /* 2BA9B0 802D8580 0C04DD1A */  jal        func_80137468_146418
    /* 2BA9B4 802D8584 24050010 */   addiu     $a1, $zero, 0x10
  .L802D8588_2BA9B8:
    /* 2BA9B8 802D8588 8E020020 */  lw         $v0, 0x20($s0)
    /* 2BA9BC 802D858C 322400FF */  andi       $a0, $s1, 0xFF
    /* 2BA9C0 802D8590 87A50068 */  lh         $a1, 0x68($sp)
    /* 2BA9C4 802D8594 304D4000 */  andi       $t5, $v0, 0x4000
    /* 2BA9C8 802D8598 55A00005 */  bnel       $t5, $zero, .L802D85B0_2BA9E0
    /* 2BA9CC 802D859C 304E1000 */   andi      $t6, $v0, 0x1000
    /* 2BA9D0 802D85A0 0C02429B */  jal        func_80090A6C_9FA1C
    /* 2BA9D4 802D85A4 240607D0 */   addiu     $a2, $zero, 0x7D0
    /* 2BA9D8 802D85A8 8E020020 */  lw         $v0, 0x20($s0)
    /* 2BA9DC 802D85AC 304E1000 */  andi       $t6, $v0, 0x1000
  .L802D85B0_2BA9E0:
    /* 2BA9E0 802D85B0 15C00008 */  bnez       $t6, .L802D85D4_2BAA04
    /* 2BA9E4 802D85B4 322400FF */   andi      $a0, $s1, 0xFF
    /* 2BA9E8 802D85B8 87A5006E */  lh         $a1, 0x6E($sp)
    /* 2BA9EC 802D85BC 0C02429B */  jal        func_80090A6C_9FA1C
    /* 2BA9F0 802D85C0 240607D0 */   addiu     $a2, $zero, 0x7D0
    /* 2BA9F4 802D85C4 322400FF */  andi       $a0, $s1, 0xFF
    /* 2BA9F8 802D85C8 87A5006C */  lh         $a1, 0x6C($sp)
    /* 2BA9FC 802D85CC 0C02429B */  jal        func_80090A6C_9FA1C
    /* 2BAA00 802D85D0 240607D0 */   addiu     $a2, $zero, 0x7D0
  .L802D85D4_2BAA04:
    /* 2BAA04 802D85D4 860F0012 */  lh         $t7, 0x12($s0)
    /* 2BAA08 802D85D8 240603E8 */  addiu      $a2, $zero, 0x3E8
    /* 2BAA0C 802D85DC 322400FF */  andi       $a0, $s1, 0xFF
    /* 2BAA10 802D85E0 19E00006 */  blez       $t7, .L802D85FC_2BAA2C
    /* 2BAA14 802D85E4 87A50076 */   lh        $a1, 0x76($sp)
    /* 2BAA18 802D85E8 322400FF */  andi       $a0, $s1, 0xFF
    /* 2BAA1C 802D85EC 0C02429B */  jal        func_80090A6C_9FA1C
    /* 2BAA20 802D85F0 87A50076 */   lh        $a1, 0x76($sp)
    /* 2BAA24 802D85F4 10000003 */  b          .L802D8604_2BAA34
    /* 2BAA28 802D85F8 00000000 */   nop
  .L802D85FC_2BAA2C:
    /* 2BAA2C 802D85FC 0C02188C */  jal        func_80086230_951E0
    /* 2BAA30 802D8600 24062000 */   addiu     $a2, $zero, 0x2000
  .L802D8604_2BAA34:
    /* 2BAA34 802D8604 3C188005 */  lui        $t8, %hi(D_80052B34)
    /* 2BAA38 802D8608 8F182B34 */  lw         $t8, %lo(D_80052B34)($t8)
    /* 2BAA3C 802D860C 2406012C */  addiu      $a2, $zero, 0x12C
    /* 2BAA40 802D8610 322400FF */  andi       $a0, $s1, 0xFF
    /* 2BAA44 802D8614 9319001A */  lbu        $t9, 0x1A($t8)
    /* 2BAA48 802D8618 240501F4 */  addiu      $a1, $zero, 0x1F4
    /* 2BAA4C 802D861C 17200006 */  bnez       $t9, .L802D8638_2BAA68
    /* 2BAA50 802D8620 00000000 */   nop
    /* 2BAA54 802D8624 322400FF */  andi       $a0, $s1, 0xFF
    /* 2BAA58 802D8628 0C021DFA */  jal        func_800877E8_96798
    /* 2BAA5C 802D862C 240500FA */   addiu     $a1, $zero, 0xFA
    /* 2BAA60 802D8630 10000004 */  b          .L802D8644_2BAA74
    /* 2BAA64 802D8634 8E020020 */   lw        $v0, 0x20($s0)
  .L802D8638_2BAA68:
    /* 2BAA68 802D8638 0C021DFA */  jal        func_800877E8_96798
    /* 2BAA6C 802D863C 24060320 */   addiu     $a2, $zero, 0x320
    /* 2BAA70 802D8640 8E020020 */  lw         $v0, 0x20($s0)
  .L802D8644_2BAA74:
    /* 2BAA74 802D8644 860C0000 */  lh         $t4, 0x0($s0)
    /* 2BAA78 802D8648 860D0014 */  lh         $t5, 0x14($s0)
    /* 2BAA7C 802D864C 860E0004 */  lh         $t6, 0x4($s0)
    /* 2BAA80 802D8650 860F0018 */  lh         $t7, 0x18($s0)
    /* 2BAA84 802D8654 30587000 */  andi       $t8, $v0, 0x7000
    /* 2BAA88 802D8658 018D3823 */  subu       $a3, $t4, $t5
    /* 2BAA8C 802D865C 17000059 */  bnez       $t8, .L802D87C4_2BABF4
    /* 2BAA90 802D8660 01CF4823 */   subu      $t1, $t6, $t7
    /* 2BAA94 802D8664 00E70019 */  multu      $a3, $a3
    /* 2BAA98 802D8668 3C01000F */  lui        $at, (0xF4241 >> 16)
    /* 2BAA9C 802D866C 34214241 */  ori        $at, $at, (0xF4241 & 0xFFFF)
    /* 2BAAA0 802D8670 3C0D8005 */  lui        $t5, %hi(D_80052B34)
    /* 2BAAA4 802D8674 322400FF */  andi       $a0, $s1, 0xFF
    /* 2BAAA8 802D8678 24050800 */  addiu      $a1, $zero, 0x800
    /* 2BAAAC 802D867C 0000C812 */  mflo       $t9
    /* 2BAAB0 802D8680 00000000 */  nop
    /* 2BAAB4 802D8684 00000000 */  nop
    /* 2BAAB8 802D8688 01290019 */  multu      $t1, $t1
    /* 2BAABC 802D868C 00006012 */  mflo       $t4
    /* 2BAAC0 802D8690 032C4021 */  addu       $t0, $t9, $t4
    /* 2BAAC4 802D8694 0101082A */  slt        $at, $t0, $at
    /* 2BAAC8 802D8698 5020000A */  beql       $at, $zero, .L802D86C4_2BAAF4
    /* 2BAACC 802D869C AFA70060 */   sw        $a3, 0x60($sp)
    /* 2BAAD0 802D86A0 8DAD2B34 */  lw         $t5, %lo(D_80052B34)($t5)
    /* 2BAAD4 802D86A4 3C010002 */  lui        $at, (0x27101 >> 16)
    /* 2BAAD8 802D86A8 34217101 */  ori        $at, $at, (0x27101 & 0xFFFF)
    /* 2BAADC 802D86AC 95AE0020 */  lhu        $t6, 0x20($t5)
    /* 2BAAE0 802D86B0 0101082A */  slt        $at, $t0, $at
    /* 2BAAE4 802D86B4 31CF0002 */  andi       $t7, $t6, 0x2
    /* 2BAAE8 802D86B8 11E00019 */  beqz       $t7, .L802D8720_2BAB50
    /* 2BAAEC 802D86BC 00000000 */   nop
    /* 2BAAF0 802D86C0 AFA70060 */  sw         $a3, 0x60($sp)
  .L802D86C4_2BAAF4:
    /* 2BAAF4 802D86C4 0C0213FA */  jal        func_80084FE8_93F98
    /* 2BAAF8 802D86C8 AFA9005C */   sw        $t1, 0x5C($sp)
    /* 2BAAFC 802D86CC 8FA70060 */  lw         $a3, 0x60($sp)
    /* 2BAB00 802D86D0 10400011 */  beqz       $v0, .L802D8718_2BAB48
    /* 2BAB04 802D86D4 8FA9005C */   lw        $t1, 0x5C($sp)
    /* 2BAB08 802D86D8 8618001E */  lh         $t8, 0x1E($s0)
    /* 2BAB0C 802D86DC 322400FF */  andi       $a0, $s1, 0xFF
    /* 2BAB10 802D86E0 00002825 */  or         $a1, $zero, $zero
    /* 2BAB14 802D86E4 1700000C */  bnez       $t8, .L802D8718_2BAB48
    /* 2BAB18 802D86E8 2406003C */   addiu     $a2, $zero, 0x3C
    /* 2BAB1C 802D86EC AFA70060 */  sw         $a3, 0x60($sp)
    /* 2BAB20 802D86F0 0C021C73 */  jal        func_800871CC_9617C
    /* 2BAB24 802D86F4 AFA9005C */   sw        $t1, 0x5C($sp)
    /* 2BAB28 802D86F8 8E0C0020 */  lw         $t4, 0x20($s0)
    /* 2BAB2C 802D86FC 2419001E */  addiu      $t9, $zero, 0x1E
    /* 2BAB30 802D8700 8FA70060 */  lw         $a3, 0x60($sp)
    /* 2BAB34 802D8704 358D4000 */  ori        $t5, $t4, 0x4000
    /* 2BAB38 802D8708 8FA9005C */  lw         $t1, 0x5C($sp)
    /* 2BAB3C 802D870C A619001E */  sh         $t9, 0x1E($s0)
    /* 2BAB40 802D8710 AE0D0020 */  sw         $t5, 0x20($s0)
    /* 2BAB44 802D8714 A2000036 */  sb         $zero, 0x36($s0)
  .L802D8718_2BAB48:
    /* 2BAB48 802D8718 1000002A */  b          .L802D87C4_2BABF4
    /* 2BAB4C 802D871C 8E020020 */   lw        $v0, 0x20($s0)
  .L802D8720_2BAB50:
    /* 2BAB50 802D8720 14200021 */  bnez       $at, .L802D87A8_2BABD8
    /* 2BAB54 802D8724 3C0E8005 */   lui       $t6, %hi(D_80052AD0)
    /* 2BAB58 802D8728 322400FF */  andi       $a0, $s1, 0xFF
    /* 2BAB5C 802D872C 24050808 */  addiu      $a1, $zero, 0x808
    /* 2BAB60 802D8730 AFA70060 */  sw         $a3, 0x60($sp)
    /* 2BAB64 802D8734 0C0213FA */  jal        func_80084FE8_93F98
    /* 2BAB68 802D8738 AFA9005C */   sw        $t1, 0x5C($sp)
    /* 2BAB6C 802D873C 8FA70060 */  lw         $a3, 0x60($sp)
    /* 2BAB70 802D8740 10400017 */  beqz       $v0, .L802D87A0_2BABD0
    /* 2BAB74 802D8744 8FA9005C */   lw        $t1, 0x5C($sp)
    /* 2BAB78 802D8748 860E001E */  lh         $t6, 0x1E($s0)
    /* 2BAB7C 802D874C 15C00014 */  bnez       $t6, .L802D87A0_2BABD0
    /* 2BAB80 802D8750 00000000 */   nop
    /* 2BAB84 802D8754 8E0F0020 */  lw         $t7, 0x20($s0)
    /* 2BAB88 802D8758 8FB90030 */  lw         $t9, 0x30($sp)
    /* 2BAB8C 802D875C 322400FF */  andi       $a0, $s1, 0xFF
    /* 2BAB90 802D8760 35F82000 */  ori        $t8, $t7, 0x2000
    /* 2BAB94 802D8764 AE180020 */  sw         $t8, 0x20($s0)
    /* 2BAB98 802D8768 972C000A */  lhu        $t4, 0xA($t9)
    /* 2BAB9C 802D876C 24050001 */  addiu      $a1, $zero, 0x1
    /* 2BABA0 802D8770 24060050 */  addiu      $a2, $zero, 0x50
    /* 2BABA4 802D8774 1580000A */  bnez       $t4, .L802D87A0_2BABD0
    /* 2BABA8 802D8778 00000000 */   nop
    /* 2BABAC 802D877C AFA70060 */  sw         $a3, 0x60($sp)
    /* 2BABB0 802D8780 0C021C73 */  jal        func_800871CC_9617C
    /* 2BABB4 802D8784 AFA9005C */   sw        $t1, 0x5C($sp)
    /* 2BABB8 802D8788 8FA70060 */  lw         $a3, 0x60($sp)
    /* 2BABBC 802D878C 10400004 */  beqz       $v0, .L802D87A0_2BABD0
    /* 2BABC0 802D8790 8FA9005C */   lw        $t1, 0x5C($sp)
    /* 2BABC4 802D8794 240D0003 */  addiu      $t5, $zero, 0x3
    /* 2BABC8 802D8798 A60D001E */  sh         $t5, 0x1E($s0)
    /* 2BABCC 802D879C A2000036 */  sb         $zero, 0x36($s0)
  .L802D87A0_2BABD0:
    /* 2BABD0 802D87A0 10000008 */  b          .L802D87C4_2BABF4
    /* 2BABD4 802D87A4 8E020020 */   lw        $v0, 0x20($s0)
  .L802D87A8_2BABD8:
    /* 2BABD8 802D87A8 8DCE2AD0 */  lw         $t6, %lo(D_80052AD0)($t6)
    /* 2BABDC 802D87AC 344F1000 */  ori        $t7, $v0, 0x1000
    /* 2BABE0 802D87B0 11C00004 */  beqz       $t6, .L802D87C4_2BABF4
    /* 2BABE4 802D87B4 00000000 */   nop
    /* 2BABE8 802D87B8 AE0F0020 */  sw         $t7, 0x20($s0)
    /* 2BABEC 802D87BC A2000036 */  sb         $zero, 0x36($s0)
    /* 2BABF0 802D87C0 01E01025 */  or         $v0, $t7, $zero
  .L802D87C4_2BABF4:
    /* 2BABF4 802D87C4 00E70019 */  multu      $a3, $a3
    /* 2BABF8 802D87C8 8FA50030 */  lw         $a1, 0x30($sp)
    /* 2BABFC 802D87CC 304C2000 */  andi       $t4, $v0, 0x2000
    /* 2BAC00 802D87D0 94A3000A */  lhu        $v1, 0xA($a1)
    /* 2BAC04 802D87D4 0000C012 */  mflo       $t8
    /* 2BAC08 802D87D8 00000000 */  nop
    /* 2BAC0C 802D87DC 00000000 */  nop
    /* 2BAC10 802D87E0 01290019 */  multu      $t1, $t1
    /* 2BAC14 802D87E4 0000C812 */  mflo       $t9
    /* 2BAC18 802D87E8 03194021 */  addu       $t0, $t8, $t9
    /* 2BAC1C 802D87EC 1180001F */  beqz       $t4, .L802D886C_2BAC9C
    /* 2BAC20 802D87F0 2479FBFC */   addiu     $t9, $v1, -0x404
    /* 2BAC24 802D87F4 10600030 */  beqz       $v1, .L802D88B8_2BACE8
    /* 2BAC28 802D87F8 246D0808 */   addiu     $t5, $v1, 0x808
    /* 2BAC2C 802D87FC A4AD000A */  sh         $t5, 0xA($a1)
    /* 2BAC30 802D8800 3C0F802E */  lui        $t7, %hi(D_802E1550)
    /* 2BAC34 802D8804 91EF1550 */  lbu        $t7, %lo(D_802E1550)($t7)
    /* 2BAC38 802D8808 3419EC77 */  ori        $t9, $zero, 0xEC77
    /* 2BAC3C 802D880C 31AEFFFF */  andi       $t6, $t5, 0xFFFF
    /* 2BAC40 802D8810 000FC080 */  sll        $t8, $t7, 2
    /* 2BAC44 802D8814 030FC021 */  addu       $t8, $t8, $t7
    /* 2BAC48 802D8818 0018C0C0 */  sll        $t8, $t8, 3
    /* 2BAC4C 802D881C 030FC023 */  subu       $t8, $t8, $t7
    /* 2BAC50 802D8820 0018C100 */  sll        $t8, $t8, 4
    /* 2BAC54 802D8824 030FC021 */  addu       $t8, $t8, $t7
    /* 2BAC58 802D8828 0018C0C0 */  sll        $t8, $t8, 3
    /* 2BAC5C 802D882C 03386023 */  subu       $t4, $t9, $t8
    /* 2BAC60 802D8830 01CC082A */  slt        $at, $t6, $t4
    /* 2BAC64 802D8834 10200020 */  beqz       $at, .L802D88B8_2BACE8
    /* 2BAC68 802D8838 2401DFFF */   addiu     $at, $zero, -0x2001
    /* 2BAC6C 802D883C 00416824 */  and        $t5, $v0, $at
    /* 2BAC70 802D8840 A4A0000A */  sh         $zero, 0xA($a1)
    /* 2BAC74 802D8844 AE0D0020 */  sw         $t5, 0x20($s0)
    /* 2BAC78 802D8848 0C000E38 */  jal        func_800038E0_44E0
    /* 2BAC7C 802D884C AFA80028 */   sw        $t0, 0x28($sp)
    /* 2BAC80 802D8850 24010003 */  addiu      $at, $zero, 0x3
    /* 2BAC84 802D8854 0041001A */  div        $zero, $v0, $at
    /* 2BAC88 802D8858 00007810 */  mfhi       $t7
    /* 2BAC8C 802D885C 3C01802E */  lui        $at, %hi(D_802E1550)
    /* 2BAC90 802D8860 A02F1550 */  sb         $t7, %lo(D_802E1550)($at)
    /* 2BAC94 802D8864 10000014 */  b          .L802D88B8_2BACE8
    /* 2BAC98 802D8868 8FA80028 */   lw        $t0, 0x28($sp)
  .L802D886C_2BAC9C:
    /* 2BAC9C 802D886C A4B9000A */  sh         $t9, 0xA($a1)
    /* 2BACA0 802D8870 3C18802E */  lui        $t8, %hi(D_802E1550)
    /* 2BACA4 802D8874 93181550 */  lbu        $t8, %lo(D_802E1550)($t8)
    /* 2BACA8 802D8878 340CEC77 */  ori        $t4, $zero, 0xEC77
    /* 2BACAC 802D887C 3322FFFF */  andi       $v0, $t9, 0xFFFF
    /* 2BACB0 802D8880 00187080 */  sll        $t6, $t8, 2
    /* 2BACB4 802D8884 01D87021 */  addu       $t6, $t6, $t8
    /* 2BACB8 802D8888 000E70C0 */  sll        $t6, $t6, 3
    /* 2BACBC 802D888C 01D87023 */  subu       $t6, $t6, $t8
    /* 2BACC0 802D8890 000E7100 */  sll        $t6, $t6, 4
    /* 2BACC4 802D8894 01D87021 */  addu       $t6, $t6, $t8
    /* 2BACC8 802D8898 000E70C0 */  sll        $t6, $t6, 3
    /* 2BACCC 802D889C 018E2023 */  subu       $a0, $t4, $t6
    /* 2BACD0 802D88A0 0044082A */  slt        $at, $v0, $a0
    /* 2BACD4 802D88A4 50200004 */  beql       $at, $zero, .L802D88B8_2BACE8
    /* 2BACD8 802D88A8 A4A2000A */   sh        $v0, 0xA($a1)
    /* 2BACDC 802D88AC 10000002 */  b          .L802D88B8_2BACE8
    /* 2BACE0 802D88B0 A4A4000A */   sh        $a0, 0xA($a1)
    /* 2BACE4 802D88B4 A4A2000A */  sh         $v0, 0xA($a1)
  .L802D88B8_2BACE8:
    /* 2BACE8 802D88B8 322400FF */  andi       $a0, $s1, 0xFF
    /* 2BACEC 802D88BC 87A50072 */  lh         $a1, 0x72($sp)
    /* 2BACF0 802D88C0 87A60070 */  lh         $a2, 0x70($sp)
    /* 2BACF4 802D88C4 0C0B601B */  jal        func_802D806C_2BA49C
    /* 2BACF8 802D88C8 AFA80028 */   sw        $t0, 0x28($sp)
    /* 2BACFC 802D88CC 322400FF */  andi       $a0, $s1, 0xFF
    /* 2BAD00 802D88D0 87A50068 */  lh         $a1, 0x68($sp)
    /* 2BAD04 802D88D4 0C0B6048 */  jal        func_802D8120_2BA550
    /* 2BAD08 802D88D8 87A60066 */   lh        $a2, 0x66($sp)
    /* 2BAD0C 802D88DC 8FA80028 */  lw         $t0, 0x28($sp)
    /* 2BAD10 802D88E0 87AF006C */  lh         $t7, 0x6C($sp)
    /* 2BAD14 802D88E4 87B9006A */  lh         $t9, 0x6A($sp)
    /* 2BAD18 802D88E8 00082C00 */  sll        $a1, $t0, 16
    /* 2BAD1C 802D88EC 00056C03 */  sra        $t5, $a1, 16
    /* 2BAD20 802D88F0 01A02825 */  or         $a1, $t5, $zero
    /* 2BAD24 802D88F4 322400FF */  andi       $a0, $s1, 0xFF
    /* 2BAD28 802D88F8 87A60074 */  lh         $a2, 0x74($sp)
    /* 2BAD2C 802D88FC 87A7006E */  lh         $a3, 0x6E($sp)
    /* 2BAD30 802D8900 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 2BAD34 802D8904 0C0B6070 */  jal        func_802D81C0_2BA5F0
    /* 2BAD38 802D8908 AFB90014 */   sw        $t9, 0x14($sp)
    /* 2BAD3C 802D890C 8602001E */  lh         $v0, 0x1E($s0)
    /* 2BAD40 802D8910 10400002 */  beqz       $v0, .L802D891C_2BAD4C
    /* 2BAD44 802D8914 2458FFFF */   addiu     $t8, $v0, -0x1
    /* 2BAD48 802D8918 A618001E */  sh         $t8, 0x1E($s0)
  .L802D891C_2BAD4C:
    /* 2BAD4C 802D891C 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 2BAD50 802D8920 8FB0001C */  lw         $s0, 0x1C($sp)
    /* 2BAD54 802D8924 8FB10020 */  lw         $s1, 0x20($sp)
    /* 2BAD58 802D8928 03E00008 */  jr         $ra
    /* 2BAD5C 802D892C 27BD0078 */   addiu     $sp, $sp, 0x78
endlabel func_802D84B0_2BA8E0
