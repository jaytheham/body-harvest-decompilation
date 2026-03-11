nonmatching func_802DDE3C_2C026C, 0x1B4

glabel func_802DDE3C_2C026C
    /* 2C026C 802DDE3C 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 2C0270 802DDE40 AFA40028 */  sw         $a0, 0x28($sp)
    /* 2C0274 802DDE44 93AE002B */  lbu        $t6, 0x2B($sp)
    /* 2C0278 802DDE48 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 2C027C 802DDE4C 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 2C0280 802DDE50 000E7880 */  sll        $t7, $t6, 2
    /* 2C0284 802DDE54 01EE7821 */  addu       $t7, $t7, $t6
    /* 2C0288 802DDE58 000F7900 */  sll        $t7, $t7, 4
    /* 2C028C 802DDE5C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2C0290 802DDE60 01F82821 */  addu       $a1, $t7, $t8
    /* 2C0294 802DDE64 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 2C0298 802DDE68 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 2C029C 802DDE6C 0C021395 */  jal        func_80084E54_93E04
    /* 2C02A0 802DDE70 AFA50018 */   sw        $a1, 0x18($sp)
    /* 2C02A4 802DDE74 8FA50018 */  lw         $a1, 0x18($sp)
    /* 2C02A8 802DDE78 00404025 */  or         $t0, $v0, $zero
    /* 2C02AC 802DDE7C 3C038005 */  lui        $v1, %hi(D_80052B34)
    /* 2C02B0 802DDE80 8CA40020 */  lw         $a0, 0x20($a1)
    /* 2C02B4 802DDE84 3099C000 */  andi       $t9, $a0, 0xC000
    /* 2C02B8 802DDE88 57200013 */  bnel       $t9, $zero, .L802DDED8_2C0308
    /* 2C02BC 802DDE8C 93A4002B */   lbu       $a0, 0x2B($sp)
    /* 2C02C0 802DDE90 8C632B34 */  lw         $v1, %lo(D_80052B34)($v1)
    /* 2C02C4 802DDE94 84620000 */  lh         $v0, 0x0($v1)
    /* 2C02C8 802DDE98 2841E8E4 */  slti       $at, $v0, -0x171C
    /* 2C02CC 802DDE9C 1420000D */  bnez       $at, .L802DDED4_2C0304
    /* 2C02D0 802DDEA0 2841ECCD */   slti      $at, $v0, -0x1333
    /* 2C02D4 802DDEA4 5020000C */  beql       $at, $zero, .L802DDED8_2C0308
    /* 2C02D8 802DDEA8 93A4002B */   lbu       $a0, 0x2B($sp)
    /* 2C02DC 802DDEAC 84620004 */  lh         $v0, 0x4($v1)
    /* 2C02E0 802DDEB0 2841526C */  slti       $at, $v0, 0x526C
    /* 2C02E4 802DDEB4 14200007 */  bnez       $at, .L802DDED4_2C0304
    /* 2C02E8 802DDEB8 28415655 */   slti      $at, $v0, 0x5655
    /* 2C02EC 802DDEBC 10200005 */  beqz       $at, .L802DDED4_2C0304
    /* 2C02F0 802DDEC0 34894000 */   ori       $t1, $a0, 0x4000
    /* 2C02F4 802DDEC4 240A0038 */  addiu      $t2, $zero, 0x38
    /* 2C02F8 802DDEC8 ACA90020 */  sw         $t1, 0x20($a1)
    /* 2C02FC 802DDECC 10000007 */  b          .L802DDEEC_2C031C
    /* 2C0300 802DDED0 A0AA0026 */   sb        $t2, 0x26($a1)
  .L802DDED4_2C0304:
    /* 2C0304 802DDED4 93A4002B */  lbu        $a0, 0x2B($sp)
  .L802DDED8_2C0308:
    /* 2C0308 802DDED8 AFA50018 */  sw         $a1, 0x18($sp)
    /* 2C030C 802DDEDC 0C021CD7 */  jal        func_8008735C_9630C
    /* 2C0310 802DDEE0 AFA80024 */   sw        $t0, 0x24($sp)
    /* 2C0314 802DDEE4 8FA50018 */  lw         $a1, 0x18($sp)
    /* 2C0318 802DDEE8 8FA80024 */  lw         $t0, 0x24($sp)
  .L802DDEEC_2C031C:
    /* 2C031C 802DDEEC 8CA40020 */  lw         $a0, 0x20($a1)
    /* 2C0320 802DDEF0 3C038005 */  lui        $v1, %hi(D_80052B34)
    /* 2C0324 802DDEF4 308B8000 */  andi       $t3, $a0, 0x8000
    /* 2C0328 802DDEF8 5160002D */  beql       $t3, $zero, .L802DDFB0_2C03E0
    /* 2C032C 802DDEFC 308B4000 */   andi      $t3, $a0, 0x4000
    /* 2C0330 802DDF00 8C632B34 */  lw         $v1, %lo(D_80052B34)($v1)
    /* 2C0334 802DDF04 84620000 */  lh         $v0, 0x0($v1)
    /* 2C0338 802DDF08 2841FE38 */  slti       $at, $v0, -0x1C8
    /* 2C033C 802DDF0C 14200012 */  bnez       $at, .L802DDF58_2C0388
    /* 2C0340 802DDF10 28410039 */   slti      $at, $v0, 0x39
    /* 2C0344 802DDF14 50200011 */  beql       $at, $zero, .L802DDF5C_2C038C
    /* 2C0348 802DDF18 84A20048 */   lh        $v0, 0x48($a1)
    /* 2C034C 802DDF1C 84620004 */  lh         $v0, 0x4($v1)
    /* 2C0350 802DDF20 28414903 */  slti       $at, $v0, 0x4903
    /* 2C0354 802DDF24 1420000C */  bnez       $at, .L802DDF58_2C0388
    /* 2C0358 802DDF28 28414B04 */   slti      $at, $v0, 0x4B04
    /* 2C035C 802DDF2C 1020000A */  beqz       $at, .L802DDF58_2C0388
    /* 2C0360 802DDF30 348C4000 */   ori       $t4, $a0, 0x4000
    /* 2C0364 802DDF34 3C01FFFF */  lui        $at, (0xFFFF7FFF >> 16)
    /* 2C0368 802DDF38 34217FFF */  ori        $at, $at, (0xFFFF7FFF & 0xFFFF)
    /* 2C036C 802DDF3C ACAC0020 */  sw         $t4, 0x20($a1)
    /* 2C0370 802DDF40 01817024 */  and        $t6, $t4, $at
    /* 2C0374 802DDF44 240F0001 */  addiu      $t7, $zero, 0x1
    /* 2C0378 802DDF48 ACAE0020 */  sw         $t6, 0x20($a1)
    /* 2C037C 802DDF4C A0A00026 */  sb         $zero, 0x26($a1)
    /* 2C0380 802DDF50 10000023 */  b          .L802DDFE0_2C0410
    /* 2C0384 802DDF54 A0AF0024 */   sb        $t7, 0x24($a1)
  .L802DDF58_2C0388:
    /* 2C0388 802DDF58 84A20048 */  lh         $v0, 0x48($a1)
  .L802DDF5C_2C038C:
    /* 2C038C 802DDF5C 290107D0 */  slti       $at, $t0, 0x7D0
    /* 2C0390 802DDF60 04410010 */  bgez       $v0, .L802DDFA4_2C03D4
    /* 2C0394 802DDF64 24580010 */   addiu     $t8, $v0, 0x10
    /* 2C0398 802DDF68 1020001D */  beqz       $at, .L802DDFE0_2C0410
    /* 2C039C 802DDF6C A4B80048 */   sh        $t8, 0x48($a1)
    /* 2C03A0 802DDF70 241907D0 */  addiu      $t9, $zero, 0x7D0
    /* 2C03A4 802DDF74 03284823 */  subu       $t1, $t9, $t0
    /* 2C03A8 802DDF78 240103E8 */  addiu      $at, $zero, 0x3E8
    /* 2C03AC 802DDF7C 0121001A */  div        $zero, $t1, $at
    /* 2C03B0 802DDF80 00005012 */  mflo       $t2
    /* 2C03B4 802DDF84 448A2000 */  mtc1       $t2, $f4
    /* 2C03B8 802DDF88 24050001 */  addiu      $a1, $zero, 0x1
    /* 2C03BC 802DDF8C 24060001 */  addiu      $a2, $zero, 0x1
    /* 2C03C0 802DDF90 24070001 */  addiu      $a3, $zero, 0x1
    /* 2C03C4 802DDF94 0C04D742 */  jal        func_80135D08_144CB8
    /* 2C03C8 802DDF98 46802320 */   cvt.s.w   $f12, $f4
    /* 2C03CC 802DDF9C 10000011 */  b          .L802DDFE4_2C0414
    /* 2C03D0 802DDFA0 8FBF0014 */   lw        $ra, 0x14($sp)
  .L802DDFA4_2C03D4:
    /* 2C03D4 802DDFA4 1000000E */  b          .L802DDFE0_2C0410
    /* 2C03D8 802DDFA8 A4A00048 */   sh        $zero, 0x48($a1)
    /* 2C03DC 802DDFAC 308B4000 */  andi       $t3, $a0, 0x4000
  .L802DDFB0_2C03E0:
    /* 2C03E0 802DDFB0 5160000C */  beql       $t3, $zero, .L802DDFE4_2C0414
    /* 2C03E4 802DDFB4 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 2C03E8 802DDFB8 90AC0024 */  lbu        $t4, 0x24($a1)
    /* 2C03EC 802DDFBC 24010001 */  addiu      $at, $zero, 0x1
    /* 2C03F0 802DDFC0 15810005 */  bne        $t4, $at, .L802DDFD8_2C0408
    /* 2C03F4 802DDFC4 00000000 */   nop
    /* 2C03F8 802DDFC8 0C01E644 */  jal        func_80079910_888C0
    /* 2C03FC 802DDFCC 93A4002B */   lbu       $a0, 0x2B($sp)
    /* 2C0400 802DDFD0 10000004 */  b          .L802DDFE4_2C0414
    /* 2C0404 802DDFD4 8FBF0014 */   lw        $ra, 0x14($sp)
  .L802DDFD8_2C0408:
    /* 2C0408 802DDFD8 0C0B7545 */  jal        func_802DD514_2BF944
    /* 2C040C 802DDFDC 93A4002B */   lbu       $a0, 0x2B($sp)
  .L802DDFE0_2C0410:
    /* 2C0410 802DDFE0 8FBF0014 */  lw         $ra, 0x14($sp)
  .L802DDFE4_2C0414:
    /* 2C0414 802DDFE4 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 2C0418 802DDFE8 03E00008 */  jr         $ra
    /* 2C041C 802DDFEC 00000000 */   nop
endlabel func_802DDE3C_2C026C
