nonmatching func_800AE454_BD404, 0x134

glabel func_800AE454_BD404
    /* BD404 800AE454 3C088022 */  lui        $t0, %hi(D_80223778)
    /* BD408 800AE458 25083778 */  addiu      $t0, $t0, %lo(D_80223778)
    /* BD40C 800AE45C 8D030000 */  lw         $v1, 0x0($t0)
    /* BD410 800AE460 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* BD414 800AE464 AFBF0014 */  sw         $ra, 0x14($sp)
    /* BD418 800AE468 286100D0 */  slti       $at, $v1, 0xD0
    /* BD41C 800AE46C 1420000C */  bnez       $at, .L800AE4A0_BD450
    /* BD420 800AE470 00803825 */   or        $a3, $a0, $zero
    /* BD424 800AE474 3C048014 */  lui        $a0, %hi(D_80142AE0)
    /* BD428 800AE478 3C058014 */  lui        $a1, %hi(D_80142B00)
    /* BD42C 800AE47C 24A52B00 */  addiu      $a1, $a1, %lo(D_80142B00)
    /* BD430 800AE480 24842AE0 */  addiu      $a0, $a0, %lo(D_80142AE0)
    /* BD434 800AE484 2406008F */  addiu      $a2, $zero, 0x8F
    /* BD438 800AE488 0C003BC0 */  jal        sourceTaggedPrintF
    /* BD43C 800AE48C AFA70018 */   sw        $a3, 0x18($sp)
    /* BD440 800AE490 3C088022 */  lui        $t0, %hi(D_80223778)
    /* BD444 800AE494 25083778 */  addiu      $t0, $t0, %lo(D_80223778)
    /* BD448 800AE498 8D030000 */  lw         $v1, 0x0($t0)
    /* BD44C 800AE49C 8FA70018 */  lw         $a3, 0x18($sp)
  .L800AE4A0_BD450:
    /* BD450 800AE4A0 286100D0 */  slti       $at, $v1, 0xD0
    /* BD454 800AE4A4 54200004 */  bnel       $at, $zero, .L800AE4B8_BD468
    /* BD458 800AE4A8 90EE0000 */   lbu       $t6, 0x0($a3)
    /* BD45C 800AE4AC 10000032 */  b          .L800AE578_BD528
    /* BD460 800AE4B0 2402FFFF */   addiu     $v0, $zero, -0x1
    /* BD464 800AE4B4 90EE0000 */  lbu        $t6, 0x0($a3)
  .L800AE4B8_BD468:
    /* BD468 800AE4B8 24010002 */  addiu      $at, $zero, 0x2
    /* BD46C 800AE4BC 3C188005 */  lui        $t8, %hi(D_80052A8C)
    /* BD470 800AE4C0 55C1001D */  bnel       $t6, $at, .L800AE538_BD4E8
    /* BD474 800AE4C4 8CE10000 */   lw        $at, 0x0($a3)
    /* BD478 800AE4C8 8CEF0004 */  lw         $t7, 0x4($a3)
    /* BD47C 800AE4CC 8F182A8C */  lw         $t8, %lo(D_80052A8C)($t8)
    /* BD480 800AE4D0 01F8C823 */  subu       $t9, $t7, $t8
    /* BD484 800AE4D4 2F21003D */  sltiu      $at, $t9, 0x3D
    /* BD488 800AE4D8 54200017 */  bnel       $at, $zero, .L800AE538_BD4E8
    /* BD48C 800AE4DC 8CE10000 */   lw        $at, 0x0($a3)
    /* BD490 800AE4E0 8CE2000C */  lw         $v0, 0xC($a3)
    /* BD494 800AE4E4 3C09800B */  lui        $t1, %hi(func_800AFD48_BECF8)
    /* BD498 800AE4E8 2529FD48 */  addiu      $t1, $t1, %lo(func_800AFD48_BECF8)
    /* BD49C 800AE4EC 51220004 */  beql       $t1, $v0, .L800AE500_BD4B0
    /* BD4A0 800AE4F0 90EA0009 */   lbu       $t2, 0x9($a3)
    /* BD4A4 800AE4F4 54400010 */  bnel       $v0, $zero, .L800AE538_BD4E8
    /* BD4A8 800AE4F8 8CE10000 */   lw        $at, 0x0($a3)
    /* BD4AC 800AE4FC 90EA0009 */  lbu        $t2, 0x9($a3)
  .L800AE500_BD4B0:
    /* BD4B0 800AE500 3C0C8022 */  lui        $t4, %hi(D_80223780)
    /* BD4B4 800AE504 258C3780 */  addiu      $t4, $t4, %lo(D_80223780)
    /* BD4B8 800AE508 000A5880 */  sll        $t3, $t2, 2
    /* BD4BC 800AE50C 016A5821 */  addu       $t3, $t3, $t2
    /* BD4C0 800AE510 000B5880 */  sll        $t3, $t3, 2
    /* BD4C4 800AE514 016C1021 */  addu       $v0, $t3, $t4
    /* BD4C8 800AE518 844D0002 */  lh         $t5, 0x2($v0)
    /* BD4CC 800AE51C 000D7203 */  sra        $t6, $t5, 8
    /* BD4D0 800AE520 A0EE0001 */  sb         $t6, 0x1($a3)
    /* BD4D4 800AE524 844F0004 */  lh         $t7, 0x4($v0)
    /* BD4D8 800AE528 000FC203 */  sra        $t8, $t7, 8
    /* BD4DC 800AE52C A0F80002 */  sb         $t8, 0x2($a3)
    /* BD4E0 800AE530 8D030000 */  lw         $v1, 0x0($t0)
    /* BD4E4 800AE534 8CE10000 */  lw         $at, 0x0($a3)
  .L800AE538_BD4E8:
    /* BD4E8 800AE538 3C098022 */  lui        $t1, %hi(D_80222A78)
    /* BD4EC 800AE53C 25292A78 */  addiu      $t1, $t1, %lo(D_80222A78)
    /* BD4F0 800AE540 0003C900 */  sll        $t9, $v1, 4
    /* BD4F4 800AE544 03295021 */  addu       $t2, $t9, $t1
    /* BD4F8 800AE548 AD410000 */  sw         $at, 0x0($t2)
    /* BD4FC 800AE54C 8CEC0004 */  lw         $t4, 0x4($a3)
    /* BD500 800AE550 246D0001 */  addiu      $t5, $v1, 0x1
    /* BD504 800AE554 25A2FFFF */  addiu      $v0, $t5, -0x1
    /* BD508 800AE558 AD4C0004 */  sw         $t4, 0x4($t2)
    /* BD50C 800AE55C 8CE10008 */  lw         $at, 0x8($a3)
    /* BD510 800AE560 00027400 */  sll        $t6, $v0, 16
    /* BD514 800AE564 000E1403 */  sra        $v0, $t6, 16
    /* BD518 800AE568 AD410008 */  sw         $at, 0x8($t2)
    /* BD51C 800AE56C 8CEC000C */  lw         $t4, 0xC($a3)
    /* BD520 800AE570 AD4C000C */  sw         $t4, 0xC($t2)
    /* BD524 800AE574 AD0D0000 */  sw         $t5, 0x0($t0)
  .L800AE578_BD528:
    /* BD528 800AE578 8FBF0014 */  lw         $ra, 0x14($sp)
    /* BD52C 800AE57C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* BD530 800AE580 03E00008 */  jr         $ra
    /* BD534 800AE584 00000000 */   nop
endlabel func_800AE454_BD404
