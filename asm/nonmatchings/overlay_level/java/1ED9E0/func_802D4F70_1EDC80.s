nonmatching func_802D4F70_1EDC80, 0x28

glabel func_802D4F70_1EDC80
    /* 1EDC80 802D4F70 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1EDC84 802D4F74 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1EDC88 802D4F78 AFA40018 */  sw         $a0, 0x18($sp)
    /* 1EDC8C 802D4F7C 24040000 */  addiu      $a0, $zero, 0x0
    /* 1EDC90 802D4F80 0C001CB3 */  jal        func_800072CC_7ECC
    /* 1EDC94 802D4F84 2405002C */   addiu     $a1, $zero, 0x2C
    /* 1EDC98 802D4F88 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1EDC9C 802D4F8C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1EDCA0 802D4F90 03E00008 */  jr         $ra
    /* 1EDCA4 802D4F94 00000000 */   nop
endlabel func_802D4F70_1EDC80
