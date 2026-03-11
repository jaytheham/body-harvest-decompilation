nonmatching func_80082B30_91AE0, 0xD4

glabel func_80082B30_91AE0
    /* 91AE0 80082B30 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 91AE4 80082B34 AFA40030 */  sw         $a0, 0x30($sp)
    /* 91AE8 80082B38 93AE0033 */  lbu        $t6, 0x33($sp)
    /* 91AEC 80082B3C 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 91AF0 80082B40 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 91AF4 80082B44 000E7880 */  sll        $t7, $t6, 2
    /* 91AF8 80082B48 01EE7821 */  addu       $t7, $t7, $t6
    /* 91AFC 80082B4C 000F7900 */  sll        $t7, $t7, 4
    /* 91B00 80082B50 01F81021 */  addu       $v0, $t7, $t8
    /* 91B04 80082B54 9043001A */  lbu        $v1, 0x1A($v0)
    /* 91B08 80082B58 3C088025 */  lui        $t0, %hi(D_802566D4)
    /* 91B0C 80082B5C 3C010018 */  lui        $at, (0x180000 >> 16)
    /* 91B10 80082B60 0003C880 */  sll        $t9, $v1, 2
    /* 91B14 80082B64 0323C823 */  subu       $t9, $t9, $v1
    /* 91B18 80082B68 0019C880 */  sll        $t9, $t9, 2
    /* 91B1C 80082B6C 0323C821 */  addu       $t9, $t9, $v1
    /* 91B20 80082B70 0019C8C0 */  sll        $t9, $t9, 3
    /* 91B24 80082B74 01194021 */  addu       $t0, $t0, $t9
    /* 91B28 80082B78 8D0866D4 */  lw         $t0, %lo(D_802566D4)($t0)
    /* 91B2C 80082B7C 84440000 */  lh         $a0, 0x0($v0)
    /* 91B30 80082B80 84450004 */  lh         $a1, 0x4($v0)
    /* 91B34 80082B84 01014824 */  and        $t1, $t0, $at
    /* 91B38 80082B88 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 91B3C 80082B8C 000954C2 */  srl        $t2, $t1, 19
    /* 91B40 80082B90 AFAA001C */  sw         $t2, 0x1C($sp)
    /* 91B44 80082B94 A7A4002E */  sh         $a0, 0x2E($sp)
    /* 91B48 80082B98 0C0015B4 */  jal        func_800056D0_62D0
    /* 91B4C 80082B9C A7A5002C */   sh        $a1, 0x2C($sp)
    /* 91B50 80082BA0 00026100 */  sll        $t4, $v0, 4
    /* 91B54 80082BA4 3C0D8004 */  lui        $t5, %hi(D_8003E29C)
    /* 91B58 80082BA8 01AC6821 */  addu       $t5, $t5, $t4
    /* 91B5C 80082BAC 8DADE29C */  lw         $t5, %lo(D_8003E29C)($t5)
    /* 91B60 80082BB0 8FAB001C */  lw         $t3, 0x1C($sp)
    /* 91B64 80082BB4 87A4002E */  lh         $a0, 0x2E($sp)
    /* 91B68 80082BB8 87A5002C */  lh         $a1, 0x2C($sp)
    /* 91B6C 80082BBC 016D082A */  slt        $at, $t3, $t5
    /* 91B70 80082BC0 14200003 */  bnez       $at, .L80082BD0_91B80
    /* 91B74 80082BC4 308E00FF */   andi      $t6, $a0, 0xFF
    /* 91B78 80082BC8 1000000A */  b          .L80082BF4_91BA4
    /* 91B7C 80082BCC 2402FFFF */   addiu     $v0, $zero, -0x1
  .L80082BD0_91B80:
    /* 91B80 80082BD0 30B900FF */  andi       $t9, $a1, 0xFF
    /* 91B84 80082BD4 000E7C00 */  sll        $t7, $t6, 16
    /* 91B88 80082BD8 00194400 */  sll        $t0, $t9, 16
    /* 91B8C 80082BDC 000F2403 */  sra        $a0, $t7, 16
    /* 91B90 80082BE0 0C020A64 */  jal        func_80082990_91940
    /* 91B94 80082BE4 00082C03 */   sra       $a1, $t0, 16
    /* 91B98 80082BE8 93A40033 */  lbu        $a0, 0x33($sp)
    /* 91B9C 80082BEC 0C020A7B */  jal        func_800829EC_9199C
    /* 91BA0 80082BF0 00402825 */   or        $a1, $v0, $zero
  .L80082BF4_91BA4:
    /* 91BA4 80082BF4 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 91BA8 80082BF8 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 91BAC 80082BFC 03E00008 */  jr         $ra
    /* 91BB0 80082C00 00000000 */   nop
endlabel func_80082B30_91AE0
