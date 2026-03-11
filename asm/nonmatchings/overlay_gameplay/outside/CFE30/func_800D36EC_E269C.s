nonmatching func_800D36EC_E269C, 0x59C

glabel func_800D36EC_E269C
    /* E269C 800D36EC 27BDFF90 */  addiu      $sp, $sp, -0x70
    /* E26A0 800D36F0 3C0E8004 */  lui        $t6, %hi(D_80047F94)
    /* E26A4 800D36F4 8DCE7F94 */  lw         $t6, %lo(D_80047F94)($t6)
    /* E26A8 800D36F8 3C028015 */  lui        $v0, %hi(D_8015429A)
    /* E26AC 800D36FC 24010002 */  addiu      $at, $zero, 0x2
    /* E26B0 800D3700 AFBF006C */  sw         $ra, 0x6C($sp)
    /* E26B4 800D3704 AFBE0068 */  sw         $fp, 0x68($sp)
    /* E26B8 800D3708 AFB70064 */  sw         $s7, 0x64($sp)
    /* E26BC 800D370C AFB60060 */  sw         $s6, 0x60($sp)
    /* E26C0 800D3710 AFB5005C */  sw         $s5, 0x5C($sp)
    /* E26C4 800D3714 AFB40058 */  sw         $s4, 0x58($sp)
    /* E26C8 800D3718 AFB30054 */  sw         $s3, 0x54($sp)
    /* E26CC 800D371C AFB20050 */  sw         $s2, 0x50($sp)
    /* E26D0 800D3720 AFB1004C */  sw         $s1, 0x4C($sp)
    /* E26D4 800D3724 AFB00048 */  sw         $s0, 0x48($sp)
    /* E26D8 800D3728 F7B40040 */  sdc1       $f20, 0x40($sp)
    /* E26DC 800D372C 15C10149 */  bne        $t6, $at, .L800D3C54_E2C04
    /* E26E0 800D3730 8442429A */   lh        $v0, %lo(D_8015429A)($v0)
    /* E26E4 800D3734 2408FFFB */  addiu      $t0, $zero, -0x5
    /* E26E8 800D3738 10480002 */  beq        $v0, $t0, .L800D3744_E26F4
    /* E26EC 800D373C 2403FFFA */   addiu     $v1, $zero, -0x6
    /* E26F0 800D3740 14430005 */  bne        $v0, $v1, .L800D3758_E2708
  .L800D3744_E26F4:
    /* E26F4 800D3744 2404000D */   addiu     $a0, $zero, 0xD
    /* E26F8 800D3748 0C030506 */  jal        func_800C1418_D03C8
    /* E26FC 800D374C 24050001 */   addiu     $a1, $zero, 0x1
    /* E2700 800D3750 10000141 */  b          .L800D3C58_E2C08
    /* E2704 800D3754 8FBF006C */   lw        $ra, 0x6C($sp)
  .L800D3758_E2708:
    /* E2708 800D3758 5048013F */  beql       $v0, $t0, .L800D3C58_E2C08
    /* E270C 800D375C 8FBF006C */   lw        $ra, 0x6C($sp)
    /* E2710 800D3760 1043013C */  beq        $v0, $v1, .L800D3C54_E2C04
    /* E2714 800D3764 3C014080 */   lui       $at, (0x40800000 >> 16)
    /* E2718 800D3768 4481A000 */  mtc1       $at, $f20
    /* E271C 800D376C 241E001E */  addiu      $fp, $zero, 0x1E
  .L800D3770_E2720:
    /* E2720 800D3770 3C018004 */  lui        $at, %hi(D_80047954)
    /* E2724 800D3774 C4247954 */  lwc1       $f4, %lo(D_80047954)($at)
    /* E2728 800D3778 3C018004 */  lui        $at, %hi(D_8004795C)
    /* E272C 800D377C C42A795C */  lwc1       $f10, %lo(D_8004795C)($at)
    /* E2730 800D3780 46142182 */  mul.s      $f6, $f4, $f20
    /* E2734 800D3784 000278C0 */  sll        $t7, $v0, 3
    /* E2738 800D3788 01E27823 */  subu       $t7, $t7, $v0
    /* E273C 800D378C 46145402 */  mul.s      $f16, $f10, $f20
    /* E2740 800D3790 3C188015 */  lui        $t8, %hi(D_80154318)
    /* E2744 800D3794 3C0D8004 */  lui        $t5, %hi(D_80047950)
    /* E2748 800D3798 85AD7950 */  lh         $t5, %lo(D_80047950)($t5)
    /* E274C 800D379C 27184318 */  addiu      $t8, $t8, %lo(D_80154318)
    /* E2750 800D37A0 000F7880 */  sll        $t7, $t7, 2
    /* E2754 800D37A4 4600320D */  trunc.w.s  $f8, $f6
    /* E2758 800D37A8 01F8B021 */  addu       $s6, $t7, $t8
    /* E275C 800D37AC 86D30002 */  lh         $s3, 0x2($s6)
    /* E2760 800D37B0 4600848D */  trunc.w.s  $f18, $f16
    /* E2764 800D37B4 44074000 */  mfc1       $a3, $f8
    /* E2768 800D37B8 240E4000 */  addiu      $t6, $zero, 0x4000
    /* E276C 800D37BC 01CD7823 */  subu       $t7, $t6, $t5
    /* E2770 800D37C0 440C9000 */  mfc1       $t4, $f18
    /* E2774 800D37C4 00074C00 */  sll        $t1, $a3, 16
    /* E2778 800D37C8 00093C03 */  sra        $a3, $t1, 16
    /* E277C 800D37CC AFAF0014 */  sw         $t7, 0x14($sp)
    /* E2780 800D37D0 86C40008 */  lh         $a0, 0x8($s6)
    /* E2784 800D37D4 86C5000C */  lh         $a1, 0xC($s6)
    /* E2788 800D37D8 3266FFFF */  andi       $a2, $s3, 0xFFFF
    /* E278C 800D37DC 0C02E4EB */  jal        func_800B93AC_C835C
    /* E2790 800D37E0 AFAC0010 */   sw        $t4, 0x10($sp)
    /* E2794 800D37E4 50400116 */  beql       $v0, $zero, .L800D3C40_E2BF0
    /* E2798 800D37E8 86C20004 */   lh        $v0, 0x4($s6)
    /* E279C 800D37EC 0C000E38 */  jal        func_800038E0_44E0
    /* E27A0 800D37F0 00000000 */   nop
    /* E27A4 800D37F4 24010014 */  addiu      $at, $zero, 0x14
    /* E27A8 800D37F8 0041001A */  div        $zero, $v0, $at
    /* E27AC 800D37FC 0000C010 */  mfhi       $t8
    /* E27B0 800D3800 2B010004 */  slti       $at, $t8, 0x4
    /* E27B4 800D3804 1020007E */  beqz       $at, .L800D3A00_E29B0
    /* E27B8 800D3808 00000000 */   nop
    /* E27BC 800D380C 0C000E38 */  jal        func_800038E0_44E0
    /* E27C0 800D3810 00000000 */   nop
    /* E27C4 800D3814 0C000E38 */  jal        func_800038E0_44E0
    /* E27C8 800D3818 3052FFFF */   andi      $s2, $v0, 0xFFFF
    /* E27CC 800D381C 0C000E38 */  jal        func_800038E0_44E0
    /* E27D0 800D3820 3051FFFF */   andi      $s1, $v0, 0xFFFF
    /* E27D4 800D3824 0253001A */  div        $zero, $s2, $s3
    /* E27D8 800D3828 0000C810 */  mfhi       $t9
    /* E27DC 800D382C 26D00008 */  addiu      $s0, $s6, 0x8
    /* E27E0 800D3830 06610003 */  bgez       $s3, .L800D3840_E27F0
    /* E27E4 800D3834 00131843 */   sra       $v1, $s3, 1
    /* E27E8 800D3838 26610001 */  addiu      $at, $s3, 0x1
    /* E27EC 800D383C 00011843 */  sra        $v1, $at, 1
  .L800D3840_E27F0:
    /* E27F0 800D3840 0233001A */  div        $zero, $s1, $s3
    /* E27F4 800D3844 00007810 */  mfhi       $t7
    /* E27F8 800D3848 86090000 */  lh         $t1, 0x0($s0)
    /* E27FC 800D384C 16600002 */  bnez       $s3, .L800D3858_E2808
    /* E2800 800D3850 00000000 */   nop
    /* E2804 800D3854 0007000D */  break      7
  .L800D3858_E2808:
    /* E2808 800D3858 2401FFFF */  addiu      $at, $zero, -0x1
    /* E280C 800D385C 16610004 */  bne        $s3, $at, .L800D3870_E2820
    /* E2810 800D3860 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* E2814 800D3864 16410002 */  bne        $s2, $at, .L800D3870_E2820
    /* E2818 800D3868 00000000 */   nop
    /* E281C 800D386C 0006000D */  break      6
  .L800D3870_E2820:
    /* E2820 800D3870 0053001A */  div        $zero, $v0, $s3
    /* E2824 800D3874 03295021 */  addu       $t2, $t9, $t1
    /* E2828 800D3878 01432023 */  subu       $a0, $t2, $v1
    /* E282C 800D387C 86050002 */  lh         $a1, 0x2($s0)
    /* E2830 800D3880 86180004 */  lh         $t8, 0x4($s0)
    /* E2834 800D3884 00045C00 */  sll        $t3, $a0, 16
    /* E2838 800D3888 000B6403 */  sra        $t4, $t3, 16
    /* E283C 800D388C 00005810 */  mfhi       $t3
    /* E2840 800D3890 24A5000A */  addiu      $a1, $a1, 0xA
    /* E2844 800D3894 01F8C821 */  addu       $t9, $t7, $t8
    /* E2848 800D3898 03233023 */  subu       $a2, $t9, $v1
    /* E284C 800D389C 00057400 */  sll        $t6, $a1, 16
    /* E2850 800D38A0 01802025 */  or         $a0, $t4, $zero
    /* E2854 800D38A4 000E6C03 */  sra        $t5, $t6, 16
    /* E2858 800D38A8 00064C00 */  sll        $t1, $a2, 16
    /* E285C 800D38AC 00095403 */  sra        $t2, $t1, 16
    /* E2860 800D38B0 01403025 */  or         $a2, $t2, $zero
    /* E2864 800D38B4 01A02825 */  or         $a1, $t5, $zero
    /* E2868 800D38B8 16600002 */  bnez       $s3, .L800D38C4_E2874
    /* E286C 800D38BC 00000000 */   nop
    /* E2870 800D38C0 0007000D */  break      7
  .L800D38C4_E2874:
    /* E2874 800D38C4 2401FFFF */  addiu      $at, $zero, -0x1
    /* E2878 800D38C8 16610004 */  bne        $s3, $at, .L800D38DC_E288C
    /* E287C 800D38CC 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* E2880 800D38D0 16210002 */  bne        $s1, $at, .L800D38DC_E288C
    /* E2884 800D38D4 00000000 */   nop
    /* E2888 800D38D8 0006000D */  break      6
  .L800D38DC_E288C:
    /* E288C 800D38DC 24070003 */  addiu      $a3, $zero, 0x3
    /* E2890 800D38E0 16600002 */  bnez       $s3, .L800D38EC_E289C
    /* E2894 800D38E4 00000000 */   nop
    /* E2898 800D38E8 0007000D */  break      7
  .L800D38EC_E289C:
    /* E289C 800D38EC 2401FFFF */  addiu      $at, $zero, -0x1
    /* E28A0 800D38F0 16610004 */  bne        $s3, $at, .L800D3904_E28B4
    /* E28A4 800D38F4 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* E28A8 800D38F8 14410002 */  bne        $v0, $at, .L800D3904_E28B4
    /* E28AC 800D38FC 00000000 */   nop
    /* E28B0 800D3900 0006000D */  break      6
  .L800D3904_E28B4:
    /* E28B4 800D3904 05610003 */  bgez       $t3, .L800D3914_E28C4
    /* E28B8 800D3908 000B6083 */   sra       $t4, $t3, 2
    /* E28BC 800D390C 25610003 */  addiu      $at, $t3, 0x3
    /* E28C0 800D3910 00016083 */  sra        $t4, $at, 2
  .L800D3914_E28C4:
    /* E28C4 800D3914 258E0028 */  addiu      $t6, $t4, 0x28
    /* E28C8 800D3918 0C0376D8 */  jal        func_800DDB60_ECB10
    /* E28CC 800D391C AFAE0010 */   sw        $t6, 0x10($sp)
    /* E28D0 800D3920 240100FF */  addiu      $at, $zero, 0xFF
    /* E28D4 800D3924 10410036 */  beq        $v0, $at, .L800D3A00_E29B0
    /* E28D8 800D3928 305100FF */   andi      $s1, $v0, 0xFF
    /* E28DC 800D392C 0C000E38 */  jal        func_800038E0_44E0
    /* E28E0 800D3930 00000000 */   nop
    /* E28E4 800D3934 005E001A */  div        $zero, $v0, $fp
    /* E28E8 800D3938 00116880 */  sll        $t5, $s1, 2
    /* E28EC 800D393C 01B16821 */  addu       $t5, $t5, $s1
    /* E28F0 800D3940 3C0F8015 */  lui        $t7, %hi(D_80156EF0)
    /* E28F4 800D3944 25EF6EF0 */  addiu      $t7, $t7, %lo(D_80156EF0)
    /* E28F8 800D3948 000D6880 */  sll        $t5, $t5, 2
    /* E28FC 800D394C 0000C010 */  mfhi       $t8
    /* E2900 800D3950 27190050 */  addiu      $t9, $t8, 0x50
    /* E2904 800D3954 01AF8021 */  addu       $s0, $t5, $t7
    /* E2908 800D3958 17C00002 */  bnez       $fp, .L800D3964_E2914
    /* E290C 800D395C 00000000 */   nop
    /* E2910 800D3960 0007000D */  break      7
  .L800D3964_E2914:
    /* E2914 800D3964 2401FFFF */  addiu      $at, $zero, -0x1
    /* E2918 800D3968 17C10004 */  bne        $fp, $at, .L800D397C_E292C
    /* E291C 800D396C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* E2920 800D3970 14410002 */  bne        $v0, $at, .L800D397C_E292C
    /* E2924 800D3974 00000000 */   nop
    /* E2928 800D3978 0006000D */  break      6
  .L800D397C_E292C:
    /* E292C 800D397C A2190006 */  sb         $t9, 0x6($s0)
    /* E2930 800D3980 0C000E38 */  jal        func_800038E0_44E0
    /* E2934 800D3984 00000000 */   nop
    /* E2938 800D3988 005E001A */  div        $zero, $v0, $fp
    /* E293C 800D398C 00004810 */  mfhi       $t1
    /* E2940 800D3990 252A0050 */  addiu      $t2, $t1, 0x50
    /* E2944 800D3994 17C00002 */  bnez       $fp, .L800D39A0_E2950
    /* E2948 800D3998 00000000 */   nop
    /* E294C 800D399C 0007000D */  break      7
  .L800D39A0_E2950:
    /* E2950 800D39A0 2401FFFF */  addiu      $at, $zero, -0x1
    /* E2954 800D39A4 17C10004 */  bne        $fp, $at, .L800D39B8_E2968
    /* E2958 800D39A8 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* E295C 800D39AC 14410002 */  bne        $v0, $at, .L800D39B8_E2968
    /* E2960 800D39B0 00000000 */   nop
    /* E2964 800D39B4 0006000D */  break      6
  .L800D39B8_E2968:
    /* E2968 800D39B8 A20A0007 */  sb         $t2, 0x7($s0)
    /* E296C 800D39BC 0C000E38 */  jal        func_800038E0_44E0
    /* E2970 800D39C0 00000000 */   nop
    /* E2974 800D39C4 005E001A */  div        $zero, $v0, $fp
    /* E2978 800D39C8 00005810 */  mfhi       $t3
    /* E297C 800D39CC 256C0050 */  addiu      $t4, $t3, 0x50
    /* E2980 800D39D0 240E0004 */  addiu      $t6, $zero, 0x4
    /* E2984 800D39D4 A20C0008 */  sb         $t4, 0x8($s0)
    /* E2988 800D39D8 17C00002 */  bnez       $fp, .L800D39E4_E2994
    /* E298C 800D39DC 00000000 */   nop
    /* E2990 800D39E0 0007000D */  break      7
  .L800D39E4_E2994:
    /* E2994 800D39E4 2401FFFF */  addiu      $at, $zero, -0x1
    /* E2998 800D39E8 17C10004 */  bne        $fp, $at, .L800D39FC_E29AC
    /* E299C 800D39EC 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* E29A0 800D39F0 14410002 */  bne        $v0, $at, .L800D39FC_E29AC
    /* E29A4 800D39F4 00000000 */   nop
    /* E29A8 800D39F8 0006000D */  break      6
  .L800D39FC_E29AC:
    /* E29AC 800D39FC A20E0011 */  sb         $t6, 0x11($s0)
  .L800D3A00_E29B0:
    /* E29B0 800D3A00 0C000E38 */  jal        func_800038E0_44E0
    /* E29B4 800D3A04 00000000 */   nop
    /* E29B8 800D3A08 2401003C */  addiu      $at, $zero, 0x3C
    /* E29BC 800D3A0C 0041001A */  div        $zero, $v0, $at
    /* E29C0 800D3A10 00006810 */  mfhi       $t5
    /* E29C4 800D3A14 29A10005 */  slti       $at, $t5, 0x5
    /* E29C8 800D3A18 50200089 */  beql       $at, $zero, .L800D3C40_E2BF0
    /* E29CC 800D3A1C 86C20004 */   lh        $v0, 0x4($s6)
    /* E29D0 800D3A20 0C000E38 */  jal        func_800038E0_44E0
    /* E29D4 800D3A24 26D00008 */   addiu     $s0, $s6, 0x8
    /* E29D8 800D3A28 0C000E38 */  jal        func_800038E0_44E0
    /* E29DC 800D3A2C 3057FFFF */   andi      $s7, $v0, 0xFFFF
    /* E29E0 800D3A30 0C000E38 */  jal        func_800038E0_44E0
    /* E29E4 800D3A34 3054FFFF */   andi      $s4, $v0, 0xFFFF
    /* E29E8 800D3A38 0C000E38 */  jal        func_800038E0_44E0
    /* E29EC 800D3A3C 3055FFFF */   andi      $s5, $v0, 0xFFFF
    /* E29F0 800D3A40 0C000E38 */  jal        func_800038E0_44E0
    /* E29F4 800D3A44 3052FFFF */   andi      $s2, $v0, 0xFFFF
    /* E29F8 800D3A48 0C000E38 */  jal        func_800038E0_44E0
    /* E29FC 800D3A4C 3051FFFF */   andi      $s1, $v0, 0xFFFF
    /* E2A00 800D3A50 240300A0 */  addiu      $v1, $zero, 0xA0
    /* E2A04 800D3A54 02E3001A */  div        $zero, $s7, $v1
    /* E2A08 800D3A58 00003810 */  mfhi       $a3
    /* E2A0C 800D3A5C 24E7FFB0 */  addiu      $a3, $a3, -0x50
    /* E2A10 800D3A60 0007CE00 */  sll        $t9, $a3, 24
    /* E2A14 800D3A64 00194E03 */  sra        $t1, $t9, 24
    /* E2A18 800D3A68 86050002 */  lh         $a1, 0x2($s0)
    /* E2A1C 800D3A6C 86040000 */  lh         $a0, 0x0($s0)
    /* E2A20 800D3A70 86060004 */  lh         $a2, 0x4($s0)
    /* E2A24 800D3A74 24A5000A */  addiu      $a1, $a1, 0xA
    /* E2A28 800D3A78 00057C00 */  sll        $t7, $a1, 16
    /* E2A2C 800D3A7C 000FC403 */  sra        $t8, $t7, 16
    /* E2A30 800D3A80 03002825 */  or         $a1, $t8, $zero
    /* E2A34 800D3A84 14600002 */  bnez       $v1, .L800D3A90_E2A40
    /* E2A38 800D3A88 00000000 */   nop
    /* E2A3C 800D3A8C 0007000D */  break      7
  .L800D3A90_E2A40:
    /* E2A40 800D3A90 2401FFFF */  addiu      $at, $zero, -0x1
    /* E2A44 800D3A94 14610004 */  bne        $v1, $at, .L800D3AA8_E2A58
    /* E2A48 800D3A98 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* E2A4C 800D3A9C 16E10002 */  bne        $s7, $at, .L800D3AA8_E2A58
    /* E2A50 800D3AA0 00000000 */   nop
    /* E2A54 800D3AA4 0006000D */  break      6
  .L800D3AA8_E2A58:
    /* E2A58 800D3AA8 2401002D */  addiu      $at, $zero, 0x2D
    /* E2A5C 800D3AAC 0281001A */  div        $zero, $s4, $at
    /* E2A60 800D3AB0 00005010 */  mfhi       $t2
    /* E2A64 800D3AB4 254B0050 */  addiu      $t3, $t2, 0x50
    /* E2A68 800D3AB8 AFAB0010 */  sw         $t3, 0x10($sp)
    /* E2A6C 800D3ABC 02A3001A */  div        $zero, $s5, $v1
    /* E2A70 800D3AC0 00006010 */  mfhi       $t4
    /* E2A74 800D3AC4 258EFFB0 */  addiu      $t6, $t4, -0x50
    /* E2A78 800D3AC8 AFAE0014 */  sw         $t6, 0x14($sp)
    /* E2A7C 800D3ACC 025E001A */  div        $zero, $s2, $fp
    /* E2A80 800D3AD0 00006810 */  mfhi       $t5
    /* E2A84 800D3AD4 25AF0032 */  addiu      $t7, $t5, 0x32
    /* E2A88 800D3AD8 AFAF0018 */  sw         $t7, 0x18($sp)
    /* E2A8C 800D3ADC 01203825 */  or         $a3, $t1, $zero
    /* E2A90 800D3AE0 14600002 */  bnez       $v1, .L800D3AEC_E2A9C
    /* E2A94 800D3AE4 00000000 */   nop
    /* E2A98 800D3AE8 0007000D */  break      7
  .L800D3AEC_E2A9C:
    /* E2A9C 800D3AEC 2401FFFF */  addiu      $at, $zero, -0x1
    /* E2AA0 800D3AF0 14610004 */  bne        $v1, $at, .L800D3B04_E2AB4
    /* E2AA4 800D3AF4 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* E2AA8 800D3AF8 16A10002 */  bne        $s5, $at, .L800D3B04_E2AB4
    /* E2AAC 800D3AFC 00000000 */   nop
    /* E2AB0 800D3B00 0006000D */  break      6
  .L800D3B04_E2AB4:
    /* E2AB4 800D3B04 240F00FA */  addiu      $t7, $zero, 0xFA
    /* E2AB8 800D3B08 17C00002 */  bnez       $fp, .L800D3B14_E2AC4
    /* E2ABC 800D3B0C 00000000 */   nop
    /* E2AC0 800D3B10 0007000D */  break      7
  .L800D3B14_E2AC4:
    /* E2AC4 800D3B14 2401FFFF */  addiu      $at, $zero, -0x1
    /* E2AC8 800D3B18 17C10004 */  bne        $fp, $at, .L800D3B2C_E2ADC
    /* E2ACC 800D3B1C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* E2AD0 800D3B20 16410002 */  bne        $s2, $at, .L800D3B2C_E2ADC
    /* E2AD4 800D3B24 00000000 */   nop
    /* E2AD8 800D3B28 0006000D */  break      6
  .L800D3B2C_E2ADC:
    /* E2ADC 800D3B2C 2401000C */  addiu      $at, $zero, 0xC
    /* E2AE0 800D3B30 0221001A */  div        $zero, $s1, $at
    /* E2AE4 800D3B34 0000C810 */  mfhi       $t9
    /* E2AE8 800D3B38 24010032 */  addiu      $at, $zero, 0x32
    /* E2AEC 800D3B3C 27290008 */  addiu      $t1, $t9, 0x8
    /* E2AF0 800D3B40 0041001A */  div        $zero, $v0, $at
    /* E2AF4 800D3B44 00005010 */  mfhi       $t2
    /* E2AF8 800D3B48 254B0028 */  addiu      $t3, $t2, 0x28
    /* E2AFC 800D3B4C 240D001E */  addiu      $t5, $zero, 0x1E
    /* E2B00 800D3B50 240E005A */  addiu      $t6, $zero, 0x5A
    /* E2B04 800D3B54 240C00FF */  addiu      $t4, $zero, 0xFF
    /* E2B08 800D3B58 24180005 */  addiu      $t8, $zero, 0x5
    /* E2B0C 800D3B5C AFB8001C */  sw         $t8, 0x1C($sp)
    /* E2B10 800D3B60 AFAC0028 */  sw         $t4, 0x28($sp)
    /* E2B14 800D3B64 AFAE002C */  sw         $t6, 0x2C($sp)
    /* E2B18 800D3B68 AFAD0030 */  sw         $t5, 0x30($sp)
    /* E2B1C 800D3B6C AFAB0024 */  sw         $t3, 0x24($sp)
    /* E2B20 800D3B70 AFA90020 */  sw         $t1, 0x20($sp)
    /* E2B24 800D3B74 0C03297B */  jal        func_800CA5EC_D959C
    /* E2B28 800D3B78 AFAF0034 */   sw        $t7, 0x34($sp)
    /* E2B2C 800D3B7C 0C000E38 */  jal        func_800038E0_44E0
    /* E2B30 800D3B80 00000000 */   nop
    /* E2B34 800D3B84 24010014 */  addiu      $at, $zero, 0x14
    /* E2B38 800D3B88 0041001A */  div        $zero, $v0, $at
    /* E2B3C 800D3B8C 0000C010 */  mfhi       $t8
    /* E2B40 800D3B90 2B01000F */  slti       $at, $t8, 0xF
    /* E2B44 800D3B94 5020002A */  beql       $at, $zero, .L800D3C40_E2BF0
    /* E2B48 800D3B98 86C20004 */   lh        $v0, 0x4($s6)
    /* E2B4C 800D3B9C 0C000E38 */  jal        func_800038E0_44E0
    /* E2B50 800D3BA0 00000000 */   nop
    /* E2B54 800D3BA4 0C000E38 */  jal        func_800038E0_44E0
    /* E2B58 800D3BA8 3051FFFF */   andi      $s1, $v0, 0xFFFF
    /* E2B5C 800D3BAC 24010014 */  addiu      $at, $zero, 0x14
    /* E2B60 800D3BB0 0221001A */  div        $zero, $s1, $at
    /* E2B64 800D3BB4 00003810 */  mfhi       $a3
    /* E2B68 800D3BB8 86050002 */  lh         $a1, 0x2($s0)
    /* E2B6C 800D3BBC 24E70014 */  addiu      $a3, $a3, 0x14
    /* E2B70 800D3BC0 0053001A */  div        $zero, $v0, $s3
    /* E2B74 800D3BC4 86040000 */  lh         $a0, 0x0($s0)
    /* E2B78 800D3BC8 86060004 */  lh         $a2, 0x4($s0)
    /* E2B7C 800D3BCC 24A5000A */  addiu      $a1, $a1, 0xA
    /* E2B80 800D3BD0 0005CC00 */  sll        $t9, $a1, 16
    /* E2B84 800D3BD4 00007010 */  mfhi       $t6
    /* E2B88 800D3BD8 00075400 */  sll        $t2, $a3, 16
    /* E2B8C 800D3BDC 3C0F0A00 */  lui        $t7, %hi(D_A003F40)
    /* E2B90 800D3BE0 25EF3F40 */  addiu      $t7, $t7, %lo(D_A003F40)
    /* E2B94 800D3BE4 000A5C03 */  sra        $t3, $t2, 16
    /* E2B98 800D3BE8 01D36821 */  addu       $t5, $t6, $s3
    /* E2B9C 800D3BEC 00194C03 */  sra        $t1, $t9, 16
    /* E2BA0 800D3BF0 240CFFF8 */  addiu      $t4, $zero, -0x8
    /* E2BA4 800D3BF4 24180003 */  addiu      $t8, $zero, 0x3
    /* E2BA8 800D3BF8 AFB8001C */  sw         $t8, 0x1C($sp)
    /* E2BAC 800D3BFC AFAC0010 */  sw         $t4, 0x10($sp)
    /* E2BB0 800D3C00 01202825 */  or         $a1, $t1, $zero
    /* E2BB4 800D3C04 AFAD0014 */  sw         $t5, 0x14($sp)
    /* E2BB8 800D3C08 01603825 */  or         $a3, $t3, $zero
    /* E2BBC 800D3C0C 16600002 */  bnez       $s3, .L800D3C18_E2BC8
    /* E2BC0 800D3C10 00000000 */   nop
    /* E2BC4 800D3C14 0007000D */  break      7
  .L800D3C18_E2BC8:
    /* E2BC8 800D3C18 2401FFFF */  addiu      $at, $zero, -0x1
    /* E2BCC 800D3C1C 16610004 */  bne        $s3, $at, .L800D3C30_E2BE0
    /* E2BD0 800D3C20 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* E2BD4 800D3C24 14410002 */  bne        $v0, $at, .L800D3C30_E2BE0
    /* E2BD8 800D3C28 00000000 */   nop
    /* E2BDC 800D3C2C 0006000D */  break      6
  .L800D3C30_E2BE0:
    /* E2BE0 800D3C30 AFAF0018 */  sw         $t7, 0x18($sp)
    /* E2BE4 800D3C34 0C031E49 */  jal        func_800C7924_D68D4
    /* E2BE8 800D3C38 00000000 */   nop
    /* E2BEC 800D3C3C 86C20004 */  lh         $v0, 0x4($s6)
  .L800D3C40_E2BF0:
    /* E2BF0 800D3C40 2401FFFB */  addiu      $at, $zero, -0x5
    /* E2BF4 800D3C44 10410003 */  beq        $v0, $at, .L800D3C54_E2C04
    /* E2BF8 800D3C48 2401FFFA */   addiu     $at, $zero, -0x6
    /* E2BFC 800D3C4C 1441FEC8 */  bne        $v0, $at, .L800D3770_E2720
    /* E2C00 800D3C50 00000000 */   nop
  .L800D3C54_E2C04:
    /* E2C04 800D3C54 8FBF006C */  lw         $ra, 0x6C($sp)
  .L800D3C58_E2C08:
    /* E2C08 800D3C58 D7B40040 */  ldc1       $f20, 0x40($sp)
    /* E2C0C 800D3C5C 8FB00048 */  lw         $s0, 0x48($sp)
    /* E2C10 800D3C60 8FB1004C */  lw         $s1, 0x4C($sp)
    /* E2C14 800D3C64 8FB20050 */  lw         $s2, 0x50($sp)
    /* E2C18 800D3C68 8FB30054 */  lw         $s3, 0x54($sp)
    /* E2C1C 800D3C6C 8FB40058 */  lw         $s4, 0x58($sp)
    /* E2C20 800D3C70 8FB5005C */  lw         $s5, 0x5C($sp)
    /* E2C24 800D3C74 8FB60060 */  lw         $s6, 0x60($sp)
    /* E2C28 800D3C78 8FB70064 */  lw         $s7, 0x64($sp)
    /* E2C2C 800D3C7C 8FBE0068 */  lw         $fp, 0x68($sp)
    /* E2C30 800D3C80 03E00008 */  jr         $ra
    /* E2C34 800D3C84 27BD0070 */   addiu     $sp, $sp, 0x70
endlabel func_800D36EC_E269C
