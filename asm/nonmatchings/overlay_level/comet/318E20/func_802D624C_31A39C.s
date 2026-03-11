nonmatching func_802D624C_31A39C, 0x48

glabel func_802D624C_31A39C
    /* 31A39C 802D624C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 31A3A0 802D6250 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 31A3A4 802D6254 24040000 */  addiu      $a0, $zero, 0x0
    /* 31A3A8 802D6258 0C001C9B */  jal        func_8000726C_7E6C
    /* 31A3AC 802D625C 2405002D */   addiu     $a1, $zero, 0x2D
    /* 31A3B0 802D6260 14400005 */  bnez       $v0, .L802D6278_31A3C8
    /* 31A3B4 802D6264 3C04802D */   lui       $a0, %hi(func_802D6100_31A250)
    /* 31A3B8 802D6268 24846100 */  addiu      $a0, $a0, %lo(func_802D6100_31A250)
    /* 31A3BC 802D626C 24050021 */  addiu      $a1, $zero, 0x21
    /* 31A3C0 802D6270 0C03BFAD */  jal        func_800EFEB4_FEE64
    /* 31A3C4 802D6274 24060001 */   addiu     $a2, $zero, 0x1
  .L802D6278_31A3C8:
    /* 31A3C8 802D6278 24040000 */  addiu      $a0, $zero, 0x0
    /* 31A3CC 802D627C 0C001CB3 */  jal        func_800072CC_7ECC
    /* 31A3D0 802D6280 2405002D */   addiu     $a1, $zero, 0x2D
    /* 31A3D4 802D6284 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 31A3D8 802D6288 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 31A3DC 802D628C 03E00008 */  jr         $ra
    /* 31A3E0 802D6290 00000000 */   nop
endlabel func_802D624C_31A39C
