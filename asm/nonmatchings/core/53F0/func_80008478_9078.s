nonmatching func_80008478_9078, 0xA4

glabel func_80008478_9078
    /* 9078 80008478 3C0E8004 */  lui        $t6, %hi(currentLevel)
    /* 907C 8000847C 8DCE7F90 */  lw         $t6, %lo(currentLevel)($t6)
    /* 9080 80008480 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 9084 80008484 24010001 */  addiu      $at, $zero, 0x1
    /* 9088 80008488 15C1000C */  bne        $t6, $at, .L800084BC_90BC
    /* 908C 8000848C AFBF0014 */   sw        $ra, 0x14($sp)
    /* 9090 80008490 24040000 */  addiu      $a0, $zero, 0x0
    /* 9094 80008494 0C001C9B */  jal        func_8000726C_7E6C
    /* 9098 80008498 2405000B */   addiu     $a1, $zero, 0xB
    /* 909C 8000849C 10400007 */  beqz       $v0, .L800084BC_90BC
    /* 90A0 800084A0 3C0F8005 */   lui       $t7, %hi(D_80052554)
    /* 90A4 800084A4 85EF2554 */  lh         $t7, %lo(D_80052554)($t7)
    /* 90A8 800084A8 29E10401 */  slti       $at, $t7, 0x401
    /* 90AC 800084AC 14200003 */  bnez       $at, .L800084BC_90BC
    /* 90B0 800084B0 00000000 */   nop
    /* 90B4 800084B4 10000015 */  b          .L8000850C_910C
    /* 90B8 800084B8 24020001 */   addiu     $v0, $zero, 0x1
  .L800084BC_90BC:
    /* 90BC 800084BC 3C048003 */  lui        $a0, %hi(D_80037000)
    /* 90C0 800084C0 0C00731B */  jal        osSyncPrintf
    /* 90C4 800084C4 24847000 */   addiu     $a0, $a0, %lo(D_80037000)
    /* 90C8 800084C8 3C188004 */  lui        $t8, %hi(currentLevel)
    /* 90CC 800084CC 8F187F90 */  lw         $t8, %lo(currentLevel)($t8)
    /* 90D0 800084D0 24010003 */  addiu      $at, $zero, 0x3
    /* 90D4 800084D4 24040000 */  addiu      $a0, $zero, 0x0
    /* 90D8 800084D8 5701000C */  bnel       $t8, $at, .L8000850C_910C
    /* 90DC 800084DC 00001025 */   or        $v0, $zero, $zero
    /* 90E0 800084E0 0C001C9B */  jal        func_8000726C_7E6C
    /* 90E4 800084E4 24050031 */   addiu     $a1, $zero, 0x31
    /* 90E8 800084E8 10400007 */  beqz       $v0, .L80008508_9108
    /* 90EC 800084EC 24040000 */   addiu     $a0, $zero, 0x0
    /* 90F0 800084F0 0C001C9B */  jal        func_8000726C_7E6C
    /* 90F4 800084F4 24050026 */   addiu     $a1, $zero, 0x26
    /* 90F8 800084F8 54400004 */  bnel       $v0, $zero, .L8000850C_910C
    /* 90FC 800084FC 00001025 */   or        $v0, $zero, $zero
    /* 9100 80008500 10000002 */  b          .L8000850C_910C
    /* 9104 80008504 24020001 */   addiu     $v0, $zero, 0x1
  .L80008508_9108:
    /* 9108 80008508 00001025 */  or         $v0, $zero, $zero
  .L8000850C_910C:
    /* 910C 8000850C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 9110 80008510 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 9114 80008514 03E00008 */  jr         $ra
    /* 9118 80008518 00000000 */   nop
endlabel func_80008478_9078
