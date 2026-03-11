nonmatching func_802DCCD8_25C418, 0x42C

glabel func_802DCCD8_25C418
    /* 25C418 802DCCD8 27BDFF88 */  addiu      $sp, $sp, -0x78
    /* 25C41C 802DCCDC 3C0E802E */  lui        $t6, %hi(D_802E09AC)
    /* 25C420 802DCCE0 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 25C424 802DCCE4 AFB20020 */  sw         $s2, 0x20($sp)
    /* 25C428 802DCCE8 AFB1001C */  sw         $s1, 0x1C($sp)
    /* 25C42C 802DCCEC AFB00018 */  sw         $s0, 0x18($sp)
    /* 25C430 802DCCF0 AFA40078 */  sw         $a0, 0x78($sp)
    /* 25C434 802DCCF4 25CE09AC */  addiu      $t6, $t6, %lo(D_802E09AC)
    /* 25C438 802DCCF8 8DC10000 */  lw         $at, 0x0($t6)
    /* 25C43C 802DCCFC 27A50070 */  addiu      $a1, $sp, 0x70
    /* 25C440 802DCD00 3C0C802E */  lui        $t4, %hi(D_802E09B4)
    /* 25C444 802DCD04 ACA10000 */  sw         $at, 0x0($a1)
    /* 25C448 802DCD08 95C10004 */  lhu        $at, 0x4($t6)
    /* 25C44C 802DCD0C 258C09B4 */  addiu      $t4, $t4, %lo(D_802E09B4)
    /* 25C450 802DCD10 27AB0068 */  addiu      $t3, $sp, 0x68
    /* 25C454 802DCD14 A4A10004 */  sh         $at, 0x4($a1)
    /* 25C458 802DCD18 8D810000 */  lw         $at, 0x0($t4)
    /* 25C45C 802DCD1C 3C19802E */  lui        $t9, %hi(D_802E09BC)
    /* 25C460 802DCD20 273909BC */  addiu      $t9, $t9, %lo(D_802E09BC)
    /* 25C464 802DCD24 AD610000 */  sw         $at, 0x0($t3)
    /* 25C468 802DCD28 95810004 */  lhu        $at, 0x4($t4)
    /* 25C46C 802DCD2C 27AE0060 */  addiu      $t6, $sp, 0x60
    /* 25C470 802DCD30 3C0D8005 */  lui        $t5, %hi(alienInstances)
    /* 25C474 802DCD34 A5610004 */  sh         $at, 0x4($t3)
    /* 25C478 802DCD38 8F210000 */  lw         $at, 0x0($t9)
    /* 25C47C 802DCD3C 25AD8198 */  addiu      $t5, $t5, %lo(alienInstances)
    /* 25C480 802DCD40 3C038015 */  lui        $v1, %hi(D_8014DD50)
    /* 25C484 802DCD44 ADC10000 */  sw         $at, 0x0($t6)
    /* 25C488 802DCD48 97210004 */  lhu        $at, 0x4($t9)
    /* 25C48C 802DCD4C 2463DD50 */  addiu      $v1, $v1, %lo(D_8014DD50)
    /* 25C490 802DCD50 27B2004C */  addiu      $s2, $sp, 0x4C
    /* 25C494 802DCD54 A5C10004 */  sh         $at, 0x4($t6)
    /* 25C498 802DCD58 93AC007B */  lbu        $t4, 0x7B($sp)
    /* 25C49C 802DCD5C 02403025 */  or         $a2, $s2, $zero
    /* 25C4A0 802DCD60 000C7880 */  sll        $t7, $t4, 2
    /* 25C4A4 802DCD64 01EC7821 */  addu       $t7, $t7, $t4
    /* 25C4A8 802DCD68 000F7900 */  sll        $t7, $t7, 4
    /* 25C4AC 802DCD6C 01ED3821 */  addu       $a3, $t7, $t5
    /* 25C4B0 802DCD70 84F1000C */  lh         $s1, 0xC($a3)
    /* 25C4B4 802DCD74 90F8001A */  lbu        $t8, 0x1A($a3)
    /* 25C4B8 802DCD78 00117100 */  sll        $t6, $s1, 4
    /* 25C4BC 802DCD7C 006EC821 */  addu       $t9, $v1, $t6
    /* 25C4C0 802DCD80 832A000C */  lb         $t2, 0xC($t9)
    /* 25C4C4 802DCD84 A3B80041 */  sb         $t8, 0x41($sp)
    /* 25C4C8 802DCD88 000A5900 */  sll        $t3, $t2, 4
    /* 25C4CC 802DCD8C 006B6021 */  addu       $t4, $v1, $t3
    /* 25C4D0 802DCD90 8188000C */  lb         $t0, 0xC($t4)
    /* 25C4D4 802DCD94 00087900 */  sll        $t7, $t0, 4
    /* 25C4D8 802DCD98 006F6821 */  addu       $t5, $v1, $t7
    /* 25C4DC 802DCD9C 81A9000D */  lb         $t1, 0xD($t5)
    /* 25C4E0 802DCDA0 0009C100 */  sll        $t8, $t1, 4
    /* 25C4E4 802DCDA4 00788021 */  addu       $s0, $v1, $t8
    /* 25C4E8 802DCDA8 8202000C */  lb         $v0, 0xC($s0)
    /* 25C4EC 802DCDAC 00027100 */  sll        $t6, $v0, 4
    /* 25C4F0 802DCDB0 006EC821 */  addu       $t9, $v1, $t6
    /* 25C4F4 802DCDB4 8322000D */  lb         $v0, 0xD($t9)
    /* 25C4F8 802DCDB8 A7AA0048 */  sh         $t2, 0x48($sp)
    /* 25C4FC 802DCDBC 00022600 */  sll        $a0, $v0, 24
    /* 25C500 802DCDC0 00045E03 */  sra        $t3, $a0, 24
    /* 25C504 802DCDC4 01602025 */  or         $a0, $t3, $zero
    /* 25C508 802DCDC8 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 25C50C 802DCDCC AFAB0038 */   sw        $t3, 0x38($sp)
    /* 25C510 802DCDD0 860C0000 */  lh         $t4, 0x0($s0)
    /* 25C514 802DCDD4 8FAF004C */  lw         $t7, 0x4C($sp)
    /* 25C518 802DCDD8 87AA0048 */  lh         $t2, 0x48($sp)
    /* 25C51C 802DCDDC 86180002 */  lh         $t8, 0x2($s0)
    /* 25C520 802DCDE0 018F6821 */  addu       $t5, $t4, $t7
    /* 25C524 802DCDE4 8FAE0050 */  lw         $t6, 0x50($sp)
    /* 25C528 802DCDE8 8FAC0054 */  lw         $t4, 0x54($sp)
    /* 25C52C 802DCDEC 860B0004 */  lh         $t3, 0x4($s0)
    /* 25C530 802DCDF0 A7AD0058 */  sh         $t5, 0x58($sp)
    /* 25C534 802DCDF4 000A2600 */  sll        $a0, $t2, 24
    /* 25C538 802DCDF8 00046E03 */  sra        $t5, $a0, 24
    /* 25C53C 802DCDFC 030EC821 */  addu       $t9, $t8, $t6
    /* 25C540 802DCE00 016C7821 */  addu       $t7, $t3, $t4
    /* 25C544 802DCE04 A7B9005A */  sh         $t9, 0x5A($sp)
    /* 25C548 802DCE08 A7AF005C */  sh         $t7, 0x5C($sp)
    /* 25C54C 802DCE0C 01A02025 */  or         $a0, $t5, $zero
    /* 25C550 802DCE10 AFAD0034 */  sw         $t5, 0x34($sp)
    /* 25C554 802DCE14 27A50058 */  addiu      $a1, $sp, 0x58
    /* 25C558 802DCE18 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 25C55C 802DCE1C 02403025 */   or        $a2, $s2, $zero
    /* 25C560 802DCE20 8FB8004C */  lw         $t8, 0x4C($sp)
    /* 25C564 802DCE24 8FAE0050 */  lw         $t6, 0x50($sp)
    /* 25C568 802DCE28 8FB90054 */  lw         $t9, 0x54($sp)
    /* 25C56C 802DCE2C 00112600 */  sll        $a0, $s1, 24
    /* 25C570 802DCE30 00045E03 */  sra        $t3, $a0, 24
    /* 25C574 802DCE34 01602025 */  or         $a0, $t3, $zero
    /* 25C578 802DCE38 AFAB0030 */  sw         $t3, 0x30($sp)
    /* 25C57C 802DCE3C 27A50058 */  addiu      $a1, $sp, 0x58
    /* 25C580 802DCE40 02403025 */  or         $a2, $s2, $zero
    /* 25C584 802DCE44 A7B80058 */  sh         $t8, 0x58($sp)
    /* 25C588 802DCE48 A7AE005A */  sh         $t6, 0x5A($sp)
    /* 25C58C 802DCE4C 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 25C590 802DCE50 A7B9005C */   sh        $t9, 0x5C($sp)
    /* 25C594 802DCE54 8FB8004C */  lw         $t8, 0x4C($sp)
    /* 25C598 802DCE58 3C01802E */  lui        $at, %hi(D_802DF3A8)
    /* 25C59C 802DCE5C C420F3A8 */  lwc1       $f0, %lo(D_802DF3A8)($at)
    /* 25C5A0 802DCE60 44982000 */  mtc1       $t8, $f4
    /* 25C5A4 802DCE64 93AC0041 */  lbu        $t4, 0x41($sp)
    /* 25C5A8 802DCE68 8FAB0050 */  lw         $t3, 0x50($sp)
    /* 25C5AC 802DCE6C 468021A0 */  cvt.s.w    $f6, $f4
    /* 25C5B0 802DCE70 000C7880 */  sll        $t7, $t4, 2
    /* 25C5B4 802DCE74 01EC7823 */  subu       $t7, $t7, $t4
    /* 25C5B8 802DCE78 000F7880 */  sll        $t7, $t7, 2
    /* 25C5BC 802DCE7C 3C0D8025 */  lui        $t5, %hi(alienSpecs)
    /* 25C5C0 802DCE80 01EC7821 */  addu       $t7, $t7, $t4
    /* 25C5C4 802DCE84 46003202 */  mul.s      $f8, $f6, $f0
    /* 25C5C8 802DCE88 000F78C0 */  sll        $t7, $t7, 3
    /* 25C5CC 802DCE8C 25AD6680 */  addiu      $t5, $t5, %lo(alienSpecs)
    /* 25C5D0 802DCE90 01ED8821 */  addu       $s1, $t7, $t5
    /* 25C5D4 802DCE94 8FAD0054 */  lw         $t5, 0x54($sp)
    /* 25C5D8 802DCE98 448B8000 */  mtc1       $t3, $f16
    /* 25C5DC 802DCE9C 93A4007B */  lbu        $a0, 0x7B($sp)
    /* 25C5E0 802DCEA0 4600428D */  trunc.w.s  $f10, $f8
    /* 25C5E4 802DCEA4 448D4000 */  mtc1       $t5, $f8
    /* 25C5E8 802DCEA8 24050064 */  addiu      $a1, $zero, 0x64
    /* 25C5EC 802DCEAC 468084A0 */  cvt.s.w    $f18, $f16
    /* 25C5F0 802DCEB0 44195000 */  mfc1       $t9, $f10
    /* 25C5F4 802DCEB4 24060001 */  addiu      $a2, $zero, 0x1
    /* 25C5F8 802DCEB8 A639002C */  sh         $t9, 0x2C($s1)
    /* 25C5FC 802DCEBC 468042A0 */  cvt.s.w    $f10, $f8
    /* 25C600 802DCEC0 46009102 */  mul.s      $f4, $f18, $f0
    /* 25C604 802DCEC4 00000000 */  nop
    /* 25C608 802DCEC8 46005402 */  mul.s      $f16, $f10, $f0
    /* 25C60C 802DCECC 4600218D */  trunc.w.s  $f6, $f4
    /* 25C610 802DCED0 4600848D */  trunc.w.s  $f18, $f16
    /* 25C614 802DCED4 440F3000 */  mfc1       $t7, $f6
    /* 25C618 802DCED8 440E9000 */  mfc1       $t6, $f18
    /* 25C61C 802DCEDC A62F002E */  sh         $t7, 0x2E($s1)
    /* 25C620 802DCEE0 0C021E69 */  jal        func_800879A4_96954
    /* 25C624 802DCEE4 A62E0030 */   sh        $t6, 0x30($s1)
    /* 25C628 802DCEE8 10400003 */  beqz       $v0, .L802DCEF8_25C638
    /* 25C62C 802DCEEC 83A4003B */   lb        $a0, 0x3B($sp)
    /* 25C630 802DCEF0 1000007E */  b          .L802DD0EC_25C82C
    /* 25C634 802DCEF4 24020001 */   addiu     $v0, $zero, 0x1
  .L802DCEF8_25C638:
    /* 25C638 802DCEF8 27A50068 */  addiu      $a1, $sp, 0x68
    /* 25C63C 802DCEFC 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 25C640 802DCF00 02403025 */   or        $a2, $s2, $zero
    /* 25C644 802DCF04 86190000 */  lh         $t9, 0x0($s0)
    /* 25C648 802DCF08 8FAB004C */  lw         $t3, 0x4C($sp)
    /* 25C64C 802DCF0C 860F0002 */  lh         $t7, 0x2($s0)
    /* 25C650 802DCF10 8FAD0050 */  lw         $t5, 0x50($sp)
    /* 25C654 802DCF14 032B6021 */  addu       $t4, $t9, $t3
    /* 25C658 802DCF18 8FB90054 */  lw         $t9, 0x54($sp)
    /* 25C65C 802DCF1C 860E0004 */  lh         $t6, 0x4($s0)
    /* 25C660 802DCF20 01EDC021 */  addu       $t8, $t7, $t5
    /* 25C664 802DCF24 A7AC0058 */  sh         $t4, 0x58($sp)
    /* 25C668 802DCF28 01D95821 */  addu       $t3, $t6, $t9
    /* 25C66C 802DCF2C A7B8005A */  sh         $t8, 0x5A($sp)
    /* 25C670 802DCF30 A7AB005C */  sh         $t3, 0x5C($sp)
    /* 25C674 802DCF34 83A40037 */  lb         $a0, 0x37($sp)
    /* 25C678 802DCF38 27A50058 */  addiu      $a1, $sp, 0x58
    /* 25C67C 802DCF3C 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 25C680 802DCF40 02403025 */   or        $a2, $s2, $zero
    /* 25C684 802DCF44 8FAC004C */  lw         $t4, 0x4C($sp)
    /* 25C688 802DCF48 8FAF0050 */  lw         $t7, 0x50($sp)
    /* 25C68C 802DCF4C 8FAD0054 */  lw         $t5, 0x54($sp)
    /* 25C690 802DCF50 83A40033 */  lb         $a0, 0x33($sp)
    /* 25C694 802DCF54 27A50058 */  addiu      $a1, $sp, 0x58
    /* 25C698 802DCF58 02403025 */  or         $a2, $s2, $zero
    /* 25C69C 802DCF5C A7AC0058 */  sh         $t4, 0x58($sp)
    /* 25C6A0 802DCF60 A7AF005A */  sh         $t7, 0x5A($sp)
    /* 25C6A4 802DCF64 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 25C6A8 802DCF68 A7AD005C */   sh        $t5, 0x5C($sp)
    /* 25C6AC 802DCF6C 8FB8004C */  lw         $t8, 0x4C($sp)
    /* 25C6B0 802DCF70 3C01802E */  lui        $at, %hi(D_802DF3A8)
    /* 25C6B4 802DCF74 C420F3A8 */  lwc1       $f0, %lo(D_802DF3A8)($at)
    /* 25C6B8 802DCF78 44982000 */  mtc1       $t8, $f4
    /* 25C6BC 802DCF7C 8FAB0050 */  lw         $t3, 0x50($sp)
    /* 25C6C0 802DCF80 8FAD0054 */  lw         $t5, 0x54($sp)
    /* 25C6C4 802DCF84 468021A0 */  cvt.s.w    $f6, $f4
    /* 25C6C8 802DCF88 448B8000 */  mtc1       $t3, $f16
    /* 25C6CC 802DCF8C 93A4007B */  lbu        $a0, 0x7B($sp)
    /* 25C6D0 802DCF90 24050064 */  addiu      $a1, $zero, 0x64
    /* 25C6D4 802DCF94 24060001 */  addiu      $a2, $zero, 0x1
    /* 25C6D8 802DCF98 468084A0 */  cvt.s.w    $f18, $f16
    /* 25C6DC 802DCF9C 46003202 */  mul.s      $f8, $f6, $f0
    /* 25C6E0 802DCFA0 4600428D */  trunc.w.s  $f10, $f8
    /* 25C6E4 802DCFA4 448D4000 */  mtc1       $t5, $f8
    /* 25C6E8 802DCFA8 46009102 */  mul.s      $f4, $f18, $f0
    /* 25C6EC 802DCFAC 44195000 */  mfc1       $t9, $f10
    /* 25C6F0 802DCFB0 00000000 */  nop
    /* 25C6F4 802DCFB4 A639002C */  sh         $t9, 0x2C($s1)
    /* 25C6F8 802DCFB8 468042A0 */  cvt.s.w    $f10, $f8
    /* 25C6FC 802DCFBC 4600218D */  trunc.w.s  $f6, $f4
    /* 25C700 802DCFC0 46005402 */  mul.s      $f16, $f10, $f0
    /* 25C704 802DCFC4 440F3000 */  mfc1       $t7, $f6
    /* 25C708 802DCFC8 00000000 */  nop
    /* 25C70C 802DCFCC A62F002E */  sh         $t7, 0x2E($s1)
    /* 25C710 802DCFD0 4600848D */  trunc.w.s  $f18, $f16
    /* 25C714 802DCFD4 440E9000 */  mfc1       $t6, $f18
    /* 25C718 802DCFD8 0C021E69 */  jal        func_800879A4_96954
    /* 25C71C 802DCFDC A62E0030 */   sh        $t6, 0x30($s1)
    /* 25C720 802DCFE0 10400003 */  beqz       $v0, .L802DCFF0_25C730
    /* 25C724 802DCFE4 83A4003B */   lb        $a0, 0x3B($sp)
    /* 25C728 802DCFE8 10000040 */  b          .L802DD0EC_25C82C
    /* 25C72C 802DCFEC 24020001 */   addiu     $v0, $zero, 0x1
  .L802DCFF0_25C730:
    /* 25C730 802DCFF0 27A50060 */  addiu      $a1, $sp, 0x60
    /* 25C734 802DCFF4 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 25C738 802DCFF8 02403025 */   or        $a2, $s2, $zero
    /* 25C73C 802DCFFC 86190000 */  lh         $t9, 0x0($s0)
    /* 25C740 802DD000 8FAB004C */  lw         $t3, 0x4C($sp)
    /* 25C744 802DD004 860F0002 */  lh         $t7, 0x2($s0)
    /* 25C748 802DD008 8FAD0050 */  lw         $t5, 0x50($sp)
    /* 25C74C 802DD00C 032B6021 */  addu       $t4, $t9, $t3
    /* 25C750 802DD010 8FB90054 */  lw         $t9, 0x54($sp)
    /* 25C754 802DD014 860E0004 */  lh         $t6, 0x4($s0)
    /* 25C758 802DD018 01EDC021 */  addu       $t8, $t7, $t5
    /* 25C75C 802DD01C A7AC0058 */  sh         $t4, 0x58($sp)
    /* 25C760 802DD020 01D95821 */  addu       $t3, $t6, $t9
    /* 25C764 802DD024 A7B8005A */  sh         $t8, 0x5A($sp)
    /* 25C768 802DD028 A7AB005C */  sh         $t3, 0x5C($sp)
    /* 25C76C 802DD02C 83A40037 */  lb         $a0, 0x37($sp)
    /* 25C770 802DD030 27A50058 */  addiu      $a1, $sp, 0x58
    /* 25C774 802DD034 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 25C778 802DD038 02403025 */   or        $a2, $s2, $zero
    /* 25C77C 802DD03C 8FAC004C */  lw         $t4, 0x4C($sp)
    /* 25C780 802DD040 8FAF0050 */  lw         $t7, 0x50($sp)
    /* 25C784 802DD044 8FAD0054 */  lw         $t5, 0x54($sp)
    /* 25C788 802DD048 83A40033 */  lb         $a0, 0x33($sp)
    /* 25C78C 802DD04C 27A50058 */  addiu      $a1, $sp, 0x58
    /* 25C790 802DD050 02403025 */  or         $a2, $s2, $zero
    /* 25C794 802DD054 A7AC0058 */  sh         $t4, 0x58($sp)
    /* 25C798 802DD058 A7AF005A */  sh         $t7, 0x5A($sp)
    /* 25C79C 802DD05C 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 25C7A0 802DD060 A7AD005C */   sh        $t5, 0x5C($sp)
    /* 25C7A4 802DD064 8FB8004C */  lw         $t8, 0x4C($sp)
    /* 25C7A8 802DD068 3C01802E */  lui        $at, %hi(D_802DF3A8)
    /* 25C7AC 802DD06C C420F3A8 */  lwc1       $f0, %lo(D_802DF3A8)($at)
    /* 25C7B0 802DD070 44982000 */  mtc1       $t8, $f4
    /* 25C7B4 802DD074 8FAB0050 */  lw         $t3, 0x50($sp)
    /* 25C7B8 802DD078 8FAD0054 */  lw         $t5, 0x54($sp)
    /* 25C7BC 802DD07C 468021A0 */  cvt.s.w    $f6, $f4
    /* 25C7C0 802DD080 448B8000 */  mtc1       $t3, $f16
    /* 25C7C4 802DD084 93A4007B */  lbu        $a0, 0x7B($sp)
    /* 25C7C8 802DD088 24050064 */  addiu      $a1, $zero, 0x64
    /* 25C7CC 802DD08C 24060001 */  addiu      $a2, $zero, 0x1
    /* 25C7D0 802DD090 468084A0 */  cvt.s.w    $f18, $f16
    /* 25C7D4 802DD094 46003202 */  mul.s      $f8, $f6, $f0
    /* 25C7D8 802DD098 4600428D */  trunc.w.s  $f10, $f8
    /* 25C7DC 802DD09C 448D4000 */  mtc1       $t5, $f8
    /* 25C7E0 802DD0A0 46009102 */  mul.s      $f4, $f18, $f0
    /* 25C7E4 802DD0A4 44195000 */  mfc1       $t9, $f10
    /* 25C7E8 802DD0A8 00000000 */  nop
    /* 25C7EC 802DD0AC A639002C */  sh         $t9, 0x2C($s1)
    /* 25C7F0 802DD0B0 468042A0 */  cvt.s.w    $f10, $f8
    /* 25C7F4 802DD0B4 4600218D */  trunc.w.s  $f6, $f4
    /* 25C7F8 802DD0B8 46005402 */  mul.s      $f16, $f10, $f0
    /* 25C7FC 802DD0BC 440F3000 */  mfc1       $t7, $f6
    /* 25C800 802DD0C0 00000000 */  nop
    /* 25C804 802DD0C4 A62F002E */  sh         $t7, 0x2E($s1)
    /* 25C808 802DD0C8 4600848D */  trunc.w.s  $f18, $f16
    /* 25C80C 802DD0CC 440E9000 */  mfc1       $t6, $f18
    /* 25C810 802DD0D0 0C021E69 */  jal        func_800879A4_96954
    /* 25C814 802DD0D4 A62E0030 */   sh        $t6, 0x30($s1)
    /* 25C818 802DD0D8 50400004 */  beql       $v0, $zero, .L802DD0EC_25C82C
    /* 25C81C 802DD0DC 00001025 */   or        $v0, $zero, $zero
    /* 25C820 802DD0E0 10000002 */  b          .L802DD0EC_25C82C
    /* 25C824 802DD0E4 24020001 */   addiu     $v0, $zero, 0x1
    /* 25C828 802DD0E8 00001025 */  or         $v0, $zero, $zero
  .L802DD0EC_25C82C:
    /* 25C82C 802DD0EC 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 25C830 802DD0F0 8FB00018 */  lw         $s0, 0x18($sp)
    /* 25C834 802DD0F4 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 25C838 802DD0F8 8FB20020 */  lw         $s2, 0x20($sp)
    /* 25C83C 802DD0FC 03E00008 */  jr         $ra
    /* 25C840 802DD100 27BD0078 */   addiu     $sp, $sp, 0x78
endlabel func_802DCCD8_25C418
