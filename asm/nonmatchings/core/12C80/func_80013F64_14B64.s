nonmatching func_80013F64_14B64, 0x60

glabel func_80013F64_14B64
    /* 14B64 80013F64 3C0E8007 */  lui        $t6, %hi(D_8006AB88)
    /* 14B68 80013F68 8DCEAB88 */  lw         $t6, %lo(D_8006AB88)($t6)
    /* 14B6C 80013F6C 00001825 */  or         $v1, $zero, $zero
    /* 14B70 80013F70 3C028007 */  lui        $v0, %hi(D_8006AA80)
    /* 14B74 80013F74 15C00003 */  bnez       $t6, .L80013F84_14B84
    /* 14B78 80013F78 00000000 */   nop
    /* 14B7C 80013F7C 03E00008 */  jr         $ra
    /* 14B80 80013F80 2402FFFF */   addiu     $v0, $zero, -0x1
  .L80013F84_14B84:
    /* 14B84 80013F84 8C42AA80 */  lw         $v0, %lo(D_8006AA80)($v0)
    /* 14B88 80013F88 2404FFFF */  addiu      $a0, $zero, -0x1
    /* 14B8C 80013F8C 5040000B */  beql       $v0, $zero, .L80013FBC_14BBC
    /* 14B90 80013F90 00601025 */   or        $v0, $v1, $zero
    /* 14B94 80013F94 844F0006 */  lh         $t7, 0x6($v0)
  .L80013F98_14B98:
    /* 14B98 80013F98 548F0005 */  bnel       $a0, $t7, .L80013FB0_14BB0
    /* 14B9C 80013F9C 8C420034 */   lw        $v0, 0x34($v0)
    /* 14BA0 80013FA0 24630001 */  addiu      $v1, $v1, 0x1
    /* 14BA4 80013FA4 0003C400 */  sll        $t8, $v1, 16
    /* 14BA8 80013FA8 00181C03 */  sra        $v1, $t8, 16
    /* 14BAC 80013FAC 8C420034 */  lw         $v0, 0x34($v0)
  .L80013FB0_14BB0:
    /* 14BB0 80013FB0 5440FFF9 */  bnel       $v0, $zero, .L80013F98_14B98
    /* 14BB4 80013FB4 844F0006 */   lh        $t7, 0x6($v0)
    /* 14BB8 80013FB8 00601025 */  or         $v0, $v1, $zero
  .L80013FBC_14BBC:
    /* 14BBC 80013FBC 03E00008 */  jr         $ra
    /* 14BC0 80013FC0 00000000 */   nop
endlabel func_80013F64_14B64
