nonmatching func_800FADF8_109DA8, 0x68

glabel func_800FADF8_109DA8
    /* 109DA8 800FADF8 3C038016 */  lui        $v1, %hi(D_80158FD8)
    /* 109DAC 800FADFC 84638FD8 */  lh         $v1, %lo(D_80158FD8)($v1)
    /* 109DB0 800FAE00 00047400 */  sll        $t6, $a0, 16
    /* 109DB4 800FAE04 000E7C03 */  sra        $t7, $t6, 16
    /* 109DB8 800FAE08 00601025 */  or         $v0, $v1, $zero
    /* 109DBC 800FAE0C AFA40000 */  sw         $a0, 0x0($sp)
    /* 109DC0 800FAE10 01E02025 */  or         $a0, $t7, $zero
    /* 109DC4 800FAE14 1060000F */  beqz       $v1, .L800FAE54_109E04
    /* 109DC8 800FAE18 2463FFFF */   addiu     $v1, $v1, -0x1
    /* 109DCC 800FAE1C 3C188016 */  lui        $t8, %hi(D_80158E80)
    /* 109DD0 800FAE20 27188E80 */  addiu      $t8, $t8, %lo(D_80158E80)
    /* 109DD4 800FAE24 00782821 */  addu       $a1, $v1, $t8
  .L800FAE28_109DD8:
    /* 109DD8 800FAE28 90B90000 */  lbu        $t9, 0x0($a1)
    /* 109DDC 800FAE2C 00601025 */  or         $v0, $v1, $zero
    /* 109DE0 800FAE30 24A5FFFF */  addiu      $a1, $a1, -0x1
    /* 109DE4 800FAE34 14990005 */  bne        $a0, $t9, .L800FAE4C_109DFC
    /* 109DE8 800FAE38 00000000 */   nop
    /* 109DEC 800FAE3C 00031400 */  sll        $v0, $v1, 16
    /* 109DF0 800FAE40 00024403 */  sra        $t0, $v0, 16
    /* 109DF4 800FAE44 03E00008 */  jr         $ra
    /* 109DF8 800FAE48 01001025 */   or        $v0, $t0, $zero
  .L800FAE4C_109DFC:
    /* 109DFC 800FAE4C 1460FFF6 */  bnez       $v1, .L800FAE28_109DD8
    /* 109E00 800FAE50 2463FFFF */   addiu     $v1, $v1, -0x1
  .L800FAE54_109E04:
    /* 109E04 800FAE54 2402FFFF */  addiu      $v0, $zero, -0x1
    /* 109E08 800FAE58 03E00008 */  jr         $ra
    /* 109E0C 800FAE5C 00000000 */   nop
endlabel func_800FADF8_109DA8
