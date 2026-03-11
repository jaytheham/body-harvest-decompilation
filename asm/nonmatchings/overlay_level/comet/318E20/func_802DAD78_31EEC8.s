nonmatching func_802DAD78_31EEC8, 0x45C

glabel func_802DAD78_31EEC8
    /* 31EEC8 802DAD78 308E00FF */  andi       $t6, $a0, 0xFF
    /* 31EECC 802DAD7C 000E7880 */  sll        $t7, $t6, 2
    /* 31EED0 802DAD80 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* 31EED4 802DAD84 01EE7821 */  addu       $t7, $t7, $t6
    /* 31EED8 802DAD88 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 31EEDC 802DAD8C AFB00028 */  sw         $s0, 0x28($sp)
    /* 31EEE0 802DAD90 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 31EEE4 802DAD94 000F7900 */  sll        $t7, $t7, 4
    /* 31EEE8 802DAD98 01F88021 */  addu       $s0, $t7, $t8
    /* 31EEEC 802DAD9C 8607000C */  lh         $a3, 0xC($s0)
    /* 31EEF0 802DADA0 3C098015 */  lui        $t1, %hi(D_8014DD50)
    /* 31EEF4 802DADA4 2529DD50 */  addiu      $t1, $t1, %lo(D_8014DD50)
    /* 31EEF8 802DADA8 0007C900 */  sll        $t9, $a3, 4
    /* 31EEFC 802DADAC 01396021 */  addu       $t4, $t1, $t9
    /* 31EF00 802DADB0 8188000C */  lb         $t0, 0xC($t4)
    /* 31EF04 802DADB4 AFA40060 */  sw         $a0, 0x60($sp)
    /* 31EF08 802DADB8 01C02025 */  or         $a0, $t6, $zero
    /* 31EF0C 802DADBC 00086900 */  sll        $t5, $t0, 4
    /* 31EF10 802DADC0 012D7021 */  addu       $t6, $t1, $t5
    /* 31EF14 802DADC4 81CA000D */  lb         $t2, 0xD($t6)
    /* 31EF18 802DADC8 AFBF002C */  sw         $ra, 0x2C($sp)
    /* 31EF1C 802DADCC A3A40063 */  sb         $a0, 0x63($sp)
    /* 31EF20 802DADD0 000A7900 */  sll        $t7, $t2, 4
    /* 31EF24 802DADD4 012F1021 */  addu       $v0, $t1, $t7
    /* 31EF28 802DADD8 804B000D */  lb         $t3, 0xD($v0)
    /* 31EF2C 802DADDC 8058000C */  lb         $t8, 0xC($v0)
    /* 31EF30 802DADE0 24050320 */  addiu      $a1, $zero, 0x320
    /* 31EF34 802DADE4 000BC900 */  sll        $t9, $t3, 4
    /* 31EF38 802DADE8 01391821 */  addu       $v1, $t1, $t9
    /* 31EF3C 802DADEC 806C000C */  lb         $t4, 0xC($v1)
    /* 31EF40 802DADF0 806D000D */  lb         $t5, 0xD($v1)
    /* 31EF44 802DADF4 24060384 */  addiu      $a2, $zero, 0x384
    /* 31EF48 802DADF8 A7A8005C */  sh         $t0, 0x5C($sp)
    /* 31EF4C 802DADFC A7AA0054 */  sh         $t2, 0x54($sp)
    /* 31EF50 802DAE00 A7AB0058 */  sh         $t3, 0x58($sp)
    /* 31EF54 802DAE04 A7B80052 */  sh         $t8, 0x52($sp)
    /* 31EF58 802DAE08 A7AC0056 */  sh         $t4, 0x56($sp)
    /* 31EF5C 802DAE0C 0C021DFA */  jal        func_800877E8_96798
    /* 31EF60 802DAE10 A7AD0050 */   sh        $t5, 0x50($sp)
    /* 31EF64 802DAE14 8E030020 */  lw         $v1, 0x20($s0)
    /* 31EF68 802DAE18 93A40063 */  lbu        $a0, 0x63($sp)
    /* 31EF6C 802DAE1C 87A50054 */  lh         $a1, 0x54($sp)
    /* 31EF70 802DAE20 306E3000 */  andi       $t6, $v1, 0x3000
    /* 31EF74 802DAE24 55C00009 */  bnel       $t6, $zero, .L802DAE4C_31EF9C
    /* 31EF78 802DAE28 306F4000 */   andi      $t7, $v1, 0x4000
    /* 31EF7C 802DAE2C 0C02429B */  jal        func_80090A6C_9FA1C
    /* 31EF80 802DAE30 240607D0 */   addiu     $a2, $zero, 0x7D0
    /* 31EF84 802DAE34 93A40063 */  lbu        $a0, 0x63($sp)
    /* 31EF88 802DAE38 87A50058 */  lh         $a1, 0x58($sp)
    /* 31EF8C 802DAE3C 0C02429B */  jal        func_80090A6C_9FA1C
    /* 31EF90 802DAE40 240607D0 */   addiu     $a2, $zero, 0x7D0
    /* 31EF94 802DAE44 8E030020 */  lw         $v1, 0x20($s0)
    /* 31EF98 802DAE48 306F4000 */  andi       $t7, $v1, 0x4000
  .L802DAE4C_31EF9C:
    /* 31EF9C 802DAE4C 15E00004 */  bnez       $t7, .L802DAE60_31EFB0
    /* 31EFA0 802DAE50 93A40063 */   lbu       $a0, 0x63($sp)
    /* 31EFA4 802DAE54 87A50050 */  lh         $a1, 0x50($sp)
    /* 31EFA8 802DAE58 0C02429B */  jal        func_80090A6C_9FA1C
    /* 31EFAC 802DAE5C 24060FA0 */   addiu     $a2, $zero, 0xFA0
  .L802DAE60_31EFB0:
    /* 31EFB0 802DAE60 86180012 */  lh         $t8, 0x12($s0)
    /* 31EFB4 802DAE64 240607D0 */  addiu      $a2, $zero, 0x7D0
    /* 31EFB8 802DAE68 93A40063 */  lbu        $a0, 0x63($sp)
    /* 31EFBC 802DAE6C 1B000006 */  blez       $t8, .L802DAE88_31EFD8
    /* 31EFC0 802DAE70 87A5005C */   lh        $a1, 0x5C($sp)
    /* 31EFC4 802DAE74 93A40063 */  lbu        $a0, 0x63($sp)
    /* 31EFC8 802DAE78 0C02429B */  jal        func_80090A6C_9FA1C
    /* 31EFCC 802DAE7C 87A5005C */   lh        $a1, 0x5C($sp)
    /* 31EFD0 802DAE80 10000003 */  b          .L802DAE90_31EFE0
    /* 31EFD4 802DAE84 00000000 */   nop
  .L802DAE88_31EFD8:
    /* 31EFD8 802DAE88 0C02188C */  jal        func_80086230_951E0
    /* 31EFDC 802DAE8C 24062000 */   addiu     $a2, $zero, 0x2000
  .L802DAE90_31EFE0:
    /* 31EFE0 802DAE90 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 31EFE4 802DAE94 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 31EFE8 802DAE98 0C021395 */  jal        func_80084E54_93E04
    /* 31EFEC 802DAE9C 02002825 */   or        $a1, $s0, $zero
    /* 31EFF0 802DAEA0 2841044C */  slti       $at, $v0, 0x44C
    /* 31EFF4 802DAEA4 14200012 */  bnez       $at, .L802DAEF0_31F040
    /* 31EFF8 802DAEA8 AFA20048 */   sw        $v0, 0x48($sp)
    /* 31EFFC 802DAEAC 8E190020 */  lw         $t9, 0x20($s0)
    /* 31F000 802DAEB0 332C7000 */  andi       $t4, $t9, 0x7000
    /* 31F004 802DAEB4 5580000F */  bnel       $t4, $zero, .L802DAEF4_31F044
    /* 31F008 802DAEB8 8E180020 */   lw        $t8, 0x20($s0)
    /* 31F00C 802DAEBC 860D001E */  lh         $t5, 0x1E($s0)
    /* 31F010 802DAEC0 93A40063 */  lbu        $a0, 0x63($sp)
    /* 31F014 802DAEC4 55A0000B */  bnel       $t5, $zero, .L802DAEF4_31F044
    /* 31F018 802DAEC8 8E180020 */   lw        $t8, 0x20($s0)
    /* 31F01C 802DAECC 0C0213FA */  jal        func_80084FE8_93F98
    /* 31F020 802DAED0 24050400 */   addiu     $a1, $zero, 0x400
    /* 31F024 802DAED4 50400007 */  beql       $v0, $zero, .L802DAEF4_31F044
    /* 31F028 802DAED8 8E180020 */   lw        $t8, 0x20($s0)
    /* 31F02C 802DAEDC 8E0E0020 */  lw         $t6, 0x20($s0)
    /* 31F030 802DAEE0 A2000036 */  sb         $zero, 0x36($s0)
    /* 31F034 802DAEE4 35C34000 */  ori        $v1, $t6, 0x4000
    /* 31F038 802DAEE8 10000035 */  b          .L802DAFC0_31F110
    /* 31F03C 802DAEEC AE030020 */   sw        $v1, 0x20($s0)
  .L802DAEF0_31F040:
    /* 31F040 802DAEF0 8E180020 */  lw         $t8, 0x20($s0)
  .L802DAEF4_31F044:
    /* 31F044 802DAEF4 93A40063 */  lbu        $a0, 0x63($sp)
    /* 31F048 802DAEF8 33197000 */  andi       $t9, $t8, 0x7000
    /* 31F04C 802DAEFC 5720000F */  bnel       $t9, $zero, .L802DAF3C_31F08C
    /* 31F050 802DAF00 860F002C */   lh        $t7, 0x2C($s0)
    /* 31F054 802DAF04 0C0213FA */  jal        func_80084FE8_93F98
    /* 31F058 802DAF08 24050400 */   addiu     $a1, $zero, 0x400
    /* 31F05C 802DAF0C 1040000A */  beqz       $v0, .L802DAF38_31F088
    /* 31F060 802DAF10 8FAC0048 */   lw        $t4, 0x48($sp)
    /* 31F064 802DAF14 2981044C */  slti       $at, $t4, 0x44C
    /* 31F068 802DAF18 50200008 */  beql       $at, $zero, .L802DAF3C_31F08C
    /* 31F06C 802DAF1C 860F002C */   lh        $t7, 0x2C($s0)
    /* 31F070 802DAF20 8E0D0020 */  lw         $t5, 0x20($s0)
    /* 31F074 802DAF24 A600002C */  sh         $zero, 0x2C($s0)
    /* 31F078 802DAF28 A2000036 */  sb         $zero, 0x36($s0)
    /* 31F07C 802DAF2C 35A32000 */  ori        $v1, $t5, 0x2000
    /* 31F080 802DAF30 10000023 */  b          .L802DAFC0_31F110
    /* 31F084 802DAF34 AE030020 */   sw        $v1, 0x20($s0)
  .L802DAF38_31F088:
    /* 31F088 802DAF38 860F002C */  lh         $t7, 0x2C($s0)
  .L802DAF3C_31F08C:
    /* 31F08C 802DAF3C 8E030020 */  lw         $v1, 0x20($s0)
    /* 31F090 802DAF40 15E0001F */  bnez       $t7, .L802DAFC0_31F110
    /* 31F094 802DAF44 30781000 */   andi      $t8, $v1, 0x1000
    /* 31F098 802DAF48 13000004 */  beqz       $t8, .L802DAF5C_31F0AC
    /* 31F09C 802DAF4C 2401EFFF */   addiu     $at, $zero, -0x1001
    /* 31F0A0 802DAF50 0061C824 */  and        $t9, $v1, $at
    /* 31F0A4 802DAF54 AE190020 */  sw         $t9, 0x20($s0)
    /* 31F0A8 802DAF58 03201825 */  or         $v1, $t9, $zero
  .L802DAF5C_31F0AC:
    /* 31F0AC 802DAF5C 306C2000 */  andi       $t4, $v1, 0x2000
    /* 31F0B0 802DAF60 11800017 */  beqz       $t4, .L802DAFC0_31F110
    /* 31F0B4 802DAF64 24020029 */   addiu     $v0, $zero, 0x29
    /* 31F0B8 802DAF68 2401DFFF */  addiu      $at, $zero, -0x2001
    /* 31F0BC 802DAF6C 00616824 */  and        $t5, $v1, $at
    /* 31F0C0 802DAF70 AE0D0020 */  sw         $t5, 0x20($s0)
    /* 31F0C4 802DAF74 35AF1000 */  ori        $t7, $t5, 0x1000
    /* 31F0C8 802DAF78 87AD0056 */  lh         $t5, 0x56($sp)
    /* 31F0CC 802DAF7C 3C01FBFF */  lui        $at, (0xFBFFFFFF >> 16)
    /* 31F0D0 802DAF80 3C048015 */  lui        $a0, %hi(D_8014DD50)
    /* 31F0D4 802DAF84 3421FFFF */  ori        $at, $at, (0xFBFFFFFF & 0xFFFF)
    /* 31F0D8 802DAF88 2484DD50 */  addiu      $a0, $a0, %lo(D_8014DD50)
    /* 31F0DC 802DAF8C AE0F0020 */  sw         $t7, 0x20($s0)
    /* 31F0E0 802DAF90 01E16024 */  and        $t4, $t7, $at
    /* 31F0E4 802DAF94 000D7100 */  sll        $t6, $t5, 4
    /* 31F0E8 802DAF98 2418003C */  addiu      $t8, $zero, 0x3C
    /* 31F0EC 802DAF9C 008E7821 */  addu       $t7, $a0, $t6
    /* 31F0F0 802DAFA0 A618002C */  sh         $t8, 0x2C($s0)
    /* 31F0F4 802DAFA4 A5E20004 */  sh         $v0, 0x4($t7)
    /* 31F0F8 802DAFA8 87B80052 */  lh         $t8, 0x52($sp)
    /* 31F0FC 802DAFAC AE0C0020 */  sw         $t4, 0x20($s0)
    /* 31F100 802DAFB0 0018C900 */  sll        $t9, $t8, 4
    /* 31F104 802DAFB4 00996021 */  addu       $t4, $a0, $t9
    /* 31F108 802DAFB8 A5820004 */  sh         $v0, 0x4($t4)
    /* 31F10C 802DAFBC 8E030020 */  lw         $v1, 0x20($s0)
  .L802DAFC0_31F110:
    /* 31F110 802DAFC0 306D2000 */  andi       $t5, $v1, 0x2000
    /* 31F114 802DAFC4 51A0006B */  beql       $t5, $zero, .L802DB174_31F2C4
    /* 31F118 802DAFC8 87AF0052 */   lh        $t7, 0x52($sp)
    /* 31F11C 802DAFCC 860E002C */  lh         $t6, 0x2C($s0)
    /* 31F120 802DAFD0 87AF0056 */  lh         $t7, 0x56($sp)
    /* 31F124 802DAFD4 3C198015 */  lui        $t9, %hi(D_8014DD50)
    /* 31F128 802DAFD8 29C10028 */  slti       $at, $t6, 0x28
    /* 31F12C 802DAFDC 10200064 */  beqz       $at, .L802DB170_31F2C0
    /* 31F130 802DAFE0 000FC100 */   sll       $t8, $t7, 4
    /* 31F134 802DAFE4 87AD0052 */  lh         $t5, 0x52($sp)
    /* 31F138 802DAFE8 2739DD50 */  addiu      $t9, $t9, %lo(D_8014DD50)
    /* 31F13C 802DAFEC 03196021 */  addu       $t4, $t8, $t9
    /* 31F140 802DAFF0 000D7100 */  sll        $t6, $t5, 4
    /* 31F144 802DAFF4 01D97821 */  addu       $t7, $t6, $t9
    /* 31F148 802DAFF8 AFAF0030 */  sw         $t7, 0x30($sp)
    /* 31F14C 802DAFFC 0C000E38 */  jal        func_800038E0_44E0
    /* 31F150 802DB000 AFAC0034 */   sw        $t4, 0x34($sp)
    /* 31F154 802DB004 0002C080 */  sll        $t8, $v0, 2
    /* 31F158 802DB008 0302C021 */  addu       $t8, $t8, $v0
    /* 31F15C 802DB00C 0018C040 */  sll        $t8, $t8, 1
    /* 31F160 802DB010 24010014 */  addiu      $at, $zero, 0x14
    /* 31F164 802DB014 0301001A */  div        $zero, $t8, $at
    /* 31F168 802DB018 8FAE0034 */  lw         $t6, 0x34($sp)
    /* 31F16C 802DB01C 00006010 */  mfhi       $t4
    /* 31F170 802DB020 258D0029 */  addiu      $t5, $t4, 0x29
    /* 31F174 802DB024 0C000E38 */  jal        func_800038E0_44E0
    /* 31F178 802DB028 A5CD0004 */   sh        $t5, 0x4($t6)
    /* 31F17C 802DB02C 0002C880 */  sll        $t9, $v0, 2
    /* 31F180 802DB030 0322C821 */  addu       $t9, $t9, $v0
    /* 31F184 802DB034 0019C840 */  sll        $t9, $t9, 1
    /* 31F188 802DB038 24010014 */  addiu      $at, $zero, 0x14
    /* 31F18C 802DB03C 0321001A */  div        $zero, $t9, $at
    /* 31F190 802DB040 8FAC0030 */  lw         $t4, 0x30($sp)
    /* 31F194 802DB044 00007810 */  mfhi       $t7
    /* 31F198 802DB048 25F80029 */  addiu      $t8, $t7, 0x29
    /* 31F19C 802DB04C A5980004 */  sh         $t8, 0x4($t4)
    /* 31F1A0 802DB050 A6000012 */  sh         $zero, 0x12($s0)
    /* 31F1A4 802DB054 93A40063 */  lbu        $a0, 0x63($sp)
    /* 31F1A8 802DB058 0C04DD1A */  jal        func_80137468_146418
    /* 31F1AC 802DB05C 24050261 */   addiu     $a1, $zero, 0x261
    /* 31F1B0 802DB060 860D002C */  lh         $t5, 0x2C($s0)
    /* 31F1B4 802DB064 3C0F8025 */  lui        $t7, %hi(alienSpecs)
    /* 31F1B8 802DB068 25EF6680 */  addiu      $t7, $t7, %lo(alienSpecs)
    /* 31F1BC 802DB06C 29A10006 */  slti       $at, $t5, 0x6
    /* 31F1C0 802DB070 1420003F */  bnez       $at, .L802DB170_31F2C0
    /* 31F1C4 802DB074 02002025 */   or        $a0, $s0, $zero
    /* 31F1C8 802DB078 920E001A */  lbu        $t6, 0x1A($s0)
    /* 31F1CC 802DB07C 27B80044 */  addiu      $t8, $sp, 0x44
    /* 31F1D0 802DB080 27AC0040 */  addiu      $t4, $sp, 0x40
    /* 31F1D4 802DB084 000EC880 */  sll        $t9, $t6, 2
    /* 31F1D8 802DB088 032EC823 */  subu       $t9, $t9, $t6
    /* 31F1DC 802DB08C 0019C880 */  sll        $t9, $t9, 2
    /* 31F1E0 802DB090 032EC821 */  addu       $t9, $t9, $t6
    /* 31F1E4 802DB094 0019C8C0 */  sll        $t9, $t9, 3
    /* 31F1E8 802DB098 032F1021 */  addu       $v0, $t9, $t7
    /* 31F1EC 802DB09C 27AD003C */  addiu      $t5, $sp, 0x3C
    /* 31F1F0 802DB0A0 AFAD0018 */  sw         $t5, 0x18($sp)
    /* 31F1F4 802DB0A4 84450020 */  lh         $a1, 0x20($v0)
    /* 31F1F8 802DB0A8 84460022 */  lh         $a2, 0x22($v0)
    /* 31F1FC 802DB0AC 84470024 */  lh         $a3, 0x24($v0)
    /* 31F200 802DB0B0 AFAC0014 */  sw         $t4, 0x14($sp)
    /* 31F204 802DB0B4 0C04A10A */  jal        func_80128428_1373D8
    /* 31F208 802DB0B8 AFB80010 */   sw        $t8, 0x10($sp)
    /* 31F20C 802DB0BC 240E0003 */  addiu      $t6, $zero, 0x3
    /* 31F210 802DB0C0 2419000F */  addiu      $t9, $zero, 0xF
    /* 31F214 802DB0C4 240F000A */  addiu      $t7, $zero, 0xA
    /* 31F218 802DB0C8 AFAF0018 */  sw         $t7, 0x18($sp)
    /* 31F21C 802DB0CC AFB90014 */  sw         $t9, 0x14($sp)
    /* 31F220 802DB0D0 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 31F224 802DB0D4 87A40046 */  lh         $a0, 0x46($sp)
    /* 31F228 802DB0D8 87A50042 */  lh         $a1, 0x42($sp)
    /* 31F22C 802DB0DC 87A6003E */  lh         $a2, 0x3E($sp)
    /* 31F230 802DB0E0 0C0315A9 */  jal        func_800C56A4_D4654
    /* 31F234 802DB0E4 240700C8 */   addiu     $a3, $zero, 0xC8
    /* 31F238 802DB0E8 9218001A */  lbu        $t8, 0x1A($s0)
    /* 31F23C 802DB0EC 3C0D8025 */  lui        $t5, %hi(alienSpecs)
    /* 31F240 802DB0F0 25AD6680 */  addiu      $t5, $t5, %lo(alienSpecs)
    /* 31F244 802DB0F4 00186080 */  sll        $t4, $t8, 2
    /* 31F248 802DB0F8 01986023 */  subu       $t4, $t4, $t8
    /* 31F24C 802DB0FC 000C6080 */  sll        $t4, $t4, 2
    /* 31F250 802DB100 01986021 */  addu       $t4, $t4, $t8
    /* 31F254 802DB104 000C60C0 */  sll        $t4, $t4, 3
    /* 31F258 802DB108 018D1021 */  addu       $v0, $t4, $t5
    /* 31F25C 802DB10C 84450020 */  lh         $a1, 0x20($v0)
    /* 31F260 802DB110 27AC003C */  addiu      $t4, $sp, 0x3C
    /* 31F264 802DB114 27B80040 */  addiu      $t8, $sp, 0x40
    /* 31F268 802DB118 00052823 */  negu       $a1, $a1
    /* 31F26C 802DB11C 00057400 */  sll        $t6, $a1, 16
    /* 31F270 802DB120 27AF0044 */  addiu      $t7, $sp, 0x44
    /* 31F274 802DB124 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 31F278 802DB128 000E2C03 */  sra        $a1, $t6, 16
    /* 31F27C 802DB12C AFB80014 */  sw         $t8, 0x14($sp)
    /* 31F280 802DB130 AFAC0018 */  sw         $t4, 0x18($sp)
    /* 31F284 802DB134 84460022 */  lh         $a2, 0x22($v0)
    /* 31F288 802DB138 84470024 */  lh         $a3, 0x24($v0)
    /* 31F28C 802DB13C 0C04A10A */  jal        func_80128428_1373D8
    /* 31F290 802DB140 02002025 */   or        $a0, $s0, $zero
    /* 31F294 802DB144 240D0003 */  addiu      $t5, $zero, 0x3
    /* 31F298 802DB148 240E000F */  addiu      $t6, $zero, 0xF
    /* 31F29C 802DB14C 2419000A */  addiu      $t9, $zero, 0xA
    /* 31F2A0 802DB150 AFB90018 */  sw         $t9, 0x18($sp)
    /* 31F2A4 802DB154 AFAE0014 */  sw         $t6, 0x14($sp)
    /* 31F2A8 802DB158 AFAD0010 */  sw         $t5, 0x10($sp)
    /* 31F2AC 802DB15C 87A40046 */  lh         $a0, 0x46($sp)
    /* 31F2B0 802DB160 87A50042 */  lh         $a1, 0x42($sp)
    /* 31F2B4 802DB164 87A6003E */  lh         $a2, 0x3E($sp)
    /* 31F2B8 802DB168 0C0315A9 */  jal        func_800C56A4_D4654
    /* 31F2BC 802DB16C 240700C8 */   addiu     $a3, $zero, 0xC8
  .L802DB170_31F2C0:
    /* 31F2C0 802DB170 87AF0052 */  lh         $t7, 0x52($sp)
  .L802DB174_31F2C4:
    /* 31F2C4 802DB174 8FB80048 */  lw         $t8, 0x48($sp)
    /* 31F2C8 802DB178 93A40063 */  lbu        $a0, 0x63($sp)
    /* 31F2CC 802DB17C 87A50058 */  lh         $a1, 0x58($sp)
    /* 31F2D0 802DB180 87A60056 */  lh         $a2, 0x56($sp)
    /* 31F2D4 802DB184 87A70054 */  lh         $a3, 0x54($sp)
    /* 31F2D8 802DB188 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 31F2DC 802DB18C 0C0B6B03 */  jal        func_802DAC0C_31ED5C
    /* 31F2E0 802DB190 AFB80014 */   sw        $t8, 0x14($sp)
    /* 31F2E4 802DB194 93A40063 */  lbu        $a0, 0x63($sp)
    /* 31F2E8 802DB198 0C0B6A70 */  jal        func_802DA9C0_31EB10
    /* 31F2EC 802DB19C 87A50050 */   lh        $a1, 0x50($sp)
    /* 31F2F0 802DB1A0 8603002C */  lh         $v1, 0x2C($s0)
    /* 31F2F4 802DB1A4 10600002 */  beqz       $v1, .L802DB1B0_31F300
    /* 31F2F8 802DB1A8 246CFFFF */   addiu     $t4, $v1, -0x1
    /* 31F2FC 802DB1AC A60C002C */  sh         $t4, 0x2C($s0)
  .L802DB1B0_31F300:
    /* 31F300 802DB1B0 8602001E */  lh         $v0, 0x1E($s0)
    /* 31F304 802DB1B4 10400002 */  beqz       $v0, .L802DB1C0_31F310
    /* 31F308 802DB1B8 244DFFFF */   addiu     $t5, $v0, -0x1
    /* 31F30C 802DB1BC A60D001E */  sh         $t5, 0x1E($s0)
  .L802DB1C0_31F310:
    /* 31F310 802DB1C0 8FBF002C */  lw         $ra, 0x2C($sp)
    /* 31F314 802DB1C4 8FB00028 */  lw         $s0, 0x28($sp)
    /* 31F318 802DB1C8 27BD0060 */  addiu      $sp, $sp, 0x60
    /* 31F31C 802DB1CC 03E00008 */  jr         $ra
    /* 31F320 802DB1D0 00000000 */   nop
endlabel func_802DAD78_31EEC8
