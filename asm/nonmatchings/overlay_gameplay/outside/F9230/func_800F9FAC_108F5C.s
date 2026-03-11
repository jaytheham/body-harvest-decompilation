nonmatching func_800F9FAC_108F5C, 0x6C

glabel func_800F9FAC_108F5C
    /* 108F5C 800F9FAC 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 108F60 800F9FB0 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 108F64 800F9FB4 AFA40030 */  sw         $a0, 0x30($sp)
    /* 108F68 800F9FB8 AFA50034 */  sw         $a1, 0x34($sp)
    /* 108F6C 800F9FBC 00047400 */  sll        $t6, $a0, 16
    /* 108F70 800F9FC0 0005C400 */  sll        $t8, $a1, 16
    /* 108F74 800F9FC4 27A8002C */  addiu      $t0, $sp, 0x2C
    /* 108F78 800F9FC8 00182C03 */  sra        $a1, $t8, 16
    /* 108F7C 800F9FCC 000E2403 */  sra        $a0, $t6, 16
    /* 108F80 800F9FD0 AFA80010 */  sw         $t0, 0x10($sp)
    /* 108F84 800F9FD4 27A6002A */  addiu      $a2, $sp, 0x2A
    /* 108F88 800F9FD8 0C03E758 */  jal        func_800F9D60_108D10
    /* 108F8C 800F9FDC 27A7002E */   addiu     $a3, $sp, 0x2E
    /* 108F90 800F9FE0 3C028022 */  lui        $v0, %hi(D_80222A70)
    /* 108F94 800F9FE4 87A4002C */  lh         $a0, 0x2C($sp)
    /* 108F98 800F9FE8 8C422A70 */  lw         $v0, %lo(D_80222A70)($v0)
    /* 108F9C 800F9FEC 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 108FA0 800F9FF0 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 108FA4 800F9FF4 0044082A */  slt        $at, $v0, $a0
    /* 108FA8 800F9FF8 10200003 */  beqz       $at, .L800FA008_108FB8
    /* 108FAC 800F9FFC 00401825 */   or        $v1, $v0, $zero
    /* 108FB0 800FA000 10000001 */  b          .L800FA008_108FB8
    /* 108FB4 800FA004 00801825 */   or        $v1, $a0, $zero
  .L800FA008_108FB8:
    /* 108FB8 800FA008 00031400 */  sll        $v0, $v1, 16
    /* 108FBC 800FA00C 00024C03 */  sra        $t1, $v0, 16
    /* 108FC0 800FA010 03E00008 */  jr         $ra
    /* 108FC4 800FA014 01201025 */   or        $v0, $t1, $zero
endlabel func_800F9FAC_108F5C
