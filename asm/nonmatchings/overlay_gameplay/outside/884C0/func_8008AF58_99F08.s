nonmatching func_8008AF58_99F08, 0xD4

glabel func_8008AF58_99F08
    /* 99F08 8008AF58 308E00FF */  andi       $t6, $a0, 0xFF
    /* 99F0C 8008AF5C 000E7880 */  sll        $t7, $t6, 2
    /* 99F10 8008AF60 01EE7821 */  addu       $t7, $t7, $t6
    /* 99F14 8008AF64 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 99F18 8008AF68 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 99F1C 8008AF6C 000F7900 */  sll        $t7, $t7, 4
    /* 99F20 8008AF70 01F81021 */  addu       $v0, $t7, $t8
    /* 99F24 8008AF74 8C450020 */  lw         $a1, 0x20($v0)
    /* 99F28 8008AF78 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 99F2C 8008AF7C AFA40018 */  sw         $a0, 0x18($sp)
    /* 99F30 8008AF80 0005CAC0 */  sll        $t9, $a1, 11
    /* 99F34 8008AF84 01C02025 */  or         $a0, $t6, $zero
    /* 99F38 8008AF88 07200005 */  bltz       $t9, .L8008AFA0_99F50
    /* 99F3C 8008AF8C AFBF0014 */   sw        $ra, 0x14($sp)
    /* 99F40 8008AF90 0C022B17 */  jal        func_8008AC5C_99C0C
    /* 99F44 8008AF94 00000000 */   nop
    /* 99F48 8008AF98 10000021 */  b          .L8008B020_99FD0
    /* 99F4C 8008AF9C 8FBF0014 */   lw        $ra, 0x14($sp)
  .L8008AFA0_99F50:
    /* 99F50 8008AFA0 8448002C */  lh         $t0, 0x2C($v0)
    /* 99F54 8008AFA4 24010050 */  addiu      $at, $zero, 0x50
    /* 99F58 8008AFA8 11010007 */  beq        $t0, $at, .L8008AFC8_99F78
    /* 99F5C 8008AFAC 3C014000 */   lui       $at, (0x40000000 >> 16)
    /* 99F60 8008AFB0 00A11824 */  and        $v1, $a1, $at
    /* 99F64 8008AFB4 14600008 */  bnez       $v1, .L8008AFD8_99F88
    /* 99F68 8008AFB8 00000000 */   nop
    /* 99F6C 8008AFBC 90490047 */  lbu        $t1, 0x47($v0)
    /* 99F70 8008AFC0 312A0001 */  andi       $t2, $t1, 0x1
    /* 99F74 8008AFC4 11400004 */  beqz       $t2, .L8008AFD8_99F88
  .L8008AFC8_99F78:
    /* 99F78 8008AFC8 3C014000 */   lui       $at, (0x40000000 >> 16)
    /* 99F7C 8008AFCC 00A15825 */  or         $t3, $a1, $at
    /* 99F80 8008AFD0 AC4B0020 */  sw         $t3, 0x20($v0)
    /* 99F84 8008AFD4 01611824 */  and        $v1, $t3, $at
  .L8008AFD8_99F88:
    /* 99F88 8008AFD8 54600006 */  bnel       $v1, $zero, .L8008AFF4_99FA4
    /* 99F8C 8008AFDC 904E001A */   lbu       $t6, 0x1A($v0)
    /* 99F90 8008AFE0 844D002C */  lh         $t5, 0x2C($v0)
    /* 99F94 8008AFE4 29A10050 */  slti       $at, $t5, 0x50
    /* 99F98 8008AFE8 5020000D */  beql       $at, $zero, .L8008B020_99FD0
    /* 99F9C 8008AFEC 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 99FA0 8008AFF0 904E001A */  lbu        $t6, 0x1A($v0)
  .L8008AFF4_99FA4:
    /* 99FA4 8008AFF4 3C058025 */  lui        $a1, %hi(D_8025668C)
    /* 99FA8 8008AFF8 24060002 */  addiu      $a2, $zero, 0x2
    /* 99FAC 8008AFFC 000E7880 */  sll        $t7, $t6, 2
    /* 99FB0 8008B000 01EE7823 */  subu       $t7, $t7, $t6
    /* 99FB4 8008B004 000F7880 */  sll        $t7, $t7, 2
    /* 99FB8 8008B008 01EE7821 */  addu       $t7, $t7, $t6
    /* 99FBC 8008B00C 000F78C0 */  sll        $t7, $t7, 3
    /* 99FC0 8008B010 00AF2821 */  addu       $a1, $a1, $t7
    /* 99FC4 8008B014 0C022ABF */  jal        func_8008AAFC_99AAC
    /* 99FC8 8008B018 84A5668C */   lh        $a1, %lo(D_8025668C)($a1)
    /* 99FCC 8008B01C 8FBF0014 */  lw         $ra, 0x14($sp)
  .L8008B020_99FD0:
    /* 99FD0 8008B020 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 99FD4 8008B024 03E00008 */  jr         $ra
    /* 99FD8 8008B028 00000000 */   nop
endlabel func_8008AF58_99F08
