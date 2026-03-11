nonmatching func_8007A774_4AC24, 0xEA4

glabel func_8007A774_4AC24
    /* 4AC24 8007A774 27BDFF08 */  addiu      $sp, $sp, -0xF8
    /* 4AC28 8007A778 AFB20038 */  sw         $s2, 0x38($sp)
    /* 4AC2C 8007A77C 3C06800D */  lui        $a2, %hi(D_800D7962)
    /* 4AC30 8007A780 24C67962 */  addiu      $a2, $a2, %lo(D_800D7962)
    /* 4AC34 8007A784 3C128005 */  lui        $s2, %hi(D_80052A8C)
    /* 4AC38 8007A788 84C50000 */  lh         $a1, 0x0($a2)
    /* 4AC3C 8007A78C 26522A8C */  addiu      $s2, $s2, %lo(D_80052A8C)
    /* 4AC40 8007A790 8E4E0000 */  lw         $t6, 0x0($s2)
    /* 4AC44 8007A794 24B8FFFB */  addiu      $t8, $a1, -0x5
    /* 4AC48 8007A798 AFBF003C */  sw         $ra, 0x3C($sp)
    /* 4AC4C 8007A79C AFB00030 */  sw         $s0, 0x30($sp)
    /* 4AC50 8007A7A0 2F010006 */  sltiu      $at, $t8, 0x6
    /* 4AC54 8007A7A4 25CF0001 */  addiu      $t7, $t6, 0x1
    /* 4AC58 8007A7A8 AFB10034 */  sw         $s1, 0x34($sp)
    /* 4AC5C 8007A7AC AFA400F8 */  sw         $a0, 0xF8($sp)
    /* 4AC60 8007A7B0 0000F825 */  or         $ra, $zero, $zero
    /* 4AC64 8007A7B4 24090154 */  addiu      $t1, $zero, 0x154
    /* 4AC68 8007A7B8 00005025 */  or         $t2, $zero, $zero
    /* 4AC6C 8007A7BC 00006025 */  or         $t4, $zero, $zero
    /* 4AC70 8007A7C0 A7A000F4 */  sh         $zero, 0xF4($sp)
    /* 4AC74 8007A7C4 00006825 */  or         $t5, $zero, $zero
    /* 4AC78 8007A7C8 24080050 */  addiu      $t0, $zero, 0x50
    /* 4AC7C 8007A7CC 240B02A8 */  addiu      $t3, $zero, 0x2A8
    /* 4AC80 8007A7D0 241001E0 */  addiu      $s0, $zero, 0x1E0
    /* 4AC84 8007A7D4 102000A7 */  beqz       $at, .L8007AA74_4AF24
    /* 4AC88 8007A7D8 AE4F0000 */   sw        $t7, 0x0($s2)
    /* 4AC8C 8007A7DC 0018C080 */  sll        $t8, $t8, 2
    /* 4AC90 8007A7E0 3C01800B */  lui        $at, %hi(jtbl_800AE84C_overlay_gameplay_frontend)
    /* 4AC94 8007A7E4 00380821 */  addu       $at, $at, $t8
    /* 4AC98 8007A7E8 8C38E84C */  lw         $t8, %lo(jtbl_800AE84C_overlay_gameplay_frontend)($at)
    /* 4AC9C 8007A7EC 03000008 */  jr         $t8
    /* 4ACA0 8007A7F0 00000000 */   nop
    /* 4ACA4 8007A7F4 3C04800D */  lui        $a0, %hi(D_800D7960)
    /* 4ACA8 8007A7F8 24847960 */  addiu      $a0, $a0, %lo(D_800D7960)
    /* 4ACAC 8007A7FC 84820000 */  lh         $v0, 0x0($a0)
    /* 4ACB0 8007A800 24010078 */  addiu      $at, $zero, 0x78
    /* 4ACB4 8007A804 00028100 */  sll        $s0, $v0, 4
    /* 4ACB8 8007A808 02028023 */  subu       $s0, $s0, $v0
    /* 4ACBC 8007A80C 00108140 */  sll        $s0, $s0, 5
    /* 4ACC0 8007A810 0201001A */  div        $zero, $s0, $at
    /* 4ACC4 8007A814 0000C812 */  mflo       $t9
    /* 4ACC8 8007A818 00197400 */  sll        $t6, $t9, 16
    /* 4ACCC 8007A81C 28430079 */  slti       $v1, $v0, 0x79
    /* 4ACD0 8007A820 24580001 */  addiu      $t8, $v0, 0x1
    /* 4ACD4 8007A824 000E8403 */  sra        $s0, $t6, 16
    /* 4ACD8 8007A828 14600097 */  bnez       $v1, .L8007AA88_4AF38
    /* 4ACDC 8007A82C A4980000 */   sh        $t8, 0x0($a0)
    /* 4ACE0 8007A830 24B90001 */  addiu      $t9, $a1, 0x1
    /* 4ACE4 8007A834 A4D90000 */  sh         $t9, 0x0($a2)
    /* 4ACE8 8007A838 10000093 */  b          .L8007AA88_4AF38
    /* 4ACEC 8007A83C A4800000 */   sh        $zero, 0x0($a0)
    /* 4ACF0 8007A840 3C04800D */  lui        $a0, %hi(D_800D7960)
    /* 4ACF4 8007A844 24847960 */  addiu      $a0, $a0, %lo(D_800D7960)
    /* 4ACF8 8007A848 84820000 */  lh         $v0, 0x0($a0)
    /* 4ACFC 8007A84C 24AF0001 */  addiu      $t7, $a1, 0x1
    /* 4AD00 8007A850 28430047 */  slti       $v1, $v0, 0x47
    /* 4AD04 8007A854 244E0001 */  addiu      $t6, $v0, 0x1
    /* 4AD08 8007A858 1460008B */  bnez       $v1, .L8007AA88_4AF38
    /* 4AD0C 8007A85C A48E0000 */   sh        $t6, 0x0($a0)
    /* 4AD10 8007A860 A4800000 */  sh         $zero, 0x0($a0)
    /* 4AD14 8007A864 10000088 */  b          .L8007AA88_4AF38
    /* 4AD18 8007A868 A4CF0000 */   sh        $t7, 0x0($a2)
    /* 4AD1C 8007A86C 3C04800D */  lui        $a0, %hi(D_800D7960)
    /* 4AD20 8007A870 24847960 */  addiu      $a0, $a0, %lo(D_800D7960)
    /* 4AD24 8007A874 84820000 */  lh         $v0, 0x0($a0)
    /* 4AD28 8007A878 24AF0001 */  addiu      $t7, $a1, 0x1
    /* 4AD2C 8007A87C 00020823 */  negu       $at, $v0
    /* 4AD30 8007A880 00016880 */  sll        $t5, $at, 2
    /* 4AD34 8007A884 01A16823 */  subu       $t5, $t5, $at
    /* 4AD38 8007A888 000D68C0 */  sll        $t5, $t5, 3
    /* 4AD3C 8007A88C 01A16821 */  addu       $t5, $t5, $at
    /* 4AD40 8007A890 000DC480 */  sll        $t8, $t5, 18
    /* 4AD44 8007A894 28430065 */  slti       $v1, $v0, 0x65
    /* 4AD48 8007A898 244E0001 */  addiu      $t6, $v0, 0x1
    /* 4AD4C 8007A89C 00186C03 */  sra        $t5, $t8, 16
    /* 4AD50 8007A8A0 14600079 */  bnez       $v1, .L8007AA88_4AF38
    /* 4AD54 8007A8A4 A48E0000 */   sh        $t6, 0x0($a0)
    /* 4AD58 8007A8A8 A4800000 */  sh         $zero, 0x0($a0)
    /* 4AD5C 8007A8AC 10000076 */  b          .L8007AA88_4AF38
    /* 4AD60 8007A8B0 A4CF0000 */   sh        $t7, 0x0($a2)
    /* 4AD64 8007A8B4 3C04800D */  lui        $a0, %hi(D_800D7960)
    /* 4AD68 8007A8B8 24847960 */  addiu      $a0, $a0, %lo(D_800D7960)
    /* 4AD6C 8007A8BC 84820000 */  lh         $v0, 0x0($a0)
    /* 4AD70 8007A8C0 3C01800B */  lui        $at, %hi(D_800AE868)
    /* 4AD74 8007A8C4 D426E868 */  ldc1       $f6, %lo(D_800AE868)($at)
    /* 4AD78 8007A8C8 44822000 */  mtc1       $v0, $f4
    /* 4AD7C 8007A8CC 3C01800B */  lui        $at, %hi(D_800AE870)
    /* 4AD80 8007A8D0 D428E870 */  ldc1       $f8, %lo(D_800AE870)($at)
    /* 4AD84 8007A8D4 46802021 */  cvt.d.w    $f0, $f4
    /* 4AD88 8007A8D8 3C014021 */  lui        $at, (0x40210000 >> 16)
    /* 4AD8C 8007A8DC 44812800 */  mtc1       $at, $f5
    /* 4AD90 8007A8E0 44802000 */  mtc1       $zero, $f4
    /* 4AD94 8007A8E4 3C014054 */  lui        $at, (0x40540000 >> 16)
    /* 4AD98 8007A8E8 46280282 */  mul.d      $f10, $f0, $f8
    /* 4AD9C 8007A8EC 00026940 */  sll        $t5, $v0, 5
    /* 4ADA0 8007A8F0 01A26823 */  subu       $t5, $t5, $v0
    /* 4ADA4 8007A8F4 000D6880 */  sll        $t5, $t5, 2
    /* 4ADA8 8007A8F8 46240202 */  mul.d      $f8, $f0, $f4
    /* 4ADAC 8007A8FC 01A26821 */  addu       $t5, $t5, $v0
    /* 4ADB0 8007A900 000D6880 */  sll        $t5, $t5, 2
    /* 4ADB4 8007A904 25ADD8F0 */  addiu      $t5, $t5, -0x2710
    /* 4ADB8 8007A908 000DC400 */  sll        $t8, $t5, 16
    /* 4ADBC 8007A90C 00186C03 */  sra        $t5, $t8, 16
    /* 4ADC0 8007A910 462A3401 */  sub.d      $f16, $f6, $f10
    /* 4ADC4 8007A914 44813800 */  mtc1       $at, $f7
    /* 4ADC8 8007A918 3C01800B */  lui        $at, %hi(D_800AE878)
    /* 4ADCC 8007A91C 44803000 */  mtc1       $zero, $f6
    /* 4ADD0 8007A920 4620848D */  trunc.w.d  $f18, $f16
    /* 4ADD4 8007A924 28430015 */  slti       $v1, $v0, 0x15
    /* 4ADD8 8007A928 24B80001 */  addiu      $t8, $a1, 0x1
    /* 4ADDC 8007A92C 46264280 */  add.d      $f10, $f8, $f6
    /* 4ADE0 8007A930 44099000 */  mfc1       $t1, $f18
    /* 4ADE4 8007A934 D432E878 */  ldc1       $f18, %lo(D_800AE878)($at)
    /* 4ADE8 8007A938 3C01800B */  lui        $at, %hi(D_800AE880)
    /* 4ADEC 8007A93C D424E880 */  ldc1       $f4, %lo(D_800AE880)($at)
    /* 4ADF0 8007A940 4620540D */  trunc.w.d  $f16, $f10
    /* 4ADF4 8007A944 00097C00 */  sll        $t7, $t1, 16
    /* 4ADF8 8007A948 46240202 */  mul.d      $f8, $f0, $f4
    /* 4ADFC 8007A94C 000F4C03 */  sra        $t1, $t7, 16
    /* 4AE00 8007A950 44088000 */  mfc1       $t0, $f16
    /* 4AE04 8007A954 244F0001 */  addiu      $t7, $v0, 0x1
    /* 4AE08 8007A958 A48F0000 */  sh         $t7, 0x0($a0)
    /* 4AE0C 8007A95C 00087400 */  sll        $t6, $t0, 16
    /* 4AE10 8007A960 000E4403 */  sra        $t0, $t6, 16
    /* 4AE14 8007A964 46289181 */  sub.d      $f6, $f18, $f8
    /* 4AE18 8007A968 4620328D */  trunc.w.d  $f10, $f6
    /* 4AE1C 8007A96C 440B5000 */  mfc1       $t3, $f10
    /* 4AE20 8007A970 00000000 */  nop
    /* 4AE24 8007A974 000BCC00 */  sll        $t9, $t3, 16
    /* 4AE28 8007A978 14600043 */  bnez       $v1, .L8007AA88_4AF38
    /* 4AE2C 8007A97C 00195C03 */   sra       $t3, $t9, 16
    /* 4AE30 8007A980 A4800000 */  sh         $zero, 0x0($a0)
    /* 4AE34 8007A984 10000040 */  b          .L8007AA88_4AF38
    /* 4AE38 8007A988 A4D80000 */   sh        $t8, 0x0($a2)
    /* 4AE3C 8007A98C 3C04800D */  lui        $a0, %hi(D_800D7960)
    /* 4AE40 8007A990 24847960 */  addiu      $a0, $a0, %lo(D_800D7960)
    /* 4AE44 8007A994 84820000 */  lh         $v0, 0x0($a0)
    /* 4AE48 8007A998 3C01800B */  lui        $at, %hi(D_800AE888)
    /* 4AE4C 8007A99C D432E888 */  ldc1       $f18, %lo(D_800AE888)($at)
    /* 4AE50 8007A9A0 44828000 */  mtc1       $v0, $f16
    /* 4AE54 8007A9A4 3C01800B */  lui        $at, %hi(D_800AE890)
    /* 4AE58 8007A9A8 D426E890 */  ldc1       $f6, %lo(D_800AE890)($at)
    /* 4AE5C 8007A9AC 46808121 */  cvt.d.w    $f4, $f16
    /* 4AE60 8007A9B0 00025023 */  negu       $t2, $v0
    /* 4AE64 8007A9B4 000AC880 */  sll        $t9, $t2, 2
    /* 4AE68 8007A9B8 032AC821 */  addu       $t9, $t9, $t2
    /* 4AE6C 8007A9BC 0019C880 */  sll        $t9, $t9, 2
    /* 4AE70 8007A9C0 46322202 */  mul.d      $f8, $f4, $f18
    /* 4AE74 8007A9C4 032AC823 */  subu       $t9, $t9, $t2
    /* 4AE78 8007A9C8 0019C880 */  sll        $t9, $t9, 2
    /* 4AE7C 8007A9CC 032AC823 */  subu       $t9, $t9, $t2
    /* 4AE80 8007A9D0 00197480 */  sll        $t6, $t9, 18
    /* 4AE84 8007A9D4 241800FA */  addiu      $t8, $zero, 0xFA
    /* 4AE88 8007A9D8 03024023 */  subu       $t0, $t8, $v0
    /* 4AE8C 8007A9DC 000E5403 */  sra        $t2, $t6, 16
    /* 4AE90 8007A9E0 46264280 */  add.d      $f10, $f8, $f6
    /* 4AE94 8007A9E4 0008CC00 */  sll        $t9, $t0, 16
    /* 4AE98 8007A9E8 244E0001 */  addiu      $t6, $v0, 0x1
    /* 4AE9C 8007A9EC 28430033 */  slti       $v1, $v0, 0x33
    /* 4AEA0 8007A9F0 4620540D */  trunc.w.d  $f16, $f10
    /* 4AEA4 8007A9F4 2409FFD3 */  addiu      $t1, $zero, -0x2D
    /* 4AEA8 8007A9F8 00194403 */  sra        $t0, $t9, 16
    /* 4AEAC 8007A9FC A48E0000 */  sh         $t6, 0x0($a0)
    /* 4AEB0 8007AA00 440B8000 */  mfc1       $t3, $f16
    /* 4AEB4 8007AA04 24AF0001 */  addiu      $t7, $a1, 0x1
    /* 4AEB8 8007AA08 000BC400 */  sll        $t8, $t3, 16
    /* 4AEBC 8007AA0C 1460001E */  bnez       $v1, .L8007AA88_4AF38
    /* 4AEC0 8007AA10 00185C03 */   sra       $t3, $t8, 16
    /* 4AEC4 8007AA14 A4800000 */  sh         $zero, 0x0($a0)
    /* 4AEC8 8007AA18 1000001B */  b          .L8007AA88_4AF38
    /* 4AECC 8007AA1C A4CF0000 */   sh        $t7, 0x0($a2)
    /* 4AED0 8007AA20 3C04800D */  lui        $a0, %hi(D_800D7960)
    /* 4AED4 8007AA24 24847960 */  addiu      $a0, $a0, %lo(D_800D7960)
    /* 4AED8 8007AA28 84820000 */  lh         $v0, 0x0($a0)
    /* 4AEDC 8007AA2C 241F0001 */  addiu      $ra, $zero, 0x1
    /* 4AEE0 8007AA30 2409FFD3 */  addiu      $t1, $zero, -0x2D
    /* 4AEE4 8007AA34 00026023 */  negu       $t4, $v0
    /* 4AEE8 8007AA38 000CC080 */  sll        $t8, $t4, 2
    /* 4AEEC 8007AA3C 030CC023 */  subu       $t8, $t8, $t4
    /* 4AEF0 8007AA40 0018CC00 */  sll        $t9, $t8, 16
    /* 4AEF4 8007AA44 2843012D */  slti       $v1, $v0, 0x12D
    /* 4AEF8 8007AA48 244F0001 */  addiu      $t7, $v0, 0x1
    /* 4AEFC 8007AA4C 240AC568 */  addiu      $t2, $zero, -0x3A98
    /* 4AF00 8007AA50 00196403 */  sra        $t4, $t9, 16
    /* 4AF04 8007AA54 240800C8 */  addiu      $t0, $zero, 0xC8
    /* 4AF08 8007AA58 240B00C8 */  addiu      $t3, $zero, 0xC8
    /* 4AF0C 8007AA5C 1460000A */  bnez       $v1, .L8007AA88_4AF38
    /* 4AF10 8007AA60 A48F0000 */   sh        $t7, 0x0($a0)
    /* 4AF14 8007AA64 24B80001 */  addiu      $t8, $a1, 0x1
    /* 4AF18 8007AA68 A4D80000 */  sh         $t8, 0x0($a2)
    /* 4AF1C 8007AA6C 10000006 */  b          .L8007AA88_4AF38
    /* 4AF20 8007AA70 A4800000 */   sh        $zero, 0x0($a0)
  .L8007AA74_4AF24:
    /* 4AF24 8007AA74 240800C8 */  addiu      $t0, $zero, 0xC8
    /* 4AF28 8007AA78 240B00C8 */  addiu      $t3, $zero, 0xC8
    /* 4AF2C 8007AA7C 2409FFD3 */  addiu      $t1, $zero, -0x2D
    /* 4AF30 8007AA80 240CFE0C */  addiu      $t4, $zero, -0x1F4
    /* 4AF34 8007AA84 240AC568 */  addiu      $t2, $zero, -0x3A98
  .L8007AA88_4AF38:
    /* 4AF38 8007AA88 3C014316 */  lui        $at, (0x43160000 >> 16)
    /* 4AF3C 8007AA8C 44812000 */  mtc1       $at, $f4
    /* 4AF40 8007AA90 3C01800B */  lui        $at, %hi(D_800AE898)
    /* 4AF44 8007AA94 C432E898 */  lwc1       $f18, %lo(D_800AE898)($at)
    /* 4AF48 8007AA98 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 4AF4C 8007AA9C 44814000 */  mtc1       $at, $f8
    /* 4AF50 8007AAA0 3C118006 */  lui        $s1, %hi(D_8005BB38)
    /* 4AF54 8007AAA4 2631BB38 */  addiu      $s1, $s1, %lo(D_8005BB38)
    /* 4AF58 8007AAA8 AFBF00E0 */  sw         $ra, 0xE0($sp)
    /* 4AF5C 8007AAAC 8E240000 */  lw         $a0, 0x0($s1)
    /* 4AF60 8007AAB0 27A500F6 */  addiu      $a1, $sp, 0xF6
    /* 4AF64 8007AAB4 3C064292 */  lui        $a2, (0x42920000 >> 16)
    /* 4AF68 8007AAB8 3C073FA0 */  lui        $a3, (0x3FA00000 >> 16)
    /* 4AF6C 8007AABC A7A800EA */  sh         $t0, 0xEA($sp)
    /* 4AF70 8007AAC0 A7A900EC */  sh         $t1, 0xEC($sp)
    /* 4AF74 8007AAC4 A7AA00F0 */  sh         $t2, 0xF0($sp)
    /* 4AF78 8007AAC8 A7AB00E8 */  sh         $t3, 0xE8($sp)
    /* 4AF7C 8007AACC A7AC00EE */  sh         $t4, 0xEE($sp)
    /* 4AF80 8007AAD0 A7AD00F2 */  sh         $t5, 0xF2($sp)
    /* 4AF84 8007AAD4 A7B000E6 */  sh         $s0, 0xE6($sp)
    /* 4AF88 8007AAD8 E7A40010 */  swc1       $f4, 0x10($sp)
    /* 4AF8C 8007AADC E7B20014 */  swc1       $f18, 0x14($sp)
    /* 4AF90 8007AAE0 0C007964 */  jal        guPerspective
    /* 4AF94 8007AAE4 E7A80018 */   swc1      $f8, 0x18($sp)
    /* 4AF98 8007AAE8 3C108006 */  lui        $s0, %hi(D_8005BB2C)
    /* 4AF9C 8007AAEC 2610BB2C */  addiu      $s0, $s0, %lo(D_8005BB2C)
    /* 4AFA0 8007AAF0 8E020000 */  lw         $v0, 0x0($s0)
    /* 4AFA4 8007AAF4 3C0EBC00 */  lui        $t6, (0xBC00000E >> 16)
    /* 4AFA8 8007AAF8 35CE000E */  ori        $t6, $t6, (0xBC00000E & 0xFFFF)
    /* 4AFAC 8007AAFC 24590008 */  addiu      $t9, $v0, 0x8
    /* 4AFB0 8007AB00 AE190000 */  sw         $t9, 0x0($s0)
    /* 4AFB4 8007AB04 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 4AFB8 8007AB08 97AF00F6 */  lhu        $t7, 0xF6($sp)
    /* 4AFBC 8007AB0C 3C190103 */  lui        $t9, (0x1030040 >> 16)
    /* 4AFC0 8007AB10 37390040 */  ori        $t9, $t9, (0x1030040 & 0xFFFF)
    /* 4AFC4 8007AB14 AC4F0004 */  sw         $t7, 0x4($v0)
    /* 4AFC8 8007AB18 8E020000 */  lw         $v0, 0x0($s0)
    /* 4AFCC 8007AB1C 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 4AFD0 8007AB20 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 4AFD4 8007AB24 24580008 */  addiu      $t8, $v0, 0x8
    /* 4AFD8 8007AB28 AE180000 */  sw         $t8, 0x0($s0)
    /* 4AFDC 8007AB2C AC590000 */  sw         $t9, 0x0($v0)
    /* 4AFE0 8007AB30 8E2E0000 */  lw         $t6, 0x0($s1)
    /* 4AFE4 8007AB34 44800000 */  mtc1       $zero, $f0
    /* 4AFE8 8007AB38 3C0642F0 */  lui        $a2, (0x42F00000 >> 16)
    /* 4AFEC 8007AB3C 01C17824 */  and        $t7, $t6, $at
    /* 4AFF0 8007AB40 AC4F0004 */  sw         $t7, 0x4($v0)
    /* 4AFF4 8007AB44 3C0142AA */  lui        $at, (0x42AA0000 >> 16)
    /* 4AFF8 8007AB48 8E380000 */  lw         $t8, 0x0($s1)
    /* 4AFFC 8007AB4C 44813000 */  mtc1       $at, $f6
    /* 4B000 8007AB50 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 4B004 8007AB54 44815000 */  mtc1       $at, $f10
    /* 4B008 8007AB58 44050000 */  mfc1       $a1, $f0
    /* 4B00C 8007AB5C 27040040 */  addiu      $a0, $t8, 0x40
    /* 4B010 8007AB60 AE240000 */  sw         $a0, 0x0($s1)
    /* 4B014 8007AB64 3C074396 */  lui        $a3, (0x43960000 >> 16)
    /* 4B018 8007AB68 E7A00024 */  swc1       $f0, 0x24($sp)
    /* 4B01C 8007AB6C E7A0001C */  swc1       $f0, 0x1C($sp)
    /* 4B020 8007AB70 E7A00018 */  swc1       $f0, 0x18($sp)
    /* 4B024 8007AB74 E7A00010 */  swc1       $f0, 0x10($sp)
    /* 4B028 8007AB78 E7A60014 */  swc1       $f6, 0x14($sp)
    /* 4B02C 8007AB7C 0C00779A */  jal        guLookAt
    /* 4B030 8007AB80 E7AA0020 */   swc1      $f10, 0x20($sp)
    /* 4B034 8007AB84 8E020000 */  lw         $v0, 0x0($s0)
    /* 4B038 8007AB88 3C0F0101 */  lui        $t7, (0x1010040 >> 16)
    /* 4B03C 8007AB8C 35EF0040 */  ori        $t7, $t7, (0x1010040 & 0xFFFF)
    /* 4B040 8007AB90 244E0008 */  addiu      $t6, $v0, 0x8
    /* 4B044 8007AB94 AE0E0000 */  sw         $t6, 0x0($s0)
    /* 4B048 8007AB98 AC4F0000 */  sw         $t7, 0x0($v0)
    /* 4B04C 8007AB9C 8E380000 */  lw         $t8, 0x0($s1)
    /* 4B050 8007ABA0 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 4B054 8007ABA4 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 4B058 8007ABA8 0301C824 */  and        $t9, $t8, $at
    /* 4B05C 8007ABAC AC590004 */  sw         $t9, 0x4($v0)
    /* 4B060 8007ABB0 8E2E0000 */  lw         $t6, 0x0($s1)
    /* 4B064 8007ABB4 8E020000 */  lw         $v0, 0x0($s0)
    /* 4B068 8007ABB8 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
    /* 4B06C 8007ABBC 25CF0040 */  addiu      $t7, $t6, 0x40
    /* 4B070 8007ABC0 24580008 */  addiu      $t8, $v0, 0x8
    /* 4B074 8007ABC4 AE2F0000 */  sw         $t7, 0x0($s1)
    /* 4B078 8007ABC8 AE180000 */  sw         $t8, 0x0($s0)
    /* 4B07C 8007ABCC AC400004 */  sw         $zero, 0x4($v0)
    /* 4B080 8007ABD0 AC590000 */  sw         $t9, 0x0($v0)
    /* 4B084 8007ABD4 8E020000 */  lw         $v0, 0x0($s0)
    /* 4B088 8007ABD8 3C0FBA00 */  lui        $t7, (0xBA001402 >> 16)
    /* 4B08C 8007ABDC 35EF1402 */  ori        $t7, $t7, (0xBA001402 & 0xFFFF)
    /* 4B090 8007ABE0 244E0008 */  addiu      $t6, $v0, 0x8
    /* 4B094 8007ABE4 AE0E0000 */  sw         $t6, 0x0($s0)
    /* 4B098 8007ABE8 AC400004 */  sw         $zero, 0x4($v0)
    /* 4B09C 8007ABEC AC4F0000 */  sw         $t7, 0x0($v0)
    /* 4B0A0 8007ABF0 8E020000 */  lw         $v0, 0x0($s0)
    /* 4B0A4 8007ABF4 3C0E0055 */  lui        $t6, (0x552078 >> 16)
    /* 4B0A8 8007ABF8 3C19B900 */  lui        $t9, (0xB900031D >> 16)
    /* 4B0AC 8007ABFC 24580008 */  addiu      $t8, $v0, 0x8
    /* 4B0B0 8007AC00 AE180000 */  sw         $t8, 0x0($s0)
    /* 4B0B4 8007AC04 3739031D */  ori        $t9, $t9, (0xB900031D & 0xFFFF)
    /* 4B0B8 8007AC08 35CE2078 */  ori        $t6, $t6, (0x552078 & 0xFFFF)
    /* 4B0BC 8007AC0C AC4E0004 */  sw         $t6, 0x4($v0)
    /* 4B0C0 8007AC10 AC590000 */  sw         $t9, 0x0($v0)
    /* 4B0C4 8007AC14 8E020000 */  lw         $v0, 0x0($s0)
    /* 4B0C8 8007AC18 2419FFFF */  addiu      $t9, $zero, -0x1
    /* 4B0CC 8007AC1C 3C18B600 */  lui        $t8, (0xB6000000 >> 16)
    /* 4B0D0 8007AC20 244F0008 */  addiu      $t7, $v0, 0x8
    /* 4B0D4 8007AC24 AE0F0000 */  sw         $t7, 0x0($s0)
    /* 4B0D8 8007AC28 AC590004 */  sw         $t9, 0x4($v0)
    /* 4B0DC 8007AC2C AC580000 */  sw         $t8, 0x0($v0)
    /* 4B0E0 8007AC30 8E020000 */  lw         $v0, 0x0($s0)
    /* 4B0E4 8007AC34 3C180002 */  lui        $t8, (0x20205 >> 16)
    /* 4B0E8 8007AC38 37180205 */  ori        $t8, $t8, (0x20205 & 0xFFFF)
    /* 4B0EC 8007AC3C 244E0008 */  addiu      $t6, $v0, 0x8
    /* 4B0F0 8007AC40 AE0E0000 */  sw         $t6, 0x0($s0)
    /* 4B0F4 8007AC44 3C0FB700 */  lui        $t7, (0xB7000000 >> 16)
    /* 4B0F8 8007AC48 AC4F0000 */  sw         $t7, 0x0($v0)
    /* 4B0FC 8007AC4C AC580004 */  sw         $t8, 0x4($v0)
    /* 4B100 8007AC50 8E020000 */  lw         $v0, 0x0($s0)
    /* 4B104 8007AC54 3C0EBC00 */  lui        $t6, (0xBC000404 >> 16)
    /* 4B108 8007AC58 240D0004 */  addiu      $t5, $zero, 0x4
    /* 4B10C 8007AC5C 24590008 */  addiu      $t9, $v0, 0x8
    /* 4B110 8007AC60 AE190000 */  sw         $t9, 0x0($s0)
    /* 4B114 8007AC64 35CE0404 */  ori        $t6, $t6, (0xBC000404 & 0xFFFF)
    /* 4B118 8007AC68 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 4B11C 8007AC6C AC4D0004 */  sw         $t5, 0x4($v0)
    /* 4B120 8007AC70 8E020000 */  lw         $v0, 0x0($s0)
    /* 4B124 8007AC74 3C18BC00 */  lui        $t8, (0xBC000C04 >> 16)
    /* 4B128 8007AC78 37180C04 */  ori        $t8, $t8, (0xBC000C04 & 0xFFFF)
    /* 4B12C 8007AC7C 244F0008 */  addiu      $t7, $v0, 0x8
    /* 4B130 8007AC80 AE0F0000 */  sw         $t7, 0x0($s0)
    /* 4B134 8007AC84 AC4D0004 */  sw         $t5, 0x4($v0)
    /* 4B138 8007AC88 AC580000 */  sw         $t8, 0x0($v0)
    /* 4B13C 8007AC8C 8E020000 */  lw         $v0, 0x0($s0)
    /* 4B140 8007AC90 3C0EBC00 */  lui        $t6, (0xBC001404 >> 16)
    /* 4B144 8007AC94 341FFFFC */  ori        $ra, $zero, 0xFFFC
    /* 4B148 8007AC98 24590008 */  addiu      $t9, $v0, 0x8
    /* 4B14C 8007AC9C AE190000 */  sw         $t9, 0x0($s0)
    /* 4B150 8007ACA0 35CE1404 */  ori        $t6, $t6, (0xBC001404 & 0xFFFF)
    /* 4B154 8007ACA4 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 4B158 8007ACA8 AC5F0004 */  sw         $ra, 0x4($v0)
    /* 4B15C 8007ACAC 8E020000 */  lw         $v0, 0x0($s0)
    /* 4B160 8007ACB0 3C18BC00 */  lui        $t8, (0xBC001C04 >> 16)
    /* 4B164 8007ACB4 37181C04 */  ori        $t8, $t8, (0xBC001C04 & 0xFFFF)
    /* 4B168 8007ACB8 244F0008 */  addiu      $t7, $v0, 0x8
    /* 4B16C 8007ACBC AE0F0000 */  sw         $t7, 0x0($s0)
    /* 4B170 8007ACC0 AC5F0004 */  sw         $ra, 0x4($v0)
    /* 4B174 8007ACC4 AC580000 */  sw         $t8, 0x0($v0)
    /* 4B178 8007ACC8 8E020000 */  lw         $v0, 0x0($s0)
    /* 4B17C 8007ACCC 3C0DE700 */  lui        $t5, (0xE7000000 >> 16)
    /* 4B180 8007ACD0 3C0FBA00 */  lui        $t7, (0xBA000602 >> 16)
    /* 4B184 8007ACD4 24590008 */  addiu      $t9, $v0, 0x8
    /* 4B188 8007ACD8 AE190000 */  sw         $t9, 0x0($s0)
    /* 4B18C 8007ACDC AC400004 */  sw         $zero, 0x4($v0)
    /* 4B190 8007ACE0 AC4D0000 */  sw         $t5, 0x0($v0)
    /* 4B194 8007ACE4 8E020000 */  lw         $v0, 0x0($s0)
    /* 4B198 8007ACE8 35EF0602 */  ori        $t7, $t7, (0xBA000602 & 0xFFFF)
    /* 4B19C 8007ACEC 3C19BA00 */  lui        $t9, (0xBA001301 >> 16)
    /* 4B1A0 8007ACF0 244E0008 */  addiu      $t6, $v0, 0x8
    /* 4B1A4 8007ACF4 AE0E0000 */  sw         $t6, 0x0($s0)
    /* 4B1A8 8007ACF8 AC400004 */  sw         $zero, 0x4($v0)
    /* 4B1AC 8007ACFC AC4F0000 */  sw         $t7, 0x0($v0)
    /* 4B1B0 8007AD00 8E020000 */  lw         $v0, 0x0($s0)
    /* 4B1B4 8007AD04 3C0E0008 */  lui        $t6, (0x80000 >> 16)
    /* 4B1B8 8007AD08 37391301 */  ori        $t9, $t9, (0xBA001301 & 0xFFFF)
    /* 4B1BC 8007AD0C 24580008 */  addiu      $t8, $v0, 0x8
    /* 4B1C0 8007AD10 AE180000 */  sw         $t8, 0x0($s0)
    /* 4B1C4 8007AD14 AC4E0004 */  sw         $t6, 0x4($v0)
    /* 4B1C8 8007AD18 AC590000 */  sw         $t9, 0x0($v0)
    /* 4B1CC 8007AD1C 8E020000 */  lw         $v0, 0x0($s0)
    /* 4B1D0 8007AD20 3C18BA00 */  lui        $t8, (0xBA000E02 >> 16)
    /* 4B1D4 8007AD24 37180E02 */  ori        $t8, $t8, (0xBA000E02 & 0xFFFF)
    /* 4B1D8 8007AD28 244F0008 */  addiu      $t7, $v0, 0x8
    /* 4B1DC 8007AD2C AE0F0000 */  sw         $t7, 0x0($s0)
    /* 4B1E0 8007AD30 AC400004 */  sw         $zero, 0x4($v0)
    /* 4B1E4 8007AD34 AC580000 */  sw         $t8, 0x0($v0)
    /* 4B1E8 8007AD38 8E020000 */  lw         $v0, 0x0($s0)
    /* 4B1EC 8007AD3C 3C0EB900 */  lui        $t6, (0xB9000002 >> 16)
    /* 4B1F0 8007AD40 35CE0002 */  ori        $t6, $t6, (0xB9000002 & 0xFFFF)
    /* 4B1F4 8007AD44 24590008 */  addiu      $t9, $v0, 0x8
    /* 4B1F8 8007AD48 AE190000 */  sw         $t9, 0x0($s0)
    /* 4B1FC 8007AD4C AC400004 */  sw         $zero, 0x4($v0)
    /* 4B200 8007AD50 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 4B204 8007AD54 8E020000 */  lw         $v0, 0x0($s0)
    /* 4B208 8007AD58 3C198000 */  lui        $t9, (0x80008000 >> 16)
    /* 4B20C 8007AD5C 37398000 */  ori        $t9, $t9, (0x80008000 & 0xFFFF)
    /* 4B210 8007AD60 244F0008 */  addiu      $t7, $v0, 0x8
    /* 4B214 8007AD64 AE0F0000 */  sw         $t7, 0x0($s0)
    /* 4B218 8007AD68 3C18BB00 */  lui        $t8, (0xBB000000 >> 16)
    /* 4B21C 8007AD6C AC580000 */  sw         $t8, 0x0($v0)
    /* 4B220 8007AD70 AC590004 */  sw         $t9, 0x4($v0)
    /* 4B224 8007AD74 8E020000 */  lw         $v0, 0x0($s0)
    /* 4B228 8007AD78 3C18FFFE */  lui        $t8, (0xFFFE793C >> 16)
    /* 4B22C 8007AD7C 3C0FFCFF */  lui        $t7, (0xFCFFFFFF >> 16)
    /* 4B230 8007AD80 244E0008 */  addiu      $t6, $v0, 0x8
    /* 4B234 8007AD84 AE0E0000 */  sw         $t6, 0x0($s0)
    /* 4B238 8007AD88 35EFFFFF */  ori        $t7, $t7, (0xFCFFFFFF & 0xFFFF)
    /* 4B23C 8007AD8C 3718793C */  ori        $t8, $t8, (0xFFFE793C & 0xFFFF)
    /* 4B240 8007AD90 AC580004 */  sw         $t8, 0x4($v0)
    /* 4B244 8007AD94 AC4F0000 */  sw         $t7, 0x0($v0)
    /* 4B248 8007AD98 8E020000 */  lw         $v0, 0x0($s0)
    /* 4B24C 8007AD9C 3C18BC00 */  lui        $t8, (0xBC000002 >> 16)
    /* 4B250 8007ADA0 37180002 */  ori        $t8, $t8, (0xBC000002 & 0xFFFF)
    /* 4B254 8007ADA4 24590008 */  addiu      $t9, $v0, 0x8
    /* 4B258 8007ADA8 AE190000 */  sw         $t9, 0x0($s0)
    /* 4B25C 8007ADAC AC400004 */  sw         $zero, 0x4($v0)
    /* 4B260 8007ADB0 AC4D0000 */  sw         $t5, 0x0($v0)
    /* 4B264 8007ADB4 8E020000 */  lw         $v0, 0x0($s0)
    /* 4B268 8007ADB8 3C198000 */  lui        $t9, (0x80000040 >> 16)
    /* 4B26C 8007ADBC 37390040 */  ori        $t9, $t9, (0x80000040 & 0xFFFF)
    /* 4B270 8007ADC0 244E0008 */  addiu      $t6, $v0, 0x8
    /* 4B274 8007ADC4 AE0E0000 */  sw         $t6, 0x0($s0)
    /* 4B278 8007ADC8 AC400004 */  sw         $zero, 0x4($v0)
    /* 4B27C 8007ADCC AC4D0000 */  sw         $t5, 0x0($v0)
    /* 4B280 8007ADD0 8E020000 */  lw         $v0, 0x0($s0)
    /* 4B284 8007ADD4 3C128005 */  lui        $s2, %hi(D_80052B40)
    /* 4B288 8007ADD8 26522B40 */  addiu      $s2, $s2, %lo(D_80052B40)
    /* 4B28C 8007ADDC 244F0008 */  addiu      $t7, $v0, 0x8
    /* 4B290 8007ADE0 AE0F0000 */  sw         $t7, 0x0($s0)
    /* 4B294 8007ADE4 AC590004 */  sw         $t9, 0x4($v0)
    /* 4B298 8007ADE8 AC580000 */  sw         $t8, 0x0($v0)
    /* 4B29C 8007ADEC 8E020000 */  lw         $v0, 0x0($s0)
    /* 4B2A0 8007ADF0 3C188009 */  lui        $t8, %hi(D_800942C0)
    /* 4B2A4 8007ADF4 3C0F0386 */  lui        $t7, (0x3860010 >> 16)
    /* 4B2A8 8007ADF8 244E0008 */  addiu      $t6, $v0, 0x8
    /* 4B2AC 8007ADFC AE0E0000 */  sw         $t6, 0x0($s0)
    /* 4B2B0 8007AE00 35EF0010 */  ori        $t7, $t7, (0x3860010 & 0xFFFF)
    /* 4B2B4 8007AE04 271842C0 */  addiu      $t8, $t8, %lo(D_800942C0)
    /* 4B2B8 8007AE08 AC580004 */  sw         $t8, 0x4($v0)
    /* 4B2BC 8007AE0C AC4F0000 */  sw         $t7, 0x0($v0)
    /* 4B2C0 8007AE10 8E020000 */  lw         $v0, 0x0($s0)
    /* 4B2C4 8007AE14 3C0F8009 */  lui        $t7, %hi(D_800942B8)
    /* 4B2C8 8007AE18 3C0E0388 */  lui        $t6, (0x3880010 >> 16)
    /* 4B2CC 8007AE1C 24590008 */  addiu      $t9, $v0, 0x8
    /* 4B2D0 8007AE20 AE190000 */  sw         $t9, 0x0($s0)
    /* 4B2D4 8007AE24 35CE0010 */  ori        $t6, $t6, (0x3880010 & 0xFFFF)
    /* 4B2D8 8007AE28 25EF42B8 */  addiu      $t7, $t7, %lo(D_800942B8)
    /* 4B2DC 8007AE2C AC4F0004 */  sw         $t7, 0x4($v0)
    /* 4B2E0 8007AE30 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 4B2E4 8007AE34 8E020000 */  lw         $v0, 0x0($s0)
    /* 4B2E8 8007AE38 240EFFFF */  addiu      $t6, $zero, -0x1
    /* 4B2EC 8007AE3C 3C19B600 */  lui        $t9, (0xB6000000 >> 16)
    /* 4B2F0 8007AE40 24580008 */  addiu      $t8, $v0, 0x8
    /* 4B2F4 8007AE44 AE180000 */  sw         $t8, 0x0($s0)
    /* 4B2F8 8007AE48 AC4E0004 */  sw         $t6, 0x4($v0)
    /* 4B2FC 8007AE4C AC590000 */  sw         $t9, 0x0($v0)
    /* 4B300 8007AE50 8E020000 */  lw         $v0, 0x0($s0)
    /* 4B304 8007AE54 3C190002 */  lui        $t9, (0x20205 >> 16)
    /* 4B308 8007AE58 37390205 */  ori        $t9, $t9, (0x20205 & 0xFFFF)
    /* 4B30C 8007AE5C 244F0008 */  addiu      $t7, $v0, 0x8
    /* 4B310 8007AE60 AE0F0000 */  sw         $t7, 0x0($s0)
    /* 4B314 8007AE64 3C18B700 */  lui        $t8, (0xB7000000 >> 16)
    /* 4B318 8007AE68 AC580000 */  sw         $t8, 0x0($v0)
    /* 4B31C 8007AE6C AC590004 */  sw         $t9, 0x4($v0)
    /* 4B320 8007AE70 8FAF00E0 */  lw         $t7, 0xE0($sp)
    /* 4B324 8007AE74 87AE00EE */  lh         $t6, 0xEE($sp)
    /* 4B328 8007AE78 24010001 */  addiu      $at, $zero, 0x1
    /* 4B32C 8007AE7C 15E1001D */  bne        $t7, $at, .L8007AEF4_4B3A4
    /* 4B330 8007AE80 A64E0000 */   sh        $t6, 0x0($s2)
    /* 4B334 8007AE84 3C048005 */  lui        $a0, %hi(D_80052A8C)
    /* 4B338 8007AE88 8C842A8C */  lw         $a0, %lo(D_80052A8C)($a0)
    /* 4B33C 8007AE8C 0004C140 */  sll        $t8, $a0, 5
    /* 4B340 8007AE90 0304C023 */  subu       $t8, $t8, $a0
    /* 4B344 8007AE94 0018C080 */  sll        $t8, $t8, 2
    /* 4B348 8007AE98 0304C021 */  addu       $t8, $t8, $a0
    /* 4B34C 8007AE9C 0018C100 */  sll        $t8, $t8, 4
    /* 4B350 8007AEA0 0C007654 */  jal        coss
    /* 4B354 8007AEA4 3304FFFF */   andi      $a0, $t8, 0xFFFF
    /* 4B358 8007AEA8 44828000 */  mtc1       $v0, $f16
    /* 4B35C 8007AEAC 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 4B360 8007AEB0 44814800 */  mtc1       $at, $f9
    /* 4B364 8007AEB4 46808120 */  cvt.s.w    $f4, $f16
    /* 4B368 8007AEB8 44804000 */  mtc1       $zero, $f8
    /* 4B36C 8007AEBC 3C014020 */  lui        $at, (0x40200000 >> 16)
    /* 4B370 8007AEC0 44815800 */  mtc1       $at, $f11
    /* 4B374 8007AEC4 44805000 */  mtc1       $zero, $f10
    /* 4B378 8007AEC8 3C014044 */  lui        $at, (0x40440000 >> 16)
    /* 4B37C 8007AECC 460024A1 */  cvt.d.s    $f18, $f4
    /* 4B380 8007AED0 44802000 */  mtc1       $zero, $f4
    /* 4B384 8007AED4 46289183 */  div.d      $f6, $f18, $f8
    /* 4B388 8007AED8 44812800 */  mtc1       $at, $f5
    /* 4B38C 8007AEDC 462A3402 */  mul.d      $f16, $f6, $f10
    /* 4B390 8007AEE0 46248480 */  add.d      $f18, $f16, $f4
    /* 4B394 8007AEE4 4620920D */  trunc.w.d  $f8, $f18
    /* 4B398 8007AEE8 440F4000 */  mfc1       $t7, $f8
    /* 4B39C 8007AEEC 10000003 */  b          .L8007AEFC_4B3AC
    /* 4B3A0 8007AEF0 A64F0002 */   sh        $t7, 0x2($s2)
  .L8007AEF4_4B3A4:
    /* 4B3A4 8007AEF4 24180028 */  addiu      $t8, $zero, 0x28
    /* 4B3A8 8007AEF8 A6580002 */  sh         $t8, 0x2($s2)
  .L8007AEFC_4B3AC:
    /* 4B3AC 8007AEFC 87A300F0 */  lh         $v1, 0xF0($sp)
    /* 4B3B0 8007AF00 24010003 */  addiu      $at, $zero, 0x3
    /* 4B3B4 8007AF04 87A200E6 */  lh         $v0, 0xE6($sp)
    /* 4B3B8 8007AF08 0061001A */  div        $zero, $v1, $at
    /* 4B3BC 8007AF0C 3C058005 */  lui        $a1, %hi(D_80052B48)
    /* 4B3C0 8007AF10 3C068005 */  lui        $a2, %hi(D_80052B50)
    /* 4B3C4 8007AF14 24C62B50 */  addiu      $a2, $a2, %lo(D_80052B50)
    /* 4B3C8 8007AF18 24A52B48 */  addiu      $a1, $a1, %lo(D_80052B48)
    /* 4B3CC 8007AF1C 0000C812 */  mflo       $t9
    /* 4B3D0 8007AF20 240EF768 */  addiu      $t6, $zero, -0x898
    /* 4B3D4 8007AF24 01D97823 */  subu       $t7, $t6, $t9
    /* 4B3D8 8007AF28 24183DB8 */  addiu      $t8, $zero, 0x3DB8
    /* 4B3DC 8007AF2C A6400004 */  sh         $zero, 0x4($s2)
    /* 4B3E0 8007AF30 A4AF0000 */  sh         $t7, 0x0($a1)
    /* 4B3E4 8007AF34 A4B80004 */  sh         $t8, 0x4($a1)
    /* 4B3E8 8007AF38 02402025 */  or         $a0, $s2, $zero
    /* 4B3EC 8007AF3C 8E270000 */  lw         $a3, 0x0($s1)
    /* 4B3F0 8007AF40 A4A30002 */  sh         $v1, 0x2($a1)
    /* 4B3F4 8007AF44 A4C20000 */  sh         $v0, 0x0($a2)
    /* 4B3F8 8007AF48 A4C20002 */  sh         $v0, 0x2($a2)
    /* 4B3FC 8007AF4C 0C000E74 */  jal        func_800039D0_45D0
    /* 4B400 8007AF50 A4C20004 */   sh        $v0, 0x4($a2)
    /* 4B404 8007AF54 8E020000 */  lw         $v0, 0x0($s0)
    /* 4B408 8007AF58 3C190102 */  lui        $t9, (0x1020040 >> 16)
    /* 4B40C 8007AF5C 37390040 */  ori        $t9, $t9, (0x1020040 & 0xFFFF)
    /* 4B410 8007AF60 244E0008 */  addiu      $t6, $v0, 0x8
    /* 4B414 8007AF64 AE0E0000 */  sw         $t6, 0x0($s0)
    /* 4B418 8007AF68 AC590000 */  sw         $t9, 0x0($v0)
    /* 4B41C 8007AF6C 8E2F0000 */  lw         $t7, 0x0($s1)
    /* 4B420 8007AF70 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 4B424 8007AF74 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 4B428 8007AF78 01E1C024 */  and        $t8, $t7, $at
    /* 4B42C 8007AF7C AC580004 */  sw         $t8, 0x4($v0)
    /* 4B430 8007AF80 8E2E0000 */  lw         $t6, 0x0($s1)
    /* 4B434 8007AF84 8FAF00E0 */  lw         $t7, 0xE0($sp)
    /* 4B438 8007AF88 3C058005 */  lui        $a1, %hi(D_80052B48)
    /* 4B43C 8007AF8C 24010001 */  addiu      $at, $zero, 0x1
    /* 4B440 8007AF90 25D90040 */  addiu      $t9, $t6, 0x40
    /* 4B444 8007AF94 24A52B48 */  addiu      $a1, $a1, %lo(D_80052B48)
    /* 4B448 8007AF98 15E1003A */  bne        $t7, $at, .L8007B084_4B534
    /* 4B44C 8007AF9C AE390000 */   sw        $t9, 0x0($s1)
    /* 4B450 8007AFA0 3C048005 */  lui        $a0, %hi(D_80052A8C)
    /* 4B454 8007AFA4 8C842A8C */  lw         $a0, %lo(D_80052A8C)($a0)
    /* 4B458 8007AFA8 0004C140 */  sll        $t8, $a0, 5
    /* 4B45C 8007AFAC 0304C023 */  subu       $t8, $t8, $a0
    /* 4B460 8007AFB0 0018C080 */  sll        $t8, $t8, 2
    /* 4B464 8007AFB4 0304C021 */  addu       $t8, $t8, $a0
    /* 4B468 8007AFB8 0018C0C0 */  sll        $t8, $t8, 3
    /* 4B46C 8007AFBC 0C007654 */  jal        coss
    /* 4B470 8007AFC0 3304FFFF */   andi      $a0, $t8, 0xFFFF
    /* 4B474 8007AFC4 44823000 */  mtc1       $v0, $f6
    /* 4B478 8007AFC8 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 4B47C 8007AFCC 44812800 */  mtc1       $at, $f5
    /* 4B480 8007AFD0 468032A0 */  cvt.s.w    $f10, $f6
    /* 4B484 8007AFD4 44802000 */  mtc1       $zero, $f4
    /* 4B488 8007AFD8 3C01800B */  lui        $at, %hi(D_800AE8A0)
    /* 4B48C 8007AFDC D428E8A0 */  ldc1       $f8, %lo(D_800AE8A0)($at)
    /* 4B490 8007AFE0 240F0001 */  addiu      $t7, $zero, 0x1
    /* 4B494 8007AFE4 3C058005 */  lui        $a1, %hi(D_80052B48)
    /* 4B498 8007AFE8 46005421 */  cvt.d.s    $f16, $f10
    /* 4B49C 8007AFEC 24A52B48 */  addiu      $a1, $a1, %lo(D_80052B48)
    /* 4B4A0 8007AFF0 46248483 */  div.d      $f18, $f16, $f4
    /* 4B4A4 8007AFF4 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* 4B4A8 8007AFF8 46289182 */  mul.d      $f6, $f18, $f8
    /* 4B4AC 8007AFFC 4459F800 */  cfc1       $t9, $31
    /* 4B4B0 8007B000 44CFF800 */  ctc1       $t7, $31
    /* 4B4B4 8007B004 00000000 */  nop
    /* 4B4B8 8007B008 462032A4 */  cvt.w.d    $f10, $f6
    /* 4B4BC 8007B00C 444FF800 */  cfc1       $t7, $31
    /* 4B4C0 8007B010 00000000 */  nop
    /* 4B4C4 8007B014 31EF0078 */  andi       $t7, $t7, 0x78
    /* 4B4C8 8007B018 51E00014 */  beql       $t7, $zero, .L8007B06C_4B51C
    /* 4B4CC 8007B01C 440F5000 */   mfc1      $t7, $f10
    /* 4B4D0 8007B020 44815800 */  mtc1       $at, $f11
    /* 4B4D4 8007B024 44805000 */  mtc1       $zero, $f10
    /* 4B4D8 8007B028 240F0001 */  addiu      $t7, $zero, 0x1
    /* 4B4DC 8007B02C 462A3281 */  sub.d      $f10, $f6, $f10
    /* 4B4E0 8007B030 44CFF800 */  ctc1       $t7, $31
    /* 4B4E4 8007B034 00000000 */  nop
    /* 4B4E8 8007B038 462052A4 */  cvt.w.d    $f10, $f10
    /* 4B4EC 8007B03C 444FF800 */  cfc1       $t7, $31
    /* 4B4F0 8007B040 00000000 */  nop
    /* 4B4F4 8007B044 31EF0078 */  andi       $t7, $t7, 0x78
    /* 4B4F8 8007B048 15E00005 */  bnez       $t7, .L8007B060_4B510
    /* 4B4FC 8007B04C 00000000 */   nop
    /* 4B500 8007B050 440F5000 */  mfc1       $t7, $f10
    /* 4B504 8007B054 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* 4B508 8007B058 10000007 */  b          .L8007B078_4B528
    /* 4B50C 8007B05C 01E17825 */   or        $t7, $t7, $at
  .L8007B060_4B510:
    /* 4B510 8007B060 10000005 */  b          .L8007B078_4B528
    /* 4B514 8007B064 240FFFFF */   addiu     $t7, $zero, -0x1
    /* 4B518 8007B068 440F5000 */  mfc1       $t7, $f10
  .L8007B06C_4B51C:
    /* 4B51C 8007B06C 00000000 */  nop
    /* 4B520 8007B070 05E0FFFB */  bltz       $t7, .L8007B060_4B510
    /* 4B524 8007B074 00000000 */   nop
  .L8007B078_4B528:
    /* 4B528 8007B078 44D9F800 */  ctc1       $t9, $31
    /* 4B52C 8007B07C 10000003 */  b          .L8007B08C_4B53C
    /* 4B530 8007B080 A4AF0000 */   sh        $t7, 0x0($a1)
  .L8007B084_4B534:
    /* 4B534 8007B084 3C018005 */  lui        $at, %hi(D_80052B48)
    /* 4B538 8007B088 A4202B48 */  sh         $zero, %lo(D_80052B48)($at)
  .L8007B08C_4B53C:
    /* 4B53C 8007B08C 87B800F2 */  lh         $t8, 0xF2($sp)
    /* 4B540 8007B090 24010005 */  addiu      $at, $zero, 0x5
    /* 4B544 8007B094 A4A00002 */  sh         $zero, 0x2($a1)
    /* 4B548 8007B098 0301001A */  div        $zero, $t8, $at
    /* 4B54C 8007B09C 00007012 */  mflo       $t6
    /* 4B550 8007B0A0 A4AE0004 */  sh         $t6, 0x4($a1)
    /* 4B554 8007B0A4 A6400000 */  sh         $zero, 0x0($s2)
    /* 4B558 8007B0A8 A6400002 */  sh         $zero, 0x2($s2)
    /* 4B55C 8007B0AC A6400004 */  sh         $zero, 0x4($s2)
    /* 4B560 8007B0B0 02402025 */  or         $a0, $s2, $zero
    /* 4B564 8007B0B4 00003025 */  or         $a2, $zero, $zero
    /* 4B568 8007B0B8 0C000E74 */  jal        func_800039D0_45D0
    /* 4B56C 8007B0BC 8E270000 */   lw        $a3, 0x0($s1)
    /* 4B570 8007B0C0 8E020000 */  lw         $v0, 0x0($s0)
    /* 4B574 8007B0C4 3C0F0104 */  lui        $t7, (0x1040040 >> 16)
    /* 4B578 8007B0C8 35EF0040 */  ori        $t7, $t7, (0x1040040 & 0xFFFF)
    /* 4B57C 8007B0CC 24590008 */  addiu      $t9, $v0, 0x8
    /* 4B580 8007B0D0 AE190000 */  sw         $t9, 0x0($s0)
    /* 4B584 8007B0D4 AC4F0000 */  sw         $t7, 0x0($v0)
    /* 4B588 8007B0D8 8E380000 */  lw         $t8, 0x0($s1)
    /* 4B58C 8007B0DC 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 4B590 8007B0E0 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 4B594 8007B0E4 03017024 */  and        $t6, $t8, $at
    /* 4B598 8007B0E8 AC4E0004 */  sw         $t6, 0x4($v0)
    /* 4B59C 8007B0EC 8E390000 */  lw         $t9, 0x0($s1)
    /* 4B5A0 8007B0F0 8E020000 */  lw         $v0, 0x0($s0)
    /* 4B5A4 8007B0F4 3C0E0600 */  lui        $t6, (0x6000000 >> 16)
    /* 4B5A8 8007B0F8 272F0040 */  addiu      $t7, $t9, 0x40
    /* 4B5AC 8007B0FC 24580008 */  addiu      $t8, $v0, 0x8
    /* 4B5B0 8007B100 AE2F0000 */  sw         $t7, 0x0($s1)
    /* 4B5B4 8007B104 AE180000 */  sw         $t8, 0x0($s0)
    /* 4B5B8 8007B108 3C19040A */  lui        $t9, %hi(D_40A6650)
    /* 4B5BC 8007B10C 27396650 */  addiu      $t9, $t9, %lo(D_40A6650)
    /* 4B5C0 8007B110 AC590004 */  sw         $t9, 0x4($v0)
    /* 4B5C4 8007B114 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 4B5C8 8007B118 8FB800E0 */  lw         $t8, 0xE0($sp)
    /* 4B5CC 8007B11C 3C058005 */  lui        $a1, %hi(D_80052B48)
    /* 4B5D0 8007B120 240F0030 */  addiu      $t7, $zero, 0x30
    /* 4B5D4 8007B124 24010001 */  addiu      $at, $zero, 0x1
    /* 4B5D8 8007B128 24A52B48 */  addiu      $a1, $a1, %lo(D_80052B48)
    /* 4B5DC 8007B12C A6400000 */  sh         $zero, 0x0($s2)
    /* 4B5E0 8007B130 A64F0002 */  sh         $t7, 0x2($s2)
    /* 4B5E4 8007B134 17010030 */  bne        $t8, $at, .L8007B1F8_4B6A8
    /* 4B5E8 8007B138 A6400004 */   sh        $zero, 0x4($s2)
    /* 4B5EC 8007B13C 3C048005 */  lui        $a0, %hi(D_80052A8C)
    /* 4B5F0 8007B140 8C842A8C */  lw         $a0, %lo(D_80052A8C)($a0)
    /* 4B5F4 8007B144 00047140 */  sll        $t6, $a0, 5
    /* 4B5F8 8007B148 01C47023 */  subu       $t6, $t6, $a0
    /* 4B5FC 8007B14C 000E7080 */  sll        $t6, $t6, 2
    /* 4B600 8007B150 01C47021 */  addu       $t6, $t6, $a0
    /* 4B604 8007B154 000E7100 */  sll        $t6, $t6, 4
    /* 4B608 8007B158 0C007654 */  jal        coss
    /* 4B60C 8007B15C 31C4FFFF */   andi      $a0, $t6, 0xFFFF
    /* 4B610 8007B160 44828000 */  mtc1       $v0, $f16
    /* 4B614 8007B164 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 4B618 8007B168 44814800 */  mtc1       $at, $f9
    /* 4B61C 8007B16C 46808120 */  cvt.s.w    $f4, $f16
    /* 4B620 8007B170 44804000 */  mtc1       $zero, $f8
    /* 4B624 8007B174 3C01800B */  lui        $at, %hi(D_800AE8A8)
    /* 4B628 8007B178 D42AE8A8 */  ldc1       $f10, %lo(D_800AE8A8)($at)
    /* 4B62C 8007B17C 3C048005 */  lui        $a0, %hi(D_80052A8C)
    /* 4B630 8007B180 8C842A8C */  lw         $a0, %lo(D_80052A8C)($a0)
    /* 4B634 8007B184 460024A1 */  cvt.d.s    $f18, $f4
    /* 4B638 8007B188 46289183 */  div.d      $f6, $f18, $f8
    /* 4B63C 8007B18C 00047140 */  sll        $t6, $a0, 5
    /* 4B640 8007B190 01C47023 */  subu       $t6, $t6, $a0
    /* 4B644 8007B194 000E7080 */  sll        $t6, $t6, 2
    /* 4B648 8007B198 01C47021 */  addu       $t6, $t6, $a0
    /* 4B64C 8007B19C 000E70C0 */  sll        $t6, $t6, 3
    /* 4B650 8007B1A0 31C4FFFF */  andi       $a0, $t6, 0xFFFF
    /* 4B654 8007B1A4 462A3402 */  mul.d      $f16, $f6, $f10
    /* 4B658 8007B1A8 4620810D */  trunc.w.d  $f4, $f16
    /* 4B65C 8007B1AC 44182000 */  mfc1       $t8, $f4
    /* 4B660 8007B1B0 0C007660 */  jal        sins
    /* 4B664 8007B1B4 A7B800F4 */   sh        $t8, 0xF4($sp)
    /* 4B668 8007B1B8 44829000 */  mtc1       $v0, $f18
    /* 4B66C 8007B1BC 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 4B670 8007B1C0 44815800 */  mtc1       $at, $f11
    /* 4B674 8007B1C4 46809220 */  cvt.s.w    $f8, $f18
    /* 4B678 8007B1C8 44805000 */  mtc1       $zero, $f10
    /* 4B67C 8007B1CC 3C01800B */  lui        $at, %hi(D_800AE8B0)
    /* 4B680 8007B1D0 D424E8B0 */  ldc1       $f4, %lo(D_800AE8B0)($at)
    /* 4B684 8007B1D4 3C058005 */  lui        $a1, %hi(D_80052B48)
    /* 4B688 8007B1D8 24A52B48 */  addiu      $a1, $a1, %lo(D_80052B48)
    /* 4B68C 8007B1DC 460041A1 */  cvt.d.s    $f6, $f8
    /* 4B690 8007B1E0 462A3403 */  div.d      $f16, $f6, $f10
    /* 4B694 8007B1E4 46248482 */  mul.d      $f18, $f16, $f4
    /* 4B698 8007B1E8 4620920D */  trunc.w.d  $f8, $f18
    /* 4B69C 8007B1EC 44184000 */  mfc1       $t8, $f8
    /* 4B6A0 8007B1F0 00000000 */  nop
    /* 4B6A4 8007B1F4 A7B800F2 */  sh         $t8, 0xF2($sp)
  .L8007B1F8_4B6A8:
    /* 4B6A8 8007B1F8 87AE00F4 */  lh         $t6, 0xF4($sp)
    /* 4B6AC 8007B1FC 87B900F2 */  lh         $t9, 0xF2($sp)
    /* 4B6B0 8007B200 A4A00002 */  sh         $zero, 0x2($a1)
    /* 4B6B4 8007B204 02402025 */  or         $a0, $s2, $zero
    /* 4B6B8 8007B208 00003025 */  or         $a2, $zero, $zero
    /* 4B6BC 8007B20C 8E270000 */  lw         $a3, 0x0($s1)
    /* 4B6C0 8007B210 A4AE0000 */  sh         $t6, 0x0($a1)
    /* 4B6C4 8007B214 0C000E74 */  jal        func_800039D0_45D0
    /* 4B6C8 8007B218 A4B90004 */   sh        $t9, 0x4($a1)
    /* 4B6CC 8007B21C 8E020000 */  lw         $v0, 0x0($s0)
    /* 4B6D0 8007B220 3C180100 */  lui        $t8, (0x1000040 >> 16)
    /* 4B6D4 8007B224 37180040 */  ori        $t8, $t8, (0x1000040 & 0xFFFF)
    /* 4B6D8 8007B228 244F0008 */  addiu      $t7, $v0, 0x8
    /* 4B6DC 8007B22C AE0F0000 */  sw         $t7, 0x0($s0)
    /* 4B6E0 8007B230 AC580000 */  sw         $t8, 0x0($v0)
    /* 4B6E4 8007B234 8E2E0000 */  lw         $t6, 0x0($s1)
    /* 4B6E8 8007B238 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 4B6EC 8007B23C 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 4B6F0 8007B240 01C1C824 */  and        $t9, $t6, $at
    /* 4B6F4 8007B244 AC590004 */  sw         $t9, 0x4($v0)
    /* 4B6F8 8007B248 8E2F0000 */  lw         $t7, 0x0($s1)
    /* 4B6FC 8007B24C 8E020000 */  lw         $v0, 0x0($s0)
    /* 4B700 8007B250 3C19BD00 */  lui        $t9, (0xBD000000 >> 16)
    /* 4B704 8007B254 25F80040 */  addiu      $t8, $t7, 0x40
    /* 4B708 8007B258 244E0008 */  addiu      $t6, $v0, 0x8
    /* 4B70C 8007B25C AE380000 */  sw         $t8, 0x0($s1)
    /* 4B710 8007B260 AE0E0000 */  sw         $t6, 0x0($s0)
    /* 4B714 8007B264 AC400004 */  sw         $zero, 0x4($v0)
    /* 4B718 8007B268 AC590000 */  sw         $t9, 0x0($v0)
    /* 4B71C 8007B26C 8FB800E0 */  lw         $t8, 0xE0($sp)
    /* 4B720 8007B270 3C058005 */  lui        $a1, %hi(D_80052B48)
    /* 4B724 8007B274 24A52B48 */  addiu      $a1, $a1, %lo(D_80052B48)
    /* 4B728 8007B278 240FFFF8 */  addiu      $t7, $zero, -0x8
    /* 4B72C 8007B27C 24010001 */  addiu      $at, $zero, 0x1
    /* 4B730 8007B280 A6400000 */  sh         $zero, 0x0($s2)
    /* 4B734 8007B284 A64F0002 */  sh         $t7, 0x2($s2)
    /* 4B738 8007B288 A6400004 */  sh         $zero, 0x4($s2)
    /* 4B73C 8007B28C A4A00002 */  sh         $zero, 0x2($a1)
    /* 4B740 8007B290 1701003A */  bne        $t8, $at, .L8007B37C_4B82C
    /* 4B744 8007B294 A4A00004 */   sh        $zero, 0x4($a1)
    /* 4B748 8007B298 3C048005 */  lui        $a0, %hi(D_80052A8C)
    /* 4B74C 8007B29C 8C842A8C */  lw         $a0, %lo(D_80052A8C)($a0)
    /* 4B750 8007B2A0 00047140 */  sll        $t6, $a0, 5
    /* 4B754 8007B2A4 01C47023 */  subu       $t6, $t6, $a0
    /* 4B758 8007B2A8 000E7080 */  sll        $t6, $t6, 2
    /* 4B75C 8007B2AC 01C47021 */  addu       $t6, $t6, $a0
    /* 4B760 8007B2B0 000E7100 */  sll        $t6, $t6, 4
    /* 4B764 8007B2B4 0C007654 */  jal        coss
    /* 4B768 8007B2B8 31C4FFFF */   andi      $a0, $t6, 0xFFFF
    /* 4B76C 8007B2BC 44823000 */  mtc1       $v0, $f6
    /* 4B770 8007B2C0 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 4B774 8007B2C4 44812800 */  mtc1       $at, $f5
    /* 4B778 8007B2C8 468032A0 */  cvt.s.w    $f10, $f6
    /* 4B77C 8007B2CC 44802000 */  mtc1       $zero, $f4
    /* 4B780 8007B2D0 3C01800B */  lui        $at, %hi(D_800AE8B8)
    /* 4B784 8007B2D4 D428E8B8 */  ldc1       $f8, %lo(D_800AE8B8)($at)
    /* 4B788 8007B2D8 24180001 */  addiu      $t8, $zero, 0x1
    /* 4B78C 8007B2DC 3C058005 */  lui        $a1, %hi(D_80052B48)
    /* 4B790 8007B2E0 46005421 */  cvt.d.s    $f16, $f10
    /* 4B794 8007B2E4 24A52B48 */  addiu      $a1, $a1, %lo(D_80052B48)
    /* 4B798 8007B2E8 46248483 */  div.d      $f18, $f16, $f4
    /* 4B79C 8007B2EC 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* 4B7A0 8007B2F0 46289182 */  mul.d      $f6, $f18, $f8
    /* 4B7A4 8007B2F4 444FF800 */  cfc1       $t7, $31
    /* 4B7A8 8007B2F8 44D8F800 */  ctc1       $t8, $31
    /* 4B7AC 8007B2FC 00000000 */  nop
    /* 4B7B0 8007B300 462032A4 */  cvt.w.d    $f10, $f6
    /* 4B7B4 8007B304 4458F800 */  cfc1       $t8, $31
    /* 4B7B8 8007B308 00000000 */  nop
    /* 4B7BC 8007B30C 33180078 */  andi       $t8, $t8, 0x78
    /* 4B7C0 8007B310 53000014 */  beql       $t8, $zero, .L8007B364_4B814
    /* 4B7C4 8007B314 44185000 */   mfc1      $t8, $f10
    /* 4B7C8 8007B318 44815800 */  mtc1       $at, $f11
    /* 4B7CC 8007B31C 44805000 */  mtc1       $zero, $f10
    /* 4B7D0 8007B320 24180001 */  addiu      $t8, $zero, 0x1
    /* 4B7D4 8007B324 462A3281 */  sub.d      $f10, $f6, $f10
    /* 4B7D8 8007B328 44D8F800 */  ctc1       $t8, $31
    /* 4B7DC 8007B32C 00000000 */  nop
    /* 4B7E0 8007B330 462052A4 */  cvt.w.d    $f10, $f10
    /* 4B7E4 8007B334 4458F800 */  cfc1       $t8, $31
    /* 4B7E8 8007B338 00000000 */  nop
    /* 4B7EC 8007B33C 33180078 */  andi       $t8, $t8, 0x78
    /* 4B7F0 8007B340 17000005 */  bnez       $t8, .L8007B358_4B808
    /* 4B7F4 8007B344 00000000 */   nop
    /* 4B7F8 8007B348 44185000 */  mfc1       $t8, $f10
    /* 4B7FC 8007B34C 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* 4B800 8007B350 10000007 */  b          .L8007B370_4B820
    /* 4B804 8007B354 0301C025 */   or        $t8, $t8, $at
  .L8007B358_4B808:
    /* 4B808 8007B358 10000005 */  b          .L8007B370_4B820
    /* 4B80C 8007B35C 2418FFFF */   addiu     $t8, $zero, -0x1
    /* 4B810 8007B360 44185000 */  mfc1       $t8, $f10
  .L8007B364_4B814:
    /* 4B814 8007B364 00000000 */  nop
    /* 4B818 8007B368 0700FFFB */  bltz       $t8, .L8007B358_4B808
    /* 4B81C 8007B36C 00000000 */   nop
  .L8007B370_4B820:
    /* 4B820 8007B370 44CFF800 */  ctc1       $t7, $31
    /* 4B824 8007B374 10000002 */  b          .L8007B380_4B830
    /* 4B828 8007B378 A4B80000 */   sh        $t8, 0x0($a1)
  .L8007B37C_4B82C:
    /* 4B82C 8007B37C A4A00000 */  sh         $zero, 0x0($a1)
  .L8007B380_4B830:
    /* 4B830 8007B380 02402025 */  or         $a0, $s2, $zero
    /* 4B834 8007B384 00003025 */  or         $a2, $zero, $zero
    /* 4B838 8007B388 0C000E74 */  jal        func_800039D0_45D0
    /* 4B83C 8007B38C 8E270000 */   lw        $a3, 0x0($s1)
    /* 4B840 8007B390 8E020000 */  lw         $v0, 0x0($s0)
    /* 4B844 8007B394 3C190100 */  lui        $t9, (0x1000040 >> 16)
    /* 4B848 8007B398 37390040 */  ori        $t9, $t9, (0x1000040 & 0xFFFF)
    /* 4B84C 8007B39C 244E0008 */  addiu      $t6, $v0, 0x8
    /* 4B850 8007B3A0 AE0E0000 */  sw         $t6, 0x0($s0)
    /* 4B854 8007B3A4 AC590000 */  sw         $t9, 0x0($v0)
    /* 4B858 8007B3A8 8E2F0000 */  lw         $t7, 0x0($s1)
    /* 4B85C 8007B3AC 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 4B860 8007B3B0 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 4B864 8007B3B4 01E1C024 */  and        $t8, $t7, $at
    /* 4B868 8007B3B8 AC580004 */  sw         $t8, 0x4($v0)
    /* 4B86C 8007B3BC 8E2E0000 */  lw         $t6, 0x0($s1)
    /* 4B870 8007B3C0 87AF00EE */  lh         $t7, 0xEE($sp)
    /* 4B874 8007B3C4 87B800EC */  lh         $t8, 0xEC($sp)
    /* 4B878 8007B3C8 25D90040 */  addiu      $t9, $t6, 0x40
    /* 4B87C 8007B3CC 8FAE00E0 */  lw         $t6, 0xE0($sp)
    /* 4B880 8007B3D0 24010001 */  addiu      $at, $zero, 0x1
    /* 4B884 8007B3D4 AE390000 */  sw         $t9, 0x0($s1)
    /* 4B888 8007B3D8 A6400004 */  sh         $zero, 0x4($s2)
    /* 4B88C 8007B3DC A64F0000 */  sh         $t7, 0x0($s2)
    /* 4B890 8007B3E0 15C10056 */  bne        $t6, $at, .L8007B53C_4B9EC
    /* 4B894 8007B3E4 A6580002 */   sh        $t8, 0x2($s2)
    /* 4B898 8007B3E8 3C048005 */  lui        $a0, %hi(D_80052A8C)
    /* 4B89C 8007B3EC 8C842A8C */  lw         $a0, %lo(D_80052A8C)($a0)
    /* 4B8A0 8007B3F0 0004C940 */  sll        $t9, $a0, 5
    /* 4B8A4 8007B3F4 0324C823 */  subu       $t9, $t9, $a0
    /* 4B8A8 8007B3F8 0019C880 */  sll        $t9, $t9, 2
    /* 4B8AC 8007B3FC 0324C821 */  addu       $t9, $t9, $a0
    /* 4B8B0 8007B400 0019C900 */  sll        $t9, $t9, 4
    /* 4B8B4 8007B404 0C007660 */  jal        sins
    /* 4B8B8 8007B408 3324FFFF */   andi      $a0, $t9, 0xFFFF
    /* 4B8BC 8007B40C 44828000 */  mtc1       $v0, $f16
    /* 4B8C0 8007B410 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 4B8C4 8007B414 44814800 */  mtc1       $at, $f9
    /* 4B8C8 8007B418 46808120 */  cvt.s.w    $f4, $f16
    /* 4B8CC 8007B41C 44804000 */  mtc1       $zero, $f8
    /* 4B8D0 8007B420 3C014034 */  lui        $at, (0x40340000 >> 16)
    /* 4B8D4 8007B424 44815800 */  mtc1       $at, $f11
    /* 4B8D8 8007B428 44805000 */  mtc1       $zero, $f10
    /* 4B8DC 8007B42C 3C014069 */  lui        $at, (0x40690000 >> 16)
    /* 4B8E0 8007B430 460024A1 */  cvt.d.s    $f18, $f4
    /* 4B8E4 8007B434 44802000 */  mtc1       $zero, $f4
    /* 4B8E8 8007B438 46289183 */  div.d      $f6, $f18, $f8
    /* 4B8EC 8007B43C 44812800 */  mtc1       $at, $f5
    /* 4B8F0 8007B440 3C048005 */  lui        $a0, %hi(D_80052A8C)
    /* 4B8F4 8007B444 8C842A8C */  lw         $a0, %lo(D_80052A8C)($a0)
    /* 4B8F8 8007B448 3C018005 */  lui        $at, %hi(D_80052B50)
    /* 4B8FC 8007B44C 0004C940 */  sll        $t9, $a0, 5
    /* 4B900 8007B450 0324C823 */  subu       $t9, $t9, $a0
    /* 4B904 8007B454 0019C880 */  sll        $t9, $t9, 2
    /* 4B908 8007B458 0324C821 */  addu       $t9, $t9, $a0
    /* 4B90C 8007B45C 0019C900 */  sll        $t9, $t9, 4
    /* 4B910 8007B460 3324FFFF */  andi       $a0, $t9, 0xFFFF
    /* 4B914 8007B464 462A3402 */  mul.d      $f16, $f6, $f10
    /* 4B918 8007B468 46302481 */  sub.d      $f18, $f4, $f16
    /* 4B91C 8007B46C 4620920D */  trunc.w.d  $f8, $f18
    /* 4B920 8007B470 440E4000 */  mfc1       $t6, $f8
    /* 4B924 8007B474 0C007660 */  jal        sins
    /* 4B928 8007B478 A42E2B50 */   sh        $t6, %lo(D_80052B50)($at)
    /* 4B92C 8007B47C 44823000 */  mtc1       $v0, $f6
    /* 4B930 8007B480 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 4B934 8007B484 44818800 */  mtc1       $at, $f17
    /* 4B938 8007B488 468032A0 */  cvt.s.w    $f10, $f6
    /* 4B93C 8007B48C 44808000 */  mtc1       $zero, $f16
    /* 4B940 8007B490 3C014034 */  lui        $at, (0x40340000 >> 16)
    /* 4B944 8007B494 44814800 */  mtc1       $at, $f9
    /* 4B948 8007B498 44804000 */  mtc1       $zero, $f8
    /* 4B94C 8007B49C 3C014069 */  lui        $at, (0x40690000 >> 16)
    /* 4B950 8007B4A0 46005121 */  cvt.d.s    $f4, $f10
    /* 4B954 8007B4A4 44805000 */  mtc1       $zero, $f10
    /* 4B958 8007B4A8 46302483 */  div.d      $f18, $f4, $f16
    /* 4B95C 8007B4AC 44815800 */  mtc1       $at, $f11
    /* 4B960 8007B4B0 3C048005 */  lui        $a0, %hi(D_80052A8C)
    /* 4B964 8007B4B4 8C842A8C */  lw         $a0, %lo(D_80052A8C)($a0)
    /* 4B968 8007B4B8 3C018005 */  lui        $at, %hi(D_80052B52)
    /* 4B96C 8007B4BC 0004C940 */  sll        $t9, $a0, 5
    /* 4B970 8007B4C0 0324C823 */  subu       $t9, $t9, $a0
    /* 4B974 8007B4C4 0019C880 */  sll        $t9, $t9, 2
    /* 4B978 8007B4C8 0324C821 */  addu       $t9, $t9, $a0
    /* 4B97C 8007B4CC 0019C900 */  sll        $t9, $t9, 4
    /* 4B980 8007B4D0 3324FFFF */  andi       $a0, $t9, 0xFFFF
    /* 4B984 8007B4D4 46289182 */  mul.d      $f6, $f18, $f8
    /* 4B988 8007B4D8 462A3100 */  add.d      $f4, $f6, $f10
    /* 4B98C 8007B4DC 4620240D */  trunc.w.d  $f16, $f4
    /* 4B990 8007B4E0 440E8000 */  mfc1       $t6, $f16
    /* 4B994 8007B4E4 0C007660 */  jal        sins
    /* 4B998 8007B4E8 A42E2B52 */   sh        $t6, %lo(D_80052B52)($at)
    /* 4B99C 8007B4EC 44829000 */  mtc1       $v0, $f18
    /* 4B9A0 8007B4F0 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 4B9A4 8007B4F4 44815800 */  mtc1       $at, $f11
    /* 4B9A8 8007B4F8 46809220 */  cvt.s.w    $f8, $f18
    /* 4B9AC 8007B4FC 44805000 */  mtc1       $zero, $f10
    /* 4B9B0 8007B500 3C014034 */  lui        $at, (0x40340000 >> 16)
    /* 4B9B4 8007B504 44818800 */  mtc1       $at, $f17
    /* 4B9B8 8007B508 44808000 */  mtc1       $zero, $f16
    /* 4B9BC 8007B50C 3C014069 */  lui        $at, (0x40690000 >> 16)
    /* 4B9C0 8007B510 460041A1 */  cvt.d.s    $f6, $f8
    /* 4B9C4 8007B514 44804000 */  mtc1       $zero, $f8
    /* 4B9C8 8007B518 462A3103 */  div.d      $f4, $f6, $f10
    /* 4B9CC 8007B51C 44814800 */  mtc1       $at, $f9
    /* 4B9D0 8007B520 3C018005 */  lui        $at, %hi(D_80052B54)
    /* 4B9D4 8007B524 46302482 */  mul.d      $f18, $f4, $f16
    /* 4B9D8 8007B528 46324181 */  sub.d      $f6, $f8, $f18
    /* 4B9DC 8007B52C 4620328D */  trunc.w.d  $f10, $f6
    /* 4B9E0 8007B530 440E5000 */  mfc1       $t6, $f10
    /* 4B9E4 8007B534 10000008 */  b          .L8007B558_4BA08
    /* 4B9E8 8007B538 A42E2B54 */   sh        $t6, %lo(D_80052B54)($at)
  .L8007B53C_4B9EC:
    /* 4B9EC 8007B53C 87A300EA */  lh         $v1, 0xEA($sp)
    /* 4B9F0 8007B540 3C028005 */  lui        $v0, %hi(D_80052B50)
    /* 4B9F4 8007B544 87B900E8 */  lh         $t9, 0xE8($sp)
    /* 4B9F8 8007B548 24422B50 */  addiu      $v0, $v0, %lo(D_80052B50)
    /* 4B9FC 8007B54C A4430000 */  sh         $v1, 0x0($v0)
    /* 4BA00 8007B550 A4430004 */  sh         $v1, 0x4($v0)
    /* 4BA04 8007B554 A4590002 */  sh         $t9, 0x2($v0)
  .L8007B558_4BA08:
    /* 4BA08 8007B558 3C068005 */  lui        $a2, %hi(D_80052B50)
    /* 4BA0C 8007B55C 24C62B50 */  addiu      $a2, $a2, %lo(D_80052B50)
    /* 4BA10 8007B560 02402025 */  or         $a0, $s2, $zero
    /* 4BA14 8007B564 00002825 */  or         $a1, $zero, $zero
    /* 4BA18 8007B568 0C000E74 */  jal        func_800039D0_45D0
    /* 4BA1C 8007B56C 8E270000 */   lw        $a3, 0x0($s1)
    /* 4BA20 8007B570 8E020000 */  lw         $v0, 0x0($s0)
    /* 4BA24 8007B574 3C180102 */  lui        $t8, (0x1020040 >> 16)
    /* 4BA28 8007B578 37180040 */  ori        $t8, $t8, (0x1020040 & 0xFFFF)
    /* 4BA2C 8007B57C 244F0008 */  addiu      $t7, $v0, 0x8
    /* 4BA30 8007B580 AE0F0000 */  sw         $t7, 0x0($s0)
    /* 4BA34 8007B584 AC580000 */  sw         $t8, 0x0($v0)
    /* 4BA38 8007B588 8E2E0000 */  lw         $t6, 0x0($s1)
    /* 4BA3C 8007B58C 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 4BA40 8007B590 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 4BA44 8007B594 01C1C824 */  and        $t9, $t6, $at
    /* 4BA48 8007B598 AC590004 */  sw         $t9, 0x4($v0)
    /* 4BA4C 8007B59C 8E2F0000 */  lw         $t7, 0x0($s1)
    /* 4BA50 8007B5A0 8E020000 */  lw         $v0, 0x0($s0)
    /* 4BA54 8007B5A4 3C190600 */  lui        $t9, (0x6000000 >> 16)
    /* 4BA58 8007B5A8 25F80040 */  addiu      $t8, $t7, 0x40
    /* 4BA5C 8007B5AC 244E0008 */  addiu      $t6, $v0, 0x8
    /* 4BA60 8007B5B0 AE380000 */  sw         $t8, 0x0($s1)
    /* 4BA64 8007B5B4 AE0E0000 */  sw         $t6, 0x0($s0)
    /* 4BA68 8007B5B8 3C0F040B */  lui        $t7, %hi(D_40A8F70)
    /* 4BA6C 8007B5BC 25EF8F70 */  addiu      $t7, $t7, %lo(D_40A8F70)
    /* 4BA70 8007B5C0 AC4F0004 */  sw         $t7, 0x4($v0)
    /* 4BA74 8007B5C4 AC590000 */  sw         $t9, 0x0($v0)
    /* 4BA78 8007B5C8 8E020000 */  lw         $v0, 0x0($s0)
    /* 4BA7C 8007B5CC 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
    /* 4BA80 8007B5D0 3C0F8009 */  lui        $t7, %hi(D_800948E0)
    /* 4BA84 8007B5D4 24580008 */  addiu      $t8, $v0, 0x8
    /* 4BA88 8007B5D8 AE180000 */  sw         $t8, 0x0($s0)
    /* 4BA8C 8007B5DC AC400004 */  sw         $zero, 0x4($v0)
    /* 4BA90 8007B5E0 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 4BA94 8007B5E4 8FB900F8 */  lw         $t9, 0xF8($sp)
    /* 4BA98 8007B5E8 57200006 */  bnel       $t9, $zero, .L8007B604_4BAB4
    /* 4BA9C 8007B5EC 8FBF003C */   lw        $ra, 0x3C($sp)
    /* 4BAA0 8007B5F0 8DEF48E0 */  lw         $t7, %lo(D_800948E0)($t7)
    /* 4BAA4 8007B5F4 3C018009 */  lui        $at, %hi(D_800948E0)
    /* 4BAA8 8007B5F8 25F80001 */  addiu      $t8, $t7, 0x1
    /* 4BAAC 8007B5FC AC3848E0 */  sw         $t8, %lo(D_800948E0)($at)
    /* 4BAB0 8007B600 8FBF003C */  lw         $ra, 0x3C($sp)
  .L8007B604_4BAB4:
    /* 4BAB4 8007B604 8FB00030 */  lw         $s0, 0x30($sp)
    /* 4BAB8 8007B608 8FB10034 */  lw         $s1, 0x34($sp)
    /* 4BABC 8007B60C 8FB20038 */  lw         $s2, 0x38($sp)
    /* 4BAC0 8007B610 03E00008 */  jr         $ra
    /* 4BAC4 8007B614 27BD00F8 */   addiu     $sp, $sp, 0xF8
endlabel func_8007A774_4AC24
