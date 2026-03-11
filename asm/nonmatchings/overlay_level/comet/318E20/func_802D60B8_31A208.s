nonmatching func_802D60B8_31A208, 0x48

glabel func_802D60B8_31A208
    /* 31A208 802D60B8 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 31A20C 802D60BC AFBF0014 */  sw         $ra, 0x14($sp)
    /* 31A210 802D60C0 24040000 */  addiu      $a0, $zero, 0x0
    /* 31A214 802D60C4 0C001C9B */  jal        func_8000726C_7E6C
    /* 31A218 802D60C8 2405002E */   addiu     $a1, $zero, 0x2E
    /* 31A21C 802D60CC 14400005 */  bnez       $v0, .L802D60E4_31A234
    /* 31A220 802D60D0 3C04802D */   lui       $a0, %hi(func_802D5F6C_31A0BC)
    /* 31A224 802D60D4 24845F6C */  addiu      $a0, $a0, %lo(func_802D5F6C_31A0BC)
    /* 31A228 802D60D8 24050020 */  addiu      $a1, $zero, 0x20
    /* 31A22C 802D60DC 0C03BFAD */  jal        func_800EFEB4_FEE64
    /* 31A230 802D60E0 24060001 */   addiu     $a2, $zero, 0x1
  .L802D60E4_31A234:
    /* 31A234 802D60E4 24040000 */  addiu      $a0, $zero, 0x0
    /* 31A238 802D60E8 0C001CB3 */  jal        func_800072CC_7ECC
    /* 31A23C 802D60EC 2405002E */   addiu     $a1, $zero, 0x2E
    /* 31A240 802D60F0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 31A244 802D60F4 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 31A248 802D60F8 03E00008 */  jr         $ra
    /* 31A24C 802D60FC 00000000 */   nop
endlabel func_802D60B8_31A208
