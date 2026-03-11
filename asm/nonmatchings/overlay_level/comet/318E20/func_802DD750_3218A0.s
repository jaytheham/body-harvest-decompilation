nonmatching func_802DD750_3218A0, 0x3B8

glabel func_802DD750_3218A0
    /* 3218A0 802DD750 308E00FF */  andi       $t6, $a0, 0xFF
    /* 3218A4 802DD754 000E7880 */  sll        $t7, $t6, 2
    /* 3218A8 802DD758 27BDFF78 */  addiu      $sp, $sp, -0x88
    /* 3218AC 802DD75C 01EE7821 */  addu       $t7, $t7, $t6
    /* 3218B0 802DD760 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 3218B4 802DD764 AFB00040 */  sw         $s0, 0x40($sp)
    /* 3218B8 802DD768 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 3218BC 802DD76C 000F7900 */  sll        $t7, $t7, 4
    /* 3218C0 802DD770 01F88021 */  addu       $s0, $t7, $t8
    /* 3218C4 802DD774 8E190020 */  lw         $t9, 0x20($s0)
    /* 3218C8 802DD778 AFA40088 */  sw         $a0, 0x88($sp)
    /* 3218CC 802DD77C 01C02025 */  or         $a0, $t6, $zero
    /* 3218D0 802DD780 332E2000 */  andi       $t6, $t9, 0x2000
    /* 3218D4 802DD784 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 3218D8 802DD788 AFA5008C */  sw         $a1, 0x8C($sp)
    /* 3218DC 802DD78C AFA60090 */  sw         $a2, 0x90($sp)
    /* 3218E0 802DD790 AFA70094 */  sw         $a3, 0x94($sp)
    /* 3218E4 802DD794 11C000D7 */  beqz       $t6, .L802DDAF4_321C44
    /* 3218E8 802DD798 920A001A */   lbu       $t2, 0x1A($s0)
    /* 3218EC 802DD79C 87AB009A */  lh         $t3, 0x9A($sp)
    /* 3218F0 802DD7A0 3C028015 */  lui        $v0, %hi(D_8014DD50)
    /* 3218F4 802DD7A4 2442DD50 */  addiu      $v0, $v0, %lo(D_8014DD50)
    /* 3218F8 802DD7A8 000BC900 */  sll        $t9, $t3, 4
    /* 3218FC 802DD7AC 00591821 */  addu       $v1, $v0, $t9
    /* 321900 802DD7B0 806D000D */  lb         $t5, 0xD($v1)
    /* 321904 802DD7B4 87AF0092 */  lh         $t7, 0x92($sp)
    /* 321908 802DD7B8 806C000C */  lb         $t4, 0xC($v1)
    /* 32190C 802DD7BC 87B80096 */  lh         $t8, 0x96($sp)
    /* 321910 802DD7C0 000DC900 */  sll        $t9, $t5, 4
    /* 321914 802DD7C4 00594021 */  addu       $t0, $v0, $t9
    /* 321918 802DD7C8 A7AF006C */  sh         $t7, 0x6C($sp)
    /* 32191C 802DD7CC 000C7100 */  sll        $t6, $t4, 4
    /* 321920 802DD7D0 811F000C */  lb         $ra, 0xC($t0)
    /* 321924 802DD7D4 004E7821 */  addu       $t7, $v0, $t6
    /* 321928 802DD7D8 A7B8006E */  sh         $t8, 0x6E($sp)
    /* 32192C 802DD7DC 81F8000C */  lb         $t8, 0xC($t7)
    /* 321930 802DD7E0 8119000D */  lb         $t9, 0xD($t0)
    /* 321934 802DD7E4 001F7100 */  sll        $t6, $ra, 4
    /* 321938 802DD7E8 004E7821 */  addu       $t7, $v0, $t6
    /* 32193C 802DD7EC A7B80074 */  sh         $t8, 0x74($sp)
    /* 321940 802DD7F0 81F8000C */  lb         $t8, 0xC($t7)
    /* 321944 802DD7F4 A7B9007C */  sh         $t9, 0x7C($sp)
    /* 321948 802DD7F8 87AE007C */  lh         $t6, 0x7C($sp)
    /* 32194C 802DD7FC A7B8007A */  sh         $t8, 0x7A($sp)
    /* 321950 802DD800 2405000E */  addiu      $a1, $zero, 0xE
    /* 321954 802DD804 000E7900 */  sll        $t7, $t6, 4
    /* 321958 802DD808 004F4821 */  addu       $t1, $v0, $t7
    /* 32195C 802DD80C 8138000C */  lb         $t8, 0xC($t1)
    /* 321960 802DD810 24060003 */  addiu      $a2, $zero, 0x3
    /* 321964 802DD814 27A7006C */  addiu      $a3, $sp, 0x6C
    /* 321968 802DD818 A7B8007E */  sh         $t8, 0x7E($sp)
    /* 32196C 802DD81C 87B9007E */  lh         $t9, 0x7E($sp)
    /* 321970 802DD820 00197100 */  sll        $t6, $t9, 4
    /* 321974 802DD824 8139000D */  lb         $t9, 0xD($t1)
    /* 321978 802DD828 004E7821 */  addu       $t7, $v0, $t6
    /* 32197C 802DD82C 81F8000C */  lb         $t8, 0xC($t7)
    /* 321980 802DD830 A7B90082 */  sh         $t9, 0x82($sp)
    /* 321984 802DD834 87AE0082 */  lh         $t6, 0x82($sp)
    /* 321988 802DD838 A7B80080 */  sh         $t8, 0x80($sp)
    /* 32198C 802DD83C 000E7900 */  sll        $t7, $t6, 4
    /* 321990 802DD840 004FC021 */  addu       $t8, $v0, $t7
    /* 321994 802DD844 8319000C */  lb         $t9, 0xC($t8)
    /* 321998 802DD848 00197100 */  sll        $t6, $t9, 4
    /* 32199C 802DD84C 004E7821 */  addu       $t7, $v0, $t6
    /* 3219A0 802DD850 81F8000C */  lb         $t8, 0xC($t7)
    /* 3219A4 802DD854 A7B90084 */  sh         $t9, 0x84($sp)
    /* 3219A8 802DD858 3C19802E */  lui        $t9, %hi(D_802E5920)
    /* 3219AC 802DD85C 27395920 */  addiu      $t9, $t9, %lo(D_802E5920)
    /* 3219B0 802DD860 A7BF0078 */  sh         $ra, 0x78($sp)
    /* 3219B4 802DD864 AFB90010 */  sw         $t9, 0x10($sp)
    /* 3219B8 802DD868 A7AA0052 */  sh         $t2, 0x52($sp)
    /* 3219BC 802DD86C A3A4008B */  sb         $a0, 0x8B($sp)
    /* 3219C0 802DD870 A7AB0070 */  sh         $t3, 0x70($sp)
    /* 3219C4 802DD874 A7AD0076 */  sh         $t5, 0x76($sp)
    /* 3219C8 802DD878 A7AC0072 */  sh         $t4, 0x72($sp)
    /* 3219CC 802DD87C 0C0207C6 */  jal        func_80081F18_90EC8
    /* 3219D0 802DD880 A7B80086 */   sh        $t8, 0x86($sp)
    /* 3219D4 802DD884 304E00FF */  andi       $t6, $v0, 0xFF
    /* 3219D8 802DD888 24010002 */  addiu      $at, $zero, 0x2
    /* 3219DC 802DD88C 87AA0052 */  lh         $t2, 0x52($sp)
    /* 3219E0 802DD890 15C10090 */  bne        $t6, $at, .L802DDAD4_321C24
    /* 3219E4 802DD894 A3A2006B */   sb        $v0, 0x6B($sp)
    /* 3219E8 802DD898 000A7880 */  sll        $t7, $t2, 2
    /* 3219EC 802DD89C 01EA7823 */  subu       $t7, $t7, $t2
    /* 3219F0 802DD8A0 000F7880 */  sll        $t7, $t7, 2
    /* 3219F4 802DD8A4 01EA7821 */  addu       $t7, $t7, $t2
    /* 3219F8 802DD8A8 3C188025 */  lui        $t8, %hi(alienSpecs)
    /* 3219FC 802DD8AC 27186680 */  addiu      $t8, $t8, %lo(alienSpecs)
    /* 321A00 802DD8B0 000F78C0 */  sll        $t7, $t7, 3
    /* 321A04 802DD8B4 01F81021 */  addu       $v0, $t7, $t8
    /* 321A08 802DD8B8 27AF005C */  addiu      $t7, $sp, 0x5C
    /* 321A0C 802DD8BC 27B90064 */  addiu      $t9, $sp, 0x64
    /* 321A10 802DD8C0 27AE0060 */  addiu      $t6, $sp, 0x60
    /* 321A14 802DD8C4 AFAE0014 */  sw         $t6, 0x14($sp)
    /* 321A18 802DD8C8 AFB90010 */  sw         $t9, 0x10($sp)
    /* 321A1C 802DD8CC AFAF0018 */  sw         $t7, 0x18($sp)
    /* 321A20 802DD8D0 84450020 */  lh         $a1, 0x20($v0)
    /* 321A24 802DD8D4 84460022 */  lh         $a2, 0x22($v0)
    /* 321A28 802DD8D8 84470024 */  lh         $a3, 0x24($v0)
    /* 321A2C 802DD8DC 0C04A10A */  jal        func_80128428_1373D8
    /* 321A30 802DD8E0 02002025 */   or        $a0, $s0, $zero
    /* 321A34 802DD8E4 86040006 */  lh         $a0, 0x6($s0)
    /* 321A38 802DD8E8 24844000 */  addiu      $a0, $a0, 0x4000
    /* 321A3C 802DD8EC 3098FFFF */  andi       $t8, $a0, 0xFFFF
    /* 321A40 802DD8F0 0C007660 */  jal        sins
    /* 321A44 802DD8F4 03002025 */   or        $a0, $t8, $zero
    /* 321A48 802DD8F8 44822000 */  mtc1       $v0, $f4
    /* 321A4C 802DD8FC 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 321A50 802DD900 44815800 */  mtc1       $at, $f11
    /* 321A54 802DD904 468021A0 */  cvt.s.w    $f6, $f4
    /* 321A58 802DD908 44805000 */  mtc1       $zero, $f10
    /* 321A5C 802DD90C 86040006 */  lh         $a0, 0x6($s0)
    /* 321A60 802DD910 24844000 */  addiu      $a0, $a0, 0x4000
    /* 321A64 802DD914 46003221 */  cvt.d.s    $f8, $f6
    /* 321A68 802DD918 3099FFFF */  andi       $t9, $a0, 0xFFFF
    /* 321A6C 802DD91C 462A4403 */  div.d      $f16, $f8, $f10
    /* 321A70 802DD920 03202025 */  or         $a0, $t9, $zero
    /* 321A74 802DD924 462084A0 */  cvt.s.d    $f18, $f16
    /* 321A78 802DD928 0C007654 */  jal        coss
    /* 321A7C 802DD92C E7B20058 */   swc1      $f18, 0x58($sp)
    /* 321A80 802DD930 44822000 */  mtc1       $v0, $f4
    /* 321A84 802DD934 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 321A88 802DD938 44815800 */  mtc1       $at, $f11
    /* 321A8C 802DD93C 468021A0 */  cvt.s.w    $f6, $f4
    /* 321A90 802DD940 44805000 */  mtc1       $zero, $f10
    /* 321A94 802DD944 87A40066 */  lh         $a0, 0x66($sp)
    /* 321A98 802DD948 87A50062 */  lh         $a1, 0x62($sp)
    /* 321A9C 802DD94C 87A6005E */  lh         $a2, 0x5E($sp)
    /* 321AA0 802DD950 240700DC */  addiu      $a3, $zero, 0xDC
    /* 321AA4 802DD954 46003221 */  cvt.d.s    $f8, $f6
    /* 321AA8 802DD958 462A4403 */  div.d      $f16, $f8, $f10
    /* 321AAC 802DD95C 46208487 */  neg.d      $f18, $f16
    /* 321AB0 802DD960 46209120 */  cvt.s.d    $f4, $f18
    /* 321AB4 802DD964 0C037A6E */  jal        func_800DE9B8_ED968
    /* 321AB8 802DD968 E7A40054 */   swc1      $f4, 0x54($sp)
    /* 321ABC 802DD96C 3C0142FE */  lui        $at, (0x42FE0000 >> 16)
    /* 321AC0 802DD970 44810000 */  mtc1       $at, $f0
    /* 321AC4 802DD974 C7A60058 */  lwc1       $f6, 0x58($sp)
    /* 321AC8 802DD978 C7B00054 */  lwc1       $f16, 0x54($sp)
    /* 321ACC 802DD97C 2419FFB0 */  addiu      $t9, $zero, -0x50
    /* 321AD0 802DD980 46003202 */  mul.s      $f8, $f6, $f0
    /* 321AD4 802DD984 241800DC */  addiu      $t8, $zero, 0xDC
    /* 321AD8 802DD988 240E003C */  addiu      $t6, $zero, 0x3C
    /* 321ADC 802DD98C 46008482 */  mul.s      $f18, $f16, $f0
    /* 321AE0 802DD990 AFAE0020 */  sw         $t6, 0x20($sp)
    /* 321AE4 802DD994 AFB80018 */  sw         $t8, 0x18($sp)
    /* 321AE8 802DD998 AFB90010 */  sw         $t9, 0x10($sp)
    /* 321AEC 802DD99C 241900FF */  addiu      $t9, $zero, 0xFF
    /* 321AF0 802DD9A0 241800FF */  addiu      $t8, $zero, 0xFF
    /* 321AF4 802DD9A4 4600428D */  trunc.w.s  $f10, $f8
    /* 321AF8 802DD9A8 240E00C8 */  addiu      $t6, $zero, 0xC8
    /* 321AFC 802DD9AC AFAE0030 */  sw         $t6, 0x30($sp)
    /* 321B00 802DD9B0 4600910D */  trunc.w.s  $f4, $f18
    /* 321B04 802DD9B4 44075000 */  mfc1       $a3, $f10
    /* 321B08 802DD9B8 AFB80028 */  sw         $t8, 0x28($sp)
    /* 321B0C 802DD9BC AFB9001C */  sw         $t9, 0x1C($sp)
    /* 321B10 802DD9C0 00077E00 */  sll        $t7, $a3, 24
    /* 321B14 802DD9C4 000F3E03 */  sra        $a3, $t7, 24
    /* 321B18 802DD9C8 440F2000 */  mfc1       $t7, $f4
    /* 321B1C 802DD9CC AFB9002C */  sw         $t9, 0x2C($sp)
    /* 321B20 802DD9D0 87A40066 */  lh         $a0, 0x66($sp)
    /* 321B24 802DD9D4 AFAF0014 */  sw         $t7, 0x14($sp)
    /* 321B28 802DD9D8 240F0014 */  addiu      $t7, $zero, 0x14
    /* 321B2C 802DD9DC AFAF0024 */  sw         $t7, 0x24($sp)
    /* 321B30 802DD9E0 87A50062 */  lh         $a1, 0x62($sp)
    /* 321B34 802DD9E4 0C031507 */  jal        func_800C541C_D43CC
    /* 321B38 802DD9E8 87A6005E */   lh        $a2, 0x5E($sp)
    /* 321B3C 802DD9EC 8FA40064 */  lw         $a0, 0x64($sp)
    /* 321B40 802DD9F0 8FA50060 */  lw         $a1, 0x60($sp)
    /* 321B44 802DD9F4 8FA6005C */  lw         $a2, 0x5C($sp)
    /* 321B48 802DD9F8 0C04D751 */  jal        func_80135D44_144CF4
    /* 321B4C 802DD9FC 3C074100 */   lui       $a3, (0x41000000 >> 16)
    /* 321B50 802DDA00 93A4008B */  lbu        $a0, 0x8B($sp)
    /* 321B54 802DDA04 2405025A */  addiu      $a1, $zero, 0x25A
    /* 321B58 802DDA08 0C04DD1A */  jal        func_80137468_146418
    /* 321B5C 802DDA0C AFA40048 */   sw        $a0, 0x48($sp)
    /* 321B60 802DDA10 87A40066 */  lh         $a0, 0x66($sp)
    /* 321B64 802DDA14 0C02E134 */  jal        func_800B84D0_C7480
    /* 321B68 802DDA18 87A5005E */   lh        $a1, 0x5E($sp)
    /* 321B6C 802DDA1C 00021A03 */  sra        $v1, $v0, 8
    /* 321B70 802DDA20 24650005 */  addiu      $a1, $v1, 0x5
    /* 321B74 802DDA24 00057C00 */  sll        $t7, $a1, 16
    /* 321B78 802DDA28 2419000A */  addiu      $t9, $zero, 0xA
    /* 321B7C 802DDA2C AFB90010 */  sw         $t9, 0x10($sp)
    /* 321B80 802DDA30 000F2C03 */  sra        $a1, $t7, 16
    /* 321B84 802DDA34 AFA30060 */  sw         $v1, 0x60($sp)
    /* 321B88 802DDA38 87A40066 */  lh         $a0, 0x66($sp)
    /* 321B8C 802DDA3C 87A6005E */  lh         $a2, 0x5E($sp)
    /* 321B90 802DDA40 0C037B97 */  jal        func_800DEE5C_EDE0C
    /* 321B94 802DDA44 24070050 */   addiu     $a3, $zero, 0x50
    /* 321B98 802DDA48 8FA3008C */  lw         $v1, 0x8C($sp)
    /* 321B9C 802DDA4C 28610320 */  slti       $at, $v1, 0x320
    /* 321BA0 802DDA50 50200017 */  beql       $at, $zero, .L802DDAB0_321C00
    /* 321BA4 802DDA54 240E01F4 */   addiu     $t6, $zero, 0x1F4
    /* 321BA8 802DDA58 44833000 */  mtc1       $v1, $f6
    /* 321BAC 802DDA5C 3C014448 */  lui        $at, (0x44480000 >> 16)
    /* 321BB0 802DDA60 44815000 */  mtc1       $at, $f10
    /* 321BB4 802DDA64 46803220 */  cvt.s.w    $f8, $f6
    /* 321BB8 802DDA68 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
    /* 321BBC 802DDA6C 44812800 */  mtc1       $at, $f5
    /* 321BC0 802DDA70 44802000 */  mtc1       $zero, $f4
    /* 321BC4 802DDA74 3C01802E */  lui        $at, %hi(D_802E7B68)
    /* 321BC8 802DDA78 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 321BCC 802DDA7C 460A4403 */  div.s      $f16, $f8, $f10
    /* 321BD0 802DDA80 D4287B68 */  ldc1       $f8, %lo(D_802E7B68)($at)
    /* 321BD4 802DDA84 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 321BD8 802DDA88 86050006 */  lh         $a1, 0x6($s0)
    /* 321BDC 802DDA8C 00003025 */  or         $a2, $zero, $zero
    /* 321BE0 802DDA90 460084A1 */  cvt.d.s    $f18, $f16
    /* 321BE4 802DDA94 46322181 */  sub.d      $f6, $f4, $f18
    /* 321BE8 802DDA98 46283282 */  mul.d      $f10, $f6, $f8
    /* 321BEC 802DDA9C 46205420 */  cvt.s.d    $f16, $f10
    /* 321BF0 802DDAA0 44078000 */  mfc1       $a3, $f16
    /* 321BF4 802DDAA4 0C040B77 */  jal        func_80102DDC_111D8C
    /* 321BF8 802DDAA8 00000000 */   nop
    /* 321BFC 802DDAAC 240E01F4 */  addiu      $t6, $zero, 0x1F4
  .L802DDAB0_321C00:
    /* 321C00 802DDAB0 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 321C04 802DDAB4 87A40066 */  lh         $a0, 0x66($sp)
    /* 321C08 802DDAB8 87A50062 */  lh         $a1, 0x62($sp)
    /* 321C0C 802DDABC 87A6005E */  lh         $a2, 0x5E($sp)
    /* 321C10 802DDAC0 0C0492D7 */  jal        func_80124B5C_133B0C
    /* 321C14 802DDAC4 24071F40 */   addiu     $a3, $zero, 0x1F40
    /* 321C18 802DDAC8 8FA40048 */  lw         $a0, 0x48($sp)
    /* 321C1C 802DDACC 0C04DD1A */  jal        func_80137468_146418
    /* 321C20 802DDAD0 24050258 */   addiu     $a1, $zero, 0x258
  .L802DDAD4_321C24:
    /* 321C24 802DDAD4 93AF006B */  lbu        $t7, 0x6B($sp)
    /* 321C28 802DDAD8 24010003 */  addiu      $at, $zero, 0x3
    /* 321C2C 802DDADC 55E10006 */  bnel       $t7, $at, .L802DDAF8_321C48
    /* 321C30 802DDAE0 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 321C34 802DDAE4 8E180020 */  lw         $t8, 0x20($s0)
    /* 321C38 802DDAE8 2401DFFF */  addiu      $at, $zero, -0x2001
    /* 321C3C 802DDAEC 0301C824 */  and        $t9, $t8, $at
    /* 321C40 802DDAF0 AE190020 */  sw         $t9, 0x20($s0)
  .L802DDAF4_321C44:
    /* 321C44 802DDAF4 8FBF0044 */  lw         $ra, 0x44($sp)
  .L802DDAF8_321C48:
    /* 321C48 802DDAF8 8FB00040 */  lw         $s0, 0x40($sp)
    /* 321C4C 802DDAFC 27BD0088 */  addiu      $sp, $sp, 0x88
    /* 321C50 802DDB00 03E00008 */  jr         $ra
    /* 321C54 802DDB04 00000000 */   nop
endlabel func_802DD750_3218A0
