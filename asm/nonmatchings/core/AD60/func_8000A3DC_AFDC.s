nonmatching func_8000A3DC_AFDC, 0x60

glabel func_8000A3DC_AFDC
    /* AFDC 8000A3DC 0004CC40 */  sll        $t9, $a0, 17
    /* AFE0 8000A3E0 00191C03 */  sra        $v1, $t9, 16
    /* AFE4 8000A3E4 00033A03 */  sra        $a3, $v1, 8
    /* AFE8 8000A3E8 00073600 */  sll        $a2, $a3, 24
    /* AFEC 8000A3EC 00065603 */  sra        $t2, $a2, 24
    /* AFF0 8000A3F0 306800FF */  andi       $t0, $v1, 0xFF
    /* AFF4 8000A3F4 AFA40000 */  sw         $a0, 0x0($sp)
    /* AFF8 8000A3F8 306200FF */  andi       $v0, $v1, 0xFF
    /* AFFC 8000A3FC 05000004 */  bltz       $t0, .L8000A410_B010
    /* B000 8000A400 01403025 */   or        $a2, $t2, $zero
    /* B004 8000A404 25020001 */  addiu      $v0, $t0, 0x1
    /* B008 8000A408 304B00FF */  andi       $t3, $v0, 0xFF
    /* B00C 8000A40C 01601025 */  or         $v0, $t3, $zero
  .L8000A410_B010:
    /* B010 8000A410 00071E00 */  sll        $v1, $a3, 24
    /* B014 8000A414 00036603 */  sra        $t4, $v1, 24
    /* B018 8000A418 05820005 */  bltzl      $t4, .L8000A430_B030
    /* B01C 8000A41C A0A60000 */   sb        $a2, 0x0($a1)
    /* B020 8000A420 25860001 */  addiu      $a2, $t4, 0x1
    /* B024 8000A424 00066E00 */  sll        $t5, $a2, 24
    /* B028 8000A428 000D3603 */  sra        $a2, $t5, 24
    /* B02C 8000A42C A0A60000 */  sb         $a2, 0x0($a1)
  .L8000A430_B030:
    /* B030 8000A430 24A50001 */  addiu      $a1, $a1, 0x1
    /* B034 8000A434 03E00008 */  jr         $ra
    /* B038 8000A438 A0A20000 */   sb        $v0, 0x0($a1)
endlabel func_8000A3DC_AFDC
