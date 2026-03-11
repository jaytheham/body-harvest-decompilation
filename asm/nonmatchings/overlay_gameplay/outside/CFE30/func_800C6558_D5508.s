nonmatching func_800C6558_D5508, 0x828

glabel func_800C6558_D5508
    /* D5508 800C6558 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* D550C 800C655C AFB00018 */  sw         $s0, 0x18($sp)
    /* D5510 800C6560 3C108015 */  lui        $s0, %hi(D_8015420A)
    /* D5514 800C6564 8610420A */  lh         $s0, %lo(D_8015420A)($s0)
    /* D5518 800C6568 2408FFFB */  addiu      $t0, $zero, -0x5
    /* D551C 800C656C AFBF003C */  sw         $ra, 0x3C($sp)
    /* D5520 800C6570 AFBE0038 */  sw         $fp, 0x38($sp)
    /* D5524 800C6574 AFB70034 */  sw         $s7, 0x34($sp)
    /* D5528 800C6578 AFB60030 */  sw         $s6, 0x30($sp)
    /* D552C 800C657C AFB5002C */  sw         $s5, 0x2C($sp)
    /* D5530 800C6580 AFB40028 */  sw         $s4, 0x28($sp)
    /* D5534 800C6584 AFB30024 */  sw         $s3, 0x24($sp)
    /* D5538 800C6588 AFB20020 */  sw         $s2, 0x20($sp)
    /* D553C 800C658C 12080004 */  beq        $s0, $t0, .L800C65A0_D5550
    /* D5540 800C6590 AFB1001C */   sw        $s1, 0x1C($sp)
    /* D5544 800C6594 2407FFFA */  addiu      $a3, $zero, -0x6
    /* D5548 800C6598 16070006 */  bne        $s0, $a3, .L800C65B4_D5564
    /* D554C 800C659C 00000000 */   nop
  .L800C65A0_D5550:
    /* D5550 800C65A0 24040001 */  addiu      $a0, $zero, 0x1
    /* D5554 800C65A4 0C030506 */  jal        func_800C1418_D03C8
    /* D5558 800C65A8 24050001 */   addiu     $a1, $zero, 0x1
    /* D555C 800C65AC 100001E9 */  b          .L800C6D54_D5D04
    /* D5560 800C65B0 8FBF003C */   lw        $ra, 0x3C($sp)
  .L800C65B4_D5564:
    /* D5564 800C65B4 520801E7 */  beql       $s0, $t0, .L800C6D54_D5D04
    /* D5568 800C65B8 8FBF003C */   lw        $ra, 0x3C($sp)
    /* D556C 800C65BC 120701E4 */  beq        $s0, $a3, .L800C6D50_D5D00
    /* D5570 800C65C0 3C178015 */   lui       $s7, %hi(D_80154318)
    /* D5574 800C65C4 26F74318 */  addiu      $s7, $s7, %lo(D_80154318)
    /* D5578 800C65C8 2416001C */  addiu      $s6, $zero, 0x1C
  .L800C65CC_D557C:
    /* D557C 800C65CC 02160019 */  multu      $s0, $s6
    /* D5580 800C65D0 24090023 */  addiu      $t1, $zero, 0x23
    /* D5584 800C65D4 2407FFFA */  addiu      $a3, $zero, -0x6
    /* D5588 800C65D8 2408FFFB */  addiu      $t0, $zero, -0x5
    /* D558C 800C65DC 00007012 */  mflo       $t6
    /* D5590 800C65E0 02EE1021 */  addu       $v0, $s7, $t6
    /* D5594 800C65E4 84430004 */  lh         $v1, 0x4($v0)
    /* D5598 800C65E8 90580014 */  lbu        $t8, 0x14($v0)
    /* D559C 800C65EC 24540008 */  addiu      $s4, $v0, 0x8
    /* D55A0 800C65F0 00760019 */  multu      $v1, $s6
    /* D55A4 800C65F4 0280F025 */  or         $fp, $s4, $zero
    /* D55A8 800C65F8 00007812 */  mflo       $t7
    /* D55AC 800C65FC 02EF9021 */  addu       $s2, $s7, $t7
    /* D55B0 800C6600 92590013 */  lbu        $t9, 0x13($s2)
    /* D55B4 800C6604 86550004 */  lh         $s5, 0x4($s2)
    /* D55B8 800C6608 0139001A */  div        $zero, $t1, $t9
    /* D55BC 800C660C 17200002 */  bnez       $t9, .L800C6618_D55C8
    /* D55C0 800C6610 00000000 */   nop
    /* D55C4 800C6614 0007000D */  break      7
  .L800C6618_D55C8:
    /* D55C8 800C6618 2401FFFF */  addiu      $at, $zero, -0x1
    /* D55CC 800C661C 17210004 */  bne        $t9, $at, .L800C6630_D55E0
    /* D55D0 800C6620 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D55D4 800C6624 15210002 */  bne        $t1, $at, .L800C6630_D55E0
    /* D55D8 800C6628 00000000 */   nop
    /* D55DC 800C662C 0006000D */  break      6
  .L800C6630_D55E0:
    /* D55E0 800C6630 00005012 */  mflo       $t2
    /* D55E4 800C6634 030A082A */  slt        $at, $t8, $t2
    /* D55E8 800C6638 54200010 */  bnel       $at, $zero, .L800C667C_D562C
    /* D55EC 800C663C 9284000C */   lbu       $a0, 0xC($s4)
    /* D55F0 800C6640 02B60019 */  multu      $s5, $s6
    /* D55F4 800C6644 00102400 */  sll        $a0, $s0, 16
    /* D55F8 800C6648 00046C03 */  sra        $t5, $a0, 16
    /* D55FC 800C664C 01A02025 */  or         $a0, $t5, $zero
    /* D5600 800C6650 24050001 */  addiu      $a1, $zero, 0x1
    /* D5604 800C6654 24060001 */  addiu      $a2, $zero, 0x1
    /* D5608 800C6658 00005812 */  mflo       $t3
    /* D560C 800C665C 02EB6021 */  addu       $t4, $s7, $t3
    /* D5610 800C6660 0C030750 */  jal        func_800C1D40_D0CF0
    /* D5614 800C6664 85910004 */   lh        $s1, 0x4($t4)
    /* D5618 800C6668 00118400 */  sll        $s0, $s1, 16
    /* D561C 800C666C 00107403 */  sra        $t6, $s0, 16
    /* D5620 800C6670 100001B2 */  b          .L800C6D3C_D5CEC
    /* D5624 800C6674 01C08025 */   or        $s0, $t6, $zero
    /* D5628 800C6678 9284000C */  lbu        $a0, 0xC($s4)
  .L800C667C_D562C:
    /* D562C 800C667C 24010001 */  addiu      $at, $zero, 0x1
    /* D5630 800C6680 1480000E */  bnez       $a0, .L800C66BC_D566C
    /* D5634 800C6684 00000000 */   nop
    /* D5638 800C6688 0C000E38 */  jal        func_800038E0_44E0
    /* D563C 800C668C 00000000 */   nop
    /* D5640 800C6690 02B60019 */  multu      $s5, $s6
    /* D5644 800C6694 2401000B */  addiu      $at, $zero, 0xB
    /* D5648 800C6698 26500008 */  addiu      $s0, $s2, 0x8
    /* D564C 800C669C 00007812 */  mflo       $t7
    /* D5650 800C66A0 02EF9821 */  addu       $s3, $s7, $t7
    /* D5654 800C66A4 26710008 */  addiu      $s1, $s3, 0x8
    /* D5658 800C66A8 0041001A */  div        $zero, $v0, $at
    /* D565C 800C66AC 00004810 */  mfhi       $t1
    /* D5660 800C66B0 2539003C */  addiu      $t9, $t1, 0x3C
    /* D5664 800C66B4 10000115 */  b          .L800C6B0C_D5ABC
    /* D5668 800C66B8 A6390000 */   sh        $t9, 0x0($s1)
  .L800C66BC_D566C:
    /* D566C 800C66BC 14810010 */  bne        $a0, $at, .L800C6700_D56B0
    /* D5670 800C66C0 26500008 */   addiu     $s0, $s2, 0x8
    /* D5674 800C66C4 0C000E38 */  jal        func_800038E0_44E0
    /* D5678 800C66C8 00000000 */   nop
    /* D567C 800C66CC 02B60019 */  multu      $s5, $s6
    /* D5680 800C66D0 2401000B */  addiu      $at, $zero, 0xB
    /* D5684 800C66D4 26500008 */  addiu      $s0, $s2, 0x8
    /* D5688 800C66D8 0000C012 */  mflo       $t8
    /* D568C 800C66DC 02F89821 */  addu       $s3, $s7, $t8
    /* D5690 800C66E0 26710008 */  addiu      $s1, $s3, 0x8
    /* D5694 800C66E4 0041001A */  div        $zero, $v0, $at
    /* D5698 800C66E8 962A0000 */  lhu        $t2, 0x0($s1)
    /* D569C 800C66EC 00005810 */  mfhi       $t3
    /* D56A0 800C66F0 014B6021 */  addu       $t4, $t2, $t3
    /* D56A4 800C66F4 258D000F */  addiu      $t5, $t4, 0xF
    /* D56A8 800C66F8 10000104 */  b          .L800C6B0C_D5ABC
    /* D56AC 800C66FC A62D0000 */   sh        $t5, 0x0($s1)
  .L800C6700_D56B0:
    /* D56B0 800C6700 9203000B */  lbu        $v1, 0xB($s0)
    /* D56B4 800C6704 240E0007 */  addiu      $t6, $zero, 0x7
    /* D56B8 800C6708 01C3001A */  div        $zero, $t6, $v1
    /* D56BC 800C670C 14600002 */  bnez       $v1, .L800C6718_D56C8
    /* D56C0 800C6710 00000000 */   nop
    /* D56C4 800C6714 0007000D */  break      7
  .L800C6718_D56C8:
    /* D56C8 800C6718 2401FFFF */  addiu      $at, $zero, -0x1
    /* D56CC 800C671C 14610004 */  bne        $v1, $at, .L800C6730_D56E0
    /* D56D0 800C6720 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D56D4 800C6724 15C10002 */  bne        $t6, $at, .L800C6730_D56E0
    /* D56D8 800C6728 00000000 */   nop
    /* D56DC 800C672C 0006000D */  break      6
  .L800C6730_D56E0:
    /* D56E0 800C6730 00007812 */  mflo       $t7
    /* D56E4 800C6734 008F082A */  slt        $at, $a0, $t7
    /* D56E8 800C6738 50200013 */  beql       $at, $zero, .L800C6788_D5738
    /* D56EC 800C673C 240E000F */   addiu     $t6, $zero, 0xF
    /* D56F0 800C6740 0C000E38 */  jal        func_800038E0_44E0
    /* D56F4 800C6744 00000000 */   nop
    /* D56F8 800C6748 02B60019 */  multu      $s5, $s6
    /* D56FC 800C674C 24010005 */  addiu      $at, $zero, 0x5
    /* D5700 800C6750 920A000B */  lbu        $t2, 0xB($s0)
    /* D5704 800C6754 00004812 */  mflo       $t1
    /* D5708 800C6758 02E99821 */  addu       $s3, $s7, $t1
    /* D570C 800C675C 26710008 */  addiu      $s1, $s3, 0x8
    /* D5710 800C6760 0041001A */  div        $zero, $v0, $at
    /* D5714 800C6764 0000C810 */  mfhi       $t9
    /* D5718 800C6768 27380005 */  addiu      $t8, $t9, 0x5
    /* D571C 800C676C 962C0000 */  lhu        $t4, 0x0($s1)
    /* D5720 800C6770 030A0019 */  multu      $t8, $t2
    /* D5724 800C6774 00005812 */  mflo       $t3
    /* D5728 800C6778 018B6821 */  addu       $t5, $t4, $t3
    /* D572C 800C677C 100000E3 */  b          .L800C6B0C_D5ABC
    /* D5730 800C6780 A62D0000 */   sh        $t5, 0x0($s1)
    /* D5734 800C6784 240E000F */  addiu      $t6, $zero, 0xF
  .L800C6788_D5738:
    /* D5738 800C6788 01C3001A */  div        $zero, $t6, $v1
    /* D573C 800C678C 14600002 */  bnez       $v1, .L800C6798_D5748
    /* D5740 800C6790 00000000 */   nop
    /* D5744 800C6794 0007000D */  break      7
  .L800C6798_D5748:
    /* D5748 800C6798 2401FFFF */  addiu      $at, $zero, -0x1
    /* D574C 800C679C 14610004 */  bne        $v1, $at, .L800C67B0_D5760
    /* D5750 800C67A0 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D5754 800C67A4 15C10002 */  bne        $t6, $at, .L800C67B0_D5760
    /* D5758 800C67A8 00000000 */   nop
    /* D575C 800C67AC 0006000D */  break      6
  .L800C67B0_D5760:
    /* D5760 800C67B0 00007812 */  mflo       $t7
    /* D5764 800C67B4 008F082A */  slt        $at, $a0, $t7
    /* D5768 800C67B8 1020001F */  beqz       $at, .L800C6838_D57E8
    /* D576C 800C67BC 240B0018 */   addiu     $t3, $zero, 0x18
    /* D5770 800C67C0 0C000E38 */  jal        func_800038E0_44E0
    /* D5774 800C67C4 00000000 */   nop
    /* D5778 800C67C8 02B60019 */  multu      $s5, $s6
    /* D577C 800C67CC 920A000B */  lbu        $t2, 0xB($s0)
    /* D5780 800C67D0 00004812 */  mflo       $t1
    /* D5784 800C67D4 02E99821 */  addu       $s3, $s7, $t1
    /* D5788 800C67D8 26710008 */  addiu      $s1, $s3, 0x8
    /* D578C 800C67DC 04410004 */  bgez       $v0, .L800C67F0_D57A0
    /* D5790 800C67E0 30590003 */   andi      $t9, $v0, 0x3
    /* D5794 800C67E4 13200002 */  beqz       $t9, .L800C67F0_D57A0
    /* D5798 800C67E8 00000000 */   nop
    /* D579C 800C67EC 2739FFFC */  addiu      $t9, $t9, -0x4
  .L800C67F0_D57A0:
    /* D57A0 800C67F0 27380004 */  addiu      $t8, $t9, 0x4
    /* D57A4 800C67F4 030A0019 */  multu      $t8, $t2
    /* D57A8 800C67F8 962B0000 */  lhu        $t3, 0x0($s1)
    /* D57AC 800C67FC 00006012 */  mflo       $t4
    /* D57B0 800C6800 016C6821 */  addu       $t5, $t3, $t4
    /* D57B4 800C6804 0C000E38 */  jal        func_800038E0_44E0
    /* D57B8 800C6808 A62D0000 */   sh        $t5, 0x0($s1)
    /* D57BC 800C680C 24010007 */  addiu      $at, $zero, 0x7
    /* D57C0 800C6810 0041001A */  div        $zero, $v0, $at
    /* D57C4 800C6814 00007010 */  mfhi       $t6
    /* D57C8 800C6818 9209000B */  lbu        $t1, 0xB($s0)
    /* D57CC 800C681C 25CF0007 */  addiu      $t7, $t6, 0x7
    /* D57D0 800C6820 9218000A */  lbu        $t8, 0xA($s0)
    /* D57D4 800C6824 01E90019 */  multu      $t7, $t1
    /* D57D8 800C6828 0000C812 */  mflo       $t9
    /* D57DC 800C682C 03195023 */  subu       $t2, $t8, $t9
    /* D57E0 800C6830 100000B6 */  b          .L800C6B0C_D5ABC
    /* D57E4 800C6834 A20A000A */   sb        $t2, 0xA($s0)
  .L800C6838_D57E8:
    /* D57E8 800C6838 0163001A */  div        $zero, $t3, $v1
    /* D57EC 800C683C 14600002 */  bnez       $v1, .L800C6848_D57F8
    /* D57F0 800C6840 00000000 */   nop
    /* D57F4 800C6844 0007000D */  break      7
  .L800C6848_D57F8:
    /* D57F8 800C6848 2401FFFF */  addiu      $at, $zero, -0x1
    /* D57FC 800C684C 14610004 */  bne        $v1, $at, .L800C6860_D5810
    /* D5800 800C6850 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D5804 800C6854 15610002 */  bne        $t3, $at, .L800C6860_D5810
    /* D5808 800C6858 00000000 */   nop
    /* D580C 800C685C 0006000D */  break      6
  .L800C6860_D5810:
    /* D5810 800C6860 00006012 */  mflo       $t4
    /* D5814 800C6864 008C082A */  slt        $at, $a0, $t4
    /* D5818 800C6868 10200030 */  beqz       $at, .L800C692C_D58DC
    /* D581C 800C686C 00000000 */   nop
    /* D5820 800C6870 0C000E38 */  jal        func_800038E0_44E0
    /* D5824 800C6874 00000000 */   nop
    /* D5828 800C6878 02B60019 */  multu      $s5, $s6
    /* D582C 800C687C 9209000B */  lbu        $t1, 0xB($s0)
    /* D5830 800C6880 00006812 */  mflo       $t5
    /* D5834 800C6884 02ED9821 */  addu       $s3, $s7, $t5
    /* D5838 800C6888 26710008 */  addiu      $s1, $s3, 0x8
    /* D583C 800C688C 04410004 */  bgez       $v0, .L800C68A0_D5850
    /* D5840 800C6890 304E0003 */   andi      $t6, $v0, 0x3
    /* D5844 800C6894 11C00002 */  beqz       $t6, .L800C68A0_D5850
    /* D5848 800C6898 00000000 */   nop
    /* D584C 800C689C 25CEFFFC */  addiu      $t6, $t6, -0x4
  .L800C68A0_D5850:
    /* D5850 800C68A0 25CF0003 */  addiu      $t7, $t6, 0x3
    /* D5854 800C68A4 01E90019 */  multu      $t7, $t1
    /* D5858 800C68A8 96390000 */  lhu        $t9, 0x0($s1)
    /* D585C 800C68AC 0000C012 */  mflo       $t8
    /* D5860 800C68B0 03385021 */  addu       $t2, $t9, $t8
    /* D5864 800C68B4 0C000E38 */  jal        func_800038E0_44E0
    /* D5868 800C68B8 A62A0000 */   sh        $t2, 0x0($s1)
    /* D586C 800C68BC 24010005 */  addiu      $at, $zero, 0x5
    /* D5870 800C68C0 0041001A */  div        $zero, $v0, $at
    /* D5874 800C68C4 00006010 */  mfhi       $t4
    /* D5878 800C68C8 9203000B */  lbu        $v1, 0xB($s0)
    /* D587C 800C68CC 258D0003 */  addiu      $t5, $t4, 0x3
    /* D5880 800C68D0 920B0009 */  lbu        $t3, 0x9($s0)
    /* D5884 800C68D4 01A30019 */  multu      $t5, $v1
    /* D5888 800C68D8 9219000A */  lbu        $t9, 0xA($s0)
    /* D588C 800C68DC 00034900 */  sll        $t1, $v1, 4
    /* D5890 800C68E0 01234823 */  subu       $t1, $t1, $v1
    /* D5894 800C68E4 0139082A */  slt        $at, $t1, $t9
    /* D5898 800C68E8 00007012 */  mflo       $t6
    /* D589C 800C68EC 016E7823 */  subu       $t7, $t3, $t6
    /* D58A0 800C68F0 10200086 */  beqz       $at, .L800C6B0C_D5ABC
    /* D58A4 800C68F4 A20F0009 */   sb        $t7, 0x9($s0)
    /* D58A8 800C68F8 0C000E38 */  jal        func_800038E0_44E0
    /* D58AC 800C68FC 00000000 */   nop
    /* D58B0 800C6900 24010007 */  addiu      $at, $zero, 0x7
    /* D58B4 800C6904 0041001A */  div        $zero, $v0, $at
    /* D58B8 800C6908 0000C010 */  mfhi       $t8
    /* D58BC 800C690C 920C000B */  lbu        $t4, 0xB($s0)
    /* D58C0 800C6910 270A0007 */  addiu      $t2, $t8, 0x7
    /* D58C4 800C6914 920B000A */  lbu        $t3, 0xA($s0)
    /* D58C8 800C6918 014C0019 */  multu      $t2, $t4
    /* D58CC 800C691C 00006812 */  mflo       $t5
    /* D58D0 800C6920 016D7023 */  subu       $t6, $t3, $t5
    /* D58D4 800C6924 10000079 */  b          .L800C6B0C_D5ABC
    /* D58D8 800C6928 A20E000A */   sb        $t6, 0xA($s0)
  .L800C692C_D58DC:
    /* D58DC 800C692C 02C3001A */  div        $zero, $s6, $v1
    /* D58E0 800C6930 14600002 */  bnez       $v1, .L800C693C_D58EC
    /* D58E4 800C6934 00000000 */   nop
    /* D58E8 800C6938 0007000D */  break      7
  .L800C693C_D58EC:
    /* D58EC 800C693C 2401FFFF */  addiu      $at, $zero, -0x1
    /* D58F0 800C6940 14610004 */  bne        $v1, $at, .L800C6954_D5904
    /* D58F4 800C6944 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D58F8 800C6948 16C10002 */  bne        $s6, $at, .L800C6954_D5904
    /* D58FC 800C694C 00000000 */   nop
    /* D5900 800C6950 0006000D */  break      6
  .L800C6954_D5904:
    /* D5904 800C6954 00007812 */  mflo       $t7
    /* D5908 800C6958 008F082A */  slt        $at, $a0, $t7
    /* D590C 800C695C 10200030 */  beqz       $at, .L800C6A20_D59D0
    /* D5910 800C6960 00000000 */   nop
    /* D5914 800C6964 0C000E38 */  jal        func_800038E0_44E0
    /* D5918 800C6968 00000000 */   nop
    /* D591C 800C696C 02B60019 */  multu      $s5, $s6
    /* D5920 800C6970 24010003 */  addiu      $at, $zero, 0x3
    /* D5924 800C6974 920A000B */  lbu        $t2, 0xB($s0)
    /* D5928 800C6978 00004812 */  mflo       $t1
    /* D592C 800C697C 02E99821 */  addu       $s3, $s7, $t1
    /* D5930 800C6980 26710008 */  addiu      $s1, $s3, 0x8
    /* D5934 800C6984 0041001A */  div        $zero, $v0, $at
    /* D5938 800C6988 0000C810 */  mfhi       $t9
    /* D593C 800C698C 27380002 */  addiu      $t8, $t9, 0x2
    /* D5940 800C6990 962B0000 */  lhu        $t3, 0x0($s1)
    /* D5944 800C6994 030A0019 */  multu      $t8, $t2
    /* D5948 800C6998 00006012 */  mflo       $t4
    /* D594C 800C699C 016C6821 */  addu       $t5, $t3, $t4
    /* D5950 800C69A0 0C000E38 */  jal        func_800038E0_44E0
    /* D5954 800C69A4 A62D0000 */   sh        $t5, 0x0($s1)
    /* D5958 800C69A8 24010005 */  addiu      $at, $zero, 0x5
    /* D595C 800C69AC 0041001A */  div        $zero, $v0, $at
    /* D5960 800C69B0 00007810 */  mfhi       $t7
    /* D5964 800C69B4 9203000B */  lbu        $v1, 0xB($s0)
    /* D5968 800C69B8 25E90003 */  addiu      $t1, $t7, 0x3
    /* D596C 800C69BC 920E0009 */  lbu        $t6, 0x9($s0)
    /* D5970 800C69C0 01230019 */  multu      $t1, $v1
    /* D5974 800C69C4 00035080 */  sll        $t2, $v1, 2
    /* D5978 800C69C8 920B000A */  lbu        $t3, 0xA($s0)
    /* D597C 800C69CC 01435023 */  subu       $t2, $t2, $v1
    /* D5980 800C69D0 000A50C0 */  sll        $t2, $t2, 3
    /* D5984 800C69D4 01435021 */  addu       $t2, $t2, $v1
    /* D5988 800C69D8 014B082A */  slt        $at, $t2, $t3
    /* D598C 800C69DC 0000C812 */  mflo       $t9
    /* D5990 800C69E0 01D9C023 */  subu       $t8, $t6, $t9
    /* D5994 800C69E4 10200049 */  beqz       $at, .L800C6B0C_D5ABC
    /* D5998 800C69E8 A2180009 */   sb        $t8, 0x9($s0)
    /* D599C 800C69EC 0C000E38 */  jal        func_800038E0_44E0
    /* D59A0 800C69F0 00000000 */   nop
    /* D59A4 800C69F4 2401000E */  addiu      $at, $zero, 0xE
    /* D59A8 800C69F8 0041001A */  div        $zero, $v0, $at
    /* D59AC 800C69FC 00006010 */  mfhi       $t4
    /* D59B0 800C6A00 920F000B */  lbu        $t7, 0xB($s0)
    /* D59B4 800C6A04 258D000C */  addiu      $t5, $t4, 0xC
    /* D59B8 800C6A08 920E000A */  lbu        $t6, 0xA($s0)
    /* D59BC 800C6A0C 01AF0019 */  multu      $t5, $t7
    /* D59C0 800C6A10 00004812 */  mflo       $t1
    /* D59C4 800C6A14 01C9C823 */  subu       $t9, $t6, $t1
    /* D59C8 800C6A18 1000003C */  b          .L800C6B0C_D5ABC
    /* D59CC 800C6A1C A219000A */   sb        $t9, 0xA($s0)
  .L800C6A20_D59D0:
    /* D59D0 800C6A20 0C000E38 */  jal        func_800038E0_44E0
    /* D59D4 800C6A24 00000000 */   nop
    /* D59D8 800C6A28 02B60019 */  multu      $s5, $s6
    /* D59DC 800C6A2C 920C000B */  lbu        $t4, 0xB($s0)
    /* D59E0 800C6A30 0000C012 */  mflo       $t8
    /* D59E4 800C6A34 02F89821 */  addu       $s3, $s7, $t8
    /* D59E8 800C6A38 26710008 */  addiu      $s1, $s3, 0x8
    /* D59EC 800C6A3C 04410004 */  bgez       $v0, .L800C6A50_D5A00
    /* D59F0 800C6A40 304A0001 */   andi      $t2, $v0, 0x1
    /* D59F4 800C6A44 11400002 */  beqz       $t2, .L800C6A50_D5A00
    /* D59F8 800C6A48 00000000 */   nop
    /* D59FC 800C6A4C 254AFFFE */  addiu      $t2, $t2, -0x2
  .L800C6A50_D5A00:
    /* D5A00 800C6A50 254B0002 */  addiu      $t3, $t2, 0x2
    /* D5A04 800C6A54 016C0019 */  multu      $t3, $t4
    /* D5A08 800C6A58 962F0000 */  lhu        $t7, 0x0($s1)
    /* D5A0C 800C6A5C 00006812 */  mflo       $t5
    /* D5A10 800C6A60 01ED7021 */  addu       $t6, $t7, $t5
    /* D5A14 800C6A64 A62E0000 */  sh         $t6, 0x0($s1)
    /* D5A18 800C6A68 9203000B */  lbu        $v1, 0xB($s0)
    /* D5A1C 800C6A6C 9219000A */  lbu        $t9, 0xA($s0)
    /* D5A20 800C6A70 00034880 */  sll        $t1, $v1, 2
    /* D5A24 800C6A74 01234823 */  subu       $t1, $t1, $v1
    /* D5A28 800C6A78 000948C0 */  sll        $t1, $t1, 3
    /* D5A2C 800C6A7C 01234821 */  addu       $t1, $t1, $v1
    /* D5A30 800C6A80 0139082A */  slt        $at, $t1, $t9
    /* D5A34 800C6A84 5020000E */  beql       $at, $zero, .L800C6AC0_D5A70
    /* D5A38 800C6A88 000368C0 */   sll       $t5, $v1, 3
    /* D5A3C 800C6A8C 0C000E38 */  jal        func_800038E0_44E0
    /* D5A40 800C6A90 00000000 */   nop
    /* D5A44 800C6A94 2401000E */  addiu      $at, $zero, 0xE
    /* D5A48 800C6A98 0041001A */  div        $zero, $v0, $at
    /* D5A4C 800C6A9C 00005010 */  mfhi       $t2
    /* D5A50 800C6AA0 9203000B */  lbu        $v1, 0xB($s0)
    /* D5A54 800C6AA4 254B000C */  addiu      $t3, $t2, 0xC
    /* D5A58 800C6AA8 9218000A */  lbu        $t8, 0xA($s0)
    /* D5A5C 800C6AAC 01630019 */  multu      $t3, $v1
    /* D5A60 800C6AB0 00006012 */  mflo       $t4
    /* D5A64 800C6AB4 030C7823 */  subu       $t7, $t8, $t4
    /* D5A68 800C6AB8 A20F000A */  sb         $t7, 0xA($s0)
    /* D5A6C 800C6ABC 000368C0 */  sll        $t5, $v1, 3
  .L800C6AC0_D5A70:
    /* D5A70 800C6AC0 920E0009 */  lbu        $t6, 0x9($s0)
    /* D5A74 800C6AC4 01A36821 */  addu       $t5, $t5, $v1
    /* D5A78 800C6AC8 000D6880 */  sll        $t5, $t5, 2
    /* D5A7C 800C6ACC 01A36821 */  addu       $t5, $t5, $v1
    /* D5A80 800C6AD0 01AE082A */  slt        $at, $t5, $t6
    /* D5A84 800C6AD4 5020000E */  beql       $at, $zero, .L800C6B10_D5AC0
    /* D5A88 800C6AD8 9284000C */   lbu       $a0, 0xC($s4)
    /* D5A8C 800C6ADC 0C000E38 */  jal        func_800038E0_44E0
    /* D5A90 800C6AE0 00000000 */   nop
    /* D5A94 800C6AE4 2401000F */  addiu      $at, $zero, 0xF
    /* D5A98 800C6AE8 0041001A */  div        $zero, $v0, $at
    /* D5A9C 800C6AEC 00004810 */  mfhi       $t1
    /* D5AA0 800C6AF0 920A000B */  lbu        $t2, 0xB($s0)
    /* D5AA4 800C6AF4 25390016 */  addiu      $t9, $t1, 0x16
    /* D5AA8 800C6AF8 92180009 */  lbu        $t8, 0x9($s0)
    /* D5AAC 800C6AFC 032A0019 */  multu      $t9, $t2
    /* D5AB0 800C6B00 00005812 */  mflo       $t3
    /* D5AB4 800C6B04 030B6023 */  subu       $t4, $t8, $t3
    /* D5AB8 800C6B08 A20C0009 */  sb         $t4, 0x9($s0)
  .L800C6B0C_D5ABC:
    /* D5ABC 800C6B0C 9284000C */  lbu        $a0, 0xC($s4)
  .L800C6B10_D5AC0:
    /* D5AC0 800C6B10 240D0023 */  addiu      $t5, $zero, 0x23
    /* D5AC4 800C6B14 28810003 */  slti       $at, $a0, 0x3
    /* D5AC8 800C6B18 54200072 */  bnel       $at, $zero, .L800C6CE4_D5C94
    /* D5ACC 800C6B1C 922F0002 */   lbu       $t7, 0x2($s1)
    /* D5AD0 800C6B20 920F000B */  lbu        $t7, 0xB($s0)
    /* D5AD4 800C6B24 92830006 */  lbu        $v1, 0x6($s4)
    /* D5AD8 800C6B28 92190000 */  lbu        $t9, 0x0($s0)
    /* D5ADC 800C6B2C 01AF001A */  div        $zero, $t5, $t7
    /* D5AE0 800C6B30 00007012 */  mflo       $t6
    /* D5AE4 800C6B34 01C44023 */  subu       $t0, $t6, $a0
    /* D5AE8 800C6B38 310900FF */  andi       $t1, $t0, 0xFF
    /* D5AEC 800C6B3C 00795023 */  subu       $t2, $v1, $t9
    /* D5AF0 800C6B40 0149001A */  div        $zero, $t2, $t1
    /* D5AF4 800C6B44 01201025 */  or         $v0, $t1, $zero
    /* D5AF8 800C6B48 0000C012 */  mflo       $t8
    /* D5AFC 800C6B4C 00785823 */  subu       $t3, $v1, $t8
    /* D5B00 800C6B50 A28B0006 */  sb         $t3, 0x6($s4)
    /* D5B04 800C6B54 920C0001 */  lbu        $t4, 0x1($s0)
    /* D5B08 800C6B58 92850007 */  lbu        $a1, 0x7($s4)
    /* D5B0C 800C6B5C 15E00002 */  bnez       $t7, .L800C6B68_D5B18
    /* D5B10 800C6B60 00000000 */   nop
    /* D5B14 800C6B64 0007000D */  break      7
  .L800C6B68_D5B18:
    /* D5B18 800C6B68 2401FFFF */  addiu      $at, $zero, -0x1
    /* D5B1C 800C6B6C 15E10004 */  bne        $t7, $at, .L800C6B80_D5B30
    /* D5B20 800C6B70 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D5B24 800C6B74 15A10002 */  bne        $t5, $at, .L800C6B80_D5B30
    /* D5B28 800C6B78 00000000 */   nop
    /* D5B2C 800C6B7C 0006000D */  break      6
  .L800C6B80_D5B30:
    /* D5B30 800C6B80 00AC6823 */  subu       $t5, $a1, $t4
    /* D5B34 800C6B84 01A2001A */  div        $zero, $t5, $v0
    /* D5B38 800C6B88 00007812 */  mflo       $t7
    /* D5B3C 800C6B8C 00AF7023 */  subu       $t6, $a1, $t7
    /* D5B40 800C6B90 01204025 */  or         $t0, $t1, $zero
    /* D5B44 800C6B94 A28E0007 */  sb         $t6, 0x7($s4)
    /* D5B48 800C6B98 92090002 */  lbu        $t1, 0x2($s0)
    /* D5B4C 800C6B9C 92860008 */  lbu        $a2, 0x8($s4)
    /* D5B50 800C6BA0 14400002 */  bnez       $v0, .L800C6BAC_D5B5C
    /* D5B54 800C6BA4 00000000 */   nop
    /* D5B58 800C6BA8 0007000D */  break      7
  .L800C6BAC_D5B5C:
    /* D5B5C 800C6BAC 2401FFFF */  addiu      $at, $zero, -0x1
    /* D5B60 800C6BB0 14410004 */  bne        $v0, $at, .L800C6BC4_D5B74
    /* D5B64 800C6BB4 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D5B68 800C6BB8 15410002 */  bne        $t2, $at, .L800C6BC4_D5B74
    /* D5B6C 800C6BBC 00000000 */   nop
    /* D5B70 800C6BC0 0006000D */  break      6
  .L800C6BC4_D5B74:
    /* D5B74 800C6BC4 00C9C823 */  subu       $t9, $a2, $t1
    /* D5B78 800C6BC8 0322001A */  div        $zero, $t9, $v0
    /* D5B7C 800C6BCC 00005012 */  mflo       $t2
    /* D5B80 800C6BD0 00CAC023 */  subu       $t8, $a2, $t2
    /* D5B84 800C6BD4 A2980008 */  sb         $t8, 0x8($s4)
    /* D5B88 800C6BD8 920B0003 */  lbu        $t3, 0x3($s0)
    /* D5B8C 800C6BDC 92870009 */  lbu        $a3, 0x9($s4)
    /* D5B90 800C6BE0 14400002 */  bnez       $v0, .L800C6BEC_D5B9C
    /* D5B94 800C6BE4 00000000 */   nop
    /* D5B98 800C6BE8 0007000D */  break      7
  .L800C6BEC_D5B9C:
    /* D5B9C 800C6BEC 2401FFFF */  addiu      $at, $zero, -0x1
    /* D5BA0 800C6BF0 14410004 */  bne        $v0, $at, .L800C6C04_D5BB4
    /* D5BA4 800C6BF4 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D5BA8 800C6BF8 15A10002 */  bne        $t5, $at, .L800C6C04_D5BB4
    /* D5BAC 800C6BFC 00000000 */   nop
    /* D5BB0 800C6C00 0006000D */  break      6
  .L800C6C04_D5BB4:
    /* D5BB4 800C6C04 00EB6023 */  subu       $t4, $a3, $t3
    /* D5BB8 800C6C08 0182001A */  div        $zero, $t4, $v0
    /* D5BBC 800C6C0C 00006812 */  mflo       $t5
    /* D5BC0 800C6C10 00ED7823 */  subu       $t7, $a3, $t5
    /* D5BC4 800C6C14 A28F0009 */  sb         $t7, 0x9($s4)
    /* D5BC8 800C6C18 920E0004 */  lbu        $t6, 0x4($s0)
    /* D5BCC 800C6C1C 9283000A */  lbu        $v1, 0xA($s4)
    /* D5BD0 800C6C20 14400002 */  bnez       $v0, .L800C6C2C_D5BDC
    /* D5BD4 800C6C24 00000000 */   nop
    /* D5BD8 800C6C28 0007000D */  break      7
  .L800C6C2C_D5BDC:
    /* D5BDC 800C6C2C 2401FFFF */  addiu      $at, $zero, -0x1
    /* D5BE0 800C6C30 14410004 */  bne        $v0, $at, .L800C6C44_D5BF4
    /* D5BE4 800C6C34 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D5BE8 800C6C38 17210002 */  bne        $t9, $at, .L800C6C44_D5BF4
    /* D5BEC 800C6C3C 00000000 */   nop
    /* D5BF0 800C6C40 0006000D */  break      6
  .L800C6C44_D5BF4:
    /* D5BF4 800C6C44 006E4823 */  subu       $t1, $v1, $t6
    /* D5BF8 800C6C48 0122001A */  div        $zero, $t1, $v0
    /* D5BFC 800C6C4C 0000C812 */  mflo       $t9
    /* D5C00 800C6C50 00795023 */  subu       $t2, $v1, $t9
    /* D5C04 800C6C54 A28A000A */  sb         $t2, 0xA($s4)
    /* D5C08 800C6C58 92180005 */  lbu        $t8, 0x5($s0)
    /* D5C0C 800C6C5C 9284000B */  lbu        $a0, 0xB($s4)
    /* D5C10 800C6C60 14400002 */  bnez       $v0, .L800C6C6C_D5C1C
    /* D5C14 800C6C64 00000000 */   nop
    /* D5C18 800C6C68 0007000D */  break      7
  .L800C6C6C_D5C1C:
    /* D5C1C 800C6C6C 2401FFFF */  addiu      $at, $zero, -0x1
    /* D5C20 800C6C70 14410004 */  bne        $v0, $at, .L800C6C84_D5C34
    /* D5C24 800C6C74 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D5C28 800C6C78 15810002 */  bne        $t4, $at, .L800C6C84_D5C34
    /* D5C2C 800C6C7C 00000000 */   nop
    /* D5C30 800C6C80 0006000D */  break      6
  .L800C6C84_D5C34:
    /* D5C34 800C6C84 00985823 */  subu       $t3, $a0, $t8
    /* D5C38 800C6C88 0162001A */  div        $zero, $t3, $v0
    /* D5C3C 800C6C8C 14400002 */  bnez       $v0, .L800C6C98_D5C48
    /* D5C40 800C6C90 00000000 */   nop
    /* D5C44 800C6C94 0007000D */  break      7
  .L800C6C98_D5C48:
    /* D5C48 800C6C98 2401FFFF */  addiu      $at, $zero, -0x1
    /* D5C4C 800C6C9C 14410004 */  bne        $v0, $at, .L800C6CB0_D5C60
    /* D5C50 800C6CA0 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D5C54 800C6CA4 15210002 */  bne        $t1, $at, .L800C6CB0_D5C60
    /* D5C58 800C6CA8 00000000 */   nop
    /* D5C5C 800C6CAC 0006000D */  break      6
  .L800C6CB0_D5C60:
    /* D5C60 800C6CB0 00006012 */  mflo       $t4
    /* D5C64 800C6CB4 008C6823 */  subu       $t5, $a0, $t4
    /* D5C68 800C6CB8 A28D000B */  sb         $t5, 0xB($s4)
    /* D5C6C 800C6CBC 14400002 */  bnez       $v0, .L800C6CC8_D5C78
    /* D5C70 800C6CC0 00000000 */   nop
    /* D5C74 800C6CC4 0007000D */  break      7
  .L800C6CC8_D5C78:
    /* D5C78 800C6CC8 2401FFFF */  addiu      $at, $zero, -0x1
    /* D5C7C 800C6CCC 14410004 */  bne        $v0, $at, .L800C6CE0_D5C90
    /* D5C80 800C6CD0 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D5C84 800C6CD4 15610002 */  bne        $t3, $at, .L800C6CE0_D5C90
    /* D5C88 800C6CD8 00000000 */   nop
    /* D5C8C 800C6CDC 0006000D */  break      6
  .L800C6CE0_D5C90:
    /* D5C90 800C6CE0 922F0002 */  lbu        $t7, 0x2($s1)
  .L800C6CE4_D5C94:
    /* D5C94 800C6CE4 922E0005 */  lbu        $t6, 0x5($s1)
    /* D5C98 800C6CE8 92390003 */  lbu        $t9, 0x3($s1)
    /* D5C9C 800C6CEC 922A0006 */  lbu        $t2, 0x6($s1)
    /* D5CA0 800C6CF0 922B0004 */  lbu        $t3, 0x4($s1)
    /* D5CA4 800C6CF4 922C0007 */  lbu        $t4, 0x7($s1)
    /* D5CA8 800C6CF8 01EE4821 */  addu       $t1, $t7, $t6
    /* D5CAC 800C6CFC 032AC021 */  addu       $t8, $t9, $t2
    /* D5CB0 800C6D00 016C6821 */  addu       $t5, $t3, $t4
    /* D5CB4 800C6D04 A2290002 */  sb         $t1, 0x2($s1)
    /* D5CB8 800C6D08 A2380003 */  sb         $t8, 0x3($s1)
    /* D5CBC 800C6D0C A22D0004 */  sb         $t5, 0x4($s1)
    /* D5CC0 800C6D10 920F0006 */  lbu        $t7, 0x6($s0)
    /* D5CC4 800C6D14 24010010 */  addiu      $at, $zero, 0x10
    /* D5CC8 800C6D18 25EE0001 */  addiu      $t6, $t7, 0x1
    /* D5CCC 800C6D1C 31C900FF */  andi       $t1, $t6, 0xFF
    /* D5CD0 800C6D20 15210002 */  bne        $t1, $at, .L800C6D2C_D5CDC
    /* D5CD4 800C6D24 A20E0006 */   sb        $t6, 0x6($s0)
    /* D5CD8 800C6D28 A2000006 */  sb         $zero, 0x6($s0)
  .L800C6D2C_D5CDC:
    /* D5CDC 800C6D2C 93D9000C */  lbu        $t9, 0xC($fp)
    /* D5CE0 800C6D30 272A0001 */  addiu      $t2, $t9, 0x1
    /* D5CE4 800C6D34 A3CA000C */  sb         $t2, 0xC($fp)
    /* D5CE8 800C6D38 86700004 */  lh         $s0, 0x4($s3)
  .L800C6D3C_D5CEC:
    /* D5CEC 800C6D3C 2401FFFB */  addiu      $at, $zero, -0x5
    /* D5CF0 800C6D40 12010003 */  beq        $s0, $at, .L800C6D50_D5D00
    /* D5CF4 800C6D44 2401FFFA */   addiu     $at, $zero, -0x6
    /* D5CF8 800C6D48 1601FE20 */  bne        $s0, $at, .L800C65CC_D557C
    /* D5CFC 800C6D4C 00000000 */   nop
  .L800C6D50_D5D00:
    /* D5D00 800C6D50 8FBF003C */  lw         $ra, 0x3C($sp)
  .L800C6D54_D5D04:
    /* D5D04 800C6D54 8FB00018 */  lw         $s0, 0x18($sp)
    /* D5D08 800C6D58 8FB1001C */  lw         $s1, 0x1C($sp)
    /* D5D0C 800C6D5C 8FB20020 */  lw         $s2, 0x20($sp)
    /* D5D10 800C6D60 8FB30024 */  lw         $s3, 0x24($sp)
    /* D5D14 800C6D64 8FB40028 */  lw         $s4, 0x28($sp)
    /* D5D18 800C6D68 8FB5002C */  lw         $s5, 0x2C($sp)
    /* D5D1C 800C6D6C 8FB60030 */  lw         $s6, 0x30($sp)
    /* D5D20 800C6D70 8FB70034 */  lw         $s7, 0x34($sp)
    /* D5D24 800C6D74 8FBE0038 */  lw         $fp, 0x38($sp)
    /* D5D28 800C6D78 03E00008 */  jr         $ra
    /* D5D2C 800C6D7C 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_800C6558_D5508
