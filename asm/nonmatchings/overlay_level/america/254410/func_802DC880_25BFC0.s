nonmatching func_802DC880_25BFC0, 0x458

glabel func_802DC880_25BFC0
    /* 25BFC0 802DC880 27BDFF58 */  addiu      $sp, $sp, -0xA8
    /* 25BFC4 802DC884 AFB10030 */  sw         $s1, 0x30($sp)
    /* 25BFC8 802DC888 309100FF */  andi       $s1, $a0, 0xFF
    /* 25BFCC 802DC88C 24030050 */  addiu      $v1, $zero, 0x50
    /* 25BFD0 802DC890 02230019 */  multu      $s1, $v1
    /* 25BFD4 802DC894 3C028005 */  lui        $v0, %hi(alienInstances)
    /* 25BFD8 802DC898 24428198 */  addiu      $v0, $v0, %lo(alienInstances)
    /* 25BFDC 802DC89C AFB0002C */  sw         $s0, 0x2C($sp)
    /* 25BFE0 802DC8A0 240E0190 */  addiu      $t6, $zero, 0x190
    /* 25BFE4 802DC8A4 240F02BC */  addiu      $t7, $zero, 0x2BC
    /* 25BFE8 802DC8A8 24180384 */  addiu      $t8, $zero, 0x384
    /* 25BFEC 802DC8AC AFBF0034 */  sw         $ra, 0x34($sp)
    /* 25BFF0 802DC8B0 AFA400A8 */  sw         $a0, 0xA8($sp)
    /* 25BFF4 802DC8B4 AFAE005C */  sw         $t6, 0x5C($sp)
    /* 25BFF8 802DC8B8 0000C812 */  mflo       $t9
    /* 25BFFC 802DC8BC 00598021 */  addu       $s0, $v0, $t9
    /* 25C000 802DC8C0 92090025 */  lbu        $t1, 0x25($s0)
    /* 25C004 802DC8C4 AFB80054 */  sw         $t8, 0x54($sp)
    /* 25C008 802DC8C8 AFAF0058 */  sw         $t7, 0x58($sp)
    /* 25C00C 802DC8CC 01230019 */  multu      $t1, $v1
    /* 25C010 802DC8D0 00005012 */  mflo       $t2
    /* 25C014 802DC8D4 004A4021 */  addu       $t0, $v0, $t2
    /* 25C018 802DC8D8 8D0B0020 */  lw         $t3, 0x20($t0)
    /* 25C01C 802DC8DC 000B63C0 */  sll        $t4, $t3, 15
    /* 25C020 802DC8E0 058200F9 */  bltzl      $t4, .L802DCCC8_25C408
    /* 25C024 802DC8E4 8FBF0034 */   lw        $ra, 0x34($sp)
    /* 25C028 802DC8E8 860D0012 */  lh         $t5, 0x12($s0)
    /* 25C02C 802DC8EC 11A00006 */  beqz       $t5, .L802DC908_25C048
    /* 25C030 802DC8F0 02202025 */   or        $a0, $s1, $zero
    /* 25C034 802DC8F4 2405025E */  addiu      $a1, $zero, 0x25E
    /* 25C038 802DC8F8 0C04DD1A */  jal        func_80137468_146418
    /* 25C03C 802DC8FC AFA80060 */   sw        $t0, 0x60($sp)
    /* 25C040 802DC900 10000006 */  b          .L802DC91C_25C05C
    /* 25C044 802DC904 8FA80060 */   lw        $t0, 0x60($sp)
  .L802DC908_25C048:
    /* 25C048 802DC908 02202025 */  or         $a0, $s1, $zero
    /* 25C04C 802DC90C 2405025D */  addiu      $a1, $zero, 0x25D
    /* 25C050 802DC910 0C04DD1A */  jal        func_80137468_146418
    /* 25C054 802DC914 AFA80060 */   sw        $t0, 0x60($sp)
    /* 25C058 802DC918 8FA80060 */  lw         $t0, 0x60($sp)
  .L802DC91C_25C05C:
    /* 25C05C 802DC91C 860E000C */  lh         $t6, 0xC($s0)
    /* 25C060 802DC920 3C038015 */  lui        $v1, %hi(D_8014DD50)
    /* 25C064 802DC924 2463DD50 */  addiu      $v1, $v1, %lo(D_8014DD50)
    /* 25C068 802DC928 000E7900 */  sll        $t7, $t6, 4
    /* 25C06C 802DC92C 006FC021 */  addu       $t8, $v1, $t7
    /* 25C070 802DC930 8306000C */  lb         $a2, 0xC($t8)
    /* 25C074 802DC934 86040000 */  lh         $a0, 0x0($s0)
    /* 25C078 802DC938 86050004 */  lh         $a1, 0x4($s0)
    /* 25C07C 802DC93C 0006C900 */  sll        $t9, $a2, 4
    /* 25C080 802DC940 00794821 */  addu       $t1, $v1, $t9
    /* 25C084 802DC944 8127000D */  lb         $a3, 0xD($t1)
    /* 25C088 802DC948 240C00FF */  addiu      $t4, $zero, 0xFF
    /* 25C08C 802DC94C 240D00FF */  addiu      $t5, $zero, 0xFF
    /* 25C090 802DC950 00075100 */  sll        $t2, $a3, 4
    /* 25C094 802DC954 006A1021 */  addu       $v0, $v1, $t2
    /* 25C098 802DC958 804B000D */  lb         $t3, 0xD($v0)
    /* 25C09C 802DC95C 240E00FF */  addiu      $t6, $zero, 0xFF
    /* 25C0A0 802DC960 A3AC0050 */  sb         $t4, 0x50($sp)
    /* 25C0A4 802DC964 A3AD0051 */  sb         $t5, 0x51($sp)
    /* 25C0A8 802DC968 A3AE0052 */  sb         $t6, 0x52($sp)
    /* 25C0AC 802DC96C AFA80060 */  sw         $t0, 0x60($sp)
    /* 25C0B0 802DC970 A7A600A6 */  sh         $a2, 0xA6($sp)
    /* 25C0B4 802DC974 A7A4004C */  sh         $a0, 0x4C($sp)
    /* 25C0B8 802DC978 A7A5004E */  sh         $a1, 0x4E($sp)
    /* 25C0BC 802DC97C A7A700A2 */  sh         $a3, 0xA2($sp)
    /* 25C0C0 802DC980 0C02E134 */  jal        func_800B84D0_C7480
    /* 25C0C4 802DC984 A7AB00A0 */   sh        $t3, 0xA0($sp)
    /* 25C0C8 802DC988 86180002 */  lh         $t8, 0x2($s0)
    /* 25C0CC 802DC98C 00027A03 */  sra        $t7, $v0, 8
    /* 25C0D0 802DC990 3C014416 */  lui        $at, (0x44160000 >> 16)
    /* 25C0D4 802DC994 01F8C823 */  subu       $t9, $t7, $t8
    /* 25C0D8 802DC998 272904B0 */  addiu      $t1, $t9, 0x4B0
    /* 25C0DC 802DC99C 44892000 */  mtc1       $t1, $f4
    /* 25C0E0 802DC9A0 44814000 */  mtc1       $at, $f8
    /* 25C0E4 802DC9A4 3C014380 */  lui        $at, (0x43800000 >> 16)
    /* 25C0E8 802DC9A8 468021A0 */  cvt.s.w    $f6, $f4
    /* 25C0EC 802DC9AC 44815000 */  mtc1       $at, $f10
    /* 25C0F0 802DC9B0 3C014448 */  lui        $at, (0x44480000 >> 16)
    /* 25C0F4 802DC9B4 44812000 */  mtc1       $at, $f4
    /* 25C0F8 802DC9B8 27A4004C */  addiu      $a0, $sp, 0x4C
    /* 25C0FC 802DC9BC 27A50050 */  addiu      $a1, $sp, 0x50
    /* 25C100 802DC9C0 46083003 */  div.s      $f0, $f6, $f8
    /* 25C104 802DC9C4 460A0402 */  mul.s      $f16, $f0, $f10
    /* 25C108 802DC9C8 00000000 */  nop
    /* 25C10C 802DC9CC 46040182 */  mul.s      $f6, $f0, $f4
    /* 25C110 802DC9D0 4600848D */  trunc.w.s  $f18, $f16
    /* 25C114 802DC9D4 4600320D */  trunc.w.s  $f8, $f6
    /* 25C118 802DC9D8 44069000 */  mfc1       $a2, $f18
    /* 25C11C 802DC9DC 44074000 */  mfc1       $a3, $f8
    /* 25C120 802DC9E0 00065C00 */  sll        $t3, $a2, 16
    /* 25C124 802DC9E4 000B3403 */  sra        $a2, $t3, 16
    /* 25C128 802DC9E8 00077400 */  sll        $t6, $a3, 16
    /* 25C12C 802DC9EC 0C02C8D5 */  jal        func_800B2354_C1304
    /* 25C130 802DC9F0 000E3C03 */   sra       $a3, $t6, 16
    /* 25C134 802DC9F4 322400FF */  andi       $a0, $s1, 0xFF
    /* 25C138 802DC9F8 0C02A4B8 */  jal        func_800A92E0_B8290
    /* 25C13C 802DC9FC 24057000 */   addiu     $a1, $zero, 0x7000
    /* 25C140 802DCA00 8E180020 */  lw         $t8, 0x20($s0)
    /* 25C144 802DCA04 8FA80060 */  lw         $t0, 0x60($sp)
    /* 25C148 802DCA08 24090258 */  addiu      $t1, $zero, 0x258
    /* 25C14C 802DCA0C 33194000 */  andi       $t9, $t8, 0x4000
    /* 25C150 802DCA10 13200013 */  beqz       $t9, .L802DCA60_25C1A0
    /* 25C154 802DCA14 322400FF */   andi      $a0, $s1, 0xFF
    /* 25C158 802DCA18 240A0320 */  addiu      $t2, $zero, 0x320
    /* 25C15C 802DCA1C AFA90058 */  sw         $t1, 0x58($sp)
    /* 25C160 802DCA20 AFAA0054 */  sw         $t2, 0x54($sp)
    /* 25C164 802DCA24 8D020020 */  lw         $v0, 0x20($t0)
    /* 25C168 802DCA28 240C02BC */  addiu      $t4, $zero, 0x2BC
    /* 25C16C 802DCA2C 304B1000 */  andi       $t3, $v0, 0x1000
    /* 25C170 802DCA30 11600003 */  beqz       $t3, .L802DCA40_25C180
    /* 25C174 802DCA34 304D4000 */   andi      $t5, $v0, 0x4000
    /* 25C178 802DCA38 10000009 */  b          .L802DCA60_25C1A0
    /* 25C17C 802DCA3C AFAC005C */   sw        $t4, 0x5C($sp)
  .L802DCA40_25C180:
    /* 25C180 802DCA40 11A00006 */  beqz       $t5, .L802DCA5C_25C19C
    /* 25C184 802DCA44 240F0258 */   addiu     $t7, $zero, 0x258
    /* 25C188 802DCA48 240E05DC */  addiu      $t6, $zero, 0x5DC
    /* 25C18C 802DCA4C AFAE005C */  sw         $t6, 0x5C($sp)
    /* 25C190 802DCA50 AFA00058 */  sw         $zero, 0x58($sp)
    /* 25C194 802DCA54 10000002 */  b          .L802DCA60_25C1A0
    /* 25C198 802DCA58 AFA00054 */   sw        $zero, 0x54($sp)
  .L802DCA5C_25C19C:
    /* 25C19C 802DCA5C AFAF005C */  sw         $t7, 0x5C($sp)
  .L802DCA60_25C1A0:
    /* 25C1A0 802DCA60 0C02A66E */  jal        func_800A99B8_B8968
    /* 25C1A4 802DCA64 AFA80060 */   sw        $t0, 0x60($sp)
    /* 25C1A8 802DCA68 322400FF */  andi       $a0, $s1, 0xFF
    /* 25C1AC 802DCA6C 87A500A6 */  lh         $a1, 0xA6($sp)
    /* 25C1B0 802DCA70 0C02188C */  jal        func_80086230_951E0
    /* 25C1B4 802DCA74 24062000 */   addiu     $a2, $zero, 0x2000
    /* 25C1B8 802DCA78 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 25C1BC 802DCA7C 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 25C1C0 802DCA80 86180000 */  lh         $t8, 0x0($s0)
    /* 25C1C4 802DCA84 86090004 */  lh         $t1, 0x4($s0)
    /* 25C1C8 802DCA88 84990000 */  lh         $t9, 0x0($a0)
    /* 25C1CC 802DCA8C 848A0004 */  lh         $t2, 0x4($a0)
    /* 25C1D0 802DCA90 03191823 */  subu       $v1, $t8, $t9
    /* 25C1D4 802DCA94 00630019 */  multu      $v1, $v1
    /* 25C1D8 802DCA98 012A2823 */  subu       $a1, $t1, $t2
    /* 25C1DC 802DCA9C 00005812 */  mflo       $t3
    /* 25C1E0 802DCAA0 00000000 */  nop
    /* 25C1E4 802DCAA4 00000000 */  nop
    /* 25C1E8 802DCAA8 00A50019 */  multu      $a1, $a1
    /* 25C1EC 802DCAAC 00006012 */  mflo       $t4
    /* 25C1F0 802DCAB0 016C6821 */  addu       $t5, $t3, $t4
    /* 25C1F4 802DCAB4 448D5000 */  mtc1       $t5, $f10
    /* 25C1F8 802DCAB8 0C007650 */  jal        sqrtf
    /* 25C1FC 802DCABC 46805320 */   cvt.s.w   $f12, $f10
    /* 25C200 802DCAC0 8FA80060 */  lw         $t0, 0x60($sp)
    /* 25C204 802DCAC4 4600040D */  trunc.w.s  $f16, $f0
    /* 25C208 802DCAC8 322400FF */  andi       $a0, $s1, 0xFF
    /* 25C20C 802DCACC 910F0018 */  lbu        $t7, 0x18($t0)
    /* 25C210 802DCAD0 24051000 */  addiu      $a1, $zero, 0x1000
    /* 25C214 802DCAD4 44038000 */  mfc1       $v1, $f16
    /* 25C218 802DCAD8 31F80001 */  andi       $t8, $t7, 0x1
    /* 25C21C 802DCADC 5300002A */  beql       $t8, $zero, .L802DCB88_25C2C8
    /* 25C220 802DCAE0 8D090020 */   lw        $t1, 0x20($t0)
    /* 25C224 802DCAE4 AFA30088 */  sw         $v1, 0x88($sp)
    /* 25C228 802DCAE8 0C0213FA */  jal        func_80084FE8_93F98
    /* 25C22C 802DCAEC AFA80060 */   sw        $t0, 0x60($sp)
    /* 25C230 802DCAF0 8FA30088 */  lw         $v1, 0x88($sp)
    /* 25C234 802DCAF4 10400006 */  beqz       $v0, .L802DCB10_25C250
    /* 25C238 802DCAF8 8FA80060 */   lw        $t0, 0x60($sp)
    /* 25C23C 802DCAFC 286105DD */  slti       $at, $v1, 0x5DD
    /* 25C240 802DCB00 54200004 */  bnel       $at, $zero, .L802DCB14_25C254
    /* 25C244 802DCB04 91190018 */   lbu       $t9, 0x18($t0)
    /* 25C248 802DCB08 10000005 */  b          .L802DCB20_25C260
    /* 25C24C 802DCB0C 24060001 */   addiu     $a2, $zero, 0x1
  .L802DCB10_25C250:
    /* 25C250 802DCB10 91190018 */  lbu        $t9, 0x18($t0)
  .L802DCB14_25C254:
    /* 25C254 802DCB14 00003025 */  or         $a2, $zero, $zero
    /* 25C258 802DCB18 3329FFFE */  andi       $t1, $t9, 0xFFFE
    /* 25C25C 802DCB1C A1090018 */  sb         $t1, 0x18($t0)
  .L802DCB20_25C260:
    /* 25C260 802DCB20 3C01802E */  lui        $at, %hi(D_802E0E08)
    /* 25C264 802DCB24 C4320E08 */  lwc1       $f18, %lo(D_802E0E08)($at)
    /* 25C268 802DCB28 87AA00A2 */  lh         $t2, 0xA2($sp)
    /* 25C26C 802DCB2C 240B36B0 */  addiu      $t3, $zero, 0x36B0
    /* 25C270 802DCB30 240CEC78 */  addiu      $t4, $zero, -0x1388
    /* 25C274 802DCB34 240D09C4 */  addiu      $t5, $zero, 0x9C4
    /* 25C278 802DCB38 AFAD001C */  sw         $t5, 0x1C($sp)
    /* 25C27C 802DCB3C AFAC0018 */  sw         $t4, 0x18($sp)
    /* 25C280 802DCB40 AFAB0014 */  sw         $t3, 0x14($sp)
    /* 25C284 802DCB44 322400FF */  andi       $a0, $s1, 0xFF
    /* 25C288 802DCB48 8FA5005C */  lw         $a1, 0x5C($sp)
    /* 25C28C 802DCB4C 87A700A0 */  lh         $a3, 0xA0($sp)
    /* 25C290 802DCB50 E7B20020 */  swc1       $f18, 0x20($sp)
    /* 25C294 802DCB54 0C0B6DEE */  jal        func_802DB7B8_25AEF8
    /* 25C298 802DCB58 AFAA0010 */   sw        $t2, 0x10($sp)
    /* 25C29C 802DCB5C 86020002 */  lh         $v0, 0x2($s0)
    /* 25C2A0 802DCB60 860E0010 */  lh         $t6, 0x10($s0)
    /* 25C2A4 802DCB64 241801F4 */  addiu      $t8, $zero, 0x1F4
    /* 25C2A8 802DCB68 0302C823 */  subu       $t9, $t8, $v0
    /* 25C2AC 802DCB6C 01C27821 */  addu       $t7, $t6, $v0
    /* 25C2B0 802DCB70 29E101F4 */  slti       $at, $t7, 0x1F4
    /* 25C2B4 802DCB74 10200043 */  beqz       $at, .L802DCC84_25C3C4
    /* 25C2B8 802DCB78 00000000 */   nop
    /* 25C2BC 802DCB7C 10000041 */  b          .L802DCC84_25C3C4
    /* 25C2C0 802DCB80 A6190010 */   sh        $t9, 0x10($s0)
    /* 25C2C4 802DCB84 8D090020 */  lw         $t1, 0x20($t0)
  .L802DCB88_25C2C8:
    /* 25C2C8 802DCB88 322400FF */  andi       $a0, $s1, 0xFF
    /* 25C2CC 802DCB8C 24052000 */  addiu      $a1, $zero, 0x2000
    /* 25C2D0 802DCB90 312A8000 */  andi       $t2, $t1, 0x8000
    /* 25C2D4 802DCB94 1540003B */  bnez       $t2, .L802DCC84_25C3C4
    /* 25C2D8 802DCB98 00000000 */   nop
    /* 25C2DC 802DCB9C AFA30088 */  sw         $v1, 0x88($sp)
    /* 25C2E0 802DCBA0 0C0213FA */  jal        func_80084FE8_93F98
    /* 25C2E4 802DCBA4 AFA80060 */   sw        $t0, 0x60($sp)
    /* 25C2E8 802DCBA8 8FA30088 */  lw         $v1, 0x88($sp)
    /* 25C2EC 802DCBAC 10400025 */  beqz       $v0, .L802DCC44_25C384
    /* 25C2F0 802DCBB0 8FA80060 */   lw        $t0, 0x60($sp)
    /* 25C2F4 802DCBB4 86020012 */  lh         $v0, 0x12($s0)
    /* 25C2F8 802DCBB8 8FAB0058 */  lw         $t3, 0x58($sp)
    /* 25C2FC 802DCBBC 8FAF0054 */  lw         $t7, 0x54($sp)
    /* 25C300 802DCBC0 01626023 */  subu       $t4, $t3, $v0
    /* 25C304 802DCBC4 006C082A */  slt        $at, $v1, $t4
    /* 25C308 802DCBC8 10200006 */  beqz       $at, .L802DCBE4_25C324
    /* 25C30C 802DCBCC 004FC021 */   addu      $t8, $v0, $t7
    /* 25C310 802DCBD0 8D0D0020 */  lw         $t5, 0x20($t0)
    /* 25C314 802DCBD4 24060002 */  addiu      $a2, $zero, 0x2
    /* 25C318 802DCBD8 35AE2000 */  ori        $t6, $t5, 0x2000
    /* 25C31C 802DCBDC 1000001A */  b          .L802DCC48_25C388
    /* 25C320 802DCBE0 AD0E0020 */   sw        $t6, 0x20($t0)
  .L802DCBE4_25C324:
    /* 25C324 802DCBE4 0303082A */  slt        $at, $t8, $v1
    /* 25C328 802DCBE8 10200014 */  beqz       $at, .L802DCC3C_25C37C
    /* 25C32C 802DCBEC 00000000 */   nop
    /* 25C330 802DCBF0 8D190020 */  lw         $t9, 0x20($t0)
    /* 25C334 802DCBF4 2401DFFF */  addiu      $at, $zero, -0x2001
    /* 25C338 802DCBF8 03214824 */  and        $t1, $t9, $at
    /* 25C33C 802DCBFC AD090020 */  sw         $t1, 0x20($t0)
    /* 25C340 802DCC00 8FAA0054 */  lw         $t2, 0x54($sp)
    /* 25C344 802DCC04 254B0190 */  addiu      $t3, $t2, 0x190
    /* 25C348 802DCC08 0163082A */  slt        $at, $t3, $v1
    /* 25C34C 802DCC0C 10200009 */  beqz       $at, .L802DCC34_25C374
    /* 25C350 802DCC10 00000000 */   nop
    /* 25C354 802DCC14 8E0C0020 */  lw         $t4, 0x20($s0)
    /* 25C358 802DCC18 312F5000 */  andi       $t7, $t1, 0x5000
    /* 25C35C 802DCC1C 318D4000 */  andi       $t5, $t4, 0x4000
    /* 25C360 802DCC20 11A00004 */  beqz       $t5, .L802DCC34_25C374
    /* 25C364 802DCC24 00000000 */   nop
    /* 25C368 802DCC28 15E00002 */  bnez       $t7, .L802DCC34_25C374
    /* 25C36C 802DCC2C 24180001 */   addiu     $t8, $zero, 0x1
    /* 25C370 802DCC30 A1180018 */  sb         $t8, 0x18($t0)
  .L802DCC34_25C374:
    /* 25C374 802DCC34 10000004 */  b          .L802DCC48_25C388
    /* 25C378 802DCC38 24060001 */   addiu     $a2, $zero, 0x1
  .L802DCC3C_25C37C:
    /* 25C37C 802DCC3C 10000002 */  b          .L802DCC48_25C388
    /* 25C380 802DCC40 24060003 */   addiu     $a2, $zero, 0x3
  .L802DCC44_25C384:
    /* 25C384 802DCC44 00003025 */  or         $a2, $zero, $zero
  .L802DCC48_25C388:
    /* 25C388 802DCC48 3C01802E */  lui        $at, %hi(D_802E0E0C)
    /* 25C38C 802DCC4C C4240E0C */  lwc1       $f4, %lo(D_802E0E0C)($at)
    /* 25C390 802DCC50 87B900A2 */  lh         $t9, 0xA2($sp)
    /* 25C394 802DCC54 24091F40 */  addiu      $t1, $zero, 0x1F40
    /* 25C398 802DCC58 240AEC78 */  addiu      $t2, $zero, -0x1388
    /* 25C39C 802DCC5C 240B09C4 */  addiu      $t3, $zero, 0x9C4
    /* 25C3A0 802DCC60 AFAB001C */  sw         $t3, 0x1C($sp)
    /* 25C3A4 802DCC64 AFAA0018 */  sw         $t2, 0x18($sp)
    /* 25C3A8 802DCC68 AFA90014 */  sw         $t1, 0x14($sp)
    /* 25C3AC 802DCC6C 322400FF */  andi       $a0, $s1, 0xFF
    /* 25C3B0 802DCC70 8FA5005C */  lw         $a1, 0x5C($sp)
    /* 25C3B4 802DCC74 87A700A0 */  lh         $a3, 0xA0($sp)
    /* 25C3B8 802DCC78 E7A40020 */  swc1       $f4, 0x20($sp)
    /* 25C3BC 802DCC7C 0C0B6DEE */  jal        func_802DB7B8_25AEF8
    /* 25C3C0 802DCC80 AFB90010 */   sw        $t9, 0x10($sp)
  .L802DCC84_25C3C4:
    /* 25C3C4 802DCC84 0C0B6F61 */  jal        func_802DBD84_25B4C4
    /* 25C3C8 802DCC88 322400FF */   andi      $a0, $s1, 0xFF
    /* 25C3CC 802DCC8C 0C0B71FF */  jal        func_802DC7FC_25BF3C
    /* 25C3D0 802DCC90 322400FF */   andi      $a0, $s1, 0xFF
    /* 25C3D4 802DCC94 322400FF */  andi       $a0, $s1, 0xFF
    /* 25C3D8 802DCC98 240500C8 */  addiu      $a1, $zero, 0xC8
    /* 25C3DC 802DCC9C 0C0B6F42 */  jal        func_802DBD08_25B448
    /* 25C3E0 802DCCA0 24060096 */   addiu     $a2, $zero, 0x96
    /* 25C3E4 802DCCA4 0C0B7091 */  jal        func_802DC244_25B984
    /* 25C3E8 802DCCA8 322400FF */   andi      $a0, $s1, 0xFF
    /* 25C3EC 802DCCAC 8602001E */  lh         $v0, 0x1E($s0)
    /* 25C3F0 802DCCB0 10400002 */  beqz       $v0, .L802DCCBC_25C3FC
    /* 25C3F4 802DCCB4 244CFFFF */   addiu     $t4, $v0, -0x1
    /* 25C3F8 802DCCB8 A60C001E */  sh         $t4, 0x1E($s0)
  .L802DCCBC_25C3FC:
    /* 25C3FC 802DCCBC 0C02A7CD */  jal        func_800A9F34_B8EE4
    /* 25C400 802DCCC0 322400FF */   andi      $a0, $s1, 0xFF
    /* 25C404 802DCCC4 8FBF0034 */  lw         $ra, 0x34($sp)
  .L802DCCC8_25C408:
    /* 25C408 802DCCC8 8FB0002C */  lw         $s0, 0x2C($sp)
    /* 25C40C 802DCCCC 8FB10030 */  lw         $s1, 0x30($sp)
    /* 25C410 802DCCD0 03E00008 */  jr         $ra
    /* 25C414 802DCCD4 27BD00A8 */   addiu     $sp, $sp, 0xA8
endlabel func_802DC880_25BFC0
