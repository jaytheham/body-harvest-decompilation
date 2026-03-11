/* Handwritten function */
nonmatching func_8001A460_1B060, 0x98

glabel func_8001A460_1B060
    /* 1B060 8001A460 8C87000C */  lw         $a3, 0xC($a0)
    /* 1B064 8001A464 8C990010 */  lw         $t9, 0x10($a0)
    /* 1B068 8001A468 8C980008 */  lw         $t8, 0x8($a0)
    /* 1B06C 8001A46C 00E43820 */  add        $a3, $a3, $a0 /* handwritten instruction */
    /* 1B070 8001A470 0324C820 */  add        $t9, $t9, $a0 /* handwritten instruction */
    /* 1B074 8001A474 00003025 */  or         $a2, $zero, $zero
    /* 1B078 8001A478 20840014 */  addi       $a0, $a0, 0x14 /* handwritten instruction */
    /* 1B07C 8001A47C 0305C020 */  add        $t8, $t8, $a1 /* handwritten instruction */
  .L8001A480_1B080:
    /* 1B080 8001A480 14C00005 */  bnez       $a2, .L8001A498_1B098
    /* 1B084 8001A484 0100482A */   slt       $t1, $t0, $zero
    /* 1B088 8001A488 8C880000 */  lw         $t0, 0x0($a0)
    /* 1B08C 8001A48C 24060020 */  addiu      $a2, $zero, 0x20
    /* 1B090 8001A490 20840004 */  addi       $a0, $a0, 0x4 /* handwritten instruction */
    /* 1B094 8001A494 0100482A */  slt        $t1, $t0, $zero
  .L8001A498_1B098:
    /* 1B098 8001A498 11200006 */  beqz       $t1, .L8001A4B4_1B0B4
    /* 1B09C 8001A49C 00000000 */   nop
    /* 1B0A0 8001A4A0 832A0000 */  lb         $t2, 0x0($t9)
    /* 1B0A4 8001A4A4 23390001 */  addi       $t9, $t9, 0x1 /* handwritten instruction */
    /* 1B0A8 8001A4A8 20A50001 */  addi       $a1, $a1, 0x1 /* handwritten instruction */
    /* 1B0AC 8001A4AC 1000000D */  b          .L8001A4E4_1B0E4
    /* 1B0B0 8001A4B0 A0AAFFFF */   sb        $t2, -0x1($a1)
  .L8001A4B4_1B0B4:
    /* 1B0B4 8001A4B4 94EA0000 */  lhu        $t2, 0x0($a3)
    /* 1B0B8 8001A4B8 20E70002 */  addi       $a3, $a3, 0x2 /* handwritten instruction */
    /* 1B0BC 8001A4BC 000A5B02 */  srl        $t3, $t2, 12
    /* 1B0C0 8001A4C0 314A0FFF */  andi       $t2, $t2, 0xFFF
    /* 1B0C4 8001A4C4 00AA4822 */  sub        $t1, $a1, $t2 /* handwritten instruction */
    /* 1B0C8 8001A4C8 216B0003 */  addi       $t3, $t3, 0x3 /* handwritten instruction */
  .L8001A4CC_1B0CC:
    /* 1B0CC 8001A4CC 812AFFFF */  lb         $t2, -0x1($t1)
    /* 1B0D0 8001A4D0 216BFFFF */  addi       $t3, $t3, -0x1 /* handwritten instruction */
    /* 1B0D4 8001A4D4 21290001 */  addi       $t1, $t1, 0x1 /* handwritten instruction */
    /* 1B0D8 8001A4D8 20A50001 */  addi       $a1, $a1, 0x1 /* handwritten instruction */
    /* 1B0DC 8001A4DC 1560FFFB */  bnez       $t3, .L8001A4CC_1B0CC
    /* 1B0E0 8001A4E0 A0AAFFFF */   sb        $t2, -0x1($a1)
  .L8001A4E4_1B0E4:
    /* 1B0E4 8001A4E4 00084040 */  sll        $t0, $t0, 1
    /* 1B0E8 8001A4E8 14B8FFE5 */  bne        $a1, $t8, .L8001A480_1B080
    /* 1B0EC 8001A4EC 20C6FFFF */   addi      $a2, $a2, -0x1 /* handwritten instruction */
    /* 1B0F0 8001A4F0 03E00008 */  jr         $ra
    /* 1B0F4 8001A4F4 00000000 */   nop
endlabel func_8001A460_1B060
    /* 1B0F8 8001A4F8 00000000 */  nop
    /* 1B0FC 8001A4FC 00000000 */  nop
