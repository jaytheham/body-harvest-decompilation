nonmatching func_802DDFF0_2C0420, 0x594

glabel func_802DDFF0_2C0420
    /* 2C0420 802DDFF0 27BDFF40 */  addiu      $sp, $sp, -0xC0
    /* 2C0424 802DDFF4 AFA400C0 */  sw         $a0, 0xC0($sp)
    /* 2C0428 802DDFF8 93AE00C3 */  lbu        $t6, 0xC3($sp)
    /* 2C042C 802DDFFC 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 2C0430 802DE000 AFB0003C */  sw         $s0, 0x3C($sp)
    /* 2C0434 802DE004 000E7880 */  sll        $t7, $t6, 2
    /* 2C0438 802DE008 01EE7821 */  addu       $t7, $t7, $t6
    /* 2C043C 802DE00C 000F7900 */  sll        $t7, $t7, 4
    /* 2C0440 802DE010 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 2C0444 802DE014 01F88021 */  addu       $s0, $t7, $t8
    /* 2C0448 802DE018 8E190020 */  lw         $t9, 0x20($s0)
    /* 2C044C 802DE01C AFBF0044 */  sw         $ra, 0x44($sp)
    /* 2C0450 802DE020 AFB10040 */  sw         $s1, 0x40($sp)
    /* 2C0454 802DE024 001972C0 */  sll        $t6, $t9, 11
    /* 2C0458 802DE028 05C00004 */  bltz       $t6, .L802DE03C_2C046C
    /* 2C045C 802DE02C 240F0BB8 */   addiu     $t7, $zero, 0xBB8
    /* 2C0460 802DE030 A60F002C */  sh         $t7, 0x2C($s0)
    /* 2C0464 802DE034 1000014E */  b          .L802DE570_2C09A0
    /* 2C0468 802DE038 A2000036 */   sb        $zero, 0x36($s0)
  .L802DE03C_2C046C:
    /* 2C046C 802DE03C 8603000C */  lh         $v1, 0xC($s0)
    /* 2C0470 802DE040 3C028015 */  lui        $v0, %hi(D_8014DD50)
    /* 2C0474 802DE044 2442DD50 */  addiu      $v0, $v0, %lo(D_8014DD50)
    /* 2C0478 802DE048 0003C100 */  sll        $t8, $v1, 4
    /* 2C047C 802DE04C 0058C821 */  addu       $t9, $v0, $t8
    /* 2C0480 802DE050 832D000C */  lb         $t5, 0xC($t9)
    /* 2C0484 802DE054 000D7100 */  sll        $t6, $t5, 4
    /* 2C0488 802DE058 004E8821 */  addu       $s1, $v0, $t6
    /* 2C048C 802DE05C 8225000D */  lb         $a1, 0xD($s1)
    /* 2C0490 802DE060 8224000C */  lb         $a0, 0xC($s1)
    /* 2C0494 802DE064 0005C900 */  sll        $t9, $a1, 4
    /* 2C0498 802DE068 00593021 */  addu       $a2, $v0, $t9
    /* 2C049C 802DE06C 80C7000D */  lb         $a3, 0xD($a2)
    /* 2C04A0 802DE070 00047900 */  sll        $t7, $a0, 4
    /* 2C04A4 802DE074 004FC021 */  addu       $t8, $v0, $t7
    /* 2C04A8 802DE078 00077100 */  sll        $t6, $a3, 4
    /* 2C04AC 802DE07C 8309000C */  lb         $t1, 0xC($t8)
    /* 2C04B0 802DE080 004E7821 */  addu       $t7, $v0, $t6
    /* 2C04B4 802DE084 AFAF0060 */  sw         $t7, 0x60($sp)
    /* 2C04B8 802DE088 81E8000C */  lb         $t0, 0xC($t7)
    /* 2C04BC 802DE08C 80CA000C */  lb         $t2, 0xC($a2)
    /* 2C04C0 802DE090 24060008 */  addiu      $a2, $zero, 0x8
    /* 2C04C4 802DE094 0008C900 */  sll        $t9, $t0, 4
    /* 2C04C8 802DE098 00597021 */  addu       $t6, $v0, $t9
    /* 2C04CC 802DE09C AFAE005C */  sw         $t6, 0x5C($sp)
    /* 2C04D0 802DE0A0 81EB000D */  lb         $t3, 0xD($t7)
    /* 2C04D4 802DE0A4 81DF000C */  lb         $ra, 0xC($t6)
    /* 2C04D8 802DE0A8 000BC900 */  sll        $t9, $t3, 4
    /* 2C04DC 802DE0AC 00597021 */  addu       $t6, $v0, $t9
    /* 2C04E0 802DE0B0 AFAE0058 */  sw         $t6, 0x58($sp)
    /* 2C04E4 802DE0B4 81CC000C */  lb         $t4, 0xC($t6)
    /* 2C04E8 802DE0B8 000CC100 */  sll        $t8, $t4, 4
    /* 2C04EC 802DE0BC 0058C821 */  addu       $t9, $v0, $t8
    /* 2C04F0 802DE0C0 AFB90054 */  sw         $t9, 0x54($sp)
    /* 2C04F4 802DE0C4 832F000C */  lb         $t7, 0xC($t9)
    /* 2C04F8 802DE0C8 3C18802E */  lui        $t8, %hi(D_802E2DA0)
    /* 2C04FC 802DE0CC 27182DA0 */  addiu      $t8, $t8, %lo(D_802E2DA0)
    /* 2C0500 802DE0D0 A7A50098 */  sh         $a1, 0x98($sp)
    /* 2C0504 802DE0D4 A7A40094 */  sh         $a0, 0x94($sp)
    /* 2C0508 802DE0D8 A7A7009C */  sh         $a3, 0x9C($sp)
    /* 2C050C 802DE0DC A7BF00A0 */  sh         $ra, 0xA0($sp)
    /* 2C0510 802DE0E0 27A70090 */  addiu      $a3, $sp, 0x90
    /* 2C0514 802DE0E4 93A400C3 */  lbu        $a0, 0xC3($sp)
    /* 2C0518 802DE0E8 2405000C */  addiu      $a1, $zero, 0xC
    /* 2C051C 802DE0EC AFB80010 */  sw         $t8, 0x10($sp)
    /* 2C0520 802DE0F0 A7A30090 */  sh         $v1, 0x90($sp)
    /* 2C0524 802DE0F4 A7AD0092 */  sh         $t5, 0x92($sp)
    /* 2C0528 802DE0F8 A7AD00BC */  sh         $t5, 0xBC($sp)
    /* 2C052C 802DE0FC A7A90096 */  sh         $t1, 0x96($sp)
    /* 2C0530 802DE100 A7A8009E */  sh         $t0, 0x9E($sp)
    /* 2C0534 802DE104 A7AA009A */  sh         $t2, 0x9A($sp)
    /* 2C0538 802DE108 A7AB00A2 */  sh         $t3, 0xA2($sp)
    /* 2C053C 802DE10C A7AC00A4 */  sh         $t4, 0xA4($sp)
    /* 2C0540 802DE110 A7AF00A8 */  sh         $t7, 0xA8($sp)
    /* 2C0544 802DE114 0C0207C6 */  jal        func_80081F18_90EC8
    /* 2C0548 802DE118 A7AF00A6 */   sh        $t7, 0xA6($sp)
    /* 2C054C 802DE11C 92190036 */  lbu        $t9, 0x36($s0)
    /* 2C0550 802DE120 304300FF */  andi       $v1, $v0, 0xFF
    /* 2C0554 802DE124 93A400C3 */  lbu        $a0, 0xC3($sp)
    /* 2C0558 802DE128 2B210003 */  slti       $at, $t9, 0x3
    /* 2C055C 802DE12C 10200005 */  beqz       $at, .L802DE144_2C0574
    /* 2C0560 802DE130 2405FF38 */   addiu     $a1, $zero, -0xC8
    /* 2C0564 802DE134 0C021D07 */  jal        func_8008741C_963CC
    /* 2C0568 802DE138 A3A30077 */   sb        $v1, 0x77($sp)
    /* 2C056C 802DE13C 10000002 */  b          .L802DE148_2C0578
    /* 2C0570 802DE140 93A30077 */   lbu       $v1, 0x77($sp)
  .L802DE144_2C0574:
    /* 2C0574 802DE144 A6000012 */  sh         $zero, 0x12($s0)
  .L802DE148_2C0578:
    /* 2C0578 802DE148 24010003 */  addiu      $at, $zero, 0x3
    /* 2C057C 802DE14C 1461006C */  bne        $v1, $at, .L802DE300_2C0730
    /* 2C0580 802DE150 AFA3004C */   sw        $v1, 0x4C($sp)
    /* 2C0584 802DE154 27AF0084 */  addiu      $t7, $sp, 0x84
    /* 2C0588 802DE158 27B80080 */  addiu      $t8, $sp, 0x80
    /* 2C058C 802DE15C 27B9007C */  addiu      $t9, $sp, 0x7C
    /* 2C0590 802DE160 AFB90018 */  sw         $t9, 0x18($sp)
    /* 2C0594 802DE164 AFB80014 */  sw         $t8, 0x14($sp)
    /* 2C0598 802DE168 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 2C059C 802DE16C 02002025 */  or         $a0, $s0, $zero
    /* 2C05A0 802DE170 86250000 */  lh         $a1, 0x0($s1)
    /* 2C05A4 802DE174 86260002 */  lh         $a2, 0x2($s1)
    /* 2C05A8 802DE178 0C04A10A */  jal        func_80128428_1373D8
    /* 2C05AC 802DE17C 86270004 */   lh        $a3, 0x4($s1)
    /* 2C05B0 802DE180 87A40086 */  lh         $a0, 0x86($sp)
    /* 2C05B4 802DE184 87A50082 */  lh         $a1, 0x82($sp)
    /* 2C05B8 802DE188 87A6007E */  lh         $a2, 0x7E($sp)
    /* 2C05BC 802DE18C 24070064 */  addiu      $a3, $zero, 0x64
    /* 2C05C0 802DE190 0C037E12 */  jal        func_800DF848_EE7F8
    /* 2C05C4 802DE194 AFA00010 */   sw        $zero, 0x10($sp)
    /* 2C05C8 802DE198 86030006 */  lh         $v1, 0x6($s0)
    /* 2C05CC 802DE19C 24634000 */  addiu      $v1, $v1, 0x4000
    /* 2C05D0 802DE1A0 3064FFFF */  andi       $a0, $v1, 0xFFFF
    /* 2C05D4 802DE1A4 0C007660 */  jal        sins
    /* 2C05D8 802DE1A8 AFA40050 */   sw        $a0, 0x50($sp)
    /* 2C05DC 802DE1AC 44822000 */  mtc1       $v0, $f4
    /* 2C05E0 802DE1B0 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2C05E4 802DE1B4 44815800 */  mtc1       $at, $f11
    /* 2C05E8 802DE1B8 468021A0 */  cvt.s.w    $f6, $f4
    /* 2C05EC 802DE1BC 44805000 */  mtc1       $zero, $f10
    /* 2C05F0 802DE1C0 3C01402E */  lui        $at, (0x402E0000 >> 16)
    /* 2C05F4 802DE1C4 44819800 */  mtc1       $at, $f19
    /* 2C05F8 802DE1C8 44809000 */  mtc1       $zero, $f18
    /* 2C05FC 802DE1CC 8FA40050 */  lw         $a0, 0x50($sp)
    /* 2C0600 802DE1D0 46003221 */  cvt.d.s    $f8, $f6
    /* 2C0604 802DE1D4 462A4403 */  div.d      $f16, $f8, $f10
    /* 2C0608 802DE1D8 46328102 */  mul.d      $f4, $f16, $f18
    /* 2C060C 802DE1DC 462021A0 */  cvt.s.d    $f6, $f4
    /* 2C0610 802DE1E0 0C007654 */  jal        coss
    /* 2C0614 802DE1E4 E7A6008C */   swc1      $f6, 0x8C($sp)
    /* 2C0618 802DE1E8 44824000 */  mtc1       $v0, $f8
    /* 2C061C 802DE1EC 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2C0620 802DE1F0 44819800 */  mtc1       $at, $f19
    /* 2C0624 802DE1F4 468042A0 */  cvt.s.w    $f10, $f8
    /* 2C0628 802DE1F8 44809000 */  mtc1       $zero, $f18
    /* 2C062C 802DE1FC 3C01C02E */  lui        $at, (0xC02E0000 >> 16)
    /* 2C0630 802DE200 44813800 */  mtc1       $at, $f7
    /* 2C0634 802DE204 44803000 */  mtc1       $zero, $f6
    /* 2C0638 802DE208 93A400C3 */  lbu        $a0, 0xC3($sp)
    /* 2C063C 802DE20C 46005421 */  cvt.d.s    $f16, $f10
    /* 2C0640 802DE210 87A500BC */  lh         $a1, 0xBC($sp)
    /* 2C0644 802DE214 46328103 */  div.d      $f4, $f16, $f18
    /* 2C0648 802DE218 46262202 */  mul.d      $f8, $f4, $f6
    /* 2C064C 802DE21C 462042A0 */  cvt.s.d    $f10, $f8
    /* 2C0650 802DE220 0C02245B */  jal        func_8008916C_9811C
    /* 2C0654 802DE224 E7AA0088 */   swc1      $f10, 0x88($sp)
    /* 2C0658 802DE228 920F001A */  lbu        $t7, 0x1A($s0)
    /* 2C065C 802DE22C 3C198025 */  lui        $t9, %hi(D_8025668C)
    /* 2C0660 802DE230 240EFFF8 */  addiu      $t6, $zero, -0x8
    /* 2C0664 802DE234 000FC080 */  sll        $t8, $t7, 2
    /* 2C0668 802DE238 030FC023 */  subu       $t8, $t8, $t7
    /* 2C066C 802DE23C 0018C080 */  sll        $t8, $t8, 2
    /* 2C0670 802DE240 030FC021 */  addu       $t8, $t8, $t7
    /* 2C0674 802DE244 0018C0C0 */  sll        $t8, $t8, 3
    /* 2C0678 802DE248 0338C821 */  addu       $t9, $t9, $t8
    /* 2C067C 802DE24C 8739668C */  lh         $t9, %lo(D_8025668C)($t9)
    /* 2C0680 802DE250 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 2C0684 802DE254 240E0001 */  addiu      $t6, $zero, 0x1
    /* 2C0688 802DE258 AFAE001C */  sw         $t6, 0x1C($sp)
    /* 2C068C 802DE25C 87A40086 */  lh         $a0, 0x86($sp)
    /* 2C0690 802DE260 87A50082 */  lh         $a1, 0x82($sp)
    /* 2C0694 802DE264 87A6007E */  lh         $a2, 0x7E($sp)
    /* 2C0698 802DE268 24070040 */  addiu      $a3, $zero, 0x40
    /* 2C069C 802DE26C AFA20018 */  sw         $v0, 0x18($sp)
    /* 2C06A0 802DE270 0C031E49 */  jal        func_800C7924_D68D4
    /* 2C06A4 802DE274 AFB90014 */   sw        $t9, 0x14($sp)
    /* 2C06A8 802DE278 860F0006 */  lh         $t7, 0x6($s0)
    /* 2C06AC 802DE27C 24184000 */  addiu      $t8, $zero, 0x4000
    /* 2C06B0 802DE280 00023C00 */  sll        $a3, $v0, 16
    /* 2C06B4 802DE284 030F2023 */  subu       $a0, $t8, $t7
    /* 2C06B8 802DE288 3099FFFF */  andi       $t9, $a0, 0xFFFF
    /* 2C06BC 802DE28C 00077403 */  sra        $t6, $a3, 16
    /* 2C06C0 802DE290 A7A2006E */  sh         $v0, 0x6E($sp)
    /* 2C06C4 802DE294 01C03825 */  or         $a3, $t6, $zero
    /* 2C06C8 802DE298 03202025 */  or         $a0, $t9, $zero
    /* 2C06CC 802DE29C 00002825 */  or         $a1, $zero, $zero
    /* 2C06D0 802DE2A0 0C03203C */  jal        func_800C80F0_D70A0
    /* 2C06D4 802DE2A4 00003025 */   or        $a2, $zero, $zero
    /* 2C06D8 802DE2A8 00002025 */  or         $a0, $zero, $zero
    /* 2C06DC 802DE2AC 00002825 */  or         $a1, $zero, $zero
    /* 2C06E0 802DE2B0 00003025 */  or         $a2, $zero, $zero
    /* 2C06E4 802DE2B4 0C032083 */  jal        func_800C820C_D71BC
    /* 2C06E8 802DE2B8 87A7006E */   lh        $a3, 0x6E($sp)
    /* 2C06EC 802DE2BC C7B0008C */  lwc1       $f16, 0x8C($sp)
    /* 2C06F0 802DE2C0 C7A40088 */  lwc1       $f4, 0x88($sp)
    /* 2C06F4 802DE2C4 24050005 */  addiu      $a1, $zero, 0x5
    /* 2C06F8 802DE2C8 4600848D */  trunc.w.s  $f18, $f16
    /* 2C06FC 802DE2CC 87A7006E */  lh         $a3, 0x6E($sp)
    /* 2C0700 802DE2D0 4600218D */  trunc.w.s  $f6, $f4
    /* 2C0704 802DE2D4 44199000 */  mfc1       $t9, $f18
    /* 2C0708 802DE2D8 00000000 */  nop
    /* 2C070C 802DE2DC 00197600 */  sll        $t6, $t9, 24
    /* 2C0710 802DE2E0 000E2603 */  sra        $a0, $t6, 24
    /* 2C0714 802DE2E4 440E3000 */  mfc1       $t6, $f6
    /* 2C0718 802DE2E8 00000000 */  nop
    /* 2C071C 802DE2EC 000EC600 */  sll        $t8, $t6, 24
    /* 2C0720 802DE2F0 0C032061 */  jal        func_800C8184_D7134
    /* 2C0724 802DE2F4 00183603 */   sra       $a2, $t8, 24
    /* 2C0728 802DE2F8 0C022384 */  jal        func_80088E10_97DC0
    /* 2C072C 802DE2FC 87A400BC */   lh        $a0, 0xBC($sp)
  .L802DE300_2C0730:
    /* 2C0730 802DE300 92030036 */  lbu        $v1, 0x36($s0)
    /* 2C0734 802DE304 28610003 */  slti       $at, $v1, 0x3
    /* 2C0738 802DE308 5420005F */  bnel       $at, $zero, .L802DE488_2C08B8
    /* 2C073C 802DE30C 28610007 */   slti      $at, $v1, 0x7
    /* 2C0740 802DE310 8619002C */  lh         $t9, 0x2C($s0)
    /* 2C0744 802DE314 24010006 */  addiu      $at, $zero, 0x6
    /* 2C0748 802DE318 3C188003 */  lui        $t8, %hi(D_80031420)
    /* 2C074C 802DE31C 0321001A */  div        $zero, $t9, $at
    /* 2C0750 802DE320 00007010 */  mfhi       $t6
    /* 2C0754 802DE324 55C00058 */  bnel       $t6, $zero, .L802DE488_2C08B8
    /* 2C0758 802DE328 28610007 */   slti      $at, $v1, 0x7
    /* 2C075C 802DE32C 8F181420 */  lw         $t8, %lo(D_80031420)($t8)
    /* 2C0760 802DE330 02002025 */  or         $a0, $s0, $zero
    /* 2C0764 802DE334 24018000 */  addiu      $at, $zero, -0x8000
    /* 2C0768 802DE338 330F0003 */  andi       $t7, $t8, 0x3
    /* 2C076C 802DE33C 11E00051 */  beqz       $t7, .L802DE484_2C08B4
    /* 2C0770 802DE340 27B80084 */   addiu     $t8, $sp, 0x84
    /* 2C0774 802DE344 86260002 */  lh         $a2, 0x2($s1)
    /* 2C0778 802DE348 27AF0080 */  addiu      $t7, $sp, 0x80
    /* 2C077C 802DE34C AFAF0014 */  sw         $t7, 0x14($sp)
    /* 2C0780 802DE350 00C13021 */  addu       $a2, $a2, $at
    /* 2C0784 802DE354 0006CC00 */  sll        $t9, $a2, 16
    /* 2C0788 802DE358 00193403 */  sra        $a2, $t9, 16
    /* 2C078C 802DE35C 27B9007C */  addiu      $t9, $sp, 0x7C
    /* 2C0790 802DE360 AFB90018 */  sw         $t9, 0x18($sp)
    /* 2C0794 802DE364 86250000 */  lh         $a1, 0x0($s1)
    /* 2C0798 802DE368 86270004 */  lh         $a3, 0x4($s1)
    /* 2C079C 802DE36C 0C04A10A */  jal        func_80128428_1373D8
    /* 2C07A0 802DE370 AFB80010 */   sw        $t8, 0x10($sp)
    /* 2C07A4 802DE374 86040006 */  lh         $a0, 0x6($s0)
    /* 2C07A8 802DE378 24844000 */  addiu      $a0, $a0, 0x4000
    /* 2C07AC 802DE37C 308EFFFF */  andi       $t6, $a0, 0xFFFF
    /* 2C07B0 802DE380 0C007660 */  jal        sins
    /* 2C07B4 802DE384 01C02025 */   or        $a0, $t6, $zero
    /* 2C07B8 802DE388 44824000 */  mtc1       $v0, $f8
    /* 2C07BC 802DE38C 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2C07C0 802DE390 44819800 */  mtc1       $at, $f19
    /* 2C07C4 802DE394 468042A0 */  cvt.s.w    $f10, $f8
    /* 2C07C8 802DE398 44809000 */  mtc1       $zero, $f18
    /* 2C07CC 802DE39C 86040006 */  lh         $a0, 0x6($s0)
    /* 2C07D0 802DE3A0 24844000 */  addiu      $a0, $a0, 0x4000
    /* 2C07D4 802DE3A4 46005421 */  cvt.d.s    $f16, $f10
    /* 2C07D8 802DE3A8 3098FFFF */  andi       $t8, $a0, 0xFFFF
    /* 2C07DC 802DE3AC 46328103 */  div.d      $f4, $f16, $f18
    /* 2C07E0 802DE3B0 03002025 */  or         $a0, $t8, $zero
    /* 2C07E4 802DE3B4 462021A0 */  cvt.s.d    $f6, $f4
    /* 2C07E8 802DE3B8 0C007654 */  jal        coss
    /* 2C07EC 802DE3BC E7A6008C */   swc1      $f6, 0x8C($sp)
    /* 2C07F0 802DE3C0 44824000 */  mtc1       $v0, $f8
    /* 2C07F4 802DE3C4 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2C07F8 802DE3C8 44819800 */  mtc1       $at, $f19
    /* 2C07FC 802DE3CC 468042A0 */  cvt.s.w    $f10, $f8
    /* 2C0800 802DE3D0 44809000 */  mtc1       $zero, $f18
    /* 2C0804 802DE3D4 46005421 */  cvt.d.s    $f16, $f10
    /* 2C0808 802DE3D8 46328103 */  div.d      $f4, $f16, $f18
    /* 2C080C 802DE3DC 46202187 */  neg.d      $f6, $f4
    /* 2C0810 802DE3E0 46203220 */  cvt.s.d    $f8, $f6
    /* 2C0814 802DE3E4 0C000E38 */  jal        func_800038E0_44E0
    /* 2C0818 802DE3E8 E7A80088 */   swc1      $f8, 0x88($sp)
    /* 2C081C 802DE3EC 3C014300 */  lui        $at, (0x43000000 >> 16)
    /* 2C0820 802DE3F0 44810000 */  mtc1       $at, $f0
    /* 2C0824 802DE3F4 24010050 */  addiu      $at, $zero, 0x50
    /* 2C0828 802DE3F8 0041001A */  div        $zero, $v0, $at
    /* 2C082C 802DE3FC C7AA008C */  lwc1       $f10, 0x8C($sp)
    /* 2C0830 802DE400 C7A40088 */  lwc1       $f4, 0x88($sp)
    /* 2C0834 802DE404 240E000A */  addiu      $t6, $zero, 0xA
    /* 2C0838 802DE408 46005402 */  mul.s      $f16, $f10, $f0
    /* 2C083C 802DE40C AFAE001C */  sw         $t6, 0x1C($sp)
    /* 2C0840 802DE410 24180014 */  addiu      $t8, $zero, 0x14
    /* 2C0844 802DE414 46002182 */  mul.s      $f6, $f4, $f0
    /* 2C0848 802DE418 AFB80020 */  sw         $t8, 0x20($sp)
    /* 2C084C 802DE41C 240E00B4 */  addiu      $t6, $zero, 0xB4
    /* 2C0850 802DE420 87A40086 */  lh         $a0, 0x86($sp)
    /* 2C0854 802DE424 87A50082 */  lh         $a1, 0x82($sp)
    /* 2C0858 802DE428 87A6007E */  lh         $a2, 0x7E($sp)
    /* 2C085C 802DE42C 4600848D */  trunc.w.s  $f18, $f16
    /* 2C0860 802DE430 AFA00010 */  sw         $zero, 0x10($sp)
    /* 2C0864 802DE434 AFA00028 */  sw         $zero, 0x28($sp)
    /* 2C0868 802DE438 4600320D */  trunc.w.s  $f8, $f6
    /* 2C086C 802DE43C 44079000 */  mfc1       $a3, $f18
    /* 2C0870 802DE440 00000000 */  nop
    /* 2C0874 802DE444 0007CE00 */  sll        $t9, $a3, 24
    /* 2C0878 802DE448 00193E03 */  sra        $a3, $t9, 24
    /* 2C087C 802DE44C 440F4000 */  mfc1       $t7, $f8
    /* 2C0880 802DE450 24190028 */  addiu      $t9, $zero, 0x28
    /* 2C0884 802DE454 AFB90018 */  sw         $t9, 0x18($sp)
    /* 2C0888 802DE458 0000C810 */  mfhi       $t9
    /* 2C088C 802DE45C 01D9C023 */  subu       $t8, $t6, $t9
    /* 2C0890 802DE460 AFAF0014 */  sw         $t7, 0x14($sp)
    /* 2C0894 802DE464 240F0032 */  addiu      $t7, $zero, 0x32
    /* 2C0898 802DE468 240E00FF */  addiu      $t6, $zero, 0xFF
    /* 2C089C 802DE46C AFAE0034 */  sw         $t6, 0x34($sp)
    /* 2C08A0 802DE470 AFAF0024 */  sw         $t7, 0x24($sp)
    /* 2C08A4 802DE474 AFAF0030 */  sw         $t7, 0x30($sp)
    /* 2C08A8 802DE478 0C03297B */  jal        func_800CA5EC_D959C
    /* 2C08AC 802DE47C AFB8002C */   sw        $t8, 0x2C($sp)
    /* 2C08B0 802DE480 92030036 */  lbu        $v1, 0x36($s0)
  .L802DE484_2C08B4:
    /* 2C08B4 802DE484 28610007 */  slti       $at, $v1, 0x7
  .L802DE488_2C08B8:
    /* 2C08B8 802DE488 14200024 */  bnez       $at, .L802DE51C_2C094C
    /* 2C08BC 802DE48C 8FA50060 */   lw        $a1, 0x60($sp)
    /* 2C08C0 802DE490 3C028005 */  lui        $v0, %hi(D_80052A8C)
    /* 2C08C4 802DE494 8C422A8C */  lw         $v0, %lo(D_80052A8C)($v0)
    /* 2C08C8 802DE498 94AF000A */  lhu        $t7, 0xA($a1)
    /* 2C08CC 802DE49C 8FA6005C */  lw         $a2, 0x5C($sp)
    /* 2C08D0 802DE4A0 30590001 */  andi       $t9, $v0, 0x1
    /* 2C08D4 802DE4A4 0019C040 */  sll        $t8, $t9, 1
    /* 2C08D8 802DE4A8 00181880 */  sll        $v1, $t8, 2
    /* 2C08DC 802DE4AC 00781821 */  addu       $v1, $v1, $t8
    /* 2C08E0 802DE4B0 00031880 */  sll        $v1, $v1, 2
    /* 2C08E4 802DE4B4 00781823 */  subu       $v1, $v1, $t8
    /* 2C08E8 802DE4B8 00031880 */  sll        $v1, $v1, 2
    /* 2C08EC 802DE4BC 00781823 */  subu       $v1, $v1, $t8
    /* 2C08F0 802DE4C0 00031880 */  sll        $v1, $v1, 2
    /* 2C08F4 802DE4C4 00182140 */  sll        $a0, $t8, 5
    /* 2C08F8 802DE4C8 00982023 */  subu       $a0, $a0, $t8
    /* 2C08FC 802DE4CC 01E37021 */  addu       $t6, $t7, $v1
    /* 2C0900 802DE4D0 25D9FED4 */  addiu      $t9, $t6, -0x12C
    /* 2C0904 802DE4D4 00042080 */  sll        $a0, $a0, 2
    /* 2C0908 802DE4D8 A4B9000A */  sh         $t9, 0xA($a1)
    /* 2C090C 802DE4DC 00982021 */  addu       $a0, $a0, $t8
    /* 2C0910 802DE4E0 94D8000A */  lhu        $t8, 0xA($a2)
    /* 2C0914 802DE4E4 00042080 */  sll        $a0, $a0, 2
    /* 2C0918 802DE4E8 8FA70058 */  lw         $a3, 0x58($sp)
    /* 2C091C 802DE4EC 03047821 */  addu       $t7, $t8, $a0
    /* 2C0920 802DE4F0 25EEFE0C */  addiu      $t6, $t7, -0x1F4
    /* 2C0924 802DE4F4 A4CE000A */  sh         $t6, 0xA($a2)
    /* 2C0928 802DE4F8 94F9000A */  lhu        $t9, 0xA($a3)
    /* 2C092C 802DE4FC 8FA80054 */  lw         $t0, 0x54($sp)
    /* 2C0930 802DE500 0323C023 */  subu       $t8, $t9, $v1
    /* 2C0934 802DE504 270F012C */  addiu      $t7, $t8, 0x12C
    /* 2C0938 802DE508 A4EF000A */  sh         $t7, 0xA($a3)
    /* 2C093C 802DE50C 950E000A */  lhu        $t6, 0xA($t0)
    /* 2C0940 802DE510 01C4C823 */  subu       $t9, $t6, $a0
    /* 2C0944 802DE514 273801F4 */  addiu      $t8, $t9, 0x1F4
    /* 2C0948 802DE518 A518000A */  sh         $t8, 0xA($t0)
  .L802DE51C_2C094C:
    /* 2C094C 802DE51C 8FAF004C */  lw         $t7, 0x4C($sp)
    /* 2C0950 802DE520 24010008 */  addiu      $at, $zero, 0x8
    /* 2C0954 802DE524 3C078025 */  lui        $a3, %hi(D_8025668C)
    /* 2C0958 802DE528 55E10012 */  bnel       $t7, $at, .L802DE574_2C09A4
    /* 2C095C 802DE52C 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 2C0960 802DE530 920E001A */  lbu        $t6, 0x1A($s0)
    /* 2C0964 802DE534 A600002C */  sh         $zero, 0x2C($s0)
    /* 2C0968 802DE538 86040000 */  lh         $a0, 0x0($s0)
    /* 2C096C 802DE53C 000EC880 */  sll        $t9, $t6, 2
    /* 2C0970 802DE540 032EC823 */  subu       $t9, $t9, $t6
    /* 2C0974 802DE544 0019C880 */  sll        $t9, $t9, 2
    /* 2C0978 802DE548 032EC821 */  addu       $t9, $t9, $t6
    /* 2C097C 802DE54C 0019C8C0 */  sll        $t9, $t9, 3
    /* 2C0980 802DE550 00F93821 */  addu       $a3, $a3, $t9
    /* 2C0984 802DE554 84E7668C */  lh         $a3, %lo(D_8025668C)($a3)
    /* 2C0988 802DE558 86050002 */  lh         $a1, 0x2($s0)
    /* 2C098C 802DE55C 86060004 */  lh         $a2, 0x4($s0)
    /* 2C0990 802DE560 0007C043 */  sra        $t8, $a3, 1
    /* 2C0994 802DE564 3307FFFF */  andi       $a3, $t8, 0xFFFF
    /* 2C0998 802DE568 0C037E12 */  jal        func_800DF848_EE7F8
    /* 2C099C 802DE56C AFA00010 */   sw        $zero, 0x10($sp)
  .L802DE570_2C09A0:
    /* 2C09A0 802DE570 8FBF0044 */  lw         $ra, 0x44($sp)
  .L802DE574_2C09A4:
    /* 2C09A4 802DE574 8FB0003C */  lw         $s0, 0x3C($sp)
    /* 2C09A8 802DE578 8FB10040 */  lw         $s1, 0x40($sp)
    /* 2C09AC 802DE57C 03E00008 */  jr         $ra
    /* 2C09B0 802DE580 27BD00C0 */   addiu     $sp, $sp, 0xC0
endlabel func_802DDFF0_2C0420
