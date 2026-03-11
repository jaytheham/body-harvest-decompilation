nonmatching func_802D6458_31A5A8, 0x100

glabel func_802D6458_31A5A8
    /* 31A5A8 802D6458 3C048014 */  lui        $a0, %hi(D_8013FD78)
    /* 31A5AC 802D645C 8C84FD78 */  lw         $a0, %lo(D_8013FD78)($a0)
    /* 31A5B0 802D6460 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 31A5B4 802D6464 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 31A5B8 802D6468 948E0020 */  lhu        $t6, 0x20($a0)
    /* 31A5BC 802D646C 3C05C685 */  lui        $a1, (0xC6853400 >> 16)
    /* 31A5C0 802D6470 31CF8000 */  andi       $t7, $t6, 0x8000
    /* 31A5C4 802D6474 51E00011 */  beql       $t7, $zero, .L802D64BC_31A60C
    /* 31A5C8 802D6478 24040000 */   addiu     $a0, $zero, 0x0
    /* 31A5CC 802D647C 0C03ED13 */  jal        func_800FB44C_10A3FC
    /* 31A5D0 802D6480 34A53400 */   ori       $a1, $a1, (0xC6853400 & 0xFFFF)
    /* 31A5D4 802D6484 3C048014 */  lui        $a0, %hi(D_8013FD78)
    /* 31A5D8 802D6488 8C84FD78 */  lw         $a0, %lo(D_8013FD78)($a0)
    /* 31A5DC 802D648C 0C03ED1A */  jal        func_800FB468_10A418
    /* 31A5E0 802D6490 3C05449C */   lui       $a1, (0x449C0000 >> 16)
    /* 31A5E4 802D6494 3C048014 */  lui        $a0, %hi(D_8013FD78)
    /* 31A5E8 802D6498 8C84FD78 */  lw         $a0, %lo(D_8013FD78)($a0)
    /* 31A5EC 802D649C 0C03ED21 */  jal        func_800FB484_10A434
    /* 31A5F0 802D64A0 3C054160 */   lui       $a1, (0x41600000 >> 16)
    /* 31A5F4 802D64A4 00002025 */  or         $a0, $zero, $zero
    /* 31A5F8 802D64A8 0C03F544 */  jal        func_800FD510_10C4C0
    /* 31A5FC 802D64AC 24050072 */   addiu     $a1, $zero, 0x72
    /* 31A600 802D64B0 0C03F70C */  jal        func_800FDC30_10CBE0
    /* 31A604 802D64B4 00002025 */   or        $a0, $zero, $zero
    /* 31A608 802D64B8 24040000 */  addiu      $a0, $zero, 0x0
  .L802D64BC_31A60C:
    /* 31A60C 802D64BC 0C001CEE */  jal        func_800073B8_7FB8
    /* 31A610 802D64C0 2405000E */   addiu     $a1, $zero, 0xE
    /* 31A614 802D64C4 24040000 */  addiu      $a0, $zero, 0x0
    /* 31A618 802D64C8 0C001CEE */  jal        func_800073B8_7FB8
    /* 31A61C 802D64CC 2405000F */   addiu     $a1, $zero, 0xF
    /* 31A620 802D64D0 24040000 */  addiu      $a0, $zero, 0x0
    /* 31A624 802D64D4 0C001CEE */  jal        func_800073B8_7FB8
    /* 31A628 802D64D8 24050010 */   addiu     $a1, $zero, 0x10
    /* 31A62C 802D64DC 24040000 */  addiu      $a0, $zero, 0x0
    /* 31A630 802D64E0 0C001CEE */  jal        func_800073B8_7FB8
    /* 31A634 802D64E4 24050028 */   addiu     $a1, $zero, 0x28
    /* 31A638 802D64E8 0C00635F */  jal        func_80018D7C_1997C
    /* 31A63C 802D64EC 240400D3 */   addiu     $a0, $zero, 0xD3
    /* 31A640 802D64F0 24040000 */  addiu      $a0, $zero, 0x0
    /* 31A644 802D64F4 0C001CB3 */  jal        func_800072CC_7ECC
    /* 31A648 802D64F8 24050029 */   addiu     $a1, $zero, 0x29
    /* 31A64C 802D64FC 24040000 */  addiu      $a0, $zero, 0x0
    /* 31A650 802D6500 0C001CB3 */  jal        func_800072CC_7ECC
    /* 31A654 802D6504 2405002A */   addiu     $a1, $zero, 0x2A
    /* 31A658 802D6508 3C188005 */  lui        $t8, %hi(D_800521F0)
    /* 31A65C 802D650C 8F1821F0 */  lw         $t8, %lo(D_800521F0)($t8)
    /* 31A660 802D6510 0018CB02 */  srl        $t9, $t8, 12
    /* 31A664 802D6514 33280001 */  andi       $t0, $t9, 0x1
    /* 31A668 802D6518 11000003 */  beqz       $t0, .L802D6528_31A678
    /* 31A66C 802D651C 00000000 */   nop
    /* 31A670 802D6520 0C047020 */  jal        func_8011C080_12B030
    /* 31A674 802D6524 240400F6 */   addiu     $a0, $zero, 0xF6
  .L802D6528_31A678:
    /* 31A678 802D6528 3C098005 */  lui        $t1, %hi(D_80051458)
    /* 31A67C 802D652C 8D291458 */  lw         $t1, %lo(D_80051458)($t1)
    /* 31A680 802D6530 00095302 */  srl        $t2, $t1, 12
    /* 31A684 802D6534 314B0001 */  andi       $t3, $t2, 0x1
    /* 31A688 802D6538 51600004 */  beql       $t3, $zero, .L802D654C_31A69C
    /* 31A68C 802D653C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 31A690 802D6540 0C047020 */  jal        func_8011C080_12B030
    /* 31A694 802D6544 24040065 */   addiu     $a0, $zero, 0x65
    /* 31A698 802D6548 8FBF0014 */  lw         $ra, 0x14($sp)
  .L802D654C_31A69C:
    /* 31A69C 802D654C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 31A6A0 802D6550 03E00008 */  jr         $ra
    /* 31A6A4 802D6554 00000000 */   nop
endlabel func_802D6458_31A5A8
