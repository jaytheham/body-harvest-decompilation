nonmatching func_80084CF8_93CA8, 0x88

glabel func_80084CF8_93CA8
    /* 93CA8 80084CF8 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 93CAC 80084CFC AFBF0014 */  sw         $ra, 0x14($sp)
    /* 93CB0 80084D00 808E000D */  lb         $t6, 0xD($a0)
    /* 93CB4 80084D04 2401FFFE */  addiu      $at, $zero, -0x2
    /* 93CB8 80084D08 00803025 */  or         $a2, $a0, $zero
    /* 93CBC 80084D0C 11C1000C */  beq        $t6, $at, .L80084D40_93CF0
    /* 93CC0 80084D10 00A03825 */   or        $a3, $a1, $zero
    /* 93CC4 80084D14 8C820020 */  lw         $v0, 0x20($a0)
    /* 93CC8 80084D18 00027AC0 */  sll        $t7, $v0, 11
    /* 93CCC 80084D1C 05E00014 */  bltz       $t7, .L80084D70_93D20
    /* 93CD0 80084D20 0002C040 */   sll       $t8, $v0, 1
    /* 93CD4 80084D24 07030007 */  bgezl      $t8, .L80084D44_93CF4
    /* 93CD8 80084D28 80F9000D */   lb        $t9, 0xD($a3)
    /* 93CDC 80084D2C AFA60018 */  sw         $a2, 0x18($sp)
    /* 93CE0 80084D30 0C0212B9 */  jal        func_80084AE4_93A94
    /* 93CE4 80084D34 AFA7001C */   sw        $a3, 0x1C($sp)
    /* 93CE8 80084D38 8FA60018 */  lw         $a2, 0x18($sp)
    /* 93CEC 80084D3C 8FA7001C */  lw         $a3, 0x1C($sp)
  .L80084D40_93CF0:
    /* 93CF0 80084D40 80F9000D */  lb         $t9, 0xD($a3)
  .L80084D44_93CF4:
    /* 93CF4 80084D44 2401FFFE */  addiu      $at, $zero, -0x2
    /* 93CF8 80084D48 5321000A */  beql       $t9, $at, .L80084D74_93D24
    /* 93CFC 80084D4C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 93D00 80084D50 8CE20020 */  lw         $v0, 0x20($a3)
    /* 93D04 80084D54 000242C0 */  sll        $t0, $v0, 11
    /* 93D08 80084D58 05000005 */  bltz       $t0, .L80084D70_93D20
    /* 93D0C 80084D5C 00024840 */   sll       $t1, $v0, 1
    /* 93D10 80084D60 05210003 */  bgez       $t1, .L80084D70_93D20
    /* 93D14 80084D64 00E02025 */   or        $a0, $a3, $zero
    /* 93D18 80084D68 0C0212B9 */  jal        func_80084AE4_93A94
    /* 93D1C 80084D6C 00C02825 */   or        $a1, $a2, $zero
  .L80084D70_93D20:
    /* 93D20 80084D70 8FBF0014 */  lw         $ra, 0x14($sp)
  .L80084D74_93D24:
    /* 93D24 80084D74 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 93D28 80084D78 03E00008 */  jr         $ra
    /* 93D2C 80084D7C 00000000 */   nop
endlabel func_80084CF8_93CA8
