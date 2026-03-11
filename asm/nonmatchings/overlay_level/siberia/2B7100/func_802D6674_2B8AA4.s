nonmatching func_802D6674_2B8AA4, 0x98

glabel func_802D6674_2B8AA4
    /* 2B8AA4 802D6674 3C038015 */  lui        $v1, %hi(D_8014D17C)
    /* 2B8AA8 802D6678 2463D17C */  addiu      $v1, $v1, %lo(D_8014D17C)
    /* 2B8AAC 802D667C 84620000 */  lh         $v0, 0x0($v1)
    /* 2B8AB0 802D6680 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 2B8AB4 802D6684 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 2B8AB8 802D6688 28410015 */  slti       $at, $v0, 0x15
    /* 2B8ABC 802D668C 14200017 */  bnez       $at, .L802D66EC_2B8B1C
    /* 2B8AC0 802D6690 240400A0 */   addiu     $a0, $zero, 0xA0
    /* 2B8AC4 802D6694 3C0E802E */  lui        $t6, %hi(D_802E0E48)
    /* 2B8AC8 802D6698 25CE0E48 */  addiu      $t6, $t6, %lo(D_802E0E48)
    /* 2B8ACC 802D669C 240F0006 */  addiu      $t7, $zero, 0x6
    /* 2B8AD0 802D66A0 24180028 */  addiu      $t8, $zero, 0x28
    /* 2B8AD4 802D66A4 24190001 */  addiu      $t9, $zero, 0x1
    /* 2B8AD8 802D66A8 AFB9001C */  sw         $t9, 0x1C($sp)
    /* 2B8ADC 802D66AC AFB80018 */  sw         $t8, 0x18($sp)
    /* 2B8AE0 802D66B0 AFAF0014 */  sw         $t7, 0x14($sp)
    /* 2B8AE4 802D66B4 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 2B8AE8 802D66B8 2445FFEC */  addiu      $a1, $v0, -0x14
    /* 2B8AEC 802D66BC 240600C8 */  addiu      $a2, $zero, 0xC8
    /* 2B8AF0 802D66C0 0C0B5937 */  jal        func_802D64DC_2B890C
    /* 2B8AF4 802D66C4 24070018 */   addiu     $a3, $zero, 0x18
    /* 2B8AF8 802D66C8 3C088005 */  lui        $t0, %hi(D_800519E7)
    /* 2B8AFC 802D66CC 810819E7 */  lb         $t0, %lo(D_800519E7)($t0)
    /* 2B8B00 802D66D0 3C04802D */  lui        $a0, %hi(func_802D6674_2B8AA4)
    /* 2B8B04 802D66D4 1D000005 */  bgtz       $t0, .L802D66EC_2B8B1C
    /* 2B8B08 802D66D8 00000000 */   nop
    /* 2B8B0C 802D66DC 0C001D2F */  jal        func_800074BC_80BC
    /* 2B8B10 802D66E0 24846674 */   addiu     $a0, $a0, %lo(func_802D6674_2B8AA4)
    /* 2B8B14 802D66E4 0C0B58D9 */  jal        func_802D6364_2B8794
    /* 2B8B18 802D66E8 00000000 */   nop
  .L802D66EC_2B8B1C:
    /* 2B8B1C 802D66EC 3C038015 */  lui        $v1, %hi(D_8014D17C)
    /* 2B8B20 802D66F0 2463D17C */  addiu      $v1, $v1, %lo(D_8014D17C)
    /* 2B8B24 802D66F4 84690000 */  lh         $t1, 0x0($v1)
    /* 2B8B28 802D66F8 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 2B8B2C 802D66FC 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 2B8B30 802D6700 252A0001 */  addiu      $t2, $t1, 0x1
    /* 2B8B34 802D6704 03E00008 */  jr         $ra
    /* 2B8B38 802D6708 A46A0000 */   sh        $t2, 0x0($v1)
endlabel func_802D6674_2B8AA4
