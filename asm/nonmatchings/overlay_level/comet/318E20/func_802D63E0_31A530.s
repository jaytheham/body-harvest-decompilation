nonmatching func_802D63E0_31A530, 0x48

glabel func_802D63E0_31A530
    /* 31A530 802D63E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 31A534 802D63E4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 31A538 802D63E8 24040000 */  addiu      $a0, $zero, 0x0
    /* 31A53C 802D63EC 0C001C9B */  jal        func_8000726C_7E6C
    /* 31A540 802D63F0 2405002F */   addiu     $a1, $zero, 0x2F
    /* 31A544 802D63F4 14400005 */  bnez       $v0, .L802D640C_31A55C
    /* 31A548 802D63F8 3C04802D */   lui       $a0, %hi(func_802D6294_31A3E4)
    /* 31A54C 802D63FC 24846294 */  addiu      $a0, $a0, %lo(func_802D6294_31A3E4)
    /* 31A550 802D6400 24050022 */  addiu      $a1, $zero, 0x22
    /* 31A554 802D6404 0C03BFAD */  jal        func_800EFEB4_FEE64
    /* 31A558 802D6408 24060001 */   addiu     $a2, $zero, 0x1
  .L802D640C_31A55C:
    /* 31A55C 802D640C 24040000 */  addiu      $a0, $zero, 0x0
    /* 31A560 802D6410 0C001CB3 */  jal        func_800072CC_7ECC
    /* 31A564 802D6414 2405002F */   addiu     $a1, $zero, 0x2F
    /* 31A568 802D6418 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 31A56C 802D641C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 31A570 802D6420 03E00008 */  jr         $ra
    /* 31A574 802D6424 00000000 */   nop
endlabel func_802D63E0_31A530
