nonmatching func_802D62A0_1EEFB0, 0x98

glabel func_802D62A0_1EEFB0
    /* 1EEFB0 802D62A0 3C05802E */  lui        $a1, %hi(D_802E0FB6)
    /* 1EEFB4 802D62A4 24A50FB6 */  addiu      $a1, $a1, %lo(D_802E0FB6)
    /* 1EEFB8 802D62A8 84A20000 */  lh         $v0, 0x0($a1)
    /* 1EEFBC 802D62AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1EEFC0 802D62B0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1EEFC4 802D62B4 2841001E */  slti       $at, $v0, 0x1E
    /* 1EEFC8 802D62B8 1020000B */  beqz       $at, .L802D62E8_1EEFF8
    /* 1EEFCC 802D62BC 3C038005 */   lui       $v1, %hi(buildingInstances)
    /* 1EEFD0 802D62C0 3C0E8005 */  lui        $t6, %hi(D_80052A8C)
    /* 1EEFD4 802D62C4 8DCE2A8C */  lw         $t6, %lo(D_80052A8C)($t6)
    /* 1EEFD8 802D62C8 24010005 */  addiu      $at, $zero, 0x5
    /* 1EEFDC 802D62CC 24580001 */  addiu      $t8, $v0, 0x1
    /* 1EEFE0 802D62D0 01C1001B */  divu       $zero, $t6, $at
    /* 1EEFE4 802D62D4 00007810 */  mfhi       $t7
    /* 1EEFE8 802D62D8 15E00003 */  bnez       $t7, .L802D62E8_1EEFF8
    /* 1EEFEC 802D62DC 00000000 */   nop
    /* 1EEFF0 802D62E0 A4B80000 */  sh         $t8, 0x0($a1)
    /* 1EEFF4 802D62E4 84A20000 */  lh         $v0, 0x0($a1)
  .L802D62E8_1EEFF8:
    /* 1EEFF8 802D62E8 24630AD8 */  addiu      $v1, $v1, %lo(buildingInstances)
    /* 1EEFFC 802D62EC 847904B0 */  lh         $t9, 0x4B0($v1)
    /* 1EF000 802D62F0 3C04802D */  lui        $a0, %hi(func_802D62A0_1EEFB0)
    /* 1EF004 802D62F4 240A0028 */  addiu      $t2, $zero, 0x28
    /* 1EF008 802D62F8 03224023 */  subu       $t0, $t9, $v0
    /* 1EF00C 802D62FC A46804B0 */  sh         $t0, 0x4B0($v1)
    /* 1EF010 802D6300 846904B0 */  lh         $t1, 0x4B0($v1)
    /* 1EF014 802D6304 248462A0 */  addiu      $a0, $a0, %lo(func_802D62A0_1EEFB0)
    /* 1EF018 802D6308 2921ADF9 */  slti       $at, $t1, -0x5207
    /* 1EF01C 802D630C 50200007 */  beql       $at, $zero, .L802D632C_1EF03C
    /* 1EF020 802D6310 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1EF024 802D6314 0C001D2F */  jal        func_800074BC_80BC
    /* 1EF028 802D6318 A4AA0000 */   sh        $t2, 0x0($a1)
    /* 1EF02C 802D631C 3C04802D */  lui        $a0, %hi(func_802D614C_1EEE5C)
    /* 1EF030 802D6320 0C001D04 */  jal        func_80007410_8010
    /* 1EF034 802D6324 2484614C */   addiu     $a0, $a0, %lo(func_802D614C_1EEE5C)
    /* 1EF038 802D6328 8FBF0014 */  lw         $ra, 0x14($sp)
  .L802D632C_1EF03C:
    /* 1EF03C 802D632C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1EF040 802D6330 03E00008 */  jr         $ra
    /* 1EF044 802D6334 00000000 */   nop
endlabel func_802D62A0_1EEFB0
