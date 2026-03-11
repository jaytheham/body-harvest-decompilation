nonmatching func_802DEED4_25E614, 0x470

glabel func_802DEED4_25E614
    /* 25E614 802DEED4 3C08802E */  lui        $t0, %hi(D_802E0CE8)
    /* 25E618 802DEED8 85080CE8 */  lh         $t0, %lo(D_802E0CE8)($t0)
    /* 25E61C 802DEEDC 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* 25E620 802DEEE0 AFBF003C */  sw         $ra, 0x3C($sp)
    /* 25E624 802DEEE4 290100F0 */  slti       $at, $t0, 0xF0
    /* 25E628 802DEEE8 1420001A */  bnez       $at, .L802DEF54_25E694
    /* 25E62C 802DEEEC 3C09802E */   lui       $t1, %hi(D_802E0CE4)
    /* 25E630 802DEEF0 25290CE4 */  addiu      $t1, $t1, %lo(D_802E0CE4)
    /* 25E634 802DEEF4 852E0000 */  lh         $t6, 0x0($t1)
    /* 25E638 802DEEF8 24010001 */  addiu      $at, $zero, 0x1
    /* 25E63C 802DEEFC 240F00F0 */  addiu      $t7, $zero, 0xF0
    /* 25E640 802DEF00 15C10014 */  bne        $t6, $at, .L802DEF54_25E694
    /* 25E644 802DEF04 240447FE */   addiu     $a0, $zero, 0x47FE
    /* 25E648 802DEF08 A5200000 */  sh         $zero, 0x0($t1)
    /* 25E64C 802DEF0C 3C01802E */  lui        $at, %hi(D_802E0CE8)
    /* 25E650 802DEF10 A42F0CE8 */  sh         $t7, %lo(D_802E0CE8)($at)
    /* 25E654 802DEF14 24050320 */  addiu      $a1, $zero, 0x320
    /* 25E658 802DEF18 24061644 */  addiu      $a2, $zero, 0x1644
    /* 25E65C 802DEF1C 0C04D751 */  jal        func_80135D44_144CF4
    /* 25E660 802DEF20 3C073F80 */   lui       $a3, (0x3F800000 >> 16)
    /* 25E664 802DEF24 3C01802E */  lui        $at, %hi(D_802E0E14)
    /* 25E668 802DEF28 C4240E14 */  lwc1       $f4, %lo(D_802E0E14)($at)
    /* 25E66C 802DEF2C 24181644 */  addiu      $t8, $zero, 0x1644
    /* 25E670 802DEF30 AFB80010 */  sw         $t8, 0x10($sp)
    /* 25E674 802DEF34 00002025 */  or         $a0, $zero, $zero
    /* 25E678 802DEF38 240500E9 */  addiu      $a1, $zero, 0xE9
    /* 25E67C 802DEF3C 240647FE */  addiu      $a2, $zero, 0x47FE
    /* 25E680 802DEF40 24070320 */  addiu      $a3, $zero, 0x320
    /* 25E684 802DEF44 0C04DC6E */  jal        func_801371B8_146168
    /* 25E688 802DEF48 E7A40014 */   swc1      $f4, 0x14($sp)
    /* 25E68C 802DEF4C 3C08802E */  lui        $t0, %hi(D_802E0CE8)
    /* 25E690 802DEF50 85080CE8 */  lh         $t0, %lo(D_802E0CE8)($t0)
  .L802DEF54_25E694:
    /* 25E694 802DEF54 3C09802E */  lui        $t1, %hi(D_802E0CE4)
    /* 25E698 802DEF58 25290CE4 */  addiu      $t1, $t1, %lo(D_802E0CE4)
    /* 25E69C 802DEF5C 1D00001C */  bgtz       $t0, .L802DEFD0_25E710
    /* 25E6A0 802DEF60 85220000 */   lh        $v0, 0x0($t1)
    /* 25E6A4 802DEF64 24010003 */  addiu      $at, $zero, 0x3
    /* 25E6A8 802DEF68 14410019 */  bne        $v0, $at, .L802DEFD0_25E710
    /* 25E6AC 802DEF6C 24190002 */   addiu     $t9, $zero, 0x2
    /* 25E6B0 802DEF70 A5390000 */  sh         $t9, 0x0($t1)
    /* 25E6B4 802DEF74 3C01802E */  lui        $at, %hi(D_802E0CE8)
    /* 25E6B8 802DEF78 A4200CE8 */  sh         $zero, %lo(D_802E0CE8)($at)
    /* 25E6BC 802DEF7C 240447FE */  addiu      $a0, $zero, 0x47FE
    /* 25E6C0 802DEF80 24050320 */  addiu      $a1, $zero, 0x320
    /* 25E6C4 802DEF84 24061644 */  addiu      $a2, $zero, 0x1644
    /* 25E6C8 802DEF88 0C04D751 */  jal        func_80135D44_144CF4
    /* 25E6CC 802DEF8C 3C074040 */   lui       $a3, (0x40400000 >> 16)
    /* 25E6D0 802DEF90 3C01802E */  lui        $at, %hi(D_802E0E18)
    /* 25E6D4 802DEF94 C4260E18 */  lwc1       $f6, %lo(D_802E0E18)($at)
    /* 25E6D8 802DEF98 240D1644 */  addiu      $t5, $zero, 0x1644
    /* 25E6DC 802DEF9C AFAD0010 */  sw         $t5, 0x10($sp)
    /* 25E6E0 802DEFA0 00002025 */  or         $a0, $zero, $zero
    /* 25E6E4 802DEFA4 240500E9 */  addiu      $a1, $zero, 0xE9
    /* 25E6E8 802DEFA8 240647FE */  addiu      $a2, $zero, 0x47FE
    /* 25E6EC 802DEFAC 24070320 */  addiu      $a3, $zero, 0x320
    /* 25E6F0 802DEFB0 0C04DC6E */  jal        func_801371B8_146168
    /* 25E6F4 802DEFB4 E7A60014 */   swc1      $f6, 0x14($sp)
    /* 25E6F8 802DEFB8 3C08802E */  lui        $t0, %hi(D_802E0CE8)
    /* 25E6FC 802DEFBC 3C02802E */  lui        $v0, %hi(D_802E0CE4)
    /* 25E700 802DEFC0 3C09802E */  lui        $t1, %hi(D_802E0CE4)
    /* 25E704 802DEFC4 25290CE4 */  addiu      $t1, $t1, %lo(D_802E0CE4)
    /* 25E708 802DEFC8 84420CE4 */  lh         $v0, %lo(D_802E0CE4)($v0)
    /* 25E70C 802DEFCC 85080CE8 */  lh         $t0, %lo(D_802E0CE8)($t0)
  .L802DEFD0_25E710:
    /* 25E710 802DEFD0 3C038005 */  lui        $v1, %hi(D_80052B34)
    /* 25E714 802DEFD4 8C632B34 */  lw         $v1, %lo(D_80052B34)($v1)
    /* 25E718 802DEFD8 240E47FE */  addiu      $t6, $zero, 0x47FE
    /* 25E71C 802DEFDC 84640000 */  lh         $a0, 0x0($v1)
    /* 25E720 802DEFE0 2485B802 */  addiu      $a1, $a0, -0x47FE
    /* 25E724 802DEFE4 04A00003 */  bltz       $a1, .L802DEFF4_25E734
    /* 25E728 802DEFE8 01C43023 */   subu      $a2, $t6, $a0
    /* 25E72C 802DEFEC 10000001 */  b          .L802DEFF4_25E734
    /* 25E730 802DEFF0 00A03025 */   or        $a2, $a1, $zero
  .L802DEFF4_25E734:
    /* 25E734 802DEFF4 28C104B0 */  slti       $at, $a2, 0x4B0
    /* 25E738 802DEFF8 10200010 */  beqz       $at, .L802DF03C_25E77C
    /* 25E73C 802DEFFC 250D0004 */   addiu     $t5, $t0, 0x4
    /* 25E740 802DF000 84640004 */  lh         $a0, 0x4($v1)
    /* 25E744 802DF004 240F1644 */  addiu      $t7, $zero, 0x1644
    /* 25E748 802DF008 2485E9BC */  addiu      $a1, $a0, -0x1644
    /* 25E74C 802DF00C 04A00003 */  bltz       $a1, .L802DF01C_25E75C
    /* 25E750 802DF010 01E41823 */   subu      $v1, $t7, $a0
    /* 25E754 802DF014 10000001 */  b          .L802DF01C_25E75C
    /* 25E758 802DF018 00A01825 */   or        $v1, $a1, $zero
  .L802DF01C_25E75C:
    /* 25E75C 802DF01C 286104B0 */  slti       $at, $v1, 0x4B0
    /* 25E760 802DF020 10200006 */  beqz       $at, .L802DF03C_25E77C
    /* 25E764 802DF024 24010002 */   addiu     $at, $zero, 0x2
    /* 25E768 802DF028 10410008 */  beq        $v0, $at, .L802DF04C_25E78C
    /* 25E76C 802DF02C 24180003 */   addiu     $t8, $zero, 0x3
    /* 25E770 802DF030 A5380000 */  sh         $t8, 0x0($t1)
    /* 25E774 802DF034 10000005 */  b          .L802DF04C_25E78C
    /* 25E778 802DF038 85220000 */   lh        $v0, 0x0($t1)
  .L802DF03C_25E77C:
    /* 25E77C 802DF03C 10400003 */  beqz       $v0, .L802DF04C_25E78C
    /* 25E780 802DF040 24190001 */   addiu     $t9, $zero, 0x1
    /* 25E784 802DF044 A5390000 */  sh         $t9, 0x0($t1)
    /* 25E788 802DF048 85220000 */  lh         $v0, 0x0($t1)
  .L802DF04C_25E78C:
    /* 25E78C 802DF04C 24010001 */  addiu      $at, $zero, 0x1
    /* 25E790 802DF050 14410010 */  bne        $v0, $at, .L802DF094_25E7D4
    /* 25E794 802DF054 24040064 */   addiu     $a0, $zero, 0x64
    /* 25E798 802DF058 3C01802E */  lui        $at, %hi(D_802E0CE8)
    /* 25E79C 802DF05C A42D0CE8 */  sh         $t5, %lo(D_802E0CE8)($at)
    /* 25E7A0 802DF060 3C01802E */  lui        $at, %hi(D_802E0E1C)
    /* 25E7A4 802DF064 C4280E1C */  lwc1       $f8, %lo(D_802E0E1C)($at)
    /* 25E7A8 802DF068 240E1644 */  addiu      $t6, $zero, 0x1644
    /* 25E7AC 802DF06C AFAE0010 */  sw         $t6, 0x10($sp)
    /* 25E7B0 802DF070 24050138 */  addiu      $a1, $zero, 0x138
    /* 25E7B4 802DF074 240647FE */  addiu      $a2, $zero, 0x47FE
    /* 25E7B8 802DF078 24070320 */  addiu      $a3, $zero, 0x320
    /* 25E7BC 802DF07C 0C04DC6E */  jal        func_801371B8_146168
    /* 25E7C0 802DF080 E7A80014 */   swc1      $f8, 0x14($sp)
    /* 25E7C4 802DF084 3C08802E */  lui        $t0, %hi(D_802E0CE8)
    /* 25E7C8 802DF088 3C02802E */  lui        $v0, %hi(D_802E0CE4)
    /* 25E7CC 802DF08C 84420CE4 */  lh         $v0, %lo(D_802E0CE4)($v0)
    /* 25E7D0 802DF090 85080CE8 */  lh         $t0, %lo(D_802E0CE8)($t0)
  .L802DF094_25E7D4:
    /* 25E7D4 802DF094 24010003 */  addiu      $at, $zero, 0x3
    /* 25E7D8 802DF098 1441000F */  bne        $v0, $at, .L802DF0D8_25E818
    /* 25E7DC 802DF09C 250FFFF4 */   addiu     $t7, $t0, -0xC
    /* 25E7E0 802DF0A0 3C01802E */  lui        $at, %hi(D_802E0CE8)
    /* 25E7E4 802DF0A4 A42F0CE8 */  sh         $t7, %lo(D_802E0CE8)($at)
    /* 25E7E8 802DF0A8 3C01802E */  lui        $at, %hi(D_802E0E20)
    /* 25E7EC 802DF0AC C42A0E20 */  lwc1       $f10, %lo(D_802E0E20)($at)
    /* 25E7F0 802DF0B0 24181644 */  addiu      $t8, $zero, 0x1644
    /* 25E7F4 802DF0B4 AFB80010 */  sw         $t8, 0x10($sp)
    /* 25E7F8 802DF0B8 24040064 */  addiu      $a0, $zero, 0x64
    /* 25E7FC 802DF0BC 24050138 */  addiu      $a1, $zero, 0x138
    /* 25E800 802DF0C0 240647FE */  addiu      $a2, $zero, 0x47FE
    /* 25E804 802DF0C4 24070320 */  addiu      $a3, $zero, 0x320
    /* 25E808 802DF0C8 0C04DC6E */  jal        func_801371B8_146168
    /* 25E80C 802DF0CC E7AA0014 */   swc1      $f10, 0x14($sp)
    /* 25E810 802DF0D0 3C08802E */  lui        $t0, %hi(D_802E0CE8)
    /* 25E814 802DF0D4 85080CE8 */  lh         $t0, %lo(D_802E0CE8)($t0)
  .L802DF0D8_25E818:
    /* 25E818 802DF0D8 241947FE */  addiu      $t9, $zero, 0x47FE
    /* 25E81C 802DF0DC 03286823 */  subu       $t5, $t9, $t0
    /* 25E820 802DF0E0 3C048005 */  lui        $a0, %hi(D_80052B40)
    /* 25E824 802DF0E4 3C068005 */  lui        $a2, %hi(D_80052B50)
    /* 25E828 802DF0E8 24C62B50 */  addiu      $a2, $a2, %lo(D_80052B50)
    /* 25E82C 802DF0EC 24842B40 */  addiu      $a0, $a0, %lo(D_80052B40)
    /* 25E830 802DF0F0 3C038006 */  lui        $v1, %hi(D_8005BB38)
    /* 25E834 802DF0F4 2463BB38 */  addiu      $v1, $v1, %lo(D_8005BB38)
    /* 25E838 802DF0F8 24020100 */  addiu      $v0, $zero, 0x100
    /* 25E83C 802DF0FC 05A10003 */  bgez       $t5, .L802DF10C_25E84C
    /* 25E840 802DF100 000D7083 */   sra       $t6, $t5, 2
    /* 25E844 802DF104 25A10003 */  addiu      $at, $t5, 0x3
    /* 25E848 802DF108 00017083 */  sra        $t6, $at, 2
  .L802DF10C_25E84C:
    /* 25E84C 802DF10C 240F0591 */  addiu      $t7, $zero, 0x591
    /* 25E850 802DF110 241800C8 */  addiu      $t8, $zero, 0xC8
    /* 25E854 802DF114 24190200 */  addiu      $t9, $zero, 0x200
    /* 25E858 802DF118 A48E0000 */  sh         $t6, 0x0($a0)
    /* 25E85C 802DF11C A48F0004 */  sh         $t7, 0x4($a0)
    /* 25E860 802DF120 A4980002 */  sh         $t8, 0x2($a0)
    /* 25E864 802DF124 A4D90000 */  sh         $t9, 0x0($a2)
    /* 25E868 802DF128 A4C20002 */  sh         $v0, 0x2($a2)
    /* 25E86C 802DF12C A4C20004 */  sh         $v0, 0x4($a2)
    /* 25E870 802DF130 8C670000 */  lw         $a3, 0x0($v1)
    /* 25E874 802DF134 0C000E74 */  jal        func_800039D0_45D0
    /* 25E878 802DF138 00002825 */   or        $a1, $zero, $zero
    /* 25E87C 802DF13C 3C088006 */  lui        $t0, %hi(D_8005BB2C)
    /* 25E880 802DF140 2508BB2C */  addiu      $t0, $t0, %lo(D_8005BB2C)
    /* 25E884 802DF144 8D090000 */  lw         $t1, 0x0($t0)
    /* 25E888 802DF148 3C0E0102 */  lui        $t6, (0x1020040 >> 16)
    /* 25E88C 802DF14C 3C038006 */  lui        $v1, %hi(D_8005BB38)
    /* 25E890 802DF150 252D0008 */  addiu      $t5, $t1, 0x8
    /* 25E894 802DF154 AD0D0000 */  sw         $t5, 0x0($t0)
    /* 25E898 802DF158 35CE0040 */  ori        $t6, $t6, (0x1020040 & 0xFFFF)
    /* 25E89C 802DF15C 2463BB38 */  addiu      $v1, $v1, %lo(D_8005BB38)
    /* 25E8A0 802DF160 AD2E0000 */  sw         $t6, 0x0($t1)
    /* 25E8A4 802DF164 8C6F0000 */  lw         $t7, 0x0($v1)
    /* 25E8A8 802DF168 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 25E8AC 802DF16C 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 25E8B0 802DF170 01E1C024 */  and        $t8, $t7, $at
    /* 25E8B4 802DF174 AD380004 */  sw         $t8, 0x4($t1)
    /* 25E8B8 802DF178 8C790000 */  lw         $t9, 0x0($v1)
    /* 25E8BC 802DF17C 8D020000 */  lw         $v0, 0x0($t0)
    /* 25E8C0 802DF180 3C0B0505 */  lui        $t3, %hi(D_504FD38)
    /* 25E8C4 802DF184 272D0040 */  addiu      $t5, $t9, 0x40
    /* 25E8C8 802DF188 244E0008 */  addiu      $t6, $v0, 0x8
    /* 25E8CC 802DF18C AC6D0000 */  sw         $t5, 0x0($v1)
    /* 25E8D0 802DF190 AD0E0000 */  sw         $t6, 0x0($t0)
    /* 25E8D4 802DF194 256BFD38 */  addiu      $t3, $t3, %lo(D_504FD38)
    /* 25E8D8 802DF198 3C0F0600 */  lui        $t7, (0x6000000 >> 16)
    /* 25E8DC 802DF19C 3C18802E */  lui        $t8, %hi(D_802E0CE8)
    /* 25E8E0 802DF1A0 AC4F0000 */  sw         $t7, 0x0($v0)
    /* 25E8E4 802DF1A4 AC4B0004 */  sw         $t3, 0x4($v0)
    /* 25E8E8 802DF1A8 87180CE8 */  lh         $t8, %lo(D_802E0CE8)($t8)
    /* 25E8EC 802DF1AC 3C048005 */  lui        $a0, %hi(D_80052B40)
    /* 25E8F0 802DF1B0 3C058005 */  lui        $a1, %hi(D_80052B48)
    /* 25E8F4 802DF1B4 271947FE */  addiu      $t9, $t8, 0x47FE
    /* 25E8F8 802DF1B8 24A52B48 */  addiu      $a1, $a1, %lo(D_80052B48)
    /* 25E8FC 802DF1BC 24842B40 */  addiu      $a0, $a0, %lo(D_80052B40)
    /* 25E900 802DF1C0 3C068005 */  lui        $a2, %hi(D_80052B50)
    /* 25E904 802DF1C4 240E0593 */  addiu      $t6, $zero, 0x593
    /* 25E908 802DF1C8 240F00C8 */  addiu      $t7, $zero, 0xC8
    /* 25E90C 802DF1CC 34188000 */  ori        $t8, $zero, 0x8000
    /* 25E910 802DF1D0 24C62B50 */  addiu      $a2, $a2, %lo(D_80052B50)
    /* 25E914 802DF1D4 A48E0004 */  sh         $t6, 0x4($a0)
    /* 25E918 802DF1D8 A48F0002 */  sh         $t7, 0x2($a0)
    /* 25E91C 802DF1DC A4B80000 */  sh         $t8, 0x0($a1)
    /* 25E920 802DF1E0 A4A00002 */  sh         $zero, 0x2($a1)
    /* 25E924 802DF1E4 A4A00004 */  sh         $zero, 0x4($a1)
    /* 25E928 802DF1E8 AFAB0044 */  sw         $t3, 0x44($sp)
    /* 25E92C 802DF1EC 8C670000 */  lw         $a3, 0x0($v1)
    /* 25E930 802DF1F0 00405025 */  or         $t2, $v0, $zero
    /* 25E934 802DF1F4 07210003 */  bgez       $t9, .L802DF204_25E944
    /* 25E938 802DF1F8 00196883 */   sra       $t5, $t9, 2
    /* 25E93C 802DF1FC 27210003 */  addiu      $at, $t9, 0x3
    /* 25E940 802DF200 00016883 */  sra        $t5, $at, 2
  .L802DF204_25E944:
    /* 25E944 802DF204 0C000E74 */  jal        func_800039D0_45D0
    /* 25E948 802DF208 A48D0000 */   sh        $t5, 0x0($a0)
    /* 25E94C 802DF20C 3C088006 */  lui        $t0, %hi(D_8005BB2C)
    /* 25E950 802DF210 2508BB2C */  addiu      $t0, $t0, %lo(D_8005BB2C)
    /* 25E954 802DF214 8D020000 */  lw         $v0, 0x0($t0)
    /* 25E958 802DF218 3C0D0102 */  lui        $t5, (0x1020040 >> 16)
    /* 25E95C 802DF21C 8FAB0044 */  lw         $t3, 0x44($sp)
    /* 25E960 802DF220 24590008 */  addiu      $t9, $v0, 0x8
    /* 25E964 802DF224 3C038006 */  lui        $v1, %hi(D_8005BB38)
    /* 25E968 802DF228 AD190000 */  sw         $t9, 0x0($t0)
    /* 25E96C 802DF22C 35AD0040 */  ori        $t5, $t5, (0x1020040 & 0xFFFF)
    /* 25E970 802DF230 2463BB38 */  addiu      $v1, $v1, %lo(D_8005BB38)
    /* 25E974 802DF234 AC4D0000 */  sw         $t5, 0x0($v0)
    /* 25E978 802DF238 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 25E97C 802DF23C 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 25E980 802DF240 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 25E984 802DF244 01C17824 */  and        $t7, $t6, $at
    /* 25E988 802DF248 AC4F0004 */  sw         $t7, 0x4($v0)
    /* 25E98C 802DF24C 8C780000 */  lw         $t8, 0x0($v1)
    /* 25E990 802DF250 8D020000 */  lw         $v0, 0x0($t0)
    /* 25E994 802DF254 3C0E0600 */  lui        $t6, (0x6000000 >> 16)
    /* 25E998 802DF258 27190040 */  addiu      $t9, $t8, 0x40
    /* 25E99C 802DF25C 244D0008 */  addiu      $t5, $v0, 0x8
    /* 25E9A0 802DF260 AC790000 */  sw         $t9, 0x0($v1)
    /* 25E9A4 802DF264 AD0D0000 */  sw         $t5, 0x0($t0)
    /* 25E9A8 802DF268 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 25E9AC 802DF26C AC4B0004 */  sw         $t3, 0x4($v0)
    /* 25E9B0 802DF270 3C0F802E */  lui        $t7, %hi(D_802E0CE8)
    /* 25E9B4 802DF274 85EF0CE8 */  lh         $t7, %lo(D_802E0CE8)($t7)
    /* 25E9B8 802DF278 24184727 */  addiu      $t8, $zero, 0x4727
    /* 25E9BC 802DF27C 3C0C8013 */  lui        $t4, %hi(func_8012E1F8_13D1A8)
    /* 25E9C0 802DF280 030F3023 */  subu       $a2, $t8, $t7
    /* 25E9C4 802DF284 0006CC00 */  sll        $t9, $a2, 16
    /* 25E9C8 802DF288 00193403 */  sra        $a2, $t9, 16
    /* 25E9CC 802DF28C 2419016C */  addiu      $t9, $zero, 0x16C
    /* 25E9D0 802DF290 240F0016 */  addiu      $t7, $zero, 0x16
    /* 25E9D4 802DF294 241800D8 */  addiu      $t8, $zero, 0xD8
    /* 25E9D8 802DF298 258CE1F8 */  addiu      $t4, $t4, %lo(func_8012E1F8_13D1A8)
    /* 25E9DC 802DF29C 240E1644 */  addiu      $t6, $zero, 0x1644
    /* 25E9E0 802DF2A0 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 25E9E4 802DF2A4 AFAC0030 */  sw         $t4, 0x30($sp)
    /* 25E9E8 802DF2A8 AFAC0040 */  sw         $t4, 0x40($sp)
    /* 25E9EC 802DF2AC AFB80020 */  sw         $t8, 0x20($sp)
    /* 25E9F0 802DF2B0 AFAF0024 */  sw         $t7, 0x24($sp)
    /* 25E9F4 802DF2B4 AFB90028 */  sw         $t9, 0x28($sp)
    /* 25E9F8 802DF2B8 AFA0002C */  sw         $zero, 0x2C($sp)
    /* 25E9FC 802DF2BC AFA0001C */  sw         $zero, 0x1C($sp)
    /* 25EA00 802DF2C0 AFA00018 */  sw         $zero, 0x18($sp)
    /* 25EA04 802DF2C4 AFA00014 */  sw         $zero, 0x14($sp)
    /* 25EA08 802DF2C8 24040001 */  addiu      $a0, $zero, 0x1
    /* 25EA0C 802DF2CC 24050064 */  addiu      $a1, $zero, 0x64
    /* 25EA10 802DF2D0 0C04B5C0 */  jal        func_8012D700_13C6B0
    /* 25EA14 802DF2D4 24070320 */   addiu     $a3, $zero, 0x320
    /* 25EA18 802DF2D8 3C06802E */  lui        $a2, %hi(D_802E0CE8)
    /* 25EA1C 802DF2DC 84C60CE8 */  lh         $a2, %lo(D_802E0CE8)($a2)
    /* 25EA20 802DF2E0 8FAC0040 */  lw         $t4, 0x40($sp)
    /* 25EA24 802DF2E4 24181644 */  addiu      $t8, $zero, 0x1644
    /* 25EA28 802DF2E8 24C648D5 */  addiu      $a2, $a2, 0x48D5
    /* 25EA2C 802DF2EC 00066C00 */  sll        $t5, $a2, 16
    /* 25EA30 802DF2F0 000D3403 */  sra        $a2, $t5, 16
    /* 25EA34 802DF2F4 240D016C */  addiu      $t5, $zero, 0x16C
    /* 25EA38 802DF2F8 240F00D8 */  addiu      $t7, $zero, 0xD8
    /* 25EA3C 802DF2FC 24190016 */  addiu      $t9, $zero, 0x16
    /* 25EA40 802DF300 AFB90024 */  sw         $t9, 0x24($sp)
    /* 25EA44 802DF304 AFAF0020 */  sw         $t7, 0x20($sp)
    /* 25EA48 802DF308 AFAD0028 */  sw         $t5, 0x28($sp)
    /* 25EA4C 802DF30C AFB80010 */  sw         $t8, 0x10($sp)
    /* 25EA50 802DF310 24040001 */  addiu      $a0, $zero, 0x1
    /* 25EA54 802DF314 24050065 */  addiu      $a1, $zero, 0x65
    /* 25EA58 802DF318 24070320 */  addiu      $a3, $zero, 0x320
    /* 25EA5C 802DF31C AFA00014 */  sw         $zero, 0x14($sp)
    /* 25EA60 802DF320 AFA00018 */  sw         $zero, 0x18($sp)
    /* 25EA64 802DF324 AFA0001C */  sw         $zero, 0x1C($sp)
    /* 25EA68 802DF328 AFA0002C */  sw         $zero, 0x2C($sp)
    /* 25EA6C 802DF32C 0C04B5C0 */  jal        func_8012D700_13C6B0
    /* 25EA70 802DF330 AFAC0030 */   sw        $t4, 0x30($sp)
    /* 25EA74 802DF334 8FBF003C */  lw         $ra, 0x3C($sp)
    /* 25EA78 802DF338 27BD0060 */  addiu      $sp, $sp, 0x60
    /* 25EA7C 802DF33C 03E00008 */  jr         $ra
    /* 25EA80 802DF340 00000000 */   nop
endlabel func_802DEED4_25E614
    /* 25EA84 802DF344 00000000 */  nop
    /* 25EA88 802DF348 00000000 */  nop
    /* 25EA8C 802DF34C 00000000 */  nop
