nonmatching func_802D5508_1EE218, 0x58

glabel func_802D5508_1EE218
    /* 1EE218 802D5508 3C04802E */  lui        $a0, %hi(D_802E0FB0)
    /* 1EE21C 802D550C 24840FB0 */  addiu      $a0, $a0, %lo(D_802E0FB0)
    /* 1EE220 802D5510 84820000 */  lh         $v0, 0x0($a0)
    /* 1EE224 802D5514 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1EE228 802D5518 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1EE22C 802D551C 244EFFFF */  addiu      $t6, $v0, -0x1
    /* 1EE230 802D5520 1C40000B */  bgtz       $v0, .L802D5550_1EE260
    /* 1EE234 802D5524 A48E0000 */   sh        $t6, 0x0($a0)
    /* 1EE238 802D5528 0C004D1A */  jal        func_80013468_14068
    /* 1EE23C 802D552C 24040006 */   addiu     $a0, $zero, 0x6
    /* 1EE240 802D5530 3C04802D */  lui        $a0, %hi(func_802D51F8_1EDF08)
    /* 1EE244 802D5534 248451F8 */  addiu      $a0, $a0, %lo(func_802D51F8_1EDF08)
    /* 1EE248 802D5538 2405000C */  addiu      $a1, $zero, 0xC
    /* 1EE24C 802D553C 0C03BFAD */  jal        func_800EFEB4_FEE64
    /* 1EE250 802D5540 00003025 */   or        $a2, $zero, $zero
    /* 1EE254 802D5544 3C04802D */  lui        $a0, %hi(func_802D5508_1EE218)
    /* 1EE258 802D5548 0C001D2F */  jal        func_800074BC_80BC
    /* 1EE25C 802D554C 24845508 */   addiu     $a0, $a0, %lo(func_802D5508_1EE218)
  .L802D5550_1EE260:
    /* 1EE260 802D5550 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1EE264 802D5554 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1EE268 802D5558 03E00008 */  jr         $ra
    /* 1EE26C 802D555C 00000000 */   nop
endlabel func_802D5508_1EE218
