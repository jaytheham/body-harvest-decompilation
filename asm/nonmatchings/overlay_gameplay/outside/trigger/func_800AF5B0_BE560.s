nonmatching func_800AF5B0_BE560, 0x84

glabel func_800AF5B0_BE560
    /* BE560 800AF5B0 3C0E8005 */  lui        $t6, %hi(D_80048038)
    /* BE564 800AF5B4 25CE8038 */  addiu      $t6, $t6, %lo(D_80048038)
    /* BE568 800AF5B8 008E1021 */  addu       $v0, $a0, $t6
    /* BE56C 800AF5BC 90430000 */  lbu        $v1, 0x0($v0)
    /* BE570 800AF5C0 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* BE574 800AF5C4 24010001 */  addiu      $at, $zero, 0x1
    /* BE578 800AF5C8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* BE57C 800AF5CC 10610002 */  beq        $v1, $at, .L800AF5D8_BE588
    /* BE580 800AF5D0 00802825 */   or        $a1, $a0, $zero
    /* BE584 800AF5D4 14600013 */  bnez       $v1, .L800AF624_BE5D4
  .L800AF5D8_BE588:
    /* BE588 800AF5D8 3C048014 */   lui       $a0, %hi(D_80142BEC)
    /* BE58C 800AF5DC 24842BEC */  addiu      $a0, $a0, %lo(D_80142BEC)
    /* BE590 800AF5E0 AFA2001C */  sw         $v0, 0x1C($sp)
    /* BE594 800AF5E4 0C00731B */  jal        osSyncPrintf
    /* BE598 800AF5E8 AFA50020 */   sw        $a1, 0x20($sp)
    /* BE59C 800AF5EC 8FA50020 */  lw         $a1, 0x20($sp)
    /* BE5A0 800AF5F0 8FA2001C */  lw         $v0, 0x1C($sp)
    /* BE5A4 800AF5F4 240F0002 */  addiu      $t7, $zero, 0x2
    /* BE5A8 800AF5F8 3C038015 */  lui        $v1, %hi(D_8014CFF1)
    /* BE5AC 800AF5FC 0005C040 */  sll        $t8, $a1, 1
    /* BE5B0 800AF600 00781821 */  addu       $v1, $v1, $t8
    /* BE5B4 800AF604 A04F0000 */  sb         $t7, 0x0($v0)
    /* BE5B8 800AF608 9063CFF1 */  lbu        $v1, %lo(D_8014CFF1)($v1)
    /* BE5BC 800AF60C 24010093 */  addiu      $at, $zero, 0x93
    /* BE5C0 800AF610 10610004 */  beq        $v1, $at, .L800AF624_BE5D4
    /* BE5C4 800AF614 00032400 */   sll       $a0, $v1, 16
    /* BE5C8 800AF618 0004CC03 */  sra        $t9, $a0, 16
    /* BE5CC 800AF61C 0C02BDD9 */  jal        func_800AF764_BE714
    /* BE5D0 800AF620 03202025 */   or        $a0, $t9, $zero
  .L800AF624_BE5D4:
    /* BE5D4 800AF624 8FBF0014 */  lw         $ra, 0x14($sp)
    /* BE5D8 800AF628 27BD0020 */  addiu      $sp, $sp, 0x20
    /* BE5DC 800AF62C 03E00008 */  jr         $ra
    /* BE5E0 800AF630 00000000 */   nop
endlabel func_800AF5B0_BE560
