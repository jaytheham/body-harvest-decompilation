nonmatching func_802D7508_2B9938, 0x38

glabel func_802D7508_2B9938
    /* 2B9938 802D7508 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 2B993C 802D750C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2B9940 802D7510 24040000 */  addiu      $a0, $zero, 0x0
    /* 2B9944 802D7514 0C001CB3 */  jal        func_800072CC_7ECC
    /* 2B9948 802D7518 24050033 */   addiu     $a1, $zero, 0x33
    /* 2B994C 802D751C 3C04802D */  lui        $a0, %hi(func_802D7398_2B97C8)
    /* 2B9950 802D7520 24847398 */  addiu      $a0, $a0, %lo(func_802D7398_2B97C8)
    /* 2B9954 802D7524 2405001E */  addiu      $a1, $zero, 0x1E
    /* 2B9958 802D7528 0C03BFAD */  jal        func_800EFEB4_FEE64
    /* 2B995C 802D752C 00003025 */   or        $a2, $zero, $zero
    /* 2B9960 802D7530 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 2B9964 802D7534 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 2B9968 802D7538 03E00008 */  jr         $ra
    /* 2B996C 802D753C 00000000 */   nop
endlabel func_802D7508_2B9938
