nonmatching func_800BD2F4_CC2A4, 0x6C

glabel func_800BD2F4_CC2A4
    /* CC2A4 800BD2F4 3C0E8004 */  lui        $t6, %hi(currentLevel)
    /* CC2A8 800BD2F8 8DCE7F90 */  lw         $t6, %lo(currentLevel)($t6)
    /* CC2AC 800BD2FC 3C188004 */  lui        $t8, %hi(D_8003E0FC)
    /* CC2B0 800BD300 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* CC2B4 800BD304 000E7880 */  sll        $t7, $t6, 2
    /* CC2B8 800BD308 01EE7821 */  addu       $t7, $t7, $t6
    /* CC2BC 800BD30C 000F7900 */  sll        $t7, $t7, 4
    /* CC2C0 800BD310 2718E0FC */  addiu      $t8, $t8, %lo(D_8003E0FC)
    /* CC2C4 800BD314 AFBF0014 */  sw         $ra, 0x14($sp)
    /* CC2C8 800BD318 01F82021 */  addu       $a0, $t7, $t8
    /* CC2CC 800BD31C 00001025 */  or         $v0, $zero, $zero
    /* CC2D0 800BD320 2403000A */  addiu      $v1, $zero, 0xA
  .L800BD324_CC2D4:
    /* CC2D4 800BD324 00430019 */  multu      $v0, $v1
    /* CC2D8 800BD328 24420001 */  addiu      $v0, $v0, 0x1
    /* CC2DC 800BD32C 304900FF */  andi       $t1, $v0, 0xFF
    /* CC2E0 800BD330 29210008 */  slti       $at, $t1, 0x8
    /* CC2E4 800BD334 01201025 */  or         $v0, $t1, $zero
    /* CC2E8 800BD338 0000C812 */  mflo       $t9
    /* CC2EC 800BD33C 00994021 */  addu       $t0, $a0, $t9
    /* CC2F0 800BD340 1420FFF8 */  bnez       $at, .L800BD324_CC2D4
    /* CC2F4 800BD344 A100FFB6 */   sb        $zero, -0x4A($t0)
    /* CC2F8 800BD348 0C02F483 */  jal        func_800BD20C_CC1BC
    /* CC2FC 800BD34C 00000000 */   nop
    /* CC300 800BD350 8FBF0014 */  lw         $ra, 0x14($sp)
    /* CC304 800BD354 27BD0018 */  addiu      $sp, $sp, 0x18
    /* CC308 800BD358 03E00008 */  jr         $ra
    /* CC30C 800BD35C 00000000 */   nop
endlabel func_800BD2F4_CC2A4
