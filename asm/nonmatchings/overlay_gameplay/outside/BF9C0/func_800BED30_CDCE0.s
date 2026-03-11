nonmatching func_800BED30_CDCE0, 0x1948

glabel func_800BED30_CDCE0
    /* CDCE0 800BED30 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* CDCE4 800BED34 3C038014 */  lui        $v1, %hi(D_8013D9B0)
    /* CDCE8 800BED38 9063D9B0 */  lbu        $v1, %lo(D_8013D9B0)($v1)
    /* CDCEC 800BED3C AFBF0034 */  sw         $ra, 0x34($sp)
    /* CDCF0 800BED40 AFB10030 */  sw         $s1, 0x30($sp)
    /* CDCF4 800BED44 AFB0002C */  sw         $s0, 0x2C($sp)
    /* CDCF8 800BED48 F7B80020 */  sdc1       $f24, 0x20($sp)
    /* CDCFC 800BED4C F7B60018 */  sdc1       $f22, 0x18($sp)
    /* CDD00 800BED50 10600641 */  beqz       $v1, .L800C0658_CF608
    /* CDD04 800BED54 F7B40010 */   sdc1      $f20, 0x10($sp)
    /* CDD08 800BED58 2861003D */  slti       $at, $v1, 0x3D
    /* CDD0C 800BED5C 14200041 */  bnez       $at, .L800BEE64_CDE14
    /* CDD10 800BED60 00601025 */   or        $v0, $v1, $zero
    /* CDD14 800BED64 2463FFC4 */  addiu      $v1, $v1, -0x3C
    /* CDD18 800BED68 00037400 */  sll        $t6, $v1, 16
    /* CDD1C 800BED6C 000E1C03 */  sra        $v1, $t6, 16
    /* CDD20 800BED70 44832000 */  mtc1       $v1, $f4
    /* CDD24 800BED74 3C014170 */  lui        $at, (0x41700000 >> 16)
    /* CDD28 800BED78 44814000 */  mtc1       $at, $f8
    /* CDD2C 800BED7C 468021A0 */  cvt.s.w    $f6, $f4
    /* CDD30 800BED80 3C014700 */  lui        $at, (0x47000000 >> 16)
    /* CDD34 800BED84 44818000 */  mtc1       $at, $f16
    /* CDD38 800BED88 24040001 */  addiu      $a0, $zero, 0x1
    /* CDD3C 800BED8C 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* CDD40 800BED90 46083283 */  div.s      $f10, $f6, $f8
    /* CDD44 800BED94 46105482 */  mul.s      $f18, $f10, $f16
    /* CDD48 800BED98 4458F800 */  cfc1       $t8, $31
    /* CDD4C 800BED9C 44C4F800 */  ctc1       $a0, $31
    /* CDD50 800BEDA0 00000000 */  nop
    /* CDD54 800BEDA4 46009124 */  cvt.w.s    $f4, $f18
    /* CDD58 800BEDA8 4444F800 */  cfc1       $a0, $31
    /* CDD5C 800BEDAC 00000000 */  nop
    /* CDD60 800BEDB0 30840078 */  andi       $a0, $a0, 0x78
    /* CDD64 800BEDB4 50800013 */  beql       $a0, $zero, .L800BEE04_CDDB4
    /* CDD68 800BEDB8 44042000 */   mfc1      $a0, $f4
    /* CDD6C 800BEDBC 44812000 */  mtc1       $at, $f4
    /* CDD70 800BEDC0 24040001 */  addiu      $a0, $zero, 0x1
    /* CDD74 800BEDC4 46049101 */  sub.s      $f4, $f18, $f4
    /* CDD78 800BEDC8 44C4F800 */  ctc1       $a0, $31
    /* CDD7C 800BEDCC 00000000 */  nop
    /* CDD80 800BEDD0 46002124 */  cvt.w.s    $f4, $f4
    /* CDD84 800BEDD4 4444F800 */  cfc1       $a0, $31
    /* CDD88 800BEDD8 00000000 */  nop
    /* CDD8C 800BEDDC 30840078 */  andi       $a0, $a0, 0x78
    /* CDD90 800BEDE0 14800005 */  bnez       $a0, .L800BEDF8_CDDA8
    /* CDD94 800BEDE4 00000000 */   nop
    /* CDD98 800BEDE8 44042000 */  mfc1       $a0, $f4
    /* CDD9C 800BEDEC 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* CDDA0 800BEDF0 10000007 */  b          .L800BEE10_CDDC0
    /* CDDA4 800BEDF4 00812025 */   or        $a0, $a0, $at
  .L800BEDF8_CDDA8:
    /* CDDA8 800BEDF8 10000005 */  b          .L800BEE10_CDDC0
    /* CDDAC 800BEDFC 2404FFFF */   addiu     $a0, $zero, -0x1
    /* CDDB0 800BEE00 44042000 */  mfc1       $a0, $f4
  .L800BEE04_CDDB4:
    /* CDDB4 800BEE04 00000000 */  nop
    /* CDDB8 800BEE08 0480FFFB */  bltz       $a0, .L800BEDF8_CDDA8
    /* CDDBC 800BEE0C 00000000 */   nop
  .L800BEE10_CDDC0:
    /* CDDC0 800BEE10 44D8F800 */  ctc1       $t8, $31
    /* CDDC4 800BEE14 3099FFFF */  andi       $t9, $a0, 0xFFFF
    /* CDDC8 800BEE18 0C007654 */  jal        coss
    /* CDDCC 800BEE1C 03202025 */   or        $a0, $t9, $zero
    /* CDDD0 800BEE20 44823000 */  mtc1       $v0, $f6
    /* CDDD4 800BEE24 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* CDDD8 800BEE28 44818800 */  mtc1       $at, $f17
    /* CDDDC 800BEE2C 46803220 */  cvt.s.w    $f8, $f6
    /* CDDE0 800BEE30 44808000 */  mtc1       $zero, $f16
    /* CDDE4 800BEE34 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
    /* CDDE8 800BEE38 44812800 */  mtc1       $at, $f5
    /* CDDEC 800BEE3C 44802000 */  mtc1       $zero, $f4
    /* CDDF0 800BEE40 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* CDDF4 800BEE44 460042A1 */  cvt.d.s    $f10, $f8
    /* CDDF8 800BEE48 44804000 */  mtc1       $zero, $f8
    /* CDDFC 800BEE4C 46305483 */  div.d      $f18, $f10, $f16
    /* CDE00 800BEE50 44814800 */  mtc1       $at, $f9
    /* CDE04 800BEE54 46322181 */  sub.d      $f6, $f4, $f18
    /* CDE08 800BEE58 46283283 */  div.d      $f10, $f6, $f8
    /* CDE0C 800BEE5C 1000003F */  b          .L800BEF5C_CDF0C
    /* CDE10 800BEE60 46205520 */   cvt.s.d   $f20, $f10
  .L800BEE64_CDE14:
    /* CDE14 800BEE64 00021C00 */  sll        $v1, $v0, 16
    /* CDE18 800BEE68 00035403 */  sra        $t2, $v1, 16
    /* CDE1C 800BEE6C 448A8000 */  mtc1       $t2, $f16
    /* CDE20 800BEE70 3C014270 */  lui        $at, (0x42700000 >> 16)
    /* CDE24 800BEE74 44819000 */  mtc1       $at, $f18
    /* CDE28 800BEE78 46808120 */  cvt.s.w    $f4, $f16
    /* CDE2C 800BEE7C 3C014700 */  lui        $at, (0x47000000 >> 16)
    /* CDE30 800BEE80 44814000 */  mtc1       $at, $f8
    /* CDE34 800BEE84 24040001 */  addiu      $a0, $zero, 0x1
    /* CDE38 800BEE88 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* CDE3C 800BEE8C 46122183 */  div.s      $f6, $f4, $f18
    /* CDE40 800BEE90 46083282 */  mul.s      $f10, $f6, $f8
    /* CDE44 800BEE94 444BF800 */  cfc1       $t3, $31
    /* CDE48 800BEE98 44C4F800 */  ctc1       $a0, $31
    /* CDE4C 800BEE9C 00000000 */  nop
    /* CDE50 800BEEA0 46005424 */  cvt.w.s    $f16, $f10
    /* CDE54 800BEEA4 4444F800 */  cfc1       $a0, $31
    /* CDE58 800BEEA8 00000000 */  nop
    /* CDE5C 800BEEAC 30840078 */  andi       $a0, $a0, 0x78
    /* CDE60 800BEEB0 50800013 */  beql       $a0, $zero, .L800BEF00_CDEB0
    /* CDE64 800BEEB4 44048000 */   mfc1      $a0, $f16
    /* CDE68 800BEEB8 44818000 */  mtc1       $at, $f16
    /* CDE6C 800BEEBC 24040001 */  addiu      $a0, $zero, 0x1
    /* CDE70 800BEEC0 46105401 */  sub.s      $f16, $f10, $f16
    /* CDE74 800BEEC4 44C4F800 */  ctc1       $a0, $31
    /* CDE78 800BEEC8 00000000 */  nop
    /* CDE7C 800BEECC 46008424 */  cvt.w.s    $f16, $f16
    /* CDE80 800BEED0 4444F800 */  cfc1       $a0, $31
    /* CDE84 800BEED4 00000000 */  nop
    /* CDE88 800BEED8 30840078 */  andi       $a0, $a0, 0x78
    /* CDE8C 800BEEDC 14800005 */  bnez       $a0, .L800BEEF4_CDEA4
    /* CDE90 800BEEE0 00000000 */   nop
    /* CDE94 800BEEE4 44048000 */  mfc1       $a0, $f16
    /* CDE98 800BEEE8 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* CDE9C 800BEEEC 10000007 */  b          .L800BEF0C_CDEBC
    /* CDEA0 800BEEF0 00812025 */   or        $a0, $a0, $at
  .L800BEEF4_CDEA4:
    /* CDEA4 800BEEF4 10000005 */  b          .L800BEF0C_CDEBC
    /* CDEA8 800BEEF8 2404FFFF */   addiu     $a0, $zero, -0x1
    /* CDEAC 800BEEFC 44048000 */  mfc1       $a0, $f16
  .L800BEF00_CDEB0:
    /* CDEB0 800BEF00 00000000 */  nop
    /* CDEB4 800BEF04 0480FFFB */  bltz       $a0, .L800BEEF4_CDEA4
    /* CDEB8 800BEF08 00000000 */   nop
  .L800BEF0C_CDEBC:
    /* CDEBC 800BEF0C 44CBF800 */  ctc1       $t3, $31
    /* CDEC0 800BEF10 308CFFFF */  andi       $t4, $a0, 0xFFFF
    /* CDEC4 800BEF14 0C007654 */  jal        coss
    /* CDEC8 800BEF18 01802025 */   or        $a0, $t4, $zero
    /* CDECC 800BEF1C 44822000 */  mtc1       $v0, $f4
    /* CDED0 800BEF20 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* CDED4 800BEF24 44814800 */  mtc1       $at, $f9
    /* CDED8 800BEF28 468024A0 */  cvt.s.w    $f18, $f4
    /* CDEDC 800BEF2C 44804000 */  mtc1       $zero, $f8
    /* CDEE0 800BEF30 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
    /* CDEE4 800BEF34 44818800 */  mtc1       $at, $f17
    /* CDEE8 800BEF38 44808000 */  mtc1       $zero, $f16
    /* CDEEC 800BEF3C 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* CDEF0 800BEF40 460091A1 */  cvt.d.s    $f6, $f18
    /* CDEF4 800BEF44 44809000 */  mtc1       $zero, $f18
    /* CDEF8 800BEF48 46283283 */  div.d      $f10, $f6, $f8
    /* CDEFC 800BEF4C 44819800 */  mtc1       $at, $f19
    /* CDF00 800BEF50 46305100 */  add.d      $f4, $f10, $f16
    /* CDF04 800BEF54 46322183 */  div.d      $f6, $f4, $f18
    /* CDF08 800BEF58 46203520 */  cvt.s.d    $f20, $f6
  .L800BEF5C_CDF0C:
    /* CDF0C 800BEF5C 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* CDF10 800BEF60 4481C000 */  mtc1       $at, $f24
    /* CDF14 800BEF64 3C013FE8 */  lui        $at, (0x3FE80000 >> 16)
    /* CDF18 800BEF68 3C118014 */  lui        $s1, %hi(D_8013D9B4)
    /* CDF1C 800BEF6C 4481B800 */  mtc1       $at, $f23
    /* CDF20 800BEF70 4480B000 */  mtc1       $zero, $f22
    /* CDF24 800BEF74 2631D9B4 */  addiu      $s1, $s1, %lo(D_8013D9B4)
    /* CDF28 800BEF78 00008025 */  or         $s0, $zero, $zero
  .L800BEF7C_CDF2C:
    /* CDF2C 800BEF7C 320400FF */  andi       $a0, $s0, 0xFF
    /* CDF30 800BEF80 27A5004B */  addiu      $a1, $sp, 0x4B
    /* CDF34 800BEF84 27A6004A */  addiu      $a2, $sp, 0x4A
    /* CDF38 800BEF88 0C00128E */  jal        func_80004A38_5638
    /* CDF3C 800BEF8C 27A70049 */   addiu     $a3, $sp, 0x49
    /* CDF40 800BEF90 8E2D0000 */  lw         $t5, 0x0($s1)
    /* CDF44 800BEF94 93A3004B */  lbu        $v1, 0x4B($sp)
    /* CDF48 800BEF98 93A8004A */  lbu        $t0, 0x4A($sp)
    /* CDF4C 800BEF9C 11A0009A */  beqz       $t5, .L800BF208_CE1B8
    /* CDF50 800BEFA0 00037883 */   sra       $t7, $v1, 2
    /* CDF54 800BEFA4 93A3004B */  lbu        $v1, 0x4B($sp)
    /* CDF58 800BEFA8 93A8004A */  lbu        $t0, 0x4A($sp)
    /* CDF5C 800BEFAC 93A90049 */  lbu        $t1, 0x49($sp)
    /* CDF60 800BEFB0 00037043 */  sra        $t6, $v1, 1
    /* CDF64 800BEFB4 448E4000 */  mtc1       $t6, $f8
    /* CDF68 800BEFB8 44838000 */  mtc1       $v1, $f16
    /* CDF6C 800BEFBC 0008C843 */  sra        $t9, $t0, 1
    /* CDF70 800BEFC0 468042A0 */  cvt.s.w    $f10, $f8
    /* CDF74 800BEFC4 04610005 */  bgez       $v1, .L800BEFDC_CDF8C
    /* CDF78 800BEFC8 46808120 */   cvt.s.w   $f4, $f16
    /* CDF7C 800BEFCC 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* CDF80 800BEFD0 44819000 */  mtc1       $at, $f18
    /* CDF84 800BEFD4 00000000 */  nop
    /* CDF88 800BEFD8 46122100 */  add.s      $f4, $f4, $f18
  .L800BEFDC_CDF8C:
    /* CDF8C 800BEFDC 4604A182 */  mul.s      $f6, $f20, $f4
    /* CDF90 800BEFE0 24030001 */  addiu      $v1, $zero, 0x1
    /* CDF94 800BEFE4 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* CDF98 800BEFE8 00096043 */  sra        $t4, $t1, 1
    /* CDF9C 800BEFEC 46183203 */  div.s      $f8, $f6, $f24
    /* CDFA0 800BEFF0 46085400 */  add.s      $f16, $f10, $f8
    /* CDFA4 800BEFF4 444FF800 */  cfc1       $t7, $31
    /* CDFA8 800BEFF8 44C3F800 */  ctc1       $v1, $31
    /* CDFAC 800BEFFC 00000000 */  nop
    /* CDFB0 800BF000 460084A4 */  cvt.w.s    $f18, $f16
    /* CDFB4 800BF004 4443F800 */  cfc1       $v1, $31
    /* CDFB8 800BF008 00000000 */  nop
    /* CDFBC 800BF00C 30630078 */  andi       $v1, $v1, 0x78
    /* CDFC0 800BF010 50600013 */  beql       $v1, $zero, .L800BF060_CE010
    /* CDFC4 800BF014 44039000 */   mfc1      $v1, $f18
    /* CDFC8 800BF018 44819000 */  mtc1       $at, $f18
    /* CDFCC 800BF01C 24030001 */  addiu      $v1, $zero, 0x1
    /* CDFD0 800BF020 46128481 */  sub.s      $f18, $f16, $f18
    /* CDFD4 800BF024 44C3F800 */  ctc1       $v1, $31
    /* CDFD8 800BF028 00000000 */  nop
    /* CDFDC 800BF02C 460094A4 */  cvt.w.s    $f18, $f18
    /* CDFE0 800BF030 4443F800 */  cfc1       $v1, $31
    /* CDFE4 800BF034 00000000 */  nop
    /* CDFE8 800BF038 30630078 */  andi       $v1, $v1, 0x78
    /* CDFEC 800BF03C 14600005 */  bnez       $v1, .L800BF054_CE004
    /* CDFF0 800BF040 00000000 */   nop
    /* CDFF4 800BF044 44039000 */  mfc1       $v1, $f18
    /* CDFF8 800BF048 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* CDFFC 800BF04C 10000007 */  b          .L800BF06C_CE01C
    /* CE000 800BF050 00611825 */   or        $v1, $v1, $at
  .L800BF054_CE004:
    /* CE004 800BF054 10000005 */  b          .L800BF06C_CE01C
    /* CE008 800BF058 2403FFFF */   addiu     $v1, $zero, -0x1
    /* CE00C 800BF05C 44039000 */  mfc1       $v1, $f18
  .L800BF060_CE010:
    /* CE010 800BF060 00000000 */  nop
    /* CE014 800BF064 0460FFFB */  bltz       $v1, .L800BF054_CE004
    /* CE018 800BF068 00000000 */   nop
  .L800BF06C_CE01C:
    /* CE01C 800BF06C 44CFF800 */  ctc1       $t7, $31
    /* CE020 800BF070 44992000 */  mtc1       $t9, $f4
    /* CE024 800BF074 44885000 */  mtc1       $t0, $f10
    /* CE028 800BF078 307800FF */  andi       $t8, $v1, 0xFF
    /* CE02C 800BF07C 03001825 */  or         $v1, $t8, $zero
    /* CE030 800BF080 468021A0 */  cvt.s.w    $f6, $f4
    /* CE034 800BF084 05010005 */  bgez       $t0, .L800BF09C_CE04C
    /* CE038 800BF088 46805220 */   cvt.s.w   $f8, $f10
    /* CE03C 800BF08C 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* CE040 800BF090 44818000 */  mtc1       $at, $f16
    /* CE044 800BF094 00000000 */  nop
    /* CE048 800BF098 46104200 */  add.s      $f8, $f8, $f16
  .L800BF09C_CE04C:
    /* CE04C 800BF09C 4608A482 */  mul.s      $f18, $f20, $f8
    /* CE050 800BF0A0 24080001 */  addiu      $t0, $zero, 0x1
    /* CE054 800BF0A4 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* CE058 800BF0A8 46189103 */  div.s      $f4, $f18, $f24
    /* CE05C 800BF0AC 46043280 */  add.s      $f10, $f6, $f4
    /* CE060 800BF0B0 444AF800 */  cfc1       $t2, $31
    /* CE064 800BF0B4 44C8F800 */  ctc1       $t0, $31
    /* CE068 800BF0B8 00000000 */  nop
    /* CE06C 800BF0BC 46005424 */  cvt.w.s    $f16, $f10
    /* CE070 800BF0C0 4448F800 */  cfc1       $t0, $31
    /* CE074 800BF0C4 00000000 */  nop
    /* CE078 800BF0C8 31080078 */  andi       $t0, $t0, 0x78
    /* CE07C 800BF0CC 51000013 */  beql       $t0, $zero, .L800BF11C_CE0CC
    /* CE080 800BF0D0 44088000 */   mfc1      $t0, $f16
    /* CE084 800BF0D4 44818000 */  mtc1       $at, $f16
    /* CE088 800BF0D8 24080001 */  addiu      $t0, $zero, 0x1
    /* CE08C 800BF0DC 46105401 */  sub.s      $f16, $f10, $f16
    /* CE090 800BF0E0 44C8F800 */  ctc1       $t0, $31
    /* CE094 800BF0E4 00000000 */  nop
    /* CE098 800BF0E8 46008424 */  cvt.w.s    $f16, $f16
    /* CE09C 800BF0EC 4448F800 */  cfc1       $t0, $31
    /* CE0A0 800BF0F0 00000000 */  nop
    /* CE0A4 800BF0F4 31080078 */  andi       $t0, $t0, 0x78
    /* CE0A8 800BF0F8 15000005 */  bnez       $t0, .L800BF110_CE0C0
    /* CE0AC 800BF0FC 00000000 */   nop
    /* CE0B0 800BF100 44088000 */  mfc1       $t0, $f16
    /* CE0B4 800BF104 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* CE0B8 800BF108 10000007 */  b          .L800BF128_CE0D8
    /* CE0BC 800BF10C 01014025 */   or        $t0, $t0, $at
  .L800BF110_CE0C0:
    /* CE0C0 800BF110 10000005 */  b          .L800BF128_CE0D8
    /* CE0C4 800BF114 2408FFFF */   addiu     $t0, $zero, -0x1
    /* CE0C8 800BF118 44088000 */  mfc1       $t0, $f16
  .L800BF11C_CE0CC:
    /* CE0CC 800BF11C 00000000 */  nop
    /* CE0D0 800BF120 0500FFFB */  bltz       $t0, .L800BF110_CE0C0
    /* CE0D4 800BF124 00000000 */   nop
  .L800BF128_CE0D8:
    /* CE0D8 800BF128 44CAF800 */  ctc1       $t2, $31
    /* CE0DC 800BF12C 448C4000 */  mtc1       $t4, $f8
    /* CE0E0 800BF130 44893000 */  mtc1       $t1, $f6
    /* CE0E4 800BF134 310B00FF */  andi       $t3, $t0, 0xFF
    /* CE0E8 800BF138 01604025 */  or         $t0, $t3, $zero
    /* CE0EC 800BF13C 468044A0 */  cvt.s.w    $f18, $f8
    /* CE0F0 800BF140 05210005 */  bgez       $t1, .L800BF158_CE108
    /* CE0F4 800BF144 46803120 */   cvt.s.w   $f4, $f6
    /* CE0F8 800BF148 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* CE0FC 800BF14C 44815000 */  mtc1       $at, $f10
    /* CE100 800BF150 00000000 */  nop
    /* CE104 800BF154 460A2100 */  add.s      $f4, $f4, $f10
  .L800BF158_CE108:
    /* CE108 800BF158 4604A402 */  mul.s      $f16, $f20, $f4
    /* CE10C 800BF15C 24090001 */  addiu      $t1, $zero, 0x1
    /* CE110 800BF160 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* CE114 800BF164 46188203 */  div.s      $f8, $f16, $f24
    /* CE118 800BF168 46089180 */  add.s      $f6, $f18, $f8
    /* CE11C 800BF16C 444DF800 */  cfc1       $t5, $31
    /* CE120 800BF170 44C9F800 */  ctc1       $t1, $31
    /* CE124 800BF174 00000000 */  nop
    /* CE128 800BF178 460032A4 */  cvt.w.s    $f10, $f6
    /* CE12C 800BF17C 4449F800 */  cfc1       $t1, $31
    /* CE130 800BF180 00000000 */  nop
    /* CE134 800BF184 31290078 */  andi       $t1, $t1, 0x78
    /* CE138 800BF188 51200019 */  beql       $t1, $zero, .L800BF1F0_CE1A0
    /* CE13C 800BF18C 44095000 */   mfc1      $t1, $f10
    /* CE140 800BF190 44815000 */  mtc1       $at, $f10
    /* CE144 800BF194 24090001 */  addiu      $t1, $zero, 0x1
    /* CE148 800BF198 460A3281 */  sub.s      $f10, $f6, $f10
    /* CE14C 800BF19C 44C9F800 */  ctc1       $t1, $31
    /* CE150 800BF1A0 00000000 */  nop
    /* CE154 800BF1A4 460052A4 */  cvt.w.s    $f10, $f10
    /* CE158 800BF1A8 4449F800 */  cfc1       $t1, $31
    /* CE15C 800BF1AC 00000000 */  nop
    /* CE160 800BF1B0 31290078 */  andi       $t1, $t1, 0x78
    /* CE164 800BF1B4 55200009 */  bnel       $t1, $zero, .L800BF1DC_CE18C
    /* CE168 800BF1B8 2409FFFF */   addiu     $t1, $zero, -0x1
    /* CE16C 800BF1BC 44095000 */  mfc1       $t1, $f10
    /* CE170 800BF1C0 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* CE174 800BF1C4 44CDF800 */  ctc1       $t5, $31
    /* CE178 800BF1C8 01214825 */  or         $t1, $t1, $at
    /* CE17C 800BF1CC 312E00FF */  andi       $t6, $t1, 0xFF
    /* CE180 800BF1D0 100000A3 */  b          .L800BF460_CE410
    /* CE184 800BF1D4 01C04825 */   or        $t1, $t6, $zero
  .L800BF1D8_CE188:
    /* CE188 800BF1D8 2409FFFF */  addiu      $t1, $zero, -0x1
  .L800BF1DC_CE18C:
    /* CE18C 800BF1DC 312E00FF */  andi       $t6, $t1, 0xFF
    /* CE190 800BF1E0 44CDF800 */  ctc1       $t5, $31
    /* CE194 800BF1E4 1000009E */  b          .L800BF460_CE410
    /* CE198 800BF1E8 01C04825 */   or        $t1, $t6, $zero
    /* CE19C 800BF1EC 44095000 */  mfc1       $t1, $f10
  .L800BF1F0_CE1A0:
    /* CE1A0 800BF1F0 00000000 */  nop
    /* CE1A4 800BF1F4 0520FFF8 */  bltz       $t1, .L800BF1D8_CE188
    /* CE1A8 800BF1F8 312E00FF */   andi      $t6, $t1, 0xFF
    /* CE1AC 800BF1FC 44CDF800 */  ctc1       $t5, $31
    /* CE1B0 800BF200 10000097 */  b          .L800BF460_CE410
    /* CE1B4 800BF204 01C04825 */   or        $t1, $t6, $zero
  .L800BF208_CE1B8:
    /* CE1B8 800BF208 448F2000 */  mtc1       $t7, $f4
    /* CE1BC 800BF20C 44839000 */  mtc1       $v1, $f18
    /* CE1C0 800BF210 93A90049 */  lbu        $t1, 0x49($sp)
    /* CE1C4 800BF214 46802421 */  cvt.d.w    $f16, $f4
    /* CE1C8 800BF218 04610005 */  bgez       $v1, .L800BF230_CE1E0
    /* CE1CC 800BF21C 46809220 */   cvt.s.w   $f8, $f18
    /* CE1D0 800BF220 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* CE1D4 800BF224 44813000 */  mtc1       $at, $f6
    /* CE1D8 800BF228 00000000 */  nop
    /* CE1DC 800BF22C 46064200 */  add.s      $f8, $f8, $f6
  .L800BF230_CE1E0:
    /* CE1E0 800BF230 4608A282 */  mul.s      $f10, $f20, $f8
    /* CE1E4 800BF234 24030001 */  addiu      $v1, $zero, 0x1
    /* CE1E8 800BF238 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* CE1EC 800BF23C 00085083 */  sra        $t2, $t0, 2
    /* CE1F0 800BF240 00096883 */  sra        $t5, $t1, 2
    /* CE1F4 800BF244 46005121 */  cvt.d.s    $f4, $f10
    /* CE1F8 800BF248 46362482 */  mul.d      $f18, $f4, $f22
    /* CE1FC 800BF24C 46328180 */  add.d      $f6, $f16, $f18
    /* CE200 800BF250 4458F800 */  cfc1       $t8, $31
    /* CE204 800BF254 44C3F800 */  ctc1       $v1, $31
    /* CE208 800BF258 00000000 */  nop
    /* CE20C 800BF25C 46203224 */  cvt.w.d    $f8, $f6
    /* CE210 800BF260 4443F800 */  cfc1       $v1, $31
    /* CE214 800BF264 00000000 */  nop
    /* CE218 800BF268 30630078 */  andi       $v1, $v1, 0x78
    /* CE21C 800BF26C 50600014 */  beql       $v1, $zero, .L800BF2C0_CE270
    /* CE220 800BF270 44034000 */   mfc1      $v1, $f8
    /* CE224 800BF274 44814800 */  mtc1       $at, $f9
    /* CE228 800BF278 44804000 */  mtc1       $zero, $f8
    /* CE22C 800BF27C 24030001 */  addiu      $v1, $zero, 0x1
    /* CE230 800BF280 46283201 */  sub.d      $f8, $f6, $f8
    /* CE234 800BF284 44C3F800 */  ctc1       $v1, $31
    /* CE238 800BF288 00000000 */  nop
    /* CE23C 800BF28C 46204224 */  cvt.w.d    $f8, $f8
    /* CE240 800BF290 4443F800 */  cfc1       $v1, $31
    /* CE244 800BF294 00000000 */  nop
    /* CE248 800BF298 30630078 */  andi       $v1, $v1, 0x78
    /* CE24C 800BF29C 14600005 */  bnez       $v1, .L800BF2B4_CE264
    /* CE250 800BF2A0 00000000 */   nop
    /* CE254 800BF2A4 44034000 */  mfc1       $v1, $f8
    /* CE258 800BF2A8 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* CE25C 800BF2AC 10000007 */  b          .L800BF2CC_CE27C
    /* CE260 800BF2B0 00611825 */   or        $v1, $v1, $at
  .L800BF2B4_CE264:
    /* CE264 800BF2B4 10000005 */  b          .L800BF2CC_CE27C
    /* CE268 800BF2B8 2403FFFF */   addiu     $v1, $zero, -0x1
    /* CE26C 800BF2BC 44034000 */  mfc1       $v1, $f8
  .L800BF2C0_CE270:
    /* CE270 800BF2C0 00000000 */  nop
    /* CE274 800BF2C4 0460FFFB */  bltz       $v1, .L800BF2B4_CE264
    /* CE278 800BF2C8 00000000 */   nop
  .L800BF2CC_CE27C:
    /* CE27C 800BF2CC 44D8F800 */  ctc1       $t8, $31
    /* CE280 800BF2D0 448A5000 */  mtc1       $t2, $f10
    /* CE284 800BF2D4 44888000 */  mtc1       $t0, $f16
    /* CE288 800BF2D8 307900FF */  andi       $t9, $v1, 0xFF
    /* CE28C 800BF2DC 03201825 */  or         $v1, $t9, $zero
    /* CE290 800BF2E0 46805121 */  cvt.d.w    $f4, $f10
    /* CE294 800BF2E4 05010005 */  bgez       $t0, .L800BF2FC_CE2AC
    /* CE298 800BF2E8 468084A0 */   cvt.s.w   $f18, $f16
    /* CE29C 800BF2EC 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* CE2A0 800BF2F0 44813000 */  mtc1       $at, $f6
    /* CE2A4 800BF2F4 00000000 */  nop
    /* CE2A8 800BF2F8 46069480 */  add.s      $f18, $f18, $f6
  .L800BF2FC_CE2AC:
    /* CE2AC 800BF2FC 4612A202 */  mul.s      $f8, $f20, $f18
    /* CE2B0 800BF300 24080001 */  addiu      $t0, $zero, 0x1
    /* CE2B4 800BF304 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* CE2B8 800BF308 460042A1 */  cvt.d.s    $f10, $f8
    /* CE2BC 800BF30C 46365402 */  mul.d      $f16, $f10, $f22
    /* CE2C0 800BF310 46302180 */  add.d      $f6, $f4, $f16
    /* CE2C4 800BF314 444BF800 */  cfc1       $t3, $31
    /* CE2C8 800BF318 44C8F800 */  ctc1       $t0, $31
    /* CE2CC 800BF31C 00000000 */  nop
    /* CE2D0 800BF320 462034A4 */  cvt.w.d    $f18, $f6
    /* CE2D4 800BF324 4448F800 */  cfc1       $t0, $31
    /* CE2D8 800BF328 00000000 */  nop
    /* CE2DC 800BF32C 31080078 */  andi       $t0, $t0, 0x78
    /* CE2E0 800BF330 51000014 */  beql       $t0, $zero, .L800BF384_CE334
    /* CE2E4 800BF334 44089000 */   mfc1      $t0, $f18
    /* CE2E8 800BF338 44819800 */  mtc1       $at, $f19
    /* CE2EC 800BF33C 44809000 */  mtc1       $zero, $f18
    /* CE2F0 800BF340 24080001 */  addiu      $t0, $zero, 0x1
    /* CE2F4 800BF344 46323481 */  sub.d      $f18, $f6, $f18
    /* CE2F8 800BF348 44C8F800 */  ctc1       $t0, $31
    /* CE2FC 800BF34C 00000000 */  nop
    /* CE300 800BF350 462094A4 */  cvt.w.d    $f18, $f18
    /* CE304 800BF354 4448F800 */  cfc1       $t0, $31
    /* CE308 800BF358 00000000 */  nop
    /* CE30C 800BF35C 31080078 */  andi       $t0, $t0, 0x78
    /* CE310 800BF360 15000005 */  bnez       $t0, .L800BF378_CE328
    /* CE314 800BF364 00000000 */   nop
    /* CE318 800BF368 44089000 */  mfc1       $t0, $f18
    /* CE31C 800BF36C 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* CE320 800BF370 10000007 */  b          .L800BF390_CE340
    /* CE324 800BF374 01014025 */   or        $t0, $t0, $at
  .L800BF378_CE328:
    /* CE328 800BF378 10000005 */  b          .L800BF390_CE340
    /* CE32C 800BF37C 2408FFFF */   addiu     $t0, $zero, -0x1
    /* CE330 800BF380 44089000 */  mfc1       $t0, $f18
  .L800BF384_CE334:
    /* CE334 800BF384 00000000 */  nop
    /* CE338 800BF388 0500FFFB */  bltz       $t0, .L800BF378_CE328
    /* CE33C 800BF38C 00000000 */   nop
  .L800BF390_CE340:
    /* CE340 800BF390 44CBF800 */  ctc1       $t3, $31
    /* CE344 800BF394 448D4000 */  mtc1       $t5, $f8
    /* CE348 800BF398 44892000 */  mtc1       $t1, $f4
    /* CE34C 800BF39C 310C00FF */  andi       $t4, $t0, 0xFF
    /* CE350 800BF3A0 01804025 */  or         $t0, $t4, $zero
    /* CE354 800BF3A4 468042A1 */  cvt.d.w    $f10, $f8
    /* CE358 800BF3A8 05210005 */  bgez       $t1, .L800BF3C0_CE370
    /* CE35C 800BF3AC 46802420 */   cvt.s.w   $f16, $f4
    /* CE360 800BF3B0 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* CE364 800BF3B4 44813000 */  mtc1       $at, $f6
    /* CE368 800BF3B8 00000000 */  nop
    /* CE36C 800BF3BC 46068400 */  add.s      $f16, $f16, $f6
  .L800BF3C0_CE370:
    /* CE370 800BF3C0 4610A482 */  mul.s      $f18, $f20, $f16
    /* CE374 800BF3C4 24090001 */  addiu      $t1, $zero, 0x1
    /* CE378 800BF3C8 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* CE37C 800BF3CC 46009221 */  cvt.d.s    $f8, $f18
    /* CE380 800BF3D0 46364102 */  mul.d      $f4, $f8, $f22
    /* CE384 800BF3D4 46245180 */  add.d      $f6, $f10, $f4
    /* CE388 800BF3D8 444EF800 */  cfc1       $t6, $31
    /* CE38C 800BF3DC 44C9F800 */  ctc1       $t1, $31
    /* CE390 800BF3E0 00000000 */  nop
    /* CE394 800BF3E4 46203424 */  cvt.w.d    $f16, $f6
    /* CE398 800BF3E8 4449F800 */  cfc1       $t1, $31
    /* CE39C 800BF3EC 00000000 */  nop
    /* CE3A0 800BF3F0 31290078 */  andi       $t1, $t1, 0x78
    /* CE3A4 800BF3F4 51200014 */  beql       $t1, $zero, .L800BF448_CE3F8
    /* CE3A8 800BF3F8 44098000 */   mfc1      $t1, $f16
    /* CE3AC 800BF3FC 44818800 */  mtc1       $at, $f17
    /* CE3B0 800BF400 44808000 */  mtc1       $zero, $f16
    /* CE3B4 800BF404 24090001 */  addiu      $t1, $zero, 0x1
    /* CE3B8 800BF408 46303401 */  sub.d      $f16, $f6, $f16
    /* CE3BC 800BF40C 44C9F800 */  ctc1       $t1, $31
    /* CE3C0 800BF410 00000000 */  nop
    /* CE3C4 800BF414 46208424 */  cvt.w.d    $f16, $f16
    /* CE3C8 800BF418 4449F800 */  cfc1       $t1, $31
    /* CE3CC 800BF41C 00000000 */  nop
    /* CE3D0 800BF420 31290078 */  andi       $t1, $t1, 0x78
    /* CE3D4 800BF424 15200005 */  bnez       $t1, .L800BF43C_CE3EC
    /* CE3D8 800BF428 00000000 */   nop
    /* CE3DC 800BF42C 44098000 */  mfc1       $t1, $f16
    /* CE3E0 800BF430 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* CE3E4 800BF434 10000007 */  b          .L800BF454_CE404
    /* CE3E8 800BF438 01214825 */   or        $t1, $t1, $at
  .L800BF43C_CE3EC:
    /* CE3EC 800BF43C 10000005 */  b          .L800BF454_CE404
    /* CE3F0 800BF440 2409FFFF */   addiu     $t1, $zero, -0x1
    /* CE3F4 800BF444 44098000 */  mfc1       $t1, $f16
  .L800BF448_CE3F8:
    /* CE3F8 800BF448 00000000 */  nop
    /* CE3FC 800BF44C 0520FFFB */  bltz       $t1, .L800BF43C_CE3EC
    /* CE400 800BF450 00000000 */   nop
  .L800BF454_CE404:
    /* CE404 800BF454 44CEF800 */  ctc1       $t6, $31
    /* CE408 800BF458 312F00FF */  andi       $t7, $t1, 0xFF
    /* CE40C 800BF45C 01E04825 */  or         $t1, $t7, $zero
  .L800BF460_CE410:
    /* CE410 800BF460 3C19802D */  lui        $t9, %hi(D_802D4AD0)
    /* CE414 800BF464 27394AD0 */  addiu      $t9, $t9, %lo(D_802D4AD0)
    /* CE418 800BF468 0010C040 */  sll        $t8, $s0, 1
    /* CE41C 800BF46C 03191021 */  addu       $v0, $t8, $t9
    /* CE420 800BF470 26100001 */  addiu      $s0, $s0, 0x1
    /* CE424 800BF474 00035AC0 */  sll        $t3, $v1, 11
    /* CE428 800BF478 00086180 */  sll        $t4, $t0, 6
    /* CE42C 800BF47C 0010CC00 */  sll        $t9, $s0, 16
    /* CE430 800BF480 016C7021 */  addu       $t6, $t3, $t4
    /* CE434 800BF484 00198403 */  sra        $s0, $t9, 16
    /* CE438 800BF488 A44B0000 */  sh         $t3, 0x0($v0)
    /* CE43C 800BF48C 00097840 */  sll        $t7, $t1, 1
    /* CE440 800BF490 2A010100 */  slti       $at, $s0, 0x100
    /* CE444 800BF494 A44E0000 */  sh         $t6, 0x0($v0)
    /* CE448 800BF498 01CFC021 */  addu       $t8, $t6, $t7
    /* CE44C 800BF49C A3A3004B */  sb         $v1, 0x4B($sp)
    /* CE450 800BF4A0 A3A8004A */  sb         $t0, 0x4A($sp)
    /* CE454 800BF4A4 A3A90049 */  sb         $t1, 0x49($sp)
    /* CE458 800BF4A8 1420FEB4 */  bnez       $at, .L800BEF7C_CDF2C
    /* CE45C 800BF4AC A4580000 */   sh        $t8, 0x0($v0)
    /* CE460 800BF4B0 3C028014 */  lui        $v0, %hi(D_8013D9B0)
    /* CE464 800BF4B4 9042D9B0 */  lbu        $v0, %lo(D_8013D9B0)($v0)
    /* CE468 800BF4B8 2444FFFF */  addiu      $a0, $v0, -0x1
    /* CE46C 800BF4BC 2881003D */  slti       $at, $a0, 0x3D
    /* CE470 800BF4C0 14200040 */  bnez       $at, .L800BF5C4_CE574
    /* CE474 800BF4C4 2443FFC3 */   addiu     $v1, $v0, -0x3D
    /* CE478 800BF4C8 00035C00 */  sll        $t3, $v1, 16
    /* CE47C 800BF4CC 000B1C03 */  sra        $v1, $t3, 16
    /* CE480 800BF4D0 44839000 */  mtc1       $v1, $f18
    /* CE484 800BF4D4 3C014170 */  lui        $at, (0x41700000 >> 16)
    /* CE488 800BF4D8 44815000 */  mtc1       $at, $f10
    /* CE48C 800BF4DC 46809220 */  cvt.s.w    $f8, $f18
    /* CE490 800BF4E0 3C014700 */  lui        $at, (0x47000000 >> 16)
    /* CE494 800BF4E4 44813000 */  mtc1       $at, $f6
    /* CE498 800BF4E8 24040001 */  addiu      $a0, $zero, 0x1
    /* CE49C 800BF4EC 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* CE4A0 800BF4F0 460A4103 */  div.s      $f4, $f8, $f10
    /* CE4A4 800BF4F4 46062402 */  mul.s      $f16, $f4, $f6
    /* CE4A8 800BF4F8 444DF800 */  cfc1       $t5, $31
    /* CE4AC 800BF4FC 44C4F800 */  ctc1       $a0, $31
    /* CE4B0 800BF500 00000000 */  nop
    /* CE4B4 800BF504 460084A4 */  cvt.w.s    $f18, $f16
    /* CE4B8 800BF508 4444F800 */  cfc1       $a0, $31
    /* CE4BC 800BF50C 00000000 */  nop
    /* CE4C0 800BF510 30840078 */  andi       $a0, $a0, 0x78
    /* CE4C4 800BF514 50800013 */  beql       $a0, $zero, .L800BF564_CE514
    /* CE4C8 800BF518 44049000 */   mfc1      $a0, $f18
    /* CE4CC 800BF51C 44819000 */  mtc1       $at, $f18
    /* CE4D0 800BF520 24040001 */  addiu      $a0, $zero, 0x1
    /* CE4D4 800BF524 46128481 */  sub.s      $f18, $f16, $f18
    /* CE4D8 800BF528 44C4F800 */  ctc1       $a0, $31
    /* CE4DC 800BF52C 00000000 */  nop
    /* CE4E0 800BF530 460094A4 */  cvt.w.s    $f18, $f18
    /* CE4E4 800BF534 4444F800 */  cfc1       $a0, $31
    /* CE4E8 800BF538 00000000 */  nop
    /* CE4EC 800BF53C 30840078 */  andi       $a0, $a0, 0x78
    /* CE4F0 800BF540 14800005 */  bnez       $a0, .L800BF558_CE508
    /* CE4F4 800BF544 00000000 */   nop
    /* CE4F8 800BF548 44049000 */  mfc1       $a0, $f18
    /* CE4FC 800BF54C 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* CE500 800BF550 10000007 */  b          .L800BF570_CE520
    /* CE504 800BF554 00812025 */   or        $a0, $a0, $at
  .L800BF558_CE508:
    /* CE508 800BF558 10000005 */  b          .L800BF570_CE520
    /* CE50C 800BF55C 2404FFFF */   addiu     $a0, $zero, -0x1
    /* CE510 800BF560 44049000 */  mfc1       $a0, $f18
  .L800BF564_CE514:
    /* CE514 800BF564 00000000 */  nop
    /* CE518 800BF568 0480FFFB */  bltz       $a0, .L800BF558_CE508
    /* CE51C 800BF56C 00000000 */   nop
  .L800BF570_CE520:
    /* CE520 800BF570 44CDF800 */  ctc1       $t5, $31
    /* CE524 800BF574 308EFFFF */  andi       $t6, $a0, 0xFFFF
    /* CE528 800BF578 0C007654 */  jal        coss
    /* CE52C 800BF57C 01C02025 */   or        $a0, $t6, $zero
    /* CE530 800BF580 44824000 */  mtc1       $v0, $f8
    /* CE534 800BF584 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* CE538 800BF588 44813800 */  mtc1       $at, $f7
    /* CE53C 800BF58C 468042A0 */  cvt.s.w    $f10, $f8
    /* CE540 800BF590 44803000 */  mtc1       $zero, $f6
    /* CE544 800BF594 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
    /* CE548 800BF598 44819800 */  mtc1       $at, $f19
    /* CE54C 800BF59C 44809000 */  mtc1       $zero, $f18
    /* CE550 800BF5A0 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* CE554 800BF5A4 46005121 */  cvt.d.s    $f4, $f10
    /* CE558 800BF5A8 44805000 */  mtc1       $zero, $f10
    /* CE55C 800BF5AC 46262403 */  div.d      $f16, $f4, $f6
    /* CE560 800BF5B0 44815800 */  mtc1       $at, $f11
    /* CE564 800BF5B4 46309201 */  sub.d      $f8, $f18, $f16
    /* CE568 800BF5B8 462A4103 */  div.d      $f4, $f8, $f10
    /* CE56C 800BF5BC 10000045 */  b          .L800BF6D4_CE684
    /* CE570 800BF5C0 46202520 */   cvt.s.d   $f20, $f4
  .L800BF5C4_CE574:
    /* CE574 800BF5C4 18400005 */  blez       $v0, .L800BF5DC_CE58C
    /* CE578 800BF5C8 00021C00 */   sll       $v1, $v0, 16
    /* CE57C 800BF5CC 00041C00 */  sll        $v1, $a0, 16
    /* CE580 800BF5D0 00037C03 */  sra        $t7, $v1, 16
    /* CE584 800BF5D4 10000003 */  b          .L800BF5E4_CE594
    /* CE588 800BF5D8 01E01825 */   or        $v1, $t7, $zero
  .L800BF5DC_CE58C:
    /* CE58C 800BF5DC 0003C403 */  sra        $t8, $v1, 16
    /* CE590 800BF5E0 03001825 */  or         $v1, $t8, $zero
  .L800BF5E4_CE594:
    /* CE594 800BF5E4 44833000 */  mtc1       $v1, $f6
    /* CE598 800BF5E8 3C014270 */  lui        $at, (0x42700000 >> 16)
    /* CE59C 800BF5EC 44818000 */  mtc1       $at, $f16
    /* CE5A0 800BF5F0 468034A0 */  cvt.s.w    $f18, $f6
    /* CE5A4 800BF5F4 3C014700 */  lui        $at, (0x47000000 >> 16)
    /* CE5A8 800BF5F8 44815000 */  mtc1       $at, $f10
    /* CE5AC 800BF5FC 24040001 */  addiu      $a0, $zero, 0x1
    /* CE5B0 800BF600 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* CE5B4 800BF604 46109203 */  div.s      $f8, $f18, $f16
    /* CE5B8 800BF608 460A4102 */  mul.s      $f4, $f8, $f10
    /* CE5BC 800BF60C 4459F800 */  cfc1       $t9, $31
    /* CE5C0 800BF610 44C4F800 */  ctc1       $a0, $31
    /* CE5C4 800BF614 00000000 */  nop
    /* CE5C8 800BF618 460021A4 */  cvt.w.s    $f6, $f4
    /* CE5CC 800BF61C 4444F800 */  cfc1       $a0, $31
    /* CE5D0 800BF620 00000000 */  nop
    /* CE5D4 800BF624 30840078 */  andi       $a0, $a0, 0x78
    /* CE5D8 800BF628 50800013 */  beql       $a0, $zero, .L800BF678_CE628
    /* CE5DC 800BF62C 44043000 */   mfc1      $a0, $f6
    /* CE5E0 800BF630 44813000 */  mtc1       $at, $f6
    /* CE5E4 800BF634 24040001 */  addiu      $a0, $zero, 0x1
    /* CE5E8 800BF638 46062181 */  sub.s      $f6, $f4, $f6
    /* CE5EC 800BF63C 44C4F800 */  ctc1       $a0, $31
    /* CE5F0 800BF640 00000000 */  nop
    /* CE5F4 800BF644 460031A4 */  cvt.w.s    $f6, $f6
    /* CE5F8 800BF648 4444F800 */  cfc1       $a0, $31
    /* CE5FC 800BF64C 00000000 */  nop
    /* CE600 800BF650 30840078 */  andi       $a0, $a0, 0x78
    /* CE604 800BF654 14800005 */  bnez       $a0, .L800BF66C_CE61C
    /* CE608 800BF658 00000000 */   nop
    /* CE60C 800BF65C 44043000 */  mfc1       $a0, $f6
    /* CE610 800BF660 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* CE614 800BF664 10000007 */  b          .L800BF684_CE634
    /* CE618 800BF668 00812025 */   or        $a0, $a0, $at
  .L800BF66C_CE61C:
    /* CE61C 800BF66C 10000005 */  b          .L800BF684_CE634
    /* CE620 800BF670 2404FFFF */   addiu     $a0, $zero, -0x1
    /* CE624 800BF674 44043000 */  mfc1       $a0, $f6
  .L800BF678_CE628:
    /* CE628 800BF678 00000000 */  nop
    /* CE62C 800BF67C 0480FFFB */  bltz       $a0, .L800BF66C_CE61C
    /* CE630 800BF680 00000000 */   nop
  .L800BF684_CE634:
    /* CE634 800BF684 44D9F800 */  ctc1       $t9, $31
    /* CE638 800BF688 308AFFFF */  andi       $t2, $a0, 0xFFFF
    /* CE63C 800BF68C 0C007654 */  jal        coss
    /* CE640 800BF690 01402025 */   or        $a0, $t2, $zero
    /* CE644 800BF694 44829000 */  mtc1       $v0, $f18
    /* CE648 800BF698 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* CE64C 800BF69C 44815800 */  mtc1       $at, $f11
    /* CE650 800BF6A0 46809420 */  cvt.s.w    $f16, $f18
    /* CE654 800BF6A4 44805000 */  mtc1       $zero, $f10
    /* CE658 800BF6A8 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
    /* CE65C 800BF6AC 44813800 */  mtc1       $at, $f7
    /* CE660 800BF6B0 44803000 */  mtc1       $zero, $f6
    /* CE664 800BF6B4 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* CE668 800BF6B8 46008221 */  cvt.d.s    $f8, $f16
    /* CE66C 800BF6BC 44808000 */  mtc1       $zero, $f16
    /* CE670 800BF6C0 462A4103 */  div.d      $f4, $f8, $f10
    /* CE674 800BF6C4 44818800 */  mtc1       $at, $f17
    /* CE678 800BF6C8 46262480 */  add.d      $f18, $f4, $f6
    /* CE67C 800BF6CC 46309203 */  div.d      $f8, $f18, $f16
    /* CE680 800BF6D0 46204520 */  cvt.s.d    $f20, $f8
  .L800BF6D4_CE684:
    /* CE684 800BF6D4 3C04802D */  lui        $a0, %hi(D_802CA8D0)
    /* CE688 800BF6D8 9084A8D0 */  lbu        $a0, %lo(D_802CA8D0)($a0)
    /* CE68C 800BF6DC 27A5004B */  addiu      $a1, $sp, 0x4B
    /* CE690 800BF6E0 27A6004A */  addiu      $a2, $sp, 0x4A
    /* CE694 800BF6E4 0C00128E */  jal        func_80004A38_5638
    /* CE698 800BF6E8 27A70049 */   addiu     $a3, $sp, 0x49
    /* CE69C 800BF6EC 8E2B0000 */  lw         $t3, 0x0($s1)
    /* CE6A0 800BF6F0 3C04802D */  lui        $a0, %hi(D_802D48CF)
    /* CE6A4 800BF6F4 27A5004B */  addiu      $a1, $sp, 0x4B
    /* CE6A8 800BF6F8 1160009A */  beqz       $t3, .L800BF964_CE914
    /* CE6AC 800BF6FC 27A6004A */   addiu     $a2, $sp, 0x4A
    /* CE6B0 800BF700 93A3004B */  lbu        $v1, 0x4B($sp)
    /* CE6B4 800BF704 93A8004A */  lbu        $t0, 0x4A($sp)
    /* CE6B8 800BF708 93A90049 */  lbu        $t1, 0x49($sp)
    /* CE6BC 800BF70C 00036043 */  sra        $t4, $v1, 1
    /* CE6C0 800BF710 448C5000 */  mtc1       $t4, $f10
    /* CE6C4 800BF714 44833000 */  mtc1       $v1, $f6
    /* CE6C8 800BF718 00087843 */  sra        $t7, $t0, 1
    /* CE6CC 800BF71C 46805120 */  cvt.s.w    $f4, $f10
    /* CE6D0 800BF720 04610005 */  bgez       $v1, .L800BF738_CE6E8
    /* CE6D4 800BF724 468034A0 */   cvt.s.w   $f18, $f6
    /* CE6D8 800BF728 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* CE6DC 800BF72C 44818000 */  mtc1       $at, $f16
    /* CE6E0 800BF730 00000000 */  nop
    /* CE6E4 800BF734 46109480 */  add.s      $f18, $f18, $f16
  .L800BF738_CE6E8:
    /* CE6E8 800BF738 4612A202 */  mul.s      $f8, $f20, $f18
    /* CE6EC 800BF73C 24030001 */  addiu      $v1, $zero, 0x1
    /* CE6F0 800BF740 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* CE6F4 800BF744 00095043 */  sra        $t2, $t1, 1
    /* CE6F8 800BF748 46184283 */  div.s      $f10, $f8, $f24
    /* CE6FC 800BF74C 460A2180 */  add.s      $f6, $f4, $f10
    /* CE700 800BF750 444DF800 */  cfc1       $t5, $31
    /* CE704 800BF754 44C3F800 */  ctc1       $v1, $31
    /* CE708 800BF758 00000000 */  nop
    /* CE70C 800BF75C 46003424 */  cvt.w.s    $f16, $f6
    /* CE710 800BF760 4443F800 */  cfc1       $v1, $31
    /* CE714 800BF764 00000000 */  nop
    /* CE718 800BF768 30630078 */  andi       $v1, $v1, 0x78
    /* CE71C 800BF76C 50600013 */  beql       $v1, $zero, .L800BF7BC_CE76C
    /* CE720 800BF770 44038000 */   mfc1      $v1, $f16
    /* CE724 800BF774 44818000 */  mtc1       $at, $f16
    /* CE728 800BF778 24030001 */  addiu      $v1, $zero, 0x1
    /* CE72C 800BF77C 46103401 */  sub.s      $f16, $f6, $f16
    /* CE730 800BF780 44C3F800 */  ctc1       $v1, $31
    /* CE734 800BF784 00000000 */  nop
    /* CE738 800BF788 46008424 */  cvt.w.s    $f16, $f16
    /* CE73C 800BF78C 4443F800 */  cfc1       $v1, $31
    /* CE740 800BF790 00000000 */  nop
    /* CE744 800BF794 30630078 */  andi       $v1, $v1, 0x78
    /* CE748 800BF798 14600005 */  bnez       $v1, .L800BF7B0_CE760
    /* CE74C 800BF79C 00000000 */   nop
    /* CE750 800BF7A0 44038000 */  mfc1       $v1, $f16
    /* CE754 800BF7A4 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* CE758 800BF7A8 10000007 */  b          .L800BF7C8_CE778
    /* CE75C 800BF7AC 00611825 */   or        $v1, $v1, $at
  .L800BF7B0_CE760:
    /* CE760 800BF7B0 10000005 */  b          .L800BF7C8_CE778
    /* CE764 800BF7B4 2403FFFF */   addiu     $v1, $zero, -0x1
    /* CE768 800BF7B8 44038000 */  mfc1       $v1, $f16
  .L800BF7BC_CE76C:
    /* CE76C 800BF7BC 00000000 */  nop
    /* CE770 800BF7C0 0460FFFB */  bltz       $v1, .L800BF7B0_CE760
    /* CE774 800BF7C4 00000000 */   nop
  .L800BF7C8_CE778:
    /* CE778 800BF7C8 44CDF800 */  ctc1       $t5, $31
    /* CE77C 800BF7CC 448F9000 */  mtc1       $t7, $f18
    /* CE780 800BF7D0 44882000 */  mtc1       $t0, $f4
    /* CE784 800BF7D4 306E00FF */  andi       $t6, $v1, 0xFF
    /* CE788 800BF7D8 01C01825 */  or         $v1, $t6, $zero
    /* CE78C 800BF7DC 46809220 */  cvt.s.w    $f8, $f18
    /* CE790 800BF7E0 05010005 */  bgez       $t0, .L800BF7F8_CE7A8
    /* CE794 800BF7E4 468022A0 */   cvt.s.w   $f10, $f4
    /* CE798 800BF7E8 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* CE79C 800BF7EC 44813000 */  mtc1       $at, $f6
    /* CE7A0 800BF7F0 00000000 */  nop
    /* CE7A4 800BF7F4 46065280 */  add.s      $f10, $f10, $f6
  .L800BF7F8_CE7A8:
    /* CE7A8 800BF7F8 460AA402 */  mul.s      $f16, $f20, $f10
    /* CE7AC 800BF7FC 24080001 */  addiu      $t0, $zero, 0x1
    /* CE7B0 800BF800 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* CE7B4 800BF804 46188483 */  div.s      $f18, $f16, $f24
    /* CE7B8 800BF808 46124100 */  add.s      $f4, $f8, $f18
    /* CE7BC 800BF80C 4458F800 */  cfc1       $t8, $31
    /* CE7C0 800BF810 44C8F800 */  ctc1       $t0, $31
    /* CE7C4 800BF814 00000000 */  nop
    /* CE7C8 800BF818 460021A4 */  cvt.w.s    $f6, $f4
    /* CE7CC 800BF81C 4448F800 */  cfc1       $t0, $31
    /* CE7D0 800BF820 00000000 */  nop
    /* CE7D4 800BF824 31080078 */  andi       $t0, $t0, 0x78
    /* CE7D8 800BF828 51000013 */  beql       $t0, $zero, .L800BF878_CE828
    /* CE7DC 800BF82C 44083000 */   mfc1      $t0, $f6
    /* CE7E0 800BF830 44813000 */  mtc1       $at, $f6
    /* CE7E4 800BF834 24080001 */  addiu      $t0, $zero, 0x1
    /* CE7E8 800BF838 46062181 */  sub.s      $f6, $f4, $f6
    /* CE7EC 800BF83C 44C8F800 */  ctc1       $t0, $31
    /* CE7F0 800BF840 00000000 */  nop
    /* CE7F4 800BF844 460031A4 */  cvt.w.s    $f6, $f6
    /* CE7F8 800BF848 4448F800 */  cfc1       $t0, $31
    /* CE7FC 800BF84C 00000000 */  nop
    /* CE800 800BF850 31080078 */  andi       $t0, $t0, 0x78
    /* CE804 800BF854 15000005 */  bnez       $t0, .L800BF86C_CE81C
    /* CE808 800BF858 00000000 */   nop
    /* CE80C 800BF85C 44083000 */  mfc1       $t0, $f6
    /* CE810 800BF860 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* CE814 800BF864 10000007 */  b          .L800BF884_CE834
    /* CE818 800BF868 01014025 */   or        $t0, $t0, $at
  .L800BF86C_CE81C:
    /* CE81C 800BF86C 10000005 */  b          .L800BF884_CE834
    /* CE820 800BF870 2408FFFF */   addiu     $t0, $zero, -0x1
    /* CE824 800BF874 44083000 */  mfc1       $t0, $f6
  .L800BF878_CE828:
    /* CE828 800BF878 00000000 */  nop
    /* CE82C 800BF87C 0500FFFB */  bltz       $t0, .L800BF86C_CE81C
    /* CE830 800BF880 00000000 */   nop
  .L800BF884_CE834:
    /* CE834 800BF884 44D8F800 */  ctc1       $t8, $31
    /* CE838 800BF888 448A5000 */  mtc1       $t2, $f10
    /* CE83C 800BF88C 44894000 */  mtc1       $t1, $f8
    /* CE840 800BF890 311900FF */  andi       $t9, $t0, 0xFF
    /* CE844 800BF894 03204025 */  or         $t0, $t9, $zero
    /* CE848 800BF898 46805420 */  cvt.s.w    $f16, $f10
    /* CE84C 800BF89C 05210005 */  bgez       $t1, .L800BF8B4_CE864
    /* CE850 800BF8A0 468044A0 */   cvt.s.w   $f18, $f8
    /* CE854 800BF8A4 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* CE858 800BF8A8 44812000 */  mtc1       $at, $f4
    /* CE85C 800BF8AC 00000000 */  nop
    /* CE860 800BF8B0 46049480 */  add.s      $f18, $f18, $f4
  .L800BF8B4_CE864:
    /* CE864 800BF8B4 4612A182 */  mul.s      $f6, $f20, $f18
    /* CE868 800BF8B8 24090001 */  addiu      $t1, $zero, 0x1
    /* CE86C 800BF8BC 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* CE870 800BF8C0 46183283 */  div.s      $f10, $f6, $f24
    /* CE874 800BF8C4 460A8200 */  add.s      $f8, $f16, $f10
    /* CE878 800BF8C8 444BF800 */  cfc1       $t3, $31
    /* CE87C 800BF8CC 44C9F800 */  ctc1       $t1, $31
    /* CE880 800BF8D0 00000000 */  nop
    /* CE884 800BF8D4 46004124 */  cvt.w.s    $f4, $f8
    /* CE888 800BF8D8 4449F800 */  cfc1       $t1, $31
    /* CE88C 800BF8DC 00000000 */  nop
    /* CE890 800BF8E0 31290078 */  andi       $t1, $t1, 0x78
    /* CE894 800BF8E4 51200019 */  beql       $t1, $zero, .L800BF94C_CE8FC
    /* CE898 800BF8E8 44092000 */   mfc1      $t1, $f4
    /* CE89C 800BF8EC 44812000 */  mtc1       $at, $f4
    /* CE8A0 800BF8F0 24090001 */  addiu      $t1, $zero, 0x1
    /* CE8A4 800BF8F4 46044101 */  sub.s      $f4, $f8, $f4
    /* CE8A8 800BF8F8 44C9F800 */  ctc1       $t1, $31
    /* CE8AC 800BF8FC 00000000 */  nop
    /* CE8B0 800BF900 46002124 */  cvt.w.s    $f4, $f4
    /* CE8B4 800BF904 4449F800 */  cfc1       $t1, $31
    /* CE8B8 800BF908 00000000 */  nop
    /* CE8BC 800BF90C 31290078 */  andi       $t1, $t1, 0x78
    /* CE8C0 800BF910 55200009 */  bnel       $t1, $zero, .L800BF938_CE8E8
    /* CE8C4 800BF914 2409FFFF */   addiu     $t1, $zero, -0x1
    /* CE8C8 800BF918 44092000 */  mfc1       $t1, $f4
    /* CE8CC 800BF91C 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* CE8D0 800BF920 44CBF800 */  ctc1       $t3, $31
    /* CE8D4 800BF924 01214825 */  or         $t1, $t1, $at
    /* CE8D8 800BF928 312C00FF */  andi       $t4, $t1, 0xFF
    /* CE8DC 800BF92C 100000A6 */  b          .L800BFBC8_CEB78
    /* CE8E0 800BF930 01804825 */   or        $t1, $t4, $zero
  .L800BF934_CE8E4:
    /* CE8E4 800BF934 2409FFFF */  addiu      $t1, $zero, -0x1
  .L800BF938_CE8E8:
    /* CE8E8 800BF938 312C00FF */  andi       $t4, $t1, 0xFF
    /* CE8EC 800BF93C 44CBF800 */  ctc1       $t3, $31
    /* CE8F0 800BF940 100000A1 */  b          .L800BFBC8_CEB78
    /* CE8F4 800BF944 01804825 */   or        $t1, $t4, $zero
    /* CE8F8 800BF948 44092000 */  mfc1       $t1, $f4
  .L800BF94C_CE8FC:
    /* CE8FC 800BF94C 00000000 */  nop
    /* CE900 800BF950 0520FFF8 */  bltz       $t1, .L800BF934_CE8E4
    /* CE904 800BF954 312C00FF */   andi      $t4, $t1, 0xFF
    /* CE908 800BF958 44CBF800 */  ctc1       $t3, $31
    /* CE90C 800BF95C 1000009A */  b          .L800BFBC8_CEB78
    /* CE910 800BF960 01804825 */   or        $t1, $t4, $zero
  .L800BF964_CE914:
    /* CE914 800BF964 93A3004B */  lbu        $v1, 0x4B($sp)
    /* CE918 800BF968 93A8004A */  lbu        $t0, 0x4A($sp)
    /* CE91C 800BF96C 93A90049 */  lbu        $t1, 0x49($sp)
    /* CE920 800BF970 00036883 */  sra        $t5, $v1, 2
    /* CE924 800BF974 448D9000 */  mtc1       $t5, $f18
    /* CE928 800BF978 44838000 */  mtc1       $v1, $f16
    /* CE92C 800BF97C 0008C083 */  sra        $t8, $t0, 2
    /* CE930 800BF980 468091A1 */  cvt.d.w    $f6, $f18
    /* CE934 800BF984 04610005 */  bgez       $v1, .L800BF99C_CE94C
    /* CE938 800BF988 468082A0 */   cvt.s.w   $f10, $f16
    /* CE93C 800BF98C 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* CE940 800BF990 44814000 */  mtc1       $at, $f8
    /* CE944 800BF994 00000000 */  nop
    /* CE948 800BF998 46085280 */  add.s      $f10, $f10, $f8
  .L800BF99C_CE94C:
    /* CE94C 800BF99C 460AA102 */  mul.s      $f4, $f20, $f10
    /* CE950 800BF9A0 24030001 */  addiu      $v1, $zero, 0x1
    /* CE954 800BF9A4 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* CE958 800BF9A8 00095883 */  sra        $t3, $t1, 2
    /* CE95C 800BF9AC 460024A1 */  cvt.d.s    $f18, $f4
    /* CE960 800BF9B0 46369402 */  mul.d      $f16, $f18, $f22
    /* CE964 800BF9B4 46303200 */  add.d      $f8, $f6, $f16
    /* CE968 800BF9B8 444EF800 */  cfc1       $t6, $31
    /* CE96C 800BF9BC 44C3F800 */  ctc1       $v1, $31
    /* CE970 800BF9C0 00000000 */  nop
    /* CE974 800BF9C4 462042A4 */  cvt.w.d    $f10, $f8
    /* CE978 800BF9C8 4443F800 */  cfc1       $v1, $31
    /* CE97C 800BF9CC 00000000 */  nop
    /* CE980 800BF9D0 30630078 */  andi       $v1, $v1, 0x78
    /* CE984 800BF9D4 50600014 */  beql       $v1, $zero, .L800BFA28_CE9D8
    /* CE988 800BF9D8 44035000 */   mfc1      $v1, $f10
    /* CE98C 800BF9DC 44815800 */  mtc1       $at, $f11
    /* CE990 800BF9E0 44805000 */  mtc1       $zero, $f10
    /* CE994 800BF9E4 24030001 */  addiu      $v1, $zero, 0x1
    /* CE998 800BF9E8 462A4281 */  sub.d      $f10, $f8, $f10
    /* CE99C 800BF9EC 44C3F800 */  ctc1       $v1, $31
    /* CE9A0 800BF9F0 00000000 */  nop
    /* CE9A4 800BF9F4 462052A4 */  cvt.w.d    $f10, $f10
    /* CE9A8 800BF9F8 4443F800 */  cfc1       $v1, $31
    /* CE9AC 800BF9FC 00000000 */  nop
    /* CE9B0 800BFA00 30630078 */  andi       $v1, $v1, 0x78
    /* CE9B4 800BFA04 14600005 */  bnez       $v1, .L800BFA1C_CE9CC
    /* CE9B8 800BFA08 00000000 */   nop
    /* CE9BC 800BFA0C 44035000 */  mfc1       $v1, $f10
    /* CE9C0 800BFA10 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* CE9C4 800BFA14 10000007 */  b          .L800BFA34_CE9E4
    /* CE9C8 800BFA18 00611825 */   or        $v1, $v1, $at
  .L800BFA1C_CE9CC:
    /* CE9CC 800BFA1C 10000005 */  b          .L800BFA34_CE9E4
    /* CE9D0 800BFA20 2403FFFF */   addiu     $v1, $zero, -0x1
    /* CE9D4 800BFA24 44035000 */  mfc1       $v1, $f10
  .L800BFA28_CE9D8:
    /* CE9D8 800BFA28 00000000 */  nop
    /* CE9DC 800BFA2C 0460FFFB */  bltz       $v1, .L800BFA1C_CE9CC
    /* CE9E0 800BFA30 00000000 */   nop
  .L800BFA34_CE9E4:
    /* CE9E4 800BFA34 44CEF800 */  ctc1       $t6, $31
    /* CE9E8 800BFA38 44982000 */  mtc1       $t8, $f4
    /* CE9EC 800BFA3C 44883000 */  mtc1       $t0, $f6
    /* CE9F0 800BFA40 306F00FF */  andi       $t7, $v1, 0xFF
    /* CE9F4 800BFA44 01E01825 */  or         $v1, $t7, $zero
    /* CE9F8 800BFA48 468024A1 */  cvt.d.w    $f18, $f4
    /* CE9FC 800BFA4C 05010005 */  bgez       $t0, .L800BFA64_CEA14
    /* CEA00 800BFA50 46803420 */   cvt.s.w   $f16, $f6
    /* CEA04 800BFA54 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* CEA08 800BFA58 44814000 */  mtc1       $at, $f8
    /* CEA0C 800BFA5C 00000000 */  nop
    /* CEA10 800BFA60 46088400 */  add.s      $f16, $f16, $f8
  .L800BFA64_CEA14:
    /* CEA14 800BFA64 4610A282 */  mul.s      $f10, $f20, $f16
    /* CEA18 800BFA68 24080001 */  addiu      $t0, $zero, 0x1
    /* CEA1C 800BFA6C 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* CEA20 800BFA70 46005121 */  cvt.d.s    $f4, $f10
    /* CEA24 800BFA74 46362182 */  mul.d      $f6, $f4, $f22
    /* CEA28 800BFA78 46269200 */  add.d      $f8, $f18, $f6
    /* CEA2C 800BFA7C 4459F800 */  cfc1       $t9, $31
    /* CEA30 800BFA80 44C8F800 */  ctc1       $t0, $31
    /* CEA34 800BFA84 00000000 */  nop
    /* CEA38 800BFA88 46204424 */  cvt.w.d    $f16, $f8
    /* CEA3C 800BFA8C 4448F800 */  cfc1       $t0, $31
    /* CEA40 800BFA90 00000000 */  nop
    /* CEA44 800BFA94 31080078 */  andi       $t0, $t0, 0x78
    /* CEA48 800BFA98 51000014 */  beql       $t0, $zero, .L800BFAEC_CEA9C
    /* CEA4C 800BFA9C 44088000 */   mfc1      $t0, $f16
    /* CEA50 800BFAA0 44818800 */  mtc1       $at, $f17
    /* CEA54 800BFAA4 44808000 */  mtc1       $zero, $f16
    /* CEA58 800BFAA8 24080001 */  addiu      $t0, $zero, 0x1
    /* CEA5C 800BFAAC 46304401 */  sub.d      $f16, $f8, $f16
    /* CEA60 800BFAB0 44C8F800 */  ctc1       $t0, $31
    /* CEA64 800BFAB4 00000000 */  nop
    /* CEA68 800BFAB8 46208424 */  cvt.w.d    $f16, $f16
    /* CEA6C 800BFABC 4448F800 */  cfc1       $t0, $31
    /* CEA70 800BFAC0 00000000 */  nop
    /* CEA74 800BFAC4 31080078 */  andi       $t0, $t0, 0x78
    /* CEA78 800BFAC8 15000005 */  bnez       $t0, .L800BFAE0_CEA90
    /* CEA7C 800BFACC 00000000 */   nop
    /* CEA80 800BFAD0 44088000 */  mfc1       $t0, $f16
    /* CEA84 800BFAD4 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* CEA88 800BFAD8 10000007 */  b          .L800BFAF8_CEAA8
    /* CEA8C 800BFADC 01014025 */   or        $t0, $t0, $at
  .L800BFAE0_CEA90:
    /* CEA90 800BFAE0 10000005 */  b          .L800BFAF8_CEAA8
    /* CEA94 800BFAE4 2408FFFF */   addiu     $t0, $zero, -0x1
    /* CEA98 800BFAE8 44088000 */  mfc1       $t0, $f16
  .L800BFAEC_CEA9C:
    /* CEA9C 800BFAEC 00000000 */  nop
    /* CEAA0 800BFAF0 0500FFFB */  bltz       $t0, .L800BFAE0_CEA90
    /* CEAA4 800BFAF4 00000000 */   nop
  .L800BFAF8_CEAA8:
    /* CEAA8 800BFAF8 44D9F800 */  ctc1       $t9, $31
    /* CEAAC 800BFAFC 448B5000 */  mtc1       $t3, $f10
    /* CEAB0 800BFB00 44899000 */  mtc1       $t1, $f18
    /* CEAB4 800BFB04 310A00FF */  andi       $t2, $t0, 0xFF
    /* CEAB8 800BFB08 01404025 */  or         $t0, $t2, $zero
    /* CEABC 800BFB0C 46805121 */  cvt.d.w    $f4, $f10
    /* CEAC0 800BFB10 05210005 */  bgez       $t1, .L800BFB28_CEAD8
    /* CEAC4 800BFB14 468091A0 */   cvt.s.w   $f6, $f18
    /* CEAC8 800BFB18 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* CEACC 800BFB1C 44814000 */  mtc1       $at, $f8
    /* CEAD0 800BFB20 00000000 */  nop
    /* CEAD4 800BFB24 46083180 */  add.s      $f6, $f6, $f8
  .L800BFB28_CEAD8:
    /* CEAD8 800BFB28 4606A402 */  mul.s      $f16, $f20, $f6
    /* CEADC 800BFB2C 24090001 */  addiu      $t1, $zero, 0x1
    /* CEAE0 800BFB30 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* CEAE4 800BFB34 460082A1 */  cvt.d.s    $f10, $f16
    /* CEAE8 800BFB38 46365482 */  mul.d      $f18, $f10, $f22
    /* CEAEC 800BFB3C 46322200 */  add.d      $f8, $f4, $f18
    /* CEAF0 800BFB40 444CF800 */  cfc1       $t4, $31
    /* CEAF4 800BFB44 44C9F800 */  ctc1       $t1, $31
    /* CEAF8 800BFB48 00000000 */  nop
    /* CEAFC 800BFB4C 462041A4 */  cvt.w.d    $f6, $f8
    /* CEB00 800BFB50 4449F800 */  cfc1       $t1, $31
    /* CEB04 800BFB54 00000000 */  nop
    /* CEB08 800BFB58 31290078 */  andi       $t1, $t1, 0x78
    /* CEB0C 800BFB5C 51200014 */  beql       $t1, $zero, .L800BFBB0_CEB60
    /* CEB10 800BFB60 44093000 */   mfc1      $t1, $f6
    /* CEB14 800BFB64 44813800 */  mtc1       $at, $f7
    /* CEB18 800BFB68 44803000 */  mtc1       $zero, $f6
    /* CEB1C 800BFB6C 24090001 */  addiu      $t1, $zero, 0x1
    /* CEB20 800BFB70 46264181 */  sub.d      $f6, $f8, $f6
    /* CEB24 800BFB74 44C9F800 */  ctc1       $t1, $31
    /* CEB28 800BFB78 00000000 */  nop
    /* CEB2C 800BFB7C 462031A4 */  cvt.w.d    $f6, $f6
    /* CEB30 800BFB80 4449F800 */  cfc1       $t1, $31
    /* CEB34 800BFB84 00000000 */  nop
    /* CEB38 800BFB88 31290078 */  andi       $t1, $t1, 0x78
    /* CEB3C 800BFB8C 15200005 */  bnez       $t1, .L800BFBA4_CEB54
    /* CEB40 800BFB90 00000000 */   nop
    /* CEB44 800BFB94 44093000 */  mfc1       $t1, $f6
    /* CEB48 800BFB98 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* CEB4C 800BFB9C 10000007 */  b          .L800BFBBC_CEB6C
    /* CEB50 800BFBA0 01214825 */   or        $t1, $t1, $at
  .L800BFBA4_CEB54:
    /* CEB54 800BFBA4 10000005 */  b          .L800BFBBC_CEB6C
    /* CEB58 800BFBA8 2409FFFF */   addiu     $t1, $zero, -0x1
    /* CEB5C 800BFBAC 44093000 */  mfc1       $t1, $f6
  .L800BFBB0_CEB60:
    /* CEB60 800BFBB0 00000000 */  nop
    /* CEB64 800BFBB4 0520FFFB */  bltz       $t1, .L800BFBA4_CEB54
    /* CEB68 800BFBB8 00000000 */   nop
  .L800BFBBC_CEB6C:
    /* CEB6C 800BFBBC 44CCF800 */  ctc1       $t4, $31
    /* CEB70 800BFBC0 312D00FF */  andi       $t5, $t1, 0xFF
    /* CEB74 800BFBC4 01A04825 */  or         $t1, $t5, $zero
  .L800BFBC8_CEB78:
    /* CEB78 800BFBC8 00037AC0 */  sll        $t7, $v1, 11
    /* CEB7C 800BFBCC 0008C180 */  sll        $t8, $t0, 6
    /* CEB80 800BFBD0 01F85021 */  addu       $t2, $t7, $t8
    /* CEB84 800BFBD4 00095840 */  sll        $t3, $t1, 1
    /* CEB88 800BFBD8 014B8021 */  addu       $s0, $t2, $t3
    /* CEB8C 800BFBDC 320CFFFF */  andi       $t4, $s0, 0xFFFF
    /* CEB90 800BFBE0 01808025 */  or         $s0, $t4, $zero
    /* CEB94 800BFBE4 908448CF */  lbu        $a0, %lo(D_802D48CF)($a0)
    /* CEB98 800BFBE8 27A70049 */  addiu      $a3, $sp, 0x49
    /* CEB9C 800BFBEC A3A3004B */  sb         $v1, 0x4B($sp)
    /* CEBA0 800BFBF0 A3A8004A */  sb         $t0, 0x4A($sp)
    /* CEBA4 800BFBF4 0C00128E */  jal        func_80004A38_5638
    /* CEBA8 800BFBF8 A3A90049 */   sb        $t1, 0x49($sp)
    /* CEBAC 800BFBFC 8E2D0000 */  lw         $t5, 0x0($s1)
    /* CEBB0 800BFC00 93A3004B */  lbu        $v1, 0x4B($sp)
    /* CEBB4 800BFC04 93A8004A */  lbu        $t0, 0x4A($sp)
    /* CEBB8 800BFC08 11A0009A */  beqz       $t5, .L800BFE74_CEE24
    /* CEBBC 800BFC0C 3204FFFF */   andi      $a0, $s0, 0xFFFF
    /* CEBC0 800BFC10 93A3004B */  lbu        $v1, 0x4B($sp)
    /* CEBC4 800BFC14 93A8004A */  lbu        $t0, 0x4A($sp)
    /* CEBC8 800BFC18 93A90049 */  lbu        $t1, 0x49($sp)
    /* CEBCC 800BFC1C 00037043 */  sra        $t6, $v1, 1
    /* CEBD0 800BFC20 448E8000 */  mtc1       $t6, $f16
    /* CEBD4 800BFC24 44832000 */  mtc1       $v1, $f4
    /* CEBD8 800BFC28 0008C843 */  sra        $t9, $t0, 1
    /* CEBDC 800BFC2C 468082A0 */  cvt.s.w    $f10, $f16
    /* CEBE0 800BFC30 04610005 */  bgez       $v1, .L800BFC48_CEBF8
    /* CEBE4 800BFC34 468024A0 */   cvt.s.w   $f18, $f4
    /* CEBE8 800BFC38 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* CEBEC 800BFC3C 44814000 */  mtc1       $at, $f8
    /* CEBF0 800BFC40 00000000 */  nop
    /* CEBF4 800BFC44 46089480 */  add.s      $f18, $f18, $f8
  .L800BFC48_CEBF8:
    /* CEBF8 800BFC48 4612A182 */  mul.s      $f6, $f20, $f18
    /* CEBFC 800BFC4C 24030001 */  addiu      $v1, $zero, 0x1
    /* CEC00 800BFC50 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* CEC04 800BFC54 00096043 */  sra        $t4, $t1, 1
    /* CEC08 800BFC58 46183403 */  div.s      $f16, $f6, $f24
    /* CEC0C 800BFC5C 46105100 */  add.s      $f4, $f10, $f16
    /* CEC10 800BFC60 444FF800 */  cfc1       $t7, $31
    /* CEC14 800BFC64 44C3F800 */  ctc1       $v1, $31
    /* CEC18 800BFC68 00000000 */  nop
    /* CEC1C 800BFC6C 46002224 */  cvt.w.s    $f8, $f4
    /* CEC20 800BFC70 4443F800 */  cfc1       $v1, $31
    /* CEC24 800BFC74 00000000 */  nop
    /* CEC28 800BFC78 30630078 */  andi       $v1, $v1, 0x78
    /* CEC2C 800BFC7C 50600013 */  beql       $v1, $zero, .L800BFCCC_CEC7C
    /* CEC30 800BFC80 44034000 */   mfc1      $v1, $f8
    /* CEC34 800BFC84 44814000 */  mtc1       $at, $f8
    /* CEC38 800BFC88 24030001 */  addiu      $v1, $zero, 0x1
    /* CEC3C 800BFC8C 46082201 */  sub.s      $f8, $f4, $f8
    /* CEC40 800BFC90 44C3F800 */  ctc1       $v1, $31
    /* CEC44 800BFC94 00000000 */  nop
    /* CEC48 800BFC98 46004224 */  cvt.w.s    $f8, $f8
    /* CEC4C 800BFC9C 4443F800 */  cfc1       $v1, $31
    /* CEC50 800BFCA0 00000000 */  nop
    /* CEC54 800BFCA4 30630078 */  andi       $v1, $v1, 0x78
    /* CEC58 800BFCA8 14600005 */  bnez       $v1, .L800BFCC0_CEC70
    /* CEC5C 800BFCAC 00000000 */   nop
    /* CEC60 800BFCB0 44034000 */  mfc1       $v1, $f8
    /* CEC64 800BFCB4 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* CEC68 800BFCB8 10000007 */  b          .L800BFCD8_CEC88
    /* CEC6C 800BFCBC 00611825 */   or        $v1, $v1, $at
  .L800BFCC0_CEC70:
    /* CEC70 800BFCC0 10000005 */  b          .L800BFCD8_CEC88
    /* CEC74 800BFCC4 2403FFFF */   addiu     $v1, $zero, -0x1
    /* CEC78 800BFCC8 44034000 */  mfc1       $v1, $f8
  .L800BFCCC_CEC7C:
    /* CEC7C 800BFCCC 00000000 */  nop
    /* CEC80 800BFCD0 0460FFFB */  bltz       $v1, .L800BFCC0_CEC70
    /* CEC84 800BFCD4 00000000 */   nop
  .L800BFCD8_CEC88:
    /* CEC88 800BFCD8 44CFF800 */  ctc1       $t7, $31
    /* CEC8C 800BFCDC 44999000 */  mtc1       $t9, $f18
    /* CEC90 800BFCE0 44885000 */  mtc1       $t0, $f10
    /* CEC94 800BFCE4 307800FF */  andi       $t8, $v1, 0xFF
    /* CEC98 800BFCE8 03001825 */  or         $v1, $t8, $zero
    /* CEC9C 800BFCEC 468091A0 */  cvt.s.w    $f6, $f18
    /* CECA0 800BFCF0 05010005 */  bgez       $t0, .L800BFD08_CECB8
    /* CECA4 800BFCF4 46805420 */   cvt.s.w   $f16, $f10
    /* CECA8 800BFCF8 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* CECAC 800BFCFC 44812000 */  mtc1       $at, $f4
    /* CECB0 800BFD00 00000000 */  nop
    /* CECB4 800BFD04 46048400 */  add.s      $f16, $f16, $f4
  .L800BFD08_CECB8:
    /* CECB8 800BFD08 4610A202 */  mul.s      $f8, $f20, $f16
    /* CECBC 800BFD0C 24080001 */  addiu      $t0, $zero, 0x1
    /* CECC0 800BFD10 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* CECC4 800BFD14 46184483 */  div.s      $f18, $f8, $f24
    /* CECC8 800BFD18 46123280 */  add.s      $f10, $f6, $f18
    /* CECCC 800BFD1C 444AF800 */  cfc1       $t2, $31
    /* CECD0 800BFD20 44C8F800 */  ctc1       $t0, $31
    /* CECD4 800BFD24 00000000 */  nop
    /* CECD8 800BFD28 46005124 */  cvt.w.s    $f4, $f10
    /* CECDC 800BFD2C 4448F800 */  cfc1       $t0, $31
    /* CECE0 800BFD30 00000000 */  nop
    /* CECE4 800BFD34 31080078 */  andi       $t0, $t0, 0x78
    /* CECE8 800BFD38 51000013 */  beql       $t0, $zero, .L800BFD88_CED38
    /* CECEC 800BFD3C 44082000 */   mfc1      $t0, $f4
    /* CECF0 800BFD40 44812000 */  mtc1       $at, $f4
    /* CECF4 800BFD44 24080001 */  addiu      $t0, $zero, 0x1
    /* CECF8 800BFD48 46045101 */  sub.s      $f4, $f10, $f4
    /* CECFC 800BFD4C 44C8F800 */  ctc1       $t0, $31
    /* CED00 800BFD50 00000000 */  nop
    /* CED04 800BFD54 46002124 */  cvt.w.s    $f4, $f4
    /* CED08 800BFD58 4448F800 */  cfc1       $t0, $31
    /* CED0C 800BFD5C 00000000 */  nop
    /* CED10 800BFD60 31080078 */  andi       $t0, $t0, 0x78
    /* CED14 800BFD64 15000005 */  bnez       $t0, .L800BFD7C_CED2C
    /* CED18 800BFD68 00000000 */   nop
    /* CED1C 800BFD6C 44082000 */  mfc1       $t0, $f4
    /* CED20 800BFD70 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* CED24 800BFD74 10000007 */  b          .L800BFD94_CED44
    /* CED28 800BFD78 01014025 */   or        $t0, $t0, $at
  .L800BFD7C_CED2C:
    /* CED2C 800BFD7C 10000005 */  b          .L800BFD94_CED44
    /* CED30 800BFD80 2408FFFF */   addiu     $t0, $zero, -0x1
    /* CED34 800BFD84 44082000 */  mfc1       $t0, $f4
  .L800BFD88_CED38:
    /* CED38 800BFD88 00000000 */  nop
    /* CED3C 800BFD8C 0500FFFB */  bltz       $t0, .L800BFD7C_CED2C
    /* CED40 800BFD90 00000000 */   nop
  .L800BFD94_CED44:
    /* CED44 800BFD94 44CAF800 */  ctc1       $t2, $31
    /* CED48 800BFD98 448C8000 */  mtc1       $t4, $f16
    /* CED4C 800BFD9C 44893000 */  mtc1       $t1, $f6
    /* CED50 800BFDA0 310B00FF */  andi       $t3, $t0, 0xFF
    /* CED54 800BFDA4 01604025 */  or         $t0, $t3, $zero
    /* CED58 800BFDA8 46808220 */  cvt.s.w    $f8, $f16
    /* CED5C 800BFDAC 05210005 */  bgez       $t1, .L800BFDC4_CED74
    /* CED60 800BFDB0 468034A0 */   cvt.s.w   $f18, $f6
    /* CED64 800BFDB4 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* CED68 800BFDB8 44815000 */  mtc1       $at, $f10
    /* CED6C 800BFDBC 00000000 */  nop
    /* CED70 800BFDC0 460A9480 */  add.s      $f18, $f18, $f10
  .L800BFDC4_CED74:
    /* CED74 800BFDC4 4612A102 */  mul.s      $f4, $f20, $f18
    /* CED78 800BFDC8 24090001 */  addiu      $t1, $zero, 0x1
    /* CED7C 800BFDCC 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* CED80 800BFDD0 46182403 */  div.s      $f16, $f4, $f24
    /* CED84 800BFDD4 46104180 */  add.s      $f6, $f8, $f16
    /* CED88 800BFDD8 444DF800 */  cfc1       $t5, $31
    /* CED8C 800BFDDC 44C9F800 */  ctc1       $t1, $31
    /* CED90 800BFDE0 00000000 */  nop
    /* CED94 800BFDE4 460032A4 */  cvt.w.s    $f10, $f6
    /* CED98 800BFDE8 4449F800 */  cfc1       $t1, $31
    /* CED9C 800BFDEC 00000000 */  nop
    /* CEDA0 800BFDF0 31290078 */  andi       $t1, $t1, 0x78
    /* CEDA4 800BFDF4 51200019 */  beql       $t1, $zero, .L800BFE5C_CEE0C
    /* CEDA8 800BFDF8 44095000 */   mfc1      $t1, $f10
    /* CEDAC 800BFDFC 44815000 */  mtc1       $at, $f10
    /* CEDB0 800BFE00 24090001 */  addiu      $t1, $zero, 0x1
    /* CEDB4 800BFE04 460A3281 */  sub.s      $f10, $f6, $f10
    /* CEDB8 800BFE08 44C9F800 */  ctc1       $t1, $31
    /* CEDBC 800BFE0C 00000000 */  nop
    /* CEDC0 800BFE10 460052A4 */  cvt.w.s    $f10, $f10
    /* CEDC4 800BFE14 4449F800 */  cfc1       $t1, $31
    /* CEDC8 800BFE18 00000000 */  nop
    /* CEDCC 800BFE1C 31290078 */  andi       $t1, $t1, 0x78
    /* CEDD0 800BFE20 55200009 */  bnel       $t1, $zero, .L800BFE48_CEDF8
    /* CEDD4 800BFE24 2409FFFF */   addiu     $t1, $zero, -0x1
    /* CEDD8 800BFE28 44095000 */  mfc1       $t1, $f10
    /* CEDDC 800BFE2C 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* CEDE0 800BFE30 44CDF800 */  ctc1       $t5, $31
    /* CEDE4 800BFE34 01214825 */  or         $t1, $t1, $at
    /* CEDE8 800BFE38 312E00FF */  andi       $t6, $t1, 0xFF
    /* CEDEC 800BFE3C 100000A4 */  b          .L800C00D0_CF080
    /* CEDF0 800BFE40 01C04825 */   or        $t1, $t6, $zero
  .L800BFE44_CEDF4:
    /* CEDF4 800BFE44 2409FFFF */  addiu      $t1, $zero, -0x1
  .L800BFE48_CEDF8:
    /* CEDF8 800BFE48 312E00FF */  andi       $t6, $t1, 0xFF
    /* CEDFC 800BFE4C 44CDF800 */  ctc1       $t5, $31
    /* CEE00 800BFE50 1000009F */  b          .L800C00D0_CF080
    /* CEE04 800BFE54 01C04825 */   or        $t1, $t6, $zero
    /* CEE08 800BFE58 44095000 */  mfc1       $t1, $f10
  .L800BFE5C_CEE0C:
    /* CEE0C 800BFE5C 00000000 */  nop
    /* CEE10 800BFE60 0520FFF8 */  bltz       $t1, .L800BFE44_CEDF4
    /* CEE14 800BFE64 312E00FF */   andi      $t6, $t1, 0xFF
    /* CEE18 800BFE68 44CDF800 */  ctc1       $t5, $31
    /* CEE1C 800BFE6C 10000098 */  b          .L800C00D0_CF080
    /* CEE20 800BFE70 01C04825 */   or        $t1, $t6, $zero
  .L800BFE74_CEE24:
    /* CEE24 800BFE74 00037883 */  sra        $t7, $v1, 2
    /* CEE28 800BFE78 448F9000 */  mtc1       $t7, $f18
    /* CEE2C 800BFE7C 44834000 */  mtc1       $v1, $f8
    /* CEE30 800BFE80 93A90049 */  lbu        $t1, 0x49($sp)
    /* CEE34 800BFE84 46809121 */  cvt.d.w    $f4, $f18
    /* CEE38 800BFE88 04610005 */  bgez       $v1, .L800BFEA0_CEE50
    /* CEE3C 800BFE8C 46804420 */   cvt.s.w   $f16, $f8
    /* CEE40 800BFE90 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* CEE44 800BFE94 44813000 */  mtc1       $at, $f6
    /* CEE48 800BFE98 00000000 */  nop
    /* CEE4C 800BFE9C 46068400 */  add.s      $f16, $f16, $f6
  .L800BFEA0_CEE50:
    /* CEE50 800BFEA0 4610A282 */  mul.s      $f10, $f20, $f16
    /* CEE54 800BFEA4 24030001 */  addiu      $v1, $zero, 0x1
    /* CEE58 800BFEA8 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* CEE5C 800BFEAC 00085083 */  sra        $t2, $t0, 2
    /* CEE60 800BFEB0 00096883 */  sra        $t5, $t1, 2
    /* CEE64 800BFEB4 460054A1 */  cvt.d.s    $f18, $f10
    /* CEE68 800BFEB8 46369202 */  mul.d      $f8, $f18, $f22
    /* CEE6C 800BFEBC 46282180 */  add.d      $f6, $f4, $f8
    /* CEE70 800BFEC0 4458F800 */  cfc1       $t8, $31
    /* CEE74 800BFEC4 44C3F800 */  ctc1       $v1, $31
    /* CEE78 800BFEC8 00000000 */  nop
    /* CEE7C 800BFECC 46203424 */  cvt.w.d    $f16, $f6
    /* CEE80 800BFED0 4443F800 */  cfc1       $v1, $31
    /* CEE84 800BFED4 00000000 */  nop
    /* CEE88 800BFED8 30630078 */  andi       $v1, $v1, 0x78
    /* CEE8C 800BFEDC 50600014 */  beql       $v1, $zero, .L800BFF30_CEEE0
    /* CEE90 800BFEE0 44038000 */   mfc1      $v1, $f16
    /* CEE94 800BFEE4 44818800 */  mtc1       $at, $f17
    /* CEE98 800BFEE8 44808000 */  mtc1       $zero, $f16
    /* CEE9C 800BFEEC 24030001 */  addiu      $v1, $zero, 0x1
    /* CEEA0 800BFEF0 46303401 */  sub.d      $f16, $f6, $f16
    /* CEEA4 800BFEF4 44C3F800 */  ctc1       $v1, $31
    /* CEEA8 800BFEF8 00000000 */  nop
    /* CEEAC 800BFEFC 46208424 */  cvt.w.d    $f16, $f16
    /* CEEB0 800BFF00 4443F800 */  cfc1       $v1, $31
    /* CEEB4 800BFF04 00000000 */  nop
    /* CEEB8 800BFF08 30630078 */  andi       $v1, $v1, 0x78
    /* CEEBC 800BFF0C 14600005 */  bnez       $v1, .L800BFF24_CEED4
    /* CEEC0 800BFF10 00000000 */   nop
    /* CEEC4 800BFF14 44038000 */  mfc1       $v1, $f16
    /* CEEC8 800BFF18 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* CEECC 800BFF1C 10000007 */  b          .L800BFF3C_CEEEC
    /* CEED0 800BFF20 00611825 */   or        $v1, $v1, $at
  .L800BFF24_CEED4:
    /* CEED4 800BFF24 10000005 */  b          .L800BFF3C_CEEEC
    /* CEED8 800BFF28 2403FFFF */   addiu     $v1, $zero, -0x1
    /* CEEDC 800BFF2C 44038000 */  mfc1       $v1, $f16
  .L800BFF30_CEEE0:
    /* CEEE0 800BFF30 00000000 */  nop
    /* CEEE4 800BFF34 0460FFFB */  bltz       $v1, .L800BFF24_CEED4
    /* CEEE8 800BFF38 00000000 */   nop
  .L800BFF3C_CEEEC:
    /* CEEEC 800BFF3C 44D8F800 */  ctc1       $t8, $31
    /* CEEF0 800BFF40 448A5000 */  mtc1       $t2, $f10
    /* CEEF4 800BFF44 44882000 */  mtc1       $t0, $f4
    /* CEEF8 800BFF48 307900FF */  andi       $t9, $v1, 0xFF
    /* CEEFC 800BFF4C 03201825 */  or         $v1, $t9, $zero
    /* CEF00 800BFF50 468054A1 */  cvt.d.w    $f18, $f10
    /* CEF04 800BFF54 05010005 */  bgez       $t0, .L800BFF6C_CEF1C
    /* CEF08 800BFF58 46802220 */   cvt.s.w   $f8, $f4
    /* CEF0C 800BFF5C 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* CEF10 800BFF60 44813000 */  mtc1       $at, $f6
    /* CEF14 800BFF64 00000000 */  nop
    /* CEF18 800BFF68 46064200 */  add.s      $f8, $f8, $f6
  .L800BFF6C_CEF1C:
    /* CEF1C 800BFF6C 4608A402 */  mul.s      $f16, $f20, $f8
    /* CEF20 800BFF70 24080001 */  addiu      $t0, $zero, 0x1
    /* CEF24 800BFF74 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* CEF28 800BFF78 460082A1 */  cvt.d.s    $f10, $f16
    /* CEF2C 800BFF7C 46365102 */  mul.d      $f4, $f10, $f22
    /* CEF30 800BFF80 46249180 */  add.d      $f6, $f18, $f4
    /* CEF34 800BFF84 444BF800 */  cfc1       $t3, $31
    /* CEF38 800BFF88 44C8F800 */  ctc1       $t0, $31
    /* CEF3C 800BFF8C 00000000 */  nop
    /* CEF40 800BFF90 46203224 */  cvt.w.d    $f8, $f6
    /* CEF44 800BFF94 4448F800 */  cfc1       $t0, $31
    /* CEF48 800BFF98 00000000 */  nop
    /* CEF4C 800BFF9C 31080078 */  andi       $t0, $t0, 0x78
    /* CEF50 800BFFA0 51000014 */  beql       $t0, $zero, .L800BFFF4_CEFA4
    /* CEF54 800BFFA4 44084000 */   mfc1      $t0, $f8
    /* CEF58 800BFFA8 44814800 */  mtc1       $at, $f9
    /* CEF5C 800BFFAC 44804000 */  mtc1       $zero, $f8
    /* CEF60 800BFFB0 24080001 */  addiu      $t0, $zero, 0x1
    /* CEF64 800BFFB4 46283201 */  sub.d      $f8, $f6, $f8
    /* CEF68 800BFFB8 44C8F800 */  ctc1       $t0, $31
    /* CEF6C 800BFFBC 00000000 */  nop
    /* CEF70 800BFFC0 46204224 */  cvt.w.d    $f8, $f8
    /* CEF74 800BFFC4 4448F800 */  cfc1       $t0, $31
    /* CEF78 800BFFC8 00000000 */  nop
    /* CEF7C 800BFFCC 31080078 */  andi       $t0, $t0, 0x78
    /* CEF80 800BFFD0 15000005 */  bnez       $t0, .L800BFFE8_CEF98
    /* CEF84 800BFFD4 00000000 */   nop
    /* CEF88 800BFFD8 44084000 */  mfc1       $t0, $f8
    /* CEF8C 800BFFDC 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* CEF90 800BFFE0 10000007 */  b          .L800C0000_CEFB0
    /* CEF94 800BFFE4 01014025 */   or        $t0, $t0, $at
  .L800BFFE8_CEF98:
    /* CEF98 800BFFE8 10000005 */  b          .L800C0000_CEFB0
    /* CEF9C 800BFFEC 2408FFFF */   addiu     $t0, $zero, -0x1
    /* CEFA0 800BFFF0 44084000 */  mfc1       $t0, $f8
  .L800BFFF4_CEFA4:
    /* CEFA4 800BFFF4 00000000 */  nop
    /* CEFA8 800BFFF8 0500FFFB */  bltz       $t0, .L800BFFE8_CEF98
    /* CEFAC 800BFFFC 00000000 */   nop
  .L800C0000_CEFB0:
    /* CEFB0 800C0000 44CBF800 */  ctc1       $t3, $31
    /* CEFB4 800C0004 448D8000 */  mtc1       $t5, $f16
    /* CEFB8 800C0008 44899000 */  mtc1       $t1, $f18
    /* CEFBC 800C000C 310C00FF */  andi       $t4, $t0, 0xFF
    /* CEFC0 800C0010 01804025 */  or         $t0, $t4, $zero
    /* CEFC4 800C0014 468082A1 */  cvt.d.w    $f10, $f16
    /* CEFC8 800C0018 05210005 */  bgez       $t1, .L800C0030_CEFE0
    /* CEFCC 800C001C 46809120 */   cvt.s.w   $f4, $f18
    /* CEFD0 800C0020 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* CEFD4 800C0024 44813000 */  mtc1       $at, $f6
    /* CEFD8 800C0028 00000000 */  nop
    /* CEFDC 800C002C 46062100 */  add.s      $f4, $f4, $f6
  .L800C0030_CEFE0:
    /* CEFE0 800C0030 4604A202 */  mul.s      $f8, $f20, $f4
    /* CEFE4 800C0034 24090001 */  addiu      $t1, $zero, 0x1
    /* CEFE8 800C0038 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* CEFEC 800C003C 46004421 */  cvt.d.s    $f16, $f8
    /* CEFF0 800C0040 46368482 */  mul.d      $f18, $f16, $f22
    /* CEFF4 800C0044 46325180 */  add.d      $f6, $f10, $f18
    /* CEFF8 800C0048 444EF800 */  cfc1       $t6, $31
    /* CEFFC 800C004C 44C9F800 */  ctc1       $t1, $31
    /* CF000 800C0050 00000000 */  nop
    /* CF004 800C0054 46203124 */  cvt.w.d    $f4, $f6
    /* CF008 800C0058 4449F800 */  cfc1       $t1, $31
    /* CF00C 800C005C 00000000 */  nop
    /* CF010 800C0060 31290078 */  andi       $t1, $t1, 0x78
    /* CF014 800C0064 51200014 */  beql       $t1, $zero, .L800C00B8_CF068
    /* CF018 800C0068 44092000 */   mfc1      $t1, $f4
    /* CF01C 800C006C 44812800 */  mtc1       $at, $f5
    /* CF020 800C0070 44802000 */  mtc1       $zero, $f4
    /* CF024 800C0074 24090001 */  addiu      $t1, $zero, 0x1
    /* CF028 800C0078 46243101 */  sub.d      $f4, $f6, $f4
    /* CF02C 800C007C 44C9F800 */  ctc1       $t1, $31
    /* CF030 800C0080 00000000 */  nop
    /* CF034 800C0084 46202124 */  cvt.w.d    $f4, $f4
    /* CF038 800C0088 4449F800 */  cfc1       $t1, $31
    /* CF03C 800C008C 00000000 */  nop
    /* CF040 800C0090 31290078 */  andi       $t1, $t1, 0x78
    /* CF044 800C0094 15200005 */  bnez       $t1, .L800C00AC_CF05C
    /* CF048 800C0098 00000000 */   nop
    /* CF04C 800C009C 44092000 */  mfc1       $t1, $f4
    /* CF050 800C00A0 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* CF054 800C00A4 10000007 */  b          .L800C00C4_CF074
    /* CF058 800C00A8 01214825 */   or        $t1, $t1, $at
  .L800C00AC_CF05C:
    /* CF05C 800C00AC 10000005 */  b          .L800C00C4_CF074
    /* CF060 800C00B0 2409FFFF */   addiu     $t1, $zero, -0x1
    /* CF064 800C00B4 44092000 */  mfc1       $t1, $f4
  .L800C00B8_CF068:
    /* CF068 800C00B8 00000000 */  nop
    /* CF06C 800C00BC 0520FFFB */  bltz       $t1, .L800C00AC_CF05C
    /* CF070 800C00C0 00000000 */   nop
  .L800C00C4_CF074:
    /* CF074 800C00C4 44CEF800 */  ctc1       $t6, $31
    /* CF078 800C00C8 312F00FF */  andi       $t7, $t1, 0xFF
    /* CF07C 800C00CC 01E04825 */  or         $t1, $t7, $zero
  .L800C00D0_CF080:
    /* CF080 800C00D0 0003CAC0 */  sll        $t9, $v1, 11
    /* CF084 800C00D4 00085180 */  sll        $t2, $t0, 6
    /* CF088 800C00D8 032A6021 */  addu       $t4, $t9, $t2
    /* CF08C 800C00DC 00096840 */  sll        $t5, $t1, 1
    /* CF090 800C00E0 018D2821 */  addu       $a1, $t4, $t5
    /* CF094 800C00E4 30AEFFFF */  andi       $t6, $a1, 0xFFFF
    /* CF098 800C00E8 01C02825 */  or         $a1, $t6, $zero
    /* CF09C 800C00EC A3A3004B */  sb         $v1, 0x4B($sp)
    /* CF0A0 800C00F0 A3A8004A */  sb         $t0, 0x4A($sp)
    /* CF0A4 800C00F4 0C001275 */  jal        func_800049D4_55D4
    /* CF0A8 800C00F8 A3A90049 */   sb        $t1, 0x49($sp)
    /* CF0AC 800C00FC 0C001309 */  jal        leoInitUnit_atten
    /* CF0B0 800C0100 00000000 */   nop
    /* CF0B4 800C0104 8E2F0000 */  lw         $t7, 0x0($s1)
    /* CF0B8 800C0108 3C068020 */  lui        $a2, %hi(D_801FEA30)
    /* CF0BC 800C010C 24C6EA30 */  addiu      $a2, $a2, %lo(D_801FEA30)
    /* CF0C0 800C0110 11E00098 */  beqz       $t7, .L800C0374_CF324
    /* CF0C4 800C0114 3C058015 */   lui       $a1, %hi(D_8014F89D)
    /* CF0C8 800C0118 3C028003 */  lui        $v0, %hi(D_800313E8)
    /* CF0CC 800C011C 904213E8 */  lbu        $v0, %lo(D_800313E8)($v0)
    /* CF0D0 800C0120 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* CF0D4 800C0124 3C038003 */  lui        $v1, %hi(D_800313EC)
    /* CF0D8 800C0128 0002C043 */  sra        $t8, $v0, 1
    /* CF0DC 800C012C 44984000 */  mtc1       $t8, $f8
    /* CF0E0 800C0130 44825000 */  mtc1       $v0, $f10
    /* CF0E4 800C0134 3C048003 */  lui        $a0, %hi(D_800313F0)
    /* CF0E8 800C0138 46804420 */  cvt.s.w    $f16, $f8
    /* CF0EC 800C013C 04410004 */  bgez       $v0, .L800C0150_CF100
    /* CF0F0 800C0140 468054A0 */   cvt.s.w   $f18, $f10
    /* CF0F4 800C0144 44813000 */  mtc1       $at, $f6
    /* CF0F8 800C0148 00000000 */  nop
    /* CF0FC 800C014C 46069480 */  add.s      $f18, $f18, $f6
  .L800C0150_CF100:
    /* CF100 800C0150 46149102 */  mul.s      $f4, $f18, $f20
    /* CF104 800C0154 240A0001 */  addiu      $t2, $zero, 0x1
    /* CF108 800C0158 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* CF10C 800C015C 46182203 */  div.s      $f8, $f4, $f24
    /* CF110 800C0160 46088280 */  add.s      $f10, $f16, $f8
    /* CF114 800C0164 4459F800 */  cfc1       $t9, $31
    /* CF118 800C0168 44CAF800 */  ctc1       $t2, $31
    /* CF11C 800C016C 00000000 */  nop
    /* CF120 800C0170 460051A4 */  cvt.w.s    $f6, $f10
    /* CF124 800C0174 444AF800 */  cfc1       $t2, $31
    /* CF128 800C0178 00000000 */  nop
    /* CF12C 800C017C 314A0078 */  andi       $t2, $t2, 0x78
    /* CF130 800C0180 51400013 */  beql       $t2, $zero, .L800C01D0_CF180
    /* CF134 800C0184 440A3000 */   mfc1      $t2, $f6
    /* CF138 800C0188 44813000 */  mtc1       $at, $f6
    /* CF13C 800C018C 240A0001 */  addiu      $t2, $zero, 0x1
    /* CF140 800C0190 46065181 */  sub.s      $f6, $f10, $f6
    /* CF144 800C0194 44CAF800 */  ctc1       $t2, $31
    /* CF148 800C0198 00000000 */  nop
    /* CF14C 800C019C 460031A4 */  cvt.w.s    $f6, $f6
    /* CF150 800C01A0 444AF800 */  cfc1       $t2, $31
    /* CF154 800C01A4 00000000 */  nop
    /* CF158 800C01A8 314A0078 */  andi       $t2, $t2, 0x78
    /* CF15C 800C01AC 15400005 */  bnez       $t2, .L800C01C4_CF174
    /* CF160 800C01B0 00000000 */   nop
    /* CF164 800C01B4 440A3000 */  mfc1       $t2, $f6
    /* CF168 800C01B8 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* CF16C 800C01BC 10000007 */  b          .L800C01DC_CF18C
    /* CF170 800C01C0 01415025 */   or        $t2, $t2, $at
  .L800C01C4_CF174:
    /* CF174 800C01C4 10000005 */  b          .L800C01DC_CF18C
    /* CF178 800C01C8 240AFFFF */   addiu     $t2, $zero, -0x1
    /* CF17C 800C01CC 440A3000 */  mfc1       $t2, $f6
  .L800C01D0_CF180:
    /* CF180 800C01D0 00000000 */  nop
    /* CF184 800C01D4 0540FFFB */  bltz       $t2, .L800C01C4_CF174
    /* CF188 800C01D8 00000000 */   nop
  .L800C01DC_CF18C:
    /* CF18C 800C01DC 906313EC */  lbu        $v1, %lo(D_800313EC)($v1)
    /* CF190 800C01E0 44D9F800 */  ctc1       $t9, $31
    /* CF194 800C01E4 3C018004 */  lui        $at, %hi(D_80047743)
    /* CF198 800C01E8 00035843 */  sra        $t3, $v1, 1
    /* CF19C 800C01EC 448B9000 */  mtc1       $t3, $f18
    /* CF1A0 800C01F0 44838000 */  mtc1       $v1, $f16
    /* CF1A4 800C01F4 A02A7743 */  sb         $t2, %lo(D_80047743)($at)
    /* CF1A8 800C01F8 46809120 */  cvt.s.w    $f4, $f18
    /* CF1AC 800C01FC 04610005 */  bgez       $v1, .L800C0214_CF1C4
    /* CF1B0 800C0200 46808220 */   cvt.s.w   $f8, $f16
    /* CF1B4 800C0204 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* CF1B8 800C0208 44815000 */  mtc1       $at, $f10
    /* CF1BC 800C020C 00000000 */  nop
    /* CF1C0 800C0210 460A4200 */  add.s      $f8, $f8, $f10
  .L800C0214_CF1C4:
    /* CF1C4 800C0214 46144182 */  mul.s      $f6, $f8, $f20
    /* CF1C8 800C0218 240D0001 */  addiu      $t5, $zero, 0x1
    /* CF1CC 800C021C 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* CF1D0 800C0220 46183483 */  div.s      $f18, $f6, $f24
    /* CF1D4 800C0224 46122400 */  add.s      $f16, $f4, $f18
    /* CF1D8 800C0228 444CF800 */  cfc1       $t4, $31
    /* CF1DC 800C022C 44CDF800 */  ctc1       $t5, $31
    /* CF1E0 800C0230 00000000 */  nop
    /* CF1E4 800C0234 460082A4 */  cvt.w.s    $f10, $f16
    /* CF1E8 800C0238 444DF800 */  cfc1       $t5, $31
    /* CF1EC 800C023C 00000000 */  nop
    /* CF1F0 800C0240 31AD0078 */  andi       $t5, $t5, 0x78
    /* CF1F4 800C0244 51A00013 */  beql       $t5, $zero, .L800C0294_CF244
    /* CF1F8 800C0248 440D5000 */   mfc1      $t5, $f10
    /* CF1FC 800C024C 44815000 */  mtc1       $at, $f10
    /* CF200 800C0250 240D0001 */  addiu      $t5, $zero, 0x1
    /* CF204 800C0254 460A8281 */  sub.s      $f10, $f16, $f10
    /* CF208 800C0258 44CDF800 */  ctc1       $t5, $31
    /* CF20C 800C025C 00000000 */  nop
    /* CF210 800C0260 460052A4 */  cvt.w.s    $f10, $f10
    /* CF214 800C0264 444DF800 */  cfc1       $t5, $31
    /* CF218 800C0268 00000000 */  nop
    /* CF21C 800C026C 31AD0078 */  andi       $t5, $t5, 0x78
    /* CF220 800C0270 15A00005 */  bnez       $t5, .L800C0288_CF238
    /* CF224 800C0274 00000000 */   nop
    /* CF228 800C0278 440D5000 */  mfc1       $t5, $f10
    /* CF22C 800C027C 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* CF230 800C0280 10000007 */  b          .L800C02A0_CF250
    /* CF234 800C0284 01A16825 */   or        $t5, $t5, $at
  .L800C0288_CF238:
    /* CF238 800C0288 10000005 */  b          .L800C02A0_CF250
    /* CF23C 800C028C 240DFFFF */   addiu     $t5, $zero, -0x1
    /* CF240 800C0290 440D5000 */  mfc1       $t5, $f10
  .L800C0294_CF244:
    /* CF244 800C0294 00000000 */  nop
    /* CF248 800C0298 05A0FFFB */  bltz       $t5, .L800C0288_CF238
    /* CF24C 800C029C 00000000 */   nop
  .L800C02A0_CF250:
    /* CF250 800C02A0 908413F0 */  lbu        $a0, %lo(D_800313F0)($a0)
    /* CF254 800C02A4 44CCF800 */  ctc1       $t4, $31
    /* CF258 800C02A8 3C018004 */  lui        $at, %hi(D_80047744)
    /* CF25C 800C02AC 00047043 */  sra        $t6, $a0, 1
    /* CF260 800C02B0 448E4000 */  mtc1       $t6, $f8
    /* CF264 800C02B4 44842000 */  mtc1       $a0, $f4
    /* CF268 800C02B8 A02D7744 */  sb         $t5, %lo(D_80047744)($at)
    /* CF26C 800C02BC 468041A0 */  cvt.s.w    $f6, $f8
    /* CF270 800C02C0 04810005 */  bgez       $a0, .L800C02D8_CF288
    /* CF274 800C02C4 468024A0 */   cvt.s.w   $f18, $f4
    /* CF278 800C02C8 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* CF27C 800C02CC 44818000 */  mtc1       $at, $f16
    /* CF280 800C02D0 00000000 */  nop
    /* CF284 800C02D4 46109480 */  add.s      $f18, $f18, $f16
  .L800C02D8_CF288:
    /* CF288 800C02D8 46149282 */  mul.s      $f10, $f18, $f20
    /* CF28C 800C02DC 24180001 */  addiu      $t8, $zero, 0x1
    /* CF290 800C02E0 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* CF294 800C02E4 46185203 */  div.s      $f8, $f10, $f24
    /* CF298 800C02E8 46083100 */  add.s      $f4, $f6, $f8
    /* CF29C 800C02EC 444FF800 */  cfc1       $t7, $31
    /* CF2A0 800C02F0 44D8F800 */  ctc1       $t8, $31
    /* CF2A4 800C02F4 00000000 */  nop
    /* CF2A8 800C02F8 46002424 */  cvt.w.s    $f16, $f4
    /* CF2AC 800C02FC 4458F800 */  cfc1       $t8, $31
    /* CF2B0 800C0300 00000000 */  nop
    /* CF2B4 800C0304 33180078 */  andi       $t8, $t8, 0x78
    /* CF2B8 800C0308 53000013 */  beql       $t8, $zero, .L800C0358_CF308
    /* CF2BC 800C030C 44188000 */   mfc1      $t8, $f16
    /* CF2C0 800C0310 44818000 */  mtc1       $at, $f16
    /* CF2C4 800C0314 24180001 */  addiu      $t8, $zero, 0x1
    /* CF2C8 800C0318 46102401 */  sub.s      $f16, $f4, $f16
    /* CF2CC 800C031C 44D8F800 */  ctc1       $t8, $31
    /* CF2D0 800C0320 00000000 */  nop
    /* CF2D4 800C0324 46008424 */  cvt.w.s    $f16, $f16
    /* CF2D8 800C0328 4458F800 */  cfc1       $t8, $31
    /* CF2DC 800C032C 00000000 */  nop
    /* CF2E0 800C0330 33180078 */  andi       $t8, $t8, 0x78
    /* CF2E4 800C0334 17000005 */  bnez       $t8, .L800C034C_CF2FC
    /* CF2E8 800C0338 00000000 */   nop
    /* CF2EC 800C033C 44188000 */  mfc1       $t8, $f16
    /* CF2F0 800C0340 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* CF2F4 800C0344 10000007 */  b          .L800C0364_CF314
    /* CF2F8 800C0348 0301C025 */   or        $t8, $t8, $at
  .L800C034C_CF2FC:
    /* CF2FC 800C034C 10000005 */  b          .L800C0364_CF314
    /* CF300 800C0350 2418FFFF */   addiu     $t8, $zero, -0x1
    /* CF304 800C0354 44188000 */  mfc1       $t8, $f16
  .L800C0358_CF308:
    /* CF308 800C0358 00000000 */  nop
    /* CF30C 800C035C 0700FFFB */  bltz       $t8, .L800C034C_CF2FC
    /* CF310 800C0360 00000000 */   nop
  .L800C0364_CF314:
    /* CF314 800C0364 44CFF800 */  ctc1       $t7, $31
    /* CF318 800C0368 3C018004 */  lui        $at, %hi(D_80047745)
    /* CF31C 800C036C 1000009D */  b          .L800C05E4_CF594
    /* CF320 800C0370 A0387745 */   sb        $t8, %lo(D_80047745)($at)
  .L800C0374_CF324:
    /* CF324 800C0374 3C028003 */  lui        $v0, %hi(D_800313E8)
    /* CF328 800C0378 904213E8 */  lbu        $v0, %lo(D_800313E8)($v0)
    /* CF32C 800C037C 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* CF330 800C0380 3C038003 */  lui        $v1, %hi(D_800313EC)
    /* CF334 800C0384 0002C883 */  sra        $t9, $v0, 2
    /* CF338 800C0388 44999000 */  mtc1       $t9, $f18
    /* CF33C 800C038C 44823000 */  mtc1       $v0, $f6
    /* CF340 800C0390 3C048003 */  lui        $a0, %hi(D_800313F0)
    /* CF344 800C0394 468092A1 */  cvt.d.w    $f10, $f18
    /* CF348 800C0398 04410004 */  bgez       $v0, .L800C03AC_CF35C
    /* CF34C 800C039C 46803220 */   cvt.s.w   $f8, $f6
    /* CF350 800C03A0 44812000 */  mtc1       $at, $f4
    /* CF354 800C03A4 00000000 */  nop
    /* CF358 800C03A8 46044200 */  add.s      $f8, $f8, $f4
  .L800C03AC_CF35C:
    /* CF35C 800C03AC 46144402 */  mul.s      $f16, $f8, $f20
    /* CF360 800C03B0 240B0001 */  addiu      $t3, $zero, 0x1
    /* CF364 800C03B4 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* CF368 800C03B8 460084A1 */  cvt.d.s    $f18, $f16
    /* CF36C 800C03BC 46369182 */  mul.d      $f6, $f18, $f22
    /* CF370 800C03C0 46265100 */  add.d      $f4, $f10, $f6
    /* CF374 800C03C4 444AF800 */  cfc1       $t2, $31
    /* CF378 800C03C8 44CBF800 */  ctc1       $t3, $31
    /* CF37C 800C03CC 00000000 */  nop
    /* CF380 800C03D0 46202224 */  cvt.w.d    $f8, $f4
    /* CF384 800C03D4 444BF800 */  cfc1       $t3, $31
    /* CF388 800C03D8 00000000 */  nop
    /* CF38C 800C03DC 316B0078 */  andi       $t3, $t3, 0x78
    /* CF390 800C03E0 51600014 */  beql       $t3, $zero, .L800C0434_CF3E4
    /* CF394 800C03E4 440B4000 */   mfc1      $t3, $f8
    /* CF398 800C03E8 44814800 */  mtc1       $at, $f9
    /* CF39C 800C03EC 44804000 */  mtc1       $zero, $f8
    /* CF3A0 800C03F0 240B0001 */  addiu      $t3, $zero, 0x1
    /* CF3A4 800C03F4 46282201 */  sub.d      $f8, $f4, $f8
    /* CF3A8 800C03F8 44CBF800 */  ctc1       $t3, $31
    /* CF3AC 800C03FC 00000000 */  nop
    /* CF3B0 800C0400 46204224 */  cvt.w.d    $f8, $f8
    /* CF3B4 800C0404 444BF800 */  cfc1       $t3, $31
    /* CF3B8 800C0408 00000000 */  nop
    /* CF3BC 800C040C 316B0078 */  andi       $t3, $t3, 0x78
    /* CF3C0 800C0410 15600005 */  bnez       $t3, .L800C0428_CF3D8
    /* CF3C4 800C0414 00000000 */   nop
    /* CF3C8 800C0418 440B4000 */  mfc1       $t3, $f8
    /* CF3CC 800C041C 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* CF3D0 800C0420 10000007 */  b          .L800C0440_CF3F0
    /* CF3D4 800C0424 01615825 */   or        $t3, $t3, $at
  .L800C0428_CF3D8:
    /* CF3D8 800C0428 10000005 */  b          .L800C0440_CF3F0
    /* CF3DC 800C042C 240BFFFF */   addiu     $t3, $zero, -0x1
    /* CF3E0 800C0430 440B4000 */  mfc1       $t3, $f8
  .L800C0434_CF3E4:
    /* CF3E4 800C0434 00000000 */  nop
    /* CF3E8 800C0438 0560FFFB */  bltz       $t3, .L800C0428_CF3D8
    /* CF3EC 800C043C 00000000 */   nop
  .L800C0440_CF3F0:
    /* CF3F0 800C0440 906313EC */  lbu        $v1, %lo(D_800313EC)($v1)
    /* CF3F4 800C0444 44CAF800 */  ctc1       $t2, $31
    /* CF3F8 800C0448 3C018004 */  lui        $at, %hi(D_80047743)
    /* CF3FC 800C044C 00036083 */  sra        $t4, $v1, 2
    /* CF400 800C0450 448C8000 */  mtc1       $t4, $f16
    /* CF404 800C0454 44835000 */  mtc1       $v1, $f10
    /* CF408 800C0458 A02B7743 */  sb         $t3, %lo(D_80047743)($at)
    /* CF40C 800C045C 468084A1 */  cvt.d.w    $f18, $f16
    /* CF410 800C0460 04610005 */  bgez       $v1, .L800C0478_CF428
    /* CF414 800C0464 468051A0 */   cvt.s.w   $f6, $f10
    /* CF418 800C0468 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* CF41C 800C046C 44812000 */  mtc1       $at, $f4
    /* CF420 800C0470 00000000 */  nop
    /* CF424 800C0474 46043180 */  add.s      $f6, $f6, $f4
  .L800C0478_CF428:
    /* CF428 800C0478 46143202 */  mul.s      $f8, $f6, $f20
    /* CF42C 800C047C 240E0001 */  addiu      $t6, $zero, 0x1
    /* CF430 800C0480 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* CF434 800C0484 46004421 */  cvt.d.s    $f16, $f8
    /* CF438 800C0488 46368282 */  mul.d      $f10, $f16, $f22
    /* CF43C 800C048C 462A9100 */  add.d      $f4, $f18, $f10
    /* CF440 800C0490 444DF800 */  cfc1       $t5, $31
    /* CF444 800C0494 44CEF800 */  ctc1       $t6, $31
    /* CF448 800C0498 00000000 */  nop
    /* CF44C 800C049C 462021A4 */  cvt.w.d    $f6, $f4
    /* CF450 800C04A0 444EF800 */  cfc1       $t6, $31
    /* CF454 800C04A4 00000000 */  nop
    /* CF458 800C04A8 31CE0078 */  andi       $t6, $t6, 0x78
    /* CF45C 800C04AC 51C00014 */  beql       $t6, $zero, .L800C0500_CF4B0
    /* CF460 800C04B0 440E3000 */   mfc1      $t6, $f6
    /* CF464 800C04B4 44813800 */  mtc1       $at, $f7
    /* CF468 800C04B8 44803000 */  mtc1       $zero, $f6
    /* CF46C 800C04BC 240E0001 */  addiu      $t6, $zero, 0x1
    /* CF470 800C04C0 46262181 */  sub.d      $f6, $f4, $f6
    /* CF474 800C04C4 44CEF800 */  ctc1       $t6, $31
    /* CF478 800C04C8 00000000 */  nop
    /* CF47C 800C04CC 462031A4 */  cvt.w.d    $f6, $f6
    /* CF480 800C04D0 444EF800 */  cfc1       $t6, $31
    /* CF484 800C04D4 00000000 */  nop
    /* CF488 800C04D8 31CE0078 */  andi       $t6, $t6, 0x78
    /* CF48C 800C04DC 15C00005 */  bnez       $t6, .L800C04F4_CF4A4
    /* CF490 800C04E0 00000000 */   nop
    /* CF494 800C04E4 440E3000 */  mfc1       $t6, $f6
    /* CF498 800C04E8 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* CF49C 800C04EC 10000007 */  b          .L800C050C_CF4BC
    /* CF4A0 800C04F0 01C17025 */   or        $t6, $t6, $at
  .L800C04F4_CF4A4:
    /* CF4A4 800C04F4 10000005 */  b          .L800C050C_CF4BC
    /* CF4A8 800C04F8 240EFFFF */   addiu     $t6, $zero, -0x1
    /* CF4AC 800C04FC 440E3000 */  mfc1       $t6, $f6
  .L800C0500_CF4B0:
    /* CF4B0 800C0500 00000000 */  nop
    /* CF4B4 800C0504 05C0FFFB */  bltz       $t6, .L800C04F4_CF4A4
    /* CF4B8 800C0508 00000000 */   nop
  .L800C050C_CF4BC:
    /* CF4BC 800C050C 908413F0 */  lbu        $a0, %lo(D_800313F0)($a0)
    /* CF4C0 800C0510 44CDF800 */  ctc1       $t5, $31
    /* CF4C4 800C0514 3C018004 */  lui        $at, %hi(D_80047744)
    /* CF4C8 800C0518 00047883 */  sra        $t7, $a0, 2
    /* CF4CC 800C051C 448F4000 */  mtc1       $t7, $f8
    /* CF4D0 800C0520 44849000 */  mtc1       $a0, $f18
    /* CF4D4 800C0524 A02E7744 */  sb         $t6, %lo(D_80047744)($at)
    /* CF4D8 800C0528 46804421 */  cvt.d.w    $f16, $f8
    /* CF4DC 800C052C 04810005 */  bgez       $a0, .L800C0544_CF4F4
    /* CF4E0 800C0530 468092A0 */   cvt.s.w   $f10, $f18
    /* CF4E4 800C0534 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* CF4E8 800C0538 44812000 */  mtc1       $at, $f4
    /* CF4EC 800C053C 00000000 */  nop
    /* CF4F0 800C0540 46045280 */  add.s      $f10, $f10, $f4
  .L800C0544_CF4F4:
    /* CF4F4 800C0544 46145182 */  mul.s      $f6, $f10, $f20
    /* CF4F8 800C0548 24190001 */  addiu      $t9, $zero, 0x1
    /* CF4FC 800C054C 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* CF500 800C0550 46003221 */  cvt.d.s    $f8, $f6
    /* CF504 800C0554 46364482 */  mul.d      $f18, $f8, $f22
    /* CF508 800C0558 46328100 */  add.d      $f4, $f16, $f18
    /* CF50C 800C055C 4458F800 */  cfc1       $t8, $31
    /* CF510 800C0560 44D9F800 */  ctc1       $t9, $31
    /* CF514 800C0564 00000000 */  nop
    /* CF518 800C0568 462022A4 */  cvt.w.d    $f10, $f4
    /* CF51C 800C056C 4459F800 */  cfc1       $t9, $31
    /* CF520 800C0570 00000000 */  nop
    /* CF524 800C0574 33390078 */  andi       $t9, $t9, 0x78
    /* CF528 800C0578 53200014 */  beql       $t9, $zero, .L800C05CC_CF57C
    /* CF52C 800C057C 44195000 */   mfc1      $t9, $f10
    /* CF530 800C0580 44815800 */  mtc1       $at, $f11
    /* CF534 800C0584 44805000 */  mtc1       $zero, $f10
    /* CF538 800C0588 24190001 */  addiu      $t9, $zero, 0x1
    /* CF53C 800C058C 462A2281 */  sub.d      $f10, $f4, $f10
    /* CF540 800C0590 44D9F800 */  ctc1       $t9, $31
    /* CF544 800C0594 00000000 */  nop
    /* CF548 800C0598 462052A4 */  cvt.w.d    $f10, $f10
    /* CF54C 800C059C 4459F800 */  cfc1       $t9, $31
    /* CF550 800C05A0 00000000 */  nop
    /* CF554 800C05A4 33390078 */  andi       $t9, $t9, 0x78
    /* CF558 800C05A8 17200005 */  bnez       $t9, .L800C05C0_CF570
    /* CF55C 800C05AC 00000000 */   nop
    /* CF560 800C05B0 44195000 */  mfc1       $t9, $f10
    /* CF564 800C05B4 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* CF568 800C05B8 10000007 */  b          .L800C05D8_CF588
    /* CF56C 800C05BC 0321C825 */   or        $t9, $t9, $at
  .L800C05C0_CF570:
    /* CF570 800C05C0 10000005 */  b          .L800C05D8_CF588
    /* CF574 800C05C4 2419FFFF */   addiu     $t9, $zero, -0x1
    /* CF578 800C05C8 44195000 */  mfc1       $t9, $f10
  .L800C05CC_CF57C:
    /* CF57C 800C05CC 00000000 */  nop
    /* CF580 800C05D0 0720FFFB */  bltz       $t9, .L800C05C0_CF570
    /* CF584 800C05D4 00000000 */   nop
  .L800C05D8_CF588:
    /* CF588 800C05D8 44D8F800 */  ctc1       $t8, $31
    /* CF58C 800C05DC 3C018004 */  lui        $at, %hi(D_80047745)
    /* CF590 800C05E0 A0397745 */  sb         $t9, %lo(D_80047745)($at)
  .L800C05E4_CF594:
    /* CF594 800C05E4 3C048015 */  lui        $a0, %hi(D_8014F89C)
    /* CF598 800C05E8 9084F89C */  lbu        $a0, %lo(D_8014F89C)($a0)
    /* CF59C 800C05EC 90A5F89D */  lbu        $a1, %lo(D_8014F89D)($a1)
    /* CF5A0 800C05F0 0C02CD17 */  jal        func_800B345C_C240C
    /* CF5A4 800C05F4 00003825 */   or        $a3, $zero, $zero
    /* CF5A8 800C05F8 3C038014 */  lui        $v1, %hi(D_8013D9B0)
    /* CF5AC 800C05FC 9063D9B0 */  lbu        $v1, %lo(D_8013D9B0)($v1)
    /* CF5B0 800C0600 3C0A8005 */  lui        $t2, %hi(gameplayMode)
    /* CF5B4 800C0604 50600015 */  beql       $v1, $zero, .L800C065C_CF60C
    /* CF5B8 800C0608 8FBF0034 */   lw        $ra, 0x34($sp)
    /* CF5BC 800C060C 8D4A2ADC */  lw         $t2, %lo(gameplayMode)($t2)
    /* CF5C0 800C0610 24010001 */  addiu      $at, $zero, 0x1
    /* CF5C4 800C0614 55410011 */  bnel       $t2, $at, .L800C065C_CF60C
    /* CF5C8 800C0618 8FBF0034 */   lw        $ra, 0x34($sp)
    /* CF5CC 800C061C 8E2B0000 */  lw         $t3, 0x0($s1)
    /* CF5D0 800C0620 2861003D */  slti       $at, $v1, 0x3D
    /* CF5D4 800C0624 246CFFFF */  addiu      $t4, $v1, -0x1
    /* CF5D8 800C0628 11600002 */  beqz       $t3, .L800C0634_CF5E4
    /* CF5DC 800C062C 3C0D8014 */   lui       $t5, %hi(D_8013D9B0)
    /* CF5E0 800C0630 14200009 */  bnez       $at, .L800C0658_CF608
  .L800C0634_CF5E4:
    /* CF5E4 800C0634 3C018014 */   lui       $at, %hi(D_8013D9B0)
    /* CF5E8 800C0638 A02CD9B0 */  sb         $t4, %lo(D_8013D9B0)($at)
    /* CF5EC 800C063C 91ADD9B0 */  lbu        $t5, %lo(D_8013D9B0)($t5)
    /* CF5F0 800C0640 2404FFFF */  addiu      $a0, $zero, -0x1
    /* CF5F4 800C0644 29A10024 */  slti       $at, $t5, 0x24
    /* CF5F8 800C0648 54200004 */  bnel       $at, $zero, .L800C065C_CF60C
    /* CF5FC 800C064C 8FBF0034 */   lw        $ra, 0x34($sp)
    /* CF600 800C0650 0C04DD1A */  jal        func_80137468_146418
    /* CF604 800C0654 24050021 */   addiu     $a1, $zero, 0x21
  .L800C0658_CF608:
    /* CF608 800C0658 8FBF0034 */  lw         $ra, 0x34($sp)
  .L800C065C_CF60C:
    /* CF60C 800C065C D7B40010 */  ldc1       $f20, 0x10($sp)
    /* CF610 800C0660 D7B60018 */  ldc1       $f22, 0x18($sp)
    /* CF614 800C0664 D7B80020 */  ldc1       $f24, 0x20($sp)
    /* CF618 800C0668 8FB0002C */  lw         $s0, 0x2C($sp)
    /* CF61C 800C066C 8FB10030 */  lw         $s1, 0x30($sp)
    /* CF620 800C0670 03E00008 */  jr         $ra
    /* CF624 800C0674 27BD0050 */   addiu     $sp, $sp, 0x50
endlabel func_800BED30_CDCE0
