nonmatching func_8009BC48_AABF8, 0x78

glabel func_8009BC48_AABF8
    /* AABF8 8009BC48 2483FFF0 */  addiu      $v1, $a0, -0x10
    /* AABFC 8009BC4C 24A8FFF0 */  addiu      $t0, $a1, -0x10
    /* AAC00 8009BC50 00601025 */  or         $v0, $v1, $zero
    /* AAC04 8009BC54 04800017 */  bltz       $a0, .L8009BCB4_AAC64
    /* AAC08 8009BC58 01003825 */   or        $a3, $t0, $zero
    /* AAC0C 8009BC5C 28610010 */  slti       $at, $v1, 0x10
    /* AAC10 8009BC60 10200014 */  beqz       $at, .L8009BCB4_AAC64
    /* AAC14 8009BC64 2901FFF0 */   slti      $at, $t0, -0x10
    /* AAC18 8009BC68 14200012 */  bnez       $at, .L8009BCB4_AAC64
    /* AAC1C 8009BC6C 29010010 */   slti      $at, $t0, 0x10
    /* AAC20 8009BC70 50200011 */  beql       $at, $zero, .L8009BCB8_AAC68
    /* AAC24 8009BC74 00001025 */   or        $v0, $zero, $zero
    /* AAC28 8009BC78 10C00002 */  beqz       $a2, .L8009BC84_AAC34
    /* AAC2C 8009BC7C 24030100 */   addiu     $v1, $zero, 0x100
    /* AAC30 8009BC80 24030080 */  addiu      $v1, $zero, 0x80
  .L8009BC84_AAC34:
    /* AAC34 8009BC84 00420019 */  multu      $v0, $v0
    /* AAC38 8009BC88 00007012 */  mflo       $t6
    /* AAC3C 8009BC8C 00000000 */  nop
    /* AAC40 8009BC90 00000000 */  nop
    /* AAC44 8009BC94 00E70019 */  multu      $a3, $a3
    /* AAC48 8009BC98 00007812 */  mflo       $t7
    /* AAC4C 8009BC9C 01CFC021 */  addu       $t8, $t6, $t7
    /* AAC50 8009BCA0 0303082A */  slt        $at, $t8, $v1
    /* AAC54 8009BCA4 50200004 */  beql       $at, $zero, .L8009BCB8_AAC68
    /* AAC58 8009BCA8 00001025 */   or        $v0, $zero, $zero
    /* AAC5C 8009BCAC 03E00008 */  jr         $ra
    /* AAC60 8009BCB0 24020001 */   addiu     $v0, $zero, 0x1
  .L8009BCB4_AAC64:
    /* AAC64 8009BCB4 00001025 */  or         $v0, $zero, $zero
  .L8009BCB8_AAC68:
    /* AAC68 8009BCB8 03E00008 */  jr         $ra
    /* AAC6C 8009BCBC 00000000 */   nop
endlabel func_8009BC48_AABF8
