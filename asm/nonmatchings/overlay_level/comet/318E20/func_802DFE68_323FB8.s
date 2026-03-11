nonmatching func_802DFE68_323FB8, 0x9C

glabel func_802DFE68_323FB8
    /* 323FB8 802DFE68 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 323FBC 802DFE6C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 323FC0 802DFE70 0C022000 */  jal        func_80088000_96FB0
    /* 323FC4 802DFE74 2404FFFF */   addiu     $a0, $zero, -0x1
    /* 323FC8 802DFE78 0C02B8B0 */  jal        func_800AE2C0_BD270
    /* 323FCC 802DFE7C 00000000 */   nop
    /* 323FD0 802DFE80 0C01E55B */  jal        func_8007956C_8851C
    /* 323FD4 802DFE84 24040012 */   addiu     $a0, $zero, 0x12
    /* 323FD8 802DFE88 240100FF */  addiu      $at, $zero, 0xFF
    /* 323FDC 802DFE8C 10410015 */  beq        $v0, $at, .L802DFEE4_324034
    /* 323FE0 802DFE90 3C04802E */   lui       $a0, %hi(func_802DF290_3233E0)
    /* 323FE4 802DFE94 00027080 */  sll        $t6, $v0, 2
    /* 323FE8 802DFE98 01C27021 */  addu       $t6, $t6, $v0
    /* 323FEC 802DFE9C 3C0F8005 */  lui        $t7, %hi(alienInstances)
    /* 323FF0 802DFEA0 25EF8198 */  addiu      $t7, $t7, %lo(alienInstances)
    /* 323FF4 802DFEA4 000E7100 */  sll        $t6, $t6, 4
    /* 323FF8 802DFEA8 01CF1821 */  addu       $v1, $t6, $t7
    /* 323FFC 802DFEAC 8C790020 */  lw         $t9, 0x20($v1)
    /* 324000 802DFEB0 3C010800 */  lui        $at, (0x8000100 >> 16)
    /* 324004 802DFEB4 34210100 */  ori        $at, $at, (0x8000100 & 0xFFFF)
    /* 324008 802DFEB8 03214025 */  or         $t0, $t9, $at
    /* 32400C 802DFEBC 2418D528 */  addiu      $t8, $zero, -0x2AD8
    /* 324010 802DFEC0 24090002 */  addiu      $t1, $zero, 0x2
    /* 324014 802DFEC4 A4780000 */  sh         $t8, 0x0($v1)
    /* 324018 802DFEC8 A4600002 */  sh         $zero, 0x2($v1)
    /* 32401C 802DFECC A4600004 */  sh         $zero, 0x4($v1)
    /* 324020 802DFED0 AC680020 */  sw         $t0, 0x20($v1)
    /* 324024 802DFED4 A0690024 */  sb         $t1, 0x24($v1)
    /* 324028 802DFED8 A460000E */  sh         $zero, 0xE($v1)
    /* 32402C 802DFEDC 3C018015 */  lui        $at, %hi(D_8014D17E)
    /* 324030 802DFEE0 A422D17E */  sh         $v0, %lo(D_8014D17E)($at)
  .L802DFEE4_324034:
    /* 324034 802DFEE4 3C018015 */  lui        $at, %hi(D_8014D17C)
    /* 324038 802DFEE8 A420D17C */  sh         $zero, %lo(D_8014D17C)($at)
    /* 32403C 802DFEEC 0C001D04 */  jal        func_80007410_8010
    /* 324040 802DFEF0 2484F290 */   addiu     $a0, $a0, %lo(func_802DF290_3233E0)
    /* 324044 802DFEF4 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 324048 802DFEF8 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 32404C 802DFEFC 03E00008 */  jr         $ra
    /* 324050 802DFF00 00000000 */   nop
endlabel func_802DFE68_323FB8
