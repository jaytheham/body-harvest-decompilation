nonmatching func_800B0F20_BFED0, 0x108

glabel func_800B0F20_BFED0
    /* BFED0 800B0F20 3C028004 */  lui        $v0, %hi(currentLevel)
    /* BFED4 800B0F24 8C427F90 */  lw         $v0, %lo(currentLevel)($v0)
    /* BFED8 800B0F28 3C0F8014 */  lui        $t7, %hi(D_80147C30)
    /* BFEDC 800B0F2C 25EF7C30 */  addiu      $t7, $t7, %lo(D_80147C30)
    /* BFEE0 800B0F30 2442FFFF */  addiu      $v0, $v0, -0x1
    /* BFEE4 800B0F34 000270C0 */  sll        $t6, $v0, 3
    /* BFEE8 800B0F38 01C27021 */  addu       $t6, $t6, $v0
    /* BFEEC 800B0F3C 000E7100 */  sll        $t6, $t6, 4
    /* BFEF0 800B0F40 01CF3021 */  addu       $a2, $t6, $t7
    /* BFEF4 800B0F44 00C03825 */  or         $a3, $a2, $zero
    /* BFEF8 800B0F48 00001825 */  or         $v1, $zero, $zero
    /* BFEFC 800B0F4C 240D0010 */  addiu      $t5, $zero, 0x10
    /* BFF00 800B0F50 240C0008 */  addiu      $t4, $zero, 0x8
    /* BFF04 800B0F54 240B0006 */  addiu      $t3, $zero, 0x6
  .L800B0F58_BFF08:
    /* BFF08 800B0F58 84F80000 */  lh         $t8, 0x0($a3)
    /* BFF0C 800B0F5C 0098082A */  slt        $at, $a0, $t8
    /* BFF10 800B0F60 5420002C */  bnel       $at, $zero, .L800B1014_BFFC4
    /* BFF14 800B0F64 24630001 */   addiu     $v1, $v1, 0x1
    /* BFF18 800B0F68 84F90004 */  lh         $t9, 0x4($a3)
    /* BFF1C 800B0F6C 0324082A */  slt        $at, $t9, $a0
    /* BFF20 800B0F70 54200028 */  bnel       $at, $zero, .L800B1014_BFFC4
    /* BFF24 800B0F74 24630001 */   addiu     $v1, $v1, 0x1
    /* BFF28 800B0F78 84EE0002 */  lh         $t6, 0x2($a3)
    /* BFF2C 800B0F7C 01C5082A */  slt        $at, $t6, $a1
    /* BFF30 800B0F80 50200024 */  beql       $at, $zero, .L800B1014_BFFC4
    /* BFF34 800B0F84 24630001 */   addiu     $v1, $v1, 0x1
    /* BFF38 800B0F88 84EF0006 */  lh         $t7, 0x6($a3)
    /* BFF3C 800B0F8C 0003C080 */  sll        $t8, $v1, 2
    /* BFF40 800B0F90 0303C023 */  subu       $t8, $t8, $v1
    /* BFF44 800B0F94 00AF082A */  slt        $at, $a1, $t7
    /* BFF48 800B0F98 1020001D */  beqz       $at, .L800B1010_BFFC0
    /* BFF4C 800B0F9C 00004025 */   or        $t0, $zero, $zero
    /* BFF50 800B0FA0 0018C0C0 */  sll        $t8, $t8, 3
    /* BFF54 800B0FA4 00D84821 */  addu       $t1, $a2, $t8
  .L800B0FA8_BFF58:
    /* BFF58 800B0FA8 85220008 */  lh         $v0, 0x8($t1)
    /* BFF5C 800B0FAC 852A000C */  lh         $t2, 0xC($t1)
    /* BFF60 800B0FB0 0082082A */  slt        $at, $a0, $v0
    /* BFF64 800B0FB4 144A0003 */  bne        $v0, $t2, .L800B0FC4_BFF74
    /* BFF68 800B0FB8 00000000 */   nop
    /* BFF6C 800B0FBC 03E00008 */  jr         $ra
    /* BFF70 800B0FC0 306200FF */   andi      $v0, $v1, 0xFF
  .L800B0FC4_BFF74:
    /* BFF74 800B0FC4 1420000B */  bnez       $at, .L800B0FF4_BFFA4
    /* BFF78 800B0FC8 0144082A */   slt       $at, $t2, $a0
    /* BFF7C 800B0FCC 14200009 */  bnez       $at, .L800B0FF4_BFFA4
    /* BFF80 800B0FD0 00000000 */   nop
    /* BFF84 800B0FD4 8539000A */  lh         $t9, 0xA($t1)
    /* BFF88 800B0FD8 0325082A */  slt        $at, $t9, $a1
    /* BFF8C 800B0FDC 10200005 */  beqz       $at, .L800B0FF4_BFFA4
    /* BFF90 800B0FE0 00000000 */   nop
    /* BFF94 800B0FE4 852E000E */  lh         $t6, 0xE($t1)
    /* BFF98 800B0FE8 00AE082A */  slt        $at, $a1, $t6
    /* BFF9C 800B0FEC 54200009 */  bnel       $at, $zero, .L800B1014_BFFC4
    /* BFFA0 800B0FF0 24630001 */   addiu     $v1, $v1, 0x1
  .L800B0FF4_BFFA4:
    /* BFFA4 800B0FF4 550C0004 */  bnel       $t0, $t4, .L800B1008_BFFB8
    /* BFFA8 800B0FF8 25080008 */   addiu     $t0, $t0, 0x8
    /* BFFAC 800B0FFC 03E00008 */  jr         $ra
    /* BFFB0 800B1000 306200FF */   andi      $v0, $v1, 0xFF
    /* BFFB4 800B1004 25080008 */  addiu      $t0, $t0, 0x8
  .L800B1008_BFFB8:
    /* BFFB8 800B1008 150DFFE7 */  bne        $t0, $t5, .L800B0FA8_BFF58
    /* BFFBC 800B100C 25290008 */   addiu     $t1, $t1, 0x8
  .L800B1010_BFFC0:
    /* BFFC0 800B1010 24630001 */  addiu      $v1, $v1, 0x1
  .L800B1014_BFFC4:
    /* BFFC4 800B1014 146BFFD0 */  bne        $v1, $t3, .L800B0F58_BFF08
    /* BFFC8 800B1018 24E70018 */   addiu     $a3, $a3, 0x18
    /* BFFCC 800B101C 240200FF */  addiu      $v0, $zero, 0xFF
    /* BFFD0 800B1020 03E00008 */  jr         $ra
    /* BFFD4 800B1024 00000000 */   nop
endlabel func_800B0F20_BFED0
