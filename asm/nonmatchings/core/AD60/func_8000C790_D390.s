nonmatching func_8000C790_D390, 0x8C

glabel func_8000C790_D390
    /* D390 8000C790 44800000 */  mtc1       $zero, $f0
    /* D394 8000C794 24010001 */  addiu      $at, $zero, 0x1
    /* D398 8000C798 A4800000 */  sh         $zero, 0x0($a0)
    /* D39C 8000C79C A4800002 */  sh         $zero, 0x2($a0)
    /* D3A0 8000C7A0 A4800004 */  sh         $zero, 0x4($a0)
    /* D3A4 8000C7A4 24020001 */  addiu      $v0, $zero, 0x1
    /* D3A8 8000C7A8 E4800008 */  swc1       $f0, 0x8($a0)
    /* D3AC 8000C7AC E480000C */  swc1       $f0, 0xC($a0)
    /* D3B0 8000C7B0 10C10018 */  beq        $a2, $at, .L8000C814_D414
    /* D3B4 8000C7B4 E4800010 */   swc1      $f0, 0x10($a0)
  .L8000C7B8_D3B8:
    /* D3B8 8000C7B8 84AF0000 */  lh         $t7, 0x0($a1)
    /* D3BC 8000C7BC 00027180 */  sll        $t6, $v0, 6
    /* D3C0 8000C7C0 01C41821 */  addu       $v1, $t6, $a0
    /* D3C4 8000C7C4 448F2000 */  mtc1       $t7, $f4
    /* D3C8 8000C7C8 24420001 */  addiu      $v0, $v0, 0x1
    /* D3CC 8000C7CC 304800FF */  andi       $t0, $v0, 0xFF
    /* D3D0 8000C7D0 468021A0 */  cvt.s.w    $f6, $f4
    /* D3D4 8000C7D4 01001025 */  or         $v0, $t0, $zero
    /* D3D8 8000C7D8 24A50010 */  addiu      $a1, $a1, 0x10
    /* D3DC 8000C7DC E4660008 */  swc1       $f6, 0x8($v1)
    /* D3E0 8000C7E0 84B8FFF2 */  lh         $t8, -0xE($a1)
    /* D3E4 8000C7E4 44984000 */  mtc1       $t8, $f8
    /* D3E8 8000C7E8 00000000 */  nop
    /* D3EC 8000C7EC 468042A0 */  cvt.s.w    $f10, $f8
    /* D3F0 8000C7F0 E46A000C */  swc1       $f10, 0xC($v1)
    /* D3F4 8000C7F4 84B9FFF4 */  lh         $t9, -0xC($a1)
    /* D3F8 8000C7F8 A4600000 */  sh         $zero, 0x0($v1)
    /* D3FC 8000C7FC A4600002 */  sh         $zero, 0x2($v1)
    /* D400 8000C800 44998000 */  mtc1       $t9, $f16
    /* D404 8000C804 A4600004 */  sh         $zero, 0x4($v1)
    /* D408 8000C808 468084A0 */  cvt.s.w    $f18, $f16
    /* D40C 8000C80C 14C8FFEA */  bne        $a2, $t0, .L8000C7B8_D3B8
    /* D410 8000C810 E4720010 */   swc1      $f18, 0x10($v1)
  .L8000C814_D414:
    /* D414 8000C814 03E00008 */  jr         $ra
    /* D418 8000C818 00000000 */   nop
endlabel func_8000C790_D390
