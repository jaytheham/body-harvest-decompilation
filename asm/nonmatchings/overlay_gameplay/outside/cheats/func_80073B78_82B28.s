nonmatching func_80073B78_82B28, 0x248

glabel func_80073B78_82B28
    /* 82B28 80073B78 3C028004 */  lui        $v0, %hi(currentControllerStates)
    /* 82B2C 80073B7C 94427588 */  lhu        $v0, %lo(currentControllerStates)($v0)
    /* 82B30 80073B80 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 82B34 80073B84 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 82B38 80073B88 AFB10018 */  sw         $s1, 0x18($sp)
    /* 82B3C 80073B8C 10400006 */  beqz       $v0, .L80073BA8_82B58
    /* 82B40 80073B90 AFB00014 */   sw        $s0, 0x14($sp)
    /* 82B44 80073B94 3C108015 */  lui        $s0, %hi(D_8014945C)
    /* 82B48 80073B98 2610945C */  addiu      $s0, $s0, %lo(D_8014945C)
    /* 82B4C 80073B9C 8E0E0000 */  lw         $t6, 0x0($s0)
    /* 82B50 80073BA0 24110001 */  addiu      $s1, $zero, 0x1
    /* 82B54 80073BA4 122E0081 */  beq        $s1, $t6, .L80073DAC_82D5C
  .L80073BA8_82B58:
    /* 82B58 80073BA8 3C108015 */   lui       $s0, %hi(D_8014945C)
    /* 82B5C 80073BAC 2610945C */  addiu      $s0, $s0, %lo(D_8014945C)
    /* 82B60 80073BB0 1040004E */  beqz       $v0, .L80073CEC_82C9C
    /* 82B64 80073BB4 24110001 */   addiu     $s1, $zero, 0x1
    /* 82B68 80073BB8 8E0F0000 */  lw         $t7, 0x0($s0)
    /* 82B6C 80073BBC 28410201 */  slti       $at, $v0, 0x201
    /* 82B70 80073BC0 55E0004B */  bnel       $t7, $zero, .L80073CF0_82CA0
    /* 82B74 80073BC4 AE000000 */   sw        $zero, 0x0($s0)
    /* 82B78 80073BC8 1420000E */  bnez       $at, .L80073C04_82BB4
    /* 82B7C 80073BCC 00402825 */   or        $a1, $v0, $zero
    /* 82B80 80073BD0 24010400 */  addiu      $at, $zero, 0x400
    /* 82B84 80073BD4 10410039 */  beq        $v0, $at, .L80073CBC_82C6C
    /* 82B88 80073BD8 24010800 */   addiu     $at, $zero, 0x800
    /* 82B8C 80073BDC 10410033 */  beq        $v0, $at, .L80073CAC_82C5C
    /* 82B90 80073BE0 24012000 */   addiu     $at, $zero, 0x2000
    /* 82B94 80073BE4 1041002D */  beq        $v0, $at, .L80073C9C_82C4C
    /* 82B98 80073BE8 24014000 */   addiu     $at, $zero, 0x4000
    /* 82B9C 80073BEC 10410017 */  beq        $v0, $at, .L80073C4C_82BFC
    /* 82BA0 80073BF0 34018000 */   ori       $at, $zero, 0x8000
    /* 82BA4 80073BF4 10410011 */  beq        $v0, $at, .L80073C3C_82BEC
    /* 82BA8 80073BF8 00000000 */   nop
    /* 82BAC 80073BFC 10000039 */  b          .L80073CE4_82C94
    /* 82BB0 80073C00 00000000 */   nop
  .L80073C04_82BB4:
    /* 82BB4 80073C04 10B10021 */  beq        $a1, $s1, .L80073C8C_82C3C
    /* 82BB8 80073C08 24010002 */   addiu     $at, $zero, 0x2
    /* 82BBC 80073C0C 10A10013 */  beq        $a1, $at, .L80073C5C_82C0C
    /* 82BC0 80073C10 24010004 */   addiu     $at, $zero, 0x4
    /* 82BC4 80073C14 10A10015 */  beq        $a1, $at, .L80073C6C_82C1C
    /* 82BC8 80073C18 24010008 */   addiu     $at, $zero, 0x8
    /* 82BCC 80073C1C 10A10017 */  beq        $a1, $at, .L80073C7C_82C2C
    /* 82BD0 80073C20 24010100 */   addiu     $at, $zero, 0x100
    /* 82BD4 80073C24 10A1002D */  beq        $a1, $at, .L80073CDC_82C8C
    /* 82BD8 80073C28 24010200 */   addiu     $at, $zero, 0x200
    /* 82BDC 80073C2C 10A10027 */  beq        $a1, $at, .L80073CCC_82C7C
    /* 82BE0 80073C30 00000000 */   nop
    /* 82BE4 80073C34 1000002B */  b          .L80073CE4_82C94
    /* 82BE8 80073C38 00000000 */   nop
  .L80073C3C_82BEC:
    /* 82BEC 80073C3C 0C01CE88 */  jal        func_80073A20_829D0
    /* 82BF0 80073C40 24040061 */   addiu     $a0, $zero, 0x61
    /* 82BF4 80073C44 10000027 */  b          .L80073CE4_82C94
    /* 82BF8 80073C48 00000000 */   nop
  .L80073C4C_82BFC:
    /* 82BFC 80073C4C 0C01CE88 */  jal        func_80073A20_829D0
    /* 82C00 80073C50 24040062 */   addiu     $a0, $zero, 0x62
    /* 82C04 80073C54 10000023 */  b          .L80073CE4_82C94
    /* 82C08 80073C58 00000000 */   nop
  .L80073C5C_82C0C:
    /* 82C0C 80073C5C 0C01CE88 */  jal        func_80073A20_829D0
    /* 82C10 80073C60 24040077 */   addiu     $a0, $zero, 0x77
    /* 82C14 80073C64 1000001F */  b          .L80073CE4_82C94
    /* 82C18 80073C68 00000000 */   nop
  .L80073C6C_82C1C:
    /* 82C1C 80073C6C 0C01CE88 */  jal        func_80073A20_829D0
    /* 82C20 80073C70 24040073 */   addiu     $a0, $zero, 0x73
    /* 82C24 80073C74 1000001B */  b          .L80073CE4_82C94
    /* 82C28 80073C78 00000000 */   nop
  .L80073C7C_82C2C:
    /* 82C2C 80073C7C 0C01CE88 */  jal        func_80073A20_829D0
    /* 82C30 80073C80 2404006E */   addiu     $a0, $zero, 0x6E
    /* 82C34 80073C84 10000017 */  b          .L80073CE4_82C94
    /* 82C38 80073C88 00000000 */   nop
  .L80073C8C_82C3C:
    /* 82C3C 80073C8C 0C01CE88 */  jal        func_80073A20_829D0
    /* 82C40 80073C90 24040065 */   addiu     $a0, $zero, 0x65
    /* 82C44 80073C94 10000013 */  b          .L80073CE4_82C94
    /* 82C48 80073C98 00000000 */   nop
  .L80073C9C_82C4C:
    /* 82C4C 80073C9C 0C01CE88 */  jal        func_80073A20_829D0
    /* 82C50 80073CA0 24040066 */   addiu     $a0, $zero, 0x66
    /* 82C54 80073CA4 1000000F */  b          .L80073CE4_82C94
    /* 82C58 80073CA8 00000000 */   nop
  .L80073CAC_82C5C:
    /* 82C5C 80073CAC 0C01CE88 */  jal        func_80073A20_829D0
    /* 82C60 80073CB0 24040075 */   addiu     $a0, $zero, 0x75
    /* 82C64 80073CB4 1000000B */  b          .L80073CE4_82C94
    /* 82C68 80073CB8 00000000 */   nop
  .L80073CBC_82C6C:
    /* 82C6C 80073CBC 0C01CE88 */  jal        func_80073A20_829D0
    /* 82C70 80073CC0 24040064 */   addiu     $a0, $zero, 0x64
    /* 82C74 80073CC4 10000007 */  b          .L80073CE4_82C94
    /* 82C78 80073CC8 00000000 */   nop
  .L80073CCC_82C7C:
    /* 82C7C 80073CCC 0C01CE88 */  jal        func_80073A20_829D0
    /* 82C80 80073CD0 2404006C */   addiu     $a0, $zero, 0x6C
    /* 82C84 80073CD4 10000003 */  b          .L80073CE4_82C94
    /* 82C88 80073CD8 00000000 */   nop
  .L80073CDC_82C8C:
    /* 82C8C 80073CDC 0C01CE88 */  jal        func_80073A20_829D0
    /* 82C90 80073CE0 24040072 */   addiu     $a0, $zero, 0x72
  .L80073CE4_82C94:
    /* 82C94 80073CE4 10000002 */  b          .L80073CF0_82CA0
    /* 82C98 80073CE8 AE110000 */   sw        $s1, 0x0($s0)
  .L80073CEC_82C9C:
    /* 82C9C 80073CEC AE000000 */  sw         $zero, 0x0($s0)
  .L80073CF0_82CA0:
    /* 82CA0 80073CF0 3C118014 */  lui        $s1, %hi(D_8013BA80)
    /* 82CA4 80073CF4 2631BA80 */  addiu      $s1, $s1, %lo(D_8013BA80)
    /* 82CA8 80073CF8 24100014 */  addiu      $s0, $zero, 0x14
  .L80073CFC_82CAC:
    /* 82CAC 80073CFC 92380004 */  lbu        $t8, 0x4($s1)
    /* 82CB0 80073D00 24060004 */  addiu      $a2, $zero, 0x4
    /* 82CB4 80073D04 0010C900 */  sll        $t9, $s0, 4
    /* 82CB8 80073D08 1300000A */  beqz       $t8, .L80073D34_82CE4
    /* 82CBC 80073D0C 2401FFFF */   addiu     $at, $zero, -0x1
    /* 82CC0 80073D10 3C088014 */  lui        $t0, %hi(D_8013B940)
    /* 82CC4 80073D14 2508B940 */  addiu      $t0, $t0, %lo(D_8013B940)
    /* 82CC8 80073D18 03281821 */  addu       $v1, $t9, $t0
    /* 82CCC 80073D1C 24C20001 */  addiu      $v0, $a2, 0x1
  .L80073D20_82CD0:
    /* 82CD0 80073D20 00624821 */  addu       $t1, $v1, $v0
    /* 82CD4 80073D24 912A0000 */  lbu        $t2, 0x0($t1)
    /* 82CD8 80073D28 00403025 */  or         $a2, $v0, $zero
    /* 82CDC 80073D2C 5540FFFC */  bnel       $t2, $zero, .L80073D20_82CD0
    /* 82CE0 80073D30 24C20001 */   addiu     $v0, $a2, 0x1
  .L80073D34_82CE4:
    /* 82CE4 80073D34 10C00013 */  beqz       $a2, .L80073D84_82D34
    /* 82CE8 80073D38 24C4FFFF */   addiu     $a0, $a2, -0x1
    /* 82CEC 80073D3C 00105900 */  sll        $t3, $s0, 4
    /* 82CF0 80073D40 01666021 */  addu       $t4, $t3, $a2
    /* 82CF4 80073D44 00046823 */  negu       $t5, $a0
    /* 82CF8 80073D48 3C0F8014 */  lui        $t7, %hi(D_8013B940)
    /* 82CFC 80073D4C 3C188015 */  lui        $t8, %hi(cheatInputBuffer)
    /* 82D00 80073D50 27189450 */  addiu      $t8, $t8, %lo(cheatInputBuffer)
    /* 82D04 80073D54 25EFB940 */  addiu      $t7, $t7, %lo(D_8013B940)
    /* 82D08 80073D58 018D7021 */  addu       $t6, $t4, $t5
    /* 82D0C 80073D5C 01CF1021 */  addu       $v0, $t6, $t7
    /* 82D10 80073D60 00981821 */  addu       $v1, $a0, $t8
  .L80073D64_82D14:
    /* 82D14 80073D64 9059FFFF */  lbu        $t9, -0x1($v0)
    /* 82D18 80073D68 90680000 */  lbu        $t0, 0x0($v1)
    /* 82D1C 80073D6C 00802825 */  or         $a1, $a0, $zero
    /* 82D20 80073D70 24420001 */  addiu      $v0, $v0, 0x1
    /* 82D24 80073D74 17280003 */  bne        $t9, $t0, .L80073D84_82D34
    /* 82D28 80073D78 2463FFFF */   addiu     $v1, $v1, -0x1
    /* 82D2C 80073D7C 1480FFF9 */  bnez       $a0, .L80073D64_82D14
    /* 82D30 80073D80 2484FFFF */   addiu     $a0, $a0, -0x1
  .L80073D84_82D34:
    /* 82D34 80073D84 54810006 */  bnel       $a0, $at, .L80073DA0_82D50
    /* 82D38 80073D88 02002825 */   or        $a1, $s0, $zero
    /* 82D3C 80073D8C 0C01CECC */  jal        func_80073B30_82AE0
    /* 82D40 80073D90 02002025 */   or        $a0, $s0, $zero
    /* 82D44 80073D94 0C01CE9D */  jal        func_80073A74_82A24
    /* 82D48 80073D98 00000000 */   nop
    /* 82D4C 80073D9C 02002825 */  or         $a1, $s0, $zero
  .L80073DA0_82D50:
    /* 82D50 80073DA0 2631FFF0 */  addiu      $s1, $s1, -0x10
    /* 82D54 80073DA4 1600FFD5 */  bnez       $s0, .L80073CFC_82CAC
    /* 82D58 80073DA8 2610FFFF */   addiu     $s0, $s0, -0x1
  .L80073DAC_82D5C:
    /* 82D5C 80073DAC 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 82D60 80073DB0 8FB00014 */  lw         $s0, 0x14($sp)
    /* 82D64 80073DB4 8FB10018 */  lw         $s1, 0x18($sp)
    /* 82D68 80073DB8 03E00008 */  jr         $ra
    /* 82D6C 80073DBC 27BD0020 */   addiu     $sp, $sp, 0x20
endlabel func_80073B78_82B28
