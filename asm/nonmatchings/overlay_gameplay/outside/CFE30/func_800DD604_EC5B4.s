nonmatching func_800DD604_EC5B4, 0x514

glabel func_800DD604_EC5B4
    /* EC5B4 800DD604 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* EC5B8 800DD608 AFBF001C */  sw         $ra, 0x1C($sp)
    /* EC5BC 800DD60C 3C018015 */  lui        $at, %hi(D_80153B88)
    /* EC5C0 800DD610 AFB00018 */  sw         $s0, 0x18($sp)
    /* EC5C4 800DD614 0C032205 */  jal        func_800C8814_D77C4
    /* EC5C8 800DD618 A4203B88 */   sh        $zero, %lo(D_80153B88)($at)
    /* EC5CC 800DD61C 0C033779 */  jal        func_800CDDE4_DCD94
    /* EC5D0 800DD620 00000000 */   nop
    /* EC5D4 800DD624 0C036F88 */  jal        func_800DBE20_EADD0
    /* EC5D8 800DD628 00000000 */   nop
    /* EC5DC 800DD62C 0C039D98 */  jal        func_800E7660_F6610
    /* EC5E0 800DD630 00000000 */   nop
    /* EC5E4 800DD634 3C038006 */  lui        $v1, %hi(D_8005BB30)
    /* EC5E8 800DD638 2463BB30 */  addiu      $v1, $v1, %lo(D_8005BB30)
    /* EC5EC 800DD63C 8C620000 */  lw         $v0, 0x0($v1)
    /* EC5F0 800DD640 3C0BE700 */  lui        $t3, (0xE7000000 >> 16)
    /* EC5F4 800DD644 3C18B600 */  lui        $t8, (0xB6000000 >> 16)
    /* EC5F8 800DD648 244E0008 */  addiu      $t6, $v0, 0x8
    /* EC5FC 800DD64C AC6E0000 */  sw         $t6, 0x0($v1)
    /* EC600 800DD650 AC400004 */  sw         $zero, 0x4($v0)
    /* EC604 800DD654 AC4B0000 */  sw         $t3, 0x0($v0)
    /* EC608 800DD658 8C620000 */  lw         $v0, 0x0($v1)
    /* EC60C 800DD65C 2419FFFF */  addiu      $t9, $zero, -0x1
    /* EC610 800DD660 3C0DBA00 */  lui        $t5, (0xBA001402 >> 16)
    /* EC614 800DD664 244F0008 */  addiu      $t7, $v0, 0x8
    /* EC618 800DD668 AC6F0000 */  sw         $t7, 0x0($v1)
    /* EC61C 800DD66C AC590004 */  sw         $t9, 0x4($v0)
    /* EC620 800DD670 AC580000 */  sw         $t8, 0x0($v0)
    /* EC624 800DD674 8C620000 */  lw         $v0, 0x0($v1)
    /* EC628 800DD678 35AD1402 */  ori        $t5, $t5, (0xBA001402 & 0xFFFF)
    /* EC62C 800DD67C 24180205 */  addiu      $t8, $zero, 0x205
    /* EC630 800DD680 244C0008 */  addiu      $t4, $v0, 0x8
    /* EC634 800DD684 AC6C0000 */  sw         $t4, 0x0($v1)
    /* EC638 800DD688 AC400004 */  sw         $zero, 0x4($v0)
    /* EC63C 800DD68C AC4D0000 */  sw         $t5, 0x0($v0)
    /* EC640 800DD690 8C620000 */  lw         $v0, 0x0($v1)
    /* EC644 800DD694 3C0FB700 */  lui        $t7, (0xB7000000 >> 16)
    /* EC648 800DD698 3C0D0040 */  lui        $t5, (0x407858 >> 16)
    /* EC64C 800DD69C 244E0008 */  addiu      $t6, $v0, 0x8
    /* EC650 800DD6A0 AC6E0000 */  sw         $t6, 0x0($v1)
    /* EC654 800DD6A4 AC580004 */  sw         $t8, 0x4($v0)
    /* EC658 800DD6A8 AC4F0000 */  sw         $t7, 0x0($v0)
    /* EC65C 800DD6AC 8C620000 */  lw         $v0, 0x0($v1)
    /* EC660 800DD6B0 3C0CB900 */  lui        $t4, (0xB900031D >> 16)
    /* EC664 800DD6B4 358C031D */  ori        $t4, $t4, (0xB900031D & 0xFFFF)
    /* EC668 800DD6B8 24590008 */  addiu      $t9, $v0, 0x8
    /* EC66C 800DD6BC AC790000 */  sw         $t9, 0x0($v1)
    /* EC670 800DD6C0 35AD7858 */  ori        $t5, $t5, (0x407858 & 0xFFFF)
    /* EC674 800DD6C4 AC4D0004 */  sw         $t5, 0x4($v0)
    /* EC678 800DD6C8 AC4C0000 */  sw         $t4, 0x0($v0)
    /* EC67C 800DD6CC 8C620000 */  lw         $v0, 0x0($v1)
    /* EC680 800DD6D0 3C0FFCFF */  lui        $t7, (0xFCFFFFFF >> 16)
    /* EC684 800DD6D4 3C18FFFE */  lui        $t8, (0xFFFE793C >> 16)
    /* EC688 800DD6D8 244E0008 */  addiu      $t6, $v0, 0x8
    /* EC68C 800DD6DC AC6E0000 */  sw         $t6, 0x0($v1)
    /* EC690 800DD6E0 3718793C */  ori        $t8, $t8, (0xFFFE793C & 0xFFFF)
    /* EC694 800DD6E4 35EFFFFF */  ori        $t7, $t7, (0xFCFFFFFF & 0xFFFF)
    /* EC698 800DD6E8 AC4F0000 */  sw         $t7, 0x0($v0)
    /* EC69C 800DD6EC AC580004 */  sw         $t8, 0x4($v0)
    /* EC6A0 800DD6F0 8C620000 */  lw         $v0, 0x0($v1)
    /* EC6A4 800DD6F4 24590008 */  addiu      $t9, $v0, 0x8
    /* EC6A8 800DD6F8 AC790000 */  sw         $t9, 0x0($v1)
    /* EC6AC 800DD6FC AC400004 */  sw         $zero, 0x4($v0)
    /* EC6B0 800DD700 0C0378BA */  jal        func_800DE2E8_ED298
    /* EC6B4 800DD704 AC4B0000 */   sw        $t3, 0x0($v0)
    /* EC6B8 800DD708 0C032D3E */  jal        func_800CB4F8_DA4A8
    /* EC6BC 800DD70C 00000000 */   nop
    /* EC6C0 800DD710 00008025 */  or         $s0, $zero, $zero
  .L800DD714_EC6C4:
    /* EC6C4 800DD714 3C0C8015 */  lui        $t4, %hi(D_80156EDA)
    /* EC6C8 800DD718 858C6EDA */  lh         $t4, %lo(D_80156EDA)($t4)
    /* EC6CC 800DD71C 3C048015 */  lui        $a0, %hi(D_80157540)
    /* EC6D0 800DD720 00902021 */  addu       $a0, $a0, $s0
    /* EC6D4 800DD724 29810321 */  slti       $at, $t4, 0x321
    /* EC6D8 800DD728 14200006 */  bnez       $at, .L800DD744_EC6F4
    /* EC6DC 800DD72C 90847540 */   lbu       $a0, %lo(D_80157540)($a0)
    /* EC6E0 800DD730 3C048014 */  lui        $a0, %hi(D_80143B8C)
    /* EC6E4 800DD734 0C00731B */  jal        osSyncPrintf
    /* EC6E8 800DD738 24843B8C */   addiu     $a0, $a0, %lo(D_80143B8C)
    /* EC6EC 800DD73C 10000053 */  b          .L800DD88C_EC83C
    /* EC6F0 800DD740 26100001 */   addiu     $s0, $s0, 0x1
  .L800DD744_EC6F4:
    /* EC6F4 800DD744 3C0D8005 */  lui        $t5, %hi(D_80052ACB)
    /* EC6F8 800DD748 91AD2ACB */  lbu        $t5, %lo(D_80052ACB)($t5)
    /* EC6FC 800DD74C 240100FE */  addiu      $at, $zero, 0xFE
    /* EC700 800DD750 11A00006 */  beqz       $t5, .L800DD76C_EC71C
    /* EC704 800DD754 00000000 */   nop
    /* EC708 800DD758 3C048014 */  lui        $a0, %hi(D_80143BD4)
    /* EC70C 800DD75C 0C00731B */  jal        osSyncPrintf
    /* EC710 800DD760 24843BD4 */   addiu     $a0, $a0, %lo(D_80143BD4)
    /* EC714 800DD764 10000049 */  b          .L800DD88C_EC83C
    /* EC718 800DD768 26100001 */   addiu     $s0, $s0, 0x1
  .L800DD76C_EC71C:
    /* EC71C 800DD76C 10810046 */  beq        $a0, $at, .L800DD888_EC838
    /* EC720 800DD770 00047080 */   sll       $t6, $a0, 2
    /* EC724 800DD774 01C47023 */  subu       $t6, $t6, $a0
    /* EC728 800DD778 000E7080 */  sll        $t6, $t6, 2
    /* EC72C 800DD77C 3C058015 */  lui        $a1, %hi(D_80154088)
    /* EC730 800DD780 00AE2821 */  addu       $a1, $a1, $t6
    /* EC734 800DD784 90A54088 */  lbu        $a1, %lo(D_80154088)($a1)
    /* EC738 800DD788 240100FA */  addiu      $at, $zero, 0xFA
    /* EC73C 800DD78C 10A1003E */  beq        $a1, $at, .L800DD888_EC838
    /* EC740 800DD790 2CA1000A */   sltiu     $at, $a1, 0xA
    /* EC744 800DD794 1020002E */  beqz       $at, .L800DD850_EC800
    /* EC748 800DD798 00057880 */   sll       $t7, $a1, 2
    /* EC74C 800DD79C 3C018014 */  lui        $at, %hi(jtbl_80144110_overlay_gameplay_outside)
    /* EC750 800DD7A0 002F0821 */  addu       $at, $at, $t7
    /* EC754 800DD7A4 8C2F4110 */  lw         $t7, %lo(jtbl_80144110_overlay_gameplay_outside)($at)
    /* EC758 800DD7A8 01E00008 */  jr         $t7
    /* EC75C 800DD7AC 00000000 */   nop
    /* EC760 800DD7B0 0C030CC0 */  jal        func_800C3300_D22B0
    /* EC764 800DD7B4 00000000 */   nop
    /* EC768 800DD7B8 10000034 */  b          .L800DD88C_EC83C
    /* EC76C 800DD7BC 26100001 */   addiu     $s0, $s0, 0x1
    /* EC770 800DD7C0 0C03097E */  jal        func_800C25F8_D15A8
    /* EC774 800DD7C4 00000000 */   nop
    /* EC778 800DD7C8 10000030 */  b          .L800DD88C_EC83C
    /* EC77C 800DD7CC 26100001 */   addiu     $s0, $s0, 0x1
    /* EC780 800DD7D0 0C031745 */  jal        func_800C5D14_D4CC4
    /* EC784 800DD7D4 00000000 */   nop
    /* EC788 800DD7D8 1000002C */  b          .L800DD88C_EC83C
    /* EC78C 800DD7DC 26100001 */   addiu     $s0, $s0, 0x1
    /* EC790 800DD7E0 0C03249F */  jal        func_800C927C_D822C
    /* EC794 800DD7E4 00000000 */   nop
    /* EC798 800DD7E8 10000028 */  b          .L800DD88C_EC83C
    /* EC79C 800DD7EC 26100001 */   addiu     $s0, $s0, 0x1
    /* EC7A0 800DD7F0 0C032AF2 */  jal        func_800CABC8_D9B78
    /* EC7A4 800DD7F4 00000000 */   nop
    /* EC7A8 800DD7F8 10000024 */  b          .L800DD88C_EC83C
    /* EC7AC 800DD7FC 26100001 */   addiu     $s0, $s0, 0x1
    /* EC7B0 800DD800 0C0335FF */  jal        func_800CD7FC_DC7AC
    /* EC7B4 800DD804 00000000 */   nop
    /* EC7B8 800DD808 10000020 */  b          .L800DD88C_EC83C
    /* EC7BC 800DD80C 26100001 */   addiu     $s0, $s0, 0x1
    /* EC7C0 800DD810 0C0339BA */  jal        func_800CE6E8_DD698
    /* EC7C4 800DD814 00000000 */   nop
    /* EC7C8 800DD818 1000001C */  b          .L800DD88C_EC83C
    /* EC7CC 800DD81C 26100001 */   addiu     $s0, $s0, 0x1
    /* EC7D0 800DD820 0C034709 */  jal        func_800D1C24_E0BD4
    /* EC7D4 800DD824 00000000 */   nop
    /* EC7D8 800DD828 10000018 */  b          .L800DD88C_EC83C
    /* EC7DC 800DD82C 26100001 */   addiu     $s0, $s0, 0x1
    /* EC7E0 800DD830 0C0358A4 */  jal        func_800D6290_E5240
    /* EC7E4 800DD834 00000000 */   nop
    /* EC7E8 800DD838 10000014 */  b          .L800DD88C_EC83C
    /* EC7EC 800DD83C 26100001 */   addiu     $s0, $s0, 0x1
    /* EC7F0 800DD840 0C035CA1 */  jal        func_800D7284_E6234
    /* EC7F4 800DD844 00000000 */   nop
    /* EC7F8 800DD848 10000010 */  b          .L800DD88C_EC83C
    /* EC7FC 800DD84C 26100001 */   addiu     $s0, $s0, 0x1
  .L800DD850_EC800:
    /* EC800 800DD850 28A1000A */  slti       $at, $a1, 0xA
    /* EC804 800DD854 14200003 */  bnez       $at, .L800DD864_EC814
    /* EC808 800DD858 00001025 */   or        $v0, $zero, $zero
    /* EC80C 800DD85C 10000001 */  b          .L800DD864_EC814
    /* EC810 800DD860 24020001 */   addiu     $v0, $zero, 0x1
  .L800DD864_EC814:
    /* EC814 800DD864 10400006 */  beqz       $v0, .L800DD880_EC830
    /* EC818 800DD868 3C048014 */   lui       $a0, %hi(D_80143C40)
    /* EC81C 800DD86C 3C048014 */  lui        $a0, %hi(D_80143C08)
    /* EC820 800DD870 0C00731B */  jal        osSyncPrintf
    /* EC824 800DD874 24843C08 */   addiu     $a0, $a0, %lo(D_80143C08)
    /* EC828 800DD878 10000004 */  b          .L800DD88C_EC83C
    /* EC82C 800DD87C 26100001 */   addiu     $s0, $s0, 0x1
  .L800DD880_EC830:
    /* EC830 800DD880 0C00731B */  jal        osSyncPrintf
    /* EC834 800DD884 24843C40 */   addiu     $a0, $a0, %lo(D_80143C40)
  .L800DD888_EC838:
    /* EC838 800DD888 26100001 */  addiu      $s0, $s0, 0x1
  .L800DD88C_EC83C:
    /* EC83C 800DD88C 321800FF */  andi       $t8, $s0, 0xFF
    /* EC840 800DD890 2B01001E */  slti       $at, $t8, 0x1E
    /* EC844 800DD894 1420FF9F */  bnez       $at, .L800DD714_EC6C4
    /* EC848 800DD898 03008025 */   or        $s0, $t8, $zero
    /* EC84C 800DD89C 00008025 */  or         $s0, $zero, $zero
  .L800DD8A0_EC850:
    /* EC850 800DD8A0 3C198015 */  lui        $t9, %hi(D_80156EDA)
    /* EC854 800DD8A4 87396EDA */  lh         $t9, %lo(D_80156EDA)($t9)
    /* EC858 800DD8A8 3C0C8005 */  lui        $t4, %hi(D_80052ACB)
    /* EC85C 800DD8AC 2B210321 */  slti       $at, $t9, 0x321
    /* EC860 800DD8B0 14200006 */  bnez       $at, .L800DD8CC_EC87C
    /* EC864 800DD8B4 00000000 */   nop
    /* EC868 800DD8B8 3C048014 */  lui        $a0, %hi(D_80143C74)
    /* EC86C 800DD8BC 0C00731B */  jal        osSyncPrintf
    /* EC870 800DD8C0 24843C74 */   addiu     $a0, $a0, %lo(D_80143C74)
    /* EC874 800DD8C4 10000057 */  b          .L800DDA24_EC9D4
    /* EC878 800DD8C8 26100001 */   addiu     $s0, $s0, 0x1
  .L800DD8CC_EC87C:
    /* EC87C 800DD8CC 918C2ACB */  lbu        $t4, %lo(D_80052ACB)($t4)
    /* EC880 800DD8D0 00106880 */  sll        $t5, $s0, 2
    /* EC884 800DD8D4 01B06823 */  subu       $t5, $t5, $s0
    /* EC888 800DD8D8 11800006 */  beqz       $t4, .L800DD8F4_EC8A4
    /* EC88C 800DD8DC 000D6880 */   sll       $t5, $t5, 2
    /* EC890 800DD8E0 3C048014 */  lui        $a0, %hi(D_80143CBC)
    /* EC894 800DD8E4 0C00731B */  jal        osSyncPrintf
    /* EC898 800DD8E8 24843CBC */   addiu     $a0, $a0, %lo(D_80143CBC)
    /* EC89C 800DD8EC 1000004D */  b          .L800DDA24_EC9D4
    /* EC8A0 800DD8F0 26100001 */   addiu     $s0, $s0, 0x1
  .L800DD8F4_EC8A4:
    /* EC8A4 800DD8F4 3C058015 */  lui        $a1, %hi(D_801541F8)
    /* EC8A8 800DD8F8 00AD2821 */  addu       $a1, $a1, $t5
    /* EC8AC 800DD8FC 90A541F8 */  lbu        $a1, %lo(D_801541F8)($a1)
    /* EC8B0 800DD900 24AEFFF6 */  addiu      $t6, $a1, -0xA
    /* EC8B4 800DD904 2DC10016 */  sltiu      $at, $t6, 0x16
    /* EC8B8 800DD908 1020003A */  beqz       $at, .L800DD9F4_EC9A4
    /* EC8BC 800DD90C 000E7080 */   sll       $t6, $t6, 2
    /* EC8C0 800DD910 3C018014 */  lui        $at, %hi(jtbl_80144138_overlay_gameplay_outside)
    /* EC8C4 800DD914 002E0821 */  addu       $at, $at, $t6
    /* EC8C8 800DD918 8C2E4138 */  lw         $t6, %lo(jtbl_80144138_overlay_gameplay_outside)($at)
    /* EC8CC 800DD91C 01C00008 */  jr         $t6
    /* EC8D0 800DD920 00000000 */   nop
    /* EC8D4 800DD924 0C03109D */  jal        func_800C4274_D3224
    /* EC8D8 800DD928 00000000 */   nop
    /* EC8DC 800DD92C 1000003D */  b          .L800DDA24_EC9D4
    /* EC8E0 800DD930 26100001 */   addiu     $s0, $s0, 0x1
    /* EC8E4 800DD934 0C03132E */  jal        func_800C4CB8_D3C68
    /* EC8E8 800DD938 00000000 */   nop
    /* EC8EC 800DD93C 10000039 */  b          .L800DDA24_EC9D4
    /* EC8F0 800DD940 26100001 */   addiu     $s0, $s0, 0x1
    /* EC8F4 800DD944 0C033024 */  jal        func_800CC090_DB040
    /* EC8F8 800DD948 00000000 */   nop
    /* EC8FC 800DD94C 10000035 */  b          .L800DDA24_EC9D4
    /* EC900 800DD950 26100001 */   addiu     $s0, $s0, 0x1
    /* EC904 800DD954 0C033355 */  jal        func_800CCD54_DBD04
    /* EC908 800DD958 00000000 */   nop
    /* EC90C 800DD95C 10000031 */  b          .L800DDA24_EC9D4
    /* EC910 800DD960 26100001 */   addiu     $s0, $s0, 0x1
    /* EC914 800DD964 0C033CB8 */  jal        func_800CF2E0_DE290
    /* EC918 800DD968 00000000 */   nop
    /* EC91C 800DD96C 1000002D */  b          .L800DDA24_EC9D4
    /* EC920 800DD970 26100001 */   addiu     $s0, $s0, 0x1
    /* EC924 800DD974 0C034BB3 */  jal        func_800D2ECC_E1E7C
    /* EC928 800DD978 00000000 */   nop
    /* EC92C 800DD97C 10000029 */  b          .L800DDA24_EC9D4
    /* EC930 800DD980 26100001 */   addiu     $s0, $s0, 0x1
    /* EC934 800DD984 0C03516D */  jal        func_800D45B4_E3564
    /* EC938 800DD988 00000000 */   nop
    /* EC93C 800DD98C 10000025 */  b          .L800DDA24_EC9D4
    /* EC940 800DD990 26100001 */   addiu     $s0, $s0, 0x1
    /* EC944 800DD994 0C035304 */  jal        func_800D4C10_E3BC0
    /* EC948 800DD998 00000000 */   nop
    /* EC94C 800DD99C 10000021 */  b          .L800DDA24_EC9D4
    /* EC950 800DD9A0 26100001 */   addiu     $s0, $s0, 0x1
    /* EC954 800DD9A4 0C0356BD */  jal        func_800D5AF4_E4AA4
    /* EC958 800DD9A8 00000000 */   nop
    /* EC95C 800DD9AC 1000001D */  b          .L800DDA24_EC9D4
    /* EC960 800DD9B0 26100001 */   addiu     $s0, $s0, 0x1
    /* EC964 800DD9B4 0C035E1C */  jal        func_800D7870_E6820
    /* EC968 800DD9B8 00000000 */   nop
    /* EC96C 800DD9BC 10000019 */  b          .L800DDA24_EC9D4
    /* EC970 800DD9C0 26100001 */   addiu     $s0, $s0, 0x1
    /* EC974 800DD9C4 0C036064 */  jal        func_800D8190_E7140
    /* EC978 800DD9C8 00000000 */   nop
    /* EC97C 800DD9CC 10000015 */  b          .L800DDA24_EC9D4
    /* EC980 800DD9D0 26100001 */   addiu     $s0, $s0, 0x1
    /* EC984 800DD9D4 0C0364A5 */  jal        func_800D9294_E8244
    /* EC988 800DD9D8 00000000 */   nop
    /* EC98C 800DD9DC 10000011 */  b          .L800DDA24_EC9D4
    /* EC990 800DD9E0 26100001 */   addiu     $s0, $s0, 0x1
    /* EC994 800DD9E4 0C0365E3 */  jal        func_800D978C_E873C
    /* EC998 800DD9E8 00000000 */   nop
    /* EC99C 800DD9EC 1000000D */  b          .L800DDA24_EC9D4
    /* EC9A0 800DD9F0 26100001 */   addiu     $s0, $s0, 0x1
  .L800DD9F4_EC9A4:
    /* EC9A4 800DD9F4 04A00007 */  bltz       $a1, .L800DDA14_EC9C4
    /* EC9A8 800DD9F8 28A1000A */   slti      $at, $a1, 0xA
    /* EC9AC 800DD9FC 10200005 */  beqz       $at, .L800DDA14_EC9C4
    /* EC9B0 800DDA00 3C048014 */   lui       $a0, %hi(D_80143CF0)
    /* EC9B4 800DDA04 0C00731B */  jal        osSyncPrintf
    /* EC9B8 800DDA08 24843CF0 */   addiu     $a0, $a0, %lo(D_80143CF0)
    /* EC9BC 800DDA0C 10000005 */  b          .L800DDA24_EC9D4
    /* EC9C0 800DDA10 26100001 */   addiu     $s0, $s0, 0x1
  .L800DDA14_EC9C4:
    /* EC9C4 800DDA14 3C048014 */  lui        $a0, %hi(D_80143D2C)
    /* EC9C8 800DDA18 0C00731B */  jal        osSyncPrintf
    /* EC9CC 800DDA1C 24843D2C */   addiu     $a0, $a0, %lo(D_80143D2C)
    /* EC9D0 800DDA20 26100001 */  addiu      $s0, $s0, 0x1
  .L800DDA24_EC9D4:
    /* EC9D4 800DDA24 320F00FF */  andi       $t7, $s0, 0xFF
    /* EC9D8 800DDA28 29E10016 */  slti       $at, $t7, 0x16
    /* EC9DC 800DDA2C 1420FF9C */  bnez       $at, .L800DD8A0_EC850
    /* EC9E0 800DDA30 01E08025 */   or        $s0, $t7, $zero
    /* EC9E4 800DDA34 3C188004 */  lui        $t8, %hi(currentLevel)
    /* EC9E8 800DDA38 8F187F90 */  lw         $t8, %lo(currentLevel)($t8)
    /* EC9EC 800DDA3C 24100002 */  addiu      $s0, $zero, 0x2
    /* EC9F0 800DDA40 24040000 */  addiu      $a0, $zero, 0x0
    /* EC9F4 800DDA44 16180009 */  bne        $s0, $t8, .L800DDA6C_ECA1C
    /* EC9F8 800DDA48 00000000 */   nop
    /* EC9FC 800DDA4C 0C001C9B */  jal        func_8000726C_7E6C
    /* ECA00 800DDA50 2405001E */   addiu     $a1, $zero, 0x1E
    /* ECA04 800DDA54 14400005 */  bnez       $v0, .L800DDA6C_ECA1C
    /* ECA08 800DDA58 00000000 */   nop
    /* ECA0C 800DDA5C 0C038BB5 */  jal        func_800E2ED4_F1E84
    /* ECA10 800DDA60 00000000 */   nop
    /* ECA14 800DDA64 1000000C */  b          .L800DDA98_ECA48
    /* ECA18 800DDA68 00000000 */   nop
  .L800DDA6C_ECA1C:
    /* ECA1C 800DDA6C 3C198004 */  lui        $t9, %hi(currentLevel)
    /* ECA20 800DDA70 8F397F90 */  lw         $t9, %lo(currentLevel)($t9)
    /* ECA24 800DDA74 24010004 */  addiu      $at, $zero, 0x4
    /* ECA28 800DDA78 3C0C8005 */  lui        $t4, %hi(D_80052ACA)
    /* ECA2C 800DDA7C 17210006 */  bne        $t9, $at, .L800DDA98_ECA48
    /* ECA30 800DDA80 00000000 */   nop
    /* ECA34 800DDA84 918C2ACA */  lbu        $t4, %lo(D_80052ACA)($t4)
    /* ECA38 800DDA88 120C0003 */  beq        $s0, $t4, .L800DDA98_ECA48
    /* ECA3C 800DDA8C 00000000 */   nop
    /* ECA40 800DDA90 0C038CB1 */  jal        func_800E32C4_F2274
    /* ECA44 800DDA94 00000000 */   nop
  .L800DDA98_ECA48:
    /* ECA48 800DDA98 0C031B60 */  jal        func_800C6D80_D5D30
    /* ECA4C 800DDA9C 00000000 */   nop
    /* ECA50 800DDAA0 0C034434 */  jal        func_800D10D0_E0080
    /* ECA54 800DDAA4 00000000 */   nop
    /* ECA58 800DDAA8 3C0D8014 */  lui        $t5, %hi(D_8013E344)
    /* ECA5C 800DDAAC 91ADE344 */  lbu        $t5, %lo(D_8013E344)($t5)
    /* ECA60 800DDAB0 29A10006 */  slti       $at, $t5, 0x6
    /* ECA64 800DDAB4 14200003 */  bnez       $at, .L800DDAC4_ECA74
    /* ECA68 800DDAB8 00000000 */   nop
    /* ECA6C 800DDABC 0C038D83 */  jal        func_800E360C_F25BC
    /* ECA70 800DDAC0 00000000 */   nop
  .L800DDAC4_ECA74:
    /* ECA74 800DDAC4 3C028015 */  lui        $v0, %hi(D_80156EDA)
    /* ECA78 800DDAC8 84426EDA */  lh         $v0, %lo(D_80156EDA)($v0)
    /* ECA7C 800DDACC 240E0001 */  addiu      $t6, $zero, 0x1
    /* ECA80 800DDAD0 2841028B */  slti       $at, $v0, 0x28B
    /* ECA84 800DDAD4 14200003 */  bnez       $at, .L800DDAE4_ECA94
    /* ECA88 800DDAD8 3C018015 */   lui       $at, %hi(D_80156ED9)
    /* ECA8C 800DDADC 10000009 */  b          .L800DDB04_ECAB4
    /* ECA90 800DDAE0 A02E6ED9 */   sb        $t6, %lo(D_80156ED9)($at)
  .L800DDAE4_ECA94:
    /* ECA94 800DDAE4 28410321 */  slti       $at, $v0, 0x321
    /* ECA98 800DDAE8 14200004 */  bnez       $at, .L800DDAFC_ECAAC
    /* ECA9C 800DDAEC 240F0002 */   addiu     $t7, $zero, 0x2
    /* ECAA0 800DDAF0 3C018015 */  lui        $at, %hi(D_80156ED9)
    /* ECAA4 800DDAF4 10000003 */  b          .L800DDB04_ECAB4
    /* ECAA8 800DDAF8 A02F6ED9 */   sb        $t7, %lo(D_80156ED9)($at)
  .L800DDAFC_ECAAC:
    /* ECAAC 800DDAFC 3C018015 */  lui        $at, %hi(D_80156ED9)
    /* ECAB0 800DDB00 A0206ED9 */  sb         $zero, %lo(D_80156ED9)($at)
  .L800DDB04_ECAB4:
    /* ECAB4 800DDB04 8FBF001C */  lw         $ra, 0x1C($sp)
    /* ECAB8 800DDB08 8FB00018 */  lw         $s0, 0x18($sp)
    /* ECABC 800DDB0C 27BD0020 */  addiu      $sp, $sp, 0x20
    /* ECAC0 800DDB10 03E00008 */  jr         $ra
    /* ECAC4 800DDB14 00000000 */   nop
endlabel func_800DD604_EC5B4
