nonmatching func_8012D824_13C7D4, 0x28

glabel func_8012D824_13C7D4
    /* 13C7D4 8012D824 3C048016 */  lui        $a0, %hi(D_8015FF50)
    /* 13C7D8 8012D828 2484FF50 */  addiu      $a0, $a0, %lo(D_8015FF50)
    /* 13C7DC 8012D82C 24030018 */  addiu      $v1, $zero, 0x18
  .L8012D830_13C7E0:
    /* 13C7E0 8012D830 00601025 */  or         $v0, $v1, $zero
    /* 13C7E4 8012D834 A080002C */  sb         $zero, 0x2C($a0)
    /* 13C7E8 8012D838 2484FFD0 */  addiu      $a0, $a0, -0x30
    /* 13C7EC 8012D83C 1460FFFC */  bnez       $v1, .L8012D830_13C7E0
    /* 13C7F0 8012D840 2463FFFF */   addiu     $v1, $v1, -0x1
    /* 13C7F4 8012D844 03E00008 */  jr         $ra
    /* 13C7F8 8012D848 00000000 */   nop
endlabel func_8012D824_13C7D4
