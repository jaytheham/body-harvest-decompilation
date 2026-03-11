nonmatching func_802DAA98_25A1D8, 0x58

glabel func_802DAA98_25A1D8
    /* 25A1D8 802DAA98 308E00FF */  andi       $t6, $a0, 0xFF
    /* 25A1DC 802DAA9C 000E7880 */  sll        $t7, $t6, 2
    /* 25A1E0 802DAAA0 01EE7821 */  addu       $t7, $t7, $t6
    /* 25A1E4 802DAAA4 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 25A1E8 802DAAA8 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 25A1EC 802DAAAC 000F7900 */  sll        $t7, $t7, 4
    /* 25A1F0 802DAAB0 01F81021 */  addu       $v0, $t7, $t8
    /* 25A1F4 802DAAB4 904A001A */  lbu        $t2, 0x1A($v0)
    /* 25A1F8 802DAAB8 24190001 */  addiu      $t9, $zero, 0x1
    /* 25A1FC 802DAABC 2408FE0C */  addiu      $t0, $zero, -0x1F4
    /* 25A200 802DAAC0 2409003C */  addiu      $t1, $zero, 0x3C
    /* 25A204 802DAAC4 24010009 */  addiu      $at, $zero, 0x9
    /* 25A208 802DAAC8 AFA40000 */  sw         $a0, 0x0($sp)
    /* 25A20C 802DAACC A4400012 */  sh         $zero, 0x12($v0)
    /* 25A210 802DAAD0 A0590026 */  sb         $t9, 0x26($v0)
    /* 25A214 802DAAD4 A4480048 */  sh         $t0, 0x48($v0)
    /* 25A218 802DAAD8 15410003 */  bne        $t2, $at, .L802DAAE8_25A228
    /* 25A21C 802DAADC A449002C */   sh        $t1, 0x2C($v0)
    /* 25A220 802DAAE0 240B0008 */  addiu      $t3, $zero, 0x8
    /* 25A224 802DAAE4 A04B001A */  sb         $t3, 0x1A($v0)
  .L802DAAE8_25A228:
    /* 25A228 802DAAE8 03E00008 */  jr         $ra
    /* 25A22C 802DAAEC 00000000 */   nop
endlabel func_802DAA98_25A1D8
