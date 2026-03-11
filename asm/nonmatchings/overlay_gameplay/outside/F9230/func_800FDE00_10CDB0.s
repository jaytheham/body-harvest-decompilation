nonmatching func_800FDE00_10CDB0, 0xA8

glabel func_800FDE00_10CDB0
    /* 10CDB0 800FDE00 3C038016 */  lui        $v1, %hi(D_80159320)
    /* 10CDB4 800FDE04 24639320 */  addiu      $v1, $v1, %lo(D_80159320)
    /* 10CDB8 800FDE08 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 10CDBC 800FDE0C 3C048016 */  lui        $a0, %hi(D_80158F8C)
    /* 10CDC0 800FDE10 24848F8C */  addiu      $a0, $a0, %lo(D_80158F8C)
    /* 10CDC4 800FDE14 31CF0002 */  andi       $t7, $t6, 0x2
    /* 10CDC8 800FDE18 11E00021 */  beqz       $t7, .L800FDEA0_10CE50
    /* 10CDCC 800FDE1C 00000000 */   nop
    /* 10CDD0 800FDE20 8C820000 */  lw         $v0, 0x0($a0)
    /* 10CDD4 800FDE24 2401FFFE */  addiu      $at, $zero, -0x2
    /* 10CDD8 800FDE28 3C058016 */  lui        $a1, %hi(D_80159188)
    /* 10CDDC 800FDE2C 8458000C */  lh         $t8, 0xC($v0)
    /* 10CDE0 800FDE30 24A59188 */  addiu      $a1, $a1, %lo(D_80159188)
    /* 10CDE4 800FDE34 1701001A */  bne        $t8, $at, .L800FDEA0_10CE50
    /* 10CDE8 800FDE38 00000000 */   nop
    /* 10CDEC 800FDE3C C4A40000 */  lwc1       $f4, 0x0($a1)
    /* 10CDF0 800FDE40 44805000 */  mtc1       $zero, $f10
    /* 10CDF4 800FDE44 2401FFFD */  addiu      $at, $zero, -0x3
    /* 10CDF8 800FDE48 E4440030 */  swc1       $f4, 0x30($v0)
    /* 10CDFC 800FDE4C 8C990000 */  lw         $t9, 0x0($a0)
    /* 10CE00 800FDE50 C4A60004 */  lwc1       $f6, 0x4($a1)
    /* 10CE04 800FDE54 E7260034 */  swc1       $f6, 0x34($t9)
    /* 10CE08 800FDE58 8C880000 */  lw         $t0, 0x0($a0)
    /* 10CE0C 800FDE5C C4A80008 */  lwc1       $f8, 0x8($a1)
    /* 10CE10 800FDE60 E5080038 */  swc1       $f8, 0x38($t0)
    /* 10CE14 800FDE64 8C890000 */  lw         $t1, 0x0($a0)
    /* 10CE18 800FDE68 A5200012 */  sh         $zero, 0x12($t1)
    /* 10CE1C 800FDE6C 8C8A0000 */  lw         $t2, 0x0($a0)
    /* 10CE20 800FDE70 E54A0058 */  swc1       $f10, 0x58($t2)
    /* 10CE24 800FDE74 8C820000 */  lw         $v0, 0x0($a0)
    /* 10CE28 800FDE78 944B0020 */  lhu        $t3, 0x20($v0)
    /* 10CE2C 800FDE7C 356C0003 */  ori        $t4, $t3, 0x3
    /* 10CE30 800FDE80 A44C0020 */  sh         $t4, 0x20($v0)
    /* 10CE34 800FDE84 8C6D0000 */  lw         $t5, 0x0($v1)
    /* 10CE38 800FDE88 AC800000 */  sw         $zero, 0x0($a0)
    /* 10CE3C 800FDE8C 01A17024 */  and        $t6, $t5, $at
    /* 10CE40 800FDE90 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* 10CE44 800FDE94 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 10CE48 800FDE98 01C1C025 */  or         $t8, $t6, $at
    /* 10CE4C 800FDE9C AC780000 */  sw         $t8, 0x0($v1)
  .L800FDEA0_10CE50:
    /* 10CE50 800FDEA0 03E00008 */  jr         $ra
    /* 10CE54 800FDEA4 00000000 */   nop
endlabel func_800FDE00_10CDB0
