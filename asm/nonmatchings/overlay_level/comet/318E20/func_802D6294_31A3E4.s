nonmatching func_802D6294_31A3E4, 0x14C

glabel func_802D6294_31A3E4
    /* 31A3E4 802D6294 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 31A3E8 802D6298 3C0F802E */  lui        $t7, %hi(D_802E4F80)
    /* 31A3EC 802D629C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 31A3F0 802D62A0 25EF4F80 */  addiu      $t7, $t7, %lo(D_802E4F80)
    /* 31A3F4 802D62A4 99E10002 */  lwr        $at, 0x2($t7)
    /* 31A3F8 802D62A8 3C068015 */  lui        $a2, %hi(D_80157F8C)
    /* 31A3FC 802D62AC 27AE0024 */  addiu      $t6, $sp, 0x24
    /* 31A400 802D62B0 24C67F8C */  addiu      $a2, $a2, %lo(D_80157F8C)
    /* 31A404 802D62B4 B9C10002 */  swr        $at, 0x2($t6)
    /* 31A408 802D62B8 84C40000 */  lh         $a0, 0x0($a2)
    /* 31A40C 802D62BC 3C0A802E */  lui        $t2, %hi(D_802E4F84)
    /* 31A410 802D62C0 8D4A4F84 */  lw         $t2, %lo(D_802E4F84)($t2)
    /* 31A414 802D62C4 00801025 */  or         $v0, $a0, $zero
    /* 31A418 802D62C8 10800009 */  beqz       $a0, .L802D62F0_31A440
    /* 31A41C 802D62CC AFAA0020 */   sw        $t2, 0x20($sp)
    /* 31A420 802D62D0 24040001 */  addiu      $a0, $zero, 0x1
    /* 31A424 802D62D4 10440014 */  beq        $v0, $a0, .L802D6328_31A478
    /* 31A428 802D62D8 3C088015 */   lui       $t0, %hi(D_80157F8E)
    /* 31A42C 802D62DC 24010002 */  addiu      $at, $zero, 0x2
    /* 31A430 802D62E0 10410030 */  beq        $v0, $at, .L802D63A4_31A4F4
    /* 31A434 802D62E4 3C0A8004 */   lui       $t2, %hi(currentLevel)
    /* 31A438 802D62E8 10000039 */  b          .L802D63D0_31A520
    /* 31A43C 802D62EC 00001025 */   or        $v0, $zero, $zero
  .L802D62F0_31A440:
    /* 31A440 802D62F0 3C088015 */  lui        $t0, %hi(D_80157F8E)
    /* 31A444 802D62F4 240B03E8 */  addiu      $t3, $zero, 0x3E8
    /* 31A448 802D62F8 3C018003 */  lui        $at, %hi(D_800313FC)
    /* 31A44C 802D62FC 25087F8E */  addiu      $t0, $t0, %lo(D_80157F8E)
    /* 31A450 802D6300 A42B13FC */  sh         $t3, %lo(D_800313FC)($at)
    /* 31A454 802D6304 85030000 */  lh         $v1, 0x0($t0)
    /* 31A458 802D6308 248D0001 */  addiu      $t5, $a0, 0x1
    /* 31A45C 802D630C 28620047 */  slti       $v0, $v1, 0x47
    /* 31A460 802D6310 246C0001 */  addiu      $t4, $v1, 0x1
    /* 31A464 802D6314 1440002D */  bnez       $v0, .L802D63CC_31A51C
    /* 31A468 802D6318 A50C0000 */   sh        $t4, 0x0($t0)
    /* 31A46C 802D631C A5000000 */  sh         $zero, 0x0($t0)
    /* 31A470 802D6320 1000002A */  b          .L802D63CC_31A51C
    /* 31A474 802D6324 A4CD0000 */   sh        $t5, 0x0($a2)
  .L802D6328_31A478:
    /* 31A478 802D6328 25087F8E */  addiu      $t0, $t0, %lo(D_80157F8E)
    /* 31A47C 802D632C 85030000 */  lh         $v1, 0x0($t0)
    /* 31A480 802D6330 2405C43C */  addiu      $a1, $zero, -0x3BC4
    /* 31A484 802D6334 54830013 */  bnel       $a0, $v1, .L802D6384_31A4D4
    /* 31A488 802D6338 28620079 */   slti      $v0, $v1, 0x79
    /* 31A48C 802D633C 0C02E134 */  jal        func_800B84D0_C7480
    /* 31A490 802D6340 2404C40A */   addiu     $a0, $zero, -0x3BF6
    /* 31A494 802D6344 00022A03 */  sra        $a1, $v0, 8
    /* 31A498 802D6348 0005CC00 */  sll        $t9, $a1, 16
    /* 31A49C 802D634C 00192C03 */  sra        $a1, $t9, 16
    /* 31A4A0 802D6350 2404C40A */  addiu      $a0, $zero, -0x3BF6
    /* 31A4A4 802D6354 2406C43C */  addiu      $a2, $zero, -0x3BC4
    /* 31A4A8 802D6358 0C035AB7 */  jal        func_800D6ADC_E5A8C
    /* 31A4AC 802D635C 2407000C */   addiu     $a3, $zero, 0xC
    /* 31A4B0 802D6360 3C04802E */  lui        $a0, %hi(D_802E7C34)
    /* 31A4B4 802D6364 0C0B53B9 */  jal        func_802D4EE4_319034
    /* 31A4B8 802D6368 84847C34 */   lh        $a0, %lo(D_802E7C34)($a0)
    /* 31A4BC 802D636C 3C088015 */  lui        $t0, %hi(D_80157F8E)
    /* 31A4C0 802D6370 25087F8E */  addiu      $t0, $t0, %lo(D_80157F8E)
    /* 31A4C4 802D6374 3C068015 */  lui        $a2, %hi(D_80157F8C)
    /* 31A4C8 802D6378 24C67F8C */  addiu      $a2, $a2, %lo(D_80157F8C)
    /* 31A4CC 802D637C 85030000 */  lh         $v1, 0x0($t0)
    /* 31A4D0 802D6380 28620079 */  slti       $v0, $v1, 0x79
  .L802D6384_31A4D4:
    /* 31A4D4 802D6384 246E0001 */  addiu      $t6, $v1, 0x1
    /* 31A4D8 802D6388 14400010 */  bnez       $v0, .L802D63CC_31A51C
    /* 31A4DC 802D638C A50E0000 */   sh        $t6, 0x0($t0)
    /* 31A4E0 802D6390 84CF0000 */  lh         $t7, 0x0($a2)
    /* 31A4E4 802D6394 A5000000 */  sh         $zero, 0x0($t0)
    /* 31A4E8 802D6398 25E90001 */  addiu      $t1, $t7, 0x1
    /* 31A4EC 802D639C 1000000B */  b          .L802D63CC_31A51C
    /* 31A4F0 802D63A0 A4C90000 */   sh        $t1, 0x0($a2)
  .L802D63A4_31A4F4:
    /* 31A4F4 802D63A4 8D4A7F90 */  lw         $t2, %lo(currentLevel)($t2)
    /* 31A4F8 802D63A8 3C198003 */  lui        $t9, %hi(D_80031636)
    /* 31A4FC 802D63AC 3C018003 */  lui        $at, %hi(D_800313FC)
    /* 31A500 802D63B0 254CFFFF */  addiu      $t4, $t2, -0x1
    /* 31A504 802D63B4 000C6880 */  sll        $t5, $t4, 2
    /* 31A508 802D63B8 032DC821 */  addu       $t9, $t9, $t5
    /* 31A50C 802D63BC 87391636 */  lh         $t9, %lo(D_80031636)($t9)
    /* 31A510 802D63C0 24020001 */  addiu      $v0, $zero, 0x1
    /* 31A514 802D63C4 10000002 */  b          .L802D63D0_31A520
    /* 31A518 802D63C8 A43913FC */   sh        $t9, %lo(D_800313FC)($at)
  .L802D63CC_31A51C:
    /* 31A51C 802D63CC 00001025 */  or         $v0, $zero, $zero
  .L802D63D0_31A520:
    /* 31A520 802D63D0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 31A524 802D63D4 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 31A528 802D63D8 03E00008 */  jr         $ra
    /* 31A52C 802D63DC 00000000 */   nop
endlabel func_802D6294_31A3E4
