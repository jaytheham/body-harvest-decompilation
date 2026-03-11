nonmatching func_802DAEDC_25A61C, 0x768

glabel func_802DAEDC_25A61C
    /* 25A61C 802DAEDC 27BDFF70 */  addiu      $sp, $sp, -0x90
    /* 25A620 802DAEE0 AFA40090 */  sw         $a0, 0x90($sp)
    /* 25A624 802DAEE4 93AE0093 */  lbu        $t6, 0x93($sp)
    /* 25A628 802DAEE8 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 25A62C 802DAEEC AFB00040 */  sw         $s0, 0x40($sp)
    /* 25A630 802DAEF0 000E7880 */  sll        $t7, $t6, 2
    /* 25A634 802DAEF4 01EE7821 */  addu       $t7, $t7, $t6
    /* 25A638 802DAEF8 000F7900 */  sll        $t7, $t7, 4
    /* 25A63C 802DAEFC 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 25A640 802DAF00 01F88021 */  addu       $s0, $t7, $t8
    /* 25A644 802DAF04 8619000C */  lh         $t9, 0xC($s0)
    /* 25A648 802DAF08 3C088015 */  lui        $t0, %hi(D_8014DD50)
    /* 25A64C 802DAF0C 920C001A */  lbu        $t4, 0x1A($s0)
    /* 25A650 802DAF10 2508DD50 */  addiu      $t0, $t0, %lo(D_8014DD50)
    /* 25A654 802DAF14 00195100 */  sll        $t2, $t9, 4
    /* 25A658 802DAF18 010A5821 */  addu       $t3, $t0, $t2
    /* 25A65C 802DAF1C 8163000C */  lb         $v1, 0xC($t3)
    /* 25A660 802DAF20 3C0E802E */  lui        $t6, %hi(D_802E0654)
    /* 25A664 802DAF24 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 25A668 802DAF28 25CE0654 */  addiu      $t6, $t6, %lo(D_802E0654)
    /* 25A66C 802DAF2C A7AC008C */  sh         $t4, 0x8C($sp)
    /* 25A670 802DAF30 99C10002 */  lwr        $at, 0x2($t6)
    /* 25A674 802DAF34 27AD0078 */  addiu      $t5, $sp, 0x78
    /* 25A678 802DAF38 3C048005 */  lui        $a0, %hi(D_80052A8C)
    /* 25A67C 802DAF3C B9A10002 */  swr        $at, 0x2($t5)
    /* 25A680 802DAF40 8E0A0020 */  lw         $t2, 0x20($s0)
    /* 25A684 802DAF44 3C01FFBF */  lui        $at, (0xFFBFFFFF >> 16)
    /* 25A688 802DAF48 3421FFFF */  ori        $at, $at, (0xFFBFFFFF & 0xFFFF)
    /* 25A68C 802DAF4C 01415824 */  and        $t3, $t2, $at
    /* 25A690 802DAF50 316C1000 */  andi       $t4, $t3, 0x1000
    /* 25A694 802DAF54 118000DE */  beqz       $t4, .L802DB2D0_25AA10
    /* 25A698 802DAF58 AE0B0020 */   sw        $t3, 0x20($s0)
    /* 25A69C 802DAF5C 3C188005 */  lui        $t8, %hi(D_80052A8C)
    /* 25A6A0 802DAF60 8F182A8C */  lw         $t8, %lo(D_80052A8C)($t8)
    /* 25A6A4 802DAF64 00037100 */  sll        $t6, $v1, 4
    /* 25A6A8 802DAF68 010E1021 */  addu       $v0, $t0, $t6
    /* 25A6AC 802DAF6C 330F0001 */  andi       $t7, $t8, 0x1
    /* 25A6B0 802DAF70 11E00004 */  beqz       $t7, .L802DAF84_25A6C4
    /* 25A6B4 802DAF74 02002025 */   or        $a0, $s0, $zero
    /* 25A6B8 802DAF78 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* 25A6BC 802DAF7C 01616825 */  or         $t5, $t3, $at
    /* 25A6C0 802DAF80 AE0D0020 */  sw         $t5, 0x20($s0)
  .L802DAF84_25A6C4:
    /* 25A6C4 802DAF84 27B90074 */  addiu      $t9, $sp, 0x74
    /* 25A6C8 802DAF88 27AA0070 */  addiu      $t2, $sp, 0x70
    /* 25A6CC 802DAF8C 27AB006C */  addiu      $t3, $sp, 0x6C
    /* 25A6D0 802DAF90 AFAB0018 */  sw         $t3, 0x18($sp)
    /* 25A6D4 802DAF94 AFAA0014 */  sw         $t2, 0x14($sp)
    /* 25A6D8 802DAF98 AFB90010 */  sw         $t9, 0x10($sp)
    /* 25A6DC 802DAF9C 84450000 */  lh         $a1, 0x0($v0)
    /* 25A6E0 802DAFA0 84460002 */  lh         $a2, 0x2($v0)
    /* 25A6E4 802DAFA4 84470004 */  lh         $a3, 0x4($v0)
    /* 25A6E8 802DAFA8 0C04A10A */  jal        func_80128428_1373D8
    /* 25A6EC 802DAFAC AFA20058 */   sw        $v0, 0x58($sp)
    /* 25A6F0 802DAFB0 0C000E38 */  jal        func_800038E0_44E0
    /* 25A6F4 802DAFB4 00000000 */   nop
    /* 25A6F8 802DAFB8 04410004 */  bgez       $v0, .L802DAFCC_25A70C
    /* 25A6FC 802DAFBC 304C0007 */   andi      $t4, $v0, 0x7
    /* 25A700 802DAFC0 11800002 */  beqz       $t4, .L802DAFCC_25A70C
    /* 25A704 802DAFC4 00000000 */   nop
    /* 25A708 802DAFC8 258CFFF8 */  addiu      $t4, $t4, -0x8
  .L802DAFCC_25A70C:
    /* 25A70C 802DAFCC 55800035 */  bnel       $t4, $zero, .L802DB0A4_25A7E4
    /* 25A710 802DAFD0 8602002C */   lh        $v0, 0x2C($s0)
    /* 25A714 802DAFD4 0C000E38 */  jal        func_800038E0_44E0
    /* 25A718 802DAFD8 00000000 */   nop
    /* 25A71C 802DAFDC 0C000E38 */  jal        func_800038E0_44E0
    /* 25A720 802DAFE0 A7A20066 */   sh        $v0, 0x66($sp)
    /* 25A724 802DAFE4 240907D0 */  addiu      $t1, $zero, 0x7D0
    /* 25A728 802DAFE8 97AD0066 */  lhu        $t5, 0x66($sp)
    /* 25A72C 802DAFEC 8FA30074 */  lw         $v1, 0x74($sp)
    /* 25A730 802DAFF0 8FA8006C */  lw         $t0, 0x6C($sp)
    /* 25A734 802DAFF4 01A9001A */  div        $zero, $t5, $t1
    /* 25A738 802DAFF8 00007010 */  mfhi       $t6
    /* 25A73C 802DAFFC 00032400 */  sll        $a0, $v1, 16
    /* 25A740 802DB000 0004C403 */  sra        $t8, $a0, 16
    /* 25A744 802DB004 0049001A */  div        $zero, $v0, $t1
    /* 25A748 802DB008 01C33821 */  addu       $a3, $t6, $v1
    /* 25A74C 802DB00C 00083400 */  sll        $a2, $t0, 16
    /* 25A750 802DB010 00067C03 */  sra        $t7, $a2, 16
    /* 25A754 802DB014 24E7FC18 */  addiu      $a3, $a3, -0x3E8
    /* 25A758 802DB018 00006010 */  mfhi       $t4
    /* 25A75C 802DB01C 03002025 */  or         $a0, $t8, $zero
    /* 25A760 802DB020 0007CC00 */  sll        $t9, $a3, 16
    /* 25A764 802DB024 01E03025 */  or         $a2, $t7, $zero
    /* 25A768 802DB028 0188C021 */  addu       $t8, $t4, $t0
    /* 25A76C 802DB02C 270FFC18 */  addiu      $t7, $t8, -0x3E8
    /* 25A770 802DB030 00195403 */  sra        $t2, $t9, 16
    /* 25A774 802DB034 240B0BB8 */  addiu      $t3, $zero, 0xBB8
    /* 25A778 802DB038 AFAB0010 */  sw         $t3, 0x10($sp)
    /* 25A77C 802DB03C 01403825 */  or         $a3, $t2, $zero
    /* 25A780 802DB040 AFAF0014 */  sw         $t7, 0x14($sp)
    /* 25A784 802DB044 87A50072 */  lh         $a1, 0x72($sp)
    /* 25A788 802DB048 15200002 */  bnez       $t1, .L802DB054_25A794
    /* 25A78C 802DB04C 00000000 */   nop
    /* 25A790 802DB050 0007000D */  break      7
  .L802DB054_25A794:
    /* 25A794 802DB054 2401FFFF */  addiu      $at, $zero, -0x1
    /* 25A798 802DB058 15210004 */  bne        $t1, $at, .L802DB06C_25A7AC
    /* 25A79C 802DB05C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 25A7A0 802DB060 15A10002 */  bne        $t5, $at, .L802DB06C_25A7AC
    /* 25A7A4 802DB064 00000000 */   nop
    /* 25A7A8 802DB068 0006000D */  break      6
  .L802DB06C_25A7AC:
    /* 25A7AC 802DB06C 240D0005 */  addiu      $t5, $zero, 0x5
    /* 25A7B0 802DB070 15200002 */  bnez       $t1, .L802DB07C_25A7BC
    /* 25A7B4 802DB074 00000000 */   nop
    /* 25A7B8 802DB078 0007000D */  break      7
  .L802DB07C_25A7BC:
    /* 25A7BC 802DB07C 2401FFFF */  addiu      $at, $zero, -0x1
    /* 25A7C0 802DB080 15210004 */  bne        $t1, $at, .L802DB094_25A7D4
    /* 25A7C4 802DB084 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 25A7C8 802DB088 14410002 */  bne        $v0, $at, .L802DB094_25A7D4
    /* 25A7CC 802DB08C 00000000 */   nop
    /* 25A7D0 802DB090 0006000D */  break      6
  .L802DB094_25A7D4:
    /* 25A7D4 802DB094 AFAD0018 */  sw         $t5, 0x18($sp)
    /* 25A7D8 802DB098 0C0345AF */  jal        func_800D16BC_E066C
    /* 25A7DC 802DB09C 00000000 */   nop
    /* 25A7E0 802DB0A0 8602002C */  lh         $v0, 0x2C($s0)
  .L802DB0A4_25A7E4:
    /* 25A7E4 802DB0A4 28410065 */  slti       $at, $v0, 0x65
    /* 25A7E8 802DB0A8 14200040 */  bnez       $at, .L802DB1AC_25A8EC
    /* 25A7EC 802DB0AC 00022023 */   negu      $a0, $v0
    /* 25A7F0 802DB0B0 00047140 */  sll        $t6, $a0, 5
    /* 25A7F4 802DB0B4 01C47023 */  subu       $t6, $t6, $a0
    /* 25A7F8 802DB0B8 000E7080 */  sll        $t6, $t6, 2
    /* 25A7FC 802DB0BC 01C47021 */  addu       $t6, $t6, $a0
    /* 25A800 802DB0C0 3C010001 */  lui        $at, (0x186A0 >> 16)
    /* 25A804 802DB0C4 342186A0 */  ori        $at, $at, (0x186A0 & 0xFFFF)
    /* 25A808 802DB0C8 000E7080 */  sll        $t6, $t6, 2
    /* 25A80C 802DB0CC 01C12021 */  addu       $a0, $t6, $at
    /* 25A810 802DB0D0 3099FFFF */  andi       $t9, $a0, 0xFFFF
    /* 25A814 802DB0D4 0C007660 */  jal        sins
    /* 25A818 802DB0D8 03202025 */   or        $a0, $t9, $zero
    /* 25A81C 802DB0DC 44822000 */  mtc1       $v0, $f4
    /* 25A820 802DB0E0 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 25A824 802DB0E4 44815800 */  mtc1       $at, $f11
    /* 25A828 802DB0E8 468021A0 */  cvt.s.w    $f6, $f4
    /* 25A82C 802DB0EC 44805000 */  mtc1       $zero, $f10
    /* 25A830 802DB0F0 3C01802E */  lui        $at, %hi(D_802E0DD8)
    /* 25A834 802DB0F4 D4320DD8 */  ldc1       $f18, %lo(D_802E0DD8)($at)
    /* 25A838 802DB0F8 3C01802E */  lui        $at, %hi(D_802E0DE0)
    /* 25A83C 802DB0FC 8FA30058 */  lw         $v1, 0x58($sp)
    /* 25A840 802DB100 46003221 */  cvt.d.s    $f8, $f6
    /* 25A844 802DB104 D4260DE0 */  ldc1       $f6, %lo(D_802E0DE0)($at)
    /* 25A848 802DB108 462A4403 */  div.d      $f16, $f8, $f10
    /* 25A84C 802DB10C 3C0C8005 */  lui        $t4, %hi(D_80052A8C)
    /* 25A850 802DB110 24070050 */  addiu      $a3, $zero, 0x50
    /* 25A854 802DB114 240F000A */  addiu      $t7, $zero, 0xA
    /* 25A858 802DB118 240D0008 */  addiu      $t5, $zero, 0x8
    /* 25A85C 802DB11C 240E0028 */  addiu      $t6, $zero, 0x28
    /* 25A860 802DB120 241900FF */  addiu      $t9, $zero, 0xFF
    /* 25A864 802DB124 240A00FF */  addiu      $t2, $zero, 0xFF
    /* 25A868 802DB128 46328102 */  mul.d      $f4, $f16, $f18
    /* 25A86C 802DB12C 46262200 */  add.d      $f8, $f4, $f6
    /* 25A870 802DB130 4620428D */  trunc.w.d  $f10, $f8
    /* 25A874 802DB134 440B5000 */  mfc1       $t3, $f10
    /* 25A878 802DB138 00000000 */  nop
    /* 25A87C 802DB13C A46B0002 */  sh         $t3, 0x2($v1)
    /* 25A880 802DB140 8D8C2A8C */  lw         $t4, %lo(D_80052A8C)($t4)
    /* 25A884 802DB144 87A6006E */  lh         $a2, 0x6E($sp)
    /* 25A888 802DB148 87A50072 */  lh         $a1, 0x72($sp)
    /* 25A88C 802DB14C 31980003 */  andi       $t8, $t4, 0x3
    /* 25A890 802DB150 1700000A */  bnez       $t8, .L802DB17C_25A8BC
    /* 25A894 802DB154 87A40076 */   lh        $a0, 0x76($sp)
    /* 25A898 802DB158 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 25A89C 802DB15C AFAD0014 */  sw         $t5, 0x14($sp)
    /* 25A8A0 802DB160 AFAE0018 */  sw         $t6, 0x18($sp)
    /* 25A8A4 802DB164 AFB9001C */  sw         $t9, 0x1C($sp)
    /* 25A8A8 802DB168 AFAA0020 */  sw         $t2, 0x20($sp)
    /* 25A8AC 802DB16C AFA00024 */  sw         $zero, 0x24($sp)
    /* 25A8B0 802DB170 0C037A82 */  jal        func_800DEA08_ED9B8
    /* 25A8B4 802DB174 AFA00028 */   sw        $zero, 0x28($sp)
    /* 25A8B8 802DB178 8FA30058 */  lw         $v1, 0x58($sp)
  .L802DB17C_25A8BC:
    /* 25A8BC 802DB17C 860C002C */  lh         $t4, 0x2C($s0)
    /* 25A8C0 802DB180 946B0006 */  lhu        $t3, 0x6($v1)
    /* 25A8C4 802DB184 3C010006 */  lui        $at, (0x61A80 >> 16)
    /* 25A8C8 802DB188 000CC140 */  sll        $t8, $t4, 5
    /* 25A8CC 802DB18C 030CC023 */  subu       $t8, $t8, $t4
    /* 25A8D0 802DB190 0018C080 */  sll        $t8, $t8, 2
    /* 25A8D4 802DB194 030CC021 */  addu       $t8, $t8, $t4
    /* 25A8D8 802DB198 0018C100 */  sll        $t8, $t8, 4
    /* 25A8DC 802DB19C 34211A80 */  ori        $at, $at, (0x61A80 & 0xFFFF)
    /* 25A8E0 802DB1A0 01787823 */  subu       $t7, $t3, $t8
    /* 25A8E4 802DB1A4 01E16821 */  addu       $t5, $t7, $at
    /* 25A8E8 802DB1A8 A46D0006 */  sh         $t5, 0x6($v1)
  .L802DB1AC_25A8EC:
    /* 25A8EC 802DB1AC 8FA30058 */  lw         $v1, 0x58($sp)
    /* 25A8F0 802DB1B0 93A40093 */  lbu        $a0, 0x93($sp)
    /* 25A8F4 802DB1B4 846E0002 */  lh         $t6, 0x2($v1)
    /* 25A8F8 802DB1B8 29C10029 */  slti       $at, $t6, 0x29
    /* 25A8FC 802DB1BC 50200040 */  beql       $at, $zero, .L802DB2C0_25AA00
    /* 25A900 802DB1C0 8602002C */   lh        $v0, 0x2C($s0)
    /* 25A904 802DB1C4 0C04DD1A */  jal        func_80137468_146418
    /* 25A908 802DB1C8 2405012D */   addiu     $a1, $zero, 0x12D
    /* 25A90C 802DB1CC 3C198005 */  lui        $t9, %hi(D_80052A8C)
    /* 25A910 802DB1D0 8F392A8C */  lw         $t9, %lo(D_80052A8C)($t9)
    /* 25A914 802DB1D4 87A40076 */  lh         $a0, 0x76($sp)
    /* 25A918 802DB1D8 332A0003 */  andi       $t2, $t9, 0x3
    /* 25A91C 802DB1DC 55400038 */  bnel       $t2, $zero, .L802DB2C0_25AA00
    /* 25A920 802DB1E0 8602002C */   lh        $v0, 0x2C($s0)
    /* 25A924 802DB1E4 0C02E134 */  jal        func_800B84D0_C7480
    /* 25A928 802DB1E8 87A5006E */   lh        $a1, 0x6E($sp)
    /* 25A92C 802DB1EC 00022A03 */  sra        $a1, $v0, 8
    /* 25A930 802DB1F0 00056400 */  sll        $t4, $a1, 16
    /* 25A934 802DB1F4 000C2C03 */  sra        $a1, $t4, 16
    /* 25A938 802DB1F8 240C002F */  addiu      $t4, $zero, 0x2F
    /* 25A93C 802DB1FC 2418000A */  addiu      $t8, $zero, 0xA
    /* 25A940 802DB200 240F0006 */  addiu      $t7, $zero, 0x6
    /* 25A944 802DB204 240D0028 */  addiu      $t5, $zero, 0x28
    /* 25A948 802DB208 240E00FF */  addiu      $t6, $zero, 0xFF
    /* 25A94C 802DB20C 241900A6 */  addiu      $t9, $zero, 0xA6
    /* 25A950 802DB210 240A0085 */  addiu      $t2, $zero, 0x85
    /* 25A954 802DB214 AFAA0024 */  sw         $t2, 0x24($sp)
    /* 25A958 802DB218 AFB90020 */  sw         $t9, 0x20($sp)
    /* 25A95C 802DB21C AFAE001C */  sw         $t6, 0x1C($sp)
    /* 25A960 802DB220 AFAD0018 */  sw         $t5, 0x18($sp)
    /* 25A964 802DB224 AFAF0014 */  sw         $t7, 0x14($sp)
    /* 25A968 802DB228 AFB80010 */  sw         $t8, 0x10($sp)
    /* 25A96C 802DB22C AFAC0028 */  sw         $t4, 0x28($sp)
    /* 25A970 802DB230 87A40076 */  lh         $a0, 0x76($sp)
    /* 25A974 802DB234 87A6006E */  lh         $a2, 0x6E($sp)
    /* 25A978 802DB238 0C037A82 */  jal        func_800DEA08_ED9B8
    /* 25A97C 802DB23C 24070078 */   addiu     $a3, $zero, 0x78
    /* 25A980 802DB240 87A40076 */  lh         $a0, 0x76($sp)
    /* 25A984 802DB244 0C02E134 */  jal        func_800B84D0_C7480
    /* 25A988 802DB248 87A5006E */   lh        $a1, 0x6E($sp)
    /* 25A98C 802DB24C 00022A03 */  sra        $a1, $v0, 8
    /* 25A990 802DB250 00055C00 */  sll        $t3, $a1, 16
    /* 25A994 802DB254 000B2C03 */  sra        $a1, $t3, 16
    /* 25A998 802DB258 240B0053 */  addiu      $t3, $zero, 0x53
    /* 25A99C 802DB25C 240F007F */  addiu      $t7, $zero, 0x7F
    /* 25A9A0 802DB260 240D0064 */  addiu      $t5, $zero, 0x64
    /* 25A9A4 802DB264 240E00FF */  addiu      $t6, $zero, 0xFF
    /* 25A9A8 802DB268 2419003C */  addiu      $t9, $zero, 0x3C
    /* 25A9AC 802DB26C 240A000A */  addiu      $t2, $zero, 0xA
    /* 25A9B0 802DB270 240C006A */  addiu      $t4, $zero, 0x6A
    /* 25A9B4 802DB274 AFAC0028 */  sw         $t4, 0x28($sp)
    /* 25A9B8 802DB278 AFAA0024 */  sw         $t2, 0x24($sp)
    /* 25A9BC 802DB27C AFB90020 */  sw         $t9, 0x20($sp)
    /* 25A9C0 802DB280 AFAE001C */  sw         $t6, 0x1C($sp)
    /* 25A9C4 802DB284 AFAD0018 */  sw         $t5, 0x18($sp)
    /* 25A9C8 802DB288 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 25A9CC 802DB28C AFAB002C */  sw         $t3, 0x2C($sp)
    /* 25A9D0 802DB290 87A40076 */  lh         $a0, 0x76($sp)
    /* 25A9D4 802DB294 87A6006E */  lh         $a2, 0x6E($sp)
    /* 25A9D8 802DB298 00003825 */  or         $a3, $zero, $zero
    /* 25A9DC 802DB29C AFA00014 */  sw         $zero, 0x14($sp)
    /* 25A9E0 802DB2A0 0C031507 */  jal        func_800C541C_D43CC
    /* 25A9E4 802DB2A4 AFA00030 */   sw        $zero, 0x30($sp)
    /* 25A9E8 802DB2A8 8FA40074 */  lw         $a0, 0x74($sp)
    /* 25A9EC 802DB2AC 8FA50070 */  lw         $a1, 0x70($sp)
    /* 25A9F0 802DB2B0 8FA6006C */  lw         $a2, 0x6C($sp)
    /* 25A9F4 802DB2B4 0C04D751 */  jal        func_80135D44_144CF4
    /* 25A9F8 802DB2B8 3C074040 */   lui       $a3, (0x40400000 >> 16)
    /* 25A9FC 802DB2BC 8602002C */  lh         $v0, 0x2C($s0)
  .L802DB2C0_25AA00:
    /* 25AA00 802DB2C0 104000DB */  beqz       $v0, .L802DB630_25AD70
    /* 25AA04 802DB2C4 2458FFFF */   addiu     $t8, $v0, -0x1
    /* 25AA08 802DB2C8 100000D9 */  b          .L802DB630_25AD70
    /* 25AA0C 802DB2CC A618002C */   sh        $t8, 0x2C($s0)
  .L802DB2D0_25AA10:
    /* 25AA10 802DB2D0 8C842A8C */  lw         $a0, %lo(D_80052A8C)($a0)
    /* 25AA14 802DB2D4 A7A3008E */  sh         $v1, 0x8E($sp)
    /* 25AA18 802DB2D8 00047940 */  sll        $t7, $a0, 5
    /* 25AA1C 802DB2DC 01E47823 */  subu       $t7, $t7, $a0
    /* 25AA20 802DB2E0 000F7880 */  sll        $t7, $t7, 2
    /* 25AA24 802DB2E4 01E47821 */  addu       $t7, $t7, $a0
    /* 25AA28 802DB2E8 000F78C0 */  sll        $t7, $t7, 3
    /* 25AA2C 802DB2EC 0C007660 */  jal        sins
    /* 25AA30 802DB2F0 31E4FFFF */   andi      $a0, $t7, 0xFFFF
    /* 25AA34 802DB2F4 44828000 */  mtc1       $v0, $f16
    /* 25AA38 802DB2F8 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 25AA3C 802DB2FC 44813800 */  mtc1       $at, $f7
    /* 25AA40 802DB300 468084A0 */  cvt.s.w    $f18, $f16
    /* 25AA44 802DB304 44803000 */  mtc1       $zero, $f6
    /* 25AA48 802DB308 3C014024 */  lui        $at, (0x40240000 >> 16)
    /* 25AA4C 802DB30C 44815800 */  mtc1       $at, $f11
    /* 25AA50 802DB310 44805000 */  mtc1       $zero, $f10
    /* 25AA54 802DB314 3C01802E */  lui        $at, %hi(D_802E0DE8)
    /* 25AA58 802DB318 46009121 */  cvt.d.s    $f4, $f18
    /* 25AA5C 802DB31C D4320DE8 */  ldc1       $f18, %lo(D_802E0DE8)($at)
    /* 25AA60 802DB320 46262203 */  div.d      $f8, $f4, $f6
    /* 25AA64 802DB324 87A3008E */  lh         $v1, 0x8E($sp)
    /* 25AA68 802DB328 3C088015 */  lui        $t0, %hi(D_8014DD50)
    /* 25AA6C 802DB32C 2508DD50 */  addiu      $t0, $t0, %lo(D_8014DD50)
    /* 25AA70 802DB330 00037100 */  sll        $t6, $v1, 4
    /* 25AA74 802DB334 010E2821 */  addu       $a1, $t0, $t6
    /* 25AA78 802DB338 3C048005 */  lui        $a0, %hi(D_80052A8C)
    /* 25AA7C 802DB33C AFA50058 */  sw         $a1, 0x58($sp)
    /* 25AA80 802DB340 462A4402 */  mul.d      $f16, $f8, $f10
    /* 25AA84 802DB344 46328100 */  add.d      $f4, $f16, $f18
    /* 25AA88 802DB348 4620218D */  trunc.w.d  $f6, $f4
    /* 25AA8C 802DB34C 440A3000 */  mfc1       $t2, $f6
    /* 25AA90 802DB350 00000000 */  nop
    /* 25AA94 802DB354 A4AA0002 */  sh         $t2, 0x2($a1)
    /* 25AA98 802DB358 8C842A8C */  lw         $a0, %lo(D_80052A8C)($a0)
    /* 25AA9C 802DB35C 00046080 */  sll        $t4, $a0, 2
    /* 25AAA0 802DB360 01846023 */  subu       $t4, $t4, $a0
    /* 25AAA4 802DB364 000C60C0 */  sll        $t4, $t4, 3
    /* 25AAA8 802DB368 01846021 */  addu       $t4, $t4, $a0
    /* 25AAAC 802DB36C 000C6180 */  sll        $t4, $t4, 6
    /* 25AAB0 802DB370 0C007660 */  jal        sins
    /* 25AAB4 802DB374 3184FFFF */   andi      $a0, $t4, 0xFFFF
    /* 25AAB8 802DB378 44824000 */  mtc1       $v0, $f8
    /* 25AABC 802DB37C 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 25AAC0 802DB380 44819800 */  mtc1       $at, $f19
    /* 25AAC4 802DB384 468042A0 */  cvt.s.w    $f10, $f8
    /* 25AAC8 802DB388 44809000 */  mtc1       $zero, $f18
    /* 25AACC 802DB38C 3C014099 */  lui        $at, (0x40990000 >> 16)
    /* 25AAD0 802DB390 44813800 */  mtc1       $at, $f7
    /* 25AAD4 802DB394 44803000 */  mtc1       $zero, $f6
    /* 25AAD8 802DB398 8FAD0058 */  lw         $t5, 0x58($sp)
    /* 25AADC 802DB39C 46005421 */  cvt.d.s    $f16, $f10
    /* 25AAE0 802DB3A0 3C048005 */  lui        $a0, %hi(D_80052A8C)
    /* 25AAE4 802DB3A4 46328103 */  div.d      $f4, $f16, $f18
    /* 25AAE8 802DB3A8 46262202 */  mul.d      $f8, $f4, $f6
    /* 25AAEC 802DB3AC 4620428D */  trunc.w.d  $f10, $f8
    /* 25AAF0 802DB3B0 440F5000 */  mfc1       $t7, $f10
    /* 25AAF4 802DB3B4 00000000 */  nop
    /* 25AAF8 802DB3B8 A5AF0008 */  sh         $t7, 0x8($t5)
    /* 25AAFC 802DB3BC 8C842A8C */  lw         $a0, %lo(D_80052A8C)($a0)
    /* 25AB00 802DB3C0 00047080 */  sll        $t6, $a0, 2
    /* 25AB04 802DB3C4 01C47023 */  subu       $t6, $t6, $a0
    /* 25AB08 802DB3C8 000E7080 */  sll        $t6, $t6, 2
    /* 25AB0C 802DB3CC 01C47023 */  subu       $t6, $t6, $a0
    /* 25AB10 802DB3D0 000E7100 */  sll        $t6, $t6, 4
    /* 25AB14 802DB3D4 01C47023 */  subu       $t6, $t6, $a0
    /* 25AB18 802DB3D8 000E70C0 */  sll        $t6, $t6, 3
    /* 25AB1C 802DB3DC 0C007654 */  jal        coss
    /* 25AB20 802DB3E0 31C4FFFF */   andi      $a0, $t6, 0xFFFF
    /* 25AB24 802DB3E4 44828000 */  mtc1       $v0, $f16
    /* 25AB28 802DB3E8 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 25AB2C 802DB3EC 44813800 */  mtc1       $at, $f7
    /* 25AB30 802DB3F0 468084A0 */  cvt.s.w    $f18, $f16
    /* 25AB34 802DB3F4 44803000 */  mtc1       $zero, $f6
    /* 25AB38 802DB3F8 3C01802E */  lui        $at, %hi(D_802E0DF0)
    /* 25AB3C 802DB3FC D42A0DF0 */  ldc1       $f10, %lo(D_802E0DF0)($at)
    /* 25AB40 802DB400 8FAB0058 */  lw         $t3, 0x58($sp)
    /* 25AB44 802DB404 24190001 */  addiu      $t9, $zero, 0x1
    /* 25AB48 802DB408 46009121 */  cvt.d.s    $f4, $f18
    /* 25AB4C 802DB40C 46262203 */  div.d      $f8, $f4, $f6
    /* 25AB50 802DB410 462A4402 */  mul.d      $f16, $f8, $f10
    /* 25AB54 802DB414 4620848D */  trunc.w.d  $f18, $f16
    /* 25AB58 802DB418 440C9000 */  mfc1       $t4, $f18
    /* 25AB5C 802DB41C 00000000 */  nop
    /* 25AB60 802DB420 A56C000A */  sh         $t4, 0xA($t3)
    /* 25AB64 802DB424 86030002 */  lh         $v1, 0x2($s0)
    /* 25AB68 802DB428 86040000 */  lh         $a0, 0x0($s0)
    /* 25AB6C 802DB42C 86060004 */  lh         $a2, 0x4($s0)
    /* 25AB70 802DB430 2465003C */  addiu      $a1, $v1, 0x3C
    /* 25AB74 802DB434 00043C00 */  sll        $a3, $a0, 16
    /* 25AB78 802DB438 00076C03 */  sra        $t5, $a3, 16
    /* 25AB7C 802DB43C 0005C400 */  sll        $t8, $a1, 16
    /* 25AB80 802DB440 246EFFEC */  addiu      $t6, $v1, -0x14
    /* 25AB84 802DB444 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 25AB88 802DB448 00182C03 */  sra        $a1, $t8, 16
    /* 25AB8C 802DB44C 01A03825 */  or         $a3, $t5, $zero
    /* 25AB90 802DB450 AFB90018 */  sw         $t9, 0x18($sp)
    /* 25AB94 802DB454 0C0345AF */  jal        func_800D16BC_E066C
    /* 25AB98 802DB458 AFA60014 */   sw        $a2, 0x14($sp)
    /* 25AB9C 802DB45C 87AB008C */  lh         $t3, 0x8C($sp)
    /* 25ABA0 802DB460 860A001C */  lh         $t2, 0x1C($s0)
    /* 25ABA4 802DB464 3C0F8025 */  lui        $t7, %hi(D_802566BA)
    /* 25ABA8 802DB468 000BC080 */  sll        $t8, $t3, 2
    /* 25ABAC 802DB46C 030BC023 */  subu       $t8, $t8, $t3
    /* 25ABB0 802DB470 0018C080 */  sll        $t8, $t8, 2
    /* 25ABB4 802DB474 030BC021 */  addu       $t8, $t8, $t3
    /* 25ABB8 802DB478 0018C0C0 */  sll        $t8, $t8, 3
    /* 25ABBC 802DB47C 01F87821 */  addu       $t7, $t7, $t8
    /* 25ABC0 802DB480 95EF66BA */  lhu        $t7, %lo(D_802566BA)($t7)
    /* 25ABC4 802DB484 000A6100 */  sll        $t4, $t2, 4
    /* 25ABC8 802DB488 018A6023 */  subu       $t4, $t4, $t2
    /* 25ABCC 802DB48C 018F001A */  div        $zero, $t4, $t7
    /* 25ABD0 802DB490 00006812 */  mflo       $t5
    /* 25ABD4 802DB494 3C198005 */  lui        $t9, %hi(D_80052A8C)
    /* 25ABD8 802DB498 8F392A8C */  lw         $t9, %lo(D_80052A8C)($t9)
    /* 25ABDC 802DB49C 25AE0008 */  addiu      $t6, $t5, 0x8
    /* 25ABE0 802DB4A0 15E00002 */  bnez       $t7, .L802DB4AC_25ABEC
    /* 25ABE4 802DB4A4 00000000 */   nop
    /* 25ABE8 802DB4A8 0007000D */  break      7
  .L802DB4AC_25ABEC:
    /* 25ABEC 802DB4AC 2401FFFF */  addiu      $at, $zero, -0x1
    /* 25ABF0 802DB4B0 15E10004 */  bne        $t7, $at, .L802DB4C4_25AC04
    /* 25ABF4 802DB4B4 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 25ABF8 802DB4B8 15810002 */  bne        $t4, $at, .L802DB4C4_25AC04
    /* 25ABFC 802DB4BC 00000000 */   nop
    /* 25AC00 802DB4C0 0006000D */  break      6
  .L802DB4C4_25AC04:
    /* 25AC04 802DB4C4 032E001B */  divu       $zero, $t9, $t6
    /* 25AC08 802DB4C8 00005010 */  mfhi       $t2
    /* 25AC0C 802DB4CC 27A4007C */  addiu      $a0, $sp, 0x7C
    /* 25AC10 802DB4D0 15C00002 */  bnez       $t6, .L802DB4DC_25AC1C
    /* 25AC14 802DB4D4 00000000 */   nop
    /* 25AC18 802DB4D8 0007000D */  break      7
  .L802DB4DC_25AC1C:
    /* 25AC1C 802DB4DC 00002825 */  or         $a1, $zero, $zero
    /* 25AC20 802DB4E0 15400015 */  bnez       $t2, .L802DB538_25AC78
    /* 25AC24 802DB4E4 241903E8 */   addiu     $t9, $zero, 0x3E8
    /* 25AC28 802DB4E8 860B0000 */  lh         $t3, 0x0($s0)
    /* 25AC2C 802DB4EC 86180004 */  lh         $t8, 0x4($s0)
    /* 25AC30 802DB4F0 27AC0078 */  addiu      $t4, $sp, 0x78
    /* 25AC34 802DB4F4 240F0096 */  addiu      $t7, $zero, 0x96
    /* 25AC38 802DB4F8 240D000A */  addiu      $t5, $zero, 0xA
    /* 25AC3C 802DB4FC AFAD0018 */  sw         $t5, 0x18($sp)
    /* 25AC40 802DB500 AFAF0014 */  sw         $t7, 0x14($sp)
    /* 25AC44 802DB504 AFAC0010 */  sw         $t4, 0x10($sp)
    /* 25AC48 802DB508 240600C8 */  addiu      $a2, $zero, 0xC8
    /* 25AC4C 802DB50C 240700FF */  addiu      $a3, $zero, 0xFF
    /* 25AC50 802DB510 AFA0001C */  sw         $zero, 0x1C($sp)
    /* 25AC54 802DB514 A7AB007C */  sh         $t3, 0x7C($sp)
    /* 25AC58 802DB518 0C02E66A */  jal        func_800B99A8_C8958
    /* 25AC5C 802DB51C A7B8007E */   sh        $t8, 0x7E($sp)
    /* 25AC60 802DB520 A600001E */  sh         $zero, 0x1E($s0)
    /* 25AC64 802DB524 93A40093 */  lbu        $a0, 0x93($sp)
    /* 25AC68 802DB528 0C04DD1A */  jal        func_80137468_146418
    /* 25AC6C 802DB52C 2405013F */   addiu     $a1, $zero, 0x13F
    /* 25AC70 802DB530 10000002 */  b          .L802DB53C_25AC7C
    /* 25AC74 802DB534 00000000 */   nop
  .L802DB538_25AC78:
    /* 25AC78 802DB538 A619001E */  sh         $t9, 0x1E($s0)
  .L802DB53C_25AC7C:
    /* 25AC7C 802DB53C 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 25AC80 802DB540 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 25AC84 802DB544 0C021395 */  jal        func_80084E54_93E04
    /* 25AC88 802DB548 02002825 */   or        $a1, $s0, $zero
    /* 25AC8C 802DB54C 284107D0 */  slti       $at, $v0, 0x7D0
    /* 25AC90 802DB550 10200032 */  beqz       $at, .L802DB61C_25AD5C
    /* 25AC94 802DB554 240A001E */   addiu     $t2, $zero, 0x1E
    /* 25AC98 802DB558 8603001E */  lh         $v1, 0x1E($s0)
    /* 25AC9C 802DB55C 24040200 */  addiu      $a0, $zero, 0x200
    /* 25ACA0 802DB560 14600030 */  bnez       $v1, .L802DB624_25AD64
    /* 25ACA4 802DB564 00000000 */   nop
    /* 25ACA8 802DB568 0C021C36 */  jal        func_800870D8_96088
    /* 25ACAC 802DB56C 24050010 */   addiu     $a1, $zero, 0x10
    /* 25ACB0 802DB570 24462000 */  addiu      $a2, $v0, 0x2000
    /* 25ACB4 802DB574 00067400 */  sll        $t6, $a2, 16
    /* 25ACB8 802DB578 000E3403 */  sra        $a2, $t6, 16
    /* 25ACBC 802DB57C 93A40093 */  lbu        $a0, 0x93($sp)
    /* 25ACC0 802DB580 0C021B5C */  jal        func_80086D70_95D20
    /* 25ACC4 802DB584 00002825 */   or        $a1, $zero, $zero
    /* 25ACC8 802DB588 A600001E */  sh         $zero, 0x1E($s0)
    /* 25ACCC 802DB58C 24040200 */  addiu      $a0, $zero, 0x200
    /* 25ACD0 802DB590 0C021C36 */  jal        func_800870D8_96088
    /* 25ACD4 802DB594 24050010 */   addiu     $a1, $zero, 0x10
    /* 25ACD8 802DB598 24466000 */  addiu      $a2, $v0, 0x6000
    /* 25ACDC 802DB59C 00065C00 */  sll        $t3, $a2, 16
    /* 25ACE0 802DB5A0 000B3403 */  sra        $a2, $t3, 16
    /* 25ACE4 802DB5A4 93A40093 */  lbu        $a0, 0x93($sp)
    /* 25ACE8 802DB5A8 0C021B5C */  jal        func_80086D70_95D20
    /* 25ACEC 802DB5AC 00002825 */   or        $a1, $zero, $zero
    /* 25ACF0 802DB5B0 A600001E */  sh         $zero, 0x1E($s0)
    /* 25ACF4 802DB5B4 24040200 */  addiu      $a0, $zero, 0x200
    /* 25ACF8 802DB5B8 0C021C36 */  jal        func_800870D8_96088
    /* 25ACFC 802DB5BC 24050010 */   addiu     $a1, $zero, 0x10
    /* 25AD00 802DB5C0 3401A000 */  ori        $at, $zero, 0xA000
    /* 25AD04 802DB5C4 00413021 */  addu       $a2, $v0, $at
    /* 25AD08 802DB5C8 00066400 */  sll        $t4, $a2, 16
    /* 25AD0C 802DB5CC 000C3403 */  sra        $a2, $t4, 16
    /* 25AD10 802DB5D0 93A40093 */  lbu        $a0, 0x93($sp)
    /* 25AD14 802DB5D4 0C021B5C */  jal        func_80086D70_95D20
    /* 25AD18 802DB5D8 00002825 */   or        $a1, $zero, $zero
    /* 25AD1C 802DB5DC A600001E */  sh         $zero, 0x1E($s0)
    /* 25AD20 802DB5E0 24040200 */  addiu      $a0, $zero, 0x200
    /* 25AD24 802DB5E4 0C021C36 */  jal        func_800870D8_96088
    /* 25AD28 802DB5E8 24050010 */   addiu     $a1, $zero, 0x10
    /* 25AD2C 802DB5EC 3401E000 */  ori        $at, $zero, 0xE000
    /* 25AD30 802DB5F0 00413021 */  addu       $a2, $v0, $at
    /* 25AD34 802DB5F4 00066C00 */  sll        $t5, $a2, 16
    /* 25AD38 802DB5F8 000D3403 */  sra        $a2, $t5, 16
    /* 25AD3C 802DB5FC 93A40093 */  lbu        $a0, 0x93($sp)
    /* 25AD40 802DB600 0C021B5C */  jal        func_80086D70_95D20
    /* 25AD44 802DB604 00002825 */   or        $a1, $zero, $zero
    /* 25AD48 802DB608 3C0E8004 */  lui        $t6, %hi(D_80047710)
    /* 25AD4C 802DB60C 85CE7710 */  lh         $t6, %lo(D_80047710)($t6)
    /* 25AD50 802DB610 A60E001E */  sh         $t6, 0x1E($s0)
    /* 25AD54 802DB614 10000003 */  b          .L802DB624_25AD64
    /* 25AD58 802DB618 8603001E */   lh        $v1, 0x1E($s0)
  .L802DB61C_25AD5C:
    /* 25AD5C 802DB61C A60A001E */  sh         $t2, 0x1E($s0)
    /* 25AD60 802DB620 8603001E */  lh         $v1, 0x1E($s0)
  .L802DB624_25AD64:
    /* 25AD64 802DB624 10600002 */  beqz       $v1, .L802DB630_25AD70
    /* 25AD68 802DB628 246BFFFF */   addiu     $t3, $v1, -0x1
    /* 25AD6C 802DB62C A60B001E */  sh         $t3, 0x1E($s0)
  .L802DB630_25AD70:
    /* 25AD70 802DB630 8FBF0044 */  lw         $ra, 0x44($sp)
    /* 25AD74 802DB634 8FB00040 */  lw         $s0, 0x40($sp)
    /* 25AD78 802DB638 27BD0090 */  addiu      $sp, $sp, 0x90
    /* 25AD7C 802DB63C 03E00008 */  jr         $ra
    /* 25AD80 802DB640 00000000 */   nop
endlabel func_802DAEDC_25A61C
