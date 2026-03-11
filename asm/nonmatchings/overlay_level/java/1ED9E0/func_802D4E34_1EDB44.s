nonmatching func_802D4E34_1EDB44, 0x38

glabel func_802D4E34_1EDB44
    /* 1EDB44 802D4E34 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1EDB48 802D4E38 AFA40018 */  sw         $a0, 0x18($sp)
    /* 1EDB4C 802D4E3C 00047400 */  sll        $t6, $a0, 16
    /* 1EDB50 802D4E40 000E2403 */  sra        $a0, $t6, 16
    /* 1EDB54 802D4E44 2401FFFD */  addiu      $at, $zero, -0x3
    /* 1EDB58 802D4E48 10810004 */  beq        $a0, $at, .L802D4E5C_1EDB6C
    /* 1EDB5C 802D4E4C AFBF0014 */   sw        $ra, 0x14($sp)
    /* 1EDB60 802D4E50 2405000D */  addiu      $a1, $zero, 0xD
    /* 1EDB64 802D4E54 0C030693 */  jal        func_800C1A4C_D09FC
    /* 1EDB68 802D4E58 24060001 */   addiu     $a2, $zero, 0x1
  .L802D4E5C_1EDB6C:
    /* 1EDB6C 802D4E5C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1EDB70 802D4E60 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1EDB74 802D4E64 03E00008 */  jr         $ra
    /* 1EDB78 802D4E68 00000000 */   nop
endlabel func_802D4E34_1EDB44
