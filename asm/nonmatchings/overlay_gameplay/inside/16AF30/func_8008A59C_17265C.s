nonmatching func_8008A59C_17265C, 0x48

glabel func_8008A59C_17265C
    /* 17265C 8008A59C 3C038010 */  lui        $v1, %hi(D_800FC8E8)
    /* 172660 8008A5A0 2463C8E8 */  addiu      $v1, $v1, %lo(D_800FC8E8)
    /* 172664 8008A5A4 00001025 */  or         $v0, $zero, $zero
    /* 172668 8008A5A8 24040014 */  addiu      $a0, $zero, 0x14
  .L8008A5AC_17266C:
    /* 17266C 8008A5AC 00440019 */  multu      $v0, $a0
    /* 172670 8008A5B0 24420001 */  addiu      $v0, $v0, 0x1
    /* 172674 8008A5B4 305800FF */  andi       $t8, $v0, 0xFF
    /* 172678 8008A5B8 2B010014 */  slti       $at, $t8, 0x14
    /* 17267C 8008A5BC 03001025 */  or         $v0, $t8, $zero
    /* 172680 8008A5C0 00007012 */  mflo       $t6
    /* 172684 8008A5C4 006E7821 */  addu       $t7, $v1, $t6
    /* 172688 8008A5C8 1420FFF8 */  bnez       $at, .L8008A5AC_17266C
    /* 17268C 8008A5CC A5E0000A */   sh        $zero, 0xA($t7)
    /* 172690 8008A5D0 3C018010 */  lui        $at, %hi(D_800FCA78)
    /* 172694 8008A5D4 A020CA78 */  sb         $zero, %lo(D_800FCA78)($at)
    /* 172698 8008A5D8 3C018010 */  lui        $at, %hi(D_800FCA79)
    /* 17269C 8008A5DC 03E00008 */  jr         $ra
    /* 1726A0 8008A5E0 A020CA79 */   sb        $zero, %lo(D_800FCA79)($at)
endlabel func_8008A59C_17265C
