nonmatching func_802E193C_325A8C, 0xB0

glabel func_802E193C_325A8C
    /* 325A8C 802E193C 308E00FF */  andi       $t6, $a0, 0xFF
    /* 325A90 802E1940 24060050 */  addiu      $a2, $zero, 0x50
    /* 325A94 802E1944 01C60019 */  multu      $t6, $a2
    /* 325A98 802E1948 3C058005 */  lui        $a1, %hi(alienInstances)
    /* 325A9C 802E194C 24A58198 */  addiu      $a1, $a1, %lo(alienInstances)
    /* 325AA0 802E1950 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 325AA4 802E1954 AFA40028 */  sw         $a0, 0x28($sp)
    /* 325AA8 802E1958 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 325AAC 802E195C 00007812 */  mflo       $t7
    /* 325AB0 802E1960 00AF1821 */  addu       $v1, $a1, $t7
    /* 325AB4 802E1964 90670025 */  lbu        $a3, 0x25($v1)
    /* 325AB8 802E1968 846C002C */  lh         $t4, 0x2C($v1)
    /* 325ABC 802E196C 00E60019 */  multu      $a3, $a2
    /* 325AC0 802E1970 258D0001 */  addiu      $t5, $t4, 0x1
    /* 325AC4 802E1974 30E400FF */  andi       $a0, $a3, 0xFF
    /* 325AC8 802E1978 0000C012 */  mflo       $t8
    /* 325ACC 802E197C 00B8C821 */  addu       $t9, $a1, $t8
    /* 325AD0 802E1980 932A0025 */  lbu        $t2, 0x25($t9)
    /* 325AD4 802E1984 A46D002C */  sh         $t5, 0x2C($v1)
    /* 325AD8 802E1988 8468002C */  lh         $t0, 0x2C($v1)
    /* 325ADC 802E198C 01460019 */  multu      $t2, $a2
    /* 325AE0 802E1990 29010051 */  slti       $at, $t0, 0x51
    /* 325AE4 802E1994 00005812 */  mflo       $t3
    /* 325AE8 802E1998 00AB4821 */  addu       $t1, $a1, $t3
    /* 325AEC 802E199C 10200007 */  beqz       $at, .L802E19BC_325B0C
    /* 325AF0 802E19A0 24050800 */   addiu     $a1, $zero, 0x800
    /* 325AF4 802E19A4 912E0001 */  lbu        $t6, 0x1($t1)
    /* 325AF8 802E19A8 240100FF */  addiu      $at, $zero, 0xFF
    /* 325AFC 802E19AC 15C1000A */  bne        $t6, $at, .L802E19D8_325B28
    /* 325B00 802E19B0 29010033 */   slti      $at, $t0, 0x33
    /* 325B04 802E19B4 54200009 */  bnel       $at, $zero, .L802E19DC_325B2C
    /* 325B08 802E19B8 00001025 */   or        $v0, $zero, $zero
  .L802E19BC_325B0C:
    /* 325B0C 802E19BC 0C0213FA */  jal        func_80084FE8_93F98
    /* 325B10 802E19C0 AFA3001C */   sw        $v1, 0x1C($sp)
    /* 325B14 802E19C4 10400004 */  beqz       $v0, .L802E19D8_325B28
    /* 325B18 802E19C8 8FA3001C */   lw        $v1, 0x1C($sp)
    /* 325B1C 802E19CC A460002C */  sh         $zero, 0x2C($v1)
    /* 325B20 802E19D0 10000002 */  b          .L802E19DC_325B2C
    /* 325B24 802E19D4 24020001 */   addiu     $v0, $zero, 0x1
  .L802E19D8_325B28:
    /* 325B28 802E19D8 00001025 */  or         $v0, $zero, $zero
  .L802E19DC_325B2C:
    /* 325B2C 802E19DC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 325B30 802E19E0 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 325B34 802E19E4 03E00008 */  jr         $ra
    /* 325B38 802E19E8 00000000 */   nop
endlabel func_802E193C_325A8C
