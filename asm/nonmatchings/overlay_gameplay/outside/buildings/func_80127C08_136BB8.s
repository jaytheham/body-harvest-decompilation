nonmatching func_80127C08_136BB8, 0x180

glabel func_80127C08_136BB8
    /* 136BB8 80127C08 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 136BBC 80127C0C 87AE0052 */  lh         $t6, 0x52($sp)
    /* 136BC0 80127C10 87AF0056 */  lh         $t7, 0x56($sp)
    /* 136BC4 80127C14 87B8005A */  lh         $t8, 0x5A($sp)
    /* 136BC8 80127C18 8FB9005C */  lw         $t9, 0x5C($sp)
    /* 136BCC 80127C1C AFBF0024 */  sw         $ra, 0x24($sp)
    /* 136BD0 80127C20 AFA40040 */  sw         $a0, 0x40($sp)
    /* 136BD4 80127C24 AFA50044 */  sw         $a1, 0x44($sp)
    /* 136BD8 80127C28 AFA60048 */  sw         $a2, 0x48($sp)
    /* 136BDC 80127C2C AFA7004C */  sw         $a3, 0x4C($sp)
    /* 136BE0 80127C30 AFAE003C */  sw         $t6, 0x3C($sp)
    /* 136BE4 80127C34 AFAF0038 */  sw         $t7, 0x38($sp)
    /* 136BE8 80127C38 AFB80034 */  sw         $t8, 0x34($sp)
    /* 136BEC 80127C3C AF200000 */  sw         $zero, 0x0($t9)
    /* 136BF0 80127C40 27A80038 */  addiu      $t0, $sp, 0x38
    /* 136BF4 80127C44 27A90034 */  addiu      $t1, $sp, 0x34
    /* 136BF8 80127C48 240A0005 */  addiu      $t2, $zero, 0x5
    /* 136BFC 80127C4C AFAA001C */  sw         $t2, 0x1C($sp)
    /* 136C00 80127C50 AFA90014 */  sw         $t1, 0x14($sp)
    /* 136C04 80127C54 AFA80010 */  sw         $t0, 0x10($sp)
    /* 136C08 80127C58 AFA00018 */  sw         $zero, 0x18($sp)
    /* 136C0C 80127C5C 87A6004E */  lh         $a2, 0x4E($sp)
    /* 136C10 80127C60 87A5004A */  lh         $a1, 0x4A($sp)
    /* 136C14 80127C64 87A40046 */  lh         $a0, 0x46($sp)
    /* 136C18 80127C68 0C04989A */  jal        func_80126268_135218
    /* 136C1C 80127C6C 27A7003C */   addiu     $a3, $sp, 0x3C
    /* 136C20 80127C70 10400003 */  beqz       $v0, .L80127C80_136C30
    /* 136C24 80127C74 87AB0052 */   lh        $t3, 0x52($sp)
    /* 136C28 80127C78 10000040 */  b          .L80127D7C_136D2C
    /* 136C2C 80127C7C 8FBF0024 */   lw        $ra, 0x24($sp)
  .L80127C80_136C30:
    /* 136C30 80127C80 87AC0056 */  lh         $t4, 0x56($sp)
    /* 136C34 80127C84 87AD005A */  lh         $t5, 0x5A($sp)
    /* 136C38 80127C88 27AE0038 */  addiu      $t6, $sp, 0x38
    /* 136C3C 80127C8C 27AF0034 */  addiu      $t7, $sp, 0x34
    /* 136C40 80127C90 27B8002F */  addiu      $t8, $sp, 0x2F
    /* 136C44 80127C94 AFAB003C */  sw         $t3, 0x3C($sp)
    /* 136C48 80127C98 AFB80018 */  sw         $t8, 0x18($sp)
    /* 136C4C 80127C9C AFAF0014 */  sw         $t7, 0x14($sp)
    /* 136C50 80127CA0 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 136C54 80127CA4 87A40046 */  lh         $a0, 0x46($sp)
    /* 136C58 80127CA8 87A5004A */  lh         $a1, 0x4A($sp)
    /* 136C5C 80127CAC 87A6004E */  lh         $a2, 0x4E($sp)
    /* 136C60 80127CB0 27A7003C */  addiu      $a3, $sp, 0x3C
    /* 136C64 80127CB4 AFAC0038 */  sw         $t4, 0x38($sp)
    /* 136C68 80127CB8 0C02C40A */  jal        func_800B1028_BFFD8
    /* 136C6C 80127CBC AFAD0034 */   sw        $t5, 0x34($sp)
    /* 136C70 80127CC0 10400003 */  beqz       $v0, .L80127CD0_136C80
    /* 136C74 80127CC4 3C038016 */   lui       $v1, %hi(D_8015F9D0)
    /* 136C78 80127CC8 1000002B */  b          .L80127D78_136D28
    /* 136C7C 80127CCC 24020008 */   addiu     $v0, $zero, 0x8
  .L80127CD0_136C80:
    /* 136C80 80127CD0 87B90052 */  lh         $t9, 0x52($sp)
    /* 136C84 80127CD4 87A80056 */  lh         $t0, 0x56($sp)
    /* 136C88 80127CD8 87A9005A */  lh         $t1, 0x5A($sp)
    /* 136C8C 80127CDC 2463F9D0 */  addiu      $v1, $v1, %lo(D_8015F9D0)
    /* 136C90 80127CE0 27AA003C */  addiu      $t2, $sp, 0x3C
    /* 136C94 80127CE4 27AB0038 */  addiu      $t3, $sp, 0x38
    /* 136C98 80127CE8 27AC0034 */  addiu      $t4, $sp, 0x34
    /* 136C9C 80127CEC AC600008 */  sw         $zero, 0x8($v1)
    /* 136CA0 80127CF0 AFAC0018 */  sw         $t4, 0x18($sp)
    /* 136CA4 80127CF4 AFAB0014 */  sw         $t3, 0x14($sp)
    /* 136CA8 80127CF8 AFAA0010 */  sw         $t2, 0x10($sp)
    /* 136CAC 80127CFC 8FA40040 */  lw         $a0, 0x40($sp)
    /* 136CB0 80127D00 87A50046 */  lh         $a1, 0x46($sp)
    /* 136CB4 80127D04 87A6004A */  lh         $a2, 0x4A($sp)
    /* 136CB8 80127D08 87A7004E */  lh         $a3, 0x4E($sp)
    /* 136CBC 80127D0C AFB9003C */  sw         $t9, 0x3C($sp)
    /* 136CC0 80127D10 AFA80038 */  sw         $t0, 0x38($sp)
    /* 136CC4 80127D14 0C049AE0 */  jal        func_80126B80_135B30
    /* 136CC8 80127D18 AFA90034 */   sw        $t1, 0x34($sp)
    /* 136CCC 80127D1C 3C038016 */  lui        $v1, %hi(D_8015F9D0)
    /* 136CD0 80127D20 2463F9D0 */  addiu      $v1, $v1, %lo(D_8015F9D0)
    /* 136CD4 80127D24 8C620008 */  lw         $v0, 0x8($v1)
    /* 136CD8 80127D28 24010005 */  addiu      $at, $zero, 0x5
    /* 136CDC 80127D2C 8FAE005C */  lw         $t6, 0x5C($sp)
    /* 136CE0 80127D30 10410008 */  beq        $v0, $at, .L80127D54_136D04
    /* 136CE4 80127D34 24010007 */   addiu     $at, $zero, 0x7
    /* 136CE8 80127D38 1041000A */  beq        $v0, $at, .L80127D64_136D14
    /* 136CEC 80127D3C 8FB8005C */   lw        $t8, 0x5C($sp)
    /* 136CF0 80127D40 24010008 */  addiu      $at, $zero, 0x8
    /* 136CF4 80127D44 50410008 */  beql       $v0, $at, .L80127D68_136D18
    /* 136CF8 80127D48 8C6F000C */   lw        $t7, 0xC($v1)
    /* 136CFC 80127D4C 1000000A */  b          .L80127D78_136D28
    /* 136D00 80127D50 00001025 */   or        $v0, $zero, $zero
  .L80127D54_136D04:
    /* 136D04 80127D54 8C6D000C */  lw         $t5, 0xC($v1)
    /* 136D08 80127D58 24020006 */  addiu      $v0, $zero, 0x6
    /* 136D0C 80127D5C 10000006 */  b          .L80127D78_136D28
    /* 136D10 80127D60 ADCD0000 */   sw        $t5, 0x0($t6)
  .L80127D64_136D14:
    /* 136D14 80127D64 8C6F000C */  lw         $t7, 0xC($v1)
  .L80127D68_136D18:
    /* 136D18 80127D68 24020007 */  addiu      $v0, $zero, 0x7
    /* 136D1C 80127D6C 10000002 */  b          .L80127D78_136D28
    /* 136D20 80127D70 AF0F0000 */   sw        $t7, 0x0($t8)
    /* 136D24 80127D74 00001025 */  or         $v0, $zero, $zero
  .L80127D78_136D28:
    /* 136D28 80127D78 8FBF0024 */  lw         $ra, 0x24($sp)
  .L80127D7C_136D2C:
    /* 136D2C 80127D7C 27BD0040 */  addiu      $sp, $sp, 0x40
    /* 136D30 80127D80 03E00008 */  jr         $ra
    /* 136D34 80127D84 00000000 */   nop
endlabel func_80127C08_136BB8
