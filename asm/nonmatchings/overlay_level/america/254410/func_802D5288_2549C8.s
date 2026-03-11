nonmatching func_802D5288_2549C8, 0x28

glabel func_802D5288_2549C8
    /* 2549C8 802D5288 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 2549CC 802D528C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2549D0 802D5290 AFA40018 */  sw         $a0, 0x18($sp)
    /* 2549D4 802D5294 24040000 */  addiu      $a0, $zero, 0x0
    /* 2549D8 802D5298 0C001CB3 */  jal        func_800072CC_7ECC
    /* 2549DC 802D529C 2405002C */   addiu     $a1, $zero, 0x2C
    /* 2549E0 802D52A0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 2549E4 802D52A4 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 2549E8 802D52A8 03E00008 */  jr         $ra
    /* 2549EC 802D52AC 00000000 */   nop
endlabel func_802D5288_2549C8
