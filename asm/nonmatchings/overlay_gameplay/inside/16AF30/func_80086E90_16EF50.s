nonmatching func_80086E90_16EF50, 0x94

glabel func_80086E90_16EF50
    /* 16EF50 80086E90 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 16EF54 80086E94 308E00FF */  andi       $t6, $a0, 0xFF
    /* 16EF58 80086E98 AFA40020 */  sw         $a0, 0x20($sp)
    /* 16EF5C 80086E9C 29C1000F */  slti       $at, $t6, 0xF
    /* 16EF60 80086EA0 01C02025 */  or         $a0, $t6, $zero
    /* 16EF64 80086EA4 1020001B */  beqz       $at, .L80086F14_16EFD4
    /* 16EF68 80086EA8 AFBF0014 */   sw        $ra, 0x14($sp)
    /* 16EF6C 80086EAC 000E7880 */  sll        $t7, $t6, 2
    /* 16EF70 80086EB0 01EE7823 */  subu       $t7, $t7, $t6
    /* 16EF74 80086EB4 3C188010 */  lui        $t8, %hi(D_800FB6F8)
    /* 16EF78 80086EB8 2718B6F8 */  addiu      $t8, $t8, %lo(D_800FB6F8)
    /* 16EF7C 80086EBC 000F7880 */  sll        $t7, $t7, 2
    /* 16EF80 80086EC0 01F81021 */  addu       $v0, $t7, $t8
    /* 16EF84 80086EC4 90590000 */  lbu        $t9, 0x0($v0)
    /* 16EF88 80086EC8 57200013 */  bnel       $t9, $zero, .L80086F18_16EFD8
    /* 16EF8C 80086ECC 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 16EF90 80086ED0 AFA2001C */  sw         $v0, 0x1C($sp)
    /* 16EF94 80086ED4 0C020E6E */  jal        func_800839B8_16BA78
    /* 16EF98 80086ED8 A3AE0023 */   sb        $t6, 0x23($sp)
    /* 16EF9C 80086EDC 8FA2001C */  lw         $v0, 0x1C($sp)
    /* 16EFA0 80086EE0 240100FB */  addiu      $at, $zero, 0xFB
    /* 16EFA4 80086EE4 93A40023 */  lbu        $a0, 0x23($sp)
    /* 16EFA8 80086EE8 84430002 */  lh         $v1, 0x2($v0)
    /* 16EFAC 80086EEC 240800F1 */  addiu      $t0, $zero, 0xF1
    /* 16EFB0 80086EF0 10610006 */  beq        $v1, $at, .L80086F0C_16EFCC
    /* 16EFB4 80086EF4 00034880 */   sll       $t1, $v1, 2
    /* 16EFB8 80086EF8 01234823 */  subu       $t1, $t1, $v1
    /* 16EFBC 80086EFC 00094880 */  sll        $t1, $t1, 2
    /* 16EFC0 80086F00 3C018010 */  lui        $at, %hi(D_800FB6FA)
    /* 16EFC4 80086F04 00290821 */  addu       $at, $at, $t1
    /* 16EFC8 80086F08 A428B6FA */  sh         $t0, %lo(D_800FB6FA)($at)
  .L80086F0C_16EFCC:
    /* 16EFCC 80086F0C 0C020CC0 */  jal        func_80083300_16B3C0
    /* 16EFD0 80086F10 00000000 */   nop
  .L80086F14_16EFD4:
    /* 16EFD4 80086F14 8FBF0014 */  lw         $ra, 0x14($sp)
  .L80086F18_16EFD8:
    /* 16EFD8 80086F18 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 16EFDC 80086F1C 03E00008 */  jr         $ra
    /* 16EFE0 80086F20 00000000 */   nop
endlabel func_80086E90_16EF50
