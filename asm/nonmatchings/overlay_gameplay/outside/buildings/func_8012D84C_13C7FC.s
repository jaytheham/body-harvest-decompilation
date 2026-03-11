nonmatching func_8012D84C_13C7FC, 0x38

glabel func_8012D84C_13C7FC
    /* 13C7FC 8012D84C 3C048016 */  lui        $a0, %hi(D_8015FF50)
    /* 13C800 8012D850 2484FF50 */  addiu      $a0, $a0, %lo(D_8015FF50)
    /* 13C804 8012D854 24030018 */  addiu      $v1, $zero, 0x18
    /* 13C808 8012D858 2405FFFF */  addiu      $a1, $zero, -0x1
  .L8012D85C_13C80C:
    /* 13C80C 8012D85C 8C8E0028 */  lw         $t6, 0x28($a0)
    /* 13C810 8012D860 00601025 */  or         $v0, $v1, $zero
    /* 13C814 8012D864 50AE0003 */  beql       $a1, $t6, .L8012D874_13C824
    /* 13C818 8012D868 2484FFD0 */   addiu     $a0, $a0, -0x30
    /* 13C81C 8012D86C A080002C */  sb         $zero, 0x2C($a0)
    /* 13C820 8012D870 2484FFD0 */  addiu      $a0, $a0, -0x30
  .L8012D874_13C824:
    /* 13C824 8012D874 1460FFF9 */  bnez       $v1, .L8012D85C_13C80C
    /* 13C828 8012D878 2463FFFF */   addiu     $v1, $v1, -0x1
    /* 13C82C 8012D87C 03E00008 */  jr         $ra
    /* 13C830 8012D880 00000000 */   nop
endlabel func_8012D84C_13C7FC
