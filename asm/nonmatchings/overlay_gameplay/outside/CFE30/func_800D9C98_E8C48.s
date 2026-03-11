nonmatching func_800D9C98_E8C48, 0x140

glabel func_800D9C98_E8C48
    /* E8C48 800D9C98 00047400 */  sll        $t6, $a0, 16
    /* E8C4C 800D9C9C 000E7C03 */  sra        $t7, $t6, 16
    /* E8C50 800D9CA0 000FC0C0 */  sll        $t8, $t7, 3
    /* E8C54 800D9CA4 030FC023 */  subu       $t8, $t8, $t7
    /* E8C58 800D9CA8 3C198015 */  lui        $t9, %hi(D_80154318)
    /* E8C5C 800D9CAC 27394318 */  addiu      $t9, $t9, %lo(D_80154318)
    /* E8C60 800D9CB0 0018C080 */  sll        $t8, $t8, 2
    /* E8C64 800D9CB4 03191021 */  addu       $v0, $t8, $t9
    /* E8C68 800D9CB8 8448000C */  lh         $t0, 0xC($v0)
    /* E8C6C 800D9CBC 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* E8C70 800D9CC0 AFBF0024 */  sw         $ra, 0x24($sp)
    /* E8C74 800D9CC4 31090001 */  andi       $t1, $t0, 0x1
    /* E8C78 800D9CC8 AFB00020 */  sw         $s0, 0x20($sp)
    /* E8C7C 800D9CCC AFA40030 */  sw         $a0, 0x30($sp)
    /* E8C80 800D9CD0 1120003C */  beqz       $t1, .L800D9DC4_E8D74
    /* E8C84 800D9CD4 AFA50034 */   sw        $a1, 0x34($sp)
    /* E8C88 800D9CD8 24500008 */  addiu      $s0, $v0, 0x8
    /* E8C8C 800D9CDC 860A0004 */  lh         $t2, 0x4($s0)
    /* E8C90 800D9CE0 240C4000 */  addiu      $t4, $zero, 0x4000
    /* E8C94 800D9CE4 000A5A80 */  sll        $t3, $t2, 10
    /* E8C98 800D9CE8 018B2023 */  subu       $a0, $t4, $t3
    /* E8C9C 800D9CEC 308DFFFF */  andi       $t5, $a0, 0xFFFF
    /* E8CA0 800D9CF0 0C007660 */  jal        sins
    /* E8CA4 800D9CF4 01A02025 */   or        $a0, $t5, $zero
    /* E8CA8 800D9CF8 44822000 */  mtc1       $v0, $f4
    /* E8CAC 800D9CFC 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* E8CB0 800D9D00 44815800 */  mtc1       $at, $f11
    /* E8CB4 800D9D04 468021A0 */  cvt.s.w    $f6, $f4
    /* E8CB8 800D9D08 44805000 */  mtc1       $zero, $f10
    /* E8CBC 800D9D0C 3C018014 */  lui        $at, %hi(D_80144028)
    /* E8CC0 800D9D10 D4324028 */  ldc1       $f18, %lo(D_80144028)($at)
    /* E8CC4 800D9D14 860E0008 */  lh         $t6, 0x8($s0)
    /* E8CC8 800D9D18 86080004 */  lh         $t0, 0x4($s0)
    /* E8CCC 800D9D1C 46003221 */  cvt.d.s    $f8, $f6
    /* E8CD0 800D9D20 448E3000 */  mtc1       $t6, $f6
    /* E8CD4 800D9D24 462A4403 */  div.d      $f16, $f8, $f10
    /* E8CD8 800D9D28 24090018 */  addiu      $t1, $zero, 0x18
    /* E8CDC 800D9D2C 86040006 */  lh         $a0, 0x6($s0)
    /* E8CE0 800D9D30 8606000A */  lh         $a2, 0xA($s0)
    /* E8CE4 800D9D34 46803221 */  cvt.d.w    $f8, $f6
    /* E8CE8 800D9D38 01285023 */  subu       $t2, $t1, $t0
    /* E8CEC 800D9D3C AFAA0010 */  sw         $t2, 0x10($sp)
    /* E8CF0 800D9D40 24070046 */  addiu      $a3, $zero, 0x46
    /* E8CF4 800D9D44 46328102 */  mul.d      $f4, $f16, $f18
    /* E8CF8 800D9D48 46282280 */  add.d      $f10, $f4, $f8
    /* E8CFC 800D9D4C 4620540D */  trunc.w.d  $f16, $f10
    /* E8D00 800D9D50 44058000 */  mfc1       $a1, $f16
    /* E8D04 800D9D54 00000000 */  nop
    /* E8D08 800D9D58 0005C400 */  sll        $t8, $a1, 16
    /* E8D0C 800D9D5C 0C037B97 */  jal        func_800DEE5C_EDE0C
    /* E8D10 800D9D60 00182C03 */   sra       $a1, $t8, 16
    /* E8D14 800D9D64 0C000E38 */  jal        func_800038E0_44E0
    /* E8D18 800D9D68 AFA2002C */   sw        $v0, 0x2C($sp)
    /* E8D1C 800D9D6C 93A4002F */  lbu        $a0, 0x2F($sp)
    /* E8D20 800D9D70 240500FF */  addiu      $a1, $zero, 0xFF
    /* E8D24 800D9D74 04410004 */  bgez       $v0, .L800D9D88_E8D38
    /* E8D28 800D9D78 3046007F */   andi      $a2, $v0, 0x7F
    /* E8D2C 800D9D7C 10C00002 */  beqz       $a2, .L800D9D88_E8D38
    /* E8D30 800D9D80 00000000 */   nop
    /* E8D34 800D9D84 24C6FF80 */  addiu      $a2, $a2, -0x80
  .L800D9D88_E8D38:
    /* E8D38 800D9D88 24C60040 */  addiu      $a2, $a2, 0x40
    /* E8D3C 800D9D8C 30CC00FF */  andi       $t4, $a2, 0xFF
    /* E8D40 800D9D90 01803025 */  or         $a2, $t4, $zero
    /* E8D44 800D9D94 0C037764 */  jal        func_800DDD90_ECD40
    /* E8D48 800D9D98 00003825 */   or        $a3, $zero, $zero
    /* E8D4C 800D9D9C 860B0004 */  lh         $t3, 0x4($s0)
    /* E8D50 800D9DA0 86040006 */  lh         $a0, 0x6($s0)
    /* E8D54 800D9DA4 86050008 */  lh         $a1, 0x8($s0)
    /* E8D58 800D9DA8 000B6843 */  sra        $t5, $t3, 1
    /* E8D5C 800D9DAC 448D9000 */  mtc1       $t5, $f18
    /* E8D60 800D9DB0 8606000A */  lh         $a2, 0xA($s0)
    /* E8D64 800D9DB4 468094A0 */  cvt.s.w    $f18, $f18
    /* E8D68 800D9DB8 44079000 */  mfc1       $a3, $f18
    /* E8D6C 800D9DBC 0C04D751 */  jal        func_80135D44_144CF4
    /* E8D70 800D9DC0 00000000 */   nop
  .L800D9DC4_E8D74:
    /* E8D74 800D9DC4 8FBF0024 */  lw         $ra, 0x24($sp)
    /* E8D78 800D9DC8 8FB00020 */  lw         $s0, 0x20($sp)
    /* E8D7C 800D9DCC 27BD0030 */  addiu      $sp, $sp, 0x30
    /* E8D80 800D9DD0 03E00008 */  jr         $ra
    /* E8D84 800D9DD4 00000000 */   nop
endlabel func_800D9C98_E8C48
