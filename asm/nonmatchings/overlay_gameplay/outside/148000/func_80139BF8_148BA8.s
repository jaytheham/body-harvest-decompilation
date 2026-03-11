nonmatching func_80139BF8_148BA8, 0x160

glabel func_80139BF8_148BA8
    /* 148BA8 80139BF8 3C058016 */  lui        $a1, %hi(D_801601CC)
    /* 148BAC 80139BFC 24A501CC */  addiu      $a1, $a1, %lo(D_801601CC)
    /* 148BB0 80139C00 ACA00000 */  sw         $zero, 0x0($a1)
    /* 148BB4 80139C04 3C0E8005 */  lui        $t6, %hi(weaponSlots)
    /* 148BB8 80139C08 91CE8138 */  lbu        $t6, %lo(weaponSlots)($t6)
    /* 148BBC 80139C0C 3C088005 */  lui        $t0, %hi(D_80048139)
    /* 148BC0 80139C10 3C0D8005 */  lui        $t5, %hi(D_8004813A)
    /* 148BC4 80139C14 29C10002 */  slti       $at, $t6, 0x2
    /* 148BC8 80139C18 14200008 */  bnez       $at, .L80139C3C_148BEC
    /* 148BCC 80139C1C 24020003 */   addiu     $v0, $zero, 0x3
    /* 148BD0 80139C20 3C068016 */  lui        $a2, %hi(hudWeaponItems)
    /* 148BD4 80139C24 24C601B0 */  addiu      $a2, $a2, %lo(hudWeaponItems)
    /* 148BD8 80139C28 00007880 */  sll        $t7, $zero, 2
    /* 148BDC 80139C2C 00CFC021 */  addu       $t8, $a2, $t7
    /* 148BE0 80139C30 A3000003 */  sb         $zero, 0x3($t8)
    /* 148BE4 80139C34 24190001 */  addiu      $t9, $zero, 0x1
    /* 148BE8 80139C38 ACB90000 */  sw         $t9, 0x0($a1)
  .L80139C3C_148BEC:
    /* 148BEC 80139C3C 91088139 */  lbu        $t0, %lo(D_80048139)($t0)
    /* 148BF0 80139C40 3C068016 */  lui        $a2, %hi(hudWeaponItems)
    /* 148BF4 80139C44 24C601B0 */  addiu      $a2, $a2, %lo(hudWeaponItems)
    /* 148BF8 80139C48 29010002 */  slti       $at, $t0, 0x2
    /* 148BFC 80139C4C 14200008 */  bnez       $at, .L80139C70_148C20
    /* 148C00 80139C50 3C088005 */   lui       $t0, %hi(weaponSlots)
    /* 148C04 80139C54 8CA40000 */  lw         $a0, 0x0($a1)
    /* 148C08 80139C58 24090001 */  addiu      $t1, $zero, 0x1
    /* 148C0C 80139C5C 00045080 */  sll        $t2, $a0, 2
    /* 148C10 80139C60 00CA5821 */  addu       $t3, $a2, $t2
    /* 148C14 80139C64 A1690003 */  sb         $t1, 0x3($t3)
    /* 148C18 80139C68 248C0001 */  addiu      $t4, $a0, 0x1
    /* 148C1C 80139C6C ACAC0000 */  sw         $t4, 0x0($a1)
  .L80139C70_148C20:
    /* 148C20 80139C70 91AD813A */  lbu        $t5, %lo(D_8004813A)($t5)
    /* 148C24 80139C74 25088138 */  addiu      $t0, $t0, %lo(weaponSlots)
    /* 148C28 80139C78 00481821 */  addu       $v1, $v0, $t0
    /* 148C2C 80139C7C 29A10002 */  slti       $at, $t5, 0x2
    /* 148C30 80139C80 54200009 */  bnel       $at, $zero, .L80139CA8_148C58
    /* 148C34 80139C84 906A0000 */   lbu       $t2, 0x0($v1)
    /* 148C38 80139C88 8CA40000 */  lw         $a0, 0x0($a1)
    /* 148C3C 80139C8C 240E0002 */  addiu      $t6, $zero, 0x2
    /* 148C40 80139C90 00047880 */  sll        $t7, $a0, 2
    /* 148C44 80139C94 00CFC021 */  addu       $t8, $a2, $t7
    /* 148C48 80139C98 A30E0003 */  sb         $t6, 0x3($t8)
    /* 148C4C 80139C9C 24990001 */  addiu      $t9, $a0, 0x1
    /* 148C50 80139CA0 ACB90000 */  sw         $t9, 0x0($a1)
    /* 148C54 80139CA4 906A0000 */  lbu        $t2, 0x0($v1)
  .L80139CA8_148C58:
    /* 148C58 80139CA8 29410002 */  slti       $at, $t2, 0x2
    /* 148C5C 80139CAC 54200008 */  bnel       $at, $zero, .L80139CD0_148C80
    /* 148C60 80139CB0 906D0001 */   lbu       $t5, 0x1($v1)
    /* 148C64 80139CB4 8CA40000 */  lw         $a0, 0x0($a1)
    /* 148C68 80139CB8 00044880 */  sll        $t1, $a0, 2
    /* 148C6C 80139CBC 00C95821 */  addu       $t3, $a2, $t1
    /* 148C70 80139CC0 A1620003 */  sb         $v0, 0x3($t3)
    /* 148C74 80139CC4 248C0001 */  addiu      $t4, $a0, 0x1
    /* 148C78 80139CC8 ACAC0000 */  sw         $t4, 0x0($a1)
    /* 148C7C 80139CCC 906D0001 */  lbu        $t5, 0x1($v1)
  .L80139CD0_148C80:
    /* 148C80 80139CD0 29A10002 */  slti       $at, $t5, 0x2
    /* 148C84 80139CD4 54200009 */  bnel       $at, $zero, .L80139CFC_148CAC
    /* 148C88 80139CD8 90680002 */   lbu       $t0, 0x2($v1)
    /* 148C8C 80139CDC 8CA40000 */  lw         $a0, 0x0($a1)
    /* 148C90 80139CE0 244F0001 */  addiu      $t7, $v0, 0x1
    /* 148C94 80139CE4 00047080 */  sll        $t6, $a0, 2
    /* 148C98 80139CE8 00CEC021 */  addu       $t8, $a2, $t6
    /* 148C9C 80139CEC A30F0003 */  sb         $t7, 0x3($t8)
    /* 148CA0 80139CF0 24990001 */  addiu      $t9, $a0, 0x1
    /* 148CA4 80139CF4 ACB90000 */  sw         $t9, 0x0($a1)
    /* 148CA8 80139CF8 90680002 */  lbu        $t0, 0x2($v1)
  .L80139CFC_148CAC:
    /* 148CAC 80139CFC 29010002 */  slti       $at, $t0, 0x2
    /* 148CB0 80139D00 54200009 */  bnel       $at, $zero, .L80139D28_148CD8
    /* 148CB4 80139D04 906D0003 */   lbu       $t5, 0x3($v1)
    /* 148CB8 80139D08 8CA40000 */  lw         $a0, 0x0($a1)
    /* 148CBC 80139D0C 244A0002 */  addiu      $t2, $v0, 0x2
    /* 148CC0 80139D10 00044880 */  sll        $t1, $a0, 2
    /* 148CC4 80139D14 00C95821 */  addu       $t3, $a2, $t1
    /* 148CC8 80139D18 A16A0003 */  sb         $t2, 0x3($t3)
    /* 148CCC 80139D1C 248C0001 */  addiu      $t4, $a0, 0x1
    /* 148CD0 80139D20 ACAC0000 */  sw         $t4, 0x0($a1)
    /* 148CD4 80139D24 906D0003 */  lbu        $t5, 0x3($v1)
  .L80139D28_148CD8:
    /* 148CD8 80139D28 29A10002 */  slti       $at, $t5, 0x2
    /* 148CDC 80139D2C 14200008 */  bnez       $at, .L80139D50_148D00
    /* 148CE0 80139D30 00000000 */   nop
    /* 148CE4 80139D34 8CA40000 */  lw         $a0, 0x0($a1)
    /* 148CE8 80139D38 244E0003 */  addiu      $t6, $v0, 0x3
    /* 148CEC 80139D3C 00047880 */  sll        $t7, $a0, 2
    /* 148CF0 80139D40 00CFC021 */  addu       $t8, $a2, $t7
    /* 148CF4 80139D44 A30E0003 */  sb         $t6, 0x3($t8)
    /* 148CF8 80139D48 24990001 */  addiu      $t9, $a0, 0x1
    /* 148CFC 80139D4C ACB90000 */  sw         $t9, 0x0($a1)
  .L80139D50_148D00:
    /* 148D00 80139D50 03E00008 */  jr         $ra
    /* 148D04 80139D54 00000000 */   nop
endlabel func_80139BF8_148BA8
