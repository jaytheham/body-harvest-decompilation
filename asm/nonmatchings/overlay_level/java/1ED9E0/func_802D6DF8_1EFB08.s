nonmatching func_802D6DF8_1EFB08, 0x78

glabel func_802D6DF8_1EFB08
    /* 1EFB08 802D6DF8 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 1EFB0C 802D6DFC AFBF0024 */  sw         $ra, 0x24($sp)
    /* 1EFB10 802D6E00 3C04802E */  lui        $a0, %hi(D_802E0E60)
    /* 1EFB14 802D6E04 AFB30020 */  sw         $s3, 0x20($sp)
    /* 1EFB18 802D6E08 AFB2001C */  sw         $s2, 0x1C($sp)
    /* 1EFB1C 802D6E0C AFB10018 */  sw         $s1, 0x18($sp)
    /* 1EFB20 802D6E10 AFB00014 */  sw         $s0, 0x14($sp)
    /* 1EFB24 802D6E14 0C00731B */  jal        osSyncPrintf
    /* 1EFB28 802D6E18 24840E60 */   addiu     $a0, $a0, %lo(D_802E0E60)
    /* 1EFB2C 802D6E1C 3C12802E */  lui        $s2, %hi(D_802E04F8)
    /* 1EFB30 802D6E20 265204F8 */  addiu      $s2, $s2, %lo(D_802E04F8)
    /* 1EFB34 802D6E24 00008025 */  or         $s0, $zero, $zero
    /* 1EFB38 802D6E28 2413FFFD */  addiu      $s3, $zero, -0x3
  .L802D6E2C_1EFB3C:
    /* 1EFB3C 802D6E2C 001070C0 */  sll        $t6, $s0, 3
    /* 1EFB40 802D6E30 024E8821 */  addu       $s1, $s2, $t6
    /* 1EFB44 802D6E34 0C0B538D */  jal        func_802D4E34_1EDB44
    /* 1EFB48 802D6E38 86240000 */   lh        $a0, 0x0($s1)
    /* 1EFB4C 802D6E3C 26100001 */  addiu      $s0, $s0, 0x1
    /* 1EFB50 802D6E40 00107C00 */  sll        $t7, $s0, 16
    /* 1EFB54 802D6E44 000F8403 */  sra        $s0, $t7, 16
    /* 1EFB58 802D6E48 2A01000E */  slti       $at, $s0, 0xE
    /* 1EFB5C 802D6E4C 1420FFF7 */  bnez       $at, .L802D6E2C_1EFB3C
    /* 1EFB60 802D6E50 A6330000 */   sh        $s3, 0x0($s1)
    /* 1EFB64 802D6E54 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 1EFB68 802D6E58 8FB00014 */  lw         $s0, 0x14($sp)
    /* 1EFB6C 802D6E5C 8FB10018 */  lw         $s1, 0x18($sp)
    /* 1EFB70 802D6E60 8FB2001C */  lw         $s2, 0x1C($sp)
    /* 1EFB74 802D6E64 8FB30020 */  lw         $s3, 0x20($sp)
    /* 1EFB78 802D6E68 03E00008 */  jr         $ra
    /* 1EFB7C 802D6E6C 27BD0028 */   addiu     $sp, $sp, 0x28
endlabel func_802D6DF8_1EFB08
