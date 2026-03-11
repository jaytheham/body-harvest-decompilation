nonmatching func_8012EBC0_13DB70, 0x7C

glabel func_8012EBC0_13DB70
    /* 13DB70 8012EBC0 908E0000 */  lbu        $t6, 0x0($a0)
    /* 13DB74 8012EBC4 00001025 */  or         $v0, $zero, $zero
    /* 13DB78 8012EBC8 51C0000C */  beql       $t6, $zero, .L8012EBFC_13DBAC
    /* 13DB7C 8012EBCC 00021C00 */   sll       $v1, $v0, 16
    /* 13DB80 8012EBD0 90830000 */  lbu        $v1, 0x0($a0)
    /* 13DB84 8012EBD4 00C27821 */  addu       $t7, $a2, $v0
  .L8012EBD8_13DB88:
    /* 13DB88 8012EBD8 24420001 */  addiu      $v0, $v0, 0x1
    /* 13DB8C 8012EBDC 0002C400 */  sll        $t8, $v0, 16
    /* 13DB90 8012EBE0 00181403 */  sra        $v0, $t8, 16
    /* 13DB94 8012EBE4 00444021 */  addu       $t0, $v0, $a0
    /* 13DB98 8012EBE8 A1E30000 */  sb         $v1, 0x0($t7)
    /* 13DB9C 8012EBEC 91030000 */  lbu        $v1, 0x0($t0)
    /* 13DBA0 8012EBF0 5460FFF9 */  bnel       $v1, $zero, .L8012EBD8_13DB88
    /* 13DBA4 8012EBF4 00C27821 */   addu      $t7, $a2, $v0
    /* 13DBA8 8012EBF8 00021C00 */  sll        $v1, $v0, 16
  .L8012EBFC_13DBAC:
    /* 13DBAC 8012EBFC 00034C03 */  sra        $t1, $v1, 16
    /* 13DBB0 8012EC00 00001025 */  or         $v0, $zero, $zero
    /* 13DBB4 8012EC04 00C92021 */  addu       $a0, $a2, $t1
    /* 13DBB8 8012EC08 00451821 */  addu       $v1, $v0, $a1
  .L8012EC0C_13DBBC:
    /* 13DBBC 8012EC0C 906A0000 */  lbu        $t2, 0x0($v1)
    /* 13DBC0 8012EC10 00825821 */  addu       $t3, $a0, $v0
    /* 13DBC4 8012EC14 24420001 */  addiu      $v0, $v0, 0x1
    /* 13DBC8 8012EC18 A16A0000 */  sb         $t2, 0x0($t3)
    /* 13DBCC 8012EC1C 90660000 */  lbu        $a2, 0x0($v1)
    /* 13DBD0 8012EC20 00026C00 */  sll        $t5, $v0, 16
    /* 13DBD4 8012EC24 000D1403 */  sra        $v0, $t5, 16
    /* 13DBD8 8012EC28 0006602B */  sltu       $t4, $zero, $a2
    /* 13DBDC 8012EC2C 5580FFF7 */  bnel       $t4, $zero, .L8012EC0C_13DBBC
    /* 13DBE0 8012EC30 00451821 */   addu      $v1, $v0, $a1
    /* 13DBE4 8012EC34 03E00008 */  jr         $ra
    /* 13DBE8 8012EC38 00000000 */   nop
endlabel func_8012EBC0_13DB70
