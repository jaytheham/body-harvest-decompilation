nonmatching func_802DAA20_2BCE50, 0x280

glabel func_802DAA20_2BCE50
    /* 2BCE50 802DAA20 308E00FF */  andi       $t6, $a0, 0xFF
    /* 2BCE54 802DAA24 000E7880 */  sll        $t7, $t6, 2
    /* 2BCE58 802DAA28 01EE7821 */  addu       $t7, $t7, $t6
    /* 2BCE5C 802DAA2C 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 2BCE60 802DAA30 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 2BCE64 802DAA34 000F7900 */  sll        $t7, $t7, 4
    /* 2BCE68 802DAA38 01F81821 */  addu       $v1, $t7, $t8
    /* 2BCE6C 802DAA3C 8465000C */  lh         $a1, 0xC($v1)
    /* 2BCE70 802DAA40 3C088015 */  lui        $t0, %hi(D_8014DD50)
    /* 2BCE74 802DAA44 2508DD50 */  addiu      $t0, $t0, %lo(D_8014DD50)
    /* 2BCE78 802DAA48 0005C900 */  sll        $t9, $a1, 4
    /* 2BCE7C 802DAA4C 01194821 */  addu       $t1, $t0, $t9
    /* 2BCE80 802DAA50 3C028022 */  lui        $v0, %hi(D_80222A70)
    /* 2BCE84 802DAA54 8126000C */  lb         $a2, 0xC($t1)
    /* 2BCE88 802DAA58 8C422A70 */  lw         $v0, %lo(D_80222A70)($v0)
    /* 2BCE8C 802DAA5C 846C0002 */  lh         $t4, 0x2($v1)
    /* 2BCE90 802DAA60 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 2BCE94 802DAA64 00065100 */  sll        $t2, $a2, 4
    /* 2BCE98 802DAA68 2442FFD8 */  addiu      $v0, $v0, -0x28
    /* 2BCE9C 802DAA6C AFA40040 */  sw         $a0, 0x40($sp)
    /* 2BCEA0 802DAA70 010A5821 */  addu       $t3, $t0, $t2
    /* 2BCEA4 802DAA74 004C082A */  slt        $at, $v0, $t4
    /* 2BCEA8 802DAA78 01C02025 */  or         $a0, $t6, $zero
    /* 2BCEAC 802DAA7C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2BCEB0 802DAA80 10200002 */  beqz       $at, .L802DAA8C_2BCEBC
    /* 2BCEB4 802DAA84 8167000C */   lb        $a3, 0xC($t3)
    /* 2BCEB8 802DAA88 A4620002 */  sh         $v0, 0x2($v1)
  .L802DAA8C_2BCEBC:
    /* 2BCEBC 802DAA8C AFA30018 */  sw         $v1, 0x18($sp)
    /* 2BCEC0 802DAA90 0C0B6A15 */  jal        func_802DA854_2BCC84
    /* 2BCEC4 802DAA94 A3A40043 */   sb        $a0, 0x43($sp)
    /* 2BCEC8 802DAA98 0C0B6A44 */  jal        func_802DA910_2BCD40
    /* 2BCECC 802DAA9C 93A40043 */   lbu       $a0, 0x43($sp)
    /* 2BCED0 802DAAA0 3C0E8005 */  lui        $t6, %hi(D_80052B34)
    /* 2BCED4 802DAAA4 8DCE2B34 */  lw         $t6, %lo(D_80052B34)($t6)
    /* 2BCED8 802DAAA8 3C0D8022 */  lui        $t5, %hi(D_80222A70)
    /* 2BCEDC 802DAAAC 8DAD2A70 */  lw         $t5, %lo(D_80222A70)($t5)
    /* 2BCEE0 802DAAB0 85CF0002 */  lh         $t7, 0x2($t6)
    /* 2BCEE4 802DAAB4 8FA30018 */  lw         $v1, 0x18($sp)
    /* 2BCEE8 802DAAB8 01AF082A */  slt        $at, $t5, $t7
    /* 2BCEEC 802DAABC 50200008 */  beql       $at, $zero, .L802DAAE0_2BCF10
    /* 2BCEF0 802DAAC0 8C690020 */   lw        $t1, 0x20($v1)
    /* 2BCEF4 802DAAC4 8C780020 */  lw         $t8, 0x20($v1)
    /* 2BCEF8 802DAAC8 3C01F7FF */  lui        $at, (0xF7FFFFFF >> 16)
    /* 2BCEFC 802DAACC 3421FFFF */  ori        $at, $at, (0xF7FFFFFF & 0xFFFF)
    /* 2BCF00 802DAAD0 0301C824 */  and        $t9, $t8, $at
    /* 2BCF04 802DAAD4 1000006E */  b          .L802DAC90_2BD0C0
    /* 2BCF08 802DAAD8 AC790020 */   sw        $t9, 0x20($v1)
    /* 2BCF0C 802DAADC 8C690020 */  lw         $t1, 0x20($v1)
  .L802DAAE0_2BCF10:
    /* 2BCF10 802DAAE0 3C010800 */  lui        $at, (0x8000100 >> 16)
    /* 2BCF14 802DAAE4 90790047 */  lbu        $t9, 0x47($v1)
    /* 2BCF18 802DAAE8 01215025 */  or         $t2, $t1, $at
    /* 2BCF1C 802DAAEC 846B0000 */  lh         $t3, 0x0($v1)
    /* 2BCF20 802DAAF0 846C0014 */  lh         $t4, 0x14($v1)
    /* 2BCF24 802DAAF4 846E0004 */  lh         $t6, 0x4($v1)
    /* 2BCF28 802DAAF8 846D0018 */  lh         $t5, 0x18($v1)
    /* 2BCF2C 802DAAFC AC6A0020 */  sw         $t2, 0x20($v1)
    /* 2BCF30 802DAB00 35580100 */  ori        $t8, $t2, (0x8000100 & 0xFFFF)
    /* 2BCF34 802DAB04 33290001 */  andi       $t1, $t9, 0x1
    /* 2BCF38 802DAB08 AC780020 */  sw         $t8, 0x20($v1)
    /* 2BCF3C 802DAB0C 016C1023 */  subu       $v0, $t3, $t4
    /* 2BCF40 802DAB10 15200019 */  bnez       $t1, .L802DAB78_2BCFA8
    /* 2BCF44 802DAB14 01CD2023 */   subu      $a0, $t6, $t5
    /* 2BCF48 802DAB18 00420019 */  multu      $v0, $v0
    /* 2BCF4C 802DAB1C 2401DFFF */  addiu      $at, $zero, -0x2001
    /* 2BCF50 802DAB20 03015824 */  and        $t3, $t8, $at
    /* 2BCF54 802DAB24 3C010005 */  lui        $at, (0x57E40 >> 16)
    /* 2BCF58 802DAB28 34217E40 */  ori        $at, $at, (0x57E40 & 0xFFFF)
    /* 2BCF5C 802DAB2C AC6B0020 */  sw         $t3, 0x20($v1)
    /* 2BCF60 802DAB30 35692000 */  ori        $t1, $t3, 0x2000
    /* 2BCF64 802DAB34 240A0064 */  addiu      $t2, $zero, 0x64
    /* 2BCF68 802DAB38 00006012 */  mflo       $t4
    /* 2BCF6C 802DAB3C 00000000 */  nop
    /* 2BCF70 802DAB40 00000000 */  nop
    /* 2BCF74 802DAB44 00840019 */  multu      $a0, $a0
    /* 2BCF78 802DAB48 00007012 */  mflo       $t6
    /* 2BCF7C 802DAB4C 018E6821 */  addu       $t5, $t4, $t6
    /* 2BCF80 802DAB50 01A1082A */  slt        $at, $t5, $at
    /* 2BCF84 802DAB54 5020001C */  beql       $at, $zero, .L802DABC8_2BCFF8
    /* 2BCF88 802DAB58 84620034 */   lh        $v0, 0x34($v1)
    /* 2BCF8C 802DAB5C 906F0047 */  lbu        $t7, 0x47($v1)
    /* 2BCF90 802DAB60 AC690020 */  sw         $t1, 0x20($v1)
    /* 2BCF94 802DAB64 A46A0034 */  sh         $t2, 0x34($v1)
    /* 2BCF98 802DAB68 35F80001 */  ori        $t8, $t7, 0x1
    /* 2BCF9C 802DAB6C A0780047 */  sb         $t8, 0x47($v1)
    /* 2BCFA0 802DAB70 10000014 */  b          .L802DABC4_2BCFF4
    /* 2BCFA4 802DAB74 A460001E */   sh        $zero, 0x1E($v1)
  .L802DAB78_2BCFA8:
    /* 2BCFA8 802DAB78 8C6B0020 */  lw         $t3, 0x20($v1)
    /* 2BCFAC 802DAB7C 93A40043 */  lbu        $a0, 0x43($sp)
    /* 2BCFB0 802DAB80 24050400 */  addiu      $a1, $zero, 0x400
    /* 2BCFB4 802DAB84 316C2000 */  andi       $t4, $t3, 0x2000
    /* 2BCFB8 802DAB88 5180000F */  beql       $t4, $zero, .L802DABC8_2BCFF8
    /* 2BCFBC 802DAB8C 84620034 */   lh        $v0, 0x34($v1)
    /* 2BCFC0 802DAB90 0C0213FA */  jal        func_80084FE8_93F98
    /* 2BCFC4 802DAB94 AFA30018 */   sw        $v1, 0x18($sp)
    /* 2BCFC8 802DAB98 1040000A */  beqz       $v0, .L802DABC4_2BCFF4
    /* 2BCFCC 802DAB9C 8FA30018 */   lw        $v1, 0x18($sp)
    /* 2BCFD0 802DABA0 93A40043 */  lbu        $a0, 0x43($sp)
    /* 2BCFD4 802DABA4 00002825 */  or         $a1, $zero, $zero
    /* 2BCFD8 802DABA8 24060020 */  addiu      $a2, $zero, 0x20
    /* 2BCFDC 802DABAC 0C021C62 */  jal        func_80087188_96138
    /* 2BCFE0 802DABB0 AFA30018 */   sw        $v1, 0x18($sp)
    /* 2BCFE4 802DABB4 93A40043 */  lbu        $a0, 0x43($sp)
    /* 2BCFE8 802DABB8 0C04DD1A */  jal        func_80137468_146418
    /* 2BCFEC 802DABBC 2405025B */   addiu     $a1, $zero, 0x25B
    /* 2BCFF0 802DABC0 8FA30018 */  lw         $v1, 0x18($sp)
  .L802DABC4_2BCFF4:
    /* 2BCFF4 802DABC4 84620034 */  lh         $v0, 0x34($v1)
  .L802DABC8_2BCFF8:
    /* 2BCFF8 802DABC8 240500C8 */  addiu      $a1, $zero, 0xC8
    /* 2BCFFC 802DABCC 24060004 */  addiu      $a2, $zero, 0x4
    /* 2BD000 802DABD0 1840000F */  blez       $v0, .L802DAC10_2BD040
    /* 2BD004 802DABD4 28410046 */   slti      $at, $v0, 0x46
    /* 2BD008 802DABD8 5020000E */  beql       $at, $zero, .L802DAC14_2BD044
    /* 2BD00C 802DABDC 90780036 */   lbu       $t8, 0x36($v1)
    /* 2BD010 802DABE0 906E0036 */  lbu        $t6, 0x36($v1)
    /* 2BD014 802DABE4 240F0001 */  addiu      $t7, $zero, 0x1
    /* 2BD018 802DABE8 11C00005 */  beqz       $t6, .L802DAC00_2BD030
    /* 2BD01C 802DABEC 00000000 */   nop
    /* 2BD020 802DABF0 906D004B */  lbu        $t5, 0x4B($v1)
    /* 2BD024 802DABF4 24010001 */  addiu      $at, $zero, 0x1
    /* 2BD028 802DABF8 15A10003 */  bne        $t5, $at, .L802DAC08_2BD038
    /* 2BD02C 802DABFC 00000000 */   nop
  .L802DAC00_2BD030:
    /* 2BD030 802DAC00 1000000D */  b          .L802DAC38_2BD068
    /* 2BD034 802DAC04 A06F004B */   sb        $t7, 0x4B($v1)
  .L802DAC08_2BD038:
    /* 2BD038 802DAC08 1000000B */  b          .L802DAC38_2BD068
    /* 2BD03C 802DAC0C A060004B */   sb        $zero, 0x4B($v1)
  .L802DAC10_2BD040:
    /* 2BD040 802DAC10 90780036 */  lbu        $t8, 0x36($v1)
  .L802DAC14_2BD044:
    /* 2BD044 802DAC14 13000005 */  beqz       $t8, .L802DAC2C_2BD05C
    /* 2BD048 802DAC18 00000000 */   nop
    /* 2BD04C 802DAC1C 9079004B */  lbu        $t9, 0x4B($v1)
    /* 2BD050 802DAC20 24090001 */  addiu      $t1, $zero, 0x1
    /* 2BD054 802DAC24 57200004 */  bnel       $t9, $zero, .L802DAC38_2BD068
    /* 2BD058 802DAC28 A069004B */   sb        $t1, 0x4B($v1)
  .L802DAC2C_2BD05C:
    /* 2BD05C 802DAC2C 10000002 */  b          .L802DAC38_2BD068
    /* 2BD060 802DAC30 A060004B */   sb        $zero, 0x4B($v1)
    /* 2BD064 802DAC34 A069004B */  sb         $t1, 0x4B($v1)
  .L802DAC38_2BD068:
    /* 2BD068 802DAC38 93A40043 */  lbu        $a0, 0x43($sp)
    /* 2BD06C 802DAC3C 0C023949 */  jal        func_8008E524_9D4D4
    /* 2BD070 802DAC40 AFA30018 */   sw        $v1, 0x18($sp)
    /* 2BD074 802DAC44 284100C9 */  slti       $at, $v0, 0xC9
    /* 2BD078 802DAC48 8FA30018 */  lw         $v1, 0x18($sp)
    /* 2BD07C 802DAC4C 14200007 */  bnez       $at, .L802DAC6C_2BD09C
    /* 2BD080 802DAC50 00402825 */   or        $a1, $v0, $zero
    /* 2BD084 802DAC54 93A40043 */  lbu        $a0, 0x43($sp)
    /* 2BD088 802DAC58 24060640 */  addiu      $a2, $zero, 0x640
    /* 2BD08C 802DAC5C 0C023AC8 */  jal        func_8008EB20_5EFD0
    /* 2BD090 802DAC60 AFA30018 */   sw        $v1, 0x18($sp)
    /* 2BD094 802DAC64 10000006 */  b          .L802DAC80_2BD0B0
    /* 2BD098 802DAC68 8FA30018 */   lw        $v1, 0x18($sp)
  .L802DAC6C_2BD09C:
    /* 2BD09C 802DAC6C 93A40043 */  lbu        $a0, 0x43($sp)
    /* 2BD0A0 802DAC70 24060320 */  addiu      $a2, $zero, 0x320
    /* 2BD0A4 802DAC74 0C023AC8 */  jal        func_8008EB20_5EFD0
    /* 2BD0A8 802DAC78 AFA30018 */   sw        $v1, 0x18($sp)
    /* 2BD0AC 802DAC7C 8FA30018 */  lw         $v1, 0x18($sp)
  .L802DAC80_2BD0B0:
    /* 2BD0B0 802DAC80 8462001E */  lh         $v0, 0x1E($v1)
    /* 2BD0B4 802DAC84 10400002 */  beqz       $v0, .L802DAC90_2BD0C0
    /* 2BD0B8 802DAC88 244AFFFF */   addiu     $t2, $v0, -0x1
    /* 2BD0BC 802DAC8C A46A001E */  sh         $t2, 0x1E($v1)
  .L802DAC90_2BD0C0:
    /* 2BD0C0 802DAC90 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 2BD0C4 802DAC94 27BD0040 */  addiu      $sp, $sp, 0x40
    /* 2BD0C8 802DAC98 03E00008 */  jr         $ra
    /* 2BD0CC 802DAC9C 00000000 */   nop
endlabel func_802DAA20_2BCE50
