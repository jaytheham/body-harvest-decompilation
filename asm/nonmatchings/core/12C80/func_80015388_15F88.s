nonmatching func_80015388_15F88, 0x50

glabel func_80015388_15F88
    /* 15F88 80015388 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 15F8C 8001538C 00042C00 */  sll        $a1, $a0, 16
    /* 15F90 80015390 00057403 */  sra        $t6, $a1, 16
    /* 15F94 80015394 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
    /* 15F98 80015398 44812000 */  mtc1       $at, $f4
    /* 15F9C 8001539C AFA40028 */  sw         $a0, 0x28($sp)
    /* 15FA0 800153A0 000E7880 */  sll        $t7, $t6, 2
    /* 15FA4 800153A4 27B80024 */  addiu      $t8, $sp, 0x24
    /* 15FA8 800153A8 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 15FAC 800153AC 01F82021 */  addu       $a0, $t7, $t8
    /* 15FB0 800153B0 01C02825 */  or         $a1, $t6, $zero
    /* 15FB4 800153B4 AFA40024 */  sw         $a0, 0x24($sp)
    /* 15FB8 800153B8 24060000 */  addiu      $a2, $zero, 0x0
    /* 15FBC 800153BC 00003825 */  or         $a3, $zero, $zero
    /* 15FC0 800153C0 0C00528F */  jal        func_80014A3C_1563C
    /* 15FC4 800153C4 E7A40010 */   swc1      $f4, 0x10($sp)
    /* 15FC8 800153C8 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 15FCC 800153CC 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 15FD0 800153D0 03E00008 */  jr         $ra
    /* 15FD4 800153D4 00000000 */   nop
endlabel func_80015388_15F88
