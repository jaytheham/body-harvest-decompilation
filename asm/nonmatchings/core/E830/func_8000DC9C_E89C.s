nonmatching func_8000DC9C_E89C, 0x30

glabel func_8000DC9C_E89C
    /* E89C 8000DC9C 00801025 */  or         $v0, $a0, $zero
    /* E8A0 8000DCA0 00A01825 */  or         $v1, $a1, $zero
    /* E8A4 8000DCA4 340695FF */  ori        $a2, $zero, 0x95FF
  .L8000DCA8_E8A8:
    /* E8A8 8000DCA8 8C4E0000 */  lw         $t6, 0x0($v0)
    /* E8AC 8000DCAC 00C02025 */  or         $a0, $a2, $zero
    /* E8B0 8000DCB0 24630004 */  addiu      $v1, $v1, 0x4
    /* E8B4 8000DCB4 24420004 */  addiu      $v0, $v0, 0x4
    /* E8B8 8000DCB8 AC6EFFFC */  sw         $t6, -0x4($v1)
    /* E8BC 8000DCBC 14C0FFFA */  bnez       $a2, .L8000DCA8_E8A8
    /* E8C0 8000DCC0 24C6FFFF */   addiu     $a2, $a2, -0x1
    /* E8C4 8000DCC4 03E00008 */  jr         $ra
    /* E8C8 8000DCC8 00000000 */   nop
endlabel func_8000DC9C_E89C
