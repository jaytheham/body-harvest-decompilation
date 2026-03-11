nonmatching func_8000F190_FD90, 0x58

glabel func_8000F190_FD90
    /* FD90 8000F190 00803025 */  or         $a2, $a0, $zero
    /* FD94 8000F194 3C048006 */  lui        $a0, %hi(D_80067A48)
    /* FD98 8000F198 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* FD9C 8000F19C 3C0E8006 */  lui        $t6, %hi(D_80067388)
    /* FDA0 8000F1A0 AFBF001C */  sw         $ra, 0x1C($sp)
    /* FDA4 8000F1A4 24847A48 */  addiu      $a0, $a0, %lo(D_80067A48)
    /* FDA8 8000F1A8 25CE7388 */  addiu      $t6, $t6, %lo(D_80067388)
    /* FDAC 8000F1AC 240F0003 */  addiu      $t7, $zero, 0x3
    /* FDB0 8000F1B0 AC800000 */  sw         $zero, 0x0($a0)
    /* FDB4 8000F1B4 AC800008 */  sw         $zero, 0x8($a0)
    /* FDB8 8000F1B8 AFAF0014 */  sw         $t7, 0x14($sp)
    /* FDBC 8000F1BC AFAE0010 */  sw         $t6, 0x10($sp)
    /* FDC0 8000F1C0 24050008 */  addiu      $a1, $zero, 0x8
    /* FDC4 8000F1C4 0C006BA4 */  jal        osCreateThread
    /* FDC8 8000F1C8 00003825 */   or        $a3, $zero, $zero
    /* FDCC 8000F1CC 3C048006 */  lui        $a0, %hi(D_80067A48)
    /* FDD0 8000F1D0 0C006BF8 */  jal        osStartThread
    /* FDD4 8000F1D4 24847A48 */   addiu     $a0, $a0, %lo(D_80067A48)
    /* FDD8 8000F1D8 8FBF001C */  lw         $ra, 0x1C($sp)
    /* FDDC 8000F1DC 27BD0020 */  addiu      $sp, $sp, 0x20
    /* FDE0 8000F1E0 03E00008 */  jr         $ra
    /* FDE4 8000F1E4 00000000 */   nop
endlabel func_8000F190_FD90
