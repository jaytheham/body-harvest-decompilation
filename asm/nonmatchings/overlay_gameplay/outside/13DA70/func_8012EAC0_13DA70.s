nonmatching func_8012EAC0_13DA70, 0x100

glabel func_8012EAC0_13DA70
    /* 13DA70 8012EAC0 00A03025 */  or         $a2, $a1, $zero
    /* 13DA74 8012EAC4 00001025 */  or         $v0, $zero, $zero
    /* 13DA78 8012EAC8 1880000F */  blez       $a0, .L8012EB08_13DAB8
    /* 13DA7C 8012EACC 00801825 */   or        $v1, $a0, $zero
    /* 13DA80 8012EAD0 3C014120 */  lui        $at, (0x41200000 >> 16)
    /* 13DA84 8012EAD4 44811000 */  mtc1       $at, $f2
    /* 13DA88 8012EAD8 00000000 */  nop
    /* 13DA8C 8012EADC 44832000 */  mtc1       $v1, $f4
  .L8012EAE0_13DA90:
    /* 13DA90 8012EAE0 24420001 */  addiu      $v0, $v0, 0x1
    /* 13DA94 8012EAE4 00027C00 */  sll        $t7, $v0, 16
    /* 13DA98 8012EAE8 468021A0 */  cvt.s.w    $f6, $f4
    /* 13DA9C 8012EAEC 000F1403 */  sra        $v0, $t7, 16
    /* 13DAA0 8012EAF0 46023203 */  div.s      $f8, $f6, $f2
    /* 13DAA4 8012EAF4 4600428D */  trunc.w.s  $f10, $f8
    /* 13DAA8 8012EAF8 44035000 */  mfc1       $v1, $f10
    /* 13DAAC 8012EAFC 00000000 */  nop
    /* 13DAB0 8012EB00 5C60FFF7 */  bgtzl      $v1, .L8012EAE0_13DA90
    /* 13DAB4 8012EB04 44832000 */   mtc1      $v1, $f4
  .L8012EB08_13DAB8:
    /* 13DAB8 8012EB08 3C014120 */  lui        $at, (0x41200000 >> 16)
    /* 13DABC 8012EB0C 44811000 */  mtc1       $at, $f2
    /* 13DAC0 8012EB10 18400028 */  blez       $v0, .L8012EBB4_13DB64
    /* 13DAC4 8012EB14 00001825 */   or        $v1, $zero, $zero
    /* 13DAC8 8012EB18 44848000 */  mtc1       $a0, $f16
    /* 13DACC 8012EB1C 00C23821 */  addu       $a3, $a2, $v0
    /* 13DAD0 8012EB20 2408000A */  addiu      $t0, $zero, 0xA
    /* 13DAD4 8012EB24 46808020 */  cvt.s.w    $f0, $f16
  .L8012EB28_13DAD8:
    /* 13DAD8 8012EB28 24040001 */  addiu      $a0, $zero, 0x1
    /* 13DADC 8012EB2C 18600009 */  blez       $v1, .L8012EB54_13DB04
    /* 13DAE0 8012EB30 00002825 */   or        $a1, $zero, $zero
  .L8012EB34_13DAE4:
    /* 13DAE4 8012EB34 00880019 */  multu      $a0, $t0
    /* 13DAE8 8012EB38 24A50001 */  addiu      $a1, $a1, 0x1
    /* 13DAEC 8012EB3C 0005CC00 */  sll        $t9, $a1, 16
    /* 13DAF0 8012EB40 00192C03 */  sra        $a1, $t9, 16
    /* 13DAF4 8012EB44 00A3082A */  slt        $at, $a1, $v1
    /* 13DAF8 8012EB48 00002012 */  mflo       $a0
    /* 13DAFC 8012EB4C 1420FFF9 */  bnez       $at, .L8012EB34_13DAE4
    /* 13DB00 8012EB50 00000000 */   nop
  .L8012EB54_13DB04:
    /* 13DB04 8012EB54 44849000 */  mtc1       $a0, $f18
    /* 13DB08 8012EB58 00E3C023 */  subu       $t8, $a3, $v1
    /* 13DB0C 8012EB5C 24630001 */  addiu      $v1, $v1, 0x1
    /* 13DB10 8012EB60 46809120 */  cvt.s.w    $f4, $f18
    /* 13DB14 8012EB64 0003CC00 */  sll        $t9, $v1, 16
    /* 13DB18 8012EB68 00191C03 */  sra        $v1, $t9, 16
    /* 13DB1C 8012EB6C 0062082A */  slt        $at, $v1, $v0
    /* 13DB20 8012EB70 46040183 */  div.s      $f6, $f0, $f4
    /* 13DB24 8012EB74 4600320D */  trunc.w.s  $f8, $f6
    /* 13DB28 8012EB78 44054000 */  mfc1       $a1, $f8
    /* 13DB2C 8012EB7C 00000000 */  nop
    /* 13DB30 8012EB80 44855000 */  mtc1       $a1, $f10
    /* 13DB34 8012EB84 00000000 */  nop
    /* 13DB38 8012EB88 46805420 */  cvt.s.w    $f16, $f10
    /* 13DB3C 8012EB8C 46028483 */  div.s      $f18, $f16, $f2
    /* 13DB40 8012EB90 4600910D */  trunc.w.s  $f4, $f18
    /* 13DB44 8012EB94 440C2000 */  mfc1       $t4, $f4
    /* 13DB48 8012EB98 00000000 */  nop
    /* 13DB4C 8012EB9C 01880019 */  multu      $t4, $t0
    /* 13DB50 8012EBA0 00006812 */  mflo       $t5
    /* 13DB54 8012EBA4 00AD7023 */  subu       $t6, $a1, $t5
    /* 13DB58 8012EBA8 25CF0030 */  addiu      $t7, $t6, 0x30
    /* 13DB5C 8012EBAC 1420FFDE */  bnez       $at, .L8012EB28_13DAD8
    /* 13DB60 8012EBB0 A30FFFFF */   sb        $t7, -0x1($t8)
  .L8012EBB4_13DB64:
    /* 13DB64 8012EBB4 00C25021 */  addu       $t2, $a2, $v0
    /* 13DB68 8012EBB8 03E00008 */  jr         $ra
    /* 13DB6C 8012EBBC A1400000 */   sb        $zero, 0x0($t2)
endlabel func_8012EAC0_13DA70
