nonmatching func_800CEE00_DDDB0, 0x270

glabel func_800CEE00_DDDB0
    /* DDDB0 800CEE00 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* DDDB4 800CEE04 44810000 */  mtc1       $at, $f0
    /* DDDB8 800CEE08 3C018004 */  lui        $at, %hi(D_80047954)
    /* DDDBC 800CEE0C C4247954 */  lwc1       $f4, %lo(D_80047954)($at)
    /* DDDC0 800CEE10 3C018004 */  lui        $at, %hi(D_8004795C)
    /* DDDC4 800CEE14 C42A795C */  lwc1       $f10, %lo(D_8004795C)($at)
    /* DDDC8 800CEE18 46002182 */  mul.s      $f6, $f4, $f0
    /* DDDCC 800CEE1C 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* DDDD0 800CEE20 AFB00020 */  sw         $s0, 0x20($sp)
    /* DDDD4 800CEE24 46005402 */  mul.s      $f16, $f10, $f0
    /* DDDD8 800CEE28 00078400 */  sll        $s0, $a3, 16
    /* DDDDC 800CEE2C AFA70034 */  sw         $a3, 0x34($sp)
    /* DDDE0 800CEE30 3C0F8004 */  lui        $t7, %hi(D_80047950)
    /* DDDE4 800CEE34 85EF7950 */  lh         $t7, %lo(D_80047950)($t7)
    /* DDDE8 800CEE38 00107403 */  sra        $t6, $s0, 16
    /* DDDEC 800CEE3C 4600320D */  trunc.w.s  $f8, $f6
    /* DDDF0 800CEE40 01C08025 */  or         $s0, $t6, $zero
    /* DDDF4 800CEE44 AFBF0024 */  sw         $ra, 0x24($sp)
    /* DDDF8 800CEE48 4600848D */  trunc.w.s  $f18, $f16
    /* DDDFC 800CEE4C 44074000 */  mfc1       $a3, $f8
    /* DDE00 800CEE50 AFA40028 */  sw         $a0, 0x28($sp)
    /* DDE04 800CEE54 AFA5002C */  sw         $a1, 0x2C($sp)
    /* DDE08 800CEE58 0007C400 */  sll        $t8, $a3, 16
    /* DDE0C 800CEE5C 00183C03 */  sra        $a3, $t8, 16
    /* DDE10 800CEE60 440E9000 */  mfc1       $t6, $f18
    /* DDE14 800CEE64 24184000 */  addiu      $t8, $zero, 0x4000
    /* DDE18 800CEE68 AFA60030 */  sw         $a2, 0x30($sp)
    /* DDE1C 800CEE6C 030FC823 */  subu       $t9, $t8, $t7
    /* DDE20 800CEE70 AFB90014 */  sw         $t9, 0x14($sp)
    /* DDE24 800CEE74 87A50032 */  lh         $a1, 0x32($sp)
    /* DDE28 800CEE78 240600C8 */  addiu      $a2, $zero, 0xC8
    /* DDE2C 800CEE7C 87A4002A */  lh         $a0, 0x2A($sp)
    /* DDE30 800CEE80 0C02E4EB */  jal        func_800B93AC_C835C
    /* DDE34 800CEE84 AFAE0010 */   sw        $t6, 0x10($sp)
    /* DDE38 800CEE88 10400074 */  beqz       $v0, .L800CF05C_DE00C
    /* DDE3C 800CEE8C 24040008 */   addiu     $a0, $zero, 0x8
    /* DDE40 800CEE90 0C0305ED */  jal        func_800C17B4_D0764
    /* DDE44 800CEE94 24050001 */   addiu     $a1, $zero, 0x1
    /* DDE48 800CEE98 2401FFFD */  addiu      $at, $zero, -0x3
    /* DDE4C 800CEE9C 1041006F */  beq        $v0, $at, .L800CF05C_DE00C
    /* DDE50 800CEEA0 240900FF */   addiu     $t1, $zero, 0xFF
    /* DDE54 800CEEA4 24010032 */  addiu      $at, $zero, 0x32
    /* DDE58 800CEEA8 0201001A */  div        $zero, $s0, $at
    /* DDE5C 800CEEAC 0000C812 */  mflo       $t9
    /* DDE60 800CEEB0 240A03E8 */  addiu      $t2, $zero, 0x3E8
    /* DDE64 800CEEB4 00026C00 */  sll        $t5, $v0, 16
    /* DDE68 800CEEB8 020A001A */  div        $zero, $s0, $t2
    /* DDE6C 800CEEBC 000D7403 */  sra        $t6, $t5, 16
    /* DDE70 800CEEC0 000EC0C0 */  sll        $t8, $t6, 3
    /* DDE74 800CEEC4 030EC023 */  subu       $t8, $t8, $t6
    /* DDE78 800CEEC8 3C0F8015 */  lui        $t7, %hi(D_80154318)
    /* DDE7C 800CEECC 87AE002A */  lh         $t6, 0x2A($sp)
    /* DDE80 800CEED0 25EF4318 */  addiu      $t7, $t7, %lo(D_80154318)
    /* DDE84 800CEED4 0018C080 */  sll        $t8, $t8, 2
    /* DDE88 800CEED8 00002012 */  mflo       $a0
    /* DDE8C 800CEEDC 030F1821 */  addu       $v1, $t8, $t7
    /* DDE90 800CEEE0 272D0019 */  addiu      $t5, $t9, 0x19
    /* DDE94 800CEEE4 A46D0002 */  sh         $t5, 0x2($v1)
    /* DDE98 800CEEE8 00046C00 */  sll        $t5, $a0, 16
    /* DDE9C 800CEEEC A46E0008 */  sh         $t6, 0x8($v1)
    /* DDEA0 800CEEF0 000D7403 */  sra        $t6, $t5, 16
    /* DDEA4 800CEEF4 01CA0019 */  multu      $t6, $t2
    /* DDEA8 800CEEF8 87B8002E */  lh         $t8, 0x2E($sp)
    /* DDEAC 800CEEFC 87AF0032 */  lh         $t7, 0x32($sp)
    /* DDEB0 800CEF00 00043C00 */  sll        $a3, $a0, 16
    /* DDEB4 800CEF04 A478000A */  sh         $t8, 0xA($v1)
    /* DDEB8 800CEF08 0007CC03 */  sra        $t9, $a3, 16
    /* DDEBC 800CEF0C A46F000C */  sh         $t7, 0xC($v1)
    /* DDEC0 800CEF10 03203825 */  or         $a3, $t9, $zero
    /* DDEC4 800CEF14 240B0064 */  addiu      $t3, $zero, 0x64
    /* DDEC8 800CEF18 240C000A */  addiu      $t4, $zero, 0xA
    /* DDECC 800CEF1C 15400002 */  bnez       $t2, .L800CEF28_DDED8
    /* DDED0 800CEF20 00000000 */   nop
    /* DDED4 800CEF24 0007000D */  break      7
  .L800CEF28_DDED8:
    /* DDED8 800CEF28 2401FFFF */  addiu      $at, $zero, -0x1
    /* DDEDC 800CEF2C 15410004 */  bne        $t2, $at, .L800CEF40_DDEF0
    /* DDEE0 800CEF30 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* DDEE4 800CEF34 16010002 */  bne        $s0, $at, .L800CEF40_DDEF0
    /* DDEE8 800CEF38 00000000 */   nop
    /* DDEEC 800CEF3C 0006000D */  break      6
  .L800CEF40_DDEF0:
    /* DDEF0 800CEF40 0000C012 */  mflo       $t8
    /* DDEF4 800CEF44 02188023 */  subu       $s0, $s0, $t8
    /* DDEF8 800CEF48 00107C00 */  sll        $t7, $s0, 16
    /* DDEFC 800CEF4C 000FCC03 */  sra        $t9, $t7, 16
    /* DDF00 800CEF50 032B001A */  div        $zero, $t9, $t3
    /* DDF04 800CEF54 00002812 */  mflo       $a1
    /* DDF08 800CEF58 00057400 */  sll        $t6, $a1, 16
    /* DDF0C 800CEF5C 000EC403 */  sra        $t8, $t6, 16
    /* DDF10 800CEF60 030B0019 */  multu      $t8, $t3
    /* DDF14 800CEF64 03208025 */  or         $s0, $t9, $zero
    /* DDF18 800CEF68 15600002 */  bnez       $t3, .L800CEF74_DDF24
    /* DDF1C 800CEF6C 00000000 */   nop
    /* DDF20 800CEF70 0007000D */  break      7
  .L800CEF74_DDF24:
    /* DDF24 800CEF74 2401FFFF */  addiu      $at, $zero, -0x1
    /* DDF28 800CEF78 15610004 */  bne        $t3, $at, .L800CEF8C_DDF3C
    /* DDF2C 800CEF7C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* DDF30 800CEF80 16010002 */  bne        $s0, $at, .L800CEF8C_DDF3C
    /* DDF34 800CEF84 00000000 */   nop
    /* DDF38 800CEF88 0006000D */  break      6
  .L800CEF8C_DDF3C:
    /* DDF3C 800CEF8C 00007812 */  mflo       $t7
    /* DDF40 800CEF90 00054400 */  sll        $t0, $a1, 16
    /* DDF44 800CEF94 00086C03 */  sra        $t5, $t0, 16
    /* DDF48 800CEF98 020F8023 */  subu       $s0, $s0, $t7
    /* DDF4C 800CEF9C 01A04025 */  or         $t0, $t5, $zero
    /* DDF50 800CEFA0 0010CC00 */  sll        $t9, $s0, 16
    /* DDF54 800CEFA4 00196C03 */  sra        $t5, $t9, 16
    /* DDF58 800CEFA8 01AC001A */  div        $zero, $t5, $t4
    /* DDF5C 800CEFAC 00003012 */  mflo       $a2
    /* DDF60 800CEFB0 00067C00 */  sll        $t7, $a2, 16
    /* DDF64 800CEFB4 000FCC03 */  sra        $t9, $t7, 16
    /* DDF68 800CEFB8 032C0019 */  multu      $t9, $t4
    /* DDF6C 800CEFBC 01A08025 */  or         $s0, $t5, $zero
    /* DDF70 800CEFC0 00077100 */  sll        $t6, $a3, 4
    /* DDF74 800CEFC4 01C8C025 */  or         $t8, $t6, $t0
    /* DDF78 800CEFC8 A0780011 */  sb         $t8, 0x11($v1)
    /* DDF7C 800CEFCC 15800002 */  bnez       $t4, .L800CEFD8_DDF88
    /* DDF80 800CEFD0 00000000 */   nop
    /* DDF84 800CEFD4 0007000D */  break      7
  .L800CEFD8_DDF88:
    /* DDF88 800CEFD8 2401FFFF */  addiu      $at, $zero, -0x1
    /* DDF8C 800CEFDC 15810004 */  bne        $t4, $at, .L800CEFF0_DDFA0
    /* DDF90 800CEFE0 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* DDF94 800CEFE4 16010002 */  bne        $s0, $at, .L800CEFF0_DDFA0
    /* DDF98 800CEFE8 00000000 */   nop
    /* DDF9C 800CEFEC 0006000D */  break      6
  .L800CEFF0_DDFA0:
    /* DDFA0 800CEFF0 00007012 */  mflo       $t6
    /* DDFA4 800CEFF4 2401012C */  addiu      $at, $zero, 0x12C
    /* DDFA8 800CEFF8 020EC023 */  subu       $t8, $s0, $t6
    /* DDFAC 800CEFFC 0201001A */  div        $zero, $s0, $at
    /* DDFB0 800CF000 00187C00 */  sll        $t7, $t8, 16
    /* DDFB4 800CF004 00196900 */  sll        $t5, $t9, 4
    /* DDFB8 800CF008 03203025 */  or         $a2, $t9, $zero
    /* DDFBC 800CF00C 000FCC03 */  sra        $t9, $t7, 16
    /* DDFC0 800CF010 0000C012 */  mflo       $t8
    /* DDFC4 800CF014 01B97025 */  or         $t6, $t5, $t9
    /* DDFC8 800CF018 270F0005 */  addiu      $t7, $t8, 0x5
    /* DDFCC 800CF01C 2A0103E8 */  slti       $at, $s0, 0x3E8
    /* DDFD0 800CF020 A06E0012 */  sb         $t6, 0x12($v1)
    /* DDFD4 800CF024 A0690014 */  sb         $t1, 0x14($v1)
    /* DDFD8 800CF028 10200006 */  beqz       $at, .L800CF044_DDFF4
    /* DDFDC 800CF02C A06F0013 */   sb        $t7, 0x13($v1)
    /* DDFE0 800CF030 24620008 */  addiu      $v0, $v1, 0x8
    /* DDFE4 800CF034 A0490006 */  sb         $t1, 0x6($v0)
    /* DDFE8 800CF038 A0490007 */  sb         $t1, 0x7($v0)
    /* DDFEC 800CF03C 10000007 */  b          .L800CF05C_DE00C
    /* DDFF0 800CF040 A0490008 */   sb        $t1, 0x8($v0)
  .L800CF044_DDFF4:
    /* DDFF4 800CF044 24620008 */  addiu      $v0, $v1, 0x8
    /* DDFF8 800CF048 240D00E6 */  addiu      $t5, $zero, 0xE6
    /* DDFFC 800CF04C 24190028 */  addiu      $t9, $zero, 0x28
    /* DE000 800CF050 A0490006 */  sb         $t1, 0x6($v0)
    /* DE004 800CF054 A04D0007 */  sb         $t5, 0x7($v0)
    /* DE008 800CF058 A0590008 */  sb         $t9, 0x8($v0)
  .L800CF05C_DE00C:
    /* DE00C 800CF05C 8FBF0024 */  lw         $ra, 0x24($sp)
    /* DE010 800CF060 8FB00020 */  lw         $s0, 0x20($sp)
    /* DE014 800CF064 27BD0028 */  addiu      $sp, $sp, 0x28
    /* DE018 800CF068 03E00008 */  jr         $ra
    /* DE01C 800CF06C 00000000 */   nop
endlabel func_800CEE00_DDDB0
