nonmatching func_802DD240_2BF670, 0x1C8

glabel func_802DD240_2BF670
    /* 2BF670 802DD240 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* 2BF674 802DD244 AFBF0034 */  sw         $ra, 0x34($sp)
    /* 2BF678 802DD248 AFA40060 */  sw         $a0, 0x60($sp)
    /* 2BF67C 802DD24C 93A40063 */  lbu        $a0, 0x63($sp)
    /* 2BF680 802DD250 0C04DD1A */  jal        func_80137468_146418
    /* 2BF684 802DD254 2405019B */   addiu     $a1, $zero, 0x19B
    /* 2BF688 802DD258 93AE0063 */  lbu        $t6, 0x63($sp)
    /* 2BF68C 802DD25C 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 2BF690 802DD260 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 2BF694 802DD264 000E7880 */  sll        $t7, $t6, 2
    /* 2BF698 802DD268 01EE7821 */  addu       $t7, $t7, $t6
    /* 2BF69C 802DD26C 000F7900 */  sll        $t7, $t7, 4
    /* 2BF6A0 802DD270 01F81021 */  addu       $v0, $t7, $t8
    /* 2BF6A4 802DD274 84430000 */  lh         $v1, 0x0($v0)
    /* 2BF6A8 802DD278 84470004 */  lh         $a3, 0x4($v0)
    /* 2BF6AC 802DD27C 44805000 */  mtc1       $zero, $f10
    /* 2BF6B0 802DD280 04610003 */  bgez       $v1, .L802DD290_2BF6C0
    /* 2BF6B4 802DD284 0003C883 */   sra       $t9, $v1, 2
    /* 2BF6B8 802DD288 24610003 */  addiu      $at, $v1, 0x3
    /* 2BF6BC 802DD28C 0001C883 */  sra        $t9, $at, 2
  .L802DD290_2BF6C0:
    /* 2BF6C0 802DD290 3C018004 */  lui        $at, %hi(D_80047954)
    /* 2BF6C4 802DD294 C4287954 */  lwc1       $f8, %lo(D_80047954)($at)
    /* 2BF6C8 802DD298 44992000 */  mtc1       $t9, $f4
    /* 2BF6CC 802DD29C 27A4005C */  addiu      $a0, $sp, 0x5C
    /* 2BF6D0 802DD2A0 27A50058 */  addiu      $a1, $sp, 0x58
    /* 2BF6D4 802DD2A4 468021A0 */  cvt.s.w    $f6, $f4
    /* 2BF6D8 802DD2A8 27A60054 */  addiu      $a2, $sp, 0x54
    /* 2BF6DC 802DD2AC AFA30050 */  sw         $v1, 0x50($sp)
    /* 2BF6E0 802DD2B0 AFA70048 */  sw         $a3, 0x48($sp)
    /* 2BF6E4 802DD2B4 E7AA0058 */  swc1       $f10, 0x58($sp)
    /* 2BF6E8 802DD2B8 46083081 */  sub.s      $f2, $f6, $f8
    /* 2BF6EC 802DD2BC 04E10003 */  bgez       $a3, .L802DD2CC_2BF6FC
    /* 2BF6F0 802DD2C0 00074083 */   sra       $t0, $a3, 2
    /* 2BF6F4 802DD2C4 24E10003 */  addiu      $at, $a3, 0x3
    /* 2BF6F8 802DD2C8 00014083 */  sra        $t0, $at, 2
  .L802DD2CC_2BF6FC:
    /* 2BF6FC 802DD2CC 44888000 */  mtc1       $t0, $f16
    /* 2BF700 802DD2D0 3C018004 */  lui        $at, %hi(D_8004795C)
    /* 2BF704 802DD2D4 C424795C */  lwc1       $f4, %lo(D_8004795C)($at)
    /* 2BF708 802DD2D8 468084A0 */  cvt.s.w    $f18, $f16
    /* 2BF70C 802DD2DC E7A2005C */  swc1       $f2, 0x5C($sp)
    /* 2BF710 802DD2E0 46049301 */  sub.s      $f12, $f18, $f4
    /* 2BF714 802DD2E4 0C00A040 */  jal        guNormalize
    /* 2BF718 802DD2E8 E7AC0054 */   swc1      $f12, 0x54($sp)
    /* 2BF71C 802DD2EC 3C01437A */  lui        $at, (0x437A0000 >> 16)
    /* 2BF720 802DD2F0 44810000 */  mtc1       $at, $f0
    /* 2BF724 802DD2F4 C7A2005C */  lwc1       $f2, 0x5C($sp)
    /* 2BF728 802DD2F8 8FA30050 */  lw         $v1, 0x50($sp)
    /* 2BF72C 802DD2FC 8FA70048 */  lw         $a3, 0x48($sp)
    /* 2BF730 802DD300 46001082 */  mul.s      $f2, $f2, $f0
    /* 2BF734 802DD304 C7AC0054 */  lwc1       $f12, 0x54($sp)
    /* 2BF738 802DD308 44833000 */  mtc1       $v1, $f6
    /* 2BF73C 802DD30C 44879000 */  mtc1       $a3, $f18
    /* 2BF740 802DD310 46006302 */  mul.s      $f12, $f12, $f0
    /* 2BF744 802DD314 E7A2005C */  swc1       $f2, 0x5C($sp)
    /* 2BF748 802DD318 46803220 */  cvt.s.w    $f8, $f6
    /* 2BF74C 802DD31C E7AC0054 */  swc1       $f12, 0x54($sp)
    /* 2BF750 802DD320 46809120 */  cvt.s.w    $f4, $f18
    /* 2BF754 802DD324 46024281 */  sub.s      $f10, $f8, $f2
    /* 2BF758 802DD328 460C2181 */  sub.s      $f6, $f4, $f12
    /* 2BF75C 802DD32C 4600540D */  trunc.w.s  $f16, $f10
    /* 2BF760 802DD330 4600320D */  trunc.w.s  $f8, $f6
    /* 2BF764 802DD334 44038000 */  mfc1       $v1, $f16
    /* 2BF768 802DD338 44074000 */  mfc1       $a3, $f8
    /* 2BF76C 802DD33C 00032400 */  sll        $a0, $v1, 16
    /* 2BF770 802DD340 00045C03 */  sra        $t3, $a0, 16
    /* 2BF774 802DD344 00072C00 */  sll        $a1, $a3, 16
    /* 2BF778 802DD348 00056403 */  sra        $t4, $a1, 16
    /* 2BF77C 802DD34C 01802825 */  or         $a1, $t4, $zero
    /* 2BF780 802DD350 AFAC003C */  sw         $t4, 0x3C($sp)
    /* 2BF784 802DD354 01602025 */  or         $a0, $t3, $zero
    /* 2BF788 802DD358 0C02E134 */  jal        func_800B84D0_C7480
    /* 2BF78C 802DD35C AFAB0040 */   sw        $t3, 0x40($sp)
    /* 2BF790 802DD360 3C0F8005 */  lui        $t7, %hi(D_80052A8C)
    /* 2BF794 802DD364 8DEF2A8C */  lw         $t7, %lo(D_80052A8C)($t7)
    /* 2BF798 802DD368 00026A03 */  sra        $t5, $v0, 8
    /* 2BF79C 802DD36C 25AE0032 */  addiu      $t6, $t5, 0x32
    /* 2BF7A0 802DD370 31F80007 */  andi       $t8, $t7, 0x7
    /* 2BF7A4 802DD374 17000020 */  bnez       $t8, .L802DD3F8_2BF828
    /* 2BF7A8 802DD378 AFAE004C */   sw        $t6, 0x4C($sp)
    /* 2BF7AC 802DD37C 0C000E38 */  jal        func_800038E0_44E0
    /* 2BF7B0 802DD380 00000000 */   nop
    /* 2BF7B4 802DD384 0C000E38 */  jal        func_800038E0_44E0
    /* 2BF7B8 802DD388 A7A20044 */   sh        $v0, 0x44($sp)
    /* 2BF7BC 802DD38C 97A70044 */  lhu        $a3, 0x44($sp)
    /* 2BF7C0 802DD390 240100C8 */  addiu      $at, $zero, 0xC8
    /* 2BF7C4 802DD394 240C0032 */  addiu      $t4, $zero, 0x32
    /* 2BF7C8 802DD398 00E1001A */  div        $zero, $a3, $at
    /* 2BF7CC 802DD39C 0000C810 */  mfhi       $t9
    /* 2BF7D0 802DD3A0 24010014 */  addiu      $at, $zero, 0x14
    /* 2BF7D4 802DD3A4 2727012C */  addiu      $a3, $t9, 0x12C
    /* 2BF7D8 802DD3A8 0041001A */  div        $zero, $v0, $at
    /* 2BF7DC 802DD3AC 00005010 */  mfhi       $t2
    /* 2BF7E0 802DD3B0 254B000A */  addiu      $t3, $t2, 0xA
    /* 2BF7E4 802DD3B4 00074400 */  sll        $t0, $a3, 16
    /* 2BF7E8 802DD3B8 240D00DC */  addiu      $t5, $zero, 0xDC
    /* 2BF7EC 802DD3BC 240E00E1 */  addiu      $t6, $zero, 0xE1
    /* 2BF7F0 802DD3C0 240F00E1 */  addiu      $t7, $zero, 0xE1
    /* 2BF7F4 802DD3C4 241800E1 */  addiu      $t8, $zero, 0xE1
    /* 2BF7F8 802DD3C8 AFB80028 */  sw         $t8, 0x28($sp)
    /* 2BF7FC 802DD3CC AFAF0024 */  sw         $t7, 0x24($sp)
    /* 2BF800 802DD3D0 AFAE0020 */  sw         $t6, 0x20($sp)
    /* 2BF804 802DD3D4 AFAD001C */  sw         $t5, 0x1C($sp)
    /* 2BF808 802DD3D8 00083C03 */  sra        $a3, $t0, 16
    /* 2BF80C 802DD3DC AFAB0010 */  sw         $t3, 0x10($sp)
    /* 2BF810 802DD3E0 AFAC0018 */  sw         $t4, 0x18($sp)
    /* 2BF814 802DD3E4 87A40042 */  lh         $a0, 0x42($sp)
    /* 2BF818 802DD3E8 87A5004E */  lh         $a1, 0x4E($sp)
    /* 2BF81C 802DD3EC 87A6003E */  lh         $a2, 0x3E($sp)
    /* 2BF820 802DD3F0 0C037A82 */  jal        func_800DEA08_ED9B8
    /* 2BF824 802DD3F4 AFA00014 */   sw        $zero, 0x14($sp)
  .L802DD3F8_2BF828:
    /* 2BF828 802DD3F8 8FBF0034 */  lw         $ra, 0x34($sp)
    /* 2BF82C 802DD3FC 27BD0060 */  addiu      $sp, $sp, 0x60
    /* 2BF830 802DD400 03E00008 */  jr         $ra
    /* 2BF834 802DD404 00000000 */   nop
endlabel func_802DD240_2BF670
