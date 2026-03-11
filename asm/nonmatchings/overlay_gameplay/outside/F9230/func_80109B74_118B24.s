nonmatching func_80109B74_118B24, 0x110

glabel func_80109B74_118B24
    /* 118B24 80109B74 3C0E8005 */  lui        $t6, %hi(gameplayMode)
    /* 118B28 80109B78 8DCE2ADC */  lw         $t6, %lo(gameplayMode)($t6)
    /* 118B2C 80109B7C 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 118B30 80109B80 AFB00028 */  sw         $s0, 0x28($sp)
    /* 118B34 80109B84 2401000B */  addiu      $at, $zero, 0xB
    /* 118B38 80109B88 00808025 */  or         $s0, $a0, $zero
    /* 118B3C 80109B8C 11C10038 */  beq        $t6, $at, .L80109C70_118C20
    /* 118B40 80109B90 AFBF002C */   sw        $ra, 0x2C($sp)
    /* 118B44 80109B94 3C0F8016 */  lui        $t7, %hi(D_8015922C)
    /* 118B48 80109B98 8DEF922C */  lw         $t7, %lo(D_8015922C)($t7)
    /* 118B4C 80109B9C 240101F5 */  addiu      $at, $zero, 0x1F5
    /* 118B50 80109BA0 85F80008 */  lh         $t8, 0x8($t7)
    /* 118B54 80109BA4 57010033 */  bnel       $t8, $at, .L80109C74_118C24
    /* 118B58 80109BA8 8FBF002C */   lw        $ra, 0x2C($sp)
    /* 118B5C 80109BAC 94990020 */  lhu        $t9, 0x20($a0)
    /* 118B60 80109BB0 3C098005 */  lui        $t1, %hi(D_80052A8C)
    /* 118B64 80109BB4 33280002 */  andi       $t0, $t9, 0x2
    /* 118B68 80109BB8 5500002E */  bnel       $t0, $zero, .L80109C74_118C24
    /* 118B6C 80109BBC 8FBF002C */   lw        $ra, 0x2C($sp)
    /* 118B70 80109BC0 8D292A8C */  lw         $t1, %lo(D_80052A8C)($t1)
    /* 118B74 80109BC4 312A0003 */  andi       $t2, $t1, 0x3
    /* 118B78 80109BC8 1540000F */  bnez       $t2, .L80109C08_118BB8
    /* 118B7C 80109BCC 00000000 */   nop
    /* 118B80 80109BD0 908B001A */  lbu        $t3, 0x1A($a0)
    /* 118B84 80109BD4 24070010 */  addiu      $a3, $zero, 0x10
    /* 118B88 80109BD8 240C0002 */  addiu      $t4, $zero, 0x2
    /* 118B8C 80109BDC 1560000A */  bnez       $t3, .L80109C08_118BB8
    /* 118B90 80109BE0 240D00FF */   addiu     $t5, $zero, 0xFF
    /* 118B94 80109BE4 84840000 */  lh         $a0, 0x0($a0)
    /* 118B98 80109BE8 86050002 */  lh         $a1, 0x2($s0)
    /* 118B9C 80109BEC 86060004 */  lh         $a2, 0x4($s0)
    /* 118BA0 80109BF0 240E00EE */  addiu      $t6, $zero, 0xEE
    /* 118BA4 80109BF4 AFAE0018 */  sw         $t6, 0x18($sp)
    /* 118BA8 80109BF8 AFA0001C */  sw         $zero, 0x1C($sp)
    /* 118BAC 80109BFC AFAD0014 */  sw         $t5, 0x14($sp)
    /* 118BB0 80109C00 0C030EF6 */  jal        func_800C3BD8_D2B88
    /* 118BB4 80109C04 AFAC0010 */   sw        $t4, 0x10($sp)
  .L80109C08_118BB8:
    /* 118BB8 80109C08 3C038004 */  lui        $v1, %hi(currentLevel)
    /* 118BBC 80109C0C 8C637F90 */  lw         $v1, %lo(currentLevel)($v1)
    /* 118BC0 80109C10 24040002 */  addiu      $a0, $zero, 0x2
    /* 118BC4 80109C14 5483000D */  bnel       $a0, $v1, .L80109C4C_118BFC
    /* 118BC8 80109C18 24010005 */   addiu     $at, $zero, 0x5
    /* 118BCC 80109C1C 9202001A */  lbu        $v0, 0x1A($s0)
    /* 118BD0 80109C20 24010010 */  addiu      $at, $zero, 0x10
    /* 118BD4 80109C24 24050004 */  addiu      $a1, $zero, 0x4
    /* 118BD8 80109C28 10410003 */  beq        $v0, $at, .L80109C38_118BE8
    /* 118BDC 80109C2C 00000000 */   nop
    /* 118BE0 80109C30 54820006 */  bnel       $a0, $v0, .L80109C4C_118BFC
    /* 118BE4 80109C34 24010005 */   addiu     $at, $zero, 0x5
  .L80109C38_118BE8:
    /* 118BE8 80109C38 0C048FA4 */  jal        func_80123E90_132E40
    /* 118BEC 80109C3C 02002025 */   or        $a0, $s0, $zero
    /* 118BF0 80109C40 1000000C */  b          .L80109C74_118C24
    /* 118BF4 80109C44 8FBF002C */   lw        $ra, 0x2C($sp)
    /* 118BF8 80109C48 24010005 */  addiu      $at, $zero, 0x5
  .L80109C4C_118BFC:
    /* 118BFC 80109C4C 14610006 */  bne        $v1, $at, .L80109C68_118C18
    /* 118C00 80109C50 02002025 */   or        $a0, $s0, $zero
    /* 118C04 80109C54 02002025 */  or         $a0, $s0, $zero
    /* 118C08 80109C58 0C048FA4 */  jal        func_80123E90_132E40
    /* 118C0C 80109C5C 24050018 */   addiu     $a1, $zero, 0x18
    /* 118C10 80109C60 10000004 */  b          .L80109C74_118C24
    /* 118C14 80109C64 8FBF002C */   lw        $ra, 0x2C($sp)
  .L80109C68_118C18:
    /* 118C18 80109C68 0C048FA4 */  jal        func_80123E90_132E40
    /* 118C1C 80109C6C 24050008 */   addiu     $a1, $zero, 0x8
  .L80109C70_118C20:
    /* 118C20 80109C70 8FBF002C */  lw         $ra, 0x2C($sp)
  .L80109C74_118C24:
    /* 118C24 80109C74 8FB00028 */  lw         $s0, 0x28($sp)
    /* 118C28 80109C78 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 118C2C 80109C7C 03E00008 */  jr         $ra
    /* 118C30 80109C80 00000000 */   nop
endlabel func_80109B74_118B24
