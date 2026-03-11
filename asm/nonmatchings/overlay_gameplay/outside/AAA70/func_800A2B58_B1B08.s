nonmatching func_800A2B58_B1B08, 0x240

glabel func_800A2B58_B1B08
    /* B1B08 800A2B58 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* B1B0C 800A2B5C AFBF0014 */  sw         $ra, 0x14($sp)
    /* B1B10 800A2B60 3C1F8015 */  lui        $ra, %hi(D_8014F618)
    /* B1B14 800A2B64 27FFF618 */  addiu      $ra, $ra, %lo(D_8014F618)
    /* B1B18 800A2B68 93EE0066 */  lbu        $t6, 0x66($ra)
    /* B1B1C 800A2B6C 24010001 */  addiu      $at, $zero, 0x1
    /* B1B20 800A2B70 55C10086 */  bnel       $t6, $at, .L800A2D8C_B1D3C
    /* B1B24 800A2B74 8FBF0014 */   lw        $ra, 0x14($sp)
    /* B1B28 800A2B78 0C028AA2 */  jal        func_800A2A88_B1A38
    /* B1B2C 800A2B7C 00000000 */   nop
    /* B1B30 800A2B80 3C1F8015 */  lui        $ra, %hi(D_8014F618)
    /* B1B34 800A2B84 10400080 */  beqz       $v0, .L800A2D88_B1D38
    /* B1B38 800A2B88 27FFF618 */   addiu     $ra, $ra, %lo(D_8014F618)
    /* B1B3C 800A2B8C 3C038006 */  lui        $v1, %hi(D_8005BB2C)
    /* B1B40 800A2B90 2463BB2C */  addiu      $v1, $v1, %lo(D_8005BB2C)
    /* B1B44 800A2B94 8C620000 */  lw         $v0, 0x0($v1)
    /* B1B48 800A2B98 3C198003 */  lui        $t9, %hi(D_80031160)
    /* B1B4C 800A2B9C 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* B1B50 800A2BA0 244F0008 */  addiu      $t7, $v0, 0x8
    /* B1B54 800A2BA4 AC6F0000 */  sw         $t7, 0x0($v1)
    /* B1B58 800A2BA8 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* B1B5C 800A2BAC 27391160 */  addiu      $t9, $t9, %lo(D_80031160)
    /* B1B60 800A2BB0 3C180102 */  lui        $t8, (0x1020040 >> 16)
    /* B1B64 800A2BB4 37180040 */  ori        $t8, $t8, (0x1020040 & 0xFFFF)
    /* B1B68 800A2BB8 03217024 */  and        $t6, $t9, $at
    /* B1B6C 800A2BBC AC4E0004 */  sw         $t6, 0x4($v0)
    /* B1B70 800A2BC0 AC580000 */  sw         $t8, 0x0($v0)
    /* B1B74 800A2BC4 8C620000 */  lw         $v0, 0x0($v1)
    /* B1B78 800A2BC8 3C18E700 */  lui        $t8, (0xE7000000 >> 16)
    /* B1B7C 800A2BCC 3C0EB600 */  lui        $t6, (0xB6000000 >> 16)
    /* B1B80 800A2BD0 244F0008 */  addiu      $t7, $v0, 0x8
    /* B1B84 800A2BD4 AC6F0000 */  sw         $t7, 0x0($v1)
    /* B1B88 800A2BD8 AC400004 */  sw         $zero, 0x4($v0)
    /* B1B8C 800A2BDC AC580000 */  sw         $t8, 0x0($v0)
    /* B1B90 800A2BE0 8C620000 */  lw         $v0, 0x0($v1)
    /* B1B94 800A2BE4 3C0F0003 */  lui        $t7, (0x32001 >> 16)
    /* B1B98 800A2BE8 35EF2001 */  ori        $t7, $t7, (0x32001 & 0xFFFF)
    /* B1B9C 800A2BEC 24590008 */  addiu      $t9, $v0, 0x8
    /* B1BA0 800A2BF0 AC790000 */  sw         $t9, 0x0($v1)
    /* B1BA4 800A2BF4 AC4F0004 */  sw         $t7, 0x4($v0)
    /* B1BA8 800A2BF8 AC4E0000 */  sw         $t6, 0x0($v0)
    /* B1BAC 800A2BFC 8C670000 */  lw         $a3, 0x0($v1)
    /* B1BB0 800A2C00 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
    /* B1BB4 800A2C04 3C0FB700 */  lui        $t7, (0xB7000000 >> 16)
    /* B1BB8 800A2C08 24F80008 */  addiu      $t8, $a3, 0x8
    /* B1BBC 800A2C0C AC780000 */  sw         $t8, 0x0($v1)
    /* B1BC0 800A2C10 ACE00004 */  sw         $zero, 0x4($a3)
    /* B1BC4 800A2C14 ACF90000 */  sw         $t9, 0x0($a3)
    /* B1BC8 800A2C18 8C680000 */  lw         $t0, 0x0($v1)
    /* B1BCC 800A2C1C 24180004 */  addiu      $t8, $zero, 0x4
    /* B1BD0 800A2C20 250E0008 */  addiu      $t6, $t0, 0x8
    /* B1BD4 800A2C24 AC6E0000 */  sw         $t6, 0x0($v1)
    /* B1BD8 800A2C28 AD180004 */  sw         $t8, 0x4($t0)
    /* B1BDC 800A2C2C AD0F0000 */  sw         $t7, 0x0($t0)
    /* B1BE0 800A2C30 8C690000 */  lw         $t1, 0x0($v1)
    /* B1BE4 800A2C34 3C0F8000 */  lui        $t7, (0x80008000 >> 16)
    /* B1BE8 800A2C38 3C0EBB00 */  lui        $t6, (0xBB000001 >> 16)
    /* B1BEC 800A2C3C 25390008 */  addiu      $t9, $t1, 0x8
    /* B1BF0 800A2C40 AC790000 */  sw         $t9, 0x0($v1)
    /* B1BF4 800A2C44 35CE0001 */  ori        $t6, $t6, (0xBB000001 & 0xFFFF)
    /* B1BF8 800A2C48 35EF8000 */  ori        $t7, $t7, (0x80008000 & 0xFFFF)
    /* B1BFC 800A2C4C AD2F0004 */  sw         $t7, 0x4($t1)
    /* B1C00 800A2C50 AD2E0000 */  sw         $t6, 0x0($t1)
    /* B1C04 800A2C54 8C6A0000 */  lw         $t2, 0x0($v1)
    /* B1C08 800A2C58 3C19BA00 */  lui        $t9, (0xBA000C02 >> 16)
    /* B1C0C 800A2C5C 37390C02 */  ori        $t9, $t9, (0xBA000C02 & 0xFFFF)
    /* B1C10 800A2C60 25580008 */  addiu      $t8, $t2, 0x8
    /* B1C14 800A2C64 AC780000 */  sw         $t8, 0x0($v1)
    /* B1C18 800A2C68 240E2000 */  addiu      $t6, $zero, 0x2000
    /* B1C1C 800A2C6C AD4E0004 */  sw         $t6, 0x4($t2)
    /* B1C20 800A2C70 AD590000 */  sw         $t9, 0x0($t2)
    /* B1C24 800A2C74 8C6B0000 */  lw         $t3, 0x0($v1)
    /* B1C28 800A2C78 3C18BA00 */  lui        $t8, (0xBA000602 >> 16)
    /* B1C2C 800A2C7C 37180602 */  ori        $t8, $t8, (0xBA000602 & 0xFFFF)
    /* B1C30 800A2C80 256F0008 */  addiu      $t7, $t3, 0x8
    /* B1C34 800A2C84 AC6F0000 */  sw         $t7, 0x0($v1)
    /* B1C38 800A2C88 AD600004 */  sw         $zero, 0x4($t3)
    /* B1C3C 800A2C8C AD780000 */  sw         $t8, 0x0($t3)
    /* B1C40 800A2C90 8C6C0000 */  lw         $t4, 0x0($v1)
    /* B1C44 800A2C94 3C0EBA00 */  lui        $t6, (0xBA001301 >> 16)
    /* B1C48 800A2C98 35CE1301 */  ori        $t6, $t6, (0xBA001301 & 0xFFFF)
    /* B1C4C 800A2C9C 25990008 */  addiu      $t9, $t4, 0x8
    /* B1C50 800A2CA0 AC790000 */  sw         $t9, 0x0($v1)
    /* B1C54 800A2CA4 3C0F0008 */  lui        $t7, (0x80000 >> 16)
    /* B1C58 800A2CA8 AD8F0004 */  sw         $t7, 0x4($t4)
    /* B1C5C 800A2CAC AD8E0000 */  sw         $t6, 0x0($t4)
    /* B1C60 800A2CB0 8C6D0000 */  lw         $t5, 0x0($v1)
    /* B1C64 800A2CB4 3C0E0050 */  lui        $t6, (0x504240 >> 16)
    /* B1C68 800A2CB8 3C19B900 */  lui        $t9, (0xB900031D >> 16)
    /* B1C6C 800A2CBC 25B80008 */  addiu      $t8, $t5, 0x8
    /* B1C70 800A2CC0 AC780000 */  sw         $t8, 0x0($v1)
    /* B1C74 800A2CC4 3739031D */  ori        $t9, $t9, (0xB900031D & 0xFFFF)
    /* B1C78 800A2CC8 35CE4240 */  ori        $t6, $t6, (0x504240 & 0xFFFF)
    /* B1C7C 800A2CCC ADAE0004 */  sw         $t6, 0x4($t5)
    /* B1C80 800A2CD0 ADB90000 */  sw         $t9, 0x0($t5)
    /* B1C84 800A2CD4 8C640000 */  lw         $a0, 0x0($v1)
    /* B1C88 800A2CD8 3C18BA00 */  lui        $t8, (0xBA000E02 >> 16)
    /* B1C8C 800A2CDC 37180E02 */  ori        $t8, $t8, (0xBA000E02 & 0xFFFF)
    /* B1C90 800A2CE0 248F0008 */  addiu      $t7, $a0, 0x8
    /* B1C94 800A2CE4 AC6F0000 */  sw         $t7, 0x0($v1)
    /* B1C98 800A2CE8 AC800004 */  sw         $zero, 0x4($a0)
    /* B1C9C 800A2CEC AC980000 */  sw         $t8, 0x0($a0)
    /* B1CA0 800A2CF0 8C650000 */  lw         $a1, 0x0($v1)
    /* B1CA4 800A2CF4 3C0FFF65 */  lui        $t7, (0xFF65FEFF >> 16)
    /* B1CA8 800A2CF8 3C0EFCFF */  lui        $t6, (0xFCFFB3FF >> 16)
    /* B1CAC 800A2CFC 24B90008 */  addiu      $t9, $a1, 0x8
    /* B1CB0 800A2D00 AC790000 */  sw         $t9, 0x0($v1)
    /* B1CB4 800A2D04 35CEB3FF */  ori        $t6, $t6, (0xFCFFB3FF & 0xFFFF)
    /* B1CB8 800A2D08 35EFFEFF */  ori        $t7, $t7, (0xFF65FEFF & 0xFFFF)
    /* B1CBC 800A2D0C ACAF0004 */  sw         $t7, 0x4($a1)
    /* B1CC0 800A2D10 ACAE0000 */  sw         $t6, 0x0($a1)
    /* B1CC4 800A2D14 8C620000 */  lw         $v0, 0x0($v1)
    /* B1CC8 800A2D18 3C19FA00 */  lui        $t9, (0xFA000000 >> 16)
    /* B1CCC 800A2D1C 24580008 */  addiu      $t8, $v0, 0x8
    /* B1CD0 800A2D20 AC780000 */  sw         $t8, 0x0($v1)
    /* B1CD4 800A2D24 AC590000 */  sw         $t9, 0x0($v0)
    /* B1CD8 800A2D28 93EF0079 */  lbu        $t7, 0x79($ra)
    /* B1CDC 800A2D2C 93EE0077 */  lbu        $t6, 0x77($ra)
    /* B1CE0 800A2D30 00403025 */  or         $a2, $v0, $zero
    /* B1CE4 800A2D34 000FC200 */  sll        $t8, $t7, 8
    /* B1CE8 800A2D38 000E7E00 */  sll        $t7, $t6, 24
    /* B1CEC 800A2D3C 030FC825 */  or         $t9, $t8, $t7
    /* B1CF0 800A2D40 93F80078 */  lbu        $t8, 0x78($ra)
    /* B1CF4 800A2D44 00187C00 */  sll        $t7, $t8, 16
    /* B1CF8 800A2D48 032F7025 */  or         $t6, $t9, $t7
    /* B1CFC 800A2D4C 93F80069 */  lbu        $t8, 0x69($ra)
    /* B1D00 800A2D50 07010003 */  bgez       $t8, .L800A2D60_B1D10
    /* B1D04 800A2D54 0018C843 */   sra       $t9, $t8, 1
    /* B1D08 800A2D58 27010001 */  addiu      $at, $t8, 0x1
    /* B1D0C 800A2D5C 0001C843 */  sra        $t9, $at, 1
  .L800A2D60_B1D10:
    /* B1D10 800A2D60 332F00FF */  andi       $t7, $t9, 0xFF
    /* B1D14 800A2D64 01CFC025 */  or         $t8, $t6, $t7
    /* B1D18 800A2D68 ACD80004 */  sw         $t8, 0x4($a2)
    /* B1D1C 800A2D6C 8C620000 */  lw         $v0, 0x0($v1)
    /* B1D20 800A2D70 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
    /* B1D24 800A2D74 24590008 */  addiu      $t9, $v0, 0x8
    /* B1D28 800A2D78 AC790000 */  sw         $t9, 0x0($v1)
    /* B1D2C 800A2D7C AC400004 */  sw         $zero, 0x4($v0)
    /* B1D30 800A2D80 0C028898 */  jal        func_800A2260_B1210
    /* B1D34 800A2D84 AC4E0000 */   sw        $t6, 0x0($v0)
  .L800A2D88_B1D38:
    /* B1D38 800A2D88 8FBF0014 */  lw         $ra, 0x14($sp)
  .L800A2D8C_B1D3C:
    /* B1D3C 800A2D8C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* B1D40 800A2D90 03E00008 */  jr         $ra
    /* B1D44 800A2D94 00000000 */   nop
endlabel func_800A2B58_B1B08
