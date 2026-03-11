nonmatching func_8009EE30_ADDE0, 0x300

glabel func_8009EE30_ADDE0
    /* ADDE0 8009EE30 27BDFF78 */  addiu      $sp, $sp, -0x88
    /* ADDE4 8009EE34 3C0E8005 */  lui        $t6, %hi(D_80052B34)
    /* ADDE8 8009EE38 8DCE2B34 */  lw         $t6, %lo(D_80052B34)($t6)
    /* ADDEC 8009EE3C AFBF004C */  sw         $ra, 0x4C($sp)
    /* ADDF0 8009EE40 AFBE0048 */  sw         $fp, 0x48($sp)
    /* ADDF4 8009EE44 AFB70044 */  sw         $s7, 0x44($sp)
    /* ADDF8 8009EE48 AFB60040 */  sw         $s6, 0x40($sp)
    /* ADDFC 8009EE4C AFB5003C */  sw         $s5, 0x3C($sp)
    /* ADE00 8009EE50 AFB40038 */  sw         $s4, 0x38($sp)
    /* ADE04 8009EE54 AFB30034 */  sw         $s3, 0x34($sp)
    /* ADE08 8009EE58 AFB20030 */  sw         $s2, 0x30($sp)
    /* ADE0C 8009EE5C AFB1002C */  sw         $s1, 0x2C($sp)
    /* ADE10 8009EE60 AFB00028 */  sw         $s0, 0x28($sp)
    /* ADE14 8009EE64 F7B60020 */  sdc1       $f22, 0x20($sp)
    /* ADE18 8009EE68 F7B40018 */  sdc1       $f20, 0x18($sp)
    /* ADE1C 8009EE6C 91CF001A */  lbu        $t7, 0x1A($t6)
    /* ADE20 8009EE70 3C148025 */  lui        $s4, %hi(D_80257A3C)
    /* ADE24 8009EE74 3C108006 */  lui        $s0, %hi(D_8005BB34)
    /* ADE28 8009EE78 000FC0C0 */  sll        $t8, $t7, 3
    /* ADE2C 8009EE7C 030FC023 */  subu       $t8, $t8, $t7
    /* ADE30 8009EE80 0018C100 */  sll        $t8, $t8, 4
    /* ADE34 8009EE84 0298A021 */  addu       $s4, $s4, $t8
    /* ADE38 8009EE88 86947A3C */  lh         $s4, %lo(D_80257A3C)($s4)
    /* ADE3C 8009EE8C 3C158006 */  lui        $s5, %hi(D_8005BB2C)
    /* ADE40 8009EE90 26B5BB2C */  addiu      $s5, $s5, %lo(D_8005BB2C)
    /* ADE44 8009EE94 12800098 */  beqz       $s4, .L8009F0F8_AE0A8
    /* ADE48 8009EE98 2610BB34 */   addiu     $s0, $s0, %lo(D_8005BB34)
    /* ADE4C 8009EE9C 8EA20000 */  lw         $v0, 0x0($s5)
    /* ADE50 8009EEA0 3C08FCFF */  lui        $t0, (0xFCFFC3FF >> 16)
    /* ADE54 8009EEA4 3C09FF86 */  lui        $t1, (0xFF867F3F >> 16)
    /* ADE58 8009EEA8 24590008 */  addiu      $t9, $v0, 0x8
    /* ADE5C 8009EEAC AEB90000 */  sw         $t9, 0x0($s5)
    /* ADE60 8009EEB0 35297F3F */  ori        $t1, $t1, (0xFF867F3F & 0xFFFF)
    /* ADE64 8009EEB4 3508C3FF */  ori        $t0, $t0, (0xFCFFC3FF & 0xFFFF)
    /* ADE68 8009EEB8 AC480000 */  sw         $t0, 0x0($v0)
    /* ADE6C 8009EEBC AC490004 */  sw         $t1, 0x4($v0)
    /* ADE70 8009EEC0 8EA20000 */  lw         $v0, 0x0($s5)
    /* ADE74 8009EEC4 3C0B0400 */  lui        $t3, (0x400289F >> 16)
    /* ADE78 8009EEC8 356B289F */  ori        $t3, $t3, (0x400289F & 0xFFFF)
    /* ADE7C 8009EECC 244A0008 */  addiu      $t2, $v0, 0x8
    /* ADE80 8009EED0 AEAA0000 */  sw         $t2, 0x0($s5)
    /* ADE84 8009EED4 AC4B0000 */  sw         $t3, 0x0($v0)
    /* ADE88 8009EED8 8E0C0000 */  lw         $t4, 0x0($s0)
    /* ADE8C 8009EEDC 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* ADE90 8009EEE0 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* ADE94 8009EEE4 01816824 */  and        $t5, $t4, $at
    /* ADE98 8009EEE8 AC4D0004 */  sw         $t5, 0x4($v0)
    /* ADE9C 8009EEEC 8E0E0000 */  lw         $t6, 0x0($s0)
    /* ADEA0 8009EEF0 24050400 */  addiu      $a1, $zero, 0x400
    /* ADEA4 8009EEF4 241300FF */  addiu      $s3, $zero, 0xFF
    /* ADEA8 8009EEF8 A5C00000 */  sh         $zero, 0x0($t6)
    /* ADEAC 8009EEFC 8E0F0000 */  lw         $t7, 0x0($s0)
    /* ADEB0 8009EF00 240600A0 */  addiu      $a2, $zero, 0xA0
    /* ADEB4 8009EF04 24160080 */  addiu      $s6, $zero, 0x80
    /* ADEB8 8009EF08 A5E00002 */  sh         $zero, 0x2($t7)
    /* ADEBC 8009EF0C 8E180000 */  lw         $t8, 0x0($s0)
    /* ADEC0 8009EF10 3C014200 */  lui        $at, (0x42000000 >> 16)
    /* ADEC4 8009EF14 4481B000 */  mtc1       $at, $f22
    /* ADEC8 8009EF18 A7000004 */  sh         $zero, 0x4($t8)
    /* ADECC 8009EF1C 8E190000 */  lw         $t9, 0x0($s0)
    /* ADED0 8009EF20 3C013FE8 */  lui        $at, (0x3FE80000 >> 16)
    /* ADED4 8009EF24 4481A800 */  mtc1       $at, $f21
    /* ADED8 8009EF28 A7200006 */  sh         $zero, 0x6($t9)
    /* ADEDC 8009EF2C 8E080000 */  lw         $t0, 0x0($s0)
    /* ADEE0 8009EF30 4480A000 */  mtc1       $zero, $f20
    /* ADEE4 8009EF34 00008825 */  or         $s1, $zero, $zero
    /* ADEE8 8009EF38 A5050008 */  sh         $a1, 0x8($t0)
    /* ADEEC 8009EF3C 8E090000 */  lw         $t1, 0x0($s0)
    /* ADEF0 8009EF40 00009025 */  or         $s2, $zero, $zero
    /* ADEF4 8009EF44 27BE0078 */  addiu      $fp, $sp, 0x78
    /* ADEF8 8009EF48 A525000A */  sh         $a1, 0xA($t1)
    /* ADEFC 8009EF4C 8E0A0000 */  lw         $t2, 0x0($s0)
    /* ADF00 8009EF50 27B7007C */  addiu      $s7, $sp, 0x7C
    /* ADF04 8009EF54 A153000C */  sb         $s3, 0xC($t2)
    /* ADF08 8009EF58 8E0B0000 */  lw         $t3, 0x0($s0)
    /* ADF0C 8009EF5C A166000D */  sb         $a2, 0xD($t3)
    /* ADF10 8009EF60 8E0C0000 */  lw         $t4, 0x0($s0)
    /* ADF14 8009EF64 A186000E */  sb         $a2, 0xE($t4)
    /* ADF18 8009EF68 8E0D0000 */  lw         $t5, 0x0($s0)
    /* ADF1C 8009EF6C A1B6000F */  sb         $s6, 0xF($t5)
    /* ADF20 8009EF70 8E0E0000 */  lw         $t6, 0x0($s0)
    /* ADF24 8009EF74 25CF0010 */  addiu      $t7, $t6, 0x10
    /* ADF28 8009EF78 AE0F0000 */  sw         $t7, 0x0($s0)
  .L8009EF7C_ADF2C:
    /* ADF2C 8009EF7C 06410003 */  bgez       $s2, .L8009EF8C_ADF3C
    /* ADF30 8009EF80 0012C083 */   sra       $t8, $s2, 2
    /* ADF34 8009EF84 26410003 */  addiu      $at, $s2, 0x3
    /* ADF38 8009EF88 0001C083 */  sra        $t8, $at, 2
  .L8009EF8C_ADF3C:
    /* ADF3C 8009EF8C 03142023 */  subu       $a0, $t8, $s4
    /* ADF40 8009EF90 0004CC00 */  sll        $t9, $a0, 16
    /* ADF44 8009EF94 00192403 */  sra        $a0, $t9, 16
    /* ADF48 8009EF98 02E02825 */  or         $a1, $s7, $zero
    /* ADF4C 8009EF9C 0C027B24 */  jal        func_8009EC90_ADC40
    /* ADF50 8009EFA0 03C03025 */   or        $a2, $fp, $zero
    /* ADF54 8009EFA4 C7A4007C */  lwc1       $f4, 0x7C($sp)
    /* ADF58 8009EFA8 C7AA0078 */  lwc1       $f10, 0x78($sp)
    /* ADF5C 8009EFAC 8E0D0000 */  lw         $t5, 0x0($s0)
    /* ADF60 8009EFB0 46162182 */  mul.s      $f6, $f4, $f22
    /* ADF64 8009EFB4 26310001 */  addiu      $s1, $s1, 0x1
    /* ADF68 8009EFB8 24010009 */  addiu      $at, $zero, 0x9
    /* ADF6C 8009EFBC 46165402 */  mul.s      $f16, $f10, $f22
    /* ADF70 8009EFC0 02549021 */  addu       $s2, $s2, $s4
    /* ADF74 8009EFC4 4600320D */  trunc.w.s  $f8, $f6
    /* ADF78 8009EFC8 4600848D */  trunc.w.s  $f18, $f16
    /* ADF7C 8009EFCC 44024000 */  mfc1       $v0, $f8
    /* ADF80 8009EFD0 00000000 */  nop
    /* ADF84 8009EFD4 44822000 */  mtc1       $v0, $f4
    /* ADF88 8009EFD8 44039000 */  mfc1       $v1, $f18
    /* ADF8C 8009EFDC 24490020 */  addiu      $t1, $v0, 0x20
    /* ADF90 8009EFE0 468021A1 */  cvt.d.w    $f6, $f4
    /* ADF94 8009EFE4 44838000 */  mtc1       $v1, $f16
    /* ADF98 8009EFE8 00095140 */  sll        $t2, $t1, 5
    /* ADF9C 8009EFEC 468084A1 */  cvt.d.w    $f18, $f16
    /* ADFA0 8009EFF0 46343202 */  mul.d      $f8, $f6, $f20
    /* ADFA4 8009EFF4 4620428D */  trunc.w.d  $f10, $f8
    /* ADFA8 8009EFF8 46349102 */  mul.d      $f4, $f18, $f20
    /* ADFAC 8009EFFC 440C5000 */  mfc1       $t4, $f10
    /* ADFB0 8009F000 00000000 */  nop
    /* ADFB4 8009F004 A5AC0000 */  sh         $t4, 0x0($t5)
    /* ADFB8 8009F008 8E180000 */  lw         $t8, 0x0($s0)
    /* ADFBC 8009F00C 4620218D */  trunc.w.d  $f6, $f4
    /* ADFC0 8009F010 240C0020 */  addiu      $t4, $zero, 0x20
    /* ADFC4 8009F014 01836823 */  subu       $t5, $t4, $v1
    /* ADFC8 8009F018 000D7140 */  sll        $t6, $t5, 5
    /* ADFCC 8009F01C 440F3000 */  mfc1       $t7, $f6
    /* ADFD0 8009F020 00000000 */  nop
    /* ADFD4 8009F024 A70F0002 */  sh         $t7, 0x2($t8)
    /* ADFD8 8009F028 8E190000 */  lw         $t9, 0x0($s0)
    /* ADFDC 8009F02C A7200004 */  sh         $zero, 0x4($t9)
    /* ADFE0 8009F030 8E080000 */  lw         $t0, 0x0($s0)
    /* ADFE4 8009F034 A5000006 */  sh         $zero, 0x6($t0)
    /* ADFE8 8009F038 8E0B0000 */  lw         $t3, 0x0($s0)
    /* ADFEC 8009F03C A56A0008 */  sh         $t2, 0x8($t3)
    /* ADFF0 8009F040 8E0F0000 */  lw         $t7, 0x0($s0)
    /* ADFF4 8009F044 A5EE000A */  sh         $t6, 0xA($t7)
    /* ADFF8 8009F048 8E180000 */  lw         $t8, 0x0($s0)
    /* ADFFC 8009F04C A313000C */  sb         $s3, 0xC($t8)
    /* AE000 8009F050 8E190000 */  lw         $t9, 0x0($s0)
    /* AE004 8009F054 A333000D */  sb         $s3, 0xD($t9)
    /* AE008 8009F058 8E080000 */  lw         $t0, 0x0($s0)
    /* AE00C 8009F05C A113000E */  sb         $s3, 0xE($t0)
    /* AE010 8009F060 8E090000 */  lw         $t1, 0x0($s0)
    /* AE014 8009F064 A136000F */  sb         $s6, 0xF($t1)
    /* AE018 8009F068 8E0A0000 */  lw         $t2, 0x0($s0)
    /* AE01C 8009F06C 254B0010 */  addiu      $t3, $t2, 0x10
    /* AE020 8009F070 1621FFC2 */  bne        $s1, $at, .L8009EF7C_ADF2C
    /* AE024 8009F074 AE0B0000 */   sw        $t3, 0x0($s0)
    /* AE028 8009F078 8EA20000 */  lw         $v0, 0x0($s5)
    /* AE02C 8009F07C 3C0DB100 */  lui        $t5, (0xB1000204 >> 16)
    /* AE030 8009F080 35AD0204 */  ori        $t5, $t5, (0xB1000204 & 0xFFFF)
    /* AE034 8009F084 244C0008 */  addiu      $t4, $v0, 0x8
    /* AE038 8009F088 AEAC0000 */  sw         $t4, 0x0($s5)
    /* AE03C 8009F08C 240E0406 */  addiu      $t6, $zero, 0x406
    /* AE040 8009F090 AC4E0004 */  sw         $t6, 0x4($v0)
    /* AE044 8009F094 AC4D0000 */  sw         $t5, 0x0($v0)
    /* AE048 8009F098 8EA20000 */  lw         $v0, 0x0($s5)
    /* AE04C 8009F09C 3C18B100 */  lui        $t8, (0xB1000608 >> 16)
    /* AE050 8009F0A0 37180608 */  ori        $t8, $t8, (0xB1000608 & 0xFFFF)
    /* AE054 8009F0A4 244F0008 */  addiu      $t7, $v0, 0x8
    /* AE058 8009F0A8 AEAF0000 */  sw         $t7, 0x0($s5)
    /* AE05C 8009F0AC 2419080A */  addiu      $t9, $zero, 0x80A
    /* AE060 8009F0B0 AC590004 */  sw         $t9, 0x4($v0)
    /* AE064 8009F0B4 AC580000 */  sw         $t8, 0x0($v0)
    /* AE068 8009F0B8 8EA20000 */  lw         $v0, 0x0($s5)
    /* AE06C 8009F0BC 3C09B100 */  lui        $t1, (0xB1000A0C >> 16)
    /* AE070 8009F0C0 35290A0C */  ori        $t1, $t1, (0xB1000A0C & 0xFFFF)
    /* AE074 8009F0C4 24480008 */  addiu      $t0, $v0, 0x8
    /* AE078 8009F0C8 AEA80000 */  sw         $t0, 0x0($s5)
    /* AE07C 8009F0CC 240A0C0E */  addiu      $t2, $zero, 0xC0E
    /* AE080 8009F0D0 AC4A0004 */  sw         $t2, 0x4($v0)
    /* AE084 8009F0D4 AC490000 */  sw         $t1, 0x0($v0)
    /* AE088 8009F0D8 8EA20000 */  lw         $v0, 0x0($s5)
    /* AE08C 8009F0DC 3C0CB100 */  lui        $t4, (0xB1000E10 >> 16)
    /* AE090 8009F0E0 358C0E10 */  ori        $t4, $t4, (0xB1000E10 & 0xFFFF)
    /* AE094 8009F0E4 244B0008 */  addiu      $t3, $v0, 0x8
    /* AE098 8009F0E8 AEAB0000 */  sw         $t3, 0x0($s5)
    /* AE09C 8009F0EC 240D1012 */  addiu      $t5, $zero, 0x1012
    /* AE0A0 8009F0F0 AC4D0004 */  sw         $t5, 0x4($v0)
    /* AE0A4 8009F0F4 AC4C0000 */  sw         $t4, 0x0($v0)
  .L8009F0F8_AE0A8:
    /* AE0A8 8009F0F8 8FBF004C */  lw         $ra, 0x4C($sp)
    /* AE0AC 8009F0FC D7B40018 */  ldc1       $f20, 0x18($sp)
    /* AE0B0 8009F100 D7B60020 */  ldc1       $f22, 0x20($sp)
    /* AE0B4 8009F104 8FB00028 */  lw         $s0, 0x28($sp)
    /* AE0B8 8009F108 8FB1002C */  lw         $s1, 0x2C($sp)
    /* AE0BC 8009F10C 8FB20030 */  lw         $s2, 0x30($sp)
    /* AE0C0 8009F110 8FB30034 */  lw         $s3, 0x34($sp)
    /* AE0C4 8009F114 8FB40038 */  lw         $s4, 0x38($sp)
    /* AE0C8 8009F118 8FB5003C */  lw         $s5, 0x3C($sp)
    /* AE0CC 8009F11C 8FB60040 */  lw         $s6, 0x40($sp)
    /* AE0D0 8009F120 8FB70044 */  lw         $s7, 0x44($sp)
    /* AE0D4 8009F124 8FBE0048 */  lw         $fp, 0x48($sp)
    /* AE0D8 8009F128 03E00008 */  jr         $ra
    /* AE0DC 8009F12C 27BD0088 */   addiu     $sp, $sp, 0x88
endlabel func_8009EE30_ADDE0
