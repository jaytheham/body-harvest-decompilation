nonmatching func_802DE5E8_25DD28, 0x3A8

glabel func_802DE5E8_25DD28
    /* 25DD28 802DE5E8 27BDFF70 */  addiu      $sp, $sp, -0x90
    /* 25DD2C 802DE5EC 3C0F802E */  lui        $t7, %hi(D_802E0CDC)
    /* 25DD30 802DE5F0 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 25DD34 802DE5F4 AFB00040 */  sw         $s0, 0x40($sp)
    /* 25DD38 802DE5F8 AFA40090 */  sw         $a0, 0x90($sp)
    /* 25DD3C 802DE5FC 25EF0CDC */  addiu      $t7, $t7, %lo(D_802E0CDC)
    /* 25DD40 802DE600 8DE10000 */  lw         $at, 0x0($t7)
    /* 25DD44 802DE604 27AE0070 */  addiu      $t6, $sp, 0x70
    /* 25DD48 802DE608 24060050 */  addiu      $a2, $zero, 0x50
    /* 25DD4C 802DE60C ADC10000 */  sw         $at, 0x0($t6)
    /* 25DD50 802DE610 95E10004 */  lhu        $at, 0x4($t7)
    /* 25DD54 802DE614 3C058005 */  lui        $a1, %hi(alienInstances)
    /* 25DD58 802DE618 24A58198 */  addiu      $a1, $a1, %lo(alienInstances)
    /* 25DD5C 802DE61C A5C10004 */  sh         $at, 0x4($t6)
    /* 25DD60 802DE620 93B90093 */  lbu        $t9, 0x93($sp)
    /* 25DD64 802DE624 3C098015 */  lui        $t1, %hi(D_8014DD50)
    /* 25DD68 802DE628 2529DD50 */  addiu      $t1, $t1, %lo(D_8014DD50)
    /* 25DD6C 802DE62C 03260019 */  multu      $t9, $a2
    /* 25DD70 802DE630 00192400 */  sll        $a0, $t9, 16
    /* 25DD74 802DE634 0000C012 */  mflo       $t8
    /* 25DD78 802DE638 00B88021 */  addu       $s0, $a1, $t8
    /* 25DD7C 802DE63C 920E0025 */  lbu        $t6, 0x25($s0)
    /* 25DD80 802DE640 8602000C */  lh         $v0, 0xC($s0)
    /* 25DD84 802DE644 01C60019 */  multu      $t6, $a2
    /* 25DD88 802DE648 0002C100 */  sll        $t8, $v0, 4
    /* 25DD8C 802DE64C 01387021 */  addu       $t6, $t1, $t8
    /* 25DD90 802DE650 81C3000C */  lb         $v1, 0xC($t6)
    /* 25DD94 802DE654 03201025 */  or         $v0, $t9, $zero
    /* 25DD98 802DE658 00007812 */  mflo       $t7
    /* 25DD9C 802DE65C 00AF6821 */  addu       $t5, $a1, $t7
    /* 25DDA0 802DE660 AFAD0080 */  sw         $t5, 0x80($sp)
    /* 25DDA4 802DE664 00037900 */  sll        $t7, $v1, 4
    /* 25DDA8 802DE668 012F6821 */  addu       $t5, $t1, $t7
    /* 25DDAC 802DE66C 81B8000D */  lb         $t8, 0xD($t5)
    /* 25DDB0 802DE670 A7B80088 */  sh         $t8, 0x88($sp)
    /* 25DDB4 802DE674 87AE0088 */  lh         $t6, 0x88($sp)
    /* 25DDB8 802DE678 8E180020 */  lw         $t8, 0x20($s0)
    /* 25DDBC 802DE67C 000E7900 */  sll        $t7, $t6, 4
    /* 25DDC0 802DE680 012F4021 */  addu       $t0, $t1, $t7
    /* 25DDC4 802DE684 810D000D */  lb         $t5, 0xD($t0)
    /* 25DDC8 802DE688 001872C0 */  sll        $t6, $t8, 11
    /* 25DDCC 802DE68C 05C0002B */  bltz       $t6, .L802DE73C_25DE7C
    /* 25DDD0 802DE690 A7AD0086 */   sh        $t5, 0x86($sp)
    /* 25DDD4 802DE694 00047C03 */  sra        $t7, $a0, 16
    /* 25DDD8 802DE698 01E02025 */  or         $a0, $t7, $zero
    /* 25DDDC 802DE69C AFB90050 */  sw         $t9, 0x50($sp)
    /* 25DDE0 802DE6A0 0C022000 */  jal        func_80088000_96FB0
    /* 25DDE4 802DE6A4 AFA80054 */   sw        $t0, 0x54($sp)
    /* 25DDE8 802DE6A8 0C04AC87 */  jal        func_8012B21C_13A1CC
    /* 25DDEC 802DE6AC 00000000 */   nop
    /* 25DDF0 802DE6B0 0C02A4AC */  jal        func_800A92B0_B8260
    /* 25DDF4 802DE6B4 00000000 */   nop
    /* 25DDF8 802DE6B8 8FAA0080 */  lw         $t2, 0x80($sp)
    /* 25DDFC 802DE6BC 240C0050 */  addiu      $t4, $zero, 0x50
    /* 25DE00 802DE6C0 3C0B8005 */  lui        $t3, %hi(alienInstances)
    /* 25DE04 802DE6C4 91480000 */  lbu        $t0, 0x0($t2)
    /* 25DE08 802DE6C8 91490001 */  lbu        $t1, 0x1($t2)
    /* 25DE0C 802DE6CC 256B8198 */  addiu      $t3, $t3, %lo(alienInstances)
    /* 25DE10 802DE6D0 010C0019 */  multu      $t0, $t4
    /* 25DE14 802DE6D4 87A40066 */  lh         $a0, 0x66($sp)
    /* 25DE18 802DE6D8 87A50062 */  lh         $a1, 0x62($sp)
    /* 25DE1C 802DE6DC 87A6005E */  lh         $a2, 0x5E($sp)
    /* 25DE20 802DE6E0 2407012C */  addiu      $a3, $zero, 0x12C
    /* 25DE24 802DE6E4 00006812 */  mflo       $t5
    /* 25DE28 802DE6E8 016D1021 */  addu       $v0, $t3, $t5
    /* 25DE2C 802DE6EC 8458002C */  lh         $t8, 0x2C($v0)
    /* 25DE30 802DE6F0 012C0019 */  multu      $t1, $t4
    /* 25DE34 802DE6F4 270E0014 */  addiu      $t6, $t8, 0x14
    /* 25DE38 802DE6F8 A44E002C */  sh         $t6, 0x2C($v0)
    /* 25DE3C 802DE6FC 241800D2 */  addiu      $t8, $zero, 0xD2
    /* 25DE40 802DE700 240E0003 */  addiu      $t6, $zero, 0x3
    /* 25DE44 802DE704 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 25DE48 802DE708 0000C812 */  mflo       $t9
    /* 25DE4C 802DE70C 01791821 */  addu       $v1, $t3, $t9
    /* 25DE50 802DE710 846F002C */  lh         $t7, 0x2C($v1)
    /* 25DE54 802DE714 25ED0014 */  addiu      $t5, $t7, 0x14
    /* 25DE58 802DE718 A46D002C */  sh         $t5, 0x2C($v1)
    /* 25DE5C 802DE71C 0C037E12 */  jal        func_800DF848_EE7F8
    /* 25DE60 802DE720 A618002C */   sh        $t8, 0x2C($s0)
    /* 25DE64 802DE724 8FA40050 */  lw         $a0, 0x50($sp)
    /* 25DE68 802DE728 0C04DD1A */  jal        func_80137468_146418
    /* 25DE6C 802DE72C 24050011 */   addiu     $a1, $zero, 0x11
    /* 25DE70 802DE730 8602002C */  lh         $v0, 0x2C($s0)
    /* 25DE74 802DE734 10000017 */  b          .L802DE794_25DED4
    /* 25DE78 802DE738 8FA80054 */   lw        $t0, 0x54($sp)
  .L802DE73C_25DE7C:
    /* 25DE7C 802DE73C 8602002C */  lh         $v0, 0x2C($s0)
    /* 25DE80 802DE740 93A40093 */  lbu        $a0, 0x93($sp)
    /* 25DE84 802DE744 24050258 */  addiu      $a1, $zero, 0x258
    /* 25DE88 802DE748 28410097 */  slti       $at, $v0, 0x97
    /* 25DE8C 802DE74C 14200011 */  bnez       $at, .L802DE794_25DED4
    /* 25DE90 802DE750 00003025 */   or        $a2, $zero, $zero
    /* 25DE94 802DE754 3C01802E */  lui        $at, %hi(D_802E0E10)
    /* 25DE98 802DE758 C4240E10 */  lwc1       $f4, %lo(D_802E0E10)($at)
    /* 25DE9C 802DE75C 87B90088 */  lh         $t9, 0x88($sp)
    /* 25DEA0 802DE760 240F1F40 */  addiu      $t7, $zero, 0x1F40
    /* 25DEA4 802DE764 240DEC78 */  addiu      $t5, $zero, -0x1388
    /* 25DEA8 802DE768 241809C4 */  addiu      $t8, $zero, 0x9C4
    /* 25DEAC 802DE76C AFB8001C */  sw         $t8, 0x1C($sp)
    /* 25DEB0 802DE770 AFAD0018 */  sw         $t5, 0x18($sp)
    /* 25DEB4 802DE774 AFAF0014 */  sw         $t7, 0x14($sp)
    /* 25DEB8 802DE778 87A70086 */  lh         $a3, 0x86($sp)
    /* 25DEBC 802DE77C AFA80054 */  sw         $t0, 0x54($sp)
    /* 25DEC0 802DE780 E7A40020 */  swc1       $f4, 0x20($sp)
    /* 25DEC4 802DE784 0C0B6DEE */  jal        func_802DB7B8_25AEF8
    /* 25DEC8 802DE788 AFB90010 */   sw        $t9, 0x10($sp)
    /* 25DECC 802DE78C 8602002C */  lh         $v0, 0x2C($s0)
    /* 25DED0 802DE790 8FA80054 */  lw         $t0, 0x54($sp)
  .L802DE794_25DED4:
    /* 25DED4 802DE794 93AE0093 */  lbu        $t6, 0x93($sp)
    /* 25DED8 802DE798 24010096 */  addiu      $at, $zero, 0x96
    /* 25DEDC 802DE79C 14410034 */  bne        $v0, $at, .L802DE870_25DFB0
    /* 25DEE0 802DE7A0 AFAE0050 */   sw        $t6, 0x50($sp)
    /* 25DEE4 802DE7A4 27B90064 */  addiu      $t9, $sp, 0x64
    /* 25DEE8 802DE7A8 27AF0060 */  addiu      $t7, $sp, 0x60
    /* 25DEEC 802DE7AC 27AD005C */  addiu      $t5, $sp, 0x5C
    /* 25DEF0 802DE7B0 AFAD0018 */  sw         $t5, 0x18($sp)
    /* 25DEF4 802DE7B4 AFAF0014 */  sw         $t7, 0x14($sp)
    /* 25DEF8 802DE7B8 AFB90010 */  sw         $t9, 0x10($sp)
    /* 25DEFC 802DE7BC 02002025 */  or         $a0, $s0, $zero
    /* 25DF00 802DE7C0 85050000 */  lh         $a1, 0x0($t0)
    /* 25DF04 802DE7C4 85060002 */  lh         $a2, 0x2($t0)
    /* 25DF08 802DE7C8 0C04A10A */  jal        func_80128428_1373D8
    /* 25DF0C 802DE7CC 85070004 */   lh        $a3, 0x4($t0)
    /* 25DF10 802DE7D0 24180003 */  addiu      $t8, $zero, 0x3
    /* 25DF14 802DE7D4 AFB80010 */  sw         $t8, 0x10($sp)
    /* 25DF18 802DE7D8 87A40066 */  lh         $a0, 0x66($sp)
    /* 25DF1C 802DE7DC 87A50062 */  lh         $a1, 0x62($sp)
    /* 25DF20 802DE7E0 87A6005E */  lh         $a2, 0x5E($sp)
    /* 25DF24 802DE7E4 0C037E12 */  jal        func_800DF848_EE7F8
    /* 25DF28 802DE7E8 2407012C */   addiu     $a3, $zero, 0x12C
    /* 25DF2C 802DE7EC 0C022384 */  jal        func_80088E10_97DC0
    /* 25DF30 802DE7F0 87A40088 */   lh        $a0, 0x88($sp)
    /* 25DF34 802DE7F4 87AE0086 */  lh         $t6, 0x86($sp)
    /* 25DF38 802DE7F8 3C0F8015 */  lui        $t7, %hi(D_8014DD50)
    /* 25DF3C 802DE7FC 25EFDD50 */  addiu      $t7, $t7, %lo(D_8014DD50)
    /* 25DF40 802DE800 000EC900 */  sll        $t9, $t6, 4
    /* 25DF44 802DE804 032F1021 */  addu       $v0, $t9, $t7
    /* 25DF48 802DE808 27AE005C */  addiu      $t6, $sp, 0x5C
    /* 25DF4C 802DE80C 27AD0064 */  addiu      $t5, $sp, 0x64
    /* 25DF50 802DE810 27B80060 */  addiu      $t8, $sp, 0x60
    /* 25DF54 802DE814 AFB80014 */  sw         $t8, 0x14($sp)
    /* 25DF58 802DE818 AFAD0010 */  sw         $t5, 0x10($sp)
    /* 25DF5C 802DE81C AFAE0018 */  sw         $t6, 0x18($sp)
    /* 25DF60 802DE820 84450000 */  lh         $a1, 0x0($v0)
    /* 25DF64 802DE824 84460002 */  lh         $a2, 0x2($v0)
    /* 25DF68 802DE828 84470004 */  lh         $a3, 0x4($v0)
    /* 25DF6C 802DE82C 0C04A10A */  jal        func_80128428_1373D8
    /* 25DF70 802DE830 02002025 */   or        $a0, $s0, $zero
    /* 25DF74 802DE834 24190003 */  addiu      $t9, $zero, 0x3
    /* 25DF78 802DE838 AFB90010 */  sw         $t9, 0x10($sp)
    /* 25DF7C 802DE83C 87A40066 */  lh         $a0, 0x66($sp)
    /* 25DF80 802DE840 87A50062 */  lh         $a1, 0x62($sp)
    /* 25DF84 802DE844 87A6005E */  lh         $a2, 0x5E($sp)
    /* 25DF88 802DE848 0C037E12 */  jal        func_800DF848_EE7F8
    /* 25DF8C 802DE84C 2407012C */   addiu     $a3, $zero, 0x12C
    /* 25DF90 802DE850 0C022384 */  jal        func_80088E10_97DC0
    /* 25DF94 802DE854 87A40086 */   lh        $a0, 0x86($sp)
    /* 25DF98 802DE858 8E0F0020 */  lw         $t7, 0x20($s0)
    /* 25DF9C 802DE85C 3C014000 */  lui        $at, (0x40001000 >> 16)
    /* 25DFA0 802DE860 34211000 */  ori        $at, $at, (0x40001000 & 0xFFFF)
    /* 25DFA4 802DE864 01E16825 */  or         $t5, $t7, $at
    /* 25DFA8 802DE868 AE0D0020 */  sw         $t5, 0x20($s0)
    /* 25DFAC 802DE86C A6000012 */  sh         $zero, 0x12($s0)
  .L802DE870_25DFB0:
    /* 25DFB0 802DE870 8E020020 */  lw         $v0, 0x20($s0)
    /* 25DFB4 802DE874 0002C040 */  sll        $t8, $v0, 1
    /* 25DFB8 802DE878 0700003B */  bltz       $t8, .L802DE968_25E0A8
    /* 25DFBC 802DE87C 304E1000 */   andi      $t6, $v0, 0x1000
    /* 25DFC0 802DE880 11C00039 */  beqz       $t6, .L802DE968_25E0A8
    /* 25DFC4 802DE884 2401EFFF */   addiu     $at, $zero, -0x1001
    /* 25DFC8 802DE888 87AF0052 */  lh         $t7, 0x52($sp)
    /* 25DFCC 802DE88C 0041C824 */  and        $t9, $v0, $at
    /* 25DFD0 802DE890 AE190020 */  sw         $t9, 0x20($s0)
    /* 25DFD4 802DE894 86040000 */  lh         $a0, 0x0($s0)
    /* 25DFD8 802DE898 86050002 */  lh         $a1, 0x2($s0)
    /* 25DFDC 802DE89C 86060004 */  lh         $a2, 0x4($s0)
    /* 25DFE0 802DE8A0 3C0740A0 */  lui        $a3, (0x40A00000 >> 16)
    /* 25DFE4 802DE8A4 0C04D751 */  jal        func_80135D44_144CF4
    /* 25DFE8 802DE8A8 AFAF004C */   sw        $t7, 0x4C($sp)
    /* 25DFEC 802DE8AC 8FA40050 */  lw         $a0, 0x50($sp)
    /* 25DFF0 802DE8B0 0C04DD1A */  jal        func_80137468_146418
    /* 25DFF4 802DE8B4 2405013D */   addiu     $a1, $zero, 0x13D
    /* 25DFF8 802DE8B8 240D000C */  addiu      $t5, $zero, 0xC
    /* 25DFFC 802DE8BC 24180010 */  addiu      $t8, $zero, 0x10
    /* 25E000 802DE8C0 AFB80014 */  sw         $t8, 0x14($sp)
    /* 25E004 802DE8C4 AFAD0010 */  sw         $t5, 0x10($sp)
    /* 25E008 802DE8C8 240D0085 */  addiu      $t5, $zero, 0x85
    /* 25E00C 802DE8CC 2418002F */  addiu      $t8, $zero, 0x2F
    /* 25E010 802DE8D0 240E0028 */  addiu      $t6, $zero, 0x28
    /* 25E014 802DE8D4 241900FF */  addiu      $t9, $zero, 0xFF
    /* 25E018 802DE8D8 240F00A6 */  addiu      $t7, $zero, 0xA6
    /* 25E01C 802DE8DC AFAF0020 */  sw         $t7, 0x20($sp)
    /* 25E020 802DE8E0 AFB9001C */  sw         $t9, 0x1C($sp)
    /* 25E024 802DE8E4 AFAE0018 */  sw         $t6, 0x18($sp)
    /* 25E028 802DE8E8 AFB80028 */  sw         $t8, 0x28($sp)
    /* 25E02C 802DE8EC AFAD0024 */  sw         $t5, 0x24($sp)
    /* 25E030 802DE8F0 86040000 */  lh         $a0, 0x0($s0)
    /* 25E034 802DE8F4 86050002 */  lh         $a1, 0x2($s0)
    /* 25E038 802DE8F8 86060004 */  lh         $a2, 0x4($s0)
    /* 25E03C 802DE8FC 0C037A82 */  jal        func_800DEA08_ED9B8
    /* 25E040 802DE900 24070320 */   addiu     $a3, $zero, 0x320
    /* 25E044 802DE904 240E007F */  addiu      $t6, $zero, 0x7F
    /* 25E048 802DE908 24190064 */  addiu      $t9, $zero, 0x64
    /* 25E04C 802DE90C AFB90018 */  sw         $t9, 0x18($sp)
    /* 25E050 802DE910 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 25E054 802DE914 240E006A */  addiu      $t6, $zero, 0x6A
    /* 25E058 802DE918 24190053 */  addiu      $t9, $zero, 0x53
    /* 25E05C 802DE91C 240F00FF */  addiu      $t7, $zero, 0xFF
    /* 25E060 802DE920 240D003C */  addiu      $t5, $zero, 0x3C
    /* 25E064 802DE924 24180014 */  addiu      $t8, $zero, 0x14
    /* 25E068 802DE928 AFB80024 */  sw         $t8, 0x24($sp)
    /* 25E06C 802DE92C AFAD0020 */  sw         $t5, 0x20($sp)
    /* 25E070 802DE930 AFAF001C */  sw         $t7, 0x1C($sp)
    /* 25E074 802DE934 AFB9002C */  sw         $t9, 0x2C($sp)
    /* 25E078 802DE938 AFAE0028 */  sw         $t6, 0x28($sp)
    /* 25E07C 802DE93C 86040000 */  lh         $a0, 0x0($s0)
    /* 25E080 802DE940 86050002 */  lh         $a1, 0x2($s0)
    /* 25E084 802DE944 86060004 */  lh         $a2, 0x4($s0)
    /* 25E088 802DE948 00003825 */  or         $a3, $zero, $zero
    /* 25E08C 802DE94C AFA00014 */  sw         $zero, 0x14($sp)
    /* 25E090 802DE950 0C031507 */  jal        func_800C541C_D43CC
    /* 25E094 802DE954 AFA00030 */   sw        $zero, 0x30($sp)
    /* 25E098 802DE958 0C038D78 */  jal        func_800E35E0_F2590
    /* 25E09C 802DE95C 240400FF */   addiu     $a0, $zero, 0xFF
    /* 25E0A0 802DE960 0C022000 */  jal        func_80088000_96FB0
    /* 25E0A4 802DE964 87A4004E */   lh        $a0, 0x4E($sp)
  .L802DE968_25E0A8:
    /* 25E0A8 802DE968 0C02A8D0 */  jal        func_800AA340_B92F0
    /* 25E0AC 802DE96C 93A40093 */   lbu       $a0, 0x93($sp)
    /* 25E0B0 802DE970 8FA40050 */  lw         $a0, 0x50($sp)
    /* 25E0B4 802DE974 0C04DD1A */  jal        func_80137468_146418
    /* 25E0B8 802DE978 24050028 */   addiu     $a1, $zero, 0x28
    /* 25E0BC 802DE97C 8FBF0044 */  lw         $ra, 0x44($sp)
    /* 25E0C0 802DE980 8FB00040 */  lw         $s0, 0x40($sp)
    /* 25E0C4 802DE984 27BD0090 */  addiu      $sp, $sp, 0x90
    /* 25E0C8 802DE988 03E00008 */  jr         $ra
    /* 25E0CC 802DE98C 00000000 */   nop
endlabel func_802DE5E8_25DD28
