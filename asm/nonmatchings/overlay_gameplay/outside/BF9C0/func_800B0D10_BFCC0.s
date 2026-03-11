nonmatching func_800B0D10_BFCC0, 0xE4

glabel func_800B0D10_BFCC0
    /* BFCC0 800B0D10 3C0E8005 */  lui        $t6, %hi(D_80052ACA)
    /* BFCC4 800B0D14 91CE2ACA */  lbu        $t6, %lo(D_80052ACA)($t6)
    /* BFCC8 800B0D18 240A0002 */  addiu      $t2, $zero, 0x2
    /* BFCCC 800B0D1C 3C088015 */  lui        $t0, %hi(D_8014FD30)
    /* BFCD0 800B0D20 154E0003 */  bne        $t2, $t6, .L800B0D30_BFCE0
    /* BFCD4 800B0D24 2508FD30 */   addiu     $t0, $t0, %lo(D_8014FD30)
    /* BFCD8 800B0D28 03E00008 */  jr         $ra
    /* BFCDC 800B0D2C 00001025 */   or        $v0, $zero, $zero
  .L800B0D30_BFCE0:
    /* BFCE0 800B0D30 850F0000 */  lh         $t7, 0x0($t0)
    /* BFCE4 800B0D34 00861023 */  subu       $v0, $a0, $a2
    /* BFCE8 800B0D38 004F082A */  slt        $at, $v0, $t7
    /* BFCEC 800B0D3C 14200011 */  bnez       $at, .L800B0D84_BFD34
    /* BFCF0 800B0D40 00000000 */   nop
    /* BFCF4 800B0D44 85180004 */  lh         $t8, 0x4($t0)
    /* BFCF8 800B0D48 00861821 */  addu       $v1, $a0, $a2
    /* BFCFC 800B0D4C 0303082A */  slt        $at, $t8, $v1
    /* BFD00 800B0D50 1420000C */  bnez       $at, .L800B0D84_BFD34
    /* BFD04 800B0D54 00000000 */   nop
    /* BFD08 800B0D58 85190002 */  lh         $t9, 0x2($t0)
    /* BFD0C 800B0D5C 00A62023 */  subu       $a0, $a1, $a2
    /* BFD10 800B0D60 0099082A */  slt        $at, $a0, $t9
    /* BFD14 800B0D64 14200007 */  bnez       $at, .L800B0D84_BFD34
    /* BFD18 800B0D68 00000000 */   nop
    /* BFD1C 800B0D6C 850B0006 */  lh         $t3, 0x6($t0)
    /* BFD20 800B0D70 00A63821 */  addu       $a3, $a1, $a2
    /* BFD24 800B0D74 3C068015 */  lui        $a2, %hi(D_8014FD30)
    /* BFD28 800B0D78 0167082A */  slt        $at, $t3, $a3
    /* BFD2C 800B0D7C 10200003 */  beqz       $at, .L800B0D8C_BFD3C
    /* BFD30 800B0D80 00002825 */   or        $a1, $zero, $zero
  .L800B0D84_BFD34:
    /* BFD34 800B0D84 03E00008 */  jr         $ra
    /* BFD38 800B0D88 24020001 */   addiu     $v0, $zero, 0x1
  .L800B0D8C_BFD3C:
    /* BFD3C 800B0D8C 24C6FD30 */  addiu      $a2, $a2, %lo(D_8014FD30)
  .L800B0D90_BFD40:
    /* BFD40 800B0D90 84C80008 */  lh         $t0, 0x8($a2)
    /* BFD44 800B0D94 84C9000C */  lh         $t1, 0xC($a2)
    /* BFD48 800B0D98 0103082A */  slt        $at, $t0, $v1
    /* BFD4C 800B0D9C 51090013 */  beql       $t0, $t1, .L800B0DEC_BFD9C
    /* BFD50 800B0DA0 00001025 */   or        $v0, $zero, $zero
    /* BFD54 800B0DA4 1020000D */  beqz       $at, .L800B0DDC_BFD8C
    /* BFD58 800B0DA8 0049082A */   slt       $at, $v0, $t1
    /* BFD5C 800B0DAC 5020000C */  beql       $at, $zero, .L800B0DE0_BFD90
    /* BFD60 800B0DB0 24A50001 */   addiu     $a1, $a1, 0x1
    /* BFD64 800B0DB4 84CC000A */  lh         $t4, 0xA($a2)
    /* BFD68 800B0DB8 0187082A */  slt        $at, $t4, $a3
    /* BFD6C 800B0DBC 50200008 */  beql       $at, $zero, .L800B0DE0_BFD90
    /* BFD70 800B0DC0 24A50001 */   addiu     $a1, $a1, 0x1
    /* BFD74 800B0DC4 84CD000E */  lh         $t5, 0xE($a2)
    /* BFD78 800B0DC8 008D082A */  slt        $at, $a0, $t5
    /* BFD7C 800B0DCC 50200004 */  beql       $at, $zero, .L800B0DE0_BFD90
    /* BFD80 800B0DD0 24A50001 */   addiu     $a1, $a1, 0x1
    /* BFD84 800B0DD4 03E00008 */  jr         $ra
    /* BFD88 800B0DD8 24A20002 */   addiu     $v0, $a1, 0x2
  .L800B0DDC_BFD8C:
    /* BFD8C 800B0DDC 24A50001 */  addiu      $a1, $a1, 0x1
  .L800B0DE0_BFD90:
    /* BFD90 800B0DE0 14AAFFEB */  bne        $a1, $t2, .L800B0D90_BFD40
    /* BFD94 800B0DE4 24C60008 */   addiu     $a2, $a2, 0x8
    /* BFD98 800B0DE8 00001025 */  or         $v0, $zero, $zero
  .L800B0DEC_BFD9C:
    /* BFD9C 800B0DEC 03E00008 */  jr         $ra
    /* BFDA0 800B0DF0 00000000 */   nop
endlabel func_800B0D10_BFCC0
