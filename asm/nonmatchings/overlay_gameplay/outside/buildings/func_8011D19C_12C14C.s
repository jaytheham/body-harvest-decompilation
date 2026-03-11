nonmatching func_8011D19C_12C14C, 0xC4

glabel func_8011D19C_12C14C
    /* 12C14C 8011D19C 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 12C150 8011D1A0 AFA40030 */  sw         $a0, 0x30($sp)
    /* 12C154 8011D1A4 AFA50034 */  sw         $a1, 0x34($sp)
    /* 12C158 8011D1A8 00807025 */  or         $t6, $a0, $zero
    /* 12C15C 8011D1AC 00A07825 */  or         $t7, $a1, $zero
    /* 12C160 8011D1B0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 12C164 8011D1B4 31E500FF */  andi       $a1, $t7, 0xFF
    /* 12C168 8011D1B8 31C400FF */  andi       $a0, $t6, 0xFF
    /* 12C16C 8011D1BC AFA40020 */  sw         $a0, 0x20($sp)
    /* 12C170 8011D1C0 0C047308 */  jal        func_8011CC20_12BBD0
    /* 12C174 8011D1C4 AFA5001C */   sw        $a1, 0x1C($sp)
    /* 12C178 8011D1C8 8FA40020 */  lw         $a0, 0x20($sp)
    /* 12C17C 8011D1CC 8FA5001C */  lw         $a1, 0x1C($sp)
    /* 12C180 8011D1D0 0C0472F6 */  jal        func_8011CBD8_12BB88
    /* 12C184 8011D1D4 A7A2002C */   sh        $v0, 0x2C($sp)
    /* 12C188 8011D1D8 00401825 */  or         $v1, $v0, $zero
    /* 12C18C 8011D1DC 3C088016 */  lui        $t0, %hi(D_80159DE8)
    /* 12C190 8011D1E0 3C078016 */  lui        $a3, %hi(D_8015D0B0)
    /* 12C194 8011D1E4 97A6002C */  lhu        $a2, 0x2C($sp)
    /* 12C198 8011D1E8 24040017 */  addiu      $a0, $zero, 0x17
    /* 12C19C 8011D1EC 24E7D0B0 */  addiu      $a3, $a3, %lo(D_8015D0B0)
    /* 12C1A0 8011D1F0 25089DE8 */  addiu      $t0, $t0, %lo(D_80159DE8)
    /* 12C1A4 8011D1F4 240200FF */  addiu      $v0, $zero, 0xFF
    /* 12C1A8 8011D1F8 24091964 */  addiu      $t1, $zero, 0x1964
    /* 12C1AC 8011D1FC 00E3C021 */  addu       $t8, $a3, $v1
  .L8011D200_12C1B0:
    /* 12C1B0 8011D200 93050000 */  lbu        $a1, 0x0($t8)
    /* 12C1B4 8011D204 0003C840 */  sll        $t9, $v1, 1
    /* 12C1B8 8011D208 01195021 */  addu       $t2, $t0, $t9
    /* 12C1BC 8011D20C 14450003 */  bne        $v0, $a1, .L8011D21C_12C1CC
    /* 12C1C0 8011D210 00836021 */   addu      $t4, $a0, $v1
    /* 12C1C4 8011D214 1000000E */  b          .L8011D250_12C200
    /* 12C1C8 8011D218 2402FFFF */   addiu     $v0, $zero, -0x1
  .L8011D21C_12C1CC:
    /* 12C1CC 8011D21C 954B0000 */  lhu        $t3, 0x0($t2)
    /* 12C1D0 8011D220 14CB0003 */  bne        $a2, $t3, .L8011D230_12C1E0
    /* 12C1D4 8011D224 00000000 */   nop
    /* 12C1D8 8011D228 10000009 */  b          .L8011D250_12C200
    /* 12C1DC 8011D22C 00A01025 */   or        $v0, $a1, $zero
  .L8011D230_12C1E0:
    /* 12C1E0 8011D230 0189001B */  divu       $zero, $t4, $t1
    /* 12C1E4 8011D234 00001810 */  mfhi       $v1
    /* 12C1E8 8011D238 24840001 */  addiu      $a0, $a0, 0x1
    /* 12C1EC 8011D23C 15200002 */  bnez       $t1, .L8011D248_12C1F8
    /* 12C1F0 8011D240 00000000 */   nop
    /* 12C1F4 8011D244 0007000D */  break      7
  .L8011D248_12C1F8:
    /* 12C1F8 8011D248 1000FFED */  b          .L8011D200_12C1B0
    /* 12C1FC 8011D24C 00E3C021 */   addu      $t8, $a3, $v1
  .L8011D250_12C200:
    /* 12C200 8011D250 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 12C204 8011D254 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 12C208 8011D258 03E00008 */  jr         $ra
    /* 12C20C 8011D25C 00000000 */   nop
endlabel func_8011D19C_12C14C
