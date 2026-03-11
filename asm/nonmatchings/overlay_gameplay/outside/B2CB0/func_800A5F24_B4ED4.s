nonmatching func_800A5F24_B4ED4, 0xFC

glabel func_800A5F24_B4ED4
    /* B4ED4 800A5F24 3C0E8014 */  lui        $t6, %hi(D_8013D890)
    /* B4ED8 800A5F28 91CED890 */  lbu        $t6, %lo(D_8013D890)($t6)
    /* B4EDC 800A5F2C 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* B4EE0 800A5F30 AFB00018 */  sw         $s0, 0x18($sp)
    /* B4EE4 800A5F34 00808025 */  or         $s0, $a0, $zero
    /* B4EE8 800A5F38 15C00034 */  bnez       $t6, .L800A600C_B4FBC
    /* B4EEC 800A5F3C AFBF001C */   sw        $ra, 0x1C($sp)
    /* B4EF0 800A5F40 3C048014 */  lui        $a0, %hi(D_801427E8)
    /* B4EF4 800A5F44 248427E8 */  addiu      $a0, $a0, %lo(D_801427E8)
    /* B4EF8 800A5F48 0C00731B */  jal        osSyncPrintf
    /* B4EFC 800A5F4C 02002825 */   or        $a1, $s0, $zero
    /* B4F00 800A5F50 3C0F8004 */  lui        $t7, %hi(currentLevel)
    /* B4F04 800A5F54 8DEF7F90 */  lw         $t7, %lo(currentLevel)($t7)
    /* B4F08 800A5F58 00101080 */  sll        $v0, $s0, 2
    /* B4F0C 800A5F5C 3C058003 */  lui        $a1, %hi(D_80031536)
    /* B4F10 800A5F60 000FC080 */  sll        $t8, $t7, 2
    /* B4F14 800A5F64 030FC023 */  subu       $t8, $t8, $t7
    /* B4F18 800A5F68 0018C0C0 */  sll        $t8, $t8, 3
    /* B4F1C 800A5F6C 0302C821 */  addu       $t9, $t8, $v0
    /* B4F20 800A5F70 00B92821 */  addu       $a1, $a1, $t9
    /* B4F24 800A5F74 3C048014 */  lui        $a0, %hi(D_801427F4)
    /* B4F28 800A5F78 248427F4 */  addiu      $a0, $a0, %lo(D_801427F4)
    /* B4F2C 800A5F7C 90A51536 */  lbu        $a1, %lo(D_80031536)($a1)
    /* B4F30 800A5F80 0C00731B */  jal        osSyncPrintf
    /* B4F34 800A5F84 AFA20024 */   sw        $v0, 0x24($sp)
    /* B4F38 800A5F88 3C088004 */  lui        $t0, %hi(currentLevel)
    /* B4F3C 800A5F8C 8D087F90 */  lw         $t0, %lo(currentLevel)($t0)
    /* B4F40 800A5F90 8FAA0024 */  lw         $t2, 0x24($sp)
    /* B4F44 800A5F94 3C058003 */  lui        $a1, %hi(D_8003153A)
    /* B4F48 800A5F98 00084880 */  sll        $t1, $t0, 2
    /* B4F4C 800A5F9C 01284823 */  subu       $t1, $t1, $t0
    /* B4F50 800A5FA0 000948C0 */  sll        $t1, $t1, 3
    /* B4F54 800A5FA4 012A5821 */  addu       $t3, $t1, $t2
    /* B4F58 800A5FA8 00AB2821 */  addu       $a1, $a1, $t3
    /* B4F5C 800A5FAC 3C048014 */  lui        $a0, %hi(D_80142800)
    /* B4F60 800A5FB0 24842800 */  addiu      $a0, $a0, %lo(D_80142800)
    /* B4F64 800A5FB4 0C00731B */  jal        osSyncPrintf
    /* B4F68 800A5FB8 90A5153A */   lbu       $a1, %lo(D_8003153A)($a1)
    /* B4F6C 800A5FBC 3C0C8004 */  lui        $t4, %hi(currentLevel)
    /* B4F70 800A5FC0 8D8C7F90 */  lw         $t4, %lo(currentLevel)($t4)
    /* B4F74 800A5FC4 8FAE0024 */  lw         $t6, 0x24($sp)
    /* B4F78 800A5FC8 3C188003 */  lui        $t8, %hi(D_8003153A)
    /* B4F7C 800A5FCC 000C6880 */  sll        $t5, $t4, 2
    /* B4F80 800A5FD0 01AC6823 */  subu       $t5, $t5, $t4
    /* B4F84 800A5FD4 000D68C0 */  sll        $t5, $t5, 3
    /* B4F88 800A5FD8 01AE7821 */  addu       $t7, $t5, $t6
    /* B4F8C 800A5FDC 030FC021 */  addu       $t8, $t8, $t7
    /* B4F90 800A5FE0 9318153A */  lbu        $t8, %lo(D_8003153A)($t8)
    /* B4F94 800A5FE4 2B010004 */  slti       $at, $t8, 0x4
    /* B4F98 800A5FE8 54200004 */  bnel       $at, $zero, .L800A5FFC_B4FAC
    /* B4F9C 800A5FEC 2410FFFF */   addiu     $s0, $zero, -0x1
    /* B4FA0 800A5FF0 10000002 */  b          .L800A5FFC_B4FAC
    /* B4FA4 800A5FF4 26100001 */   addiu     $s0, $s0, 0x1
    /* B4FA8 800A5FF8 2410FFFF */  addiu      $s0, $zero, -0x1
  .L800A5FFC_B4FAC:
    /* B4FAC 800A5FFC 26040001 */  addiu      $a0, $s0, 0x1
    /* B4FB0 800A6000 309900FF */  andi       $t9, $a0, 0xFF
    /* B4FB4 800A6004 0C0297AA */  jal        func_800A5EA8_B4E58
    /* B4FB8 800A6008 03202025 */   or        $a0, $t9, $zero
  .L800A600C_B4FBC:
    /* B4FBC 800A600C 8FBF001C */  lw         $ra, 0x1C($sp)
    /* B4FC0 800A6010 8FB00018 */  lw         $s0, 0x18($sp)
    /* B4FC4 800A6014 27BD0028 */  addiu      $sp, $sp, 0x28
    /* B4FC8 800A6018 03E00008 */  jr         $ra
    /* B4FCC 800A601C 00000000 */   nop
endlabel func_800A5F24_B4ED4
