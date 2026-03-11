nonmatching func_802D5F24_31A074, 0x48

glabel func_802D5F24_31A074
    /* 31A074 802D5F24 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 31A078 802D5F28 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 31A07C 802D5F2C 24040000 */  addiu      $a0, $zero, 0x0
    /* 31A080 802D5F30 0C001C9B */  jal        func_8000726C_7E6C
    /* 31A084 802D5F34 24050030 */   addiu     $a1, $zero, 0x30
    /* 31A088 802D5F38 14400005 */  bnez       $v0, .L802D5F50_31A0A0
    /* 31A08C 802D5F3C 3C04802D */   lui       $a0, %hi(func_802D5DD8_319F28)
    /* 31A090 802D5F40 24845DD8 */  addiu      $a0, $a0, %lo(func_802D5DD8_319F28)
    /* 31A094 802D5F44 2405001F */  addiu      $a1, $zero, 0x1F
    /* 31A098 802D5F48 0C03BFAD */  jal        func_800EFEB4_FEE64
    /* 31A09C 802D5F4C 24060001 */   addiu     $a2, $zero, 0x1
  .L802D5F50_31A0A0:
    /* 31A0A0 802D5F50 24040000 */  addiu      $a0, $zero, 0x0
    /* 31A0A4 802D5F54 0C001CB3 */  jal        func_800072CC_7ECC
    /* 31A0A8 802D5F58 24050030 */   addiu     $a1, $zero, 0x30
    /* 31A0AC 802D5F5C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 31A0B0 802D5F60 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 31A0B4 802D5F64 03E00008 */  jr         $ra
    /* 31A0B8 802D5F68 00000000 */   nop
endlabel func_802D5F24_31A074
