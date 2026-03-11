nonmatching func_800AF52C_BE4DC, 0x84

glabel func_800AF52C_BE4DC
    /* BE4DC 800AF52C 3C0E8005 */  lui        $t6, %hi(D_80048038)
    /* BE4E0 800AF530 25CE8038 */  addiu      $t6, $t6, %lo(D_80048038)
    /* BE4E4 800AF534 008E1021 */  addu       $v0, $a0, $t6
    /* BE4E8 800AF538 90430000 */  lbu        $v1, 0x0($v0)
    /* BE4EC 800AF53C 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* BE4F0 800AF540 24010001 */  addiu      $at, $zero, 0x1
    /* BE4F4 800AF544 AFBF0014 */  sw         $ra, 0x14($sp)
    /* BE4F8 800AF548 10610002 */  beq        $v1, $at, .L800AF554_BE504
    /* BE4FC 800AF54C 00802825 */   or        $a1, $a0, $zero
    /* BE500 800AF550 14600013 */  bnez       $v1, .L800AF5A0_BE550
  .L800AF554_BE504:
    /* BE504 800AF554 3C048014 */   lui       $a0, %hi(D_80142BDC)
    /* BE508 800AF558 24842BDC */  addiu      $a0, $a0, %lo(D_80142BDC)
    /* BE50C 800AF55C AFA2001C */  sw         $v0, 0x1C($sp)
    /* BE510 800AF560 0C00731B */  jal        osSyncPrintf
    /* BE514 800AF564 AFA50020 */   sw        $a1, 0x20($sp)
    /* BE518 800AF568 8FA50020 */  lw         $a1, 0x20($sp)
    /* BE51C 800AF56C 8FA2001C */  lw         $v0, 0x1C($sp)
    /* BE520 800AF570 240F0003 */  addiu      $t7, $zero, 0x3
    /* BE524 800AF574 3C038015 */  lui        $v1, %hi(D_8014CFF0)
    /* BE528 800AF578 0005C040 */  sll        $t8, $a1, 1
    /* BE52C 800AF57C 00781821 */  addu       $v1, $v1, $t8
    /* BE530 800AF580 A04F0000 */  sb         $t7, 0x0($v0)
    /* BE534 800AF584 9063CFF0 */  lbu        $v1, %lo(D_8014CFF0)($v1)
    /* BE538 800AF588 24010093 */  addiu      $at, $zero, 0x93
    /* BE53C 800AF58C 10610004 */  beq        $v1, $at, .L800AF5A0_BE550
    /* BE540 800AF590 00032400 */   sll       $a0, $v1, 16
    /* BE544 800AF594 0004CC03 */  sra        $t9, $a0, 16
    /* BE548 800AF598 0C02BDD9 */  jal        func_800AF764_BE714
    /* BE54C 800AF59C 03202025 */   or        $a0, $t9, $zero
  .L800AF5A0_BE550:
    /* BE550 800AF5A0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* BE554 800AF5A4 27BD0020 */  addiu      $sp, $sp, 0x20
    /* BE558 800AF5A8 03E00008 */  jr         $ra
    /* BE55C 800AF5AC 00000000 */   nop
endlabel func_800AF52C_BE4DC
