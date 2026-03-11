nonmatching func_800BD688_CC638, 0x230

glabel func_800BD688_CC638
    /* CC638 800BD688 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* CC63C 800BD68C AFBE0038 */  sw         $fp, 0x38($sp)
    /* CC640 800BD690 AFB70034 */  sw         $s7, 0x34($sp)
    /* CC644 800BD694 0004BC00 */  sll        $s7, $a0, 16
    /* CC648 800BD698 0006F400 */  sll        $fp, $a2, 16
    /* CC64C 800BD69C 001E7C03 */  sra        $t7, $fp, 16
    /* CC650 800BD6A0 00177403 */  sra        $t6, $s7, 16
    /* CC654 800BD6A4 AFA40040 */  sw         $a0, 0x40($sp)
    /* CC658 800BD6A8 AFA50044 */  sw         $a1, 0x44($sp)
    /* CC65C 800BD6AC 000F2C00 */  sll        $a1, $t7, 16
    /* CC660 800BD6B0 000E2400 */  sll        $a0, $t6, 16
    /* CC664 800BD6B4 AFBF003C */  sw         $ra, 0x3C($sp)
    /* CC668 800BD6B8 AFB00018 */  sw         $s0, 0x18($sp)
    /* CC66C 800BD6BC 0004C403 */  sra        $t8, $a0, 16
    /* CC670 800BD6C0 0005CC03 */  sra        $t9, $a1, 16
    /* CC674 800BD6C4 00E08025 */  or         $s0, $a3, $zero
    /* CC678 800BD6C8 01C0B825 */  or         $s7, $t6, $zero
    /* CC67C 800BD6CC 01E0F025 */  or         $fp, $t7, $zero
    /* CC680 800BD6D0 AFB60030 */  sw         $s6, 0x30($sp)
    /* CC684 800BD6D4 AFB5002C */  sw         $s5, 0x2C($sp)
    /* CC688 800BD6D8 AFB40028 */  sw         $s4, 0x28($sp)
    /* CC68C 800BD6DC AFB30024 */  sw         $s3, 0x24($sp)
    /* CC690 800BD6E0 AFB20020 */  sw         $s2, 0x20($sp)
    /* CC694 800BD6E4 AFB1001C */  sw         $s1, 0x1C($sp)
    /* CC698 800BD6E8 AFA60048 */  sw         $a2, 0x48($sp)
    /* CC69C 800BD6EC 03202825 */  or         $a1, $t9, $zero
    /* CC6A0 800BD6F0 0C02E134 */  jal        func_800B84D0_C7480
    /* CC6A4 800BD6F4 03002025 */   or        $a0, $t8, $zero
    /* CC6A8 800BD6F8 3C048022 */  lui        $a0, %hi(D_80222A70)
    /* CC6AC 800BD6FC 8C842A70 */  lw         $a0, %lo(D_80222A70)($a0)
    /* CC6B0 800BD700 0002A203 */  sra        $s4, $v0, 8
    /* CC6B4 800BD704 3C088005 */  lui        $t0, %hi(D_80052B34)
    /* CC6B8 800BD708 0284082A */  slt        $at, $s4, $a0
    /* CC6BC 800BD70C 10200002 */  beqz       $at, .L800BD718_CC6C8
    /* CC6C0 800BD710 2416000A */   addiu     $s6, $zero, 0xA
    /* CC6C4 800BD714 0080A025 */  or         $s4, $a0, $zero
  .L800BD718_CC6C8:
    /* CC6C8 800BD718 8D082B34 */  lw         $t0, %lo(D_80052B34)($t0)
    /* CC6CC 800BD71C 3C138004 */  lui        $s3, %hi(currentLevel)
    /* CC6D0 800BD720 26737F90 */  addiu      $s3, $s3, %lo(currentLevel)
    /* CC6D4 800BD724 12080003 */  beq        $s0, $t0, .L800BD734_CC6E4
    /* CC6D8 800BD728 24150050 */   addiu     $s5, $zero, 0x50
    /* CC6DC 800BD72C 10000056 */  b          .L800BD888_CC838
    /* CC6E0 800BD730 24020001 */   addiu     $v0, $zero, 0x1
  .L800BD734_CC6E4:
    /* CC6E4 800BD734 3C128004 */  lui        $s2, %hi(D_8003E0FC)
    /* CC6E8 800BD738 2652E0FC */  addiu      $s2, $s2, %lo(D_8003E0FC)
    /* CC6EC 800BD73C 00008025 */  or         $s0, $zero, $zero
  .L800BD740_CC6F0:
    /* CC6F0 800BD740 02160019 */  multu      $s0, $s6
    /* CC6F4 800BD744 8E690000 */  lw         $t1, 0x0($s3)
    /* CC6F8 800BD748 87A80046 */  lh         $t0, 0x46($sp)
    /* CC6FC 800BD74C 00095080 */  sll        $t2, $t1, 2
    /* CC700 800BD750 01495021 */  addu       $t2, $t2, $t1
    /* CC704 800BD754 000A5100 */  sll        $t2, $t2, 4
    /* CC708 800BD758 024A5821 */  addu       $t3, $s2, $t2
    /* CC70C 800BD75C 00008812 */  mflo       $s1
    /* CC710 800BD760 01711821 */  addu       $v1, $t3, $s1
    /* CC714 800BD764 806CFFB6 */  lb         $t4, -0x4A($v1)
    /* CC718 800BD768 56AC0041 */  bnel       $s5, $t4, .L800BD870_CC820
    /* CC71C 800BD76C 26100001 */   addiu     $s0, $s0, 0x1
    /* CC720 800BD770 846DFFB0 */  lh         $t5, -0x50($v1)
    /* CC724 800BD774 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* CC728 800BD778 000D7200 */  sll        $t6, $t5, 8
    /* CC72C 800BD77C 01D71023 */  subu       $v0, $t6, $s7
    /* CC730 800BD780 04400003 */  bltz       $v0, .L800BD790_CC740
    /* CC734 800BD784 00022023 */   negu      $a0, $v0
    /* CC738 800BD788 10000001 */  b          .L800BD790_CC740
    /* CC73C 800BD78C 00402025 */   or        $a0, $v0, $zero
  .L800BD790_CC740:
    /* CC740 800BD790 846FFFB4 */  lh         $t7, -0x4C($v1)
    /* CC744 800BD794 000FC200 */  sll        $t8, $t7, 8
    /* CC748 800BD798 031E1023 */  subu       $v0, $t8, $fp
    /* CC74C 800BD79C 04400003 */  bltz       $v0, .L800BD7AC_CC75C
    /* CC750 800BD7A0 00022823 */   negu      $a1, $v0
    /* CC754 800BD7A4 10000001 */  b          .L800BD7AC_CC75C
    /* CC758 800BD7A8 00402825 */   or        $a1, $v0, $zero
  .L800BD7AC_CC75C:
    /* CC75C 800BD7AC 8479FFB2 */  lh         $t9, -0x4E($v1)
    /* CC760 800BD7B0 03281023 */  subu       $v0, $t9, $t0
    /* CC764 800BD7B4 04400003 */  bltz       $v0, .L800BD7C4_CC774
    /* CC768 800BD7B8 00021823 */   negu      $v1, $v0
    /* CC76C 800BD7BC 10000001 */  b          .L800BD7C4_CC774
    /* CC770 800BD7C0 00401825 */   or        $v1, $v0, $zero
  .L800BD7C4_CC774:
    /* CC774 800BD7C4 00840019 */  multu      $a0, $a0
    /* CC778 800BD7C8 00004812 */  mflo       $t1
    /* CC77C 800BD7CC 00000000 */  nop
    /* CC780 800BD7D0 00000000 */  nop
    /* CC784 800BD7D4 00A50019 */  multu      $a1, $a1
    /* CC788 800BD7D8 00005012 */  mflo       $t2
    /* CC78C 800BD7DC 012A5821 */  addu       $t3, $t1, $t2
    /* CC790 800BD7E0 00000000 */  nop
    /* CC794 800BD7E4 00630019 */  multu      $v1, $v1
    /* CC798 800BD7E8 00006012 */  mflo       $t4
    /* CC79C 800BD7EC 016C6821 */  addu       $t5, $t3, $t4
    /* CC7A0 800BD7F0 448D2000 */  mtc1       $t5, $f4
    /* CC7A4 800BD7F4 05A10004 */  bgez       $t5, .L800BD808_CC7B8
    /* CC7A8 800BD7F8 46802320 */   cvt.s.w   $f12, $f4
    /* CC7AC 800BD7FC 44813000 */  mtc1       $at, $f6
    /* CC7B0 800BD800 00000000 */  nop
    /* CC7B4 800BD804 46066300 */  add.s      $f12, $f12, $f6
  .L800BD808_CC7B8:
    /* CC7B8 800BD808 0C007650 */  jal        sqrtf
    /* CC7BC 800BD80C 00000000 */   nop
    /* CC7C0 800BD810 4600020D */  trunc.w.s  $f8, $f0
    /* CC7C4 800BD814 44024000 */  mfc1       $v0, $f8
    /* CC7C8 800BD818 00000000 */  nop
    /* CC7CC 800BD81C 00027C00 */  sll        $t7, $v0, 16
    /* CC7D0 800BD820 000FC403 */  sra        $t8, $t7, 16
    /* CC7D4 800BD824 2F0100FA */  sltiu      $at, $t8, 0xFA
    /* CC7D8 800BD828 1420000E */  bnez       $at, .L800BD864_CC814
    /* CC7DC 800BD82C 2F0101F4 */   sltiu     $at, $t8, 0x1F4
    /* CC7E0 800BD830 5020000F */  beql       $at, $zero, .L800BD870_CC820
    /* CC7E4 800BD834 26100001 */   addiu     $s0, $s0, 0x1
    /* CC7E8 800BD838 8E790000 */  lw         $t9, 0x0($s3)
    /* CC7EC 800BD83C 268C00C8 */  addiu      $t4, $s4, 0xC8
    /* CC7F0 800BD840 00194080 */  sll        $t0, $t9, 2
    /* CC7F4 800BD844 01194021 */  addu       $t0, $t0, $t9
    /* CC7F8 800BD848 00084100 */  sll        $t0, $t0, 4
    /* CC7FC 800BD84C 02484821 */  addu       $t1, $s2, $t0
    /* CC800 800BD850 01315021 */  addu       $t2, $t1, $s1
    /* CC804 800BD854 854BFFB2 */  lh         $t3, -0x4E($t2)
    /* CC808 800BD858 018B082A */  slt        $at, $t4, $t3
    /* CC80C 800BD85C 50200004 */  beql       $at, $zero, .L800BD870_CC820
    /* CC810 800BD860 26100001 */   addiu     $s0, $s0, 0x1
  .L800BD864_CC814:
    /* CC814 800BD864 10000008 */  b          .L800BD888_CC838
    /* CC818 800BD868 00001025 */   or        $v0, $zero, $zero
    /* CC81C 800BD86C 26100001 */  addiu      $s0, $s0, 0x1
  .L800BD870_CC820:
    /* CC820 800BD870 00106C00 */  sll        $t5, $s0, 16
    /* CC824 800BD874 000D8403 */  sra        $s0, $t5, 16
    /* CC828 800BD878 2A010008 */  slti       $at, $s0, 0x8
    /* CC82C 800BD87C 1420FFB0 */  bnez       $at, .L800BD740_CC6F0
    /* CC830 800BD880 00000000 */   nop
    /* CC834 800BD884 24020001 */  addiu      $v0, $zero, 0x1
  .L800BD888_CC838:
    /* CC838 800BD888 8FBF003C */  lw         $ra, 0x3C($sp)
    /* CC83C 800BD88C 8FB00018 */  lw         $s0, 0x18($sp)
    /* CC840 800BD890 8FB1001C */  lw         $s1, 0x1C($sp)
    /* CC844 800BD894 8FB20020 */  lw         $s2, 0x20($sp)
    /* CC848 800BD898 8FB30024 */  lw         $s3, 0x24($sp)
    /* CC84C 800BD89C 8FB40028 */  lw         $s4, 0x28($sp)
    /* CC850 800BD8A0 8FB5002C */  lw         $s5, 0x2C($sp)
    /* CC854 800BD8A4 8FB60030 */  lw         $s6, 0x30($sp)
    /* CC858 800BD8A8 8FB70034 */  lw         $s7, 0x34($sp)
    /* CC85C 800BD8AC 8FBE0038 */  lw         $fp, 0x38($sp)
    /* CC860 800BD8B0 03E00008 */  jr         $ra
    /* CC864 800BD8B4 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_800BD688_CC638
