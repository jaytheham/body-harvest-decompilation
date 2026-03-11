nonmatching func_8010C454_11B404, 0x98

glabel func_8010C454_11B404
    /* 11B404 8010C454 3C048016 */  lui        $a0, %hi(D_80159314)
    /* 11B408 8010C458 24849314 */  addiu      $a0, $a0, %lo(D_80159314)
    /* 11B40C 8010C45C 84820000 */  lh         $v0, 0x0($a0)
    /* 11B410 8010C460 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 11B414 8010C464 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 11B418 8010C468 2C430001 */  sltiu      $v1, $v0, 0x1
    /* 11B41C 8010C46C 244EFFFF */  addiu      $t6, $v0, -0x1
    /* 11B420 8010C470 1060001A */  beqz       $v1, .L8010C4DC_11B48C
    /* 11B424 8010C474 A48E0000 */   sh        $t6, 0x0($a0)
    /* 11B428 8010C478 3C058016 */  lui        $a1, %hi(D_80159316)
    /* 11B42C 8010C47C 84A59316 */  lh         $a1, %lo(D_80159316)($a1)
    /* 11B430 8010C480 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 11B434 8010C484 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 11B438 8010C488 00057880 */  sll        $t7, $a1, 2
    /* 11B43C 8010C48C 01E57823 */  subu       $t7, $t7, $a1
    /* 11B440 8010C490 000F78C0 */  sll        $t7, $t7, 3
    /* 11B444 8010C494 3C188005 */  lui        $t8, %hi(vehicleInstances)
    /* 11B448 8010C498 01E57823 */  subu       $t7, $t7, $a1
    /* 11B44C 8010C49C 000F7880 */  sll        $t7, $t7, 2
    /* 11B450 8010C4A0 2718DCD0 */  addiu      $t8, $t8, %lo(vehicleInstances)
    /* 11B454 8010C4A4 01F8C821 */  addu       $t9, $t7, $t8
    /* 11B458 8010C4A8 10990005 */  beq        $a0, $t9, .L8010C4C0_11B470
    /* 11B45C 8010C4AC 00000000 */   nop
    /* 11B460 8010C4B0 0C03F544 */  jal        func_800FD510_10C4C0
    /* 11B464 8010C4B4 00002025 */   or        $a0, $zero, $zero
    /* 11B468 8010C4B8 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 11B46C 8010C4BC 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
  .L8010C4C0_11B470:
    /* 11B470 8010C4C0 3C058015 */  lui        $a1, %hi(D_801493D8)
    /* 11B474 8010C4C4 0C039EC8 */  jal        func_800E7B20_F6AD0
    /* 11B478 8010C4C8 84A593D8 */   lh        $a1, %lo(D_801493D8)($a1)
    /* 11B47C 8010C4CC 3C018016 */  lui        $at, %hi(D_801591AC)
    /* 11B480 8010C4D0 AC2091AC */  sw         $zero, %lo(D_801591AC)($at)
    /* 11B484 8010C4D4 3C018016 */  lui        $at, %hi(D_8015930E)
    /* 11B488 8010C4D8 A420930E */  sh         $zero, %lo(D_8015930E)($at)
  .L8010C4DC_11B48C:
    /* 11B48C 8010C4DC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 11B490 8010C4E0 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 11B494 8010C4E4 03E00008 */  jr         $ra
    /* 11B498 8010C4E8 00000000 */   nop
endlabel func_8010C454_11B404
