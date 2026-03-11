nonmatching func_802D5FE4_1EECF4, 0xF8

glabel func_802D5FE4_1EECF4
    /* 1EECF4 802D5FE4 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 1EECF8 802D5FE8 F7B60018 */  sdc1       $f22, 0x18($sp)
    /* 1EECFC 802D5FEC 3C013FF8 */  lui        $at, (0x3FF80000 >> 16)
    /* 1EED00 802D5FF0 AFB30030 */  sw         $s3, 0x30($sp)
    /* 1EED04 802D5FF4 AFB10028 */  sw         $s1, 0x28($sp)
    /* 1EED08 802D5FF8 AFB00024 */  sw         $s0, 0x24($sp)
    /* 1EED0C 802D5FFC 4481B800 */  mtc1       $at, $f23
    /* 1EED10 802D6000 AFB2002C */  sw         $s2, 0x2C($sp)
    /* 1EED14 802D6004 F7B40010 */  sdc1       $f20, 0x10($sp)
    /* 1EED18 802D6008 3C01802E */  lui        $at, %hi(D_802E0EB0)
    /* 1EED1C 802D600C 3C10802E */  lui        $s0, %hi(D_802E0570)
    /* 1EED20 802D6010 3C118005 */  lui        $s1, %hi(buildingInstances)
    /* 1EED24 802D6014 3C13802E */  lui        $s3, %hi(D_802E0580)
    /* 1EED28 802D6018 4480B000 */  mtc1       $zero, $f22
    /* 1EED2C 802D601C AFBF0034 */  sw         $ra, 0x34($sp)
    /* 1EED30 802D6020 26730580 */  addiu      $s3, $s3, %lo(D_802E0580)
    /* 1EED34 802D6024 26310AD8 */  addiu      $s1, $s1, %lo(buildingInstances)
    /* 1EED38 802D6028 26100570 */  addiu      $s0, $s0, %lo(D_802E0570)
    /* 1EED3C 802D602C D4340EB0 */  ldc1       $f20, %lo(D_802E0EB0)($at)
    /* 1EED40 802D6030 241200FF */  addiu      $s2, $zero, 0xFF
    /* 1EED44 802D6034 820E0000 */  lb         $t6, 0x0($s0)
  .L802D6038_1EED48:
    /* 1EED48 802D6038 82090001 */  lb         $t1, 0x1($s0)
    /* 1EED4C 802D603C 86390334 */  lh         $t9, 0x334($s1)
    /* 1EED50 802D6040 000E7A00 */  sll        $t7, $t6, 8
    /* 1EED54 802D6044 448F2000 */  mtc1       $t7, $f4
    /* 1EED58 802D6048 00095200 */  sll        $t2, $t1, 8
    /* 1EED5C 802D604C 448A8000 */  mtc1       $t2, $f16
    /* 1EED60 802D6050 468021A1 */  cvt.d.w    $f6, $f4
    /* 1EED64 802D6054 862E0330 */  lh         $t6, 0x330($s1)
    /* 1EED68 802D6058 2406FFFF */  addiu      $a2, $zero, -0x1
    /* 1EED6C 802D605C 468084A1 */  cvt.d.w    $f18, $f16
    /* 1EED70 802D6060 46343202 */  mul.d      $f8, $f6, $f20
    /* 1EED74 802D6064 00000000 */  nop
    /* 1EED78 802D6068 46369102 */  mul.d      $f4, $f18, $f22
    /* 1EED7C 802D606C 4620428D */  trunc.w.d  $f10, $f8
    /* 1EED80 802D6070 4620218D */  trunc.w.d  $f6, $f4
    /* 1EED84 802D6074 44085000 */  mfc1       $t0, $f10
    /* 1EED88 802D6078 440D3000 */  mfc1       $t5, $f6
    /* 1EED8C 802D607C 010E2021 */  addu       $a0, $t0, $t6
    /* 1EED90 802D6080 00047C00 */  sll        $t7, $a0, 16
    /* 1EED94 802D6084 01B92821 */  addu       $a1, $t5, $t9
    /* 1EED98 802D6088 00054400 */  sll        $t0, $a1, 16
    /* 1EED9C 802D608C 000F2403 */  sra        $a0, $t7, 16
    /* 1EEDA0 802D6090 0C024A94 */  jal        func_80092A50_A1A00
    /* 1EEDA4 802D6094 00082C03 */   sra       $a1, $t0, 16
    /* 1EEDA8 802D6098 304A00FF */  andi       $t2, $v0, 0xFF
    /* 1EEDAC 802D609C 124A0003 */  beq        $s2, $t2, .L802D60AC_1EEDBC
    /* 1EEDB0 802D60A0 304400FF */   andi      $a0, $v0, 0xFF
    /* 1EEDB4 802D60A4 0C0202D1 */  jal        func_80080B44_8FAF4
    /* 1EEDB8 802D60A8 24050022 */   addiu     $a1, $zero, 0x22
  .L802D60AC_1EEDBC:
    /* 1EEDBC 802D60AC 26100002 */  addiu      $s0, $s0, 0x2
    /* 1EEDC0 802D60B0 5613FFE1 */  bnel       $s0, $s3, .L802D6038_1EED48
    /* 1EEDC4 802D60B4 820E0000 */   lb        $t6, 0x0($s0)
    /* 1EEDC8 802D60B8 8FBF0034 */  lw         $ra, 0x34($sp)
    /* 1EEDCC 802D60BC D7B40010 */  ldc1       $f20, 0x10($sp)
    /* 1EEDD0 802D60C0 D7B60018 */  ldc1       $f22, 0x18($sp)
    /* 1EEDD4 802D60C4 8FB00024 */  lw         $s0, 0x24($sp)
    /* 1EEDD8 802D60C8 8FB10028 */  lw         $s1, 0x28($sp)
    /* 1EEDDC 802D60CC 8FB2002C */  lw         $s2, 0x2C($sp)
    /* 1EEDE0 802D60D0 8FB30030 */  lw         $s3, 0x30($sp)
    /* 1EEDE4 802D60D4 03E00008 */  jr         $ra
    /* 1EEDE8 802D60D8 27BD0038 */   addiu     $sp, $sp, 0x38
endlabel func_802D5FE4_1EECF4
