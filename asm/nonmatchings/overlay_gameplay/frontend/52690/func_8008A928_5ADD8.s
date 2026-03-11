nonmatching func_8008A928_5ADD8, 0x5A0

glabel func_8008A928_5ADD8
    /* 5ADD8 8008A928 308E00FF */  andi       $t6, $a0, 0xFF
    /* 5ADDC 8008A92C 000E7880 */  sll        $t7, $t6, 2
    /* 5ADE0 8008A930 01EE7823 */  subu       $t7, $t7, $t6
    /* 5ADE4 8008A934 000F7880 */  sll        $t7, $t7, 2
    /* 5ADE8 8008A938 3C02800E */  lui        $v0, %hi(D_800DE136)
    /* 5ADEC 8008A93C 004F1021 */  addu       $v0, $v0, $t7
    /* 5ADF0 8008A940 8442E136 */  lh         $v0, %lo(D_800DE136)($v0)
    /* 5ADF4 8008A944 27BDFF30 */  addiu      $sp, $sp, -0xD0
    /* 5ADF8 8008A948 AFB30034 */  sw         $s3, 0x34($sp)
    /* 5ADFC 8008A94C 2413001C */  addiu      $s3, $zero, 0x1C
    /* 5AE00 8008A950 00530019 */  multu      $v0, $s3
    /* 5AE04 8008A954 AFB20030 */  sw         $s2, 0x30($sp)
    /* 5AE08 8008A958 3C12800E */  lui        $s2, %hi(D_800DE840)
    /* 5AE0C 8008A95C 2652E840 */  addiu      $s2, $s2, %lo(D_800DE840)
    /* 5AE10 8008A960 AFB40038 */  sw         $s4, 0x38($sp)
    /* 5AE14 8008A964 AFA400D0 */  sw         $a0, 0xD0($sp)
    /* 5AE18 8008A968 3C048006 */  lui        $a0, %hi(D_8005BB2C)
    /* 5AE1C 8008A96C 3C141FFF */  lui        $s4, (0x1FFFFFFF >> 16)
    /* 5AE20 8008A970 AFBF004C */  sw         $ra, 0x4C($sp)
    /* 5AE24 8008A974 AFBE0048 */  sw         $fp, 0x48($sp)
    /* 5AE28 8008A978 0000C012 */  mflo       $t8
    /* 5AE2C 8008A97C 02582821 */  addu       $a1, $s2, $t8
    /* 5AE30 8008A980 84A30004 */  lh         $v1, 0x4($a1)
    /* 5AE34 8008A984 AFB70044 */  sw         $s7, 0x44($sp)
    /* 5AE38 8008A988 AFB60040 */  sw         $s6, 0x40($sp)
    /* 5AE3C 8008A98C 00730019 */  multu      $v1, $s3
    /* 5AE40 8008A990 AFB5003C */  sw         $s5, 0x3C($sp)
    /* 5AE44 8008A994 AFB1002C */  sw         $s1, 0x2C($sp)
    /* 5AE48 8008A998 AFB00028 */  sw         $s0, 0x28($sp)
    /* 5AE4C 8008A99C F7BA0020 */  sdc1       $f26, 0x20($sp)
    /* 5AE50 8008A9A0 F7B80018 */  sdc1       $f24, 0x18($sp)
    /* 5AE54 8008A9A4 F7B60010 */  sdc1       $f22, 0x10($sp)
    /* 5AE58 8008A9A8 F7B40008 */  sdc1       $f20, 0x8($sp)
    /* 5AE5C 8008A9AC AFA50054 */  sw         $a1, 0x54($sp)
    /* 5AE60 8008A9B0 3694FFFF */  ori        $s4, $s4, (0x1FFFFFFF & 0xFFFF)
    /* 5AE64 8008A9B4 0000C812 */  mflo       $t9
    /* 5AE68 8008A9B8 02593021 */  addu       $a2, $s2, $t9
    /* 5AE6C 8008A9BC 94CE000E */  lhu        $t6, 0xE($a2)
    /* 5AE70 8008A9C0 84C90004 */  lh         $t1, 0x4($a2)
    /* 5AE74 8008A9C4 2484BB2C */  addiu      $a0, $a0, %lo(D_8005BB2C)
    /* 5AE78 8008A9C8 1DC0012F */  bgtz       $t6, .L8008AE88_5B338
    /* 5AE7C 8008A9CC 3C0AE700 */   lui       $t2, (0xE7000000 >> 16)
    /* 5AE80 8008A9D0 8C830000 */  lw         $v1, 0x0($a0)
    /* 5AE84 8008A9D4 3C19FC30 */  lui        $t9, (0xFC30B261 >> 16)
    /* 5AE88 8008A9D8 3C0E5566 */  lui        $t6, (0x5566FF7F >> 16)
    /* 5AE8C 8008A9DC 246F0008 */  addiu      $t7, $v1, 0x8
    /* 5AE90 8008A9E0 AC8F0000 */  sw         $t7, 0x0($a0)
    /* 5AE94 8008A9E4 AC600004 */  sw         $zero, 0x4($v1)
    /* 5AE98 8008A9E8 AC6A0000 */  sw         $t2, 0x0($v1)
    /* 5AE9C 8008A9EC 8C830000 */  lw         $v1, 0x0($a0)
    /* 5AEA0 8008A9F0 35CEFF7F */  ori        $t6, $t6, (0x5566FF7F & 0xFFFF)
    /* 5AEA4 8008A9F4 3739B261 */  ori        $t9, $t9, (0xFC30B261 & 0xFFFF)
    /* 5AEA8 8008A9F8 24780008 */  addiu      $t8, $v1, 0x8
    /* 5AEAC 8008A9FC AC980000 */  sw         $t8, 0x0($a0)
    /* 5AEB0 8008AA00 AC6E0004 */  sw         $t6, 0x4($v1)
    /* 5AEB4 8008AA04 AC790000 */  sw         $t9, 0x0($v1)
    /* 5AEB8 8008AA08 8C830000 */  lw         $v1, 0x0($a0)
    /* 5AEBC 8008AA0C 3C190101 */  lui        $t9, %hi(D_100D700)
    /* 5AEC0 8008AA10 2739D700 */  addiu      $t9, $t9, %lo(D_100D700)
    /* 5AEC4 8008AA14 246F0008 */  addiu      $t7, $v1, 0x8
    /* 5AEC8 8008AA18 AC8F0000 */  sw         $t7, 0x0($a0)
    /* 5AECC 8008AA1C 03347024 */  and        $t6, $t9, $s4
    /* 5AED0 8008AA20 3C18FD70 */  lui        $t8, (0xFD700000 >> 16)
    /* 5AED4 8008AA24 AC780000 */  sw         $t8, 0x0($v1)
    /* 5AED8 8008AA28 AC6E0004 */  sw         $t6, 0x4($v1)
    /* 5AEDC 8008AA2C 8C830000 */  lw         $v1, 0x0($a0)
    /* 5AEE0 8008AA30 3C190708 */  lui        $t9, (0x7080200 >> 16)
    /* 5AEE4 8008AA34 37390200 */  ori        $t9, $t9, (0x7080200 & 0xFFFF)
    /* 5AEE8 8008AA38 246F0008 */  addiu      $t7, $v1, 0x8
    /* 5AEEC 8008AA3C AC8F0000 */  sw         $t7, 0x0($a0)
    /* 5AEF0 8008AA40 3C18F570 */  lui        $t8, (0xF5700000 >> 16)
    /* 5AEF4 8008AA44 AC780000 */  sw         $t8, 0x0($v1)
    /* 5AEF8 8008AA48 AC790004 */  sw         $t9, 0x4($v1)
    /* 5AEFC 8008AA4C 8C830000 */  lw         $v1, 0x0($a0)
    /* 5AF00 8008AA50 3C0FE600 */  lui        $t7, (0xE6000000 >> 16)
    /* 5AF04 8008AA54 3C19F300 */  lui        $t9, (0xF3000000 >> 16)
    /* 5AF08 8008AA58 246E0008 */  addiu      $t6, $v1, 0x8
    /* 5AF0C 8008AA5C AC8E0000 */  sw         $t6, 0x0($a0)
    /* 5AF10 8008AA60 AC600004 */  sw         $zero, 0x4($v1)
    /* 5AF14 8008AA64 AC6F0000 */  sw         $t7, 0x0($v1)
    /* 5AF18 8008AA68 8C830000 */  lw         $v1, 0x0($a0)
    /* 5AF1C 8008AA6C 3C0E0707 */  lui        $t6, (0x707F400 >> 16)
    /* 5AF20 8008AA70 35CEF400 */  ori        $t6, $t6, (0x707F400 & 0xFFFF)
    /* 5AF24 8008AA74 24780008 */  addiu      $t8, $v1, 0x8
    /* 5AF28 8008AA78 AC980000 */  sw         $t8, 0x0($a0)
    /* 5AF2C 8008AA7C AC6E0004 */  sw         $t6, 0x4($v1)
    /* 5AF30 8008AA80 AC790000 */  sw         $t9, 0x0($v1)
    /* 5AF34 8008AA84 8C830000 */  lw         $v1, 0x0($a0)
    /* 5AF38 8008AA88 3C19F568 */  lui        $t9, (0xF5680400 >> 16)
    /* 5AF3C 8008AA8C 3C0E0008 */  lui        $t6, (0x80200 >> 16)
    /* 5AF40 8008AA90 246F0008 */  addiu      $t7, $v1, 0x8
    /* 5AF44 8008AA94 AC8F0000 */  sw         $t7, 0x0($a0)
    /* 5AF48 8008AA98 AC600004 */  sw         $zero, 0x4($v1)
    /* 5AF4C 8008AA9C AC6A0000 */  sw         $t2, 0x0($v1)
    /* 5AF50 8008AAA0 8C830000 */  lw         $v1, 0x0($a0)
    /* 5AF54 8008AAA4 35CE0200 */  ori        $t6, $t6, (0x80200 & 0xFFFF)
    /* 5AF58 8008AAA8 37390400 */  ori        $t9, $t9, (0xF5680400 & 0xFFFF)
    /* 5AF5C 8008AAAC 24780008 */  addiu      $t8, $v1, 0x8
    /* 5AF60 8008AAB0 AC980000 */  sw         $t8, 0x0($a0)
    /* 5AF64 8008AAB4 AC6E0004 */  sw         $t6, 0x4($v1)
    /* 5AF68 8008AAB8 AC790000 */  sw         $t9, 0x0($v1)
    /* 5AF6C 8008AABC 8C830000 */  lw         $v1, 0x0($a0)
    /* 5AF70 8008AAC0 3C190003 */  lui        $t9, (0x3C03C >> 16)
    /* 5AF74 8008AAC4 3739C03C */  ori        $t9, $t9, (0x3C03C & 0xFFFF)
    /* 5AF78 8008AAC8 246F0008 */  addiu      $t7, $v1, 0x8
    /* 5AF7C 8008AACC AC8F0000 */  sw         $t7, 0x0($a0)
    /* 5AF80 8008AAD0 3C18F200 */  lui        $t8, (0xF2000000 >> 16)
    /* 5AF84 8008AAD4 AC780000 */  sw         $t8, 0x0($v1)
    /* 5AF88 8008AAD8 AC790004 */  sw         $t9, 0x4($v1)
    /* 5AF8C 8008AADC 8C830000 */  lw         $v1, 0x0($a0)
    /* 5AF90 8008AAE0 2415FFFA */  addiu      $s5, $zero, -0x6
    /* 5AF94 8008AAE4 2416FFFB */  addiu      $s6, $zero, -0x5
    /* 5AF98 8008AAE8 246E0008 */  addiu      $t6, $v1, 0x8
    /* 5AF9C 8008AAEC AC8E0000 */  sw         $t6, 0x0($a0)
    /* 5AFA0 8008AAF0 AC600004 */  sw         $zero, 0x4($v1)
    /* 5AFA4 8008AAF4 113500E4 */  beq        $t1, $s5, .L8008AE88_5B338
    /* 5AFA8 8008AAF8 AC6A0000 */   sw        $t2, 0x0($v1)
    /* 5AFAC 8008AAFC 113600E2 */  beq        $t1, $s6, .L8008AE88_5B338
    /* 5AFB0 8008AB00 8FA60054 */   lw        $a2, 0x54($sp)
    /* 5AFB4 8008AB04 3C110006 */  lui        $s1, (0x60204 >> 16)
    /* 5AFB8 8008AB08 3C10B100 */  lui        $s0, (0xB1000206 >> 16)
    /* 5AFBC 8008AB0C 3C0D0400 */  lui        $t5, (0x400103F >> 16)
    /* 5AFC0 8008AB10 3C07800E */  lui        $a3, %hi(D_800DE0C0)
    /* 5AFC4 8008AB14 3C028006 */  lui        $v0, %hi(D_8005BB34)
    /* 5AFC8 8008AB18 2442BB34 */  addiu      $v0, $v0, %lo(D_8005BB34)
    /* 5AFCC 8008AB1C 24E7E0C0 */  addiu      $a3, $a3, %lo(D_800DE0C0)
    /* 5AFD0 8008AB20 35AD103F */  ori        $t5, $t5, (0x400103F & 0xFFFF)
    /* 5AFD4 8008AB24 36100206 */  ori        $s0, $s0, (0xB1000206 & 0xFFFF)
    /* 5AFD8 8008AB28 36310204 */  ori        $s1, $s1, (0x60204 & 0xFFFF)
    /* 5AFDC 8008AB2C 24C60008 */  addiu      $a2, $a2, 0x8
    /* 5AFE0 8008AB30 3C0CFB00 */  lui        $t4, (0xFB000000 >> 16)
    /* 5AFE4 8008AB34 3C0BFA00 */  lui        $t3, (0xFA000000 >> 16)
    /* 5AFE8 8008AB38 24080400 */  addiu      $t0, $zero, 0x400
  .L8008AB3C_5AFEC:
    /* 5AFEC 8008AB3C 01330019 */  multu      $t1, $s3
    /* 5AFF0 8008AB40 8C830000 */  lw         $v1, 0x0($a0)
    /* 5AFF4 8008AB44 246F0008 */  addiu      $t7, $v1, 0x8
    /* 5AFF8 8008AB48 AC8F0000 */  sw         $t7, 0x0($a0)
    /* 5AFFC 8008AB4C AC6B0000 */  sw         $t3, 0x0($v1)
    /* 5B000 8008AB50 90CE0006 */  lbu        $t6, 0x6($a2)
    /* 5B004 8008AB54 90D90007 */  lbu        $t9, 0x7($a2)
    /* 5B008 8008AB58 0000C012 */  mflo       $t8
    /* 5B00C 8008AB5C 000E7E00 */  sll        $t7, $t6, 24
    /* 5B010 8008AB60 02582821 */  addu       $a1, $s2, $t8
    /* 5B014 8008AB64 00197400 */  sll        $t6, $t9, 16
    /* 5B018 8008AB68 01EEC025 */  or         $t8, $t7, $t6
    /* 5B01C 8008AB6C 90CF0008 */  lbu        $t7, 0x8($a2)
    /* 5B020 8008AB70 000F7200 */  sll        $t6, $t7, 8
    /* 5B024 8008AB74 030EC825 */  or         $t9, $t8, $t6
    /* 5B028 8008AB78 90B80011 */  lbu        $t8, 0x11($a1)
    /* 5B02C 8008AB7C 03387025 */  or         $t6, $t9, $t8
    /* 5B030 8008AB80 AC6E0004 */  sw         $t6, 0x4($v1)
    /* 5B034 8008AB84 8C830000 */  lw         $v1, 0x0($a0)
    /* 5B038 8008AB88 246F0008 */  addiu      $t7, $v1, 0x8
    /* 5B03C 8008AB8C AC8F0000 */  sw         $t7, 0x0($a0)
    /* 5B040 8008AB90 AC6C0000 */  sw         $t4, 0x0($v1)
    /* 5B044 8008AB94 90D80009 */  lbu        $t8, 0x9($a2)
    /* 5B048 8008AB98 90D9000A */  lbu        $t9, 0xA($a2)
    /* 5B04C 8008AB9C 00187600 */  sll        $t6, $t8, 24
    /* 5B050 8008ABA0 0019C400 */  sll        $t8, $t9, 16
    /* 5B054 8008ABA4 01D87825 */  or         $t7, $t6, $t8
    /* 5B058 8008ABA8 90CE000B */  lbu        $t6, 0xB($a2)
    /* 5B05C 8008ABAC 000EC200 */  sll        $t8, $t6, 8
    /* 5B060 8008ABB0 01F8C825 */  or         $t9, $t7, $t8
    /* 5B064 8008ABB4 90AF0011 */  lbu        $t7, 0x11($a1)
    /* 5B068 8008ABB8 032FC025 */  or         $t8, $t9, $t7
    /* 5B06C 8008ABBC AC780004 */  sw         $t8, 0x4($v1)
    /* 5B070 8008ABC0 8C830000 */  lw         $v1, 0x0($a0)
    /* 5B074 8008ABC4 246E0008 */  addiu      $t6, $v1, 0x8
    /* 5B078 8008ABC8 AC8E0000 */  sw         $t6, 0x0($a0)
    /* 5B07C 8008ABCC AC600004 */  sw         $zero, 0x4($v1)
    /* 5B080 8008ABD0 AC6A0000 */  sw         $t2, 0x0($v1)
    /* 5B084 8008ABD4 84AE0002 */  lh         $t6, 0x2($a1)
    /* 5B088 8008ABD8 84B90008 */  lh         $t9, 0x8($a1)
    /* 5B08C 8008ABDC 84AF000A */  lh         $t7, 0xA($a1)
    /* 5B090 8008ABE0 448E5000 */  mtc1       $t6, $f10
    /* 5B094 8008ABE4 44992000 */  mtc1       $t9, $f4
    /* 5B098 8008ABE8 84B8000C */  lh         $t8, 0xC($a1)
    /* 5B09C 8008ABEC 46805420 */  cvt.s.w    $f16, $f10
    /* 5B0A0 8008ABF0 448F3000 */  mtc1       $t7, $f6
    /* 5B0A4 8008ABF4 44984000 */  mtc1       $t8, $f8
    /* 5B0A8 8008ABF8 C4EA000C */  lwc1       $f10, 0xC($a3)
    /* 5B0AC 8008ABFC 8C580000 */  lw         $t8, 0x0($v0)
    /* 5B0B0 8008AC00 46802020 */  cvt.s.w    $f0, $f4
    /* 5B0B4 8008AC04 C4E40000 */  lwc1       $f4, 0x0($a3)
    /* 5B0B8 8008AC08 46048382 */  mul.s      $f14, $f16, $f4
    /* 5B0BC 8008AC0C C4E40010 */  lwc1       $f4, 0x10($a3)
    /* 5B0C0 8008AC10 468030A0 */  cvt.s.w    $f2, $f6
    /* 5B0C4 8008AC14 C4E60004 */  lwc1       $f6, 0x4($a3)
    /* 5B0C8 8008AC18 46068482 */  mul.s      $f18, $f16, $f6
    /* 5B0CC 8008AC1C C4E60014 */  lwc1       $f6, 0x14($a3)
    /* 5B0D0 8008AC20 46804320 */  cvt.s.w    $f12, $f8
    /* 5B0D4 8008AC24 C4E80008 */  lwc1       $f8, 0x8($a3)
    /* 5B0D8 8008AC28 46088502 */  mul.s      $f20, $f16, $f8
    /* 5B0DC 8008AC2C 460E0200 */  add.s      $f8, $f0, $f14
    /* 5B0E0 8008AC30 460A8582 */  mul.s      $f22, $f16, $f10
    /* 5B0E4 8008AC34 00000000 */  nop
    /* 5B0E8 8008AC38 46048602 */  mul.s      $f24, $f16, $f4
    /* 5B0EC 8008AC3C 46121100 */  add.s      $f4, $f2, $f18
    /* 5B0F0 8008AC40 46068682 */  mul.s      $f26, $f16, $f6
    /* 5B0F4 8008AC44 4600428D */  trunc.w.s  $f10, $f8
    /* 5B0F8 8008AC48 46146200 */  add.s      $f8, $f12, $f20
    /* 5B0FC 8008AC4C 440F5000 */  mfc1       $t7, $f10
    /* 5B100 8008AC50 4600218D */  trunc.w.s  $f6, $f4
    /* 5B104 8008AC54 A70F0000 */  sh         $t7, 0x0($t8)
    /* 5B108 8008AC58 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 5B10C 8008AC5C 4600428D */  trunc.w.s  $f10, $f8
    /* 5B110 8008AC60 44193000 */  mfc1       $t9, $f6
    /* 5B114 8008AC64 46160100 */  add.s      $f4, $f0, $f22
    /* 5B118 8008AC68 A5F90002 */  sh         $t9, 0x2($t7)
    /* 5B11C 8008AC6C 8C590000 */  lw         $t9, 0x0($v0)
    /* 5B120 8008AC70 440E5000 */  mfc1       $t6, $f10
    /* 5B124 8008AC74 4600218D */  trunc.w.s  $f6, $f4
    /* 5B128 8008AC78 A72E0004 */  sh         $t6, 0x4($t9)
    /* 5B12C 8008AC7C 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 5B130 8008AC80 46181200 */  add.s      $f8, $f2, $f24
    /* 5B134 8008AC84 A5E00006 */  sh         $zero, 0x6($t7)
    /* 5B138 8008AC88 8C580000 */  lw         $t8, 0x0($v0)
    /* 5B13C 8008AC8C 4600428D */  trunc.w.s  $f10, $f8
    /* 5B140 8008AC90 A7000008 */  sh         $zero, 0x8($t8)
    /* 5B144 8008AC94 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 5B148 8008AC98 461A6100 */  add.s      $f4, $f12, $f26
    /* 5B14C 8008AC9C A5C0000A */  sh         $zero, 0xA($t6)
    /* 5B150 8008ACA0 8C590000 */  lw         $t9, 0x0($v0)
    /* 5B154 8008ACA4 460E0201 */  sub.s      $f8, $f0, $f14
    /* 5B158 8008ACA8 A320000C */  sb         $zero, 0xC($t9)
    /* 5B15C 8008ACAC 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 5B160 8008ACB0 A1E0000D */  sb         $zero, 0xD($t7)
    /* 5B164 8008ACB4 8C580000 */  lw         $t8, 0x0($v0)
    /* 5B168 8008ACB8 A300000E */  sb         $zero, 0xE($t8)
    /* 5B16C 8008ACBC 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 5B170 8008ACC0 44185000 */  mfc1       $t8, $f10
    /* 5B174 8008ACC4 4600428D */  trunc.w.s  $f10, $f8
    /* 5B178 8008ACC8 A1C0000F */  sb         $zero, 0xF($t6)
    /* 5B17C 8008ACCC 8C590000 */  lw         $t9, 0x0($v0)
    /* 5B180 8008ACD0 440E3000 */  mfc1       $t6, $f6
    /* 5B184 8008ACD4 4600218D */  trunc.w.s  $f6, $f4
    /* 5B188 8008ACD8 272F0010 */  addiu      $t7, $t9, 0x10
    /* 5B18C 8008ACDC AC4F0000 */  sw         $t7, 0x0($v0)
    /* 5B190 8008ACE0 A5EE0000 */  sh         $t6, 0x0($t7)
    /* 5B194 8008ACE4 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 5B198 8008ACE8 440F3000 */  mfc1       $t7, $f6
    /* 5B19C 8008ACEC 46121101 */  sub.s      $f4, $f2, $f18
    /* 5B1A0 8008ACF0 A5D80002 */  sh         $t8, 0x2($t6)
    /* 5B1A4 8008ACF4 8C580000 */  lw         $t8, 0x0($v0)
    /* 5B1A8 8008ACF8 46146201 */  sub.s      $f8, $f12, $f20
    /* 5B1AC 8008ACFC A70F0004 */  sh         $t7, 0x4($t8)
    /* 5B1B0 8008AD00 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 5B1B4 8008AD04 4600218D */  trunc.w.s  $f6, $f4
    /* 5B1B8 8008AD08 A5C00006 */  sh         $zero, 0x6($t6)
    /* 5B1BC 8008AD0C 8C590000 */  lw         $t9, 0x0($v0)
    /* 5B1C0 8008AD10 46160101 */  sub.s      $f4, $f0, $f22
    /* 5B1C4 8008AD14 A7280008 */  sh         $t0, 0x8($t9)
    /* 5B1C8 8008AD18 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 5B1CC 8008AD1C A5E0000A */  sh         $zero, 0xA($t7)
    /* 5B1D0 8008AD20 8C580000 */  lw         $t8, 0x0($v0)
    /* 5B1D4 8008AD24 A300000C */  sb         $zero, 0xC($t8)
    /* 5B1D8 8008AD28 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 5B1DC 8008AD2C A1C0000D */  sb         $zero, 0xD($t6)
    /* 5B1E0 8008AD30 8C590000 */  lw         $t9, 0x0($v0)
    /* 5B1E4 8008AD34 A320000E */  sb         $zero, 0xE($t9)
    /* 5B1E8 8008AD38 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 5B1EC 8008AD3C 44193000 */  mfc1       $t9, $f6
    /* 5B1F0 8008AD40 4600218D */  trunc.w.s  $f6, $f4
    /* 5B1F4 8008AD44 A1E0000F */  sb         $zero, 0xF($t7)
    /* 5B1F8 8008AD48 8C580000 */  lw         $t8, 0x0($v0)
    /* 5B1FC 8008AD4C 440F5000 */  mfc1       $t7, $f10
    /* 5B200 8008AD50 4600428D */  trunc.w.s  $f10, $f8
    /* 5B204 8008AD54 270E0010 */  addiu      $t6, $t8, 0x10
    /* 5B208 8008AD58 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 5B20C 8008AD5C A5CF0000 */  sh         $t7, 0x0($t6)
    /* 5B210 8008AD60 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 5B214 8008AD64 440E5000 */  mfc1       $t6, $f10
    /* 5B218 8008AD68 46181201 */  sub.s      $f8, $f2, $f24
    /* 5B21C 8008AD6C A5F90002 */  sh         $t9, 0x2($t7)
    /* 5B220 8008AD70 8C590000 */  lw         $t9, 0x0($v0)
    /* 5B224 8008AD74 461A6101 */  sub.s      $f4, $f12, $f26
    /* 5B228 8008AD78 A72E0004 */  sh         $t6, 0x4($t9)
    /* 5B22C 8008AD7C 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 5B230 8008AD80 4600428D */  trunc.w.s  $f10, $f8
    /* 5B234 8008AD84 A5E00006 */  sh         $zero, 0x6($t7)
    /* 5B238 8008AD88 8C580000 */  lw         $t8, 0x0($v0)
    /* 5B23C 8008AD8C A7080008 */  sh         $t0, 0x8($t8)
    /* 5B240 8008AD90 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 5B244 8008AD94 A5C8000A */  sh         $t0, 0xA($t6)
    /* 5B248 8008AD98 8C590000 */  lw         $t9, 0x0($v0)
    /* 5B24C 8008AD9C A320000C */  sb         $zero, 0xC($t9)
    /* 5B250 8008ADA0 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 5B254 8008ADA4 A1E0000D */  sb         $zero, 0xD($t7)
    /* 5B258 8008ADA8 8C580000 */  lw         $t8, 0x0($v0)
    /* 5B25C 8008ADAC A300000E */  sb         $zero, 0xE($t8)
    /* 5B260 8008ADB0 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 5B264 8008ADB4 44185000 */  mfc1       $t8, $f10
    /* 5B268 8008ADB8 A1C0000F */  sb         $zero, 0xF($t6)
    /* 5B26C 8008ADBC 8C590000 */  lw         $t9, 0x0($v0)
    /* 5B270 8008ADC0 440E3000 */  mfc1       $t6, $f6
    /* 5B274 8008ADC4 4600218D */  trunc.w.s  $f6, $f4
    /* 5B278 8008ADC8 272F0010 */  addiu      $t7, $t9, 0x10
    /* 5B27C 8008ADCC AC4F0000 */  sw         $t7, 0x0($v0)
    /* 5B280 8008ADD0 A5EE0000 */  sh         $t6, 0x0($t7)
    /* 5B284 8008ADD4 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 5B288 8008ADD8 440F3000 */  mfc1       $t7, $f6
    /* 5B28C 8008ADDC A5D80002 */  sh         $t8, 0x2($t6)
    /* 5B290 8008ADE0 8C580000 */  lw         $t8, 0x0($v0)
    /* 5B294 8008ADE4 A70F0004 */  sh         $t7, 0x4($t8)
    /* 5B298 8008ADE8 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 5B29C 8008ADEC A5C00006 */  sh         $zero, 0x6($t6)
    /* 5B2A0 8008ADF0 8C590000 */  lw         $t9, 0x0($v0)
    /* 5B2A4 8008ADF4 A7200008 */  sh         $zero, 0x8($t9)
    /* 5B2A8 8008ADF8 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 5B2AC 8008ADFC A5E8000A */  sh         $t0, 0xA($t7)
    /* 5B2B0 8008AE00 8C580000 */  lw         $t8, 0x0($v0)
    /* 5B2B4 8008AE04 A300000C */  sb         $zero, 0xC($t8)
    /* 5B2B8 8008AE08 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 5B2BC 8008AE0C A1C0000D */  sb         $zero, 0xD($t6)
    /* 5B2C0 8008AE10 8C590000 */  lw         $t9, 0x0($v0)
    /* 5B2C4 8008AE14 A320000E */  sb         $zero, 0xE($t9)
    /* 5B2C8 8008AE18 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 5B2CC 8008AE1C A1E0000F */  sb         $zero, 0xF($t7)
    /* 5B2D0 8008AE20 8C580000 */  lw         $t8, 0x0($v0)
    /* 5B2D4 8008AE24 8C830000 */  lw         $v1, 0x0($a0)
    /* 5B2D8 8008AE28 270E0010 */  addiu      $t6, $t8, 0x10
    /* 5B2DC 8008AE2C 24790008 */  addiu      $t9, $v1, 0x8
    /* 5B2E0 8008AE30 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 5B2E4 8008AE34 AC990000 */  sw         $t9, 0x0($a0)
    /* 5B2E8 8008AE38 AC6D0000 */  sw         $t5, 0x0($v1)
    /* 5B2EC 8008AE3C 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 5B2F0 8008AE40 25F8FFC0 */  addiu      $t8, $t7, -0x40
    /* 5B2F4 8008AE44 03147024 */  and        $t6, $t8, $s4
    /* 5B2F8 8008AE48 AC6E0004 */  sw         $t6, 0x4($v1)
    /* 5B2FC 8008AE4C 8C830000 */  lw         $v1, 0x0($a0)
    /* 5B300 8008AE50 24790008 */  addiu      $t9, $v1, 0x8
    /* 5B304 8008AE54 AC990000 */  sw         $t9, 0x0($a0)
    /* 5B308 8008AE58 AC710004 */  sw         $s1, 0x4($v1)
    /* 5B30C 8008AE5C AC700000 */  sw         $s0, 0x0($v1)
    /* 5B310 8008AE60 8C830000 */  lw         $v1, 0x0($a0)
    /* 5B314 8008AE64 246F0008 */  addiu      $t7, $v1, 0x8
    /* 5B318 8008AE68 AC8F0000 */  sw         $t7, 0x0($a0)
    /* 5B31C 8008AE6C AC600004 */  sw         $zero, 0x4($v1)
    /* 5B320 8008AE70 AC6A0000 */  sw         $t2, 0x0($v1)
    /* 5B324 8008AE74 84A90004 */  lh         $t1, 0x4($a1)
    /* 5B328 8008AE78 11350003 */  beq        $t1, $s5, .L8008AE88_5B338
    /* 5B32C 8008AE7C 00000000 */   nop
    /* 5B330 8008AE80 1536FF2E */  bne        $t1, $s6, .L8008AB3C_5AFEC
    /* 5B334 8008AE84 00000000 */   nop
  .L8008AE88_5B338:
    /* 5B338 8008AE88 8FBF004C */  lw         $ra, 0x4C($sp)
    /* 5B33C 8008AE8C D7B40008 */  ldc1       $f20, 0x8($sp)
    /* 5B340 8008AE90 D7B60010 */  ldc1       $f22, 0x10($sp)
    /* 5B344 8008AE94 D7B80018 */  ldc1       $f24, 0x18($sp)
    /* 5B348 8008AE98 D7BA0020 */  ldc1       $f26, 0x20($sp)
    /* 5B34C 8008AE9C 8FB00028 */  lw         $s0, 0x28($sp)
    /* 5B350 8008AEA0 8FB1002C */  lw         $s1, 0x2C($sp)
    /* 5B354 8008AEA4 8FB20030 */  lw         $s2, 0x30($sp)
    /* 5B358 8008AEA8 8FB30034 */  lw         $s3, 0x34($sp)
    /* 5B35C 8008AEAC 8FB40038 */  lw         $s4, 0x38($sp)
    /* 5B360 8008AEB0 8FB5003C */  lw         $s5, 0x3C($sp)
    /* 5B364 8008AEB4 8FB60040 */  lw         $s6, 0x40($sp)
    /* 5B368 8008AEB8 8FB70044 */  lw         $s7, 0x44($sp)
    /* 5B36C 8008AEBC 8FBE0048 */  lw         $fp, 0x48($sp)
    /* 5B370 8008AEC0 03E00008 */  jr         $ra
    /* 5B374 8008AEC4 27BD00D0 */   addiu     $sp, $sp, 0xD0
endlabel func_8008A928_5ADD8
