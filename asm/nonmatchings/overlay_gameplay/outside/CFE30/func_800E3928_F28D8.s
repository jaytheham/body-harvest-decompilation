nonmatching func_800E3928_F28D8, 0x13C4

glabel func_800E3928_F28D8
    /* F28D8 800E3928 27BDFF80 */  addiu      $sp, $sp, -0x80
    /* F28DC 800E392C AFA40080 */  sw         $a0, 0x80($sp)
    /* F28E0 800E3930 AFA7008C */  sw         $a3, 0x8C($sp)
    /* F28E4 800E3934 87AE008E */  lh         $t6, 0x8E($sp)
    /* F28E8 800E3938 87AF0082 */  lh         $t7, 0x82($sp)
    /* F28EC 800E393C AFA60088 */  sw         $a2, 0x88($sp)
    /* F28F0 800E3940 87B90096 */  lh         $t9, 0x96($sp)
    /* F28F4 800E3944 01CFC023 */  subu       $t8, $t6, $t7
    /* F28F8 800E3948 87AE008A */  lh         $t6, 0x8A($sp)
    /* F28FC 800E394C 44982000 */  mtc1       $t8, $f4
    /* F2900 800E3950 AFBF0014 */  sw         $ra, 0x14($sp)
    /* F2904 800E3954 032E7823 */  subu       $t7, $t9, $t6
    /* F2908 800E3958 448F3000 */  mtc1       $t7, $f6
    /* F290C 800E395C AFA50084 */  sw         $a1, 0x84($sp)
    /* F2910 800E3960 46802320 */  cvt.s.w    $f12, $f4
    /* F2914 800E3964 0C000E09 */  jal        func_80003824_4424
    /* F2918 800E3968 468033A0 */   cvt.s.w   $f14, $f6
    /* F291C 800E396C 93A500A3 */  lbu        $a1, 0xA3($sp)
    /* F2920 800E3970 3C0E8014 */  lui        $t6, %hi(D_8013DD18)
    /* F2924 800E3974 25CEDD18 */  addiu      $t6, $t6, %lo(D_8013DD18)
    /* F2928 800E3978 00AE7821 */  addu       $t7, $a1, $t6
    /* F292C 800E397C AFAF0024 */  sw         $t7, 0x24($sp)
    /* F2930 800E3980 91E40000 */  lbu        $a0, 0x0($t7)
    /* F2934 800E3984 241900FF */  addiu      $t9, $zero, 0xFF
    /* F2938 800E3988 244B4000 */  addiu      $t3, $v0, 0x4000
    /* F293C 800E398C 0324001A */  div        $zero, $t9, $a0
    /* F2940 800E3990 00801825 */  or         $v1, $a0, $zero
    /* F2944 800E3994 00007012 */  mflo       $t6
    /* F2948 800E3998 448E4000 */  mtc1       $t6, $f8
    /* F294C 800E399C 000BC400 */  sll        $t8, $t3, 16
    /* F2950 800E39A0 00185C03 */  sra        $t3, $t8, 16
    /* F2954 800E39A4 01E0C025 */  or         $t8, $t7, $zero
    /* F2958 800E39A8 14600002 */  bnez       $v1, .L800E39B4_F2964
    /* F295C 800E39AC 00000000 */   nop
    /* F2960 800E39B0 0007000D */  break      7
  .L800E39B4_F2964:
    /* F2964 800E39B4 2401FFFF */  addiu      $at, $zero, -0x1
    /* F2968 800E39B8 14610004 */  bne        $v1, $at, .L800E39CC_F297C
    /* F296C 800E39BC 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* F2970 800E39C0 17210002 */  bne        $t9, $at, .L800E39CC_F297C
    /* F2974 800E39C4 00000000 */   nop
    /* F2978 800E39C8 0006000D */  break      6
  .L800E39CC_F297C:
    /* F297C 800E39CC 2CA10007 */  sltiu      $at, $a1, 0x7
    /* F2980 800E39D0 00A05025 */  or         $t2, $a1, $zero
    /* F2984 800E39D4 1020030E */  beqz       $at, .L800E4610_F35C0
    /* F2988 800E39D8 468043A0 */   cvt.s.w   $f14, $f8
    /* F298C 800E39DC 00057880 */  sll        $t7, $a1, 2
    /* F2990 800E39E0 3C018014 */  lui        $at, %hi(jtbl_801441C4_overlay_gameplay_outside)
    /* F2994 800E39E4 002F0821 */  addu       $at, $at, $t7
    /* F2998 800E39E8 8C2F41C4 */  lw         $t7, %lo(jtbl_801441C4_overlay_gameplay_outside)($at)
    /* F299C 800E39EC 01E00008 */  jr         $t7
    /* F29A0 800E39F0 00000000 */   nop
    /* F29A4 800E39F4 87A8009E */  lh         $t0, 0x9E($sp)
    /* F29A8 800E39F8 241800FA */  addiu      $t8, $zero, 0xFA
    /* F29AC 800E39FC 240D0096 */  addiu      $t5, $zero, 0x96
    /* F29B0 800E3A00 1503000C */  bne        $t0, $v1, .L800E3A34_F29E4
    /* F29B4 800E3A04 0000F825 */   or        $ra, $zero, $zero
    /* F29B8 800E3A08 24190050 */  addiu      $t9, $zero, 0x50
    /* F29BC 800E3A0C 240E00FF */  addiu      $t6, $zero, 0xFF
    /* F29C0 800E3A10 A3AE006E */  sb         $t6, 0x6E($sp)
    /* F29C4 800E3A14 A3B90070 */  sb         $t9, 0x70($sp)
    /* F29C8 800E3A18 A3B80071 */  sb         $t8, 0x71($sp)
    /* F29CC 800E3A1C 24090064 */  addiu      $t1, $zero, 0x64
    /* F29D0 800E3A20 240D00FF */  addiu      $t5, $zero, 0xFF
    /* F29D4 800E3A24 241F00FF */  addiu      $ra, $zero, 0xFF
    /* F29D8 800E3A28 A3A0006B */  sb         $zero, 0x6B($sp)
    /* F29DC 800E3A2C 1000002E */  b          .L800E3AE8_F2A98
    /* F29E0 800E3A30 A3A0006A */   sb        $zero, 0x6A($sp)
  .L800E3A34_F29E4:
    /* F29E4 800E3A34 44885000 */  mtc1       $t0, $f10
    /* F29E8 800E3A38 24190001 */  addiu      $t9, $zero, 0x1
    /* F29EC 800E3A3C 240F0096 */  addiu      $t7, $zero, 0x96
    /* F29F0 800E3A40 46805120 */  cvt.s.w    $f4, $f10
    /* F29F4 800E3A44 A3AF0071 */  sb         $t7, 0x71($sp)
    /* F29F8 800E3A48 A3A00070 */  sb         $zero, 0x70($sp)
    /* F29FC 800E3A4C 00004825 */  or         $t1, $zero, $zero
    /* F2A00 800E3A50 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* F2A04 800E3A54 460E2182 */  mul.s      $f6, $f4, $f14
    /* F2A08 800E3A58 4458F800 */  cfc1       $t8, $31
    /* F2A0C 800E3A5C 44D9F800 */  ctc1       $t9, $31
    /* F2A10 800E3A60 00000000 */  nop
    /* F2A14 800E3A64 46003224 */  cvt.w.s    $f8, $f6
    /* F2A18 800E3A68 4459F800 */  cfc1       $t9, $31
    /* F2A1C 800E3A6C 00000000 */  nop
    /* F2A20 800E3A70 33390078 */  andi       $t9, $t9, 0x78
    /* F2A24 800E3A74 53200013 */  beql       $t9, $zero, .L800E3AC4_F2A74
    /* F2A28 800E3A78 44194000 */   mfc1      $t9, $f8
    /* F2A2C 800E3A7C 44814000 */  mtc1       $at, $f8
    /* F2A30 800E3A80 24190001 */  addiu      $t9, $zero, 0x1
    /* F2A34 800E3A84 46083201 */  sub.s      $f8, $f6, $f8
    /* F2A38 800E3A88 44D9F800 */  ctc1       $t9, $31
    /* F2A3C 800E3A8C 00000000 */  nop
    /* F2A40 800E3A90 46004224 */  cvt.w.s    $f8, $f8
    /* F2A44 800E3A94 4459F800 */  cfc1       $t9, $31
    /* F2A48 800E3A98 00000000 */  nop
    /* F2A4C 800E3A9C 33390078 */  andi       $t9, $t9, 0x78
    /* F2A50 800E3AA0 17200005 */  bnez       $t9, .L800E3AB8_F2A68
    /* F2A54 800E3AA4 00000000 */   nop
    /* F2A58 800E3AA8 44194000 */  mfc1       $t9, $f8
    /* F2A5C 800E3AAC 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* F2A60 800E3AB0 10000007 */  b          .L800E3AD0_F2A80
    /* F2A64 800E3AB4 0321C825 */   or        $t9, $t9, $at
  .L800E3AB8_F2A68:
    /* F2A68 800E3AB8 10000005 */  b          .L800E3AD0_F2A80
    /* F2A6C 800E3ABC 2419FFFF */   addiu     $t9, $zero, -0x1
    /* F2A70 800E3AC0 44194000 */  mfc1       $t9, $f8
  .L800E3AC4_F2A74:
    /* F2A74 800E3AC4 00000000 */  nop
    /* F2A78 800E3AC8 0720FFFB */  bltz       $t9, .L800E3AB8_F2A68
    /* F2A7C 800E3ACC 00000000 */   nop
  .L800E3AD0_F2A80:
    /* F2A80 800E3AD0 332E00FF */  andi       $t6, $t9, 0xFF
    /* F2A84 800E3AD4 44D8F800 */  ctc1       $t8, $31
    /* F2A88 800E3AD8 000E7843 */  sra        $t7, $t6, 1
    /* F2A8C 800E3ADC A3AF006E */  sb         $t7, 0x6E($sp)
    /* F2A90 800E3AE0 A3A0006B */  sb         $zero, 0x6B($sp)
    /* F2A94 800E3AE4 A3A0006A */  sb         $zero, 0x6A($sp)
  .L800E3AE8_F2A98:
    /* F2A98 800E3AE8 2418000C */  addiu      $t8, $zero, 0xC
    /* F2A9C 800E3AEC A7B80068 */  sh         $t8, 0x68($sp)
    /* F2AA0 800E3AF0 A3A9006F */  sb         $t1, 0x6F($sp)
    /* F2AA4 800E3AF4 A3AD006D */  sb         $t5, 0x6D($sp)
    /* F2AA8 800E3AF8 100002C5 */  b          .L800E4610_F35C0
    /* F2AAC 800E3AFC A3BF006C */   sb        $ra, 0x6C($sp)
    /* F2AB0 800E3B00 87A8009E */  lh         $t0, 0x9E($sp)
    /* F2AB4 800E3B04 241900FF */  addiu      $t9, $zero, 0xFF
    /* F2AB8 800E3B08 240D0096 */  addiu      $t5, $zero, 0x96
    /* F2ABC 800E3B0C 1503000D */  bne        $t0, $v1, .L800E3B44_F2AF4
    /* F2AC0 800E3B10 0000F825 */   or        $ra, $zero, $zero
    /* F2AC4 800E3B14 240E0096 */  addiu      $t6, $zero, 0x96
    /* F2AC8 800E3B18 240F00FF */  addiu      $t7, $zero, 0xFF
    /* F2ACC 800E3B1C 24180032 */  addiu      $t8, $zero, 0x32
    /* F2AD0 800E3B20 A3AF006E */  sb         $t7, 0x6E($sp)
    /* F2AD4 800E3B24 A3AE0070 */  sb         $t6, 0x70($sp)
    /* F2AD8 800E3B28 A3B90071 */  sb         $t9, 0x71($sp)
    /* F2ADC 800E3B2C 00004825 */  or         $t1, $zero, $zero
    /* F2AE0 800E3B30 A3B8006A */  sb         $t8, 0x6A($sp)
    /* F2AE4 800E3B34 240D00FF */  addiu      $t5, $zero, 0xFF
    /* F2AE8 800E3B38 241F0096 */  addiu      $ra, $zero, 0x96
    /* F2AEC 800E3B3C 1000002E */  b          .L800E3BF8_F2BA8
    /* F2AF0 800E3B40 A3A0006B */   sb        $zero, 0x6B($sp)
  .L800E3B44_F2AF4:
    /* F2AF4 800E3B44 44885000 */  mtc1       $t0, $f10
    /* F2AF8 800E3B48 240F0001 */  addiu      $t7, $zero, 0x1
    /* F2AFC 800E3B4C 24190096 */  addiu      $t9, $zero, 0x96
    /* F2B00 800E3B50 46805120 */  cvt.s.w    $f4, $f10
    /* F2B04 800E3B54 A3B90071 */  sb         $t9, 0x71($sp)
    /* F2B08 800E3B58 A3A00070 */  sb         $zero, 0x70($sp)
    /* F2B0C 800E3B5C 00004825 */  or         $t1, $zero, $zero
    /* F2B10 800E3B60 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* F2B14 800E3B64 460E2182 */  mul.s      $f6, $f4, $f14
    /* F2B18 800E3B68 444EF800 */  cfc1       $t6, $31
    /* F2B1C 800E3B6C 44CFF800 */  ctc1       $t7, $31
    /* F2B20 800E3B70 00000000 */  nop
    /* F2B24 800E3B74 46003224 */  cvt.w.s    $f8, $f6
    /* F2B28 800E3B78 444FF800 */  cfc1       $t7, $31
    /* F2B2C 800E3B7C 00000000 */  nop
    /* F2B30 800E3B80 31EF0078 */  andi       $t7, $t7, 0x78
    /* F2B34 800E3B84 51E00013 */  beql       $t7, $zero, .L800E3BD4_F2B84
    /* F2B38 800E3B88 440F4000 */   mfc1      $t7, $f8
    /* F2B3C 800E3B8C 44814000 */  mtc1       $at, $f8
    /* F2B40 800E3B90 240F0001 */  addiu      $t7, $zero, 0x1
    /* F2B44 800E3B94 46083201 */  sub.s      $f8, $f6, $f8
    /* F2B48 800E3B98 44CFF800 */  ctc1       $t7, $31
    /* F2B4C 800E3B9C 00000000 */  nop
    /* F2B50 800E3BA0 46004224 */  cvt.w.s    $f8, $f8
    /* F2B54 800E3BA4 444FF800 */  cfc1       $t7, $31
    /* F2B58 800E3BA8 00000000 */  nop
    /* F2B5C 800E3BAC 31EF0078 */  andi       $t7, $t7, 0x78
    /* F2B60 800E3BB0 15E00005 */  bnez       $t7, .L800E3BC8_F2B78
    /* F2B64 800E3BB4 00000000 */   nop
    /* F2B68 800E3BB8 440F4000 */  mfc1       $t7, $f8
    /* F2B6C 800E3BBC 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* F2B70 800E3BC0 10000007 */  b          .L800E3BE0_F2B90
    /* F2B74 800E3BC4 01E17825 */   or        $t7, $t7, $at
  .L800E3BC8_F2B78:
    /* F2B78 800E3BC8 10000005 */  b          .L800E3BE0_F2B90
    /* F2B7C 800E3BCC 240FFFFF */   addiu     $t7, $zero, -0x1
    /* F2B80 800E3BD0 440F4000 */  mfc1       $t7, $f8
  .L800E3BD4_F2B84:
    /* F2B84 800E3BD4 00000000 */  nop
    /* F2B88 800E3BD8 05E0FFFB */  bltz       $t7, .L800E3BC8_F2B78
    /* F2B8C 800E3BDC 00000000 */   nop
  .L800E3BE0_F2B90:
    /* F2B90 800E3BE0 31F800FF */  andi       $t8, $t7, 0xFF
    /* F2B94 800E3BE4 44CEF800 */  ctc1       $t6, $31
    /* F2B98 800E3BE8 0018C843 */  sra        $t9, $t8, 1
    /* F2B9C 800E3BEC A3B9006E */  sb         $t9, 0x6E($sp)
    /* F2BA0 800E3BF0 A3A0006B */  sb         $zero, 0x6B($sp)
    /* F2BA4 800E3BF4 A3A0006A */  sb         $zero, 0x6A($sp)
  .L800E3BF8_F2BA8:
    /* F2BA8 800E3BF8 240E000A */  addiu      $t6, $zero, 0xA
    /* F2BAC 800E3BFC A7AE0068 */  sh         $t6, 0x68($sp)
    /* F2BB0 800E3C00 A3A9006F */  sb         $t1, 0x6F($sp)
    /* F2BB4 800E3C04 A3AD006D */  sb         $t5, 0x6D($sp)
    /* F2BB8 800E3C08 10000281 */  b          .L800E4610_F35C0
    /* F2BBC 800E3C0C A3BF006C */   sb        $ra, 0x6C($sp)
    /* F2BC0 800E3C10 87A8009E */  lh         $t0, 0x9E($sp)
    /* F2BC4 800E3C14 246FFFFF */  addiu      $t7, $v1, -0x1
    /* F2BC8 800E3C18 240D00FF */  addiu      $t5, $zero, 0xFF
    /* F2BCC 800E3C1C 010F082A */  slt        $at, $t0, $t7
    /* F2BD0 800E3C20 1420001E */  bnez       $at, .L800E3C9C_F2C4C
    /* F2BD4 800E3C24 241F00FF */   addiu     $ra, $zero, 0xFF
    /* F2BD8 800E3C28 241800FF */  addiu      $t8, $zero, 0xFF
    /* F2BDC 800E3C2C A3B80071 */  sb         $t8, 0x71($sp)
    /* F2BE0 800E3C30 241F0064 */  addiu      $ra, $zero, 0x64
    /* F2BE4 800E3C34 241900FF */  addiu      $t9, $zero, 0xFF
    /* F2BE8 800E3C38 24090078 */  addiu      $t1, $zero, 0x78
    /* F2BEC 800E3C3C 240E00FF */  addiu      $t6, $zero, 0xFF
    /* F2BF0 800E3C40 24180032 */  addiu      $t8, $zero, 0x32
    /* F2BF4 800E3C44 240D00FF */  addiu      $t5, $zero, 0xFF
    /* F2BF8 800E3C48 240F0064 */  addiu      $t7, $zero, 0x64
    /* F2BFC 800E3C4C A3BF006C */  sb         $ra, 0x6C($sp)
    /* F2C00 800E3C50 A3AE006E */  sb         $t6, 0x6E($sp)
    /* F2C04 800E3C54 A3B90070 */  sb         $t9, 0x70($sp)
    /* F2C08 800E3C58 A3AF006B */  sb         $t7, 0x6B($sp)
    /* F2C0C 800E3C5C A3B8006A */  sb         $t8, 0x6A($sp)
    /* F2C10 800E3C60 A3AD006D */  sb         $t5, 0x6D($sp)
    /* F2C14 800E3C64 A3A9006F */  sb         $t1, 0x6F($sp)
    /* F2C18 800E3C68 87A4008E */  lh         $a0, 0x8E($sp)
    /* F2C1C 800E3C6C 87A50092 */  lh         $a1, 0x92($sp)
    /* F2C20 800E3C70 87A60096 */  lh         $a2, 0x96($sp)
    /* F2C24 800E3C74 3C074000 */  lui        $a3, (0x40000000 >> 16)
    /* F2C28 800E3C78 AFAA0018 */  sw         $t2, 0x18($sp)
    /* F2C2C 800E3C7C 0C04D751 */  jal        func_80135D44_144CF4
    /* F2C30 800E3C80 A7AB007E */   sh        $t3, 0x7E($sp)
    /* F2C34 800E3C84 93A9006F */  lbu        $t1, 0x6F($sp)
    /* F2C38 800E3C88 8FAA0018 */  lw         $t2, 0x18($sp)
    /* F2C3C 800E3C8C 87AB007E */  lh         $t3, 0x7E($sp)
    /* F2C40 800E3C90 93AD006D */  lbu        $t5, 0x6D($sp)
    /* F2C44 800E3C94 10000030 */  b          .L800E3D58_F2D08
    /* F2C48 800E3C98 93BF006C */   lbu       $ra, 0x6C($sp)
  .L800E3C9C_F2C4C:
    /* F2C4C 800E3C9C 44885000 */  mtc1       $t0, $f10
    /* F2C50 800E3CA0 24180001 */  addiu      $t8, $zero, 0x1
    /* F2C54 800E3CA4 241900AA */  addiu      $t9, $zero, 0xAA
    /* F2C58 800E3CA8 46805120 */  cvt.s.w    $f4, $f10
    /* F2C5C 800E3CAC 240E00AA */  addiu      $t6, $zero, 0xAA
    /* F2C60 800E3CB0 A3AE0070 */  sb         $t6, 0x70($sp)
    /* F2C64 800E3CB4 A3B90071 */  sb         $t9, 0x71($sp)
    /* F2C68 800E3CB8 24090064 */  addiu      $t1, $zero, 0x64
    /* F2C6C 800E3CBC 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* F2C70 800E3CC0 460E2182 */  mul.s      $f6, $f4, $f14
    /* F2C74 800E3CC4 444FF800 */  cfc1       $t7, $31
    /* F2C78 800E3CC8 44D8F800 */  ctc1       $t8, $31
    /* F2C7C 800E3CCC 00000000 */  nop
    /* F2C80 800E3CD0 46003224 */  cvt.w.s    $f8, $f6
    /* F2C84 800E3CD4 4458F800 */  cfc1       $t8, $31
    /* F2C88 800E3CD8 00000000 */  nop
    /* F2C8C 800E3CDC 33180078 */  andi       $t8, $t8, 0x78
    /* F2C90 800E3CE0 53000013 */  beql       $t8, $zero, .L800E3D30_F2CE0
    /* F2C94 800E3CE4 44184000 */   mfc1      $t8, $f8
    /* F2C98 800E3CE8 44814000 */  mtc1       $at, $f8
    /* F2C9C 800E3CEC 24180001 */  addiu      $t8, $zero, 0x1
    /* F2CA0 800E3CF0 46083201 */  sub.s      $f8, $f6, $f8
    /* F2CA4 800E3CF4 44D8F800 */  ctc1       $t8, $31
    /* F2CA8 800E3CF8 00000000 */  nop
    /* F2CAC 800E3CFC 46004224 */  cvt.w.s    $f8, $f8
    /* F2CB0 800E3D00 4458F800 */  cfc1       $t8, $31
    /* F2CB4 800E3D04 00000000 */  nop
    /* F2CB8 800E3D08 33180078 */  andi       $t8, $t8, 0x78
    /* F2CBC 800E3D0C 17000005 */  bnez       $t8, .L800E3D24_F2CD4
    /* F2CC0 800E3D10 00000000 */   nop
    /* F2CC4 800E3D14 44184000 */  mfc1       $t8, $f8
    /* F2CC8 800E3D18 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* F2CCC 800E3D1C 10000007 */  b          .L800E3D3C_F2CEC
    /* F2CD0 800E3D20 0301C025 */   or        $t8, $t8, $at
  .L800E3D24_F2CD4:
    /* F2CD4 800E3D24 10000005 */  b          .L800E3D3C_F2CEC
    /* F2CD8 800E3D28 2418FFFF */   addiu     $t8, $zero, -0x1
    /* F2CDC 800E3D2C 44184000 */  mfc1       $t8, $f8
  .L800E3D30_F2CE0:
    /* F2CE0 800E3D30 00000000 */  nop
    /* F2CE4 800E3D34 0700FFFB */  bltz       $t8, .L800E3D24_F2CD4
    /* F2CE8 800E3D38 00000000 */   nop
  .L800E3D3C_F2CEC:
    /* F2CEC 800E3D3C 44CFF800 */  ctc1       $t7, $31
    /* F2CF0 800E3D40 331900FF */  andi       $t9, $t8, 0xFF
    /* F2CF4 800E3D44 00197043 */  sra        $t6, $t9, 1
    /* F2CF8 800E3D48 240F00FF */  addiu      $t7, $zero, 0xFF
    /* F2CFC 800E3D4C A3AE006E */  sb         $t6, 0x6E($sp)
    /* F2D00 800E3D50 A3AF006B */  sb         $t7, 0x6B($sp)
    /* F2D04 800E3D54 A3A0006A */  sb         $zero, 0x6A($sp)
  .L800E3D58_F2D08:
    /* F2D08 800E3D58 2418001E */  addiu      $t8, $zero, 0x1E
    /* F2D0C 800E3D5C A7B80068 */  sh         $t8, 0x68($sp)
    /* F2D10 800E3D60 A3A9006F */  sb         $t1, 0x6F($sp)
    /* F2D14 800E3D64 A3AD006D */  sb         $t5, 0x6D($sp)
    /* F2D18 800E3D68 10000229 */  b          .L800E4610_F35C0
    /* F2D1C 800E3D6C A3BF006C */   sb        $ra, 0x6C($sp)
    /* F2D20 800E3D70 241900FF */  addiu      $t9, $zero, 0xFF
    /* F2D24 800E3D74 240E00FF */  addiu      $t6, $zero, 0xFF
    /* F2D28 800E3D78 A3AE0070 */  sb         $t6, 0x70($sp)
    /* F2D2C 800E3D7C A3B90071 */  sb         $t9, 0x71($sp)
    /* F2D30 800E3D80 24090078 */  addiu      $t1, $zero, 0x78
    /* F2D34 800E3D84 240F00FF */  addiu      $t7, $zero, 0xFF
    /* F2D38 800E3D88 24190032 */  addiu      $t9, $zero, 0x32
    /* F2D3C 800E3D8C 240D00FF */  addiu      $t5, $zero, 0xFF
    /* F2D40 800E3D90 241F0064 */  addiu      $ra, $zero, 0x64
    /* F2D44 800E3D94 24180064 */  addiu      $t8, $zero, 0x64
    /* F2D48 800E3D98 240E000F */  addiu      $t6, $zero, 0xF
    /* F2D4C 800E3D9C A3AF006E */  sb         $t7, 0x6E($sp)
    /* F2D50 800E3DA0 A3B8006B */  sb         $t8, 0x6B($sp)
    /* F2D54 800E3DA4 A3B9006A */  sb         $t9, 0x6A($sp)
    /* F2D58 800E3DA8 A7AE0068 */  sh         $t6, 0x68($sp)
    /* F2D5C 800E3DAC A3BF006C */  sb         $ra, 0x6C($sp)
    /* F2D60 800E3DB0 A3AD006D */  sb         $t5, 0x6D($sp)
    /* F2D64 800E3DB4 10000216 */  b          .L800E4610_F35C0
    /* F2D68 800E3DB8 A3A9006F */   sb        $t1, 0x6F($sp)
    /* F2D6C 800E3DBC 87A8009E */  lh         $t0, 0x9E($sp)
    /* F2D70 800E3DC0 240D00FF */  addiu      $t5, $zero, 0xFF
    /* F2D74 800E3DC4 241F0064 */  addiu      $ra, $zero, 0x64
    /* F2D78 800E3DC8 1503000F */  bne        $t0, $v1, .L800E3E08_F2DB8
    /* F2D7C 800E3DCC 00681023 */   subu      $v0, $v1, $t0
    /* F2D80 800E3DD0 240F00FF */  addiu      $t7, $zero, 0xFF
    /* F2D84 800E3DD4 A3AF0071 */  sb         $t7, 0x71($sp)
    /* F2D88 800E3DD8 241800FF */  addiu      $t8, $zero, 0xFF
    /* F2D8C 800E3DDC 241900FF */  addiu      $t9, $zero, 0xFF
    /* F2D90 800E3DE0 240F0032 */  addiu      $t7, $zero, 0x32
    /* F2D94 800E3DE4 240E0064 */  addiu      $t6, $zero, 0x64
    /* F2D98 800E3DE8 A3B9006E */  sb         $t9, 0x6E($sp)
    /* F2D9C 800E3DEC A3B80070 */  sb         $t8, 0x70($sp)
    /* F2DA0 800E3DF0 24090078 */  addiu      $t1, $zero, 0x78
    /* F2DA4 800E3DF4 A3AE006B */  sb         $t6, 0x6B($sp)
    /* F2DA8 800E3DF8 A3AF006A */  sb         $t7, 0x6A($sp)
    /* F2DAC 800E3DFC 240D00FF */  addiu      $t5, $zero, 0xFF
    /* F2DB0 800E3E00 10000058 */  b          .L800E3F64_F2F14
    /* F2DB4 800E3E04 241F0064 */   addiu     $ra, $zero, 0x64
  .L800E3E08_F2DB8:
    /* F2DB8 800E3E08 0002C400 */  sll        $t8, $v0, 16
    /* F2DBC 800E3E0C 00181403 */  sra        $v0, $t8, 16
    /* F2DC0 800E3E10 44825000 */  mtc1       $v0, $f10
    /* F2DC4 800E3E14 3C01437F */  lui        $at, (0x437F0000 >> 16)
    /* F2DC8 800E3E18 44818000 */  mtc1       $at, $f16
    /* F2DCC 800E3E1C 46805120 */  cvt.s.w    $f4, $f10
    /* F2DD0 800E3E20 24180001 */  addiu      $t8, $zero, 0x1
    /* F2DD4 800E3E24 240E00FF */  addiu      $t6, $zero, 0xFF
    /* F2DD8 800E3E28 A3AE0071 */  sb         $t6, 0x71($sp)
    /* F2DDC 800E3E2C 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* F2DE0 800E3E30 460E2182 */  mul.s      $f6, $f4, $f14
    /* F2DE4 800E3E34 46068201 */  sub.s      $f8, $f16, $f6
    /* F2DE8 800E3E38 444FF800 */  cfc1       $t7, $31
    /* F2DEC 800E3E3C 44D8F800 */  ctc1       $t8, $31
    /* F2DF0 800E3E40 00000000 */  nop
    /* F2DF4 800E3E44 460042A4 */  cvt.w.s    $f10, $f8
    /* F2DF8 800E3E48 4458F800 */  cfc1       $t8, $31
    /* F2DFC 800E3E4C 00000000 */  nop
    /* F2E00 800E3E50 33180078 */  andi       $t8, $t8, 0x78
    /* F2E04 800E3E54 53000013 */  beql       $t8, $zero, .L800E3EA4_F2E54
    /* F2E08 800E3E58 44185000 */   mfc1      $t8, $f10
    /* F2E0C 800E3E5C 44815000 */  mtc1       $at, $f10
    /* F2E10 800E3E60 24180001 */  addiu      $t8, $zero, 0x1
    /* F2E14 800E3E64 460A4281 */  sub.s      $f10, $f8, $f10
    /* F2E18 800E3E68 44D8F800 */  ctc1       $t8, $31
    /* F2E1C 800E3E6C 00000000 */  nop
    /* F2E20 800E3E70 460052A4 */  cvt.w.s    $f10, $f10
    /* F2E24 800E3E74 4458F800 */  cfc1       $t8, $31
    /* F2E28 800E3E78 00000000 */  nop
    /* F2E2C 800E3E7C 33180078 */  andi       $t8, $t8, 0x78
    /* F2E30 800E3E80 17000005 */  bnez       $t8, .L800E3E98_F2E48
    /* F2E34 800E3E84 00000000 */   nop
    /* F2E38 800E3E88 44185000 */  mfc1       $t8, $f10
    /* F2E3C 800E3E8C 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* F2E40 800E3E90 10000007 */  b          .L800E3EB0_F2E60
    /* F2E44 800E3E94 0301C025 */   or        $t8, $t8, $at
  .L800E3E98_F2E48:
    /* F2E48 800E3E98 10000005 */  b          .L800E3EB0_F2E60
    /* F2E4C 800E3E9C 2418FFFF */   addiu     $t8, $zero, -0x1
    /* F2E50 800E3EA0 44185000 */  mfc1       $t8, $f10
  .L800E3EA4_F2E54:
    /* F2E54 800E3EA4 00000000 */  nop
    /* F2E58 800E3EA8 0700FFFB */  bltz       $t8, .L800E3E98_F2E48
    /* F2E5C 800E3EAC 00000000 */   nop
  .L800E3EB0_F2E60:
    /* F2E60 800E3EB0 44CFF800 */  ctc1       $t7, $31
    /* F2E64 800E3EB4 44882000 */  mtc1       $t0, $f4
    /* F2E68 800E3EB8 240E0001 */  addiu      $t6, $zero, 0x1
    /* F2E6C 800E3EBC A3B80070 */  sb         $t8, 0x70($sp)
    /* F2E70 800E3EC0 468021A0 */  cvt.s.w    $f6, $f4
    /* F2E74 800E3EC4 00004825 */  or         $t1, $zero, $zero
    /* F2E78 800E3EC8 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* F2E7C 800E3ECC 460E3202 */  mul.s      $f8, $f6, $f14
    /* F2E80 800E3ED0 4459F800 */  cfc1       $t9, $31
    /* F2E84 800E3ED4 44CEF800 */  ctc1       $t6, $31
    /* F2E88 800E3ED8 00000000 */  nop
    /* F2E8C 800E3EDC 460042A4 */  cvt.w.s    $f10, $f8
    /* F2E90 800E3EE0 444EF800 */  cfc1       $t6, $31
    /* F2E94 800E3EE4 00000000 */  nop
    /* F2E98 800E3EE8 31CE0078 */  andi       $t6, $t6, 0x78
    /* F2E9C 800E3EEC 51C00013 */  beql       $t6, $zero, .L800E3F3C_F2EEC
    /* F2EA0 800E3EF0 440E5000 */   mfc1      $t6, $f10
    /* F2EA4 800E3EF4 44815000 */  mtc1       $at, $f10
    /* F2EA8 800E3EF8 240E0001 */  addiu      $t6, $zero, 0x1
    /* F2EAC 800E3EFC 460A4281 */  sub.s      $f10, $f8, $f10
    /* F2EB0 800E3F00 44CEF800 */  ctc1       $t6, $31
    /* F2EB4 800E3F04 00000000 */  nop
    /* F2EB8 800E3F08 460052A4 */  cvt.w.s    $f10, $f10
    /* F2EBC 800E3F0C 444EF800 */  cfc1       $t6, $31
    /* F2EC0 800E3F10 00000000 */  nop
    /* F2EC4 800E3F14 31CE0078 */  andi       $t6, $t6, 0x78
    /* F2EC8 800E3F18 15C00005 */  bnez       $t6, .L800E3F30_F2EE0
    /* F2ECC 800E3F1C 00000000 */   nop
    /* F2ED0 800E3F20 440E5000 */  mfc1       $t6, $f10
    /* F2ED4 800E3F24 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* F2ED8 800E3F28 10000007 */  b          .L800E3F48_F2EF8
    /* F2EDC 800E3F2C 01C17025 */   or        $t6, $t6, $at
  .L800E3F30_F2EE0:
    /* F2EE0 800E3F30 10000005 */  b          .L800E3F48_F2EF8
    /* F2EE4 800E3F34 240EFFFF */   addiu     $t6, $zero, -0x1
    /* F2EE8 800E3F38 440E5000 */  mfc1       $t6, $f10
  .L800E3F3C_F2EEC:
    /* F2EEC 800E3F3C 00000000 */  nop
    /* F2EF0 800E3F40 05C0FFFB */  bltz       $t6, .L800E3F30_F2EE0
    /* F2EF4 800E3F44 00000000 */   nop
  .L800E3F48_F2EF8:
    /* F2EF8 800E3F48 44D9F800 */  ctc1       $t9, $31
    /* F2EFC 800E3F4C 31CF00FF */  andi       $t7, $t6, 0xFF
    /* F2F00 800E3F50 000FC043 */  sra        $t8, $t7, 1
    /* F2F04 800E3F54 24190064 */  addiu      $t9, $zero, 0x64
    /* F2F08 800E3F58 A3B8006E */  sb         $t8, 0x6E($sp)
    /* F2F0C 800E3F5C A3B9006B */  sb         $t9, 0x6B($sp)
    /* F2F10 800E3F60 A3A0006A */  sb         $zero, 0x6A($sp)
  .L800E3F64_F2F14:
    /* F2F14 800E3F64 240E000A */  addiu      $t6, $zero, 0xA
    /* F2F18 800E3F68 A7AE0068 */  sh         $t6, 0x68($sp)
    /* F2F1C 800E3F6C A3A9006F */  sb         $t1, 0x6F($sp)
    /* F2F20 800E3F70 A3AD006D */  sb         $t5, 0x6D($sp)
    /* F2F24 800E3F74 100001A6 */  b          .L800E4610_F35C0
    /* F2F28 800E3F78 A3BF006C */   sb        $ra, 0x6C($sp)
    /* F2F2C 800E3F7C 87A8009E */  lh         $t0, 0x9E($sp)
    /* F2F30 800E3F80 240F00DC */  addiu      $t7, $zero, 0xDC
    /* F2F34 800E3F84 3C01437F */  lui        $at, (0x437F0000 >> 16)
    /* F2F38 800E3F88 1503000D */  bne        $t0, $v1, .L800E3FC0_F2F70
    /* F2F3C 800E3F8C 00681023 */   subu      $v0, $v1, $t0
    /* F2F40 800E3F90 2418008C */  addiu      $t8, $zero, 0x8C
    /* F2F44 800E3F94 241900FF */  addiu      $t9, $zero, 0xFF
    /* F2F48 800E3F98 240E00FF */  addiu      $t6, $zero, 0xFF
    /* F2F4C 800E3F9C A3B9006E */  sb         $t9, 0x6E($sp)
    /* F2F50 800E3FA0 A3B80070 */  sb         $t8, 0x70($sp)
    /* F2F54 800E3FA4 A3AF0071 */  sb         $t7, 0x71($sp)
    /* F2F58 800E3FA8 00004825 */  or         $t1, $zero, $zero
    /* F2F5C 800E3FAC A3AE006A */  sb         $t6, 0x6A($sp)
    /* F2F60 800E3FB0 240D00DC */  addiu      $t5, $zero, 0xDC
    /* F2F64 800E3FB4 241F008C */  addiu      $ra, $zero, 0x8C
    /* F2F68 800E3FB8 1000012D */  b          .L800E4470_F3420
    /* F2F6C 800E3FBC A3A0006B */   sb        $zero, 0x6B($sp)
  .L800E3FC0_F2F70:
    /* F2F70 800E3FC0 44818000 */  mtc1       $at, $f16
    /* F2F74 800E3FC4 44842000 */  mtc1       $a0, $f4
    /* F2F78 800E3FC8 3C014040 */  lui        $at, (0x40400000 >> 16)
    /* F2F7C 800E3FCC 44819000 */  mtc1       $at, $f18
    /* F2F80 800E3FD0 00027C00 */  sll        $t7, $v0, 16
    /* F2F84 800E3FD4 000F1403 */  sra        $v0, $t7, 16
    /* F2F88 800E3FD8 04810005 */  bgez       $a0, .L800E3FF0_F2FA0
    /* F2F8C 800E3FDC 46802020 */   cvt.s.w   $f0, $f4
    /* F2F90 800E3FE0 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* F2F94 800E3FE4 44813000 */  mtc1       $at, $f6
    /* F2F98 800E3FE8 00000000 */  nop
    /* F2F9C 800E3FEC 46060000 */  add.s      $f0, $f0, $f6
  .L800E3FF0_F2FA0:
    /* F2FA0 800E3FF0 3C01420C */  lui        $at, (0x420C0000 >> 16)
    /* F2FA4 800E3FF4 44815000 */  mtc1       $at, $f10
    /* F2FA8 800E3FF8 44824000 */  mtc1       $v0, $f8
    /* F2FAC 800E3FFC 3C01435C */  lui        $at, (0x435C0000 >> 16)
    /* F2FB0 800E4000 46005103 */  div.s      $f4, $f10, $f0
    /* F2FB4 800E4004 44815000 */  mtc1       $at, $f10
    /* F2FB8 800E4008 24180001 */  addiu      $t8, $zero, 0x1
    /* F2FBC 800E400C 240E0001 */  addiu      $t6, $zero, 0x1
    /* F2FC0 800E4010 46804320 */  cvt.s.w    $f12, $f8
    /* F2FC4 800E4014 460C2182 */  mul.s      $f6, $f4, $f12
    /* F2FC8 800E4018 00000000 */  nop
    /* F2FCC 800E401C 46123202 */  mul.s      $f8, $f6, $f18
    /* F2FD0 800E4020 460A4080 */  add.s      $f2, $f8, $f10
    /* F2FD4 800E4024 4602803C */  c.lt.s     $f16, $f2
    /* F2FD8 800E4028 00000000 */  nop
    /* F2FDC 800E402C 45000022 */  bc1f       .L800E40B8_F3068
    /* F2FE0 800E4030 00000000 */   nop
    /* F2FE4 800E4034 4459F800 */  cfc1       $t9, $31
    /* F2FE8 800E4038 44CEF800 */  ctc1       $t6, $31
    /* F2FEC 800E403C 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* F2FF0 800E4040 46008124 */  cvt.w.s    $f4, $f16
    /* F2FF4 800E4044 444EF800 */  cfc1       $t6, $31
    /* F2FF8 800E4048 00000000 */  nop
    /* F2FFC 800E404C 31CE0078 */  andi       $t6, $t6, 0x78
    /* F3000 800E4050 51C00013 */  beql       $t6, $zero, .L800E40A0_F3050
    /* F3004 800E4054 440E2000 */   mfc1      $t6, $f4
    /* F3008 800E4058 44812000 */  mtc1       $at, $f4
    /* F300C 800E405C 240E0001 */  addiu      $t6, $zero, 0x1
    /* F3010 800E4060 46048101 */  sub.s      $f4, $f16, $f4
    /* F3014 800E4064 44CEF800 */  ctc1       $t6, $31
    /* F3018 800E4068 00000000 */  nop
    /* F301C 800E406C 46002124 */  cvt.w.s    $f4, $f4
    /* F3020 800E4070 444EF800 */  cfc1       $t6, $31
    /* F3024 800E4074 00000000 */  nop
    /* F3028 800E4078 31CE0078 */  andi       $t6, $t6, 0x78
    /* F302C 800E407C 15C00005 */  bnez       $t6, .L800E4094_F3044
    /* F3030 800E4080 00000000 */   nop
    /* F3034 800E4084 440E2000 */  mfc1       $t6, $f4
    /* F3038 800E4088 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* F303C 800E408C 10000007 */  b          .L800E40AC_F305C
    /* F3040 800E4090 01C17025 */   or        $t6, $t6, $at
  .L800E4094_F3044:
    /* F3044 800E4094 10000005 */  b          .L800E40AC_F305C
    /* F3048 800E4098 240EFFFF */   addiu     $t6, $zero, -0x1
    /* F304C 800E409C 440E2000 */  mfc1       $t6, $f4
  .L800E40A0_F3050:
    /* F3050 800E40A0 00000000 */  nop
    /* F3054 800E40A4 05C0FFFB */  bltz       $t6, .L800E4094_F3044
    /* F3058 800E40A8 00000000 */   nop
  .L800E40AC_F305C:
    /* F305C 800E40AC 44D9F800 */  ctc1       $t9, $31
    /* F3060 800E40B0 10000022 */  b          .L800E413C_F30EC
    /* F3064 800E40B4 A3AE0071 */   sb        $t6, 0x71($sp)
  .L800E40B8_F3068:
    /* F3068 800E40B8 444FF800 */  cfc1       $t7, $31
    /* F306C 800E40BC 44D8F800 */  ctc1       $t8, $31
    /* F3070 800E40C0 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* F3074 800E40C4 460011A4 */  cvt.w.s    $f6, $f2
    /* F3078 800E40C8 4458F800 */  cfc1       $t8, $31
    /* F307C 800E40CC 00000000 */  nop
    /* F3080 800E40D0 33180078 */  andi       $t8, $t8, 0x78
    /* F3084 800E40D4 53000013 */  beql       $t8, $zero, .L800E4124_F30D4
    /* F3088 800E40D8 44183000 */   mfc1      $t8, $f6
    /* F308C 800E40DC 44813000 */  mtc1       $at, $f6
    /* F3090 800E40E0 24180001 */  addiu      $t8, $zero, 0x1
    /* F3094 800E40E4 46061181 */  sub.s      $f6, $f2, $f6
    /* F3098 800E40E8 44D8F800 */  ctc1       $t8, $31
    /* F309C 800E40EC 00000000 */  nop
    /* F30A0 800E40F0 460031A4 */  cvt.w.s    $f6, $f6
    /* F30A4 800E40F4 4458F800 */  cfc1       $t8, $31
    /* F30A8 800E40F8 00000000 */  nop
    /* F30AC 800E40FC 33180078 */  andi       $t8, $t8, 0x78
    /* F30B0 800E4100 17000005 */  bnez       $t8, .L800E4118_F30C8
    /* F30B4 800E4104 00000000 */   nop
    /* F30B8 800E4108 44183000 */  mfc1       $t8, $f6
    /* F30BC 800E410C 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* F30C0 800E4110 10000007 */  b          .L800E4130_F30E0
    /* F30C4 800E4114 0301C025 */   or        $t8, $t8, $at
  .L800E4118_F30C8:
    /* F30C8 800E4118 10000005 */  b          .L800E4130_F30E0
    /* F30CC 800E411C 2418FFFF */   addiu     $t8, $zero, -0x1
    /* F30D0 800E4120 44183000 */  mfc1       $t8, $f6
  .L800E4124_F30D4:
    /* F30D4 800E4124 00000000 */  nop
    /* F30D8 800E4128 0700FFFB */  bltz       $t8, .L800E4118_F30C8
    /* F30DC 800E412C 00000000 */   nop
  .L800E4130_F30E0:
    /* F30E0 800E4130 44CFF800 */  ctc1       $t7, $31
    /* F30E4 800E4134 A3B80071 */  sb         $t8, 0x71($sp)
    /* F30E8 800E4138 00000000 */  nop
  .L800E413C_F30EC:
    /* F30EC 800E413C 3C0142E6 */  lui        $at, (0x42E60000 >> 16)
    /* F30F0 800E4140 44814000 */  mtc1       $at, $f8
    /* F30F4 800E4144 3C01430C */  lui        $at, (0x430C0000 >> 16)
    /* F30F8 800E4148 24180001 */  addiu      $t8, $zero, 0x1
    /* F30FC 800E414C 46004283 */  div.s      $f10, $f8, $f0
    /* F3100 800E4150 44814000 */  mtc1       $at, $f8
    /* F3104 800E4154 240E0001 */  addiu      $t6, $zero, 0x1
    /* F3108 800E4158 24090001 */  addiu      $t1, $zero, 0x1
    /* F310C 800E415C 460C5102 */  mul.s      $f4, $f10, $f12
    /* F3110 800E4160 00000000 */  nop
    /* F3114 800E4164 46122182 */  mul.s      $f6, $f4, $f18
    /* F3118 800E4168 46083080 */  add.s      $f2, $f6, $f8
    /* F311C 800E416C 4602803C */  c.lt.s     $f16, $f2
    /* F3120 800E4170 00000000 */  nop
    /* F3124 800E4174 45000022 */  bc1f       .L800E4200_F31B0
    /* F3128 800E4178 00000000 */   nop
    /* F312C 800E417C 4459F800 */  cfc1       $t9, $31
    /* F3130 800E4180 44CEF800 */  ctc1       $t6, $31
    /* F3134 800E4184 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* F3138 800E4188 460082A4 */  cvt.w.s    $f10, $f16
    /* F313C 800E418C 444EF800 */  cfc1       $t6, $31
    /* F3140 800E4190 00000000 */  nop
    /* F3144 800E4194 31CE0078 */  andi       $t6, $t6, 0x78
    /* F3148 800E4198 51C00013 */  beql       $t6, $zero, .L800E41E8_F3198
    /* F314C 800E419C 440E5000 */   mfc1      $t6, $f10
    /* F3150 800E41A0 44815000 */  mtc1       $at, $f10
    /* F3154 800E41A4 240E0001 */  addiu      $t6, $zero, 0x1
    /* F3158 800E41A8 460A8281 */  sub.s      $f10, $f16, $f10
    /* F315C 800E41AC 44CEF800 */  ctc1       $t6, $31
    /* F3160 800E41B0 00000000 */  nop
    /* F3164 800E41B4 460052A4 */  cvt.w.s    $f10, $f10
    /* F3168 800E41B8 444EF800 */  cfc1       $t6, $31
    /* F316C 800E41BC 00000000 */  nop
    /* F3170 800E41C0 31CE0078 */  andi       $t6, $t6, 0x78
    /* F3174 800E41C4 15C00005 */  bnez       $t6, .L800E41DC_F318C
    /* F3178 800E41C8 00000000 */   nop
    /* F317C 800E41CC 440E5000 */  mfc1       $t6, $f10
    /* F3180 800E41D0 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* F3184 800E41D4 10000007 */  b          .L800E41F4_F31A4
    /* F3188 800E41D8 01C17025 */   or        $t6, $t6, $at
  .L800E41DC_F318C:
    /* F318C 800E41DC 10000005 */  b          .L800E41F4_F31A4
    /* F3190 800E41E0 240EFFFF */   addiu     $t6, $zero, -0x1
    /* F3194 800E41E4 440E5000 */  mfc1       $t6, $f10
  .L800E41E8_F3198:
    /* F3198 800E41E8 00000000 */  nop
    /* F319C 800E41EC 05C0FFFB */  bltz       $t6, .L800E41DC_F318C
    /* F31A0 800E41F0 00000000 */   nop
  .L800E41F4_F31A4:
    /* F31A4 800E41F4 44D9F800 */  ctc1       $t9, $31
    /* F31A8 800E41F8 10000022 */  b          .L800E4284_F3234
    /* F31AC 800E41FC A3AE0070 */   sb        $t6, 0x70($sp)
  .L800E4200_F31B0:
    /* F31B0 800E4200 444FF800 */  cfc1       $t7, $31
    /* F31B4 800E4204 44D8F800 */  ctc1       $t8, $31
    /* F31B8 800E4208 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* F31BC 800E420C 46001124 */  cvt.w.s    $f4, $f2
    /* F31C0 800E4210 4458F800 */  cfc1       $t8, $31
    /* F31C4 800E4214 00000000 */  nop
    /* F31C8 800E4218 33180078 */  andi       $t8, $t8, 0x78
    /* F31CC 800E421C 53000013 */  beql       $t8, $zero, .L800E426C_F321C
    /* F31D0 800E4220 44182000 */   mfc1      $t8, $f4
    /* F31D4 800E4224 44812000 */  mtc1       $at, $f4
    /* F31D8 800E4228 24180001 */  addiu      $t8, $zero, 0x1
    /* F31DC 800E422C 46041101 */  sub.s      $f4, $f2, $f4
    /* F31E0 800E4230 44D8F800 */  ctc1       $t8, $31
    /* F31E4 800E4234 00000000 */  nop
    /* F31E8 800E4238 46002124 */  cvt.w.s    $f4, $f4
    /* F31EC 800E423C 4458F800 */  cfc1       $t8, $31
    /* F31F0 800E4240 00000000 */  nop
    /* F31F4 800E4244 33180078 */  andi       $t8, $t8, 0x78
    /* F31F8 800E4248 17000005 */  bnez       $t8, .L800E4260_F3210
    /* F31FC 800E424C 00000000 */   nop
    /* F3200 800E4250 44182000 */  mfc1       $t8, $f4
    /* F3204 800E4254 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* F3208 800E4258 10000007 */  b          .L800E4278_F3228
    /* F320C 800E425C 0301C025 */   or        $t8, $t8, $at
  .L800E4260_F3210:
    /* F3210 800E4260 10000005 */  b          .L800E4278_F3228
    /* F3214 800E4264 2418FFFF */   addiu     $t8, $zero, -0x1
    /* F3218 800E4268 44182000 */  mfc1       $t8, $f4
  .L800E426C_F321C:
    /* F321C 800E426C 00000000 */  nop
    /* F3220 800E4270 0700FFFB */  bltz       $t8, .L800E4260_F3210
    /* F3224 800E4274 00000000 */   nop
  .L800E4278_F3228:
    /* F3228 800E4278 44CFF800 */  ctc1       $t7, $31
    /* F322C 800E427C A3B80070 */  sb         $t8, 0x70($sp)
    /* F3230 800E4280 00000000 */  nop
  .L800E4284_F3234:
    /* F3234 800E4284 460E6182 */  mul.s      $f6, $f12, $f14
    /* F3238 800E4288 00000000 */  nop
    /* F323C 800E428C 46123002 */  mul.s      $f0, $f6, $f18
    /* F3240 800E4290 4600803C */  c.lt.s     $f16, $f0
    /* F3244 800E4294 00000000 */  nop
    /* F3248 800E4298 45000029 */  bc1f       .L800E4340_F32F0
    /* F324C 800E429C 00000000 */   nop
    /* F3250 800E42A0 4459F800 */  cfc1       $t9, $31
    /* F3254 800E42A4 24090001 */  addiu      $t1, $zero, 0x1
    /* F3258 800E42A8 44C9F800 */  ctc1       $t1, $31
    /* F325C 800E42AC 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* F3260 800E42B0 46008224 */  cvt.w.s    $f8, $f16
    /* F3264 800E42B4 4449F800 */  cfc1       $t1, $31
    /* F3268 800E42B8 00000000 */  nop
    /* F326C 800E42BC 31290078 */  andi       $t1, $t1, 0x78
    /* F3270 800E42C0 51200019 */  beql       $t1, $zero, .L800E4328_F32D8
    /* F3274 800E42C4 44094000 */   mfc1      $t1, $f8
    /* F3278 800E42C8 44814000 */  mtc1       $at, $f8
    /* F327C 800E42CC 24090001 */  addiu      $t1, $zero, 0x1
    /* F3280 800E42D0 46088201 */  sub.s      $f8, $f16, $f8
    /* F3284 800E42D4 44C9F800 */  ctc1       $t1, $31
    /* F3288 800E42D8 00000000 */  nop
    /* F328C 800E42DC 46004224 */  cvt.w.s    $f8, $f8
    /* F3290 800E42E0 4449F800 */  cfc1       $t1, $31
    /* F3294 800E42E4 00000000 */  nop
    /* F3298 800E42E8 31290078 */  andi       $t1, $t1, 0x78
    /* F329C 800E42EC 55200009 */  bnel       $t1, $zero, .L800E4314_F32C4
    /* F32A0 800E42F0 2409FFFF */   addiu     $t1, $zero, -0x1
    /* F32A4 800E42F4 44094000 */  mfc1       $t1, $f8
    /* F32A8 800E42F8 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* F32AC 800E42FC 44D9F800 */  ctc1       $t9, $31
    /* F32B0 800E4300 01214825 */  or         $t1, $t1, $at
    /* F32B4 800E4304 312E00FF */  andi       $t6, $t1, 0xFF
    /* F32B8 800E4308 1000002E */  b          .L800E43C4_F3374
    /* F32BC 800E430C 01C04825 */   or        $t1, $t6, $zero
  .L800E4310_F32C0:
    /* F32C0 800E4310 2409FFFF */  addiu      $t1, $zero, -0x1
  .L800E4314_F32C4:
    /* F32C4 800E4314 312E00FF */  andi       $t6, $t1, 0xFF
    /* F32C8 800E4318 44D9F800 */  ctc1       $t9, $31
    /* F32CC 800E431C 10000029 */  b          .L800E43C4_F3374
    /* F32D0 800E4320 01C04825 */   or        $t1, $t6, $zero
    /* F32D4 800E4324 44094000 */  mfc1       $t1, $f8
  .L800E4328_F32D8:
    /* F32D8 800E4328 00000000 */  nop
    /* F32DC 800E432C 0520FFF8 */  bltz       $t1, .L800E4310_F32C0
    /* F32E0 800E4330 312E00FF */   andi      $t6, $t1, 0xFF
    /* F32E4 800E4334 44D9F800 */  ctc1       $t9, $31
    /* F32E8 800E4338 10000022 */  b          .L800E43C4_F3374
    /* F32EC 800E433C 01C04825 */   or        $t1, $t6, $zero
  .L800E4340_F32F0:
    /* F32F0 800E4340 444FF800 */  cfc1       $t7, $31
    /* F32F4 800E4344 44C9F800 */  ctc1       $t1, $31
    /* F32F8 800E4348 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* F32FC 800E434C 460002A4 */  cvt.w.s    $f10, $f0
    /* F3300 800E4350 4449F800 */  cfc1       $t1, $31
    /* F3304 800E4354 00000000 */  nop
    /* F3308 800E4358 31290078 */  andi       $t1, $t1, 0x78
    /* F330C 800E435C 51200013 */  beql       $t1, $zero, .L800E43AC_F335C
    /* F3310 800E4360 44095000 */   mfc1      $t1, $f10
    /* F3314 800E4364 44815000 */  mtc1       $at, $f10
    /* F3318 800E4368 24090001 */  addiu      $t1, $zero, 0x1
    /* F331C 800E436C 460A0281 */  sub.s      $f10, $f0, $f10
    /* F3320 800E4370 44C9F800 */  ctc1       $t1, $31
    /* F3324 800E4374 00000000 */  nop
    /* F3328 800E4378 460052A4 */  cvt.w.s    $f10, $f10
    /* F332C 800E437C 4449F800 */  cfc1       $t1, $31
    /* F3330 800E4380 00000000 */  nop
    /* F3334 800E4384 31290078 */  andi       $t1, $t1, 0x78
    /* F3338 800E4388 15200005 */  bnez       $t1, .L800E43A0_F3350
    /* F333C 800E438C 00000000 */   nop
    /* F3340 800E4390 44095000 */  mfc1       $t1, $f10
    /* F3344 800E4394 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* F3348 800E4398 10000007 */  b          .L800E43B8_F3368
    /* F334C 800E439C 01214825 */   or        $t1, $t1, $at
  .L800E43A0_F3350:
    /* F3350 800E43A0 10000005 */  b          .L800E43B8_F3368
    /* F3354 800E43A4 2409FFFF */   addiu     $t1, $zero, -0x1
    /* F3358 800E43A8 44095000 */  mfc1       $t1, $f10
  .L800E43AC_F335C:
    /* F335C 800E43AC 00000000 */  nop
    /* F3360 800E43B0 0520FFFB */  bltz       $t1, .L800E43A0_F3350
    /* F3364 800E43B4 00000000 */   nop
  .L800E43B8_F3368:
    /* F3368 800E43B8 44CFF800 */  ctc1       $t7, $31
    /* F336C 800E43BC 313800FF */  andi       $t8, $t1, 0xFF
    /* F3370 800E43C0 03004825 */  or         $t1, $t8, $zero
  .L800E43C4_F3374:
    /* F3374 800E43C4 44882000 */  mtc1       $t0, $f4
    /* F3378 800E43C8 240E0001 */  addiu      $t6, $zero, 0x1
    /* F337C 800E43CC 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* F3380 800E43D0 468021A0 */  cvt.s.w    $f6, $f4
    /* F3384 800E43D4 460E3202 */  mul.s      $f8, $f6, $f14
    /* F3388 800E43D8 4459F800 */  cfc1       $t9, $31
    /* F338C 800E43DC 44CEF800 */  ctc1       $t6, $31
    /* F3390 800E43E0 00000000 */  nop
    /* F3394 800E43E4 460042A4 */  cvt.w.s    $f10, $f8
    /* F3398 800E43E8 444EF800 */  cfc1       $t6, $31
    /* F339C 800E43EC 00000000 */  nop
    /* F33A0 800E43F0 31CE0078 */  andi       $t6, $t6, 0x78
    /* F33A4 800E43F4 51C00013 */  beql       $t6, $zero, .L800E4444_F33F4
    /* F33A8 800E43F8 440E5000 */   mfc1      $t6, $f10
    /* F33AC 800E43FC 44815000 */  mtc1       $at, $f10
    /* F33B0 800E4400 240E0001 */  addiu      $t6, $zero, 0x1
    /* F33B4 800E4404 460A4281 */  sub.s      $f10, $f8, $f10
    /* F33B8 800E4408 44CEF800 */  ctc1       $t6, $31
    /* F33BC 800E440C 00000000 */  nop
    /* F33C0 800E4410 460052A4 */  cvt.w.s    $f10, $f10
    /* F33C4 800E4414 444EF800 */  cfc1       $t6, $31
    /* F33C8 800E4418 00000000 */  nop
    /* F33CC 800E441C 31CE0078 */  andi       $t6, $t6, 0x78
    /* F33D0 800E4420 15C00005 */  bnez       $t6, .L800E4438_F33E8
    /* F33D4 800E4424 00000000 */   nop
    /* F33D8 800E4428 440E5000 */  mfc1       $t6, $f10
    /* F33DC 800E442C 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* F33E0 800E4430 10000007 */  b          .L800E4450_F3400
    /* F33E4 800E4434 01C17025 */   or        $t6, $t6, $at
  .L800E4438_F33E8:
    /* F33E8 800E4438 10000005 */  b          .L800E4450_F3400
    /* F33EC 800E443C 240EFFFF */   addiu     $t6, $zero, -0x1
    /* F33F0 800E4440 440E5000 */  mfc1       $t6, $f10
  .L800E4444_F33F4:
    /* F33F4 800E4444 00000000 */  nop
    /* F33F8 800E4448 05C0FFFB */  bltz       $t6, .L800E4438_F33E8
    /* F33FC 800E444C 00000000 */   nop
  .L800E4450_F3400:
    /* F3400 800E4450 31CF00FF */  andi       $t7, $t6, 0xFF
    /* F3404 800E4454 44D9F800 */  ctc1       $t9, $31
    /* F3408 800E4458 000FC043 */  sra        $t8, $t7, 1
    /* F340C 800E445C A3B8006E */  sb         $t8, 0x6E($sp)
    /* F3410 800E4460 93AD0071 */  lbu        $t5, 0x71($sp)
    /* F3414 800E4464 93BF0070 */  lbu        $ra, 0x70($sp)
    /* F3418 800E4468 A3A9006B */  sb         $t1, 0x6B($sp)
    /* F341C 800E446C A3A0006A */  sb         $zero, 0x6A($sp)
  .L800E4470_F3420:
    /* F3420 800E4470 2419000C */  addiu      $t9, $zero, 0xC
    /* F3424 800E4474 A7B90068 */  sh         $t9, 0x68($sp)
    /* F3428 800E4478 A3A9006F */  sb         $t1, 0x6F($sp)
    /* F342C 800E447C A3AD006D */  sb         $t5, 0x6D($sp)
    /* F3430 800E4480 10000063 */  b          .L800E4610_F35C0
    /* F3434 800E4484 A3BF006C */   sb        $ra, 0x6C($sp)
    /* F3438 800E4488 87A8009E */  lh         $t0, 0x9E($sp)
    /* F343C 800E448C 00032043 */  sra        $a0, $v1, 1
    /* F3440 800E4490 240D00FF */  addiu      $t5, $zero, 0xFF
    /* F3444 800E4494 0088082A */  slt        $at, $a0, $t0
    /* F3448 800E4498 1020000D */  beqz       $at, .L800E44D0_F3480
    /* F344C 800E449C 00881023 */   subu      $v0, $a0, $t0
    /* F3450 800E44A0 240E00FF */  addiu      $t6, $zero, 0xFF
    /* F3454 800E44A4 240F00FF */  addiu      $t7, $zero, 0xFF
    /* F3458 800E44A8 24180046 */  addiu      $t8, $zero, 0x46
    /* F345C 800E44AC A3B8006E */  sb         $t8, 0x6E($sp)
    /* F3460 800E44B0 A3AF0070 */  sb         $t7, 0x70($sp)
    /* F3464 800E44B4 A3AE0071 */  sb         $t6, 0x71($sp)
    /* F3468 800E44B8 00004825 */  or         $t1, $zero, $zero
    /* F346C 800E44BC 240D00FF */  addiu      $t5, $zero, 0xFF
    /* F3470 800E44C0 241F00FF */  addiu      $ra, $zero, 0xFF
    /* F3474 800E44C4 A3A0006B */  sb         $zero, 0x6B($sp)
    /* F3478 800E44C8 1000004C */  b          .L800E45FC_F35AC
    /* F347C 800E44CC A3A0006A */   sb        $zero, 0x6A($sp)
  .L800E44D0_F3480:
    /* F3480 800E44D0 0002CC00 */  sll        $t9, $v0, 16
    /* F3484 800E44D4 00191403 */  sra        $v0, $t9, 16
    /* F3488 800E44D8 44822000 */  mtc1       $v0, $f4
    /* F348C 800E44DC 3C01437F */  lui        $at, (0x437F0000 >> 16)
    /* F3490 800E44E0 44818000 */  mtc1       $at, $f16
    /* F3494 800E44E4 468021A0 */  cvt.s.w    $f6, $f4
    /* F3498 800E44E8 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* F349C 800E44EC 44815000 */  mtc1       $at, $f10
    /* F34A0 800E44F0 24190001 */  addiu      $t9, $zero, 0x1
    /* F34A4 800E44F4 240F00FF */  addiu      $t7, $zero, 0xFF
    /* F34A8 800E44F8 24050046 */  addiu      $a1, $zero, 0x46
    /* F34AC 800E44FC 460E3202 */  mul.s      $f8, $f6, $f14
    /* F34B0 800E4500 A3AF0071 */  sb         $t7, 0x71($sp)
    /* F34B4 800E4504 241F00FF */  addiu      $ra, $zero, 0xFF
    /* F34B8 800E4508 460A4102 */  mul.s      $f4, $f8, $f10
    /* F34BC 800E450C 46048181 */  sub.s      $f6, $f16, $f4
    /* F34C0 800E4510 4458F800 */  cfc1       $t8, $31
    /* F34C4 800E4514 44D9F800 */  ctc1       $t9, $31
    /* F34C8 800E4518 00000000 */  nop
    /* F34CC 800E451C 46003224 */  cvt.w.s    $f8, $f6
    /* F34D0 800E4520 4459F800 */  cfc1       $t9, $31
    /* F34D4 800E4524 00000000 */  nop
    /* F34D8 800E4528 33210004 */  andi       $at, $t9, 0x4
    /* F34DC 800E452C 33390078 */  andi       $t9, $t9, 0x78
    /* F34E0 800E4530 53200015 */  beql       $t9, $zero, .L800E4588_F3538
    /* F34E4 800E4534 44194000 */   mfc1      $t9, $f8
    /* F34E8 800E4538 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* F34EC 800E453C 44814000 */  mtc1       $at, $f8
    /* F34F0 800E4540 24190001 */  addiu      $t9, $zero, 0x1
    /* F34F4 800E4544 46083201 */  sub.s      $f8, $f6, $f8
    /* F34F8 800E4548 44D9F800 */  ctc1       $t9, $31
    /* F34FC 800E454C 00000000 */  nop
    /* F3500 800E4550 46004224 */  cvt.w.s    $f8, $f8
    /* F3504 800E4554 4459F800 */  cfc1       $t9, $31
    /* F3508 800E4558 00000000 */  nop
    /* F350C 800E455C 33210004 */  andi       $at, $t9, 0x4
    /* F3510 800E4560 33390078 */  andi       $t9, $t9, 0x78
    /* F3514 800E4564 17200005 */  bnez       $t9, .L800E457C_F352C
    /* F3518 800E4568 00000000 */   nop
    /* F351C 800E456C 44194000 */  mfc1       $t9, $f8
    /* F3520 800E4570 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* F3524 800E4574 10000007 */  b          .L800E4594_F3544
    /* F3528 800E4578 0321C825 */   or        $t9, $t9, $at
  .L800E457C_F352C:
    /* F352C 800E457C 10000005 */  b          .L800E4594_F3544
    /* F3530 800E4580 2419FFFF */   addiu     $t9, $zero, -0x1
    /* F3534 800E4584 44194000 */  mfc1       $t9, $f8
  .L800E4588_F3538:
    /* F3538 800E4588 00000000 */  nop
    /* F353C 800E458C 0720FFFB */  bltz       $t9, .L800E457C_F352C
    /* F3540 800E4590 00000000 */   nop
  .L800E4594_F3544:
    /* F3544 800E4594 00450019 */  multu      $v0, $a1
    /* F3548 800E4598 44D8F800 */  ctc1       $t8, $31
    /* F354C 800E459C A3B90070 */  sb         $t9, 0x70($sp)
    /* F3550 800E45A0 00004825 */  or         $t1, $zero, $zero
    /* F3554 800E45A4 00007012 */  mflo       $t6
    /* F3558 800E45A8 00000000 */  nop
    /* F355C 800E45AC 00000000 */  nop
    /* F3560 800E45B0 01C4001A */  div        $zero, $t6, $a0
    /* F3564 800E45B4 00007812 */  mflo       $t7
    /* F3568 800E45B8 00AF1823 */  subu       $v1, $a1, $t7
    /* F356C 800E45BC 14800002 */  bnez       $a0, .L800E45C8_F3578
    /* F3570 800E45C0 00000000 */   nop
    /* F3574 800E45C4 0007000D */  break      7
  .L800E45C8_F3578:
    /* F3578 800E45C8 2401FFFF */  addiu      $at, $zero, -0x1
    /* F357C 800E45CC 14810004 */  bne        $a0, $at, .L800E45E0_F3590
    /* F3580 800E45D0 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* F3584 800E45D4 15C10002 */  bne        $t6, $at, .L800E45E0_F3590
    /* F3588 800E45D8 00000000 */   nop
    /* F358C 800E45DC 0006000D */  break      6
  .L800E45E0_F3590:
    /* F3590 800E45E0 04630004 */  bgezl      $v1, .L800E45F4_F35A4
    /* F3594 800E45E4 A3A3006E */   sb        $v1, 0x6E($sp)
    /* F3598 800E45E8 10000002 */  b          .L800E45F4_F35A4
    /* F359C 800E45EC A3A0006E */   sb        $zero, 0x6E($sp)
    /* F35A0 800E45F0 A3A3006E */  sb         $v1, 0x6E($sp)
  .L800E45F4_F35A4:
    /* F35A4 800E45F4 A3A0006B */  sb         $zero, 0x6B($sp)
    /* F35A8 800E45F8 A3A0006A */  sb         $zero, 0x6A($sp)
  .L800E45FC_F35AC:
    /* F35AC 800E45FC 24180014 */  addiu      $t8, $zero, 0x14
    /* F35B0 800E4600 A7B80068 */  sh         $t8, 0x68($sp)
    /* F35B4 800E4604 A3A9006F */  sb         $t1, 0x6F($sp)
    /* F35B8 800E4608 A3AD006D */  sb         $t5, 0x6D($sp)
    /* F35BC 800E460C A3BF006C */  sb         $ra, 0x6C($sp)
  .L800E4610_F35C0:
    /* F35C0 800E4610 24010003 */  addiu      $at, $zero, 0x3
    /* F35C4 800E4614 87A8009E */  lh         $t0, 0x9E($sp)
    /* F35C8 800E4618 93A9006F */  lbu        $t1, 0x6F($sp)
    /* F35CC 800E461C 93AD006D */  lbu        $t5, 0x6D($sp)
    /* F35D0 800E4620 15410025 */  bne        $t2, $at, .L800E46B8_F3668
    /* F35D4 800E4624 93BF006C */   lbu       $ra, 0x6C($sp)
    /* F35D8 800E4628 8FB90024 */  lw         $t9, 0x24($sp)
    /* F35DC 800E462C 87B80068 */  lh         $t8, 0x68($sp)
    /* F35E0 800E4630 3C028015 */  lui        $v0, %hi(D_80153AB8)
    /* F35E4 800E4634 932E0000 */  lbu        $t6, 0x0($t9)
    /* F35E8 800E4638 24423AB8 */  addiu      $v0, $v0, %lo(D_80153AB8)
    /* F35EC 800E463C C4440000 */  lwc1       $f4, 0x0($v0)
    /* F35F0 800E4640 01C87823 */  subu       $t7, $t6, $t0
    /* F35F4 800E4644 01F8C821 */  addu       $t9, $t7, $t8
    /* F35F8 800E4648 44995000 */  mtc1       $t9, $f10
    /* F35FC 800E464C 00000000 */  nop
    /* F3600 800E4650 46805020 */  cvt.s.w    $f0, $f10
    /* F3604 800E4654 C44A0008 */  lwc1       $f10, 0x8($v0)
    /* F3608 800E4658 46040182 */  mul.s      $f6, $f0, $f4
    /* F360C 800E465C 4600320D */  trunc.w.s  $f8, $f6
    /* F3610 800E4660 460A0102 */  mul.s      $f4, $f0, $f10
    /* F3614 800E4664 44044000 */  mfc1       $a0, $f8
    /* F3618 800E4668 C448000C */  lwc1       $f8, 0xC($v0)
    /* F361C 800E466C 00047C00 */  sll        $t7, $a0, 16
    /* F3620 800E4670 4600218D */  trunc.w.s  $f6, $f4
    /* F3624 800E4674 46080282 */  mul.s      $f10, $f0, $f8
    /* F3628 800E4678 000F2403 */  sra        $a0, $t7, 16
    /* F362C 800E467C 44053000 */  mfc1       $a1, $f6
    /* F3630 800E4680 C4460014 */  lwc1       $f6, 0x14($v0)
    /* F3634 800E4684 00057400 */  sll        $t6, $a1, 16
    /* F3638 800E4688 46060202 */  mul.s      $f8, $f0, $f6
    /* F363C 800E468C 4600510D */  trunc.w.s  $f4, $f10
    /* F3640 800E4690 000E2C03 */  sra        $a1, $t6, 16
    /* F3644 800E4694 440C2000 */  mfc1       $t4, $f4
    /* F3648 800E4698 4600428D */  trunc.w.s  $f10, $f8
    /* F364C 800E469C 000CCC00 */  sll        $t9, $t4, 16
    /* F3650 800E46A0 00196403 */  sra        $t4, $t9, 16
    /* F3654 800E46A4 440A5000 */  mfc1       $t2, $f10
    /* F3658 800E46A8 00000000 */  nop
    /* F365C 800E46AC 000AC400 */  sll        $t8, $t2, 16
    /* F3660 800E46B0 10000064 */  b          .L800E4844_F37F4
    /* F3664 800E46B4 00185403 */   sra       $t2, $t8, 16
  .L800E46B8_F3668:
    /* F3668 800E46B8 3164FFFF */  andi       $a0, $t3, 0xFFFF
    /* F366C 800E46BC A3BF006C */  sb         $ra, 0x6C($sp)
    /* F3670 800E46C0 AFA40020 */  sw         $a0, 0x20($sp)
    /* F3674 800E46C4 A3A9006F */  sb         $t1, 0x6F($sp)
    /* F3678 800E46C8 0C007654 */  jal        coss
    /* F367C 800E46CC A3AD006D */   sb        $t5, 0x6D($sp)
    /* F3680 800E46D0 44822000 */  mtc1       $v0, $f4
    /* F3684 800E46D4 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* F3688 800E46D8 44815800 */  mtc1       $at, $f11
    /* F368C 800E46DC 468021A0 */  cvt.s.w    $f6, $f4
    /* F3690 800E46E0 44805000 */  mtc1       $zero, $f10
    /* F3694 800E46E4 8FAF0024 */  lw         $t7, 0x24($sp)
    /* F3698 800E46E8 87AE0068 */  lh         $t6, 0x68($sp)
    /* F369C 800E46EC 87A8009E */  lh         $t0, 0x9E($sp)
    /* F36A0 800E46F0 91F80000 */  lbu        $t8, 0x0($t7)
    /* F36A4 800E46F4 46003221 */  cvt.d.s    $f8, $f6
    /* F36A8 800E46F8 97A40022 */  lhu        $a0, 0x22($sp)
    /* F36AC 800E46FC 462A4103 */  div.d      $f4, $f8, $f10
    /* F36B0 800E4700 01D8C821 */  addu       $t9, $t6, $t8
    /* F36B4 800E4704 03287823 */  subu       $t7, $t9, $t0
    /* F36B8 800E4708 448F3000 */  mtc1       $t7, $f6
    /* F36BC 800E470C 00000000 */  nop
    /* F36C0 800E4710 46803221 */  cvt.d.w    $f8, $f6
    /* F36C4 800E4714 46282282 */  mul.d      $f10, $f4, $f8
    /* F36C8 800E4718 4620518D */  trunc.w.d  $f6, $f10
    /* F36CC 800E471C 44183000 */  mfc1       $t8, $f6
    /* F36D0 800E4720 0C007660 */  jal        sins
    /* F36D4 800E4724 A7B8007C */   sh        $t8, 0x7C($sp)
    /* F36D8 800E4728 44822000 */  mtc1       $v0, $f4
    /* F36DC 800E472C 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* F36E0 800E4730 44813800 */  mtc1       $at, $f7
    /* F36E4 800E4734 46802220 */  cvt.s.w    $f8, $f4
    /* F36E8 800E4738 44803000 */  mtc1       $zero, $f6
    /* F36EC 800E473C 8FAF0024 */  lw         $t7, 0x24($sp)
    /* F36F0 800E4740 87B90068 */  lh         $t9, 0x68($sp)
    /* F36F4 800E4744 87A8009E */  lh         $t0, 0x9E($sp)
    /* F36F8 800E4748 91EE0000 */  lbu        $t6, 0x0($t7)
    /* F36FC 800E474C 460042A1 */  cvt.d.s    $f10, $f8
    /* F3700 800E4750 97A40022 */  lhu        $a0, 0x22($sp)
    /* F3704 800E4754 46265103 */  div.d      $f4, $f10, $f6
    /* F3708 800E4758 032EC021 */  addu       $t8, $t9, $t6
    /* F370C 800E475C 03087823 */  subu       $t7, $t8, $t0
    /* F3710 800E4760 448F4000 */  mtc1       $t7, $f8
    /* F3714 800E4764 00000000 */  nop
    /* F3718 800E4768 468042A1 */  cvt.d.w    $f10, $f8
    /* F371C 800E476C 462A2182 */  mul.d      $f6, $f4, $f10
    /* F3720 800E4770 4620320D */  trunc.w.d  $f8, $f6
    /* F3724 800E4774 44184000 */  mfc1       $t8, $f8
    /* F3728 800E4778 0C007654 */  jal        coss
    /* F372C 800E477C A7B80078 */   sh        $t8, 0x78($sp)
    /* F3730 800E4780 44822000 */  mtc1       $v0, $f4
    /* F3734 800E4784 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* F3738 800E4788 44814800 */  mtc1       $at, $f9
    /* F373C 800E478C 468022A0 */  cvt.s.w    $f10, $f4
    /* F3740 800E4790 44804000 */  mtc1       $zero, $f8
    /* F3744 800E4794 8FB90024 */  lw         $t9, 0x24($sp)
    /* F3748 800E4798 87AF0068 */  lh         $t7, 0x68($sp)
    /* F374C 800E479C 87A8009E */  lh         $t0, 0x9E($sp)
    /* F3750 800E47A0 932E0000 */  lbu        $t6, 0x0($t9)
    /* F3754 800E47A4 460051A1 */  cvt.d.s    $f6, $f10
    /* F3758 800E47A8 97A40022 */  lhu        $a0, 0x22($sp)
    /* F375C 800E47AC 46283103 */  div.d      $f4, $f6, $f8
    /* F3760 800E47B0 01EEC021 */  addu       $t8, $t7, $t6
    /* F3764 800E47B4 0308C823 */  subu       $t9, $t8, $t0
    /* F3768 800E47B8 44995000 */  mtc1       $t9, $f10
    /* F376C 800E47BC 00000000 */  nop
    /* F3770 800E47C0 468051A1 */  cvt.d.w    $f6, $f10
    /* F3774 800E47C4 46262202 */  mul.d      $f8, $f4, $f6
    /* F3778 800E47C8 4620428D */  trunc.w.d  $f10, $f8
    /* F377C 800E47CC 44185000 */  mfc1       $t8, $f10
    /* F3780 800E47D0 0C007660 */  jal        sins
    /* F3784 800E47D4 A7B80076 */   sh        $t8, 0x76($sp)
    /* F3788 800E47D8 44822000 */  mtc1       $v0, $f4
    /* F378C 800E47DC 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* F3790 800E47E0 44815800 */  mtc1       $at, $f11
    /* F3794 800E47E4 468021A0 */  cvt.s.w    $f6, $f4
    /* F3798 800E47E8 44805000 */  mtc1       $zero, $f10
    /* F379C 800E47EC 8FAF0024 */  lw         $t7, 0x24($sp)
    /* F37A0 800E47F0 87B90068 */  lh         $t9, 0x68($sp)
    /* F37A4 800E47F4 87A8009E */  lh         $t0, 0x9E($sp)
    /* F37A8 800E47F8 91EE0000 */  lbu        $t6, 0x0($t7)
    /* F37AC 800E47FC 46003221 */  cvt.d.s    $f8, $f6
    /* F37B0 800E4800 87A50078 */  lh         $a1, 0x78($sp)
    /* F37B4 800E4804 462A4103 */  div.d      $f4, $f8, $f10
    /* F37B8 800E4808 032EC021 */  addu       $t8, $t9, $t6
    /* F37BC 800E480C 03087823 */  subu       $t7, $t8, $t0
    /* F37C0 800E4810 448F3000 */  mtc1       $t7, $f6
    /* F37C4 800E4814 93A9006F */  lbu        $t1, 0x6F($sp)
    /* F37C8 800E4818 87AC0076 */  lh         $t4, 0x76($sp)
    /* F37CC 800E481C 46803221 */  cvt.d.w    $f8, $f6
    /* F37D0 800E4820 93AD006D */  lbu        $t5, 0x6D($sp)
    /* F37D4 800E4824 93BF006C */  lbu        $ra, 0x6C($sp)
    /* F37D8 800E4828 87A4007C */  lh         $a0, 0x7C($sp)
    /* F37DC 800E482C 46282282 */  mul.d      $f10, $f4, $f8
    /* F37E0 800E4830 4620518D */  trunc.w.d  $f6, $f10
    /* F37E4 800E4834 440A3000 */  mfc1       $t2, $f6
    /* F37E8 800E4838 00000000 */  nop
    /* F37EC 800E483C 000A7400 */  sll        $t6, $t2, 16
    /* F37F0 800E4840 000E5403 */  sra        $t2, $t6, 16
  .L800E4844_F37F4:
    /* F37F4 800E4844 3C028006 */  lui        $v0, %hi(D_8005BB34)
    /* F37F8 800E4848 2442BB34 */  addiu      $v0, $v0, %lo(D_8005BB34)
    /* F37FC 800E484C 8C590000 */  lw         $t9, 0x0($v0)
    /* F3800 800E4850 87AF0082 */  lh         $t7, 0x82($sp)
    /* F3804 800E4854 87A70092 */  lh         $a3, 0x92($sp)
    /* F3808 800E4858 87A8008E */  lh         $t0, 0x8E($sp)
    /* F380C 800E485C A72F0000 */  sh         $t7, 0x0($t9)
    /* F3810 800E4860 8C580000 */  lw         $t8, 0x0($v0)
    /* F3814 800E4864 87AE0086 */  lh         $t6, 0x86($sp)
    /* F3818 800E4868 2403FFE0 */  addiu      $v1, $zero, -0x20
    /* F381C 800E486C 240607E0 */  addiu      $a2, $zero, 0x7E0
    /* F3820 800E4870 A70E0002 */  sh         $t6, 0x2($t8)
    /* F3824 800E4874 8C590000 */  lw         $t9, 0x0($v0)
    /* F3828 800E4878 87AF008A */  lh         $t7, 0x8A($sp)
    /* F382C 800E487C 240B01E0 */  addiu      $t3, $zero, 0x1E0
    /* F3830 800E4880 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* F3834 800E4884 A72F0004 */  sh         $t7, 0x4($t9)
    /* F3838 800E4888 8C4E0000 */  lw         $t6, 0x0($v0)
    /* F383C 800E488C 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* F3840 800E4890 A5C00006 */  sh         $zero, 0x6($t6)
    /* F3844 800E4894 8C580000 */  lw         $t8, 0x0($v0)
    /* F3848 800E4898 A7030008 */  sh         $v1, 0x8($t8)
    /* F384C 800E489C 8C4F0000 */  lw         $t7, 0x0($v0)
    /* F3850 800E48A0 A5E3000A */  sh         $v1, 0xA($t7)
    /* F3854 800E48A4 8C4E0000 */  lw         $t6, 0x0($v0)
    /* F3858 800E48A8 93B90071 */  lbu        $t9, 0x71($sp)
    /* F385C 800E48AC A1D9000C */  sb         $t9, 0xC($t6)
    /* F3860 800E48B0 8C4F0000 */  lw         $t7, 0x0($v0)
    /* F3864 800E48B4 93B80070 */  lbu        $t8, 0x70($sp)
    /* F3868 800E48B8 A1F8000D */  sb         $t8, 0xD($t7)
    /* F386C 800E48BC 8C590000 */  lw         $t9, 0x0($v0)
    /* F3870 800E48C0 A329000E */  sb         $t1, 0xE($t9)
    /* F3874 800E48C4 8C580000 */  lw         $t8, 0x0($v0)
    /* F3878 800E48C8 93AE006E */  lbu        $t6, 0x6E($sp)
    /* F387C 800E48CC A30E000F */  sb         $t6, 0xF($t8)
    /* F3880 800E48D0 8C4F0000 */  lw         $t7, 0x0($v0)
    /* F3884 800E48D4 25F90010 */  addiu      $t9, $t7, 0x10
    /* F3888 800E48D8 AC590000 */  sw         $t9, 0x0($v0)
    /* F388C 800E48DC A7280000 */  sh         $t0, 0x0($t9)
    /* F3890 800E48E0 8C580000 */  lw         $t8, 0x0($v0)
    /* F3894 800E48E4 A7070002 */  sh         $a3, 0x2($t8)
    /* F3898 800E48E8 8C590000 */  lw         $t9, 0x0($v0)
    /* F389C 800E48EC 87AF0096 */  lh         $t7, 0x96($sp)
    /* F38A0 800E48F0 A72F0004 */  sh         $t7, 0x4($t9)
    /* F38A4 800E48F4 8C4E0000 */  lw         $t6, 0x0($v0)
    /* F38A8 800E48F8 A5C00006 */  sh         $zero, 0x6($t6)
    /* F38AC 800E48FC 8C580000 */  lw         $t8, 0x0($v0)
    /* F38B0 800E4900 A7060008 */  sh         $a2, 0x8($t8)
    /* F38B4 800E4904 8C4F0000 */  lw         $t7, 0x0($v0)
    /* F38B8 800E4908 A5E3000A */  sh         $v1, 0xA($t7)
    /* F38BC 800E490C 8C4E0000 */  lw         $t6, 0x0($v0)
    /* F38C0 800E4910 93B90071 */  lbu        $t9, 0x71($sp)
    /* F38C4 800E4914 A1D9000C */  sb         $t9, 0xC($t6)
    /* F38C8 800E4918 8C4F0000 */  lw         $t7, 0x0($v0)
    /* F38CC 800E491C 93B80070 */  lbu        $t8, 0x70($sp)
    /* F38D0 800E4920 A1F8000D */  sb         $t8, 0xD($t7)
    /* F38D4 800E4924 8C590000 */  lw         $t9, 0x0($v0)
    /* F38D8 800E4928 A329000E */  sb         $t1, 0xE($t9)
    /* F38DC 800E492C 8C580000 */  lw         $t8, 0x0($v0)
    /* F38E0 800E4930 93AE006E */  lbu        $t6, 0x6E($sp)
    /* F38E4 800E4934 A30E000F */  sb         $t6, 0xF($t8)
    /* F38E8 800E4938 8C4F0000 */  lw         $t7, 0x0($v0)
    /* F38EC 800E493C 87AE0082 */  lh         $t6, 0x82($sp)
    /* F38F0 800E4940 25F90010 */  addiu      $t9, $t7, 0x10
    /* F38F4 800E4944 AC590000 */  sw         $t9, 0x0($v0)
    /* F38F8 800E4948 01C4C021 */  addu       $t8, $t6, $a0
    /* F38FC 800E494C A7380000 */  sh         $t8, 0x0($t9)
    /* F3900 800E4950 8C4E0000 */  lw         $t6, 0x0($v0)
    /* F3904 800E4954 87B90086 */  lh         $t9, 0x86($sp)
    /* F3908 800E4958 A5D90002 */  sh         $t9, 0x2($t6)
    /* F390C 800E495C 87B8008A */  lh         $t8, 0x8A($sp)
    /* F3910 800E4960 8C590000 */  lw         $t9, 0x0($v0)
    /* F3914 800E4964 03057821 */  addu       $t7, $t8, $a1
    /* F3918 800E4968 A72F0004 */  sh         $t7, 0x4($t9)
    /* F391C 800E496C 8C4E0000 */  lw         $t6, 0x0($v0)
    /* F3920 800E4970 A5C00006 */  sh         $zero, 0x6($t6)
    /* F3924 800E4974 8C580000 */  lw         $t8, 0x0($v0)
    /* F3928 800E4978 A7030008 */  sh         $v1, 0x8($t8)
    /* F392C 800E497C 8C4F0000 */  lw         $t7, 0x0($v0)
    /* F3930 800E4980 A5EB000A */  sh         $t3, 0xA($t7)
    /* F3934 800E4984 8C590000 */  lw         $t9, 0x0($v0)
    /* F3938 800E4988 A32D000C */  sb         $t5, 0xC($t9)
    /* F393C 800E498C 8C4E0000 */  lw         $t6, 0x0($v0)
    /* F3940 800E4990 A1DF000D */  sb         $ra, 0xD($t6)
    /* F3944 800E4994 8C4F0000 */  lw         $t7, 0x0($v0)
    /* F3948 800E4998 93B8006B */  lbu        $t8, 0x6B($sp)
    /* F394C 800E499C A1F8000E */  sb         $t8, 0xE($t7)
    /* F3950 800E49A0 8C4E0000 */  lw         $t6, 0x0($v0)
    /* F3954 800E49A4 93B9006A */  lbu        $t9, 0x6A($sp)
    /* F3958 800E49A8 A1D9000F */  sb         $t9, 0xF($t6)
    /* F395C 800E49AC 8C580000 */  lw         $t8, 0x0($v0)
    /* F3960 800E49B0 87B90082 */  lh         $t9, 0x82($sp)
    /* F3964 800E49B4 270F0010 */  addiu      $t7, $t8, 0x10
    /* F3968 800E49B8 AC4F0000 */  sw         $t7, 0x0($v0)
    /* F396C 800E49BC 03247023 */  subu       $t6, $t9, $a0
    /* F3970 800E49C0 A5EE0000 */  sh         $t6, 0x0($t7)
    /* F3974 800E49C4 8C590000 */  lw         $t9, 0x0($v0)
    /* F3978 800E49C8 87AF0086 */  lh         $t7, 0x86($sp)
    /* F397C 800E49CC 3C048006 */  lui        $a0, %hi(D_8005BB2C)
    /* F3980 800E49D0 2484BB2C */  addiu      $a0, $a0, %lo(D_8005BB2C)
    /* F3984 800E49D4 A72F0002 */  sh         $t7, 0x2($t9)
    /* F3988 800E49D8 87AE008A */  lh         $t6, 0x8A($sp)
    /* F398C 800E49DC 8C4F0000 */  lw         $t7, 0x0($v0)
    /* F3990 800E49E0 01C5C023 */  subu       $t8, $t6, $a1
    /* F3994 800E49E4 A5F80004 */  sh         $t8, 0x4($t7)
    /* F3998 800E49E8 8C590000 */  lw         $t9, 0x0($v0)
    /* F399C 800E49EC A7200006 */  sh         $zero, 0x6($t9)
    /* F39A0 800E49F0 8C4E0000 */  lw         $t6, 0x0($v0)
    /* F39A4 800E49F4 A5C30008 */  sh         $v1, 0x8($t6)
    /* F39A8 800E49F8 8C580000 */  lw         $t8, 0x0($v0)
    /* F39AC 800E49FC A70B000A */  sh         $t3, 0xA($t8)
    /* F39B0 800E4A00 8C4F0000 */  lw         $t7, 0x0($v0)
    /* F39B4 800E4A04 A1ED000C */  sb         $t5, 0xC($t7)
    /* F39B8 800E4A08 8C590000 */  lw         $t9, 0x0($v0)
    /* F39BC 800E4A0C A33F000D */  sb         $ra, 0xD($t9)
    /* F39C0 800E4A10 8C580000 */  lw         $t8, 0x0($v0)
    /* F39C4 800E4A14 93AE006B */  lbu        $t6, 0x6B($sp)
    /* F39C8 800E4A18 A30E000E */  sb         $t6, 0xE($t8)
    /* F39CC 800E4A1C 8C590000 */  lw         $t9, 0x0($v0)
    /* F39D0 800E4A20 93AF006A */  lbu        $t7, 0x6A($sp)
    /* F39D4 800E4A24 A32F000F */  sb         $t7, 0xF($t9)
    /* F39D8 800E4A28 8C4E0000 */  lw         $t6, 0x0($v0)
    /* F39DC 800E4A2C 010C7821 */  addu       $t7, $t0, $t4
    /* F39E0 800E4A30 25D80010 */  addiu      $t8, $t6, 0x10
    /* F39E4 800E4A34 AC580000 */  sw         $t8, 0x0($v0)
    /* F39E8 800E4A38 A70F0000 */  sh         $t7, 0x0($t8)
    /* F39EC 800E4A3C 8C4E0000 */  lw         $t6, 0x0($v0)
    /* F39F0 800E4A40 A5C70002 */  sh         $a3, 0x2($t6)
    /* F39F4 800E4A44 87B80096 */  lh         $t8, 0x96($sp)
    /* F39F8 800E4A48 8C590000 */  lw         $t9, 0x0($v0)
    /* F39FC 800E4A4C 030A7821 */  addu       $t7, $t8, $t2
    /* F3A00 800E4A50 A72F0004 */  sh         $t7, 0x4($t9)
    /* F3A04 800E4A54 8C4E0000 */  lw         $t6, 0x0($v0)
    /* F3A08 800E4A58 A5C00006 */  sh         $zero, 0x6($t6)
    /* F3A0C 800E4A5C 8C580000 */  lw         $t8, 0x0($v0)
    /* F3A10 800E4A60 A7060008 */  sh         $a2, 0x8($t8)
    /* F3A14 800E4A64 8C4F0000 */  lw         $t7, 0x0($v0)
    /* F3A18 800E4A68 A5EB000A */  sh         $t3, 0xA($t7)
    /* F3A1C 800E4A6C 8C590000 */  lw         $t9, 0x0($v0)
    /* F3A20 800E4A70 A32D000C */  sb         $t5, 0xC($t9)
    /* F3A24 800E4A74 8C4E0000 */  lw         $t6, 0x0($v0)
    /* F3A28 800E4A78 A1DF000D */  sb         $ra, 0xD($t6)
    /* F3A2C 800E4A7C 8C4F0000 */  lw         $t7, 0x0($v0)
    /* F3A30 800E4A80 93B8006B */  lbu        $t8, 0x6B($sp)
    /* F3A34 800E4A84 A1F8000E */  sb         $t8, 0xE($t7)
    /* F3A38 800E4A88 8C4E0000 */  lw         $t6, 0x0($v0)
    /* F3A3C 800E4A8C 93B9006A */  lbu        $t9, 0x6A($sp)
    /* F3A40 800E4A90 A1D9000F */  sb         $t9, 0xF($t6)
    /* F3A44 800E4A94 8C580000 */  lw         $t8, 0x0($v0)
    /* F3A48 800E4A98 87B9008E */  lh         $t9, 0x8E($sp)
    /* F3A4C 800E4A9C 270F0010 */  addiu      $t7, $t8, 0x10
    /* F3A50 800E4AA0 AC4F0000 */  sw         $t7, 0x0($v0)
    /* F3A54 800E4AA4 032C7023 */  subu       $t6, $t9, $t4
    /* F3A58 800E4AA8 A5EE0000 */  sh         $t6, 0x0($t7)
    /* F3A5C 800E4AAC 8C590000 */  lw         $t9, 0x0($v0)
    /* F3A60 800E4AB0 87AF0092 */  lh         $t7, 0x92($sp)
    /* F3A64 800E4AB4 A72F0002 */  sh         $t7, 0x2($t9)
    /* F3A68 800E4AB8 87AE0096 */  lh         $t6, 0x96($sp)
    /* F3A6C 800E4ABC 8C4F0000 */  lw         $t7, 0x0($v0)
    /* F3A70 800E4AC0 01CAC023 */  subu       $t8, $t6, $t2
    /* F3A74 800E4AC4 A5F80004 */  sh         $t8, 0x4($t7)
    /* F3A78 800E4AC8 8C590000 */  lw         $t9, 0x0($v0)
    /* F3A7C 800E4ACC 240E07E0 */  addiu      $t6, $zero, 0x7E0
    /* F3A80 800E4AD0 3C0AE700 */  lui        $t2, (0xE7000000 >> 16)
    /* F3A84 800E4AD4 A7200006 */  sh         $zero, 0x6($t9)
    /* F3A88 800E4AD8 8C580000 */  lw         $t8, 0x0($v0)
    /* F3A8C 800E4ADC A70E0008 */  sh         $t6, 0x8($t8)
    /* F3A90 800E4AE0 8C4F0000 */  lw         $t7, 0x0($v0)
    /* F3A94 800E4AE4 A5EB000A */  sh         $t3, 0xA($t7)
    /* F3A98 800E4AE8 8C590000 */  lw         $t9, 0x0($v0)
    /* F3A9C 800E4AEC A32D000C */  sb         $t5, 0xC($t9)
    /* F3AA0 800E4AF0 8C4E0000 */  lw         $t6, 0x0($v0)
    /* F3AA4 800E4AF4 A1DF000D */  sb         $ra, 0xD($t6)
    /* F3AA8 800E4AF8 8C4F0000 */  lw         $t7, 0x0($v0)
    /* F3AAC 800E4AFC 93B8006B */  lbu        $t8, 0x6B($sp)
    /* F3AB0 800E4B00 A1F8000E */  sb         $t8, 0xE($t7)
    /* F3AB4 800E4B04 8C4E0000 */  lw         $t6, 0x0($v0)
    /* F3AB8 800E4B08 93B9006A */  lbu        $t9, 0x6A($sp)
    /* F3ABC 800E4B0C A1D9000F */  sb         $t9, 0xF($t6)
    /* F3AC0 800E4B10 8C580000 */  lw         $t8, 0x0($v0)
    /* F3AC4 800E4B14 8C830000 */  lw         $v1, 0x0($a0)
    /* F3AC8 800E4B18 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
    /* F3ACC 800E4B1C 270F0010 */  addiu      $t7, $t8, 0x10
    /* F3AD0 800E4B20 24790008 */  addiu      $t9, $v1, 0x8
    /* F3AD4 800E4B24 AC4F0000 */  sw         $t7, 0x0($v0)
    /* F3AD8 800E4B28 AC990000 */  sw         $t9, 0x0($a0)
    /* F3ADC 800E4B2C AC600004 */  sw         $zero, 0x4($v1)
    /* F3AE0 800E4B30 AC6E0000 */  sw         $t6, 0x0($v1)
    /* F3AE4 800E4B34 8C830000 */  lw         $v1, 0x0($a0)
    /* F3AE8 800E4B38 3C198000 */  lui        $t9, (0x80008000 >> 16)
    /* F3AEC 800E4B3C 37398000 */  ori        $t9, $t9, (0x80008000 & 0xFFFF)
    /* F3AF0 800E4B40 24780008 */  addiu      $t8, $v1, 0x8
    /* F3AF4 800E4B44 AC980000 */  sw         $t8, 0x0($a0)
    /* F3AF8 800E4B48 3C0FBB00 */  lui        $t7, (0xBB000000 >> 16)
    /* F3AFC 800E4B4C AC6F0000 */  sw         $t7, 0x0($v1)
    /* F3B00 800E4B50 AC790004 */  sw         $t9, 0x4($v1)
    /* F3B04 800E4B54 8C830000 */  lw         $v1, 0x0($a0)
    /* F3B08 800E4B58 3C0FFFFE */  lui        $t7, (0xFFFE793C >> 16)
    /* F3B0C 800E4B5C 3C18FCFF */  lui        $t8, (0xFCFFFFFF >> 16)
    /* F3B10 800E4B60 246E0008 */  addiu      $t6, $v1, 0x8
    /* F3B14 800E4B64 AC8E0000 */  sw         $t6, 0x0($a0)
    /* F3B18 800E4B68 3718FFFF */  ori        $t8, $t8, (0xFCFFFFFF & 0xFFFF)
    /* F3B1C 800E4B6C 35EF793C */  ori        $t7, $t7, (0xFFFE793C & 0xFFFF)
    /* F3B20 800E4B70 AC6F0004 */  sw         $t7, 0x4($v1)
    /* F3B24 800E4B74 AC780000 */  sw         $t8, 0x0($v1)
    /* F3B28 800E4B78 8C830000 */  lw         $v1, 0x0($a0)
    /* F3B2C 800E4B7C 3C180050 */  lui        $t8, (0x5049D8 >> 16)
    /* F3B30 800E4B80 3C0EB900 */  lui        $t6, (0xB900031D >> 16)
    /* F3B34 800E4B84 24790008 */  addiu      $t9, $v1, 0x8
    /* F3B38 800E4B88 AC990000 */  sw         $t9, 0x0($a0)
    /* F3B3C 800E4B8C 35CE031D */  ori        $t6, $t6, (0xB900031D & 0xFFFF)
    /* F3B40 800E4B90 371849D8 */  ori        $t8, $t8, (0x5049D8 & 0xFFFF)
    /* F3B44 800E4B94 AC780004 */  sw         $t8, 0x4($v1)
    /* F3B48 800E4B98 AC6E0000 */  sw         $t6, 0x0($v1)
    /* F3B4C 800E4B9C 8C830000 */  lw         $v1, 0x0($a0)
    /* F3B50 800E4BA0 3C0E0002 */  lui        $t6, (0x20000 >> 16)
    /* F3B54 800E4BA4 3C19B600 */  lui        $t9, (0xB6000000 >> 16)
    /* F3B58 800E4BA8 246F0008 */  addiu      $t7, $v1, 0x8
    /* F3B5C 800E4BAC AC8F0000 */  sw         $t7, 0x0($a0)
    /* F3B60 800E4BB0 AC6E0004 */  sw         $t6, 0x4($v1)
    /* F3B64 800E4BB4 AC790000 */  sw         $t9, 0x0($v1)
    /* F3B68 800E4BB8 8C830000 */  lw         $v1, 0x0($a0)
    /* F3B6C 800E4BBC 24190200 */  addiu      $t9, $zero, 0x200
    /* F3B70 800E4BC0 3C0FB700 */  lui        $t7, (0xB7000000 >> 16)
    /* F3B74 800E4BC4 24780008 */  addiu      $t8, $v1, 0x8
    /* F3B78 800E4BC8 AC980000 */  sw         $t8, 0x0($a0)
    /* F3B7C 800E4BCC AC790004 */  sw         $t9, 0x4($v1)
    /* F3B80 800E4BD0 AC6F0000 */  sw         $t7, 0x0($v1)
    /* F3B84 800E4BD4 8C830000 */  lw         $v1, 0x0($a0)
    /* F3B88 800E4BD8 3C0F0400 */  lui        $t7, (0x400185F >> 16)
    /* F3B8C 800E4BDC 35EF185F */  ori        $t7, $t7, (0x400185F & 0xFFFF)
    /* F3B90 800E4BE0 246E0008 */  addiu      $t6, $v1, 0x8
    /* F3B94 800E4BE4 AC8E0000 */  sw         $t6, 0x0($a0)
    /* F3B98 800E4BE8 AC600004 */  sw         $zero, 0x4($v1)
    /* F3B9C 800E4BEC AC6A0000 */  sw         $t2, 0x0($v1)
    /* F3BA0 800E4BF0 8C830000 */  lw         $v1, 0x0($a0)
    /* F3BA4 800E4BF4 24780008 */  addiu      $t8, $v1, 0x8
    /* F3BA8 800E4BF8 AC980000 */  sw         $t8, 0x0($a0)
    /* F3BAC 800E4BFC AC6F0000 */  sw         $t7, 0x0($v1)
    /* F3BB0 800E4C00 8C590000 */  lw         $t9, 0x0($v0)
    /* F3BB4 800E4C04 272EFFA0 */  addiu      $t6, $t9, -0x60
    /* F3BB8 800E4C08 01C1C024 */  and        $t8, $t6, $at
    /* F3BBC 800E4C0C AC780004 */  sw         $t8, 0x4($v1)
    /* F3BC0 800E4C10 8C830000 */  lw         $v1, 0x0($a0)
    /* F3BC4 800E4C14 3C19B100 */  lui        $t9, (0xB1000804 >> 16)
    /* F3BC8 800E4C18 37390804 */  ori        $t9, $t9, (0xB1000804 & 0xFFFF)
    /* F3BCC 800E4C1C 246F0008 */  addiu      $t7, $v1, 0x8
    /* F3BD0 800E4C20 AC8F0000 */  sw         $t7, 0x0($a0)
    /* F3BD4 800E4C24 240E0208 */  addiu      $t6, $zero, 0x208
    /* F3BD8 800E4C28 AC6E0004 */  sw         $t6, 0x4($v1)
    /* F3BDC 800E4C2C AC790000 */  sw         $t9, 0x0($v1)
    /* F3BE0 800E4C30 8C830000 */  lw         $v1, 0x0($a0)
    /* F3BE4 800E4C34 3C190006 */  lui        $t9, (0x60A02 >> 16)
    /* F3BE8 800E4C38 3C0FB100 */  lui        $t7, (0xB1000602 >> 16)
    /* F3BEC 800E4C3C 24780008 */  addiu      $t8, $v1, 0x8
    /* F3BF0 800E4C40 AC980000 */  sw         $t8, 0x0($a0)
    /* F3BF4 800E4C44 35EF0602 */  ori        $t7, $t7, (0xB1000602 & 0xFFFF)
    /* F3BF8 800E4C48 37390A02 */  ori        $t9, $t9, (0x60A02 & 0xFFFF)
    /* F3BFC 800E4C4C AC790004 */  sw         $t9, 0x4($v1)
    /* F3C00 800E4C50 AC6F0000 */  sw         $t7, 0x0($v1)
    /* F3C04 800E4C54 8FAE0098 */  lw         $t6, 0x98($sp)
    /* F3C08 800E4C58 51C00021 */  beql       $t6, $zero, .L800E4CE0_F3C90
    /* F3C0C 800E4C5C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* F3C10 800E4C60 8C830000 */  lw         $v1, 0x0($a0)
    /* F3C14 800E4C64 3C0E8000 */  lui        $t6, (0x80008000 >> 16)
    /* F3C18 800E4C68 35CE8000 */  ori        $t6, $t6, (0x80008000 & 0xFFFF)
    /* F3C1C 800E4C6C 24780008 */  addiu      $t8, $v1, 0x8
    /* F3C20 800E4C70 AC980000 */  sw         $t8, 0x0($a0)
    /* F3C24 800E4C74 AC600004 */  sw         $zero, 0x4($v1)
    /* F3C28 800E4C78 AC6A0000 */  sw         $t2, 0x0($v1)
    /* F3C2C 800E4C7C 8C830000 */  lw         $v1, 0x0($a0)
    /* F3C30 800E4C80 3C19BB00 */  lui        $t9, (0xBB000000 >> 16)
    /* F3C34 800E4C84 246F0008 */  addiu      $t7, $v1, 0x8
    /* F3C38 800E4C88 AC8F0000 */  sw         $t7, 0x0($a0)
    /* F3C3C 800E4C8C AC6E0004 */  sw         $t6, 0x4($v1)
    /* F3C40 800E4C90 AC790000 */  sw         $t9, 0x0($v1)
    /* F3C44 800E4C94 8C830000 */  lw         $v1, 0x0($a0)
    /* F3C48 800E4C98 3C19FFFE */  lui        $t9, (0xFFFE793C >> 16)
    /* F3C4C 800E4C9C 3C0FFCFF */  lui        $t7, (0xFCFFFFFF >> 16)
    /* F3C50 800E4CA0 24780008 */  addiu      $t8, $v1, 0x8
    /* F3C54 800E4CA4 AC980000 */  sw         $t8, 0x0($a0)
    /* F3C58 800E4CA8 35EFFFFF */  ori        $t7, $t7, (0xFCFFFFFF & 0xFFFF)
    /* F3C5C 800E4CAC 3739793C */  ori        $t9, $t9, (0xFFFE793C & 0xFFFF)
    /* F3C60 800E4CB0 AC790004 */  sw         $t9, 0x4($v1)
    /* F3C64 800E4CB4 AC6F0000 */  sw         $t7, 0x0($v1)
    /* F3C68 800E4CB8 8C830000 */  lw         $v1, 0x0($a0)
    /* F3C6C 800E4CBC 3C0F0055 */  lui        $t7, (0x552078 >> 16)
    /* F3C70 800E4CC0 3C18B900 */  lui        $t8, (0xB900031D >> 16)
    /* F3C74 800E4CC4 246E0008 */  addiu      $t6, $v1, 0x8
    /* F3C78 800E4CC8 AC8E0000 */  sw         $t6, 0x0($a0)
    /* F3C7C 800E4CCC 3718031D */  ori        $t8, $t8, (0xB900031D & 0xFFFF)
    /* F3C80 800E4CD0 35EF2078 */  ori        $t7, $t7, (0x552078 & 0xFFFF)
    /* F3C84 800E4CD4 AC6F0004 */  sw         $t7, 0x4($v1)
    /* F3C88 800E4CD8 AC780000 */  sw         $t8, 0x0($v1)
    /* F3C8C 800E4CDC 8FBF0014 */  lw         $ra, 0x14($sp)
  .L800E4CE0_F3C90:
    /* F3C90 800E4CE0 27BD0080 */  addiu      $sp, $sp, 0x80
    /* F3C94 800E4CE4 03E00008 */  jr         $ra
    /* F3C98 800E4CE8 00000000 */   nop
endlabel func_800E3928_F28D8
