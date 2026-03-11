nonmatching func_800EA088_F9038, 0xA4

glabel func_800EA088_F9038
    /* F9038 800EA088 3C088006 */  lui        $t0, %hi(D_8005BB2C)
    /* F903C 800EA08C 2508BB2C */  addiu      $t0, $t0, %lo(D_8005BB2C)
    /* F9040 800EA090 8D030000 */  lw         $v1, 0x0($t0)
    /* F9044 800EA094 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
    /* F9048 800EA098 3C19E800 */  lui        $t9, (0xE8000000 >> 16)
    /* F904C 800EA09C 246E0008 */  addiu      $t6, $v1, 0x8
    /* F9050 800EA0A0 AD0E0000 */  sw         $t6, 0x0($t0)
    /* F9054 800EA0A4 AC600004 */  sw         $zero, 0x4($v1)
    /* F9058 800EA0A8 AC6F0000 */  sw         $t7, 0x0($v1)
    /* F905C 800EA0AC 8D030000 */  lw         $v1, 0x0($t0)
    /* F9060 800EA0B0 3C0ABB00 */  lui        $t2, (0xBB000001 >> 16)
    /* F9064 800EA0B4 3C0B8000 */  lui        $t3, (0x80008000 >> 16)
    /* F9068 800EA0B8 24780008 */  addiu      $t8, $v1, 0x8
    /* F906C 800EA0BC AD180000 */  sw         $t8, 0x0($t0)
    /* F9070 800EA0C0 AC600004 */  sw         $zero, 0x4($v1)
    /* F9074 800EA0C4 AC790000 */  sw         $t9, 0x0($v1)
    /* F9078 800EA0C8 8D030000 */  lw         $v1, 0x0($t0)
    /* F907C 800EA0CC 356B8000 */  ori        $t3, $t3, (0x80008000 & 0xFFFF)
    /* F9080 800EA0D0 354A0001 */  ori        $t2, $t2, (0xBB000001 & 0xFFFF)
    /* F9084 800EA0D4 24690008 */  addiu      $t1, $v1, 0x8
    /* F9088 800EA0D8 AD090000 */  sw         $t1, 0x0($t0)
    /* F908C 800EA0DC AC6B0004 */  sw         $t3, 0x4($v1)
    /* F9090 800EA0E0 AC6A0000 */  sw         $t2, 0x0($v1)
    /* F9094 800EA0E4 8D030000 */  lw         $v1, 0x0($t0)
    /* F9098 800EA0E8 3C0EC811 */  lui        $t6, (0xC8112078 >> 16)
    /* F909C 800EA0EC 3C0DB900 */  lui        $t5, (0xB900031D >> 16)
    /* F90A0 800EA0F0 246C0008 */  addiu      $t4, $v1, 0x8
    /* F90A4 800EA0F4 AD0C0000 */  sw         $t4, 0x0($t0)
    /* F90A8 800EA0F8 35AD031D */  ori        $t5, $t5, (0xB900031D & 0xFFFF)
    /* F90AC 800EA0FC 35CE2078 */  ori        $t6, $t6, (0xC8112078 & 0xFFFF)
    /* F90B0 800EA100 AC6E0004 */  sw         $t6, 0x4($v1)
    /* F90B4 800EA104 AC6D0000 */  sw         $t5, 0x0($v1)
    /* F90B8 800EA108 8D030000 */  lw         $v1, 0x0($t0)
    /* F90BC 800EA10C 3C190002 */  lui        $t9, (0x20001 >> 16)
    /* F90C0 800EA110 37390001 */  ori        $t9, $t9, (0x20001 & 0xFFFF)
    /* F90C4 800EA114 246F0008 */  addiu      $t7, $v1, 0x8
    /* F90C8 800EA118 AD0F0000 */  sw         $t7, 0x0($t0)
    /* F90CC 800EA11C 3C18B700 */  lui        $t8, (0xB7000000 >> 16)
    /* F90D0 800EA120 AC780000 */  sw         $t8, 0x0($v1)
    /* F90D4 800EA124 03E00008 */  jr         $ra
    /* F90D8 800EA128 AC790004 */   sw        $t9, 0x4($v1)
endlabel func_800EA088_F9038
