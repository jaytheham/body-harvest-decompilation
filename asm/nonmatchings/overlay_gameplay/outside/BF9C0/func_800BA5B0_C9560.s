nonmatching func_800BA5B0_C9560, 0xE20

glabel func_800BA5B0_C9560
    /* C9560 800BA5B0 27BDFE40 */  addiu      $sp, $sp, -0x1C0
    /* C9564 800BA5B4 308E00FF */  andi       $t6, $a0, 0xFF
    /* C9568 800BA5B8 000E7900 */  sll        $t7, $t6, 4
    /* C956C 800BA5BC 3C028005 */  lui        $v0, %hi(gameplayMode)
    /* C9570 800BA5C0 8C422ADC */  lw         $v0, %lo(gameplayMode)($v0)
    /* C9574 800BA5C4 01EE7821 */  addu       $t7, $t7, $t6
    /* C9578 800BA5C8 3C188005 */  lui        $t8, %hi(D_80052AE8)
    /* C957C 800BA5CC 27182AE8 */  addiu      $t8, $t8, %lo(D_80052AE8)
    /* C9580 800BA5D0 000F7880 */  sll        $t7, $t7, 2
    /* C9584 800BA5D4 AFBE0060 */  sw         $fp, 0x60($sp)
    /* C9588 800BA5D8 AFA501C4 */  sw         $a1, 0x1C4($sp)
    /* C958C 800BA5DC 01F81821 */  addu       $v1, $t7, $t8
    /* C9590 800BA5E0 2401000B */  addiu      $at, $zero, 0xB
    /* C9594 800BA5E4 AFBF0064 */  sw         $ra, 0x64($sp)
    /* C9598 800BA5E8 AFB7005C */  sw         $s7, 0x5C($sp)
    /* C959C 800BA5EC AFB60058 */  sw         $s6, 0x58($sp)
    /* C95A0 800BA5F0 AFB50054 */  sw         $s5, 0x54($sp)
    /* C95A4 800BA5F4 AFB40050 */  sw         $s4, 0x50($sp)
    /* C95A8 800BA5F8 AFB3004C */  sw         $s3, 0x4C($sp)
    /* C95AC 800BA5FC AFB20048 */  sw         $s2, 0x48($sp)
    /* C95B0 800BA600 AFB10044 */  sw         $s1, 0x44($sp)
    /* C95B4 800BA604 AFB00040 */  sw         $s0, 0x40($sp)
    /* C95B8 800BA608 F7BA0038 */  sdc1       $f26, 0x38($sp)
    /* C95BC 800BA60C F7B80030 */  sdc1       $f24, 0x30($sp)
    /* C95C0 800BA610 F7B60028 */  sdc1       $f22, 0x28($sp)
    /* C95C4 800BA614 F7B40020 */  sdc1       $f20, 0x20($sp)
    /* C95C8 800BA618 AFA401C0 */  sw         $a0, 0x1C0($sp)
    /* C95CC 800BA61C 847E003C */  lh         $fp, 0x3C($v1)
    /* C95D0 800BA620 8465003E */  lh         $a1, 0x3E($v1)
    /* C95D4 800BA624 10410004 */  beq        $v0, $at, .L800BA638_C95E8
    /* C95D8 800BA628 AFA0013C */   sw        $zero, 0x13C($sp)
    /* C95DC 800BA62C 24010003 */  addiu      $at, $zero, 0x3
    /* C95E0 800BA630 14410005 */  bne        $v0, $at, .L800BA648_C95F8
    /* C95E4 800BA634 00000000 */   nop
  .L800BA638_C95E8:
    /* C95E8 800BA638 3C1E8015 */  lui        $fp, %hi(D_80157F44)
    /* C95EC 800BA63C 3C058015 */  lui        $a1, %hi(D_80157F46)
    /* C95F0 800BA640 87DE7F44 */  lh         $fp, %lo(D_80157F44)($fp)
    /* C95F4 800BA644 84A57F46 */  lh         $a1, %lo(D_80157F46)($a1)
  .L800BA648_C95F8:
    /* C95F8 800BA648 07C10004 */  bgez       $fp, .L800BA65C_C960C
    /* C95FC 800BA64C 3C1F8014 */   lui       $ra, %hi(D_8013D940)
    /* C9600 800BA650 27DEFF00 */  addiu      $fp, $fp, -0x100
    /* C9604 800BA654 001ECC00 */  sll        $t9, $fp, 16
    /* C9608 800BA658 0019F403 */  sra        $fp, $t9, 16
  .L800BA65C_C960C:
    /* C960C 800BA65C 1BC00004 */  blez       $fp, .L800BA670_C9620
    /* C9610 800BA660 27FFD940 */   addiu     $ra, $ra, %lo(D_8013D940)
    /* C9614 800BA664 27DE0100 */  addiu      $fp, $fp, 0x100
    /* C9618 800BA668 001E7C00 */  sll        $t7, $fp, 16
    /* C961C 800BA66C 000FF403 */  sra        $fp, $t7, 16
  .L800BA670_C9620:
    /* C9620 800BA670 04A10004 */  bgez       $a1, .L800BA684_C9634
    /* C9624 800BA674 3C108014 */   lui       $s0, %hi(D_8013D944)
    /* C9628 800BA678 24A5FF00 */  addiu      $a1, $a1, -0x100
    /* C962C 800BA67C 0005CC00 */  sll        $t9, $a1, 16
    /* C9630 800BA680 00192C03 */  sra        $a1, $t9, 16
  .L800BA684_C9634:
    /* C9634 800BA684 18A00003 */  blez       $a1, .L800BA694_C9644
    /* C9638 800BA688 A7A501A8 */   sh        $a1, 0x1A8($sp)
    /* C963C 800BA68C 24B80100 */  addiu      $t8, $a1, 0x100
    /* C9640 800BA690 A7B801A8 */  sh         $t8, 0x1A8($sp)
  .L800BA694_C9644:
    /* C9644 800BA694 3C198004 */  lui        $t9, %hi(currentLevel)
    /* C9648 800BA698 8F397F90 */  lw         $t9, %lo(currentLevel)($t9)
    /* C964C 800BA69C 3C0F8014 */  lui        $t7, %hi(D_8013D988)
    /* C9650 800BA6A0 25EFD988 */  addiu      $t7, $t7, %lo(D_8013D988)
    /* C9654 800BA6A4 00197080 */  sll        $t6, $t9, 2
    /* C9658 800BA6A8 01D97023 */  subu       $t6, $t6, $t9
    /* C965C 800BA6AC 000E7040 */  sll        $t6, $t6, 1
    /* C9660 800BA6B0 01CF1021 */  addu       $v0, $t6, $t7
    /* C9664 800BA6B4 9058FFFA */  lbu        $t8, -0x6($v0)
    /* C9668 800BA6B8 9059FFFB */  lbu        $t9, -0x5($v0)
    /* C966C 800BA6BC 3C118006 */  lui        $s1, %hi(D_8005BB2C)
    /* C9670 800BA6C0 904EFFFC */  lbu        $t6, -0x4($v0)
    /* C9674 800BA6C4 2631BB2C */  addiu      $s1, $s1, %lo(D_8005BB2C)
    /* C9678 800BA6C8 2610D944 */  addiu      $s0, $s0, %lo(D_8013D944)
    /* C967C 800BA6CC 904FFFFD */  lbu        $t7, -0x3($v0)
    /* C9680 800BA6D0 8E230000 */  lw         $v1, 0x0($s1)
    /* C9684 800BA6D4 3C128014 */  lui        $s2, %hi(D_8013D948)
    /* C9688 800BA6D8 A3F80000 */  sb         $t8, 0x0($ra)
    /* C968C 800BA6DC A2190000 */  sb         $t9, 0x0($s0)
    /* C9690 800BA6E0 9058FFFE */  lbu        $t8, -0x2($v0)
    /* C9694 800BA6E4 9059FFFF */  lbu        $t9, -0x1($v0)
    /* C9698 800BA6E8 2652D948 */  addiu      $s2, $s2, %lo(D_8013D948)
    /* C969C 800BA6EC 3C138014 */  lui        $s3, %hi(D_8013D94C)
    /* C96A0 800BA6F0 2673D94C */  addiu      $s3, $s3, %lo(D_8013D94C)
    /* C96A4 800BA6F4 3C148014 */  lui        $s4, %hi(D_8013D950)
    /* C96A8 800BA6F8 3C158014 */  lui        $s5, %hi(D_8013D954)
    /* C96AC 800BA6FC A24E0000 */  sb         $t6, 0x0($s2)
    /* C96B0 800BA700 26B5D954 */  addiu      $s5, $s5, %lo(D_8013D954)
    /* C96B4 800BA704 2694D950 */  addiu      $s4, $s4, %lo(D_8013D950)
    /* C96B8 800BA708 A26F0000 */  sb         $t7, 0x0($s3)
    /* C96BC 800BA70C 246E0008 */  addiu      $t6, $v1, 0x8
    /* C96C0 800BA710 AE2E0000 */  sw         $t6, 0x0($s1)
    /* C96C4 800BA714 3C0FBA00 */  lui        $t7, (0xBA001001 >> 16)
    /* C96C8 800BA718 A2980000 */  sb         $t8, 0x0($s4)
    /* C96CC 800BA71C A2B90000 */  sb         $t9, 0x0($s5)
    /* C96D0 800BA720 35EF1001 */  ori        $t7, $t7, (0xBA001001 & 0xFFFF)
    /* C96D4 800BA724 AC6F0000 */  sw         $t7, 0x0($v1)
    /* C96D8 800BA728 AC600004 */  sw         $zero, 0x4($v1)
    /* C96DC 800BA72C 8E230000 */  lw         $v1, 0x0($s1)
    /* C96E0 800BA730 3C19FB00 */  lui        $t9, (0xFB000000 >> 16)
    /* C96E4 800BA734 3C178000 */  lui        $s7, (0x80008000 >> 16)
    /* C96E8 800BA738 24780008 */  addiu      $t8, $v1, 0x8
    /* C96EC 800BA73C AE380000 */  sw         $t8, 0x0($s1)
    /* C96F0 800BA740 AC790000 */  sw         $t9, 0x0($v1)
    /* C96F4 800BA744 93EF0000 */  lbu        $t7, 0x0($ra)
    /* C96F8 800BA748 920E0000 */  lbu        $t6, 0x0($s0)
    /* C96FC 800BA74C 36F78000 */  ori        $s7, $s7, (0x80008000 & 0xFFFF)
    /* C9700 800BA750 000FC600 */  sll        $t8, $t7, 24
    /* C9704 800BA754 000E7C00 */  sll        $t7, $t6, 16
    /* C9708 800BA758 030FC825 */  or         $t9, $t8, $t7
    /* C970C 800BA75C 92580000 */  lbu        $t8, 0x0($s2)
    /* C9710 800BA760 3C16E700 */  lui        $s6, (0xE7000000 >> 16)
    /* C9714 800BA764 3C128005 */  lui        $s2, %hi(D_80052A8C)
    /* C9718 800BA768 00187A00 */  sll        $t7, $t8, 8
    /* C971C 800BA76C 032F7025 */  or         $t6, $t9, $t7
    /* C9720 800BA770 35D800FF */  ori        $t8, $t6, 0xFF
    /* C9724 800BA774 AC780004 */  sw         $t8, 0x4($v1)
    /* C9728 800BA778 8E230000 */  lw         $v1, 0x0($s1)
    /* C972C 800BA77C 3C0FFA00 */  lui        $t7, (0xFA00FFFF >> 16)
    /* C9730 800BA780 35EFFFFF */  ori        $t7, $t7, (0xFA00FFFF & 0xFFFF)
    /* C9734 800BA784 24790008 */  addiu      $t9, $v1, 0x8
    /* C9738 800BA788 AE390000 */  sw         $t9, 0x0($s1)
    /* C973C 800BA78C AC6F0000 */  sw         $t7, 0x0($v1)
    /* C9740 800BA790 92780000 */  lbu        $t8, 0x0($s3)
    /* C9744 800BA794 928E0000 */  lbu        $t6, 0x0($s4)
    /* C9748 800BA798 4480C000 */  mtc1       $zero, $f24
    /* C974C 800BA79C 0018CE00 */  sll        $t9, $t8, 24
    /* C9750 800BA7A0 000EC400 */  sll        $t8, $t6, 16
    /* C9754 800BA7A4 03387825 */  or         $t7, $t9, $t8
    /* C9758 800BA7A8 92B90000 */  lbu        $t9, 0x0($s5)
    /* C975C 800BA7AC 26522A8C */  addiu      $s2, $s2, %lo(D_80052A8C)
    /* C9760 800BA7B0 3C1FF200 */  lui        $ra, (0xF200003C >> 16)
    /* C9764 800BA7B4 0019C200 */  sll        $t8, $t9, 8
    /* C9768 800BA7B8 01F87025 */  or         $t6, $t7, $t8
    /* C976C 800BA7BC 35D900FF */  ori        $t9, $t6, 0xFF
    /* C9770 800BA7C0 AC790004 */  sw         $t9, 0x4($v1)
    /* C9774 800BA7C4 8E230000 */  lw         $v1, 0x0($s1)
    /* C9778 800BA7C8 3C18BA00 */  lui        $t8, (0xBA001301 >> 16)
    /* C977C 800BA7CC 37181301 */  ori        $t8, $t8, (0xBA001301 & 0xFFFF)
    /* C9780 800BA7D0 246F0008 */  addiu      $t7, $v1, 0x8
    /* C9784 800BA7D4 AE2F0000 */  sw         $t7, 0x0($s1)
    /* C9788 800BA7D8 3C0E0008 */  lui        $t6, (0x80000 >> 16)
    /* C978C 800BA7DC AC6E0004 */  sw         $t6, 0x4($v1)
    /* C9790 800BA7E0 AC780000 */  sw         $t8, 0x0($v1)
    /* C9794 800BA7E4 8E230000 */  lw         $v1, 0x0($s1)
    /* C9798 800BA7E8 3C180001 */  lui        $t8, (0x13000 >> 16)
    /* C979C 800BA7EC 37183000 */  ori        $t8, $t8, (0x13000 & 0xFFFF)
    /* C97A0 800BA7F0 24790008 */  addiu      $t9, $v1, 0x8
    /* C97A4 800BA7F4 AE390000 */  sw         $t9, 0x0($s1)
    /* C97A8 800BA7F8 3C0FB600 */  lui        $t7, (0xB6000000 >> 16)
    /* C97AC 800BA7FC AC6F0000 */  sw         $t7, 0x0($v1)
    /* C97B0 800BA800 AC780004 */  sw         $t8, 0x4($v1)
    /* C97B4 800BA804 8E230000 */  lw         $v1, 0x0($s1)
    /* C97B8 800BA808 3C19BB00 */  lui        $t9, (0xBB000801 >> 16)
    /* C97BC 800BA80C 37390801 */  ori        $t9, $t9, (0xBB000801 & 0xFFFF)
    /* C97C0 800BA810 246E0008 */  addiu      $t6, $v1, 0x8
    /* C97C4 800BA814 AE2E0000 */  sw         $t6, 0x0($s1)
    /* C97C8 800BA818 AC770004 */  sw         $s7, 0x4($v1)
    /* C97CC 800BA81C AC790000 */  sw         $t9, 0x0($v1)
    /* C97D0 800BA820 8E230000 */  lw         $v1, 0x0($s1)
    /* C97D4 800BA824 3C0EBA00 */  lui        $t6, (0xBA001402 >> 16)
    /* C97D8 800BA828 35CE1402 */  ori        $t6, $t6, (0xBA001402 & 0xFFFF)
    /* C97DC 800BA82C 246F0008 */  addiu      $t7, $v1, 0x8
    /* C97E0 800BA830 AE2F0000 */  sw         $t7, 0x0($s1)
    /* C97E4 800BA834 AC600004 */  sw         $zero, 0x4($v1)
    /* C97E8 800BA838 AC760000 */  sw         $s6, 0x0($v1)
    /* C97EC 800BA83C 8E230000 */  lw         $v1, 0x0($s1)
    /* C97F0 800BA840 3C190010 */  lui        $t9, (0x100000 >> 16)
    /* C97F4 800BA844 3C0F8005 */  lui        $t7, %hi(D_80052A8C)
    /* C97F8 800BA848 24780008 */  addiu      $t8, $v1, 0x8
    /* C97FC 800BA84C AE380000 */  sw         $t8, 0x0($s1)
    /* C9800 800BA850 AC790004 */  sw         $t9, 0x4($v1)
    /* C9804 800BA854 AC6E0000 */  sw         $t6, 0x0($v1)
    /* C9808 800BA858 8DEF2A8C */  lw         $t7, %lo(D_80052A8C)($t7)
    /* C980C 800BA85C 24190040 */  addiu      $t9, $zero, 0x40
    /* C9810 800BA860 00009825 */  or         $s3, $zero, $zero
    /* C9814 800BA864 000FC040 */  sll        $t8, $t7, 1
    /* C9818 800BA868 330E007F */  andi       $t6, $t8, 0x7F
    /* C981C 800BA86C 032E6023 */  subu       $t4, $t9, $t6
    /* C9820 800BA870 000C6823 */  negu       $t5, $t4
    /* C9824 800BA874 01AC082B */  sltu       $at, $t5, $t4
    /* C9828 800BA878 10200003 */  beqz       $at, .L800BA888_C9838
    /* C982C 800BA87C 3C18EB00 */   lui       $t8, (0xEB000000 >> 16)
    /* C9830 800BA880 10000002 */  b          .L800BA88C_C983C
    /* C9834 800BA884 01802825 */   or        $a1, $t4, $zero
  .L800BA888_C9838:
    /* C9838 800BA888 01A02825 */  or         $a1, $t5, $zero
  .L800BA88C_C983C:
    /* C983C 800BA88C 8E230000 */  lw         $v1, 0x0($s1)
    /* C9840 800BA890 24190078 */  addiu      $t9, $zero, 0x78
    /* C9844 800BA894 3C018000 */  lui        $at, (0x80008000 >> 16)
    /* C9848 800BA898 246F0008 */  addiu      $t7, $v1, 0x8
    /* C984C 800BA89C AE2F0000 */  sw         $t7, 0x0($s1)
    /* C9850 800BA8A0 03257823 */  subu       $t7, $t9, $a1
    /* C9854 800BA8A4 31E700FF */  andi       $a3, $t7, 0xFF
    /* C9858 800BA8A8 34F98000 */  ori        $t9, $a3, 0x8000
    /* C985C 800BA8AC AC790004 */  sw         $t9, 0x4($v1)
    /* C9860 800BA8B0 AC780000 */  sw         $t8, 0x0($v1)
    /* C9864 800BA8B4 8E230000 */  lw         $v1, 0x0($s1)
    /* C9868 800BA8B8 0007C400 */  sll        $t8, $a3, 16
    /* C986C 800BA8BC 0301C825 */  or         $t9, $t8, $at
    /* C9870 800BA8C0 246E0008 */  addiu      $t6, $v1, 0x8
    /* C9874 800BA8C4 AE2E0000 */  sw         $t6, 0x0($s1)
    /* C9878 800BA8C8 3C0FEA00 */  lui        $t7, (0xEA000000 >> 16)
    /* C987C 800BA8CC 372E8000 */  ori        $t6, $t9, (0x80008000 & 0xFFFF)
    /* C9880 800BA8D0 AC6F0000 */  sw         $t7, 0x0($v1)
    /* C9884 800BA8D4 01C77825 */  or         $t7, $t6, $a3
    /* C9888 800BA8D8 AC6F0004 */  sw         $t7, 0x4($v1)
    /* C988C 800BA8DC 8E230000 */  lw         $v1, 0x0($s1)
    /* C9890 800BA8E0 3C0E23FD */  lui        $t6, (0x23FD7EFC >> 16)
    /* C9894 800BA8E4 3C19FC13 */  lui        $t9, (0xFC1314A0 >> 16)
    /* C9898 800BA8E8 24780008 */  addiu      $t8, $v1, 0x8
    /* C989C 800BA8EC AE380000 */  sw         $t8, 0x0($s1)
    /* C98A0 800BA8F0 373914A0 */  ori        $t9, $t9, (0xFC1314A0 & 0xFFFF)
    /* C98A4 800BA8F4 35CE7EFC */  ori        $t6, $t6, (0x23FD7EFC & 0xFFFF)
    /* C98A8 800BA8F8 AC6E0004 */  sw         $t6, 0x4($v1)
    /* C98AC 800BA8FC AC790000 */  sw         $t9, 0x0($v1)
    /* C98B0 800BA900 8E230000 */  lw         $v1, 0x0($s1)
    /* C98B4 800BA904 3C190C18 */  lui        $t9, (0xC1845D8 >> 16)
    /* C98B8 800BA908 3C18B900 */  lui        $t8, (0xB900031D >> 16)
    /* C98BC 800BA90C 246F0008 */  addiu      $t7, $v1, 0x8
    /* C98C0 800BA910 AE2F0000 */  sw         $t7, 0x0($s1)
    /* C98C4 800BA914 3718031D */  ori        $t8, $t8, (0xB900031D & 0xFFFF)
    /* C98C8 800BA918 373945D8 */  ori        $t9, $t9, (0xC1845D8 & 0xFFFF)
    /* C98CC 800BA91C AC790004 */  sw         $t9, 0x4($v1)
    /* C98D0 800BA920 AC780000 */  sw         $t8, 0x0($v1)
    /* C98D4 800BA924 8E230000 */  lw         $v1, 0x0($s1)
    /* C98D8 800BA928 3C0FBA00 */  lui        $t7, (0xBA000C02 >> 16)
    /* C98DC 800BA92C 35EF0C02 */  ori        $t7, $t7, (0xBA000C02 & 0xFFFF)
    /* C98E0 800BA930 246E0008 */  addiu      $t6, $v1, 0x8
    /* C98E4 800BA934 AE2E0000 */  sw         $t6, 0x0($s1)
    /* C98E8 800BA938 24182000 */  addiu      $t8, $zero, 0x2000
    /* C98EC 800BA93C AC780004 */  sw         $t8, 0x4($v1)
    /* C98F0 800BA940 AC6F0000 */  sw         $t7, 0x0($v1)
    /* C98F4 800BA944 8E230000 */  lw         $v1, 0x0($s1)
    /* C98F8 800BA948 3C0F0504 */  lui        $t7, %hi(D_5041A80)
    /* C98FC 800BA94C 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* C9900 800BA950 24790008 */  addiu      $t9, $v1, 0x8
    /* C9904 800BA954 AE390000 */  sw         $t9, 0x0($s1)
    /* C9908 800BA958 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* C990C 800BA95C 25EF1A80 */  addiu      $t7, $t7, %lo(D_5041A80)
    /* C9910 800BA960 01E1C024 */  and        $t8, $t7, $at
    /* C9914 800BA964 3C0EFD90 */  lui        $t6, (0xFD900000 >> 16)
    /* C9918 800BA968 AC6E0000 */  sw         $t6, 0x0($v1)
    /* C991C 800BA96C AC780004 */  sw         $t8, 0x4($v1)
    /* C9920 800BA970 8E2C0000 */  lw         $t4, 0x0($s1)
    /* C9924 800BA974 3C0EF590 */  lui        $t6, (0xF5900000 >> 16)
    /* C9928 800BA978 3C0F0700 */  lui        $t7, (0x7000000 >> 16)
    /* C992C 800BA97C 25990008 */  addiu      $t9, $t4, 0x8
    /* C9930 800BA980 AE390000 */  sw         $t9, 0x0($s1)
    /* C9934 800BA984 AD8F0004 */  sw         $t7, 0x4($t4)
    /* C9938 800BA988 AD8E0000 */  sw         $t6, 0x0($t4)
    /* C993C 800BA98C 8E230000 */  lw         $v1, 0x0($s1)
    /* C9940 800BA990 3C19E600 */  lui        $t9, (0xE6000000 >> 16)
    /* C9944 800BA994 3C0FF300 */  lui        $t7, (0xF3000000 >> 16)
    /* C9948 800BA998 24780008 */  addiu      $t8, $v1, 0x8
    /* C994C 800BA99C AE380000 */  sw         $t8, 0x0($s1)
    /* C9950 800BA9A0 AC600004 */  sw         $zero, 0x4($v1)
    /* C9954 800BA9A4 AC790000 */  sw         $t9, 0x0($v1)
    /* C9958 800BA9A8 8E230000 */  lw         $v1, 0x0($s1)
    /* C995C 800BA9AC 3C18077F */  lui        $t8, (0x77FF100 >> 16)
    /* C9960 800BA9B0 3718F100 */  ori        $t8, $t8, (0x77FF100 & 0xFFFF)
    /* C9964 800BA9B4 246E0008 */  addiu      $t6, $v1, 0x8
    /* C9968 800BA9B8 AE2E0000 */  sw         $t6, 0x0($s1)
    /* C996C 800BA9BC AC780004 */  sw         $t8, 0x4($v1)
    /* C9970 800BA9C0 AC6F0000 */  sw         $t7, 0x0($v1)
    /* C9974 800BA9C4 8E300000 */  lw         $s0, 0x0($s1)
    /* C9978 800BA9C8 3C0DF588 */  lui        $t5, (0xF5881000 >> 16)
    /* C997C 800BA9CC 3C0F0101 */  lui        $t7, (0x1018060 >> 16)
    /* C9980 800BA9D0 26190008 */  addiu      $t9, $s0, 0x8
    /* C9984 800BA9D4 AE390000 */  sw         $t9, 0x0($s1)
    /* C9988 800BA9D8 AE000004 */  sw         $zero, 0x4($s0)
    /* C998C 800BA9DC AE160000 */  sw         $s6, 0x0($s0)
    /* C9990 800BA9E0 8E240000 */  lw         $a0, 0x0($s1)
    /* C9994 800BA9E4 35AD1000 */  ori        $t5, $t5, (0xF5881000 & 0xFFFF)
    /* C9998 800BA9E8 35EF8060 */  ori        $t7, $t7, (0x1018060 & 0xFFFF)
    /* C999C 800BA9EC 248E0008 */  addiu      $t6, $a0, 0x8
    /* C99A0 800BA9F0 AE2E0000 */  sw         $t6, 0x0($s1)
    /* C99A4 800BA9F4 AC8F0004 */  sw         $t7, 0x4($a0)
    /* C99A8 800BA9F8 AC8D0000 */  sw         $t5, 0x0($a0)
    /* C99AC 800BA9FC 8E420000 */  lw         $v0, 0x0($s2)
    /* C99B0 800BAA00 8E250000 */  lw         $a1, 0x0($s1)
    /* C99B4 800BAA04 3C010100 */  lui        $at, (0x1000138 >> 16)
    /* C99B8 800BAA08 0002C042 */  srl        $t8, $v0, 1
    /* C99BC 800BAA0C 00187023 */  negu       $t6, $t8
    /* C99C0 800BAA10 03001025 */  or         $v0, $t8, $zero
    /* C99C4 800BAA14 31CF0FFF */  andi       $t7, $t6, 0xFFF
    /* C99C8 800BAA18 24B90008 */  addiu      $t9, $a1, 0x8
    /* C99CC 800BAA1C AE390000 */  sw         $t9, 0x0($s1)
    /* C99D0 800BAA20 000FC300 */  sll        $t8, $t7, 12
    /* C99D4 800BAA24 031FC825 */  or         $t9, $t8, $ra
    /* C99D8 800BAA28 372E003C */  ori        $t6, $t9, (0xF200003C & 0xFFFF)
    /* C99DC 800BAA2C 240F00FC */  addiu      $t7, $zero, 0xFC
    /* C99E0 800BAA30 01E2C023 */  subu       $t8, $t7, $v0
    /* C99E4 800BAA34 33190FFF */  andi       $t9, $t8, 0xFFF
    /* C99E8 800BAA38 ACAE0000 */  sw         $t6, 0x0($a1)
    /* C99EC 800BAA3C 00197300 */  sll        $t6, $t9, 12
    /* C99F0 800BAA40 01C17825 */  or         $t7, $t6, $at
    /* C99F4 800BAA44 35F80138 */  ori        $t8, $t7, (0x1000138 & 0xFFFF)
    /* C99F8 800BAA48 ACB80004 */  sw         $t8, 0x4($a1)
    /* C99FC 800BAA4C 8E260000 */  lw         $a2, 0x0($s1)
    /* C9A00 800BAA50 3C0E0201 */  lui        $t6, (0x2018060 >> 16)
    /* C9A04 800BAA54 35CE8060 */  ori        $t6, $t6, (0x2018060 & 0xFFFF)
    /* C9A08 800BAA58 24D90008 */  addiu      $t9, $a2, 0x8
    /* C9A0C 800BAA5C AE390000 */  sw         $t9, 0x0($s1)
    /* C9A10 800BAA60 ACCE0004 */  sw         $t6, 0x4($a2)
    /* C9A14 800BAA64 ACCD0000 */  sw         $t5, 0x0($a2)
    /* C9A18 800BAA68 8E420000 */  lw         $v0, 0x0($s2)
    /* C9A1C 800BAA6C 8E270000 */  lw         $a3, 0x0($s1)
    /* C9A20 800BAA70 3C010200 */  lui        $at, (0x2000000 >> 16)
    /* C9A24 800BAA74 30480FFF */  andi       $t0, $v0, 0xFFF
    /* C9A28 800BAA78 0008C300 */  sll        $t8, $t0, 12
    /* C9A2C 800BAA7C 24EF0008 */  addiu      $t7, $a3, 0x8
    /* C9A30 800BAA80 AE2F0000 */  sw         $t7, 0x0($s1)
    /* C9A34 800BAA84 031FC825 */  or         $t9, $t8, $ra
    /* C9A38 800BAA88 244900FC */  addiu      $t1, $v0, 0xFC
    /* C9A3C 800BAA8C 312F0FFF */  andi       $t7, $t1, 0xFFF
    /* C9A40 800BAA90 03287025 */  or         $t6, $t9, $t0
    /* C9A44 800BAA94 000FC300 */  sll        $t8, $t7, 12
    /* C9A48 800BAA98 0301C825 */  or         $t9, $t8, $at
    /* C9A4C 800BAA9C ACEE0000 */  sw         $t6, 0x0($a3)
    /* C9A50 800BAAA0 032F7025 */  or         $t6, $t9, $t7
    /* C9A54 800BAAA4 ACEE0004 */  sw         $t6, 0x4($a3)
    /* C9A58 800BAAA8 8E2A0000 */  lw         $t2, 0x0($s1)
    /* C9A5C 800BAAAC 01E04825 */  or         $t1, $t7, $zero
    /* C9A60 800BAAB0 3C18BB00 */  lui        $t8, (0xBB000101 >> 16)
    /* C9A64 800BAAB4 254F0008 */  addiu      $t7, $t2, 0x8
    /* C9A68 800BAAB8 AE2F0000 */  sw         $t7, 0x0($s1)
    /* C9A6C 800BAABC 37180101 */  ori        $t8, $t8, (0xBB000101 & 0xFFFF)
    /* C9A70 800BAAC0 AD580000 */  sw         $t8, 0x0($t2)
    /* C9A74 800BAAC4 AD570004 */  sw         $s7, 0x4($t2)
    /* C9A78 800BAAC8 8E230000 */  lw         $v1, 0x0($s1)
    /* C9A7C 800BAACC 3C014300 */  lui        $at, (0x43000000 >> 16)
    /* C9A80 800BAAD0 4481D000 */  mtc1       $at, $f26
    /* C9A84 800BAAD4 24790008 */  addiu      $t9, $v1, 0x8
    /* C9A88 800BAAD8 AE390000 */  sw         $t9, 0x0($s1)
    /* C9A8C 800BAADC AC600004 */  sw         $zero, 0x4($v1)
    /* C9A90 800BAAE0 AC760000 */  sw         $s6, 0x0($v1)
    /* C9A94 800BAAE4 87A601A8 */  lh         $a2, 0x1A8($sp)
    /* C9A98 800BAAE8 00605825 */  or         $t3, $v1, $zero
    /* C9A9C 800BAAEC 07C10004 */  bgez       $fp, .L800BAB00_C9AB0
    /* C9AA0 800BAAF0 33CC01FF */   andi      $t4, $fp, 0x1FF
    /* C9AA4 800BAAF4 11800002 */  beqz       $t4, .L800BAB00_C9AB0
    /* C9AA8 800BAAF8 00000000 */   nop
    /* C9AAC 800BAAFC 258CFE00 */  addiu      $t4, $t4, -0x200
  .L800BAB00_C9AB0:
    /* C9AB0 800BAB00 000C7400 */  sll        $t6, $t4, 16
    /* C9AB4 800BAB04 000E7C03 */  sra        $t7, $t6, 16
    /* C9AB8 800BAB08 03CFF023 */  subu       $fp, $fp, $t7
    /* C9ABC 800BAB0C 8E230000 */  lw         $v1, 0x0($s1)
    /* C9AC0 800BAB10 001EC400 */  sll        $t8, $fp, 16
    /* C9AC4 800BAB14 0018CC03 */  sra        $t9, $t8, 16
    /* C9AC8 800BAB18 01E06025 */  or         $t4, $t7, $zero
    /* C9ACC 800BAB1C 0320F025 */  or         $fp, $t9, $zero
    /* C9AD0 800BAB20 04C10004 */  bgez       $a2, .L800BAB34_C9AE4
    /* C9AD4 800BAB24 30CE01FF */   andi      $t6, $a2, 0x1FF
    /* C9AD8 800BAB28 11C00002 */  beqz       $t6, .L800BAB34_C9AE4
    /* C9ADC 800BAB2C 00000000 */   nop
    /* C9AE0 800BAB30 25CEFE00 */  addiu      $t6, $t6, -0x200
  .L800BAB34_C9AE4:
    /* C9AE4 800BAB34 00CE3023 */  subu       $a2, $a2, $t6
    /* C9AE8 800BAB38 0006CC00 */  sll        $t9, $a2, 16
    /* C9AEC 800BAB3C 246F0008 */  addiu      $t7, $v1, 0x8
    /* C9AF0 800BAB40 00193403 */  sra        $a2, $t9, 16
    /* C9AF4 800BAB44 AE2F0000 */  sw         $t7, 0x0($s1)
    /* C9AF8 800BAB48 24193000 */  addiu      $t9, $zero, 0x3000
    /* C9AFC 800BAB4C 3C18B600 */  lui        $t8, (0xB6000000 >> 16)
    /* C9B00 800BAB50 AC780000 */  sw         $t8, 0x0($v1)
    /* C9B04 800BAB54 AC790004 */  sw         $t9, 0x4($v1)
    /* C9B08 800BAB58 8E4E0000 */  lw         $t6, 0x0($s2)
    /* C9B0C 800BAB5C 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* C9B10 800BAB60 3C178006 */  lui        $s7, %hi(D_8005BB34)
    /* C9B14 800BAB64 000E7880 */  sll        $t7, $t6, 2
    /* C9B18 800BAB68 01EE7823 */  subu       $t7, $t7, $t6
    /* C9B1C 800BAB6C 000F7880 */  sll        $t7, $t7, 2
    /* C9B20 800BAB70 01EE7823 */  subu       $t7, $t7, $t6
    /* C9B24 800BAB74 000F7900 */  sll        $t7, $t7, 4
    /* C9B28 800BAB78 01EE7823 */  subu       $t7, $t7, $t6
    /* C9B2C 800BAB7C 000F7880 */  sll        $t7, $t7, 2
    /* C9B30 800BAB80 A7AF0138 */  sh         $t7, 0x138($sp)
    /* C9B34 800BAB84 4481C800 */  mtc1       $at, $f25
    /* C9B38 800BAB88 26F7BB34 */  addiu      $s7, $s7, %lo(D_8005BB34)
    /* C9B3C 800BAB8C A7A601A8 */  sh         $a2, 0x1A8($sp)
    /* C9B40 800BAB90 00601025 */  or         $v0, $v1, $zero
    /* C9B44 800BAB94 07C10004 */  bgez       $fp, .L800BABA8_C9B58
    /* C9B48 800BAB98 33D80FFF */   andi      $t8, $fp, 0xFFF
    /* C9B4C 800BAB9C 13000002 */  beqz       $t8, .L800BABA8_C9B58
    /* C9B50 800BABA0 00000000 */   nop
    /* C9B54 800BABA4 2718F000 */  addiu      $t8, $t8, -0x1000
  .L800BABA8_C9B58:
    /* C9B58 800BABA8 0018C880 */  sll        $t9, $t8, 2
    /* C9B5C 800BABAC 00197400 */  sll        $t6, $t9, 16
    /* C9B60 800BABB0 000E7C03 */  sra        $t7, $t6, 16
    /* C9B64 800BABB4 AFAF0074 */  sw         $t7, 0x74($sp)
    /* C9B68 800BABB8 04C10004 */  bgez       $a2, .L800BABCC_C9B7C
    /* C9B6C 800BABBC 30C70FFF */   andi      $a3, $a2, 0xFFF
    /* C9B70 800BABC0 10E00002 */  beqz       $a3, .L800BABCC_C9B7C
    /* C9B74 800BABC4 00000000 */   nop
    /* C9B78 800BABC8 24E7F000 */  addiu      $a3, $a3, -0x1000
  .L800BABCC_C9B7C:
    /* C9B7C 800BABCC 0007CC80 */  sll        $t9, $a3, 18
    /* C9B80 800BABD0 00197403 */  sra        $t6, $t9, 16
    /* C9B84 800BABD4 AFAE0070 */  sw         $t6, 0x70($sp)
    /* C9B88 800BABD8 001378C0 */  sll        $t7, $s3, 3
  .L800BABDC_C9B8C:
    /* C9B8C 800BABDC 01F37821 */  addu       $t7, $t7, $s3
    /* C9B90 800BABE0 27B80144 */  addiu      $t8, $sp, 0x144
    /* C9B94 800BABE4 87A601A8 */  lh         $a2, 0x1A8($sp)
    /* C9B98 800BABE8 01F8C821 */  addu       $t9, $t7, $t8
    /* C9B9C 800BABEC 00137E40 */  sll        $t7, $s3, 25
    /* C9BA0 800BABF0 000FC403 */  sra        $t8, $t7, 16
    /* C9BA4 800BABF4 00D81023 */  subu       $v0, $a2, $t8
    /* C9BA8 800BABF8 8FA70070 */  lw         $a3, 0x70($sp)
    /* C9BAC 800BABFC 24420700 */  addiu      $v0, $v0, 0x700
    /* C9BB0 800BAC00 44822000 */  mtc1       $v0, $f4
    /* C9BB4 800BAC04 AFB90098 */  sw         $t9, 0x98($sp)
    /* C9BB8 800BAC08 0002CC00 */  sll        $t9, $v0, 16
    /* C9BBC 800BAC0C 00137AC0 */  sll        $t7, $s3, 11
    /* C9BC0 800BAC10 00197403 */  sra        $t6, $t9, 16
    /* C9BC4 800BAC14 00EFC023 */  subu       $t8, $a3, $t7
    /* C9BC8 800BAC18 AFB8006C */  sw         $t8, 0x6C($sp)
    /* C9BCC 800BAC1C AFAE0084 */  sw         $t6, 0x84($sp)
    /* C9BD0 800BAC20 AFA2008C */  sw         $v0, 0x8C($sp)
    /* C9BD4 800BAC24 00008025 */  or         $s0, $zero, $zero
    /* C9BD8 800BAC28 468025A0 */  cvt.s.w    $f22, $f4
    /* C9BDC 800BAC2C 8FB90098 */  lw         $t9, 0x98($sp)
  .L800BAC30_C9BE0:
    /* C9BE0 800BAC30 0010C640 */  sll        $t8, $s0, 25
    /* C9BE4 800BAC34 240E0004 */  addiu      $t6, $zero, 0x4
    /* C9BE8 800BAC38 0330A021 */  addu       $s4, $t9, $s0
    /* C9BEC 800BAC3C 0018CC03 */  sra        $t9, $t8, 16
    /* C9BF0 800BAC40 03D9A821 */  addu       $s5, $fp, $t9
    /* C9BF4 800BAC44 26B5F700 */  addiu      $s5, $s5, -0x900
    /* C9BF8 800BAC48 A28E0000 */  sb         $t6, 0x0($s4)
    /* C9BFC 800BAC4C 00152400 */  sll        $a0, $s5, 16
    /* C9C00 800BAC50 00047403 */  sra        $t6, $a0, 16
    /* C9C04 800BAC54 01C02025 */  or         $a0, $t6, $zero
    /* C9C08 800BAC58 AFAE0088 */  sw         $t6, 0x88($sp)
    /* C9C0C 800BAC5C 0C02E134 */  jal        func_800B84D0_C7480
    /* C9C10 800BAC60 87A50086 */   lh        $a1, 0x86($sp)
    /* C9C14 800BAC64 3C0F8022 */  lui        $t7, %hi(D_80222A70)
    /* C9C18 800BAC68 8DEF2A70 */  lw         $t7, %lo(D_80222A70)($t7)
    /* C9C1C 800BAC6C 0002C203 */  sra        $t8, $v0, 8
    /* C9C20 800BAC70 0000B025 */  or         $s6, $zero, $zero
    /* C9C24 800BAC74 01F89023 */  subu       $s2, $t7, $t8
    /* C9C28 800BAC78 0012CC00 */  sll        $t9, $s2, 16
    /* C9C2C 800BAC7C 00199403 */  sra        $s2, $t9, 16
    /* C9C30 800BAC80 1A400032 */  blez       $s2, .L800BAD4C_C9CFC
    /* C9C34 800BAC84 97AF0138 */   lhu       $t7, 0x138($sp)
    /* C9C38 800BAC88 07C10003 */  bgez       $fp, .L800BAC98_C9C48
    /* C9C3C 800BAC8C 001EC243 */   sra       $t8, $fp, 9
    /* C9C40 800BAC90 27C101FF */  addiu      $at, $fp, 0x1FF
    /* C9C44 800BAC94 0001C243 */  sra        $t8, $at, 9
  .L800BAC98_C9C48:
    /* C9C48 800BAC98 0310C821 */  addu       $t9, $t8, $s0
    /* C9C4C 800BAC9C 07210004 */  bgez       $t9, .L800BACB0_C9C60
    /* C9C50 800BACA0 332E0001 */   andi      $t6, $t9, 0x1
    /* C9C54 800BACA4 11C00002 */  beqz       $t6, .L800BACB0_C9C60
    /* C9C58 800BACA8 00000000 */   nop
    /* C9C5C 800BACAC 25CEFFFE */  addiu      $t6, $t6, -0x2
  .L800BACB0_C9C60:
    /* C9C60 800BACB0 240158AC */  addiu      $at, $zero, 0x58AC
    /* C9C64 800BACB4 01C10019 */  multu      $t6, $at
    /* C9C68 800BACB8 87AE01A8 */  lh         $t6, 0x1A8($sp)
    /* C9C6C 800BACBC 0000C012 */  mflo       $t8
    /* C9C70 800BACC0 01F8C821 */  addu       $t9, $t7, $t8
    /* C9C74 800BACC4 05C10003 */  bgez       $t6, .L800BACD4_C9C84
    /* C9C78 800BACC8 000E7A43 */   sra       $t7, $t6, 9
    /* C9C7C 800BACCC 25C101FF */  addiu      $at, $t6, 0x1FF
    /* C9C80 800BACD0 00017A43 */  sra        $t7, $at, 9
  .L800BACD4_C9C84:
    /* C9C84 800BACD4 01F3C021 */  addu       $t8, $t7, $s3
    /* C9C88 800BACD8 270E0001 */  addiu      $t6, $t8, 0x1
    /* C9C8C 800BACDC 05C10004 */  bgez       $t6, .L800BACF0_C9CA0
    /* C9C90 800BACE0 31CF0001 */   andi      $t7, $t6, 0x1
    /* C9C94 800BACE4 11E00002 */  beqz       $t7, .L800BACF0_C9CA0
    /* C9C98 800BACE8 00000000 */   nop
    /* C9C9C 800BACEC 25EFFFFE */  addiu      $t7, $t7, -0x2
  .L800BACF0_C9CA0:
    /* C9CA0 800BACF0 34019B14 */  ori        $at, $zero, 0x9B14
    /* C9CA4 800BACF4 01E10019 */  multu      $t7, $at
    /* C9CA8 800BACF8 0000C012 */  mflo       $t8
    /* C9CAC 800BACFC 03382021 */  addu       $a0, $t9, $t8
    /* C9CB0 800BAD00 308EFFFF */  andi       $t6, $a0, 0xFFFF
    /* C9CB4 800BAD04 0C007654 */  jal        coss
    /* C9CB8 800BAD08 01C02025 */   or        $a0, $t6, $zero
    /* C9CBC 800BAD0C 2401000A */  addiu      $at, $zero, 0xA
    /* C9CC0 800BAD10 0241001A */  div        $zero, $s2, $at
    /* C9CC4 800BAD14 44823000 */  mtc1       $v0, $f6
    /* C9CC8 800BAD18 00007812 */  mflo       $t7
    /* C9CCC 800BAD1C 448F9000 */  mtc1       $t7, $f18
    /* C9CD0 800BAD20 46803220 */  cvt.s.w    $f8, $f6
    /* C9CD4 800BAD24 46809121 */  cvt.d.w    $f4, $f18
    /* C9CD8 800BAD28 460042A1 */  cvt.d.s    $f10, $f8
    /* C9CDC 800BAD2C 46385403 */  div.d      $f16, $f10, $f24
    /* C9CE0 800BAD30 46248182 */  mul.d      $f6, $f16, $f4
    /* C9CE4 800BAD34 4620320D */  trunc.w.d  $f8, $f6
    /* C9CE8 800BAD38 44164000 */  mfc1       $s6, $f8
    /* C9CEC 800BAD3C 00000000 */  nop
    /* C9CF0 800BAD40 0016C400 */  sll        $t8, $s6, 16
    /* C9CF4 800BAD44 10000001 */  b          .L800BAD4C_C9CFC
    /* C9CF8 800BAD48 0018B403 */   sra       $s6, $t8, 16
  .L800BAD4C_C9CFC:
    /* C9CFC 800BAD4C 3C0F8004 */  lui        $t7, %hi(currentLevel)
    /* C9D00 800BAD50 8DEF7F90 */  lw         $t7, %lo(currentLevel)($t7)
    /* C9D04 800BAD54 24010001 */  addiu      $at, $zero, 0x1
    /* C9D08 800BAD58 24080064 */  addiu      $t0, $zero, 0x64
    /* C9D0C 800BAD5C 15E10003 */  bne        $t7, $at, .L800BAD6C_C9D1C
    /* C9D10 800BAD60 3C028005 */   lui       $v0, %hi(gameplayMode)
    /* C9D14 800BAD64 10000001 */  b          .L800BAD6C_C9D1C
    /* C9D18 800BAD68 240800C8 */   addiu     $t0, $zero, 0xC8
  .L800BAD6C_C9D1C:
    /* C9D1C 800BAD6C 8C422ADC */  lw         $v0, %lo(gameplayMode)($v0)
    /* C9D20 800BAD70 2401000B */  addiu      $at, $zero, 0xB
    /* C9D24 800BAD74 10410003 */  beq        $v0, $at, .L800BAD84_C9D34
    /* C9D28 800BAD78 24010003 */   addiu     $at, $zero, 0x3
    /* C9D2C 800BAD7C 14410016 */  bne        $v0, $at, .L800BADD8_C9D88
    /* C9D30 800BAD80 3C038005 */   lui       $v1, %hi(D_80052B2C)
  .L800BAD84_C9D34:
    /* C9D34 800BAD84 44955000 */  mtc1       $s5, $f10
    /* C9D38 800BAD88 3C028015 */  lui        $v0, %hi(D_80157F08)
    /* C9D3C 800BAD8C 24427F08 */  addiu      $v0, $v0, %lo(D_80157F08)
    /* C9D40 800BAD90 46805520 */  cvt.s.w    $f20, $f10
    /* C9D44 800BAD94 C4520000 */  lwc1       $f18, 0x0($v0)
    /* C9D48 800BAD98 C4460008 */  lwc1       $f6, 0x8($v0)
    /* C9D4C 800BAD9C 00003025 */  or         $a2, $zero, $zero
    /* C9D50 800BADA0 310700FF */  andi       $a3, $t0, 0xFF
    /* C9D54 800BADA4 4606B201 */  sub.s      $f8, $f22, $f6
    /* C9D58 800BADA8 4612A401 */  sub.s      $f16, $f20, $f18
    /* C9D5C 800BADAC 4600428D */  trunc.w.s  $f10, $f8
    /* C9D60 800BADB0 4600810D */  trunc.w.s  $f4, $f16
    /* C9D64 800BADB4 44055000 */  mfc1       $a1, $f10
    /* C9D68 800BADB8 44042000 */  mfc1       $a0, $f4
    /* C9D6C 800BADBC 0005CC00 */  sll        $t9, $a1, 16
    /* C9D70 800BADC0 00192C03 */  sra        $a1, $t9, 16
    /* C9D74 800BADC4 0004C400 */  sll        $t8, $a0, 16
    /* C9D78 800BADC8 0C02E94B */  jal        func_800BA52C_C94DC
    /* C9D7C 800BADCC 00182403 */   sra       $a0, $t8, 16
    /* C9D80 800BADD0 10000014 */  b          .L800BAE24_C9DD4
    /* C9D84 800BADD4 8EF90000 */   lw        $t9, 0x0($s7)
  .L800BADD8_C9D88:
    /* C9D88 800BADD8 44959000 */  mtc1       $s5, $f18
    /* C9D8C 800BADDC 8C632B2C */  lw         $v1, %lo(D_80052B2C)($v1)
    /* C9D90 800BADE0 00003025 */  or         $a2, $zero, $zero
    /* C9D94 800BADE4 46809520 */  cvt.s.w    $f20, $f18
    /* C9D98 800BADE8 C4700000 */  lwc1       $f16, 0x0($v1)
    /* C9D9C 800BADEC C4680008 */  lwc1       $f8, 0x8($v1)
    /* C9DA0 800BADF0 310700FF */  andi       $a3, $t0, 0xFF
    /* C9DA4 800BADF4 4608B281 */  sub.s      $f10, $f22, $f8
    /* C9DA8 800BADF8 4610A101 */  sub.s      $f4, $f20, $f16
    /* C9DAC 800BADFC 4600548D */  trunc.w.s  $f18, $f10
    /* C9DB0 800BAE00 4600218D */  trunc.w.s  $f6, $f4
    /* C9DB4 800BAE04 44059000 */  mfc1       $a1, $f18
    /* C9DB8 800BAE08 44043000 */  mfc1       $a0, $f6
    /* C9DBC 800BAE0C 00057400 */  sll        $t6, $a1, 16
    /* C9DC0 800BAE10 000E2C03 */  sra        $a1, $t6, 16
    /* C9DC4 800BAE14 00047C00 */  sll        $t7, $a0, 16
    /* C9DC8 800BAE18 0C02E94B */  jal        func_800BA52C_C94DC
    /* C9DCC 800BAE1C 000F2403 */   sra       $a0, $t7, 16
    /* C9DD0 800BAE20 8EF90000 */  lw         $t9, 0x0($s7)
  .L800BAE24_C9DD4:
    /* C9DD4 800BAE24 3C188022 */  lui        $t8, %hi(D_80222A70)
    /* C9DD8 800BAE28 3C038005 */  lui        $v1, %hi(D_80052B2C)
    /* C9DDC 800BAE2C A7350000 */  sh         $s5, 0x0($t9)
    /* C9DE0 800BAE30 8F182A70 */  lw         $t8, %lo(D_80222A70)($t8)
    /* C9DE4 800BAE34 8EEF0000 */  lw         $t7, 0x0($s7)
    /* C9DE8 800BAE38 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* C9DEC 800BAE3C 02D87021 */  addu       $t6, $s6, $t8
    /* C9DF0 800BAE40 A5EE0002 */  sh         $t6, 0x2($t7)
    /* C9DF4 800BAE44 8EF80000 */  lw         $t8, 0x0($s7)
    /* C9DF8 800BAE48 8FB9008C */  lw         $t9, 0x8C($sp)
    /* C9DFC 800BAE4C A7190004 */  sh         $t9, 0x4($t8)
    /* C9E00 800BAE50 8EEE0000 */  lw         $t6, 0x0($s7)
    /* C9E04 800BAE54 0010CAC0 */  sll        $t9, $s0, 11
    /* C9E08 800BAE58 A5C00006 */  sh         $zero, 0x6($t6)
    /* C9E0C 800BAE5C 8FAF0074 */  lw         $t7, 0x74($sp)
    /* C9E10 800BAE60 8EEE0000 */  lw         $t6, 0x0($s7)
    /* C9E14 800BAE64 01F9C023 */  subu       $t8, $t7, $t9
    /* C9E18 800BAE68 A5D80008 */  sh         $t8, 0x8($t6)
    /* C9E1C 800BAE6C 8EF90000 */  lw         $t9, 0x0($s7)
    /* C9E20 800BAE70 8FAF006C */  lw         $t7, 0x6C($sp)
    /* C9E24 800BAE74 A72F000A */  sh         $t7, 0xA($t9)
    /* C9E28 800BAE78 8EF80000 */  lw         $t8, 0x0($s7)
    /* C9E2C 800BAE7C A300000C */  sb         $zero, 0xC($t8)
    /* C9E30 800BAE80 8EEE0000 */  lw         $t6, 0x0($s7)
    /* C9E34 800BAE84 A1C0000D */  sb         $zero, 0xD($t6)
    /* C9E38 800BAE88 8EEF0000 */  lw         $t7, 0x0($s7)
    /* C9E3C 800BAE8C A1E0000E */  sb         $zero, 0xE($t7)
    /* C9E40 800BAE90 8EF90000 */  lw         $t9, 0x0($s7)
    /* C9E44 800BAE94 A322000F */  sb         $v0, 0xF($t9)
    /* C9E48 800BAE98 8EF80000 */  lw         $t8, 0x0($s7)
    /* C9E4C 800BAE9C 270E0010 */  addiu      $t6, $t8, 0x10
    /* C9E50 800BAEA0 AEEE0000 */  sw         $t6, 0x0($s7)
    /* C9E54 800BAEA4 8C632B2C */  lw         $v1, %lo(D_80052B2C)($v1)
    /* C9E58 800BAEA8 C4600000 */  lwc1       $f0, 0x0($v1)
    /* C9E5C 800BAEAC 4600A03E */  c.le.s     $f20, $f0
    /* C9E60 800BAEB0 00000000 */  nop
    /* C9E64 800BAEB4 45020004 */  bc1fl      .L800BAEC8_C9E78
    /* C9E68 800BAEB8 46140081 */   sub.s     $f2, $f0, $f20
    /* C9E6C 800BAEBC 10000003 */  b          .L800BAECC_C9E7C
    /* C9E70 800BAEC0 46140081 */   sub.s     $f2, $f0, $f20
    /* C9E74 800BAEC4 46140081 */  sub.s      $f2, $f0, $f20
  .L800BAEC8_C9E78:
    /* C9E78 800BAEC8 46001087 */  neg.s      $f2, $f2
  .L800BAECC_C9E7C:
    /* C9E7C 800BAECC 461A103C */  c.lt.s     $f2, $f26
    /* C9E80 800BAED0 00000000 */  nop
    /* C9E84 800BAED4 45000011 */  bc1f       .L800BAF1C_C9ECC
    /* C9E88 800BAED8 00000000 */   nop
    /* C9E8C 800BAEDC C4600008 */  lwc1       $f0, 0x8($v1)
    /* C9E90 800BAEE0 240F0001 */  addiu      $t7, $zero, 0x1
    /* C9E94 800BAEE4 4600B03E */  c.le.s     $f22, $f0
    /* C9E98 800BAEE8 00000000 */  nop
    /* C9E9C 800BAEEC 45020004 */  bc1fl      .L800BAF00_C9EB0
    /* C9EA0 800BAEF0 46160081 */   sub.s     $f2, $f0, $f22
    /* C9EA4 800BAEF4 10000003 */  b          .L800BAF04_C9EB4
    /* C9EA8 800BAEF8 46160081 */   sub.s     $f2, $f0, $f22
    /* C9EAC 800BAEFC 46160081 */  sub.s      $f2, $f0, $f22
  .L800BAF00_C9EB0:
    /* C9EB0 800BAF00 46001087 */  neg.s      $f2, $f2
  .L800BAF04_C9EB4:
    /* C9EB4 800BAF04 461A103C */  c.lt.s     $f2, $f26
    /* C9EB8 800BAF08 00000000 */  nop
    /* C9EBC 800BAF0C 45000003 */  bc1f       .L800BAF1C_C9ECC
    /* C9EC0 800BAF10 00000000 */   nop
    /* C9EC4 800BAF14 10000048 */  b          .L800BB038_C9FE8
    /* C9EC8 800BAF18 A28F0000 */   sb        $t7, 0x0($s4)
  .L800BAF1C_C9ECC:
    /* C9ECC 800BAF1C 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* C9ED0 800BAF20 8FAE008C */  lw         $t6, 0x8C($sp)
    /* C9ED4 800BAF24 84990000 */  lh         $t9, 0x0($a0)
    /* C9ED8 800BAF28 03351023 */  subu       $v0, $t9, $s5
    /* C9EDC 800BAF2C 04400003 */  bltz       $v0, .L800BAF3C_C9EEC
    /* C9EE0 800BAF30 00022823 */   negu      $a1, $v0
    /* C9EE4 800BAF34 10000001 */  b          .L800BAF3C_C9EEC
    /* C9EE8 800BAF38 00402825 */   or        $a1, $v0, $zero
  .L800BAF3C_C9EEC:
    /* C9EEC 800BAF3C 28A10100 */  slti       $at, $a1, 0x100
    /* C9EF0 800BAF40 10200014 */  beqz       $at, .L800BAF94_C9F44
    /* C9EF4 800BAF44 87A50086 */   lh        $a1, 0x86($sp)
    /* C9EF8 800BAF48 84980004 */  lh         $t8, 0x4($a0)
    /* C9EFC 800BAF4C 3C198022 */  lui        $t9, %hi(D_80222A70)
    /* C9F00 800BAF50 030E1023 */  subu       $v0, $t8, $t6
    /* C9F04 800BAF54 04400003 */  bltz       $v0, .L800BAF64_C9F14
    /* C9F08 800BAF58 00021823 */   negu      $v1, $v0
    /* C9F0C 800BAF5C 10000001 */  b          .L800BAF64_C9F14
    /* C9F10 800BAF60 00401825 */   or        $v1, $v0, $zero
  .L800BAF64_C9F14:
    /* C9F14 800BAF64 28610100 */  slti       $at, $v1, 0x100
    /* C9F18 800BAF68 1020000A */  beqz       $at, .L800BAF94_C9F44
    /* C9F1C 800BAF6C 00000000 */   nop
    /* C9F20 800BAF70 8F392A70 */  lw         $t9, %lo(D_80222A70)($t9)
    /* C9F24 800BAF74 848F0002 */  lh         $t7, 0x2($a0)
    /* C9F28 800BAF78 240E0001 */  addiu      $t6, $zero, 0x1
    /* C9F2C 800BAF7C 27380010 */  addiu      $t8, $t9, 0x10
    /* C9F30 800BAF80 01F8082A */  slt        $at, $t7, $t8
    /* C9F34 800BAF84 10200003 */  beqz       $at, .L800BAF94_C9F44
    /* C9F38 800BAF88 00000000 */   nop
    /* C9F3C 800BAF8C 1000002A */  b          .L800BB038_C9FE8
    /* C9F40 800BAF90 A28E0000 */   sb        $t6, 0x0($s4)
  .L800BAF94_C9F44:
    /* C9F44 800BAF94 0C02E134 */  jal        func_800B84D0_C7480
    /* C9F48 800BAF98 87A4008A */   lh        $a0, 0x8A($sp)
    /* C9F4C 800BAF9C 3C0F8022 */  lui        $t7, %hi(D_80222A70)
    /* C9F50 800BAFA0 8DEF2A70 */  lw         $t7, %lo(D_80222A70)($t7)
    /* C9F54 800BAFA4 0002CA03 */  sra        $t9, $v0, 8
    /* C9F58 800BAFA8 3C038005 */  lui        $v1, %hi(D_80052B2C)
    /* C9F5C 800BAFAC 25F80020 */  addiu      $t8, $t7, 0x20
    /* C9F60 800BAFB0 0319082A */  slt        $at, $t8, $t9
    /* C9F64 800BAFB4 10200004 */  beqz       $at, .L800BAFC8_C9F78
    /* C9F68 800BAFB8 00000000 */   nop
    /* C9F6C 800BAFBC 928E0000 */  lbu        $t6, 0x0($s4)
    /* C9F70 800BAFC0 35CF0002 */  ori        $t7, $t6, 0x2
    /* C9F74 800BAFC4 A28F0000 */  sb         $t7, 0x0($s4)
  .L800BAFC8_C9F78:
    /* C9F78 800BAFC8 8C632B2C */  lw         $v1, %lo(D_80052B2C)($v1)
    /* C9F7C 800BAFCC 3C0E8004 */  lui        $t6, %hi(D_80047950)
    /* C9F80 800BAFD0 85CE7950 */  lh         $t6, %lo(D_80047950)($t6)
    /* C9F84 800BAFD4 C4660008 */  lwc1       $f6, 0x8($v1)
    /* C9F88 800BAFD8 C4700000 */  lwc1       $f16, 0x0($v1)
    /* C9F8C 800BAFDC 240F4000 */  addiu      $t7, $zero, 0x4000
    /* C9F90 800BAFE0 4600320D */  trunc.w.s  $f8, $f6
    /* C9F94 800BAFE4 87A4008A */  lh         $a0, 0x8A($sp)
    /* C9F98 800BAFE8 87A50086 */  lh         $a1, 0x86($sp)
    /* C9F9C 800BAFEC 4600810D */  trunc.w.s  $f4, $f16
    /* C9FA0 800BAFF0 44074000 */  mfc1       $a3, $f8
    /* C9FA4 800BAFF4 44062000 */  mfc1       $a2, $f4
    /* C9FA8 800BAFF8 0007CC00 */  sll        $t9, $a3, 16
    /* C9FAC 800BAFFC 00193C03 */  sra        $a3, $t9, 16
    /* C9FB0 800BB000 01EEC823 */  subu       $t9, $t7, $t6
    /* C9FB4 800BB004 0006C400 */  sll        $t8, $a2, 16
    /* C9FB8 800BB008 00183403 */  sra        $a2, $t8, 16
    /* C9FBC 800BB00C 0C02E48A */  jal        func_800B9228_C81D8
    /* C9FC0 800BB010 AFB90010 */   sw        $t9, 0x10($sp)
    /* C9FC4 800BB014 10400008 */  beqz       $v0, .L800BB038_C9FE8
    /* C9FC8 800BB018 8FB8013C */   lw        $t8, 0x13C($sp)
    /* C9FCC 800BB01C 270F0001 */  addiu      $t7, $t8, 0x1
    /* C9FD0 800BB020 AFAF013C */  sw         $t7, 0x13C($sp)
    /* C9FD4 800BB024 928E0000 */  lbu        $t6, 0x0($s4)
    /* C9FD8 800BB028 31D8FFFB */  andi       $t8, $t6, 0xFFFB
    /* C9FDC 800BB02C A2980000 */  sb         $t8, 0x0($s4)
    /* C9FE0 800BB030 370F0001 */  ori        $t7, $t8, 0x1
    /* C9FE4 800BB034 A28F0000 */  sb         $t7, 0x0($s4)
  .L800BB038_C9FE8:
    /* C9FE8 800BB038 26100001 */  addiu      $s0, $s0, 0x1
    /* C9FEC 800BB03C 00107400 */  sll        $t6, $s0, 16
    /* C9FF0 800BB040 000E8403 */  sra        $s0, $t6, 16
    /* C9FF4 800BB044 2A010009 */  slti       $at, $s0, 0x9
    /* C9FF8 800BB048 5420FEF9 */  bnel       $at, $zero, .L800BAC30_C9BE0
    /* C9FFC 800BB04C 8FB90098 */   lw        $t9, 0x98($sp)
    /* CA000 800BB050 26730001 */  addiu      $s3, $s3, 0x1
    /* CA004 800BB054 0013C400 */  sll        $t8, $s3, 16
    /* CA008 800BB058 00189C03 */  sra        $s3, $t8, 16
    /* CA00C 800BB05C 2A610009 */  slti       $at, $s3, 0x9
    /* CA010 800BB060 5420FEDE */  bnel       $at, $zero, .L800BABDC_C9B8C
    /* CA014 800BB064 001378C0 */   sll       $t7, $s3, 3
    /* CA018 800BB068 0C004DFA */  jal        n_alSynFreeFX
    /* CA01C 800BB06C 8FA4013C */   lw        $a0, 0x13C($sp)
    /* CA020 800BB070 3C120400 */  lui        $s2, (0x4006DAF >> 16)
    /* CA024 800BB074 36526DAF */  ori        $s2, $s2, (0x4006DAF & 0xFFFF)
    /* CA028 800BB078 241F0003 */  addiu      $ra, $zero, 0x3
    /* CA02C 800BB07C 3C158000 */  lui        $s5, %hi(D_7FFFFE50)
    /* CA030 800BB080 24140012 */  addiu      $s4, $zero, 0x12
    /* CA034 800BB084 240D0003 */  addiu      $t5, $zero, 0x3
    /* CA038 800BB088 3C09BF00 */  lui        $t1, (0xBF000000 >> 16)
  .L800BB08C_CA03C:
    /* CA03C 800BB08C 03F40019 */  multu      $ra, $s4
    /* CA040 800BB090 8E230000 */  lw         $v1, 0x0($s1)
    /* CA044 800BB094 001F5840 */  sll        $t3, $ra, 1
    /* CA048 800BB098 27FFFFFF */  addiu      $ra, $ra, -0x1
    /* CA04C 800BB09C 246E0008 */  addiu      $t6, $v1, 0x8
    /* CA050 800BB0A0 AE2E0000 */  sw         $t6, 0x0($s1)
    /* CA054 800BB0A4 AC720000 */  sw         $s2, 0x0($v1)
    /* CA058 800BB0A8 8EF90000 */  lw         $t9, 0x0($s7)
    /* CA05C 800BB0AC 00009825 */  or         $s3, $zero, $zero
    /* CA060 800BB0B0 0000C012 */  mflo       $t8
    /* CA064 800BB0B4 00187900 */  sll        $t7, $t8, 4
    /* CA068 800BB0B8 032F7023 */  subu       $t6, $t9, $t7
    /* CA06C 800BB0BC 01D5C021 */  addu       $t8, $t6, $s5
    /* CA070 800BB0C0 2719FE50 */  addiu      $t9, $t8, %lo(D_7FFFFE50)
    /* CA074 800BB0C4 240F0006 */  addiu      $t7, $zero, 0x6
    /* CA078 800BB0C8 01EB7023 */  subu       $t6, $t7, $t3
    /* CA07C 800BB0CC 000EC400 */  sll        $t8, $t6, 16
    /* CA080 800BB0D0 AC790004 */  sw         $t9, 0x4($v1)
    /* CA084 800BB0D4 0018CC03 */  sra        $t9, $t8, 16
    /* CA088 800BB0D8 001978C0 */  sll        $t7, $t9, 3
    /* CA08C 800BB0DC 01F97821 */  addu       $t7, $t7, $t9
    /* CA090 800BB0E0 27AE0144 */  addiu      $t6, $sp, 0x144
    /* CA094 800BB0E4 01EE6021 */  addu       $t4, $t7, $t6
  .L800BB0E8_CA098:
    /* CA098 800BB0E8 0013C0C0 */  sll        $t8, $s3, 3
    /* CA09C 800BB0EC 0313C021 */  addu       $t8, $t8, $s3
    /* CA0A0 800BB0F0 01985021 */  addu       $t2, $t4, $t8
    /* CA0A4 800BB0F4 00008025 */  or         $s0, $zero, $zero
    /* CA0A8 800BB0F8 01501021 */  addu       $v0, $t2, $s0
  .L800BB0FC_CA0AC:
    /* CA0AC 800BB0FC 90430000 */  lbu        $v1, 0x0($v0)
    /* CA0B0 800BB100 30790002 */  andi       $t9, $v1, 0x2
    /* CA0B4 800BB104 5320000D */  beql       $t9, $zero, .L800BB13C_CA0EC
    /* CA0B8 800BB108 30780004 */   andi      $t8, $v1, 0x4
    /* CA0BC 800BB10C 904F0001 */  lbu        $t7, 0x1($v0)
    /* CA0C0 800BB110 31EE0002 */  andi       $t6, $t7, 0x2
    /* CA0C4 800BB114 51C00009 */  beql       $t6, $zero, .L800BB13C_CA0EC
    /* CA0C8 800BB118 30780004 */   andi      $t8, $v1, 0x4
    /* CA0CC 800BB11C 90580009 */  lbu        $t8, 0x9($v0)
    /* CA0D0 800BB120 33190002 */  andi       $t9, $t8, 0x2
    /* CA0D4 800BB124 53200005 */  beql       $t9, $zero, .L800BB13C_CA0EC
    /* CA0D8 800BB128 30780004 */   andi      $t8, $v1, 0x4
    /* CA0DC 800BB12C 904F000A */  lbu        $t7, 0xA($v0)
    /* CA0E0 800BB130 31EE0002 */  andi       $t6, $t7, 0x2
    /* CA0E4 800BB134 15C00063 */  bnez       $t6, .L800BB2C4_CA274
    /* CA0E8 800BB138 30780004 */   andi      $t8, $v1, 0x4
  .L800BB13C_CA0EC:
    /* CA0EC 800BB13C 1300000C */  beqz       $t8, .L800BB170_CA120
    /* CA0F0 800BB140 001340C0 */   sll       $t0, $s3, 3
    /* CA0F4 800BB144 90590001 */  lbu        $t9, 0x1($v0)
    /* CA0F8 800BB148 332F0004 */  andi       $t7, $t9, 0x4
    /* CA0FC 800BB14C 51E00009 */  beql       $t7, $zero, .L800BB174_CA124
    /* CA100 800BB150 01134021 */   addu      $t0, $t0, $s3
    /* CA104 800BB154 904E0009 */  lbu        $t6, 0x9($v0)
    /* CA108 800BB158 31D80004 */  andi       $t8, $t6, 0x4
    /* CA10C 800BB15C 53000005 */  beql       $t8, $zero, .L800BB174_CA124
    /* CA110 800BB160 01134021 */   addu      $t0, $t0, $s3
    /* CA114 800BB164 9059000A */  lbu        $t9, 0xA($v0)
    /* CA118 800BB168 332F0004 */  andi       $t7, $t9, 0x4
    /* CA11C 800BB16C 15E00055 */  bnez       $t7, .L800BB2C4_CA274
  .L800BB170_CA120:
    /* CA120 800BB170 01134021 */   addu      $t0, $t0, $s3
  .L800BB174_CA124:
    /* CA124 800BB174 00087400 */  sll        $t6, $t0, 16
    /* CA128 800BB178 000EC403 */  sra        $t8, $t6, 16
    /* CA12C 800BB17C 03004025 */  or         $t0, $t8, $zero
    /* CA130 800BB180 06010004 */  bgez       $s0, .L800BB194_CA144
    /* CA134 800BB184 32190001 */   andi      $t9, $s0, 0x1
    /* CA138 800BB188 13200002 */  beqz       $t9, .L800BB194_CA144
    /* CA13C 800BB18C 00000000 */   nop
    /* CA140 800BB190 2739FFFE */  addiu      $t9, $t9, -0x2
  .L800BB194_CA144:
    /* CA144 800BB194 07C10003 */  bgez       $fp, .L800BB1A4_CA154
    /* CA148 800BB198 001E7A43 */   sra       $t7, $fp, 9
    /* CA14C 800BB19C 27C101FF */  addiu      $at, $fp, 0x1FF
    /* CA150 800BB1A0 00017A43 */  sra        $t7, $at, 9
  .L800BB1A4_CA154:
    /* CA154 800BB1A4 05E10004 */  bgez       $t7, .L800BB1B8_CA168
    /* CA158 800BB1A8 31EE0001 */   andi      $t6, $t7, 0x1
    /* CA15C 800BB1AC 11C00002 */  beqz       $t6, .L800BB1B8_CA168
    /* CA160 800BB1B0 00000000 */   nop
    /* CA164 800BB1B4 25CEFFFE */  addiu      $t6, $t6, -0x2
  .L800BB1B8_CA168:
    /* CA168 800BB1B8 032EC021 */  addu       $t8, $t9, $t6
    /* CA16C 800BB1BC 07010004 */  bgez       $t8, .L800BB1D0_CA180
    /* CA170 800BB1C0 330F0001 */   andi      $t7, $t8, 0x1
    /* CA174 800BB1C4 11E00002 */  beqz       $t7, .L800BB1D0_CA180
    /* CA178 800BB1C8 00000000 */   nop
    /* CA17C 800BB1CC 25EFFFFE */  addiu      $t7, $t7, -0x2
  .L800BB1D0_CA180:
    /* CA180 800BB1D0 11E00020 */  beqz       $t7, .L800BB254_CA204
    /* CA184 800BB1D4 02081021 */   addu      $v0, $s0, $t0
    /* CA188 800BB1D8 8E230000 */  lw         $v1, 0x0($s1)
    /* CA18C 800BB1DC 02081021 */  addu       $v0, $s0, $t0
    /* CA190 800BB1E0 00027040 */  sll        $t6, $v0, 1
    /* CA194 800BB1E4 25C60002 */  addiu      $a2, $t6, 0x2
    /* CA198 800BB1E8 25C70012 */  addiu      $a3, $t6, 0x12
    /* CA19C 800BB1EC 24790008 */  addiu      $t9, $v1, 0x8
    /* CA1A0 800BB1F0 AE390000 */  sw         $t9, 0x0($s1)
    /* CA1A4 800BB1F4 30D800FF */  andi       $t8, $a2, 0xFF
    /* CA1A8 800BB1F8 03003025 */  or         $a2, $t8, $zero
    /* CA1AC 800BB1FC 31D900FF */  andi       $t9, $t6, 0xFF
    /* CA1B0 800BB200 30EF00FF */  andi       $t7, $a3, 0xFF
    /* CA1B4 800BB204 01C01025 */  or         $v0, $t6, $zero
    /* CA1B8 800BB208 00197400 */  sll        $t6, $t9, 16
    /* CA1BC 800BB20C 01E03825 */  or         $a3, $t7, $zero
    /* CA1C0 800BB210 0018C200 */  sll        $t8, $t8, 8
    /* CA1C4 800BB214 01D87825 */  or         $t7, $t6, $t8
    /* CA1C8 800BB218 01E7C825 */  or         $t9, $t7, $a3
    /* CA1CC 800BB21C AC790004 */  sw         $t9, 0x4($v1)
    /* CA1D0 800BB220 AC690000 */  sw         $t1, 0x0($v1)
    /* CA1D4 800BB224 8E230000 */  lw         $v1, 0x0($s1)
    /* CA1D8 800BB228 244F0014 */  addiu      $t7, $v0, 0x14
    /* CA1DC 800BB22C 31F900FF */  andi       $t9, $t7, 0xFF
    /* CA1E0 800BB230 246E0008 */  addiu      $t6, $v1, 0x8
    /* CA1E4 800BB234 AE2E0000 */  sw         $t6, 0x0($s1)
    /* CA1E8 800BB238 00197200 */  sll        $t6, $t9, 8
    /* CA1EC 800BB23C 0006C400 */  sll        $t8, $a2, 16
    /* CA1F0 800BB240 030E7825 */  or         $t7, $t8, $t6
    /* CA1F4 800BB244 01E7C825 */  or         $t9, $t7, $a3
    /* CA1F8 800BB248 AC790004 */  sw         $t9, 0x4($v1)
    /* CA1FC 800BB24C 1000001D */  b          .L800BB2C4_CA274
    /* CA200 800BB250 AC690000 */   sw        $t1, 0x0($v1)
  .L800BB254_CA204:
    /* CA204 800BB254 8E230000 */  lw         $v1, 0x0($s1)
    /* CA208 800BB258 00027040 */  sll        $t6, $v0, 1
    /* CA20C 800BB25C 31C600FF */  andi       $a2, $t6, 0xFF
    /* CA210 800BB260 24780008 */  addiu      $t8, $v1, 0x8
    /* CA214 800BB264 AE380000 */  sw         $t8, 0x0($s1)
    /* CA218 800BB268 25C70014 */  addiu      $a3, $t6, 0x14
    /* CA21C 800BB26C 25D80002 */  addiu      $t8, $t6, 0x2
    /* CA220 800BB270 00067C00 */  sll        $t7, $a2, 16
    /* CA224 800BB274 01C01025 */  or         $v0, $t6, $zero
    /* CA228 800BB278 330E00FF */  andi       $t6, $t8, 0xFF
    /* CA22C 800BB27C 01E03025 */  or         $a2, $t7, $zero
    /* CA230 800BB280 30F900FF */  andi       $t9, $a3, 0xFF
    /* CA234 800BB284 03203825 */  or         $a3, $t9, $zero
    /* CA238 800BB288 000E7A00 */  sll        $t7, $t6, 8
    /* CA23C 800BB28C 00CFC825 */  or         $t9, $a2, $t7
    /* CA240 800BB290 0327C025 */  or         $t8, $t9, $a3
    /* CA244 800BB294 AC780004 */  sw         $t8, 0x4($v1)
    /* CA248 800BB298 AC690000 */  sw         $t1, 0x0($v1)
    /* CA24C 800BB29C 8E230000 */  lw         $v1, 0x0($s1)
    /* CA250 800BB2A0 24580012 */  addiu      $t8, $v0, 0x12
    /* CA254 800BB2A4 00077A00 */  sll        $t7, $a3, 8
    /* CA258 800BB2A8 246E0008 */  addiu      $t6, $v1, 0x8
    /* CA25C 800BB2AC AE2E0000 */  sw         $t6, 0x0($s1)
    /* CA260 800BB2B0 330E00FF */  andi       $t6, $t8, 0xFF
    /* CA264 800BB2B4 00CFC825 */  or         $t9, $a2, $t7
    /* CA268 800BB2B8 032E7825 */  or         $t7, $t9, $t6
    /* CA26C 800BB2BC AC6F0004 */  sw         $t7, 0x4($v1)
    /* CA270 800BB2C0 AC690000 */  sw         $t1, 0x0($v1)
  .L800BB2C4_CA274:
    /* CA274 800BB2C4 26100001 */  addiu      $s0, $s0, 0x1
    /* CA278 800BB2C8 0010C400 */  sll        $t8, $s0, 16
    /* CA27C 800BB2CC 00188403 */  sra        $s0, $t8, 16
    /* CA280 800BB2D0 2A010008 */  slti       $at, $s0, 0x8
    /* CA284 800BB2D4 5420FF89 */  bnel       $at, $zero, .L800BB0FC_CA0AC
    /* CA288 800BB2D8 01501021 */   addu      $v0, $t2, $s0
    /* CA28C 800BB2DC 3C0F8005 */  lui        $t7, %hi(D_80052A8C)
    /* CA290 800BB2E0 8DEF2A8C */  lw         $t7, %lo(D_80052A8C)($t7)
    /* CA294 800BB2E4 01737021 */  addu       $t6, $t3, $s3
    /* CA298 800BB2E8 26730001 */  addiu      $s3, $s3, 0x1
    /* CA29C 800BB2EC 01CFC021 */  addu       $t8, $t6, $t7
    /* CA2A0 800BB2F0 030D0019 */  multu      $t8, $t5
    /* CA2A4 800BB2F4 240F0040 */  addiu      $t7, $zero, 0x40
    /* CA2A8 800BB2F8 0000C812 */  mflo       $t9
    /* CA2AC 800BB2FC 332E007F */  andi       $t6, $t9, 0x7F
    /* CA2B0 800BB300 01EE1023 */  subu       $v0, $t7, $t6
    /* CA2B4 800BB304 00021823 */  negu       $v1, $v0
    /* CA2B8 800BB308 0062082B */  sltu       $at, $v1, $v0
    /* CA2BC 800BB30C 10200003 */  beqz       $at, .L800BB31C_CA2CC
    /* CA2C0 800BB310 3C19EB00 */   lui       $t9, (0xEB000000 >> 16)
    /* CA2C4 800BB314 10000002 */  b          .L800BB320_CA2D0
    /* CA2C8 800BB318 00402825 */   or        $a1, $v0, $zero
  .L800BB31C_CA2CC:
    /* CA2CC 800BB31C 00602825 */  or         $a1, $v1, $zero
  .L800BB320_CA2D0:
    /* CA2D0 800BB320 8E230000 */  lw         $v1, 0x0($s1)
    /* CA2D4 800BB324 240F0078 */  addiu      $t7, $zero, 0x78
    /* CA2D8 800BB328 3C018000 */  lui        $at, (0x80008000 >> 16)
    /* CA2DC 800BB32C 24780008 */  addiu      $t8, $v1, 0x8
    /* CA2E0 800BB330 AE380000 */  sw         $t8, 0x0($s1)
    /* CA2E4 800BB334 01E5C023 */  subu       $t8, $t7, $a1
    /* CA2E8 800BB338 330700FF */  andi       $a3, $t8, 0xFF
    /* CA2EC 800BB33C 34EF8000 */  ori        $t7, $a3, 0x8000
    /* CA2F0 800BB340 AC6F0004 */  sw         $t7, 0x4($v1)
    /* CA2F4 800BB344 AC790000 */  sw         $t9, 0x0($v1)
    /* CA2F8 800BB348 8E230000 */  lw         $v1, 0x0($s1)
    /* CA2FC 800BB34C 0007CC00 */  sll        $t9, $a3, 16
    /* CA300 800BB350 03217825 */  or         $t7, $t9, $at
    /* CA304 800BB354 246E0008 */  addiu      $t6, $v1, 0x8
    /* CA308 800BB358 AE2E0000 */  sw         $t6, 0x0($s1)
    /* CA30C 800BB35C 0013CC00 */  sll        $t9, $s3, 16
    /* CA310 800BB360 3C18EA00 */  lui        $t8, (0xEA000000 >> 16)
    /* CA314 800BB364 00199C03 */  sra        $s3, $t9, 16
    /* CA318 800BB368 35EE8000 */  ori        $t6, $t7, (0x80008000 & 0xFFFF)
    /* CA31C 800BB36C AC780000 */  sw         $t8, 0x0($v1)
    /* CA320 800BB370 2A610002 */  slti       $at, $s3, 0x2
    /* CA324 800BB374 01C7C025 */  or         $t8, $t6, $a3
    /* CA328 800BB378 1420FF5B */  bnez       $at, .L800BB0E8_CA098
    /* CA32C 800BB37C AC780004 */   sw        $t8, 0x4($v1)
    /* CA330 800BB380 001F7400 */  sll        $t6, $ra, 16
    /* CA334 800BB384 000EFC03 */  sra        $ra, $t6, 16
    /* CA338 800BB388 07E1FF40 */  bgez       $ra, .L800BB08C_CA03C
    /* CA33C 800BB38C 00000000 */   nop
    /* CA340 800BB390 8FBF0064 */  lw         $ra, 0x64($sp)
    /* CA344 800BB394 D7B40020 */  ldc1       $f20, 0x20($sp)
    /* CA348 800BB398 D7B60028 */  ldc1       $f22, 0x28($sp)
    /* CA34C 800BB39C D7B80030 */  ldc1       $f24, 0x30($sp)
    /* CA350 800BB3A0 D7BA0038 */  ldc1       $f26, 0x38($sp)
    /* CA354 800BB3A4 8FB00040 */  lw         $s0, 0x40($sp)
    /* CA358 800BB3A8 8FB10044 */  lw         $s1, 0x44($sp)
    /* CA35C 800BB3AC 8FB20048 */  lw         $s2, 0x48($sp)
    /* CA360 800BB3B0 8FB3004C */  lw         $s3, 0x4C($sp)
    /* CA364 800BB3B4 8FB40050 */  lw         $s4, 0x50($sp)
    /* CA368 800BB3B8 8FB50054 */  lw         $s5, 0x54($sp)
    /* CA36C 800BB3BC 8FB60058 */  lw         $s6, 0x58($sp)
    /* CA370 800BB3C0 8FB7005C */  lw         $s7, 0x5C($sp)
    /* CA374 800BB3C4 8FBE0060 */  lw         $fp, 0x60($sp)
    /* CA378 800BB3C8 03E00008 */  jr         $ra
    /* CA37C 800BB3CC 27BD01C0 */   addiu     $sp, $sp, 0x1C0
endlabel func_800BA5B0_C9560
