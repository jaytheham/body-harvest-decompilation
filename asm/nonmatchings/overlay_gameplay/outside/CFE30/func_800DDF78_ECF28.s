nonmatching func_800DDF78_ECF28, 0x1D8

glabel func_800DDF78_ECF28
    /* ECF28 800DDF78 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* ECF2C 800DDF7C 00042C00 */  sll        $a1, $a0, 16
    /* ECF30 800DDF80 AFA40038 */  sw         $a0, 0x38($sp)
    /* ECF34 800DDF84 00057403 */  sra        $t6, $a1, 16
    /* ECF38 800DDF88 AFBF0034 */  sw         $ra, 0x34($sp)
    /* ECF3C 800DDF8C 3C048014 */  lui        $a0, %hi(D_80143D6C)
    /* ECF40 800DDF90 01C02825 */  or         $a1, $t6, $zero
    /* ECF44 800DDF94 AFB10030 */  sw         $s1, 0x30($sp)
    /* ECF48 800DDF98 AFB0002C */  sw         $s0, 0x2C($sp)
    /* ECF4C 800DDF9C 0C00731B */  jal        osSyncPrintf
    /* ECF50 800DDFA0 24843D6C */   addiu     $a0, $a0, %lo(D_80143D6C)
    /* ECF54 800DDFA4 3C118015 */  lui        $s1, %hi(D_80157560)
    /* ECF58 800DDFA8 3C0F8015 */  lui        $t7, %hi(D_80157608)
    /* ECF5C 800DDFAC 26317560 */  addiu      $s1, $s1, %lo(D_80157560)
    /* ECF60 800DDFB0 25F07608 */  addiu      $s0, $t7, %lo(D_80157608)
    /* ECF64 800DDFB4 AE300000 */  sw         $s0, 0x0($s1)
    /* ECF68 800DDFB8 9218000F */  lbu        $t8, 0xF($s0)
    /* ECF6C 800DDFBC 9207000E */  lbu        $a3, 0xE($s0)
    /* ECF70 800DDFC0 9206000D */  lbu        $a2, 0xD($s0)
    /* ECF74 800DDFC4 9205000C */  lbu        $a1, 0xC($s0)
    /* ECF78 800DDFC8 AFB80010 */  sw         $t8, 0x10($sp)
    /* ECF7C 800DDFCC 92190010 */  lbu        $t9, 0x10($s0)
    /* ECF80 800DDFD0 3C048014 */  lui        $a0, %hi(D_80143D7C)
    /* ECF84 800DDFD4 24843D7C */  addiu      $a0, $a0, %lo(D_80143D7C)
    /* ECF88 800DDFD8 AFB90014 */  sw         $t9, 0x14($sp)
    /* ECF8C 800DDFDC 92080011 */  lbu        $t0, 0x11($s0)
    /* ECF90 800DDFE0 AFA80018 */  sw         $t0, 0x18($sp)
    /* ECF94 800DDFE4 92090012 */  lbu        $t1, 0x12($s0)
    /* ECF98 800DDFE8 AFA9001C */  sw         $t1, 0x1C($sp)
    /* ECF9C 800DDFEC 920A0013 */  lbu        $t2, 0x13($s0)
    /* ECFA0 800DDFF0 0C00731B */  jal        osSyncPrintf
    /* ECFA4 800DDFF4 AFAA0020 */   sw        $t2, 0x20($sp)
    /* ECFA8 800DDFF8 8E300000 */  lw         $s0, 0x0($s1)
    /* ECFAC 800DDFFC 3C048014 */  lui        $a0, %hi(D_80143DA4)
    /* ECFB0 800DE000 24843DA4 */  addiu      $a0, $a0, %lo(D_80143DA4)
    /* ECFB4 800DE004 920B0017 */  lbu        $t3, 0x17($s0)
    /* ECFB8 800DE008 92050014 */  lbu        $a1, 0x14($s0)
    /* ECFBC 800DE00C 92060015 */  lbu        $a2, 0x15($s0)
    /* ECFC0 800DE010 92070016 */  lbu        $a3, 0x16($s0)
    /* ECFC4 800DE014 AFAB0010 */  sw         $t3, 0x10($sp)
    /* ECFC8 800DE018 920C0018 */  lbu        $t4, 0x18($s0)
    /* ECFCC 800DE01C AFAC0014 */  sw         $t4, 0x14($sp)
    /* ECFD0 800DE020 920D0019 */  lbu        $t5, 0x19($s0)
    /* ECFD4 800DE024 AFAD0018 */  sw         $t5, 0x18($sp)
    /* ECFD8 800DE028 920E001A */  lbu        $t6, 0x1A($s0)
    /* ECFDC 800DE02C AFAE001C */  sw         $t6, 0x1C($sp)
    /* ECFE0 800DE030 920F001B */  lbu        $t7, 0x1B($s0)
    /* ECFE4 800DE034 0C00731B */  jal        osSyncPrintf
    /* ECFE8 800DE038 AFAF0020 */   sw        $t7, 0x20($sp)
    /* ECFEC 800DE03C 8E300000 */  lw         $s0, 0x0($s1)
    /* ECFF0 800DE040 3C048014 */  lui        $a0, %hi(D_80143DCC)
    /* ECFF4 800DE044 24843DCC */  addiu      $a0, $a0, %lo(D_80143DCC)
    /* ECFF8 800DE048 9218001F */  lbu        $t8, 0x1F($s0)
    /* ECFFC 800DE04C 9205001C */  lbu        $a1, 0x1C($s0)
    /* ED000 800DE050 9206001D */  lbu        $a2, 0x1D($s0)
    /* ED004 800DE054 9207001E */  lbu        $a3, 0x1E($s0)
    /* ED008 800DE058 AFB80010 */  sw         $t8, 0x10($sp)
    /* ED00C 800DE05C 92190020 */  lbu        $t9, 0x20($s0)
    /* ED010 800DE060 AFB90014 */  sw         $t9, 0x14($sp)
    /* ED014 800DE064 92080021 */  lbu        $t0, 0x21($s0)
    /* ED018 800DE068 AFA80018 */  sw         $t0, 0x18($sp)
    /* ED01C 800DE06C 92090022 */  lbu        $t1, 0x22($s0)
    /* ED020 800DE070 AFA9001C */  sw         $t1, 0x1C($sp)
    /* ED024 800DE074 920A0023 */  lbu        $t2, 0x23($s0)
    /* ED028 800DE078 0C00731B */  jal        osSyncPrintf
    /* ED02C 800DE07C AFAA0020 */   sw        $t2, 0x20($sp)
    /* ED030 800DE080 8E300000 */  lw         $s0, 0x0($s1)
    /* ED034 800DE084 3C018015 */  lui        $at, %hi(D_80157608)
    /* ED038 800DE088 C4247608 */  lwc1       $f4, %lo(D_80157608)($at)
    /* ED03C 800DE08C 920B0003 */  lbu        $t3, 0x3($s0)
    /* ED040 800DE090 3C048014 */  lui        $a0, %hi(D_80143DF4)
    /* ED044 800DE094 460021A1 */  cvt.d.s    $f6, $f4
    /* ED048 800DE098 92050000 */  lbu        $a1, 0x0($s0)
    /* ED04C 800DE09C 92060001 */  lbu        $a2, 0x1($s0)
    /* ED050 800DE0A0 92070002 */  lbu        $a3, 0x2($s0)
    /* ED054 800DE0A4 F7A60018 */  sdc1       $f6, 0x18($sp)
    /* ED058 800DE0A8 24843DF4 */  addiu      $a0, $a0, %lo(D_80143DF4)
    /* ED05C 800DE0AC 0C00731B */  jal        osSyncPrintf
    /* ED060 800DE0B0 AFAB0010 */   sw        $t3, 0x10($sp)
    /* ED064 800DE0B4 8E300000 */  lw         $s0, 0x0($s1)
    /* ED068 800DE0B8 3C018015 */  lui        $at, %hi(D_8015760C)
    /* ED06C 800DE0BC C428760C */  lwc1       $f8, %lo(D_8015760C)($at)
    /* ED070 800DE0C0 920C0007 */  lbu        $t4, 0x7($s0)
    /* ED074 800DE0C4 3C048014 */  lui        $a0, %hi(D_80143E14)
    /* ED078 800DE0C8 460042A1 */  cvt.d.s    $f10, $f8
    /* ED07C 800DE0CC 92050004 */  lbu        $a1, 0x4($s0)
    /* ED080 800DE0D0 92060005 */  lbu        $a2, 0x5($s0)
    /* ED084 800DE0D4 92070006 */  lbu        $a3, 0x6($s0)
    /* ED088 800DE0D8 F7AA0018 */  sdc1       $f10, 0x18($sp)
    /* ED08C 800DE0DC 24843E14 */  addiu      $a0, $a0, %lo(D_80143E14)
    /* ED090 800DE0E0 0C00731B */  jal        osSyncPrintf
    /* ED094 800DE0E4 AFAC0010 */   sw        $t4, 0x10($sp)
    /* ED098 800DE0E8 8E300000 */  lw         $s0, 0x0($s1)
    /* ED09C 800DE0EC 3C048014 */  lui        $a0, %hi(D_80143E34)
    /* ED0A0 800DE0F0 24843E34 */  addiu      $a0, $a0, %lo(D_80143E34)
    /* ED0A4 800DE0F4 920D000B */  lbu        $t5, 0xB($s0)
    /* ED0A8 800DE0F8 92050008 */  lbu        $a1, 0x8($s0)
    /* ED0AC 800DE0FC 92060009 */  lbu        $a2, 0x9($s0)
    /* ED0B0 800DE100 9207000A */  lbu        $a3, 0xA($s0)
    /* ED0B4 800DE104 0C00731B */  jal        osSyncPrintf
    /* ED0B8 800DE108 AFAD0010 */   sw        $t5, 0x10($sp)
    /* ED0BC 800DE10C 3C018015 */  lui        $at, %hi(D_80157610)
    /* ED0C0 800DE110 C4307610 */  lwc1       $f16, %lo(D_80157610)($at)
    /* ED0C4 800DE114 3C048014 */  lui        $a0, %hi(D_80143E50)
    /* ED0C8 800DE118 24843E50 */  addiu      $a0, $a0, %lo(D_80143E50)
    /* ED0CC 800DE11C 460084A1 */  cvt.d.s    $f18, $f16
    /* ED0D0 800DE120 44079000 */  mfc1       $a3, $f18
    /* ED0D4 800DE124 44069800 */  mfc1       $a2, $f19
    /* ED0D8 800DE128 0C00731B */  jal        osSyncPrintf
    /* ED0DC 800DE12C 00000000 */   nop
    /* ED0E0 800DE130 3C048014 */  lui        $a0, %hi(D_80143E58)
    /* ED0E4 800DE134 0C00731B */  jal        osSyncPrintf
    /* ED0E8 800DE138 24843E58 */   addiu     $a0, $a0, %lo(D_80143E58)
    /* ED0EC 800DE13C 8FBF0034 */  lw         $ra, 0x34($sp)
    /* ED0F0 800DE140 8FB0002C */  lw         $s0, 0x2C($sp)
    /* ED0F4 800DE144 8FB10030 */  lw         $s1, 0x30($sp)
    /* ED0F8 800DE148 03E00008 */  jr         $ra
    /* ED0FC 800DE14C 27BD0038 */   addiu     $sp, $sp, 0x38
endlabel func_800DDF78_ECF28
