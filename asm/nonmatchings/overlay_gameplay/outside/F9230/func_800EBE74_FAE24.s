nonmatching func_800EBE74_FAE24, 0x25C

glabel func_800EBE74_FAE24
    /* FAE24 800EBE74 27BDFFA8 */  addiu      $sp, $sp, -0x58
    /* FAE28 800EBE78 AFA5005C */  sw         $a1, 0x5C($sp)
    /* FAE2C 800EBE7C 87AE005E */  lh         $t6, 0x5E($sp)
    /* FAE30 800EBE80 F7B40010 */  sdc1       $f20, 0x10($sp)
    /* FAE34 800EBE84 3C018014 */  lui        $at, %hi(D_80144468)
    /* FAE38 800EBE88 D4344468 */  ldc1       $f20, %lo(D_80144468)($at)
    /* FAE3C 800EBE8C 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* FAE40 800EBE90 F7B60018 */  sdc1       $f22, 0x18($sp)
    /* FAE44 800EBE94 000E7880 */  sll        $t7, $t6, 2
    /* FAE48 800EBE98 4481B800 */  mtc1       $at, $f23
    /* FAE4C 800EBE9C 01EE7823 */  subu       $t7, $t7, $t6
    /* FAE50 800EBEA0 24030001 */  addiu      $v1, $zero, 0x1
    /* FAE54 800EBEA4 3C018005 */  lui        $at, %hi(D_80048188)
    /* FAE58 800EBEA8 000F78C0 */  sll        $t7, $t7, 3
    /* FAE5C 800EBEAC AC238188 */  sw         $v1, %lo(D_80048188)($at)
    /* FAE60 800EBEB0 3C188005 */  lui        $t8, %hi(vehicleInstances)
    /* FAE64 800EBEB4 01EE7823 */  subu       $t7, $t7, $t6
    /* FAE68 800EBEB8 AFB00024 */  sw         $s0, 0x24($sp)
    /* FAE6C 800EBEBC 3C018005 */  lui        $at, %hi(D_8004818C)
    /* FAE70 800EBEC0 000F7880 */  sll        $t7, $t7, 2
    /* FAE74 800EBEC4 2718DCD0 */  addiu      $t8, $t8, %lo(vehicleInstances)
    /* FAE78 800EBEC8 AC23818C */  sw         $v1, %lo(D_8004818C)($at)
    /* FAE7C 800EBECC 01F88021 */  addu       $s0, $t7, $t8
    /* FAE80 800EBED0 860D0006 */  lh         $t5, 0x6($s0)
    /* FAE84 800EBED4 4480B000 */  mtc1       $zero, $f22
    /* FAE88 800EBED8 9219001A */  lbu        $t9, 0x1A($s0)
    /* FAE8C 800EBEDC 448D2000 */  mtc1       $t5, $f4
    /* FAE90 800EBEE0 3C098025 */  lui        $t1, %hi(vehicleSpecs)
    /* FAE94 800EBEE4 001940C0 */  sll        $t0, $t9, 3
    /* FAE98 800EBEE8 468021A0 */  cvt.s.w    $f6, $f4
    /* FAE9C 800EBEEC 01194023 */  subu       $t0, $t0, $t9
    /* FAEA0 800EBEF0 00084100 */  sll        $t0, $t0, 4
    /* FAEA4 800EBEF4 25297A00 */  addiu      $t1, $t1, %lo(vehicleSpecs)
    /* FAEA8 800EBEF8 01091021 */  addu       $v0, $t0, $t1
    /* FAEAC 800EBEFC AFB10028 */  sw         $s1, 0x28($sp)
    /* FAEB0 800EBF00 46003221 */  cvt.d.s    $f8, $f6
    /* FAEB4 800EBF04 804A005E */  lb         $t2, 0x5E($v0)
    /* FAEB8 800EBF08 46344282 */  mul.d      $f10, $f8, $f20
    /* FAEBC 800EBF0C 804B005F */  lb         $t3, 0x5F($v0)
    /* FAEC0 800EBF10 804C0060 */  lb         $t4, 0x60($v0)
    /* FAEC4 800EBF14 3C118015 */  lui        $s1, %hi(D_801575E0)
    /* FAEC8 800EBF18 263175E0 */  addiu      $s1, $s1, %lo(D_801575E0)
    /* FAECC 800EBF1C AFBF002C */  sw         $ra, 0x2C($sp)
    /* FAED0 800EBF20 AFA40058 */  sw         $a0, 0x58($sp)
    /* FAED4 800EBF24 AFA60060 */  sw         $a2, 0x60($sp)
    /* FAED8 800EBF28 46365403 */  div.d      $f16, $f10, $f22
    /* FAEDC 800EBF2C AFA70064 */  sw         $a3, 0x64($sp)
    /* FAEE0 800EBF30 A6200000 */  sh         $zero, 0x0($s1)
    /* FAEE4 800EBF34 A6200004 */  sh         $zero, 0x4($s1)
    /* FAEE8 800EBF38 A7AA0050 */  sh         $t2, 0x50($sp)
    /* FAEEC 800EBF3C A7AB004E */  sh         $t3, 0x4E($sp)
    /* FAEF0 800EBF40 A7AC004C */  sh         $t4, 0x4C($sp)
    /* FAEF4 800EBF44 0C0079EC */  jal        __cosf
    /* FAEF8 800EBF48 46208320 */   cvt.s.d   $f12, $f16
    /* FAEFC 800EBF4C 860E0006 */  lh         $t6, 0x6($s0)
    /* FAF00 800EBF50 E7A0003C */  swc1       $f0, 0x3C($sp)
    /* FAF04 800EBF54 448E9000 */  mtc1       $t6, $f18
    /* FAF08 800EBF58 00000000 */  nop
    /* FAF0C 800EBF5C 46809120 */  cvt.s.w    $f4, $f18
    /* FAF10 800EBF60 460021A1 */  cvt.d.s    $f6, $f4
    /* FAF14 800EBF64 46343202 */  mul.d      $f8, $f6, $f20
    /* FAF18 800EBF68 46364283 */  div.d      $f10, $f8, $f22
    /* FAF1C 800EBF6C 0C00797C */  jal        sinf
    /* FAF20 800EBF70 46205320 */   cvt.s.d   $f12, $f10
    /* FAF24 800EBF74 87AF0050 */  lh         $t7, 0x50($sp)
    /* FAF28 800EBF78 87B8004C */  lh         $t8, 0x4C($sp)
    /* FAF2C 800EBF7C C7A4003C */  lwc1       $f4, 0x3C($sp)
    /* FAF30 800EBF80 448F8000 */  mtc1       $t7, $f16
    /* FAF34 800EBF84 44989000 */  mtc1       $t8, $f18
    /* FAF38 800EBF88 86090006 */  lh         $t1, 0x6($s0)
    /* FAF3C 800EBF8C 468080A0 */  cvt.s.w    $f2, $f16
    /* FAF40 800EBF90 468093A0 */  cvt.s.w    $f14, $f18
    /* FAF44 800EBF94 46041182 */  mul.s      $f6, $f2, $f4
    /* FAF48 800EBF98 44899000 */  mtc1       $t1, $f18
    /* FAF4C 800EBF9C E7A20034 */  swc1       $f2, 0x34($sp)
    /* FAF50 800EBFA0 460E0202 */  mul.s      $f8, $f0, $f14
    /* FAF54 800EBFA4 E7AE0030 */  swc1       $f14, 0x30($sp)
    /* FAF58 800EBFA8 46809120 */  cvt.s.w    $f4, $f18
    /* FAF5C 800EBFAC 46083281 */  sub.s      $f10, $f6, $f8
    /* FAF60 800EBFB0 460021A1 */  cvt.d.s    $f6, $f4
    /* FAF64 800EBFB4 4600540D */  trunc.w.s  $f16, $f10
    /* FAF68 800EBFB8 46343202 */  mul.d      $f8, $f6, $f20
    /* FAF6C 800EBFBC 44088000 */  mfc1       $t0, $f16
    /* FAF70 800EBFC0 00000000 */  nop
    /* FAF74 800EBFC4 A7A8004A */  sh         $t0, 0x4A($sp)
    /* FAF78 800EBFC8 46364283 */  div.d      $f10, $f8, $f22
    /* FAF7C 800EBFCC 0C00797C */  jal        sinf
    /* FAF80 800EBFD0 46205320 */   cvt.s.d   $f12, $f10
    /* FAF84 800EBFD4 860A0006 */  lh         $t2, 0x6($s0)
    /* FAF88 800EBFD8 E7A0003C */  swc1       $f0, 0x3C($sp)
    /* FAF8C 800EBFDC 448A8000 */  mtc1       $t2, $f16
    /* FAF90 800EBFE0 00000000 */  nop
    /* FAF94 800EBFE4 468084A0 */  cvt.s.w    $f18, $f16
    /* FAF98 800EBFE8 46009121 */  cvt.d.s    $f4, $f18
    /* FAF9C 800EBFEC 46342182 */  mul.d      $f6, $f4, $f20
    /* FAFA0 800EBFF0 46363203 */  div.d      $f8, $f6, $f22
    /* FAFA4 800EBFF4 0C0079EC */  jal        __cosf
    /* FAFA8 800EBFF8 46204320 */   cvt.s.d   $f12, $f8
    /* FAFAC 800EBFFC C7AA0034 */  lwc1       $f10, 0x34($sp)
    /* FAFB0 800EC000 C7B0003C */  lwc1       $f16, 0x3C($sp)
    /* FAFB4 800EC004 C7A40030 */  lwc1       $f4, 0x30($sp)
    /* FAFB8 800EC008 860B0000 */  lh         $t3, 0x0($s0)
    /* FAFBC 800EC00C 46105482 */  mul.s      $f18, $f10, $f16
    /* FAFC0 800EC010 87AC004A */  lh         $t4, 0x4A($sp)
    /* FAFC4 800EC014 860F0002 */  lh         $t7, 0x2($s0)
    /* FAFC8 800EC018 46040182 */  mul.s      $f6, $f0, $f4
    /* FAFCC 800EC01C 87B8004E */  lh         $t8, 0x4E($sp)
    /* FAFD0 800EC020 016C1021 */  addu       $v0, $t3, $t4
    /* FAFD4 800EC024 860D0004 */  lh         $t5, 0x4($s0)
    /* FAFD8 800EC028 8FA70064 */  lw         $a3, 0x64($sp)
    /* FAFDC 800EC02C 01F84021 */  addu       $t0, $t7, $t8
    /* FAFE0 800EC030 A6220006 */  sh         $v0, 0x6($s1)
    /* FAFE4 800EC034 46123200 */  add.s      $f8, $f6, $f18
    /* FAFE8 800EC038 A628000A */  sh         $t0, 0xA($s1)
    /* FAFEC 800EC03C 4600428D */  trunc.w.s  $f10, $f8
    /* FAFF0 800EC040 440C5000 */  mfc1       $t4, $f10
    /* FAFF4 800EC044 00000000 */  nop
    /* FAFF8 800EC048 01AC7821 */  addu       $t7, $t5, $t4
    /* FAFFC 800EC04C A62F000E */  sh         $t7, 0xE($s1)
    /* FB000 800EC050 84F80000 */  lh         $t8, 0x0($a3)
    /* FB004 800EC054 84E90004 */  lh         $t1, 0x4($a3)
    /* FB008 800EC058 03022823 */  subu       $a1, $t8, $v0
    /* FB00C 800EC05C 012F3023 */  subu       $a2, $t1, $t7
    /* FB010 800EC060 0005CC00 */  sll        $t9, $a1, 16
    /* FB014 800EC064 00065400 */  sll        $t2, $a2, 16
    /* FB018 800EC068 00192C03 */  sra        $a1, $t9, 16
    /* FB01C 800EC06C 000A3403 */  sra        $a2, $t2, 16
    /* FB020 800EC070 44862000 */  mtc1       $a2, $f4
    /* FB024 800EC074 44858000 */  mtc1       $a1, $f16
    /* FB028 800EC078 468023A0 */  cvt.s.w    $f14, $f4
    /* FB02C 800EC07C 0C000E09 */  jal        func_80003824_4424
    /* FB030 800EC080 46808320 */   cvt.s.w   $f12, $f16
    /* FB034 800EC084 34018000 */  ori        $at, $zero, 0x8000
    /* FB038 800EC088 87AE005A */  lh         $t6, 0x5A($sp)
    /* FB03C 800EC08C 00416021 */  addu       $t4, $v0, $at
    /* FB040 800EC090 87AF005E */  lh         $t7, 0x5E($sp)
    /* FB044 800EC094 A62C0012 */  sh         $t4, 0x12($s1)
    /* FB048 800EC098 3C018015 */  lui        $at, %hi(D_80157E80)
    /* FB04C 800EC09C A42E7E80 */  sh         $t6, %lo(D_80157E80)($at)
    /* FB050 800EC0A0 8FBF002C */  lw         $ra, 0x2C($sp)
    /* FB054 800EC0A4 3C018015 */  lui        $at, %hi(D_80157E82)
    /* FB058 800EC0A8 87B80062 */  lh         $t8, 0x62($sp)
    /* FB05C 800EC0AC A42F7E82 */  sh         $t7, %lo(D_80157E82)($at)
    /* FB060 800EC0B0 3C018015 */  lui        $at, %hi(D_80157E84)
    /* FB064 800EC0B4 8FB10028 */  lw         $s1, 0x28($sp)
    /* FB068 800EC0B8 D7B40010 */  ldc1       $f20, 0x10($sp)
    /* FB06C 800EC0BC D7B60018 */  ldc1       $f22, 0x18($sp)
    /* FB070 800EC0C0 8FB00024 */  lw         $s0, 0x24($sp)
    /* FB074 800EC0C4 27BD0058 */  addiu      $sp, $sp, 0x58
    /* FB078 800EC0C8 03E00008 */  jr         $ra
    /* FB07C 800EC0CC A4387E84 */   sh        $t8, %lo(D_80157E84)($at)
endlabel func_800EBE74_FAE24
