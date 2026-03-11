nonmatching func_800E2DB4_F1D64, 0x120

glabel func_800E2DB4_F1D64
    /* F1D64 800E2DB4 3C038006 */  lui        $v1, %hi(D_8005BB2C)
    /* F1D68 800E2DB8 2463BB2C */  addiu      $v1, $v1, %lo(D_8005BB2C)
    /* F1D6C 800E2DBC 8C620000 */  lw         $v0, 0x0($v1)
    /* F1D70 800E2DC0 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
    /* F1D74 800E2DC4 3C19B600 */  lui        $t9, (0xB6000000 >> 16)
    /* F1D78 800E2DC8 244E0008 */  addiu      $t6, $v0, 0x8
    /* F1D7C 800E2DCC AC6E0000 */  sw         $t6, 0x0($v1)
    /* F1D80 800E2DD0 AC400004 */  sw         $zero, 0x4($v0)
    /* F1D84 800E2DD4 AC4F0000 */  sw         $t7, 0x0($v0)
    /* F1D88 800E2DD8 8C620000 */  lw         $v0, 0x0($v1)
    /* F1D8C 800E2DDC 240DFFFF */  addiu      $t5, $zero, -0x1
    /* F1D90 800E2DE0 3C0FBB00 */  lui        $t7, (0xBB000001 >> 16)
    /* F1D94 800E2DE4 24580008 */  addiu      $t8, $v0, 0x8
    /* F1D98 800E2DE8 AC780000 */  sw         $t8, 0x0($v1)
    /* F1D9C 800E2DEC AC4D0004 */  sw         $t5, 0x4($v0)
    /* F1DA0 800E2DF0 AC590000 */  sw         $t9, 0x0($v0)
    /* F1DA4 800E2DF4 8C620000 */  lw         $v0, 0x0($v1)
    /* F1DA8 800E2DF8 3C188000 */  lui        $t8, (0x80008000 >> 16)
    /* F1DAC 800E2DFC 37188000 */  ori        $t8, $t8, (0x80008000 & 0xFFFF)
    /* F1DB0 800E2E00 244E0008 */  addiu      $t6, $v0, 0x8
    /* F1DB4 800E2E04 AC6E0000 */  sw         $t6, 0x0($v1)
    /* F1DB8 800E2E08 35EF0001 */  ori        $t7, $t7, (0xBB000001 & 0xFFFF)
    /* F1DBC 800E2E0C AC4F0000 */  sw         $t7, 0x0($v0)
    /* F1DC0 800E2E10 AC580004 */  sw         $t8, 0x4($v0)
    /* F1DC4 800E2E14 8C620000 */  lw         $v0, 0x0($v1)
    /* F1DC8 800E2E18 3C0DBA00 */  lui        $t5, (0xBA000C02 >> 16)
    /* F1DCC 800E2E1C 35AD0C02 */  ori        $t5, $t5, (0xBA000C02 & 0xFFFF)
    /* F1DD0 800E2E20 24590008 */  addiu      $t9, $v0, 0x8
    /* F1DD4 800E2E24 AC790000 */  sw         $t9, 0x0($v1)
    /* F1DD8 800E2E28 240E2000 */  addiu      $t6, $zero, 0x2000
    /* F1DDC 800E2E2C AC4E0004 */  sw         $t6, 0x4($v0)
    /* F1DE0 800E2E30 AC4D0000 */  sw         $t5, 0x0($v0)
    /* F1DE4 800E2E34 8C620000 */  lw         $v0, 0x0($v1)
    /* F1DE8 800E2E38 3C18BA00 */  lui        $t8, (0xBA000602 >> 16)
    /* F1DEC 800E2E3C 37180602 */  ori        $t8, $t8, (0xBA000602 & 0xFFFF)
    /* F1DF0 800E2E40 244F0008 */  addiu      $t7, $v0, 0x8
    /* F1DF4 800E2E44 AC6F0000 */  sw         $t7, 0x0($v1)
    /* F1DF8 800E2E48 AC400004 */  sw         $zero, 0x4($v0)
    /* F1DFC 800E2E4C AC580000 */  sw         $t8, 0x0($v0)
    /* F1E00 800E2E50 8C620000 */  lw         $v0, 0x0($v1)
    /* F1E04 800E2E54 3C0DBA00 */  lui        $t5, (0xBA001301 >> 16)
    /* F1E08 800E2E58 35AD1301 */  ori        $t5, $t5, (0xBA001301 & 0xFFFF)
    /* F1E0C 800E2E5C 24590008 */  addiu      $t9, $v0, 0x8
    /* F1E10 800E2E60 AC790000 */  sw         $t9, 0x0($v1)
    /* F1E14 800E2E64 AC400004 */  sw         $zero, 0x4($v0)
    /* F1E18 800E2E68 AC4D0000 */  sw         $t5, 0x0($v0)
    /* F1E1C 800E2E6C 8C620000 */  lw         $v0, 0x0($v1)
    /* F1E20 800E2E70 3C180050 */  lui        $t8, (0x5041C8 >> 16)
    /* F1E24 800E2E74 3C0FB900 */  lui        $t7, (0xB900031D >> 16)
    /* F1E28 800E2E78 244E0008 */  addiu      $t6, $v0, 0x8
    /* F1E2C 800E2E7C AC6E0000 */  sw         $t6, 0x0($v1)
    /* F1E30 800E2E80 35EF031D */  ori        $t7, $t7, (0xB900031D & 0xFFFF)
    /* F1E34 800E2E84 371841C8 */  ori        $t8, $t8, (0x5041C8 & 0xFFFF)
    /* F1E38 800E2E88 AC580004 */  sw         $t8, 0x4($v0)
    /* F1E3C 800E2E8C AC4F0000 */  sw         $t7, 0x0($v0)
    /* F1E40 800E2E90 8C620000 */  lw         $v0, 0x0($v1)
    /* F1E44 800E2E94 3C0DBA00 */  lui        $t5, (0xBA000E02 >> 16)
    /* F1E48 800E2E98 35AD0E02 */  ori        $t5, $t5, (0xBA000E02 & 0xFFFF)
    /* F1E4C 800E2E9C 24590008 */  addiu      $t9, $v0, 0x8
    /* F1E50 800E2EA0 AC790000 */  sw         $t9, 0x0($v1)
    /* F1E54 800E2EA4 AC400004 */  sw         $zero, 0x4($v0)
    /* F1E58 800E2EA8 AC4D0000 */  sw         $t5, 0x0($v0)
    /* F1E5C 800E2EAC 8C620000 */  lw         $v0, 0x0($v1)
    /* F1E60 800E2EB0 3C0FFCFF */  lui        $t7, (0xFCFFB3FF >> 16)
    /* F1E64 800E2EB4 3C18FF65 */  lui        $t8, (0xFF65FEFF >> 16)
    /* F1E68 800E2EB8 244E0008 */  addiu      $t6, $v0, 0x8
    /* F1E6C 800E2EBC AC6E0000 */  sw         $t6, 0x0($v1)
    /* F1E70 800E2EC0 3718FEFF */  ori        $t8, $t8, (0xFF65FEFF & 0xFFFF)
    /* F1E74 800E2EC4 35EFB3FF */  ori        $t7, $t7, (0xFCFFB3FF & 0xFFFF)
    /* F1E78 800E2EC8 AC4F0000 */  sw         $t7, 0x0($v0)
    /* F1E7C 800E2ECC 03E00008 */  jr         $ra
    /* F1E80 800E2ED0 AC580004 */   sw        $t8, 0x4($v0)
endlabel func_800E2DB4_F1D64
