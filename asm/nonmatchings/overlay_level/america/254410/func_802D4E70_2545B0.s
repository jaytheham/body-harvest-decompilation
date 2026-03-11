nonmatching func_802D4E70_2545B0, 0x14C

glabel func_802D4E70_2545B0
    /* 2545B0 802D4E70 3C0E8005 */  lui        $t6, %hi(D_80048030)
    /* 2545B4 802D4E74 91CE8030 */  lbu        $t6, %lo(D_80048030)($t6)
    /* 2545B8 802D4E78 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 2545BC 802D4E7C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2545C0 802D4E80 2DC10009 */  sltiu      $at, $t6, 0x9
    /* 2545C4 802D4E84 10200049 */  beqz       $at, .L802D4FAC_2546EC
    /* 2545C8 802D4E88 000E7080 */   sll       $t6, $t6, 2
    /* 2545CC 802D4E8C 3C01802E */  lui        $at, %hi(jtbl_802E0D54_overlay_level_america)
    /* 2545D0 802D4E90 002E0821 */  addu       $at, $at, $t6
    /* 2545D4 802D4E94 8C2E0D54 */  lw         $t6, %lo(jtbl_802E0D54_overlay_level_america)($at)
    /* 2545D8 802D4E98 01C00008 */  jr         $t6
    /* 2545DC 802D4E9C 00000000 */   nop
    /* 2545E0 802D4EA0 24040000 */  addiu      $a0, $zero, 0x0
    /* 2545E4 802D4EA4 0C001C9B */  jal        func_8000726C_7E6C
    /* 2545E8 802D4EA8 2405002D */   addiu     $a1, $zero, 0x2D
    /* 2545EC 802D4EAC 50400040 */  beql       $v0, $zero, .L802D4FB0_2546F0
    /* 2545F0 802D4EB0 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 2545F4 802D4EB4 0C001DB5 */  jal        func_800076D4_82D4
    /* 2545F8 802D4EB8 24040002 */   addiu     $a0, $zero, 0x2
    /* 2545FC 802D4EBC 1000003C */  b          .L802D4FB0_2546F0
    /* 254600 802D4EC0 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 254604 802D4EC4 2404FFC9 */  addiu      $a0, $zero, -0x37
    /* 254608 802D4EC8 2405FFCD */  addiu      $a1, $zero, -0x33
    /* 25460C 802D4ECC 0C001206 */  jal        func_80004818_5418
    /* 254610 802D4ED0 24060003 */   addiu     $a2, $zero, 0x3
    /* 254614 802D4ED4 50400036 */  beql       $v0, $zero, .L802D4FB0_2546F0
    /* 254618 802D4ED8 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 25461C 802D4EDC 0C001DB5 */  jal        func_800076D4_82D4
    /* 254620 802D4EE0 24040003 */   addiu     $a0, $zero, 0x3
    /* 254624 802D4EE4 10000032 */  b          .L802D4FB0_2546F0
    /* 254628 802D4EE8 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 25462C 802D4EEC 24040015 */  addiu      $a0, $zero, 0x15
    /* 254630 802D4EF0 2405FFC2 */  addiu      $a1, $zero, -0x3E
    /* 254634 802D4EF4 0C001206 */  jal        func_80004818_5418
    /* 254638 802D4EF8 24060003 */   addiu     $a2, $zero, 0x3
    /* 25463C 802D4EFC 5040002C */  beql       $v0, $zero, .L802D4FB0_2546F0
    /* 254640 802D4F00 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 254644 802D4F04 0C001DB5 */  jal        func_800076D4_82D4
    /* 254648 802D4F08 24040004 */   addiu     $a0, $zero, 0x4
    /* 25464C 802D4F0C 10000028 */  b          .L802D4FB0_2546F0
    /* 254650 802D4F10 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 254654 802D4F14 24040054 */  addiu      $a0, $zero, 0x54
    /* 254658 802D4F18 2405FFC2 */  addiu      $a1, $zero, -0x3E
    /* 25465C 802D4F1C 0C001206 */  jal        func_80004818_5418
    /* 254660 802D4F20 24060002 */   addiu     $a2, $zero, 0x2
    /* 254664 802D4F24 50400022 */  beql       $v0, $zero, .L802D4FB0_2546F0
    /* 254668 802D4F28 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 25466C 802D4F2C 0C001DB5 */  jal        func_800076D4_82D4
    /* 254670 802D4F30 24040005 */   addiu     $a0, $zero, 0x5
    /* 254674 802D4F34 1000001E */  b          .L802D4FB0_2546F0
    /* 254678 802D4F38 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 25467C 802D4F3C 24040056 */  addiu      $a0, $zero, 0x56
    /* 254680 802D4F40 2405FFD2 */  addiu      $a1, $zero, -0x2E
    /* 254684 802D4F44 0C001206 */  jal        func_80004818_5418
    /* 254688 802D4F48 24060003 */   addiu     $a2, $zero, 0x3
    /* 25468C 802D4F4C 50400018 */  beql       $v0, $zero, .L802D4FB0_2546F0
    /* 254690 802D4F50 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 254694 802D4F54 0C001DB5 */  jal        func_800076D4_82D4
    /* 254698 802D4F58 24040006 */   addiu     $a0, $zero, 0x6
    /* 25469C 802D4F5C 10000014 */  b          .L802D4FB0_2546F0
    /* 2546A0 802D4F60 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 2546A4 802D4F64 24040060 */  addiu      $a0, $zero, 0x60
    /* 2546A8 802D4F68 24050025 */  addiu      $a1, $zero, 0x25
    /* 2546AC 802D4F6C 0C001206 */  jal        func_80004818_5418
    /* 2546B0 802D4F70 24060002 */   addiu     $a2, $zero, 0x2
    /* 2546B4 802D4F74 5040000E */  beql       $v0, $zero, .L802D4FB0_2546F0
    /* 2546B8 802D4F78 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 2546BC 802D4F7C 0C001DB5 */  jal        func_800076D4_82D4
    /* 2546C0 802D4F80 24040007 */   addiu     $a0, $zero, 0x7
    /* 2546C4 802D4F84 1000000A */  b          .L802D4FB0_2546F0
    /* 2546C8 802D4F88 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 2546CC 802D4F8C 24040041 */  addiu      $a0, $zero, 0x41
    /* 2546D0 802D4F90 24050055 */  addiu      $a1, $zero, 0x55
    /* 2546D4 802D4F94 0C001206 */  jal        func_80004818_5418
    /* 2546D8 802D4F98 24060002 */   addiu     $a2, $zero, 0x2
    /* 2546DC 802D4F9C 50400004 */  beql       $v0, $zero, .L802D4FB0_2546F0
    /* 2546E0 802D4FA0 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 2546E4 802D4FA4 0C001DB5 */  jal        func_800076D4_82D4
    /* 2546E8 802D4FA8 24040008 */   addiu     $a0, $zero, 0x8
  .L802D4FAC_2546EC:
    /* 2546EC 802D4FAC 8FBF0014 */  lw         $ra, 0x14($sp)
  .L802D4FB0_2546F0:
    /* 2546F0 802D4FB0 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 2546F4 802D4FB4 03E00008 */  jr         $ra
    /* 2546F8 802D4FB8 00000000 */   nop
endlabel func_802D4E70_2545B0
