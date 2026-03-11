nonmatching func_8000C6D0_D2D0, 0x24

glabel func_8000C6D0_D2D0
    /* D2D0 8000C6D0 AFA40000 */  sw         $a0, 0x0($sp)
    /* D2D4 8000C6D4 00001025 */  or         $v0, $zero, $zero
    /* D2D8 8000C6D8 24030010 */  addiu      $v1, $zero, 0x10
  .L8000C6DC_D2DC:
    /* D2DC 8000C6DC 24420001 */  addiu      $v0, $v0, 0x1
    /* D2E0 8000C6E0 304E00FF */  andi       $t6, $v0, 0xFF
    /* D2E4 8000C6E4 146EFFFD */  bne        $v1, $t6, .L8000C6DC_D2DC
    /* D2E8 8000C6E8 01C01025 */   or        $v0, $t6, $zero
    /* D2EC 8000C6EC 03E00008 */  jr         $ra
    /* D2F0 8000C6F0 00000000 */   nop
endlabel func_8000C6D0_D2D0
