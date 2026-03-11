nonmatching func_800B753C_C64EC, 0xF94

glabel func_800B753C_C64EC
    /* C64EC 800B753C 27BDECB8 */  addiu      $sp, $sp, -0x1348
    /* C64F0 800B7540 AFBF002C */  sw         $ra, 0x2C($sp)
    /* C64F4 800B7544 AFBE0028 */  sw         $fp, 0x28($sp)
    /* C64F8 800B7548 AFB70024 */  sw         $s7, 0x24($sp)
    /* C64FC 800B754C AFB60020 */  sw         $s6, 0x20($sp)
    /* C6500 800B7550 AFB5001C */  sw         $s5, 0x1C($sp)
    /* C6504 800B7554 AFB40018 */  sw         $s4, 0x18($sp)
    /* C6508 800B7558 AFB30014 */  sw         $s3, 0x14($sp)
    /* C650C 800B755C AFB20010 */  sw         $s2, 0x10($sp)
    /* C6510 800B7560 AFB1000C */  sw         $s1, 0xC($sp)
    /* C6514 800B7564 AFB00008 */  sw         $s0, 0x8($sp)
    /* C6518 800B7568 0000F825 */  or         $ra, $zero, $zero
    /* C651C 800B756C 27A2011C */  addiu      $v0, $sp, 0x11C
    /* C6520 800B7570 27A3012C */  addiu      $v1, $sp, 0x12C
    /* C6524 800B7574 2405FFFF */  addiu      $a1, $zero, -0x1
  .L800B7578_C6528:
    /* C6528 800B7578 24420002 */  addiu      $v0, $v0, 0x2
    /* C652C 800B757C 0043082B */  sltu       $at, $v0, $v1
    /* C6530 800B7580 1420FFFD */  bnez       $at, .L800B7578_C6528
    /* C6534 800B7584 A445FFFE */   sh        $a1, -0x2($v0)
    /* C6538 800B7588 3C148006 */  lui        $s4, %hi(D_8005BB2C)
    /* C653C 800B758C 2694BB2C */  addiu      $s4, $s4, %lo(D_8005BB2C)
    /* C6540 800B7590 8E830000 */  lw         $v1, 0x0($s4)
    /* C6544 800B7594 3C188025 */  lui        $t8, %hi(D_80255080)
    /* C6548 800B7598 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* C654C 800B759C 246E0008 */  addiu      $t6, $v1, 0x8
    /* C6550 800B75A0 AE8E0000 */  sw         $t6, 0x0($s4)
    /* C6554 800B75A4 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* C6558 800B75A8 27185080 */  addiu      $t8, $t8, %lo(D_80255080)
    /* C655C 800B75AC 0301C824 */  and        $t9, $t8, $at
    /* C6560 800B75B0 3C0FFD10 */  lui        $t7, (0xFD100000 >> 16)
    /* C6564 800B75B4 AC6F0000 */  sw         $t7, 0x0($v1)
    /* C6568 800B75B8 AC790004 */  sw         $t9, 0x4($v1)
    /* C656C 800B75BC 8E830000 */  lw         $v1, 0x0($s4)
    /* C6570 800B75C0 3C0CE800 */  lui        $t4, (0xE8000000 >> 16)
    /* C6574 800B75C4 3C18F500 */  lui        $t8, (0xF5000100 >> 16)
    /* C6578 800B75C8 246E0008 */  addiu      $t6, $v1, 0x8
    /* C657C 800B75CC AE8E0000 */  sw         $t6, 0x0($s4)
    /* C6580 800B75D0 AC600004 */  sw         $zero, 0x4($v1)
    /* C6584 800B75D4 AC6C0000 */  sw         $t4, 0x0($v1)
    /* C6588 800B75D8 8E830000 */  lw         $v1, 0x0($s4)
    /* C658C 800B75DC 37180100 */  ori        $t8, $t8, (0xF5000100 & 0xFFFF)
    /* C6590 800B75E0 3C190700 */  lui        $t9, (0x7000000 >> 16)
    /* C6594 800B75E4 246F0008 */  addiu      $t7, $v1, 0x8
    /* C6598 800B75E8 AE8F0000 */  sw         $t7, 0x0($s4)
    /* C659C 800B75EC AC790004 */  sw         $t9, 0x4($v1)
    /* C65A0 800B75F0 AC780000 */  sw         $t8, 0x0($v1)
    /* C65A4 800B75F4 8E830000 */  lw         $v1, 0x0($s4)
    /* C65A8 800B75F8 3C0DE600 */  lui        $t5, (0xE6000000 >> 16)
    /* C65AC 800B75FC 3C19073F */  lui        $t9, (0x73FC000 >> 16)
    /* C65B0 800B7600 246E0008 */  addiu      $t6, $v1, 0x8
    /* C65B4 800B7604 AE8E0000 */  sw         $t6, 0x0($s4)
    /* C65B8 800B7608 AC600004 */  sw         $zero, 0x4($v1)
    /* C65BC 800B760C AC6D0000 */  sw         $t5, 0x0($v1)
    /* C65C0 800B7610 8E830000 */  lw         $v1, 0x0($s4)
    /* C65C4 800B7614 3739C000 */  ori        $t9, $t9, (0x73FC000 & 0xFFFF)
    /* C65C8 800B7618 3C18F000 */  lui        $t8, (0xF0000000 >> 16)
    /* C65CC 800B761C 246F0008 */  addiu      $t7, $v1, 0x8
    /* C65D0 800B7620 AE8F0000 */  sw         $t7, 0x0($s4)
    /* C65D4 800B7624 AC790004 */  sw         $t9, 0x4($v1)
    /* C65D8 800B7628 AC780000 */  sw         $t8, 0x0($v1)
    /* C65DC 800B762C 8E830000 */  lw         $v1, 0x0($s4)
    /* C65E0 800B7630 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
    /* C65E4 800B7634 3C078015 */  lui        $a3, %hi(D_8014FD28)
    /* C65E8 800B7638 246E0008 */  addiu      $t6, $v1, 0x8
    /* C65EC 800B763C AE8E0000 */  sw         $t6, 0x0($s4)
    /* C65F0 800B7640 AC600004 */  sw         $zero, 0x4($v1)
    /* C65F4 800B7644 AC6F0000 */  sw         $t7, 0x0($v1)
    /* C65F8 800B7648 8E830000 */  lw         $v1, 0x0($s4)
    /* C65FC 800B764C 3C178015 */  lui        $s7, %hi(D_8014F8A8)
    /* C6600 800B7650 3C058006 */  lui        $a1, %hi(D_8005BB34)
    /* C6604 800B7654 24780008 */  addiu      $t8, $v1, 0x8
    /* C6608 800B7658 AE980000 */  sw         $t8, 0x0($s4)
    /* C660C 800B765C AC600004 */  sw         $zero, 0x4($v1)
    /* C6610 800B7660 AC6D0000 */  sw         $t5, 0x0($v1)
    /* C6614 800B7664 94E7FD28 */  lhu        $a3, %lo(D_8014FD28)($a3)
    /* C6618 800B7668 24A5BB34 */  addiu      $a1, $a1, %lo(D_8005BB34)
    /* C661C 800B766C 26F7F8A8 */  addiu      $s7, $s7, %lo(D_8014F8A8)
    /* C6620 800B7670 24E70001 */  addiu      $a3, $a3, 0x1
    /* C6624 800B7674 28E10090 */  slti       $at, $a3, 0x90
    /* C6628 800B7678 10200021 */  beqz       $at, .L800B7700_C66B0
    /* C662C 800B767C 27A6011C */   addiu     $a2, $sp, 0x11C
    /* C6630 800B7680 3C0E8015 */  lui        $t6, %hi(D_8014F8A8)
    /* C6634 800B7684 25CEF8A8 */  addiu      $t6, $t6, %lo(D_8014F8A8)
    /* C6638 800B7688 0007C8C0 */  sll        $t9, $a3, 3
    /* C663C 800B768C 032E1821 */  addu       $v1, $t9, $t6
    /* C6640 800B7690 90730004 */  lbu        $s3, 0x4($v1)
  .L800B7694_C6644:
    /* C6644 800B7694 27AE011C */  addiu      $t6, $sp, 0x11C
    /* C6648 800B7698 24630008 */  addiu      $v1, $v1, 0x8
    /* C664C 800B769C 06610003 */  bgez       $s3, .L800B76AC_C665C
    /* C6650 800B76A0 00132043 */   sra       $a0, $s3, 1
    /* C6654 800B76A4 26610001 */  addiu      $at, $s3, 0x1
    /* C6658 800B76A8 00012043 */  sra        $a0, $at, 1
  .L800B76AC_C665C:
    /* C665C 800B76AC 00047C00 */  sll        $t7, $a0, 16
    /* C6660 800B76B0 000F2403 */  sra        $a0, $t7, 16
    /* C6664 800B76B4 0004C840 */  sll        $t9, $a0, 1
    /* C6668 800B76B8 032E1021 */  addu       $v0, $t9, $t6
    /* C666C 800B76BC 844F0000 */  lh         $t7, 0x0($v0)
    /* C6670 800B76C0 0004C8C0 */  sll        $t9, $a0, 3
    /* C6674 800B76C4 0324C821 */  addu       $t9, $t9, $a0
    /* C6678 800B76C8 25F80001 */  addiu      $t8, $t7, 0x1
    /* C667C 800B76CC A4580000 */  sh         $t8, 0x0($v0)
    /* C6680 800B76D0 844E0000 */  lh         $t6, 0x0($v0)
    /* C6684 800B76D4 0019C940 */  sll        $t9, $t9, 5
    /* C6688 800B76D8 0324C821 */  addu       $t9, $t9, $a0
    /* C668C 800B76DC 0019C840 */  sll        $t9, $t9, 1
    /* C6690 800B76E0 000E7840 */  sll        $t7, $t6, 1
    /* C6694 800B76E4 032FC021 */  addu       $t8, $t9, $t7
    /* C6698 800B76E8 03B87021 */  addu       $t6, $sp, $t8
    /* C669C 800B76EC A5C7012C */  sh         $a3, 0x12C($t6)
    /* C66A0 800B76F0 24E70001 */  addiu      $a3, $a3, 0x1
    /* C66A4 800B76F4 28E10090 */  slti       $at, $a3, 0x90
    /* C66A8 800B76F8 5420FFE6 */  bnel       $at, $zero, .L800B7694_C6644
    /* C66AC 800B76FC 90730004 */   lbu       $s3, 0x4($v1)
  .L800B7700_C66B0:
    /* C66B0 800B7700 8E830000 */  lw         $v1, 0x0($s4)
    /* C66B4 800B7704 00002025 */  or         $a0, $zero, $zero
    /* C66B8 800B7708 00003825 */  or         $a3, $zero, $zero
    /* C66BC 800B770C 24790008 */  addiu      $t9, $v1, 0x8
    /* C66C0 800B7710 AE990000 */  sw         $t9, 0x0($s4)
    /* C66C4 800B7714 AC600004 */  sw         $zero, 0x4($v1)
    /* C66C8 800B7718 AC6C0000 */  sw         $t4, 0x0($v1)
  .L800B771C_C66CC:
    /* C66CC 800B771C AFA41340 */  sw         $a0, 0x1340($sp)
    /* C66D0 800B7720 AFA60050 */  sw         $a2, 0x50($sp)
    /* C66D4 800B7724 84CF0000 */  lh         $t7, 0x0($a2)
    /* C66D8 800B7728 2401FFFF */  addiu      $at, $zero, -0x1
    /* C66DC 800B772C 3C0EFD50 */  lui        $t6, (0xFD500000 >> 16)
    /* C66E0 800B7730 51E10172 */  beql       $t7, $at, .L800B7CFC_C6CAC
    /* C66E4 800B7734 8FA41340 */   lw        $a0, 0x1340($sp)
    /* C66E8 800B7738 8E830000 */  lw         $v1, 0x0($s4)
    /* C66EC 800B773C 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* C66F0 800B7740 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* C66F4 800B7744 24780008 */  addiu      $t8, $v1, 0x8
    /* C66F8 800B7748 AE980000 */  sw         $t8, 0x0($s4)
    /* C66FC 800B774C AC6E0000 */  sw         $t6, 0x0($v1)
    /* C6700 800B7750 8FB91340 */  lw         $t9, 0x1340($sp)
    /* C6704 800B7754 3C0E8022 */  lui        $t6, %hi(D_80224E80)
    /* C6708 800B7758 25CE4E80 */  addiu      $t6, $t6, %lo(D_80224E80)
    /* C670C 800B775C 00197AC0 */  sll        $t7, $t9, 11
    /* C6710 800B7760 25F84000 */  addiu      $t8, $t7, 0x4000
    /* C6714 800B7764 030EC821 */  addu       $t9, $t8, $t6
    /* C6718 800B7768 03217824 */  and        $t7, $t9, $at
    /* C671C 800B776C AC6F0004 */  sw         $t7, 0x4($v1)
    /* C6720 800B7770 8E830000 */  lw         $v1, 0x0($s4)
    /* C6724 800B7774 3C190700 */  lui        $t9, (0x7000000 >> 16)
    /* C6728 800B7778 3C0EF550 */  lui        $t6, (0xF5500000 >> 16)
    /* C672C 800B777C 24780008 */  addiu      $t8, $v1, 0x8
    /* C6730 800B7780 AE980000 */  sw         $t8, 0x0($s4)
    /* C6734 800B7784 AC790004 */  sw         $t9, 0x4($v1)
    /* C6738 800B7788 AC6E0000 */  sw         $t6, 0x0($v1)
    /* C673C 800B778C 8E830000 */  lw         $v1, 0x0($s4)
    /* C6740 800B7790 3C18E600 */  lui        $t8, (0xE6000000 >> 16)
    /* C6744 800B7794 3C19F300 */  lui        $t9, (0xF3000000 >> 16)
    /* C6748 800B7798 246F0008 */  addiu      $t7, $v1, 0x8
    /* C674C 800B779C AE8F0000 */  sw         $t7, 0x0($s4)
    /* C6750 800B77A0 AC600004 */  sw         $zero, 0x4($v1)
    /* C6754 800B77A4 AC780000 */  sw         $t8, 0x0($v1)
    /* C6758 800B77A8 8E830000 */  lw         $v1, 0x0($s4)
    /* C675C 800B77AC 3C0F073F */  lui        $t7, (0x73FF200 >> 16)
    /* C6760 800B77B0 35EFF200 */  ori        $t7, $t7, (0x73FF200 & 0xFFFF)
    /* C6764 800B77B4 246E0008 */  addiu      $t6, $v1, 0x8
    /* C6768 800B77B8 AE8E0000 */  sw         $t6, 0x0($s4)
    /* C676C 800B77BC AC6F0004 */  sw         $t7, 0x4($v1)
    /* C6770 800B77C0 AC790000 */  sw         $t9, 0x0($v1)
    /* C6774 800B77C4 8E830000 */  lw         $v1, 0x0($s4)
    /* C6778 800B77C8 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
    /* C677C 800B77CC 3C0FF548 */  lui        $t7, (0xF5480800 >> 16)
    /* C6780 800B77D0 24780008 */  addiu      $t8, $v1, 0x8
    /* C6784 800B77D4 AE980000 */  sw         $t8, 0x0($s4)
    /* C6788 800B77D8 AC600004 */  sw         $zero, 0x4($v1)
    /* C678C 800B77DC AC6E0000 */  sw         $t6, 0x0($v1)
    /* C6790 800B77E0 8E830000 */  lw         $v1, 0x0($s4)
    /* C6794 800B77E4 35EF0800 */  ori        $t7, $t7, (0xF5480800 & 0xFFFF)
    /* C6798 800B77E8 3C0EF200 */  lui        $t6, (0xF2000000 >> 16)
    /* C679C 800B77EC 24790008 */  addiu      $t9, $v1, 0x8
    /* C67A0 800B77F0 AE990000 */  sw         $t9, 0x0($s4)
    /* C67A4 800B77F4 AC600004 */  sw         $zero, 0x4($v1)
    /* C67A8 800B77F8 AC6F0000 */  sw         $t7, 0x0($v1)
    /* C67AC 800B77FC 8E830000 */  lw         $v1, 0x0($s4)
    /* C67B0 800B7800 3C190007 */  lui        $t9, (0x7C0FC >> 16)
    /* C67B4 800B7804 3739C0FC */  ori        $t9, $t9, (0x7C0FC & 0xFFFF)
    /* C67B8 800B7808 24780008 */  addiu      $t8, $v1, 0x8
    /* C67BC 800B780C AE980000 */  sw         $t8, 0x0($s4)
    /* C67C0 800B7810 AC790004 */  sw         $t9, 0x4($v1)
    /* C67C4 800B7814 AC6E0000 */  sw         $t6, 0x0($v1)
    /* C67C8 800B7818 8FAF0050 */  lw         $t7, 0x50($sp)
    /* C67CC 800B781C 0000F025 */  or         $fp, $zero, $zero
    /* C67D0 800B7820 85E20000 */  lh         $v0, 0x0($t7)
    /* C67D4 800B7824 24420001 */  addiu      $v0, $v0, 0x1
    /* C67D8 800B7828 0002C400 */  sll        $t8, $v0, 16
    /* C67DC 800B782C 00187403 */  sra        $t6, $t8, 16
    /* C67E0 800B7830 59C00132 */  blezl      $t6, .L800B7CFC_C6CAC
    /* C67E4 800B7834 8FA41340 */   lw        $a0, 0x1340($sp)
    /* C67E8 800B7838 A7AE0116 */  sh         $t6, 0x116($sp)
  .L800B783C_C67EC:
    /* C67EC 800B783C 87A20116 */  lh         $v0, 0x116($sp)
    /* C67F0 800B7840 8FB91340 */  lw         $t9, 0x1340($sp)
    /* C67F4 800B7844 87B50116 */  lh         $s5, 0x116($sp)
    /* C67F8 800B7848 28410009 */  slti       $at, $v0, 0x9
    /* C67FC 800B784C 14200003 */  bnez       $at, .L800B785C_C680C
    /* C6800 800B7850 001978C0 */   sll       $t7, $t9, 3
    /* C6804 800B7854 10000001 */  b          .L800B785C_C680C
    /* C6808 800B7858 24150008 */   addiu     $s5, $zero, 0x8
  .L800B785C_C680C:
    /* C680C 800B785C 1AA000AF */  blez       $s5, .L800B7B1C_C6ACC
    /* C6810 800B7860 01F97821 */   addu      $t7, $t7, $t9
    /* C6814 800B7864 000F7940 */  sll        $t7, $t7, 5
    /* C6818 800B7868 01F97821 */  addu       $t7, $t7, $t9
    /* C681C 800B786C 000F7840 */  sll        $t7, $t7, 1
    /* C6820 800B7870 27B8012C */  addiu      $t8, $sp, 0x12C
    /* C6824 800B7874 32A20001 */  andi       $v0, $s5, 0x1
    /* C6828 800B7878 10400039 */  beqz       $v0, .L800B7960_C6910
    /* C682C 800B787C 01F84021 */   addu      $t0, $t7, $t8
    /* C6830 800B7880 001E7040 */  sll        $t6, $fp, 1
    /* C6834 800B7884 010EC821 */  addu       $t9, $t0, $t6
    /* C6838 800B7888 87240000 */  lh         $a0, 0x0($t9)
    /* C683C 800B788C 8CB80000 */  lw         $t8, 0x0($a1)
    /* C6840 800B7890 24070001 */  addiu      $a3, $zero, 0x1
    /* C6844 800B7894 000478C0 */  sll        $t7, $a0, 3
    /* C6848 800B7898 02EF1021 */  addu       $v0, $s7, $t7
    /* C684C 800B789C 8C4E0000 */  lw         $t6, 0x0($v0)
    /* C6850 800B78A0 8DC10000 */  lw         $at, 0x0($t6)
    /* C6854 800B78A4 AF010000 */  sw         $at, 0x0($t8)
    /* C6858 800B78A8 8DCF0004 */  lw         $t7, 0x4($t6)
    /* C685C 800B78AC AF0F0004 */  sw         $t7, 0x4($t8)
    /* C6860 800B78B0 8DC10008 */  lw         $at, 0x8($t6)
    /* C6864 800B78B4 AF010008 */  sw         $at, 0x8($t8)
    /* C6868 800B78B8 8DCF000C */  lw         $t7, 0xC($t6)
    /* C686C 800B78BC AF0F000C */  sw         $t7, 0xC($t8)
    /* C6870 800B78C0 8CB90000 */  lw         $t9, 0x0($a1)
    /* C6874 800B78C4 8C4F0000 */  lw         $t7, 0x0($v0)
    /* C6878 800B78C8 272E0010 */  addiu      $t6, $t9, 0x10
    /* C687C 800B78CC ACAE0000 */  sw         $t6, 0x0($a1)
    /* C6880 800B78D0 8DE10010 */  lw         $at, 0x10($t7)
    /* C6884 800B78D4 ADC10000 */  sw         $at, 0x0($t6)
    /* C6888 800B78D8 8DF80014 */  lw         $t8, 0x14($t7)
    /* C688C 800B78DC ADD80004 */  sw         $t8, 0x4($t6)
    /* C6890 800B78E0 8DE10018 */  lw         $at, 0x18($t7)
    /* C6894 800B78E4 ADC10008 */  sw         $at, 0x8($t6)
    /* C6898 800B78E8 8DF8001C */  lw         $t8, 0x1C($t7)
    /* C689C 800B78EC ADD8000C */  sw         $t8, 0xC($t6)
    /* C68A0 800B78F0 8CB90000 */  lw         $t9, 0x0($a1)
    /* C68A4 800B78F4 8C580000 */  lw         $t8, 0x0($v0)
    /* C68A8 800B78F8 272F0010 */  addiu      $t7, $t9, 0x10
    /* C68AC 800B78FC ACAF0000 */  sw         $t7, 0x0($a1)
    /* C68B0 800B7900 8F010120 */  lw         $at, 0x120($t8)
    /* C68B4 800B7904 ADE10000 */  sw         $at, 0x0($t7)
    /* C68B8 800B7908 8F0E0124 */  lw         $t6, 0x124($t8)
    /* C68BC 800B790C ADEE0004 */  sw         $t6, 0x4($t7)
    /* C68C0 800B7910 8F010128 */  lw         $at, 0x128($t8)
    /* C68C4 800B7914 ADE10008 */  sw         $at, 0x8($t7)
    /* C68C8 800B7918 8F0E012C */  lw         $t6, 0x12C($t8)
    /* C68CC 800B791C ADEE000C */  sw         $t6, 0xC($t7)
    /* C68D0 800B7920 8CB90000 */  lw         $t9, 0x0($a1)
    /* C68D4 800B7924 8C4E0000 */  lw         $t6, 0x0($v0)
    /* C68D8 800B7928 27380010 */  addiu      $t8, $t9, 0x10
    /* C68DC 800B792C ACB80000 */  sw         $t8, 0x0($a1)
    /* C68E0 800B7930 8DC10130 */  lw         $at, 0x130($t6)
    /* C68E4 800B7934 AF010000 */  sw         $at, 0x0($t8)
    /* C68E8 800B7938 8DCF0134 */  lw         $t7, 0x134($t6)
    /* C68EC 800B793C AF0F0004 */  sw         $t7, 0x4($t8)
    /* C68F0 800B7940 8DC10138 */  lw         $at, 0x138($t6)
    /* C68F4 800B7944 AF010008 */  sw         $at, 0x8($t8)
    /* C68F8 800B7948 8DCF013C */  lw         $t7, 0x13C($t6)
    /* C68FC 800B794C AF0F000C */  sw         $t7, 0xC($t8)
    /* C6900 800B7950 8CB90000 */  lw         $t9, 0x0($a1)
    /* C6904 800B7954 27380010 */  addiu      $t8, $t9, 0x10
    /* C6908 800B7958 10F5006F */  beq        $a3, $s5, .L800B7B18_C6AC8
    /* C690C 800B795C ACB80000 */   sw        $t8, 0x0($a1)
  .L800B7960_C6910:
    /* C6910 800B7960 00077040 */  sll        $t6, $a3, 1
    /* C6914 800B7964 010E7821 */  addu       $t7, $t0, $t6
    /* C6918 800B7968 001EC840 */  sll        $t9, $fp, 1
    /* C691C 800B796C 01F93021 */  addu       $a2, $t7, $t9
  .L800B7970_C6920:
    /* C6920 800B7970 84C40000 */  lh         $a0, 0x0($a2)
    /* C6924 800B7974 8CAE0000 */  lw         $t6, 0x0($a1)
    /* C6928 800B7978 24E70002 */  addiu      $a3, $a3, 0x2
    /* C692C 800B797C 0004C0C0 */  sll        $t8, $a0, 3
    /* C6930 800B7980 02F81021 */  addu       $v0, $s7, $t8
    /* C6934 800B7984 8C4F0000 */  lw         $t7, 0x0($v0)
    /* C6938 800B7988 24C60004 */  addiu      $a2, $a2, 0x4
    /* C693C 800B798C 8DE10000 */  lw         $at, 0x0($t7)
    /* C6940 800B7990 ADC10000 */  sw         $at, 0x0($t6)
    /* C6944 800B7994 8DF80004 */  lw         $t8, 0x4($t7)
    /* C6948 800B7998 ADD80004 */  sw         $t8, 0x4($t6)
    /* C694C 800B799C 8DE10008 */  lw         $at, 0x8($t7)
    /* C6950 800B79A0 ADC10008 */  sw         $at, 0x8($t6)
    /* C6954 800B79A4 8DF8000C */  lw         $t8, 0xC($t7)
    /* C6958 800B79A8 ADD8000C */  sw         $t8, 0xC($t6)
    /* C695C 800B79AC 8CB90000 */  lw         $t9, 0x0($a1)
    /* C6960 800B79B0 8C580000 */  lw         $t8, 0x0($v0)
    /* C6964 800B79B4 272F0010 */  addiu      $t7, $t9, 0x10
    /* C6968 800B79B8 ACAF0000 */  sw         $t7, 0x0($a1)
    /* C696C 800B79BC 8F010010 */  lw         $at, 0x10($t8)
    /* C6970 800B79C0 ADE10000 */  sw         $at, 0x0($t7)
    /* C6974 800B79C4 8F0E0014 */  lw         $t6, 0x14($t8)
    /* C6978 800B79C8 ADEE0004 */  sw         $t6, 0x4($t7)
    /* C697C 800B79CC 8F010018 */  lw         $at, 0x18($t8)
    /* C6980 800B79D0 ADE10008 */  sw         $at, 0x8($t7)
    /* C6984 800B79D4 8F0E001C */  lw         $t6, 0x1C($t8)
    /* C6988 800B79D8 ADEE000C */  sw         $t6, 0xC($t7)
    /* C698C 800B79DC 8CB90000 */  lw         $t9, 0x0($a1)
    /* C6990 800B79E0 8C4E0000 */  lw         $t6, 0x0($v0)
    /* C6994 800B79E4 27380010 */  addiu      $t8, $t9, 0x10
    /* C6998 800B79E8 ACB80000 */  sw         $t8, 0x0($a1)
    /* C699C 800B79EC 8DC10120 */  lw         $at, 0x120($t6)
    /* C69A0 800B79F0 AF010000 */  sw         $at, 0x0($t8)
    /* C69A4 800B79F4 8DCF0124 */  lw         $t7, 0x124($t6)
    /* C69A8 800B79F8 AF0F0004 */  sw         $t7, 0x4($t8)
    /* C69AC 800B79FC 8DC10128 */  lw         $at, 0x128($t6)
    /* C69B0 800B7A00 AF010008 */  sw         $at, 0x8($t8)
    /* C69B4 800B7A04 8DCF012C */  lw         $t7, 0x12C($t6)
    /* C69B8 800B7A08 AF0F000C */  sw         $t7, 0xC($t8)
    /* C69BC 800B7A0C 8CB90000 */  lw         $t9, 0x0($a1)
    /* C69C0 800B7A10 8C4F0000 */  lw         $t7, 0x0($v0)
    /* C69C4 800B7A14 272E0010 */  addiu      $t6, $t9, 0x10
    /* C69C8 800B7A18 ACAE0000 */  sw         $t6, 0x0($a1)
    /* C69CC 800B7A1C 8DE10130 */  lw         $at, 0x130($t7)
    /* C69D0 800B7A20 ADC10000 */  sw         $at, 0x0($t6)
    /* C69D4 800B7A24 8DF80134 */  lw         $t8, 0x134($t7)
    /* C69D8 800B7A28 ADD80004 */  sw         $t8, 0x4($t6)
    /* C69DC 800B7A2C 8DE10138 */  lw         $at, 0x138($t7)
    /* C69E0 800B7A30 ADC10008 */  sw         $at, 0x8($t6)
    /* C69E4 800B7A34 8DF8013C */  lw         $t8, 0x13C($t7)
    /* C69E8 800B7A38 ADD8000C */  sw         $t8, 0xC($t6)
    /* C69EC 800B7A3C 84C4FFFE */  lh         $a0, -0x2($a2)
    /* C69F0 800B7A40 8CB90000 */  lw         $t9, 0x0($a1)
    /* C69F4 800B7A44 000478C0 */  sll        $t7, $a0, 3
    /* C69F8 800B7A48 02EF1021 */  addu       $v0, $s7, $t7
    /* C69FC 800B7A4C 27380010 */  addiu      $t8, $t9, 0x10
    /* C6A00 800B7A50 8C590000 */  lw         $t9, 0x0($v0)
    /* C6A04 800B7A54 ACB80000 */  sw         $t8, 0x0($a1)
    /* C6A08 800B7A58 8F210000 */  lw         $at, 0x0($t9)
    /* C6A0C 800B7A5C AF010000 */  sw         $at, 0x0($t8)
    /* C6A10 800B7A60 8F2F0004 */  lw         $t7, 0x4($t9)
    /* C6A14 800B7A64 AF0F0004 */  sw         $t7, 0x4($t8)
    /* C6A18 800B7A68 8F210008 */  lw         $at, 0x8($t9)
    /* C6A1C 800B7A6C AF010008 */  sw         $at, 0x8($t8)
    /* C6A20 800B7A70 8F2F000C */  lw         $t7, 0xC($t9)
    /* C6A24 800B7A74 AF0F000C */  sw         $t7, 0xC($t8)
    /* C6A28 800B7A78 8CAE0000 */  lw         $t6, 0x0($a1)
    /* C6A2C 800B7A7C 8C4F0000 */  lw         $t7, 0x0($v0)
    /* C6A30 800B7A80 25D90010 */  addiu      $t9, $t6, 0x10
    /* C6A34 800B7A84 ACB90000 */  sw         $t9, 0x0($a1)
    /* C6A38 800B7A88 8DE10010 */  lw         $at, 0x10($t7)
    /* C6A3C 800B7A8C AF210000 */  sw         $at, 0x0($t9)
    /* C6A40 800B7A90 8DF80014 */  lw         $t8, 0x14($t7)
    /* C6A44 800B7A94 AF380004 */  sw         $t8, 0x4($t9)
    /* C6A48 800B7A98 8DE10018 */  lw         $at, 0x18($t7)
    /* C6A4C 800B7A9C AF210008 */  sw         $at, 0x8($t9)
    /* C6A50 800B7AA0 8DF8001C */  lw         $t8, 0x1C($t7)
    /* C6A54 800B7AA4 AF38000C */  sw         $t8, 0xC($t9)
    /* C6A58 800B7AA8 8CAE0000 */  lw         $t6, 0x0($a1)
    /* C6A5C 800B7AAC 8C580000 */  lw         $t8, 0x0($v0)
    /* C6A60 800B7AB0 25CF0010 */  addiu      $t7, $t6, 0x10
    /* C6A64 800B7AB4 ACAF0000 */  sw         $t7, 0x0($a1)
    /* C6A68 800B7AB8 8F010120 */  lw         $at, 0x120($t8)
    /* C6A6C 800B7ABC ADE10000 */  sw         $at, 0x0($t7)
    /* C6A70 800B7AC0 8F190124 */  lw         $t9, 0x124($t8)
    /* C6A74 800B7AC4 ADF90004 */  sw         $t9, 0x4($t7)
    /* C6A78 800B7AC8 8F010128 */  lw         $at, 0x128($t8)
    /* C6A7C 800B7ACC ADE10008 */  sw         $at, 0x8($t7)
    /* C6A80 800B7AD0 8F19012C */  lw         $t9, 0x12C($t8)
    /* C6A84 800B7AD4 ADF9000C */  sw         $t9, 0xC($t7)
    /* C6A88 800B7AD8 8CAE0000 */  lw         $t6, 0x0($a1)
    /* C6A8C 800B7ADC 8C590000 */  lw         $t9, 0x0($v0)
    /* C6A90 800B7AE0 25D80010 */  addiu      $t8, $t6, 0x10
    /* C6A94 800B7AE4 ACB80000 */  sw         $t8, 0x0($a1)
    /* C6A98 800B7AE8 8F210130 */  lw         $at, 0x130($t9)
    /* C6A9C 800B7AEC AF010000 */  sw         $at, 0x0($t8)
    /* C6AA0 800B7AF0 8F2F0134 */  lw         $t7, 0x134($t9)
    /* C6AA4 800B7AF4 AF0F0004 */  sw         $t7, 0x4($t8)
    /* C6AA8 800B7AF8 8F210138 */  lw         $at, 0x138($t9)
    /* C6AAC 800B7AFC AF010008 */  sw         $at, 0x8($t8)
    /* C6AB0 800B7B00 8F2F013C */  lw         $t7, 0x13C($t9)
    /* C6AB4 800B7B04 AF0F000C */  sw         $t7, 0xC($t8)
    /* C6AB8 800B7B08 8CAE0000 */  lw         $t6, 0x0($a1)
    /* C6ABC 800B7B0C 25D80010 */  addiu      $t8, $t6, 0x10
    /* C6AC0 800B7B10 14F5FF97 */  bne        $a3, $s5, .L800B7970_C6920
    /* C6AC4 800B7B14 ACB80000 */   sw        $t8, 0x0($a1)
  .L800B7B18_C6AC8:
    /* C6AC8 800B7B18 00003825 */  or         $a3, $zero, $zero
  .L800B7B1C_C6ACC:
    /* C6ACC 800B7B1C 87B90116 */  lh         $t9, 0x116($sp)
    /* C6AD0 800B7B20 00151080 */  sll        $v0, $s5, 2
    /* C6AD4 800B7B24 00027280 */  sll        $t6, $v0, 10
    /* C6AD8 800B7B28 1320000E */  beqz       $t9, .L800B7B64_C6B14
    /* C6ADC 800B7B2C 0002C100 */   sll       $t8, $v0, 4
    /* C6AE0 800B7B30 8E830000 */  lw         $v1, 0x0($s4)
    /* C6AE4 800B7B34 2719FFFF */  addiu      $t9, $t8, -0x1
    /* C6AE8 800B7B38 3C010400 */  lui        $at, (0x4000000 >> 16)
    /* C6AEC 800B7B3C 246F0008 */  addiu      $t7, $v1, 0x8
    /* C6AF0 800B7B40 AE8F0000 */  sw         $t7, 0x0($s4)
    /* C6AF4 800B7B44 01D97825 */  or         $t7, $t6, $t9
    /* C6AF8 800B7B48 31F8FFFF */  andi       $t8, $t7, 0xFFFF
    /* C6AFC 800B7B4C 03017025 */  or         $t6, $t8, $at
    /* C6B00 800B7B50 AC6E0000 */  sw         $t6, 0x0($v1)
    /* C6B04 800B7B54 8CB90000 */  lw         $t9, 0x0($a1)
    /* C6B08 800B7B58 00027900 */  sll        $t7, $v0, 4
    /* C6B0C 800B7B5C 032FC023 */  subu       $t8, $t9, $t7
    /* C6B10 800B7B60 AC780004 */  sw         $t8, 0x4($v1)
  .L800B7B64_C6B14:
    /* C6B14 800B7B64 1AA00058 */  blez       $s5, .L800B7CC8_C6C78
    /* C6B18 800B7B68 00008025 */   or        $s0, $zero, $zero
    /* C6B1C 800B7B6C 8FAE1340 */  lw         $t6, 0x1340($sp)
    /* C6B20 800B7B70 001E7840 */  sll        $t7, $fp, 1
    /* C6B24 800B7B74 0015B0C0 */  sll        $s6, $s5, 3
    /* C6B28 800B7B78 000EC8C0 */  sll        $t9, $t6, 3
    /* C6B2C 800B7B7C 032EC821 */  addu       $t9, $t9, $t6
    /* C6B30 800B7B80 0019C940 */  sll        $t9, $t9, 5
    /* C6B34 800B7B84 032EC821 */  addu       $t9, $t9, $t6
    /* C6B38 800B7B88 0019C840 */  sll        $t9, $t9, 1
    /* C6B3C 800B7B8C 032FC021 */  addu       $t8, $t9, $t7
    /* C6B40 800B7B90 27AE012C */  addiu      $t6, $sp, 0x12C
    /* C6B44 800B7B94 030E3021 */  addu       $a2, $t8, $t6
    /* C6B48 800B7B98 26D60006 */  addiu      $s6, $s6, 0x6
    /* C6B4C 800B7B9C 24110004 */  addiu      $s1, $zero, 0x4
    /* C6B50 800B7BA0 24120002 */  addiu      $s2, $zero, 0x2
    /* C6B54 800B7BA4 240D0006 */  addiu      $t5, $zero, 0x6
  .L800B7BA8_C6B58:
    /* C6B58 800B7BA8 84C40000 */  lh         $a0, 0x0($a2)
    /* C6B5C 800B7BAC 8E870000 */  lw         $a3, 0x0($s4)
    /* C6B60 800B7BB0 3C18E800 */  lui        $t8, (0xE8000000 >> 16)
    /* C6B64 800B7BB4 0004C8C0 */  sll        $t9, $a0, 3
    /* C6B68 800B7BB8 02F91021 */  addu       $v0, $s7, $t9
    /* C6B6C 800B7BBC 24EF0008 */  addiu      $t7, $a3, 0x8
    /* C6B70 800B7BC0 90530004 */  lbu        $s3, 0x4($v0)
    /* C6B74 800B7BC4 AE8F0000 */  sw         $t7, 0x0($s4)
    /* C6B78 800B7BC8 ACE00004 */  sw         $zero, 0x4($a3)
    /* C6B7C 800B7BCC ACF80000 */  sw         $t8, 0x0($a3)
    /* C6B80 800B7BD0 8E830000 */  lw         $v1, 0x0($s4)
    /* C6B84 800B7BD4 3C01F548 */  lui        $at, (0xF5480800 >> 16)
    /* C6B88 800B7BD8 34210800 */  ori        $at, $at, (0xF5480800 & 0xFFFF)
    /* C6B8C 800B7BDC 246E0008 */  addiu      $t6, $v1, 0x8
    /* C6B90 800B7BE0 AE8E0000 */  sw         $t6, 0x0($s4)
    /* C6B94 800B7BE4 00604025 */  or         $t0, $v1, $zero
    /* C6B98 800B7BE8 06610004 */  bgez       $s3, .L800B7BFC_C6BAC
    /* C6B9C 800B7BEC 32790001 */   andi      $t9, $s3, 0x1
    /* C6BA0 800B7BF0 13200002 */  beqz       $t9, .L800B7BFC_C6BAC
    /* C6BA4 800B7BF4 00000000 */   nop
    /* C6BA8 800B7BF8 2739FFFE */  addiu      $t9, $t9, -0x2
  .L800B7BFC_C6BAC:
    /* C6BAC 800B7BFC 001979C0 */  sll        $t7, $t9, 7
    /* C6BB0 800B7C00 31F801FF */  andi       $t8, $t7, 0x1FF
    /* C6BB4 800B7C04 03017025 */  or         $t6, $t8, $at
    /* C6BB8 800B7C08 AD0E0000 */  sw         $t6, 0x0($t0)
    /* C6BBC 800B7C0C 90590005 */  lbu        $t9, 0x5($v0)
    /* C6BC0 800B7C10 904E0006 */  lbu        $t6, 0x6($v0)
    /* C6BC4 800B7C14 3C010001 */  lui        $at, (0x14000 >> 16)
    /* C6BC8 800B7C18 332F0003 */  andi       $t7, $t9, 0x3
    /* C6BCC 800B7C1C 000FC200 */  sll        $t8, $t7, 8
    /* C6BD0 800B7C20 31D90003 */  andi       $t9, $t6, 0x3
    /* C6BD4 800B7C24 00197C80 */  sll        $t7, $t9, 18
    /* C6BD8 800B7C28 030F7025 */  or         $t6, $t8, $t7
    /* C6BDC 800B7C2C 34214000 */  ori        $at, $at, (0x14000 & 0xFFFF)
    /* C6BE0 800B7C30 01C1C825 */  or         $t9, $t6, $at
    /* C6BE4 800B7C34 37380050 */  ori        $t8, $t9, 0x50
    /* C6BE8 800B7C38 AD180004 */  sw         $t8, 0x4($t0)
    /* C6BEC 800B7C3C 8E830000 */  lw         $v1, 0x0($s4)
    /* C6BF0 800B7C40 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
    /* C6BF4 800B7C44 322B00FF */  andi       $t3, $s1, 0xFF
    /* C6BF8 800B7C48 246F0008 */  addiu      $t7, $v1, 0x8
    /* C6BFC 800B7C4C AE8F0000 */  sw         $t7, 0x0($s4)
    /* C6C00 800B7C50 AC600004 */  sw         $zero, 0x4($v1)
    /* C6C04 800B7C54 AC6E0000 */  sw         $t6, 0x0($v1)
    /* C6C08 800B7C58 8E830000 */  lw         $v1, 0x0($s4)
    /* C6C0C 800B7C5C 320F00FF */  andi       $t7, $s0, 0xFF
    /* C6C10 800B7C60 000BC200 */  sll        $t8, $t3, 8
    /* C6C14 800B7C64 24790008 */  addiu      $t9, $v1, 0x8
    /* C6C18 800B7C68 AE990000 */  sw         $t9, 0x0($s4)
    /* C6C1C 800B7C6C 000F7400 */  sll        $t6, $t7, 16
    /* C6C20 800B7C70 01D8C825 */  or         $t9, $t6, $t8
    /* C6C24 800B7C74 03005825 */  or         $t3, $t8, $zero
    /* C6C28 800B7C78 324C00FF */  andi       $t4, $s2, 0xFF
    /* C6C2C 800B7C7C 032CC025 */  or         $t8, $t9, $t4
    /* C6C30 800B7C80 3C01B100 */  lui        $at, (0xB1000000 >> 16)
    /* C6C34 800B7C84 03017825 */  or         $t7, $t8, $at
    /* C6C38 800B7C88 000C7400 */  sll        $t6, $t4, 16
    /* C6C3C 800B7C8C 01CBC825 */  or         $t9, $t6, $t3
    /* C6C40 800B7C90 31B800FF */  andi       $t8, $t5, 0xFF
    /* C6C44 800B7C94 27FF0001 */  addiu      $ra, $ra, 0x1
    /* C6C48 800B7C98 AC6F0000 */  sw         $t7, 0x0($v1)
    /* C6C4C 800B7C9C 25AD0008 */  addiu      $t5, $t5, 0x8
    /* C6C50 800B7CA0 03387825 */  or         $t7, $t9, $t8
    /* C6C54 800B7CA4 001F7400 */  sll        $t6, $ra, 16
    /* C6C58 800B7CA8 26520008 */  addiu      $s2, $s2, 0x8
    /* C6C5C 800B7CAC 26100008 */  addiu      $s0, $s0, 0x8
    /* C6C60 800B7CB0 26310008 */  addiu      $s1, $s1, 0x8
    /* C6C64 800B7CB4 24C60002 */  addiu      $a2, $a2, 0x2
    /* C6C68 800B7CB8 000EFC03 */  sra        $ra, $t6, 16
    /* C6C6C 800B7CBC 15B6FFBA */  bne        $t5, $s6, .L800B7BA8_C6B58
    /* C6C70 800B7CC0 AC6F0004 */   sw        $t7, 0x4($v1)
    /* C6C74 800B7CC4 00003825 */  or         $a3, $zero, $zero
  .L800B7CC8_C6C78:
    /* C6C78 800B7CC8 87B80116 */  lh         $t8, 0x116($sp)
    /* C6C7C 800B7CCC 2B010009 */  slti       $at, $t8, 0x9
    /* C6C80 800B7CD0 14200003 */  bnez       $at, .L800B7CE0_C6C90
    /* C6C84 800B7CD4 270FFFF8 */   addiu     $t7, $t8, -0x8
    /* C6C88 800B7CD8 10000002 */  b          .L800B7CE4_C6C94
    /* C6C8C 800B7CDC A7AF0116 */   sh        $t7, 0x116($sp)
  .L800B7CE0_C6C90:
    /* C6C90 800B7CE0 A7A00116 */  sh         $zero, 0x116($sp)
  .L800B7CE4_C6C94:
    /* C6C94 800B7CE4 87B80116 */  lh         $t8, 0x116($sp)
    /* C6C98 800B7CE8 27DE0008 */  addiu      $fp, $fp, 0x8
    /* C6C9C 800B7CEC 001E7400 */  sll        $t6, $fp, 16
    /* C6CA0 800B7CF0 1F00FED2 */  bgtz       $t8, .L800B783C_C67EC
    /* C6CA4 800B7CF4 000EF403 */   sra       $fp, $t6, 16
    /* C6CA8 800B7CF8 8FA41340 */  lw         $a0, 0x1340($sp)
  .L800B7CFC_C6CAC:
    /* C6CAC 800B7CFC 8FA60050 */  lw         $a2, 0x50($sp)
    /* C6CB0 800B7D00 24840001 */  addiu      $a0, $a0, 0x1
    /* C6CB4 800B7D04 28810008 */  slti       $at, $a0, 0x8
    /* C6CB8 800B7D08 1420FE84 */  bnez       $at, .L800B771C_C66CC
    /* C6CBC 800B7D0C 24C60002 */   addiu     $a2, $a2, 0x2
    /* C6CC0 800B7D10 8E830000 */  lw         $v1, 0x0($s4)
    /* C6CC4 800B7D14 3C0CE700 */  lui        $t4, (0xE7000000 >> 16)
    /* C6CC8 800B7D18 3C188025 */  lui        $t8, %hi(D_80254E80)
    /* C6CCC 800B7D1C 246F0008 */  addiu      $t7, $v1, 0x8
    /* C6CD0 800B7D20 AE8F0000 */  sw         $t7, 0x0($s4)
    /* C6CD4 800B7D24 AC600004 */  sw         $zero, 0x4($v1)
    /* C6CD8 800B7D28 AC6C0000 */  sw         $t4, 0x0($v1)
    /* C6CDC 800B7D2C 8E830000 */  lw         $v1, 0x0($s4)
    /* C6CE0 800B7D30 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* C6CE4 800B7D34 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* C6CE8 800B7D38 246E0008 */  addiu      $t6, $v1, 0x8
    /* C6CEC 800B7D3C AE8E0000 */  sw         $t6, 0x0($s4)
    /* C6CF0 800B7D40 27184E80 */  addiu      $t8, $t8, %lo(D_80254E80)
    /* C6CF4 800B7D44 03017824 */  and        $t7, $t8, $at
    /* C6CF8 800B7D48 3C19FD10 */  lui        $t9, (0xFD100000 >> 16)
    /* C6CFC 800B7D4C AC790000 */  sw         $t9, 0x0($v1)
    /* C6D00 800B7D50 AC6F0004 */  sw         $t7, 0x4($v1)
    /* C6D04 800B7D54 8E830000 */  lw         $v1, 0x0($s4)
    /* C6D08 800B7D58 3C19E800 */  lui        $t9, (0xE8000000 >> 16)
    /* C6D0C 800B7D5C 3C0FF500 */  lui        $t7, (0xF5000100 >> 16)
    /* C6D10 800B7D60 246E0008 */  addiu      $t6, $v1, 0x8
    /* C6D14 800B7D64 AE8E0000 */  sw         $t6, 0x0($s4)
    /* C6D18 800B7D68 AC600004 */  sw         $zero, 0x4($v1)
    /* C6D1C 800B7D6C AC790000 */  sw         $t9, 0x0($v1)
    /* C6D20 800B7D70 8E830000 */  lw         $v1, 0x0($s4)
    /* C6D24 800B7D74 3C0E0700 */  lui        $t6, (0x7000000 >> 16)
    /* C6D28 800B7D78 35EF0100 */  ori        $t7, $t7, (0xF5000100 & 0xFFFF)
    /* C6D2C 800B7D7C 24780008 */  addiu      $t8, $v1, 0x8
    /* C6D30 800B7D80 AE980000 */  sw         $t8, 0x0($s4)
    /* C6D34 800B7D84 AC6E0004 */  sw         $t6, 0x4($v1)
    /* C6D38 800B7D88 AC6F0000 */  sw         $t7, 0x0($v1)
    /* C6D3C 800B7D8C 8E830000 */  lw         $v1, 0x0($s4)
    /* C6D40 800B7D90 3C0DE600 */  lui        $t5, (0xE6000000 >> 16)
    /* C6D44 800B7D94 3C0E073F */  lui        $t6, (0x73FC000 >> 16)
    /* C6D48 800B7D98 24790008 */  addiu      $t9, $v1, 0x8
    /* C6D4C 800B7D9C AE990000 */  sw         $t9, 0x0($s4)
    /* C6D50 800B7DA0 AC600004 */  sw         $zero, 0x4($v1)
    /* C6D54 800B7DA4 AC6D0000 */  sw         $t5, 0x0($v1)
    /* C6D58 800B7DA8 8E830000 */  lw         $v1, 0x0($s4)
    /* C6D5C 800B7DAC 35CEC000 */  ori        $t6, $t6, (0x73FC000 & 0xFFFF)
    /* C6D60 800B7DB0 3C0FF000 */  lui        $t7, (0xF0000000 >> 16)
    /* C6D64 800B7DB4 24780008 */  addiu      $t8, $v1, 0x8
    /* C6D68 800B7DB8 AE980000 */  sw         $t8, 0x0($s4)
    /* C6D6C 800B7DBC AC6E0004 */  sw         $t6, 0x4($v1)
    /* C6D70 800B7DC0 AC6F0000 */  sw         $t7, 0x0($v1)
    /* C6D74 800B7DC4 8E830000 */  lw         $v1, 0x0($s4)
    /* C6D78 800B7DC8 27A2011C */  addiu      $v0, $sp, 0x11C
    /* C6D7C 800B7DCC 240AFFFF */  addiu      $t2, $zero, -0x1
    /* C6D80 800B7DD0 24790008 */  addiu      $t9, $v1, 0x8
    /* C6D84 800B7DD4 AE990000 */  sw         $t9, 0x0($s4)
    /* C6D88 800B7DD8 AC600004 */  sw         $zero, 0x4($v1)
    /* C6D8C 800B7DDC AC6C0000 */  sw         $t4, 0x0($v1)
    /* C6D90 800B7DE0 8E830000 */  lw         $v1, 0x0($s4)
    /* C6D94 800B7DE4 3C068015 */  lui        $a2, %hi(D_8014F89A)
    /* C6D98 800B7DE8 27A9011C */  addiu      $t1, $sp, 0x11C
    /* C6D9C 800B7DEC 24780008 */  addiu      $t8, $v1, 0x8
    /* C6DA0 800B7DF0 AE980000 */  sw         $t8, 0x0($s4)
    /* C6DA4 800B7DF4 AC600004 */  sw         $zero, 0x4($v1)
    /* C6DA8 800B7DF8 AC6D0000 */  sw         $t5, 0x0($v1)
    /* C6DAC 800B7DFC 27A3012C */  addiu      $v1, $sp, 0x12C
  .L800B7E00_C6DB0:
    /* C6DB0 800B7E00 24420002 */  addiu      $v0, $v0, 0x2
    /* C6DB4 800B7E04 0043082B */  sltu       $at, $v0, $v1
    /* C6DB8 800B7E08 1420FFFD */  bnez       $at, .L800B7E00_C6DB0
    /* C6DBC 800B7E0C A44AFFFE */   sh        $t2, -0x2($v0)
    /* C6DC0 800B7E10 94C6F89A */  lhu        $a2, %lo(D_8014F89A)($a2)
    /* C6DC4 800B7E14 3C038015 */  lui        $v1, %hi(D_8014F8A8)
    /* C6DC8 800B7E18 2463F8A8 */  addiu      $v1, $v1, %lo(D_8014F8A8)
    /* C6DCC 800B7E1C 18C0001E */  blez       $a2, .L800B7E98_C6E48
    /* C6DD0 800B7E20 00003825 */   or        $a3, $zero, $zero
    /* C6DD4 800B7E24 27A8012C */  addiu      $t0, $sp, 0x12C
    /* C6DD8 800B7E28 90730004 */  lbu        $s3, 0x4($v1)
  .L800B7E2C_C6DDC:
    /* C6DDC 800B7E2C 24630008 */  addiu      $v1, $v1, 0x8
    /* C6DE0 800B7E30 06610003 */  bgez       $s3, .L800B7E40_C6DF0
    /* C6DE4 800B7E34 00132043 */   sra       $a0, $s3, 1
    /* C6DE8 800B7E38 26610001 */  addiu      $at, $s3, 0x1
    /* C6DEC 800B7E3C 00012043 */  sra        $a0, $at, 1
  .L800B7E40_C6DF0:
    /* C6DF0 800B7E40 00047C00 */  sll        $t7, $a0, 16
    /* C6DF4 800B7E44 000F2403 */  sra        $a0, $t7, 16
    /* C6DF8 800B7E48 0004C840 */  sll        $t9, $a0, 1
    /* C6DFC 800B7E4C 01391021 */  addu       $v0, $t1, $t9
    /* C6E00 800B7E50 84580000 */  lh         $t8, 0x0($v0)
    /* C6E04 800B7E54 000470C0 */  sll        $t6, $a0, 3
    /* C6E08 800B7E58 01C47021 */  addu       $t6, $t6, $a0
    /* C6E0C 800B7E5C 270F0001 */  addiu      $t7, $t8, 0x1
    /* C6E10 800B7E60 A44F0000 */  sh         $t7, 0x0($v0)
    /* C6E14 800B7E64 84580000 */  lh         $t8, 0x0($v0)
    /* C6E18 800B7E68 000E7140 */  sll        $t6, $t6, 5
    /* C6E1C 800B7E6C 01C47021 */  addu       $t6, $t6, $a0
    /* C6E20 800B7E70 000E7040 */  sll        $t6, $t6, 1
    /* C6E24 800B7E74 010EC821 */  addu       $t9, $t0, $t6
    /* C6E28 800B7E78 00187840 */  sll        $t7, $t8, 1
    /* C6E2C 800B7E7C 032F7021 */  addu       $t6, $t9, $t7
    /* C6E30 800B7E80 A5C70000 */  sh         $a3, 0x0($t6)
    /* C6E34 800B7E84 24E70001 */  addiu      $a3, $a3, 0x1
    /* C6E38 800B7E88 00E6082A */  slt        $at, $a3, $a2
    /* C6E3C 800B7E8C 5420FFE7 */  bnel       $at, $zero, .L800B7E2C_C6DDC
    /* C6E40 800B7E90 90730004 */   lbu       $s3, 0x4($v1)
    /* C6E44 800B7E94 3C0CE700 */  lui        $t4, (0xE7000000 >> 16)
  .L800B7E98_C6E48:
    /* C6E48 800B7E98 00001825 */  or         $v1, $zero, $zero
    /* C6E4C 800B7E9C 27A2011C */  addiu      $v0, $sp, 0x11C
  .L800B7EA0_C6E50:
    /* C6E50 800B7EA0 AFA20050 */  sw         $v0, 0x50($sp)
    /* C6E54 800B7EA4 AFA31340 */  sw         $v1, 0x1340($sp)
    /* C6E58 800B7EA8 84580000 */  lh         $t8, 0x0($v0)
    /* C6E5C 800B7EAC 2401FFFF */  addiu      $at, $zero, -0x1
    /* C6E60 800B7EB0 3C0FFD50 */  lui        $t7, (0xFD500000 >> 16)
    /* C6E64 800B7EB4 53010170 */  beql       $t8, $at, .L800B8478_C7428
    /* C6E68 800B7EB8 8FA31340 */   lw        $v1, 0x1340($sp)
    /* C6E6C 800B7EBC 8E830000 */  lw         $v1, 0x0($s4)
    /* C6E70 800B7EC0 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* C6E74 800B7EC4 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* C6E78 800B7EC8 24790008 */  addiu      $t9, $v1, 0x8
    /* C6E7C 800B7ECC AE990000 */  sw         $t9, 0x0($s4)
    /* C6E80 800B7ED0 AC6F0000 */  sw         $t7, 0x0($v1)
    /* C6E84 800B7ED4 8FAE1340 */  lw         $t6, 0x1340($sp)
    /* C6E88 800B7ED8 3C198022 */  lui        $t9, %hi(D_80224E80)
    /* C6E8C 800B7EDC 27394E80 */  addiu      $t9, $t9, %lo(D_80224E80)
    /* C6E90 800B7EE0 000EC2C0 */  sll        $t8, $t6, 11
    /* C6E94 800B7EE4 03197821 */  addu       $t7, $t8, $t9
    /* C6E98 800B7EE8 01E17024 */  and        $t6, $t7, $at
    /* C6E9C 800B7EEC AC6E0004 */  sw         $t6, 0x4($v1)
    /* C6EA0 800B7EF0 8E830000 */  lw         $v1, 0x0($s4)
    /* C6EA4 800B7EF4 3C0F0700 */  lui        $t7, (0x7000000 >> 16)
    /* C6EA8 800B7EF8 3C19F550 */  lui        $t9, (0xF5500000 >> 16)
    /* C6EAC 800B7EFC 24780008 */  addiu      $t8, $v1, 0x8
    /* C6EB0 800B7F00 AE980000 */  sw         $t8, 0x0($s4)
    /* C6EB4 800B7F04 AC6F0004 */  sw         $t7, 0x4($v1)
    /* C6EB8 800B7F08 AC790000 */  sw         $t9, 0x0($v1)
    /* C6EBC 800B7F0C 8E830000 */  lw         $v1, 0x0($s4)
    /* C6EC0 800B7F10 3C18E600 */  lui        $t8, (0xE6000000 >> 16)
    /* C6EC4 800B7F14 3C0FF300 */  lui        $t7, (0xF3000000 >> 16)
    /* C6EC8 800B7F18 246E0008 */  addiu      $t6, $v1, 0x8
    /* C6ECC 800B7F1C AE8E0000 */  sw         $t6, 0x0($s4)
    /* C6ED0 800B7F20 AC600004 */  sw         $zero, 0x4($v1)
    /* C6ED4 800B7F24 AC780000 */  sw         $t8, 0x0($v1)
    /* C6ED8 800B7F28 8E830000 */  lw         $v1, 0x0($s4)
    /* C6EDC 800B7F2C 3C0E073F */  lui        $t6, (0x73FF200 >> 16)
    /* C6EE0 800B7F30 35CEF200 */  ori        $t6, $t6, (0x73FF200 & 0xFFFF)
    /* C6EE4 800B7F34 24790008 */  addiu      $t9, $v1, 0x8
    /* C6EE8 800B7F38 AE990000 */  sw         $t9, 0x0($s4)
    /* C6EEC 800B7F3C AC6E0004 */  sw         $t6, 0x4($v1)
    /* C6EF0 800B7F40 AC6F0000 */  sw         $t7, 0x0($v1)
    /* C6EF4 800B7F44 8E830000 */  lw         $v1, 0x0($s4)
    /* C6EF8 800B7F48 3C0FF548 */  lui        $t7, (0xF5480800 >> 16)
    /* C6EFC 800B7F4C 35EF0800 */  ori        $t7, $t7, (0xF5480800 & 0xFFFF)
    /* C6F00 800B7F50 24780008 */  addiu      $t8, $v1, 0x8
    /* C6F04 800B7F54 AE980000 */  sw         $t8, 0x0($s4)
    /* C6F08 800B7F58 AC600004 */  sw         $zero, 0x4($v1)
    /* C6F0C 800B7F5C AC6C0000 */  sw         $t4, 0x0($v1)
    /* C6F10 800B7F60 8E830000 */  lw         $v1, 0x0($s4)
    /* C6F14 800B7F64 3C18F200 */  lui        $t8, (0xF2000000 >> 16)
    /* C6F18 800B7F68 0000F025 */  or         $fp, $zero, $zero
    /* C6F1C 800B7F6C 24790008 */  addiu      $t9, $v1, 0x8
    /* C6F20 800B7F70 AE990000 */  sw         $t9, 0x0($s4)
    /* C6F24 800B7F74 AC600004 */  sw         $zero, 0x4($v1)
    /* C6F28 800B7F78 AC6F0000 */  sw         $t7, 0x0($v1)
    /* C6F2C 800B7F7C 8E830000 */  lw         $v1, 0x0($s4)
    /* C6F30 800B7F80 3C190007 */  lui        $t9, (0x7C0FC >> 16)
    /* C6F34 800B7F84 3739C0FC */  ori        $t9, $t9, (0x7C0FC & 0xFFFF)
    /* C6F38 800B7F88 246E0008 */  addiu      $t6, $v1, 0x8
    /* C6F3C 800B7F8C AE8E0000 */  sw         $t6, 0x0($s4)
    /* C6F40 800B7F90 AC790004 */  sw         $t9, 0x4($v1)
    /* C6F44 800B7F94 AC780000 */  sw         $t8, 0x0($v1)
    /* C6F48 800B7F98 8FAF0050 */  lw         $t7, 0x50($sp)
    /* C6F4C 800B7F9C 85E20000 */  lh         $v0, 0x0($t7)
    /* C6F50 800B7FA0 24420001 */  addiu      $v0, $v0, 0x1
    /* C6F54 800B7FA4 00027400 */  sll        $t6, $v0, 16
    /* C6F58 800B7FA8 000EC403 */  sra        $t8, $t6, 16
    /* C6F5C 800B7FAC 5B000132 */  blezl      $t8, .L800B8478_C7428
    /* C6F60 800B7FB0 8FA31340 */   lw        $v1, 0x1340($sp)
    /* C6F64 800B7FB4 A7B80116 */  sh         $t8, 0x116($sp)
  .L800B7FB8_C6F68:
    /* C6F68 800B7FB8 87A20116 */  lh         $v0, 0x116($sp)
    /* C6F6C 800B7FBC 00003825 */  or         $a3, $zero, $zero
    /* C6F70 800B7FC0 87B50116 */  lh         $s5, 0x116($sp)
    /* C6F74 800B7FC4 28410009 */  slti       $at, $v0, 0x9
    /* C6F78 800B7FC8 14200003 */  bnez       $at, .L800B7FD8_C6F88
    /* C6F7C 800B7FCC 8FB91340 */   lw        $t9, 0x1340($sp)
    /* C6F80 800B7FD0 10000001 */  b          .L800B7FD8_C6F88
    /* C6F84 800B7FD4 24150008 */   addiu     $s5, $zero, 0x8
  .L800B7FD8_C6F88:
    /* C6F88 800B7FD8 1AA000AF */  blez       $s5, .L800B8298_C7248
    /* C6F8C 800B7FDC 001978C0 */   sll       $t7, $t9, 3
    /* C6F90 800B7FE0 01F97821 */  addu       $t7, $t7, $t9
    /* C6F94 800B7FE4 000F7940 */  sll        $t7, $t7, 5
    /* C6F98 800B7FE8 01F97821 */  addu       $t7, $t7, $t9
    /* C6F9C 800B7FEC 000F7840 */  sll        $t7, $t7, 1
    /* C6FA0 800B7FF0 27AE012C */  addiu      $t6, $sp, 0x12C
    /* C6FA4 800B7FF4 32A20001 */  andi       $v0, $s5, 0x1
    /* C6FA8 800B7FF8 10400039 */  beqz       $v0, .L800B80E0_C7090
    /* C6FAC 800B7FFC 01EE4021 */   addu      $t0, $t7, $t6
    /* C6FB0 800B8000 001EC040 */  sll        $t8, $fp, 1
    /* C6FB4 800B8004 0118C821 */  addu       $t9, $t0, $t8
    /* C6FB8 800B8008 87240000 */  lh         $a0, 0x0($t9)
    /* C6FBC 800B800C 8CAE0000 */  lw         $t6, 0x0($a1)
    /* C6FC0 800B8010 24070001 */  addiu      $a3, $zero, 0x1
    /* C6FC4 800B8014 000478C0 */  sll        $t7, $a0, 3
    /* C6FC8 800B8018 02EF1021 */  addu       $v0, $s7, $t7
    /* C6FCC 800B801C 8C580000 */  lw         $t8, 0x0($v0)
    /* C6FD0 800B8020 8F010000 */  lw         $at, 0x0($t8)
    /* C6FD4 800B8024 ADC10000 */  sw         $at, 0x0($t6)
    /* C6FD8 800B8028 8F0F0004 */  lw         $t7, 0x4($t8)
    /* C6FDC 800B802C ADCF0004 */  sw         $t7, 0x4($t6)
    /* C6FE0 800B8030 8F010008 */  lw         $at, 0x8($t8)
    /* C6FE4 800B8034 ADC10008 */  sw         $at, 0x8($t6)
    /* C6FE8 800B8038 8F0F000C */  lw         $t7, 0xC($t8)
    /* C6FEC 800B803C ADCF000C */  sw         $t7, 0xC($t6)
    /* C6FF0 800B8040 8CB90000 */  lw         $t9, 0x0($a1)
    /* C6FF4 800B8044 8C4F0000 */  lw         $t7, 0x0($v0)
    /* C6FF8 800B8048 27380010 */  addiu      $t8, $t9, 0x10
    /* C6FFC 800B804C ACB80000 */  sw         $t8, 0x0($a1)
    /* C7000 800B8050 8DE10010 */  lw         $at, 0x10($t7)
    /* C7004 800B8054 AF010000 */  sw         $at, 0x0($t8)
    /* C7008 800B8058 8DEE0014 */  lw         $t6, 0x14($t7)
    /* C700C 800B805C AF0E0004 */  sw         $t6, 0x4($t8)
    /* C7010 800B8060 8DE10018 */  lw         $at, 0x18($t7)
    /* C7014 800B8064 AF010008 */  sw         $at, 0x8($t8)
    /* C7018 800B8068 8DEE001C */  lw         $t6, 0x1C($t7)
    /* C701C 800B806C AF0E000C */  sw         $t6, 0xC($t8)
    /* C7020 800B8070 8CB90000 */  lw         $t9, 0x0($a1)
    /* C7024 800B8074 8C4E0000 */  lw         $t6, 0x0($v0)
    /* C7028 800B8078 272F0010 */  addiu      $t7, $t9, 0x10
    /* C702C 800B807C ACAF0000 */  sw         $t7, 0x0($a1)
    /* C7030 800B8080 8DC10120 */  lw         $at, 0x120($t6)
    /* C7034 800B8084 ADE10000 */  sw         $at, 0x0($t7)
    /* C7038 800B8088 8DD80124 */  lw         $t8, 0x124($t6)
    /* C703C 800B808C ADF80004 */  sw         $t8, 0x4($t7)
    /* C7040 800B8090 8DC10128 */  lw         $at, 0x128($t6)
    /* C7044 800B8094 ADE10008 */  sw         $at, 0x8($t7)
    /* C7048 800B8098 8DD8012C */  lw         $t8, 0x12C($t6)
    /* C704C 800B809C ADF8000C */  sw         $t8, 0xC($t7)
    /* C7050 800B80A0 8CB90000 */  lw         $t9, 0x0($a1)
    /* C7054 800B80A4 8C580000 */  lw         $t8, 0x0($v0)
    /* C7058 800B80A8 272E0010 */  addiu      $t6, $t9, 0x10
    /* C705C 800B80AC ACAE0000 */  sw         $t6, 0x0($a1)
    /* C7060 800B80B0 8F010130 */  lw         $at, 0x130($t8)
    /* C7064 800B80B4 ADC10000 */  sw         $at, 0x0($t6)
    /* C7068 800B80B8 8F0F0134 */  lw         $t7, 0x134($t8)
    /* C706C 800B80BC ADCF0004 */  sw         $t7, 0x4($t6)
    /* C7070 800B80C0 8F010138 */  lw         $at, 0x138($t8)
    /* C7074 800B80C4 ADC10008 */  sw         $at, 0x8($t6)
    /* C7078 800B80C8 8F0F013C */  lw         $t7, 0x13C($t8)
    /* C707C 800B80CC ADCF000C */  sw         $t7, 0xC($t6)
    /* C7080 800B80D0 8CB90000 */  lw         $t9, 0x0($a1)
    /* C7084 800B80D4 272E0010 */  addiu      $t6, $t9, 0x10
    /* C7088 800B80D8 10F5006F */  beq        $a3, $s5, .L800B8298_C7248
    /* C708C 800B80DC ACAE0000 */   sw        $t6, 0x0($a1)
  .L800B80E0_C7090:
    /* C7090 800B80E0 0007C040 */  sll        $t8, $a3, 1
    /* C7094 800B80E4 01187821 */  addu       $t7, $t0, $t8
    /* C7098 800B80E8 001EC840 */  sll        $t9, $fp, 1
    /* C709C 800B80EC 01F93021 */  addu       $a2, $t7, $t9
  .L800B80F0_C70A0:
    /* C70A0 800B80F0 84C40000 */  lh         $a0, 0x0($a2)
    /* C70A4 800B80F4 8CB80000 */  lw         $t8, 0x0($a1)
    /* C70A8 800B80F8 24E70002 */  addiu      $a3, $a3, 0x2
    /* C70AC 800B80FC 000470C0 */  sll        $t6, $a0, 3
    /* C70B0 800B8100 02EE1021 */  addu       $v0, $s7, $t6
    /* C70B4 800B8104 8C4F0000 */  lw         $t7, 0x0($v0)
    /* C70B8 800B8108 24C60004 */  addiu      $a2, $a2, 0x4
    /* C70BC 800B810C 8DE10000 */  lw         $at, 0x0($t7)
    /* C70C0 800B8110 AF010000 */  sw         $at, 0x0($t8)
    /* C70C4 800B8114 8DEE0004 */  lw         $t6, 0x4($t7)
    /* C70C8 800B8118 AF0E0004 */  sw         $t6, 0x4($t8)
    /* C70CC 800B811C 8DE10008 */  lw         $at, 0x8($t7)
    /* C70D0 800B8120 AF010008 */  sw         $at, 0x8($t8)
    /* C70D4 800B8124 8DEE000C */  lw         $t6, 0xC($t7)
    /* C70D8 800B8128 AF0E000C */  sw         $t6, 0xC($t8)
    /* C70DC 800B812C 8CB90000 */  lw         $t9, 0x0($a1)
    /* C70E0 800B8130 8C4E0000 */  lw         $t6, 0x0($v0)
    /* C70E4 800B8134 272F0010 */  addiu      $t7, $t9, 0x10
    /* C70E8 800B8138 ACAF0000 */  sw         $t7, 0x0($a1)
    /* C70EC 800B813C 8DC10010 */  lw         $at, 0x10($t6)
    /* C70F0 800B8140 ADE10000 */  sw         $at, 0x0($t7)
    /* C70F4 800B8144 8DD80014 */  lw         $t8, 0x14($t6)
    /* C70F8 800B8148 ADF80004 */  sw         $t8, 0x4($t7)
    /* C70FC 800B814C 8DC10018 */  lw         $at, 0x18($t6)
    /* C7100 800B8150 ADE10008 */  sw         $at, 0x8($t7)
    /* C7104 800B8154 8DD8001C */  lw         $t8, 0x1C($t6)
    /* C7108 800B8158 ADF8000C */  sw         $t8, 0xC($t7)
    /* C710C 800B815C 8CB90000 */  lw         $t9, 0x0($a1)
    /* C7110 800B8160 8C580000 */  lw         $t8, 0x0($v0)
    /* C7114 800B8164 272E0010 */  addiu      $t6, $t9, 0x10
    /* C7118 800B8168 ACAE0000 */  sw         $t6, 0x0($a1)
    /* C711C 800B816C 8F010120 */  lw         $at, 0x120($t8)
    /* C7120 800B8170 ADC10000 */  sw         $at, 0x0($t6)
    /* C7124 800B8174 8F0F0124 */  lw         $t7, 0x124($t8)
    /* C7128 800B8178 ADCF0004 */  sw         $t7, 0x4($t6)
    /* C712C 800B817C 8F010128 */  lw         $at, 0x128($t8)
    /* C7130 800B8180 ADC10008 */  sw         $at, 0x8($t6)
    /* C7134 800B8184 8F0F012C */  lw         $t7, 0x12C($t8)
    /* C7138 800B8188 ADCF000C */  sw         $t7, 0xC($t6)
    /* C713C 800B818C 8CB90000 */  lw         $t9, 0x0($a1)
    /* C7140 800B8190 8C4F0000 */  lw         $t7, 0x0($v0)
    /* C7144 800B8194 27380010 */  addiu      $t8, $t9, 0x10
    /* C7148 800B8198 ACB80000 */  sw         $t8, 0x0($a1)
    /* C714C 800B819C 8DE10130 */  lw         $at, 0x130($t7)
    /* C7150 800B81A0 AF010000 */  sw         $at, 0x0($t8)
    /* C7154 800B81A4 8DEE0134 */  lw         $t6, 0x134($t7)
    /* C7158 800B81A8 AF0E0004 */  sw         $t6, 0x4($t8)
    /* C715C 800B81AC 8DE10138 */  lw         $at, 0x138($t7)
    /* C7160 800B81B0 AF010008 */  sw         $at, 0x8($t8)
    /* C7164 800B81B4 8DEE013C */  lw         $t6, 0x13C($t7)
    /* C7168 800B81B8 AF0E000C */  sw         $t6, 0xC($t8)
    /* C716C 800B81BC 84C4FFFE */  lh         $a0, -0x2($a2)
    /* C7170 800B81C0 8CB90000 */  lw         $t9, 0x0($a1)
    /* C7174 800B81C4 000478C0 */  sll        $t7, $a0, 3
    /* C7178 800B81C8 02EF1021 */  addu       $v0, $s7, $t7
    /* C717C 800B81CC 272E0010 */  addiu      $t6, $t9, 0x10
    /* C7180 800B81D0 8C590000 */  lw         $t9, 0x0($v0)
    /* C7184 800B81D4 ACAE0000 */  sw         $t6, 0x0($a1)
    /* C7188 800B81D8 8F210000 */  lw         $at, 0x0($t9)
    /* C718C 800B81DC ADC10000 */  sw         $at, 0x0($t6)
    /* C7190 800B81E0 8F2F0004 */  lw         $t7, 0x4($t9)
    /* C7194 800B81E4 ADCF0004 */  sw         $t7, 0x4($t6)
    /* C7198 800B81E8 8F210008 */  lw         $at, 0x8($t9)
    /* C719C 800B81EC ADC10008 */  sw         $at, 0x8($t6)
    /* C71A0 800B81F0 8F2F000C */  lw         $t7, 0xC($t9)
    /* C71A4 800B81F4 ADCF000C */  sw         $t7, 0xC($t6)
    /* C71A8 800B81F8 8CB80000 */  lw         $t8, 0x0($a1)
    /* C71AC 800B81FC 8C4F0000 */  lw         $t7, 0x0($v0)
    /* C71B0 800B8200 27190010 */  addiu      $t9, $t8, 0x10
    /* C71B4 800B8204 ACB90000 */  sw         $t9, 0x0($a1)
    /* C71B8 800B8208 8DE10010 */  lw         $at, 0x10($t7)
    /* C71BC 800B820C AF210000 */  sw         $at, 0x0($t9)
    /* C71C0 800B8210 8DEE0014 */  lw         $t6, 0x14($t7)
    /* C71C4 800B8214 AF2E0004 */  sw         $t6, 0x4($t9)
    /* C71C8 800B8218 8DE10018 */  lw         $at, 0x18($t7)
    /* C71CC 800B821C AF210008 */  sw         $at, 0x8($t9)
    /* C71D0 800B8220 8DEE001C */  lw         $t6, 0x1C($t7)
    /* C71D4 800B8224 AF2E000C */  sw         $t6, 0xC($t9)
    /* C71D8 800B8228 8CB80000 */  lw         $t8, 0x0($a1)
    /* C71DC 800B822C 8C4E0000 */  lw         $t6, 0x0($v0)
    /* C71E0 800B8230 270F0010 */  addiu      $t7, $t8, 0x10
    /* C71E4 800B8234 ACAF0000 */  sw         $t7, 0x0($a1)
    /* C71E8 800B8238 8DC10120 */  lw         $at, 0x120($t6)
    /* C71EC 800B823C ADE10000 */  sw         $at, 0x0($t7)
    /* C71F0 800B8240 8DD90124 */  lw         $t9, 0x124($t6)
    /* C71F4 800B8244 ADF90004 */  sw         $t9, 0x4($t7)
    /* C71F8 800B8248 8DC10128 */  lw         $at, 0x128($t6)
    /* C71FC 800B824C ADE10008 */  sw         $at, 0x8($t7)
    /* C7200 800B8250 8DD9012C */  lw         $t9, 0x12C($t6)
    /* C7204 800B8254 ADF9000C */  sw         $t9, 0xC($t7)
    /* C7208 800B8258 8CB80000 */  lw         $t8, 0x0($a1)
    /* C720C 800B825C 8C590000 */  lw         $t9, 0x0($v0)
    /* C7210 800B8260 270E0010 */  addiu      $t6, $t8, 0x10
    /* C7214 800B8264 ACAE0000 */  sw         $t6, 0x0($a1)
    /* C7218 800B8268 8F210130 */  lw         $at, 0x130($t9)
    /* C721C 800B826C ADC10000 */  sw         $at, 0x0($t6)
    /* C7220 800B8270 8F2F0134 */  lw         $t7, 0x134($t9)
    /* C7224 800B8274 ADCF0004 */  sw         $t7, 0x4($t6)
    /* C7228 800B8278 8F210138 */  lw         $at, 0x138($t9)
    /* C722C 800B827C ADC10008 */  sw         $at, 0x8($t6)
    /* C7230 800B8280 8F2F013C */  lw         $t7, 0x13C($t9)
    /* C7234 800B8284 ADCF000C */  sw         $t7, 0xC($t6)
    /* C7238 800B8288 8CB80000 */  lw         $t8, 0x0($a1)
    /* C723C 800B828C 270E0010 */  addiu      $t6, $t8, 0x10
    /* C7240 800B8290 14F5FF97 */  bne        $a3, $s5, .L800B80F0_C70A0
    /* C7244 800B8294 ACAE0000 */   sw        $t6, 0x0($a1)
  .L800B8298_C7248:
    /* C7248 800B8298 87B90116 */  lh         $t9, 0x116($sp)
    /* C724C 800B829C 00151080 */  sll        $v0, $s5, 2
    /* C7250 800B82A0 0002C280 */  sll        $t8, $v0, 10
    /* C7254 800B82A4 1320000E */  beqz       $t9, .L800B82E0_C7290
    /* C7258 800B82A8 00027100 */   sll       $t6, $v0, 4
    /* C725C 800B82AC 8E830000 */  lw         $v1, 0x0($s4)
    /* C7260 800B82B0 25D9FFFF */  addiu      $t9, $t6, -0x1
    /* C7264 800B82B4 3C010400 */  lui        $at, (0x4000000 >> 16)
    /* C7268 800B82B8 246F0008 */  addiu      $t7, $v1, 0x8
    /* C726C 800B82BC AE8F0000 */  sw         $t7, 0x0($s4)
    /* C7270 800B82C0 03197825 */  or         $t7, $t8, $t9
    /* C7274 800B82C4 31EEFFFF */  andi       $t6, $t7, 0xFFFF
    /* C7278 800B82C8 01C1C025 */  or         $t8, $t6, $at
    /* C727C 800B82CC AC780000 */  sw         $t8, 0x0($v1)
    /* C7280 800B82D0 8CB90000 */  lw         $t9, 0x0($a1)
    /* C7284 800B82D4 00027900 */  sll        $t7, $v0, 4
    /* C7288 800B82D8 032F7023 */  subu       $t6, $t9, $t7
    /* C728C 800B82DC AC6E0004 */  sw         $t6, 0x4($v1)
  .L800B82E0_C7290:
    /* C7290 800B82E0 1AA00057 */  blez       $s5, .L800B8440_C73F0
    /* C7294 800B82E4 00008025 */   or        $s0, $zero, $zero
    /* C7298 800B82E8 8FB81340 */  lw         $t8, 0x1340($sp)
    /* C729C 800B82EC 001E7840 */  sll        $t7, $fp, 1
    /* C72A0 800B82F0 0015B0C0 */  sll        $s6, $s5, 3
    /* C72A4 800B82F4 0018C8C0 */  sll        $t9, $t8, 3
    /* C72A8 800B82F8 0338C821 */  addu       $t9, $t9, $t8
    /* C72AC 800B82FC 0019C940 */  sll        $t9, $t9, 5
    /* C72B0 800B8300 0338C821 */  addu       $t9, $t9, $t8
    /* C72B4 800B8304 0019C840 */  sll        $t9, $t9, 1
    /* C72B8 800B8308 032F7021 */  addu       $t6, $t9, $t7
    /* C72BC 800B830C 27B8012C */  addiu      $t8, $sp, 0x12C
    /* C72C0 800B8310 01D83021 */  addu       $a2, $t6, $t8
    /* C72C4 800B8314 26D60006 */  addiu      $s6, $s6, 0x6
    /* C72C8 800B8318 24110004 */  addiu      $s1, $zero, 0x4
    /* C72CC 800B831C 24120002 */  addiu      $s2, $zero, 0x2
    /* C72D0 800B8320 240D0006 */  addiu      $t5, $zero, 0x6
  .L800B8324_C72D4:
    /* C72D4 800B8324 84C40000 */  lh         $a0, 0x0($a2)
    /* C72D8 800B8328 8E870000 */  lw         $a3, 0x0($s4)
    /* C72DC 800B832C 3C0EE800 */  lui        $t6, (0xE8000000 >> 16)
    /* C72E0 800B8330 0004C8C0 */  sll        $t9, $a0, 3
    /* C72E4 800B8334 02F91021 */  addu       $v0, $s7, $t9
    /* C72E8 800B8338 24EF0008 */  addiu      $t7, $a3, 0x8
    /* C72EC 800B833C 90530004 */  lbu        $s3, 0x4($v0)
    /* C72F0 800B8340 AE8F0000 */  sw         $t7, 0x0($s4)
    /* C72F4 800B8344 ACE00004 */  sw         $zero, 0x4($a3)
    /* C72F8 800B8348 ACEE0000 */  sw         $t6, 0x0($a3)
    /* C72FC 800B834C 8E830000 */  lw         $v1, 0x0($s4)
    /* C7300 800B8350 3C01F548 */  lui        $at, (0xF5480800 >> 16)
    /* C7304 800B8354 34210800 */  ori        $at, $at, (0xF5480800 & 0xFFFF)
    /* C7308 800B8358 24780008 */  addiu      $t8, $v1, 0x8
    /* C730C 800B835C AE980000 */  sw         $t8, 0x0($s4)
    /* C7310 800B8360 00604025 */  or         $t0, $v1, $zero
    /* C7314 800B8364 06610004 */  bgez       $s3, .L800B8378_C7328
    /* C7318 800B8368 32790001 */   andi      $t9, $s3, 0x1
    /* C731C 800B836C 13200002 */  beqz       $t9, .L800B8378_C7328
    /* C7320 800B8370 00000000 */   nop
    /* C7324 800B8374 2739FFFE */  addiu      $t9, $t9, -0x2
  .L800B8378_C7328:
    /* C7328 800B8378 001979C0 */  sll        $t7, $t9, 7
    /* C732C 800B837C 31EE01FF */  andi       $t6, $t7, 0x1FF
    /* C7330 800B8380 01C1C025 */  or         $t8, $t6, $at
    /* C7334 800B8384 AD180000 */  sw         $t8, 0x0($t0)
    /* C7338 800B8388 90590005 */  lbu        $t9, 0x5($v0)
    /* C733C 800B838C 90580006 */  lbu        $t8, 0x6($v0)
    /* C7340 800B8390 3C010001 */  lui        $at, (0x14000 >> 16)
    /* C7344 800B8394 332F0003 */  andi       $t7, $t9, 0x3
    /* C7348 800B8398 000F7200 */  sll        $t6, $t7, 8
    /* C734C 800B839C 33190003 */  andi       $t9, $t8, 0x3
    /* C7350 800B83A0 00197C80 */  sll        $t7, $t9, 18
    /* C7354 800B83A4 01CFC025 */  or         $t8, $t6, $t7
    /* C7358 800B83A8 34214000 */  ori        $at, $at, (0x14000 & 0xFFFF)
    /* C735C 800B83AC 0301C825 */  or         $t9, $t8, $at
    /* C7360 800B83B0 372E0050 */  ori        $t6, $t9, 0x50
    /* C7364 800B83B4 AD0E0004 */  sw         $t6, 0x4($t0)
    /* C7368 800B83B8 8E830000 */  lw         $v1, 0x0($s4)
    /* C736C 800B83BC 3C18E700 */  lui        $t8, (0xE7000000 >> 16)
    /* C7370 800B83C0 322B00FF */  andi       $t3, $s1, 0xFF
    /* C7374 800B83C4 246F0008 */  addiu      $t7, $v1, 0x8
    /* C7378 800B83C8 AE8F0000 */  sw         $t7, 0x0($s4)
    /* C737C 800B83CC AC600004 */  sw         $zero, 0x4($v1)
    /* C7380 800B83D0 AC780000 */  sw         $t8, 0x0($v1)
    /* C7384 800B83D4 8E830000 */  lw         $v1, 0x0($s4)
    /* C7388 800B83D8 320F00FF */  andi       $t7, $s0, 0xFF
    /* C738C 800B83DC 000B7200 */  sll        $t6, $t3, 8
    /* C7390 800B83E0 24790008 */  addiu      $t9, $v1, 0x8
    /* C7394 800B83E4 AE990000 */  sw         $t9, 0x0($s4)
    /* C7398 800B83E8 000FC400 */  sll        $t8, $t7, 16
    /* C739C 800B83EC 030EC825 */  or         $t9, $t8, $t6
    /* C73A0 800B83F0 01C05825 */  or         $t3, $t6, $zero
    /* C73A4 800B83F4 324C00FF */  andi       $t4, $s2, 0xFF
    /* C73A8 800B83F8 032C7025 */  or         $t6, $t9, $t4
    /* C73AC 800B83FC 3C01B100 */  lui        $at, (0xB1000000 >> 16)
    /* C73B0 800B8400 01C17825 */  or         $t7, $t6, $at
    /* C73B4 800B8404 000CC400 */  sll        $t8, $t4, 16
    /* C73B8 800B8408 030BC825 */  or         $t9, $t8, $t3
    /* C73BC 800B840C 31AE00FF */  andi       $t6, $t5, 0xFF
    /* C73C0 800B8410 27FF0001 */  addiu      $ra, $ra, 0x1
    /* C73C4 800B8414 AC6F0000 */  sw         $t7, 0x0($v1)
    /* C73C8 800B8418 25AD0008 */  addiu      $t5, $t5, 0x8
    /* C73CC 800B841C 032E7825 */  or         $t7, $t9, $t6
    /* C73D0 800B8420 001FC400 */  sll        $t8, $ra, 16
    /* C73D4 800B8424 26520008 */  addiu      $s2, $s2, 0x8
    /* C73D8 800B8428 26100008 */  addiu      $s0, $s0, 0x8
    /* C73DC 800B842C 26310008 */  addiu      $s1, $s1, 0x8
    /* C73E0 800B8430 24C60002 */  addiu      $a2, $a2, 0x2
    /* C73E4 800B8434 0018FC03 */  sra        $ra, $t8, 16
    /* C73E8 800B8438 15B6FFBA */  bne        $t5, $s6, .L800B8324_C72D4
    /* C73EC 800B843C AC6F0004 */   sw        $t7, 0x4($v1)
  .L800B8440_C73F0:
    /* C73F0 800B8440 87AE0116 */  lh         $t6, 0x116($sp)
    /* C73F4 800B8444 29C10009 */  slti       $at, $t6, 0x9
    /* C73F8 800B8448 14200003 */  bnez       $at, .L800B8458_C7408
    /* C73FC 800B844C 25CFFFF8 */   addiu     $t7, $t6, -0x8
    /* C7400 800B8450 10000002 */  b          .L800B845C_C740C
    /* C7404 800B8454 A7AF0116 */   sh        $t7, 0x116($sp)
  .L800B8458_C7408:
    /* C7408 800B8458 A7A00116 */  sh         $zero, 0x116($sp)
  .L800B845C_C740C:
    /* C740C 800B845C 87AE0116 */  lh         $t6, 0x116($sp)
    /* C7410 800B8460 27DE0008 */  addiu      $fp, $fp, 0x8
    /* C7414 800B8464 001EC400 */  sll        $t8, $fp, 16
    /* C7418 800B8468 1DC0FED3 */  bgtz       $t6, .L800B7FB8_C6F68
    /* C741C 800B846C 0018F403 */   sra       $fp, $t8, 16
    /* C7420 800B8470 3C0CE700 */  lui        $t4, (0xE7000000 >> 16)
    /* C7424 800B8474 8FA31340 */  lw         $v1, 0x1340($sp)
  .L800B8478_C7428:
    /* C7428 800B8478 8FA20050 */  lw         $v0, 0x50($sp)
    /* C742C 800B847C 24010008 */  addiu      $at, $zero, 0x8
    /* C7430 800B8480 24630001 */  addiu      $v1, $v1, 0x1
    /* C7434 800B8484 1461FE86 */  bne        $v1, $at, .L800B7EA0_C6E50
    /* C7438 800B8488 24420002 */   addiu     $v0, $v0, 0x2
    /* C743C 800B848C 8E830000 */  lw         $v1, 0x0($s4)
    /* C7440 800B8490 246F0008 */  addiu      $t7, $v1, 0x8
    /* C7444 800B8494 AE8F0000 */  sw         $t7, 0x0($s4)
    /* C7448 800B8498 AC600004 */  sw         $zero, 0x4($v1)
    /* C744C 800B849C AC6C0000 */  sw         $t4, 0x0($v1)
    /* C7450 800B84A0 8FBF002C */  lw         $ra, 0x2C($sp)
    /* C7454 800B84A4 8FBE0028 */  lw         $fp, 0x28($sp)
    /* C7458 800B84A8 8FB70024 */  lw         $s7, 0x24($sp)
    /* C745C 800B84AC 8FB60020 */  lw         $s6, 0x20($sp)
    /* C7460 800B84B0 8FB5001C */  lw         $s5, 0x1C($sp)
    /* C7464 800B84B4 8FB40018 */  lw         $s4, 0x18($sp)
    /* C7468 800B84B8 8FB30014 */  lw         $s3, 0x14($sp)
    /* C746C 800B84BC 8FB20010 */  lw         $s2, 0x10($sp)
    /* C7470 800B84C0 8FB1000C */  lw         $s1, 0xC($sp)
    /* C7474 800B84C4 8FB00008 */  lw         $s0, 0x8($sp)
    /* C7478 800B84C8 03E00008 */  jr         $ra
    /* C747C 800B84CC 27BD1348 */   addiu     $sp, $sp, 0x1348
endlabel func_800B753C_C64EC
