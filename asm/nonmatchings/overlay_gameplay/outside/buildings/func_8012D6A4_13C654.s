nonmatching func_8012D6A4_13C654, 0x5C

glabel func_8012D6A4_13C654
    /* 13C654 8012D6A4 AFA50004 */  sw         $a1, 0x4($sp)
    /* 13C658 8012D6A8 30AFFFFF */  andi       $t7, $a1, 0xFFFF
    /* 13C65C 8012D6AC 3C068016 */  lui        $a2, %hi(D_8015FF50)
    /* 13C660 8012D6B0 01E02825 */  or         $a1, $t7, $zero
    /* 13C664 8012D6B4 AFA40000 */  sw         $a0, 0x0($sp)
    /* 13C668 8012D6B8 308700FF */  andi       $a3, $a0, 0xFF
    /* 13C66C 8012D6BC 24C6FF50 */  addiu      $a2, $a2, %lo(D_8015FF50)
    /* 13C670 8012D6C0 24030018 */  addiu      $v1, $zero, 0x18
  .L8012D6C4_13C674:
    /* 13C674 8012D6C4 90D8002C */  lbu        $t8, 0x2C($a2)
    /* 13C678 8012D6C8 00601025 */  or         $v0, $v1, $zero
    /* 13C67C 8012D6CC 54F80007 */  bnel       $a3, $t8, .L8012D6EC_13C69C
    /* 13C680 8012D6D0 24C6FFD0 */   addiu     $a2, $a2, -0x30
    /* 13C684 8012D6D4 84D9001E */  lh         $t9, 0x1E($a2)
    /* 13C688 8012D6D8 54B90004 */  bnel       $a1, $t9, .L8012D6EC_13C69C
    /* 13C68C 8012D6DC 24C6FFD0 */   addiu     $a2, $a2, -0x30
    /* 13C690 8012D6E0 03E00008 */  jr         $ra
    /* 13C694 8012D6E4 00601025 */   or        $v0, $v1, $zero
    /* 13C698 8012D6E8 24C6FFD0 */  addiu      $a2, $a2, -0x30
  .L8012D6EC_13C69C:
    /* 13C69C 8012D6EC 1460FFF5 */  bnez       $v1, .L8012D6C4_13C674
    /* 13C6A0 8012D6F0 2463FFFF */   addiu     $v1, $v1, -0x1
    /* 13C6A4 8012D6F4 2402FFFF */  addiu      $v0, $zero, -0x1
    /* 13C6A8 8012D6F8 03E00008 */  jr         $ra
    /* 13C6AC 8012D6FC 00000000 */   nop
endlabel func_8012D6A4_13C654
