nonmatching func_800C0FD4_CFF84, 0x50

glabel func_800C0FD4_CFF84
    /* CFF84 800C0FD4 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* CFF88 800C0FD8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* CFF8C 800C0FDC 0C0303EB */  jal        func_800C0FAC_CFF5C
    /* CFF90 800C0FE0 00000000 */   nop
    /* CFF94 800C0FE4 44802800 */  mtc1       $zero, $f5
    /* CFF98 800C0FE8 44802000 */  mtc1       $zero, $f4
    /* CFF9C 800C0FEC 460001A1 */  cvt.d.s    $f6, $f0
    /* CFFA0 800C0FF0 46000306 */  mov.s      $f12, $f0
    /* CFFA4 800C0FF4 46262032 */  c.eq.d     $f4, $f6
    /* CFFA8 800C0FF8 00000000 */  nop
    /* CFFAC 800C0FFC 45030005 */  bc1tl      .L800C1014_CFFC4
    /* CFFB0 800C1000 8FBF0014 */   lw        $ra, 0x14($sp)
    /* CFFB4 800C1004 0C007650 */  jal        sqrtf
    /* CFFB8 800C1008 00000000 */   nop
    /* CFFBC 800C100C 46000306 */  mov.s      $f12, $f0
    /* CFFC0 800C1010 8FBF0014 */  lw         $ra, 0x14($sp)
  .L800C1014_CFFC4:
    /* CFFC4 800C1014 27BD0018 */  addiu      $sp, $sp, 0x18
    /* CFFC8 800C1018 46006006 */  mov.s      $f0, $f12
    /* CFFCC 800C101C 03E00008 */  jr         $ra
    /* CFFD0 800C1020 00000000 */   nop
endlabel func_800C0FD4_CFF84
