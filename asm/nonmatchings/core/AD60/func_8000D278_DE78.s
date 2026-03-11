nonmatching func_8000D278_DE78, 0x10C

glabel func_8000D278_DE78
    /* DE78 8000D278 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* DE7C 8000D27C AFB60030 */  sw         $s6, 0x30($sp)
    /* DE80 8000D280 AFB5002C */  sw         $s5, 0x2C($sp)
    /* DE84 8000D284 AFB40028 */  sw         $s4, 0x28($sp)
    /* DE88 8000D288 AFB30024 */  sw         $s3, 0x24($sp)
    /* DE8C 8000D28C AFB20020 */  sw         $s2, 0x20($sp)
    /* DE90 8000D290 00809025 */  or         $s2, $a0, $zero
    /* DE94 8000D294 00E0A025 */  or         $s4, $a3, $zero
    /* DE98 8000D298 00C0A825 */  or         $s5, $a2, $zero
    /* DE9C 8000D29C 00A0B025 */  or         $s6, $a1, $zero
    /* DEA0 8000D2A0 AFBF0034 */  sw         $ra, 0x34($sp)
    /* DEA4 8000D2A4 AFB1001C */  sw         $s1, 0x1C($sp)
    /* DEA8 8000D2A8 AFB00018 */  sw         $s0, 0x18($sp)
    /* DEAC 8000D2AC 10C0002B */  beqz       $a2, .L8000D35C_DF5C
    /* DEB0 8000D2B0 00009825 */   or        $s3, $zero, $zero
  .L8000D2B4_DEB4:
    /* DEB4 8000D2B4 12800025 */  beqz       $s4, .L8000D34C_DF4C
    /* DEB8 8000D2B8 02808825 */   or        $s1, $s4, $zero
    /* DEBC 8000D2BC 8E4E0E50 */  lw         $t6, 0xE50($s2)
    /* DEC0 8000D2C0 00137980 */  sll        $t7, $s3, 6
    /* DEC4 8000D2C4 01F68021 */  addu       $s0, $t7, $s6
    /* DEC8 8000D2C8 51C00021 */  beql       $t6, $zero, .L8000D350_DF50
    /* DECC 8000D2CC 26730001 */   addiu     $s3, $s3, 0x1
    /* DED0 8000D2D0 44912000 */  mtc1       $s1, $f4
  .L8000D2D4_DED4:
    /* DED4 8000D2D4 C6020020 */  lwc1       $f2, 0x20($s0)
    /* DED8 8000D2D8 46802020 */  cvt.s.w    $f0, $f4
    /* DEDC 8000D2DC 4602003C */  c.lt.s     $f0, $f2
    /* DEE0 8000D2E0 00000000 */  nop
    /* DEE4 8000D2E4 45020006 */  bc1fl      .L8000D300_DF00
    /* DEE8 8000D2E8 46020201 */   sub.s     $f8, $f0, $f2
    /* DEEC 8000D2EC 46001181 */  sub.s      $f6, $f2, $f0
    /* DEF0 8000D2F0 00008825 */  or         $s1, $zero, $zero
    /* DEF4 8000D2F4 10000010 */  b          .L8000D338_DF38
    /* DEF8 8000D2F8 E6060020 */   swc1      $f6, 0x20($s0)
    /* DEFC 8000D2FC 46020201 */  sub.s      $f8, $f0, $f2
  .L8000D300_DF00:
    /* DF00 8000D300 8E190018 */  lw         $t9, 0x18($s0)
    /* DF04 8000D304 8E0A0014 */  lw         $t2, 0x14($s0)
    /* DF08 8000D308 02402025 */  or         $a0, $s2, $zero
    /* DF0C 8000D30C 4600428D */  trunc.w.s  $f10, $f8
    /* DF10 8000D310 27280001 */  addiu      $t0, $t9, 0x1
    /* DF14 8000D314 AE080018 */  sw         $t0, 0x18($s0)
    /* DF18 8000D318 02002825 */  or         $a1, $s0, $zero
    /* DF1C 8000D31C 44115000 */  mfc1       $s1, $f10
    /* DF20 8000D320 150A0003 */  bne        $t0, $t2, .L8000D330_DF30
    /* DF24 8000D324 00000000 */   nop
    /* DF28 8000D328 10000003 */  b          .L8000D338_DF38
    /* DF2C 8000D32C AE400E50 */   sw        $zero, 0xE50($s2)
  .L8000D330_DF30:
    /* DF30 8000D330 0C003355 */  jal        func_8000CD54_D954
    /* DF34 8000D334 326600FF */   andi      $a2, $s3, 0xFF
  .L8000D338_DF38:
    /* DF38 8000D338 52200005 */  beql       $s1, $zero, .L8000D350_DF50
    /* DF3C 8000D33C 26730001 */   addiu     $s3, $s3, 0x1
    /* DF40 8000D340 8E4B0E50 */  lw         $t3, 0xE50($s2)
    /* DF44 8000D344 5560FFE3 */  bnel       $t3, $zero, .L8000D2D4_DED4
    /* DF48 8000D348 44912000 */   mtc1      $s1, $f4
  .L8000D34C_DF4C:
    /* DF4C 8000D34C 26730001 */  addiu      $s3, $s3, 0x1
  .L8000D350_DF50:
    /* DF50 8000D350 326C00FF */  andi       $t4, $s3, 0xFF
    /* DF54 8000D354 16ACFFD7 */  bne        $s5, $t4, .L8000D2B4_DEB4
    /* DF58 8000D358 01809825 */   or        $s3, $t4, $zero
  .L8000D35C_DF5C:
    /* DF5C 8000D35C 8FBF0034 */  lw         $ra, 0x34($sp)
    /* DF60 8000D360 8FB00018 */  lw         $s0, 0x18($sp)
    /* DF64 8000D364 8FB1001C */  lw         $s1, 0x1C($sp)
    /* DF68 8000D368 8FB20020 */  lw         $s2, 0x20($sp)
    /* DF6C 8000D36C 8FB30024 */  lw         $s3, 0x24($sp)
    /* DF70 8000D370 8FB40028 */  lw         $s4, 0x28($sp)
    /* DF74 8000D374 8FB5002C */  lw         $s5, 0x2C($sp)
    /* DF78 8000D378 8FB60030 */  lw         $s6, 0x30($sp)
    /* DF7C 8000D37C 03E00008 */  jr         $ra
    /* DF80 8000D380 27BD0038 */   addiu     $sp, $sp, 0x38
endlabel func_8000D278_DE78
