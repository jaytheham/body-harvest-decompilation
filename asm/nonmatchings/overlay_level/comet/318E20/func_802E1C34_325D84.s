nonmatching func_802E1C34_325D84, 0x8C

glabel func_802E1C34_325D84
    /* 325D84 802E1C34 308E00FF */  andi       $t6, $a0, 0xFF
    /* 325D88 802E1C38 24080050 */  addiu      $t0, $zero, 0x50
    /* 325D8C 802E1C3C 01C80019 */  multu      $t6, $t0
    /* 325D90 802E1C40 3C078005 */  lui        $a3, %hi(alienInstances)
    /* 325D94 802E1C44 24E78198 */  addiu      $a3, $a3, %lo(alienInstances)
    /* 325D98 802E1C48 AFA40000 */  sw         $a0, 0x0($sp)
    /* 325D9C 802E1C4C 00007812 */  mflo       $t7
    /* 325DA0 802E1C50 00EF1821 */  addu       $v1, $a3, $t7
    /* 325DA4 802E1C54 90620025 */  lbu        $v0, 0x25($v1)
    /* 325DA8 802E1C58 846B002C */  lh         $t3, 0x2C($v1)
    /* 325DAC 802E1C5C 00480019 */  multu      $v0, $t0
    /* 325DB0 802E1C60 256C0001 */  addiu      $t4, $t3, 0x1
    /* 325DB4 802E1C64 24020001 */  addiu      $v0, $zero, 0x1
    /* 325DB8 802E1C68 0000C012 */  mflo       $t8
    /* 325DBC 802E1C6C 00F8C821 */  addu       $t9, $a3, $t8
    /* 325DC0 802E1C70 93290025 */  lbu        $t1, 0x25($t9)
    /* 325DC4 802E1C74 A46C002C */  sh         $t4, 0x2C($v1)
    /* 325DC8 802E1C78 8466002C */  lh         $a2, 0x2C($v1)
    /* 325DCC 802E1C7C 01280019 */  multu      $t1, $t0
    /* 325DD0 802E1C80 28C10051 */  slti       $at, $a2, 0x51
    /* 325DD4 802E1C84 00005012 */  mflo       $t2
    /* 325DD8 802E1C88 00EA2821 */  addu       $a1, $a3, $t2
    /* 325DDC 802E1C8C 10200007 */  beqz       $at, .L802E1CAC_325DFC
    /* 325DE0 802E1C90 00000000 */   nop
    /* 325DE4 802E1C94 90AD0002 */  lbu        $t5, 0x2($a1)
    /* 325DE8 802E1C98 240100FF */  addiu      $at, $zero, 0xFF
    /* 325DEC 802E1C9C 15A10005 */  bne        $t5, $at, .L802E1CB4_325E04
    /* 325DF0 802E1CA0 28C10033 */   slti      $at, $a2, 0x33
    /* 325DF4 802E1CA4 54200004 */  bnel       $at, $zero, .L802E1CB8_325E08
    /* 325DF8 802E1CA8 00001025 */   or        $v0, $zero, $zero
  .L802E1CAC_325DFC:
    /* 325DFC 802E1CAC 03E00008 */  jr         $ra
    /* 325E00 802E1CB0 A460002C */   sh        $zero, 0x2C($v1)
  .L802E1CB4_325E04:
    /* 325E04 802E1CB4 00001025 */  or         $v0, $zero, $zero
  .L802E1CB8_325E08:
    /* 325E08 802E1CB8 03E00008 */  jr         $ra
    /* 325E0C 802E1CBC 00000000 */   nop
endlabel func_802E1C34_325D84
