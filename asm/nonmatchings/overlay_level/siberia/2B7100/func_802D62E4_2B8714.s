nonmatching func_802D62E4_2B8714, 0x5C

glabel func_802D62E4_2B8714
    /* 2B8714 802D62E4 3C0E8005 */  lui        $t6, %hi(D_8004D1B1)
    /* 2B8718 802D62E8 91CED1B1 */  lbu        $t6, %lo(D_8004D1B1)($t6)
    /* 2B871C 802D62EC 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 2B8720 802D62F0 240F0028 */  addiu      $t7, $zero, 0x28
    /* 2B8724 802D62F4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2B8728 802D62F8 01EEC823 */  subu       $t9, $t7, $t6
    /* 2B872C 802D62FC 3324FFFF */  andi       $a0, $t9, 0xFFFF
    /* 2B8730 802D6300 0C026FD9 */  jal        func_8009BF64_AAF14
    /* 2B8734 802D6304 A7B9001E */   sh        $t9, 0x1E($sp)
    /* 2B8738 802D6308 87A2001E */  lh         $v0, 0x1E($sp)
    /* 2B873C 802D630C 24040000 */  addiu      $a0, $zero, 0x0
    /* 2B8740 802D6310 04400004 */  bltz       $v0, .L802D6324_2B8754
    /* 2B8744 802D6314 00000000 */   nop
    /* 2B8748 802D6318 0C001C9B */  jal        func_8000726C_7E6C
    /* 2B874C 802D631C 24050028 */   addiu     $a1, $zero, 0x28
    /* 2B8750 802D6320 10400003 */  beqz       $v0, .L802D6330_2B8760
  .L802D6324_2B8754:
    /* 2B8754 802D6324 3C04802D */   lui       $a0, %hi(func_802D62E4_2B8714)
    /* 2B8758 802D6328 0C001D2F */  jal        func_800074BC_80BC
    /* 2B875C 802D632C 248462E4 */   addiu     $a0, $a0, %lo(func_802D62E4_2B8714)
  .L802D6330_2B8760:
    /* 2B8760 802D6330 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 2B8764 802D6334 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 2B8768 802D6338 03E00008 */  jr         $ra
    /* 2B876C 802D633C 00000000 */   nop
endlabel func_802D62E4_2B8714
