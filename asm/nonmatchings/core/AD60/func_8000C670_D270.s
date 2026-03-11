nonmatching func_8000C670_D270, 0x48

glabel func_8000C670_D270
    /* D270 8000C670 3C188005 */  lui        $t8, %hi(D_80052AD8)
    /* D274 8000C674 3C198005 */  lui        $t9, %hi(D_80053C8C)
    /* D278 8000C678 8F393C8C */  lw         $t9, %lo(D_80053C8C)($t9)
    /* D27C 8000C67C 8F182AD8 */  lw         $t8, %lo(D_80052AD8)($t8)
    /* D280 8000C680 00047400 */  sll        $t6, $a0, 16
    /* D284 8000C684 000E7C03 */  sra        $t7, $t6, 16
    /* D288 8000C688 000F4880 */  sll        $t1, $t7, 2
    /* D28C 8000C68C 03194023 */  subu       $t0, $t8, $t9
    /* D290 8000C690 01091023 */  subu       $v0, $t0, $t1
    /* D294 8000C694 24420008 */  addiu      $v0, $v0, 0x8
    /* D298 8000C698 28410010 */  slti       $at, $v0, 0x10
    /* D29C 8000C69C 14200003 */  bnez       $at, .L8000C6AC_D2AC
    /* D2A0 8000C6A0 AFA40000 */   sw        $a0, 0x0($sp)
    /* D2A4 8000C6A4 03E00008 */  jr         $ra
    /* D2A8 8000C6A8 24020001 */   addiu     $v0, $zero, 0x1
  .L8000C6AC_D2AC:
    /* D2AC 8000C6AC 00001025 */  or         $v0, $zero, $zero
    /* D2B0 8000C6B0 03E00008 */  jr         $ra
    /* D2B4 8000C6B4 00000000 */   nop
endlabel func_8000C670_D270
