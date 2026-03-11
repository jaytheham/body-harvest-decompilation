nonmatching func_800B0DF4_BFDA4, 0x12C

glabel func_800B0DF4_BFDA4
    /* BFDA4 800B0DF4 24010001 */  addiu      $at, $zero, 0x1
    /* BFDA8 800B0DF8 14E1001E */  bne        $a3, $at, .L800B0E74_BFE24
    /* BFDAC 800B0DFC 3C0D8015 */   lui       $t5, %hi(D_8014FD30)
    /* BFDB0 800B0E00 25ADFD30 */  addiu      $t5, $t5, %lo(D_8014FD30)
    /* BFDB4 800B0E04 85AF0000 */  lh         $t7, 0x0($t5)
    /* BFDB8 800B0E08 00867023 */  subu       $t6, $a0, $a2
    /* BFDBC 800B0E0C 01CF082A */  slt        $at, $t6, $t7
    /* BFDC0 800B0E10 50200004 */  beql       $at, $zero, .L800B0E24_BFDD4
    /* BFDC4 800B0E14 85B80004 */   lh        $t8, 0x4($t5)
    /* BFDC8 800B0E18 03E00008 */  jr         $ra
    /* BFDCC 800B0E1C 24024000 */   addiu     $v0, $zero, 0x4000
    /* BFDD0 800B0E20 85B80004 */  lh         $t8, 0x4($t5)
  .L800B0E24_BFDD4:
    /* BFDD4 800B0E24 0086C821 */  addu       $t9, $a0, $a2
    /* BFDD8 800B0E28 0319082A */  slt        $at, $t8, $t9
    /* BFDDC 800B0E2C 50200004 */  beql       $at, $zero, .L800B0E40_BFDF0
    /* BFDE0 800B0E30 85AF0002 */   lh        $t7, 0x2($t5)
    /* BFDE4 800B0E34 03E00008 */  jr         $ra
    /* BFDE8 800B0E38 2402C000 */   addiu     $v0, $zero, -0x4000
    /* BFDEC 800B0E3C 85AF0002 */  lh         $t7, 0x2($t5)
  .L800B0E40_BFDF0:
    /* BFDF0 800B0E40 00A67023 */  subu       $t6, $a1, $a2
    /* BFDF4 800B0E44 01CF082A */  slt        $at, $t6, $t7
    /* BFDF8 800B0E48 50200004 */  beql       $at, $zero, .L800B0E5C_BFE0C
    /* BFDFC 800B0E4C 85B80006 */   lh        $t8, 0x6($t5)
    /* BFE00 800B0E50 03E00008 */  jr         $ra
    /* BFE04 800B0E54 24028000 */   addiu     $v0, $zero, -0x8000
    /* BFE08 800B0E58 85B80006 */  lh         $t8, 0x6($t5)
  .L800B0E5C_BFE0C:
    /* BFE0C 800B0E5C 00A6C821 */  addu       $t9, $a1, $a2
    /* BFE10 800B0E60 0319082A */  slt        $at, $t8, $t9
    /* BFE14 800B0E64 10200003 */  beqz       $at, .L800B0E74_BFE24
    /* BFE18 800B0E68 00000000 */   nop
    /* BFE1C 800B0E6C 03E00008 */  jr         $ra
    /* BFE20 800B0E70 00001025 */   or        $v0, $zero, $zero
  .L800B0E74_BFE24:
    /* BFE24 800B0E74 3C0D8015 */  lui        $t5, %hi(D_8014FD30)
    /* BFE28 800B0E78 25ADFD30 */  addiu      $t5, $t5, %lo(D_8014FD30)
    /* BFE2C 800B0E7C 000770C0 */  sll        $t6, $a3, 3
    /* BFE30 800B0E80 01AE1821 */  addu       $v1, $t5, $t6
    /* BFE34 800B0E84 8468FFF8 */  lh         $t0, -0x8($v1)
    /* BFE38 800B0E88 846FFFFC */  lh         $t7, -0x4($v1)
    /* BFE3C 800B0E8C 846AFFFA */  lh         $t2, -0x6($v1)
    /* BFE40 800B0E90 8478FFFE */  lh         $t8, -0x2($v1)
    /* BFE44 800B0E94 01E81023 */  subu       $v0, $t7, $t0
    /* BFE48 800B0E98 0002C843 */  sra        $t9, $v0, 1
    /* BFE4C 800B0E9C 030A4823 */  subu       $t1, $t8, $t2
    /* BFE50 800B0EA0 00097043 */  sra        $t6, $t1, 1
    /* BFE54 800B0EA4 03261021 */  addu       $v0, $t9, $a2
    /* BFE58 800B0EA8 00867821 */  addu       $t7, $a0, $a2
    /* BFE5C 800B0EAC 01C64821 */  addu       $t1, $t6, $a2
    /* BFE60 800B0EB0 00A6C821 */  addu       $t9, $a1, $a2
    /* BFE64 800B0EB4 01E8C023 */  subu       $t8, $t7, $t0
    /* BFE68 800B0EB8 03025823 */  subu       $t3, $t8, $v0
    /* BFE6C 800B0EBC 032A7023 */  subu       $t6, $t9, $t2
    /* BFE70 800B0EC0 05610003 */  bgez       $t3, .L800B0ED0_BFE80
    /* BFE74 800B0EC4 01C96023 */   subu      $t4, $t6, $t1
    /* BFE78 800B0EC8 10000002 */  b          .L800B0ED4_BFE84
    /* BFE7C 800B0ECC 01621821 */   addu      $v1, $t3, $v0
  .L800B0ED0_BFE80:
    /* BFE80 800B0ED0 004B1823 */  subu       $v1, $v0, $t3
  .L800B0ED4_BFE84:
    /* BFE84 800B0ED4 05810003 */  bgez       $t4, .L800B0EE4_BFE94
    /* BFE88 800B0ED8 012C1023 */   subu      $v0, $t1, $t4
    /* BFE8C 800B0EDC 10000001 */  b          .L800B0EE4_BFE94
    /* BFE90 800B0EE0 01891021 */   addu      $v0, $t4, $t1
  .L800B0EE4_BFE94:
    /* BFE94 800B0EE4 0062082A */  slt        $at, $v1, $v0
    /* BFE98 800B0EE8 10200007 */  beqz       $at, .L800B0F08_BFEB8
    /* BFE9C 800B0EEC 00000000 */   nop
    /* BFEA0 800B0EF0 05610003 */  bgez       $t3, .L800B0F00_BFEB0
    /* BFEA4 800B0EF4 00000000 */   nop
    /* BFEA8 800B0EF8 03E00008 */  jr         $ra
    /* BFEAC 800B0EFC 2402C000 */   addiu     $v0, $zero, -0x4000
  .L800B0F00_BFEB0:
    /* BFEB0 800B0F00 03E00008 */  jr         $ra
    /* BFEB4 800B0F04 24024000 */   addiu     $v0, $zero, 0x4000
  .L800B0F08_BFEB8:
    /* BFEB8 800B0F08 05810003 */  bgez       $t4, .L800B0F18_BFEC8
    /* BFEBC 800B0F0C 24028000 */   addiu     $v0, $zero, -0x8000
    /* BFEC0 800B0F10 03E00008 */  jr         $ra
    /* BFEC4 800B0F14 00001025 */   or        $v0, $zero, $zero
  .L800B0F18_BFEC8:
    /* BFEC8 800B0F18 03E00008 */  jr         $ra
    /* BFECC 800B0F1C 00000000 */   nop
endlabel func_800B0DF4_BFDA4
