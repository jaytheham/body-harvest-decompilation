nonmatching func_800AF634_BE5E4, 0x130

glabel func_800AF634_BE5E4
    /* BE5E4 800AF634 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* BE5E8 800AF638 AFBF0014 */  sw         $ra, 0x14($sp)
    /* BE5EC 800AF63C AFA40028 */  sw         $a0, 0x28($sp)
    /* BE5F0 800AF640 90830008 */  lbu        $v1, 0x8($a0)
    /* BE5F4 800AF644 3C188005 */  lui        $t8, %hi(alienInstances)
    /* BE5F8 800AF648 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* BE5FC 800AF64C 00037880 */  sll        $t7, $v1, 2
    /* BE600 800AF650 01E37821 */  addu       $t7, $t7, $v1
    /* BE604 800AF654 000F7900 */  sll        $t7, $t7, 4
    /* BE608 800AF658 01F81021 */  addu       $v0, $t7, $t8
    /* BE60C 800AF65C 3C048014 */  lui        $a0, %hi(D_80142C00)
    /* BE610 800AF660 24842C00 */  addiu      $a0, $a0, %lo(D_80142C00)
    /* BE614 800AF664 9045003E */  lbu        $a1, 0x3E($v0)
    /* BE618 800AF668 0C00731B */  jal        osSyncPrintf
    /* BE61C 800AF66C AFA20018 */   sw        $v0, 0x18($sp)
    /* BE620 800AF670 8FA20018 */  lw         $v0, 0x18($sp)
    /* BE624 800AF674 24010019 */  addiu      $at, $zero, 0x19
    /* BE628 800AF678 3C0B8005 */  lui        $t3, %hi(alienInstances)
    /* BE62C 800AF67C 9059001A */  lbu        $t9, 0x1A($v0)
    /* BE630 800AF680 57210035 */  bnel       $t9, $at, .L800AF758_BE708
    /* BE634 800AF684 8FBF0014 */   lw        $ra, 0x14($sp)
    /* BE638 800AF688 90490025 */  lbu        $t1, 0x25($v0)
    /* BE63C 800AF68C 904C003E */  lbu        $t4, 0x3E($v0)
    /* BE640 800AF690 256B8198 */  addiu      $t3, $t3, %lo(alienInstances)
    /* BE644 800AF694 00095080 */  sll        $t2, $t1, 2
    /* BE648 800AF698 01495021 */  addu       $t2, $t2, $t1
    /* BE64C 800AF69C 000A5100 */  sll        $t2, $t2, 4
    /* BE650 800AF6A0 014B3821 */  addu       $a3, $t2, $t3
    /* BE654 800AF6A4 AFAC001C */  sw         $t4, 0x1C($sp)
    /* BE658 800AF6A8 8CE30020 */  lw         $v1, 0x20($a3)
    /* BE65C 800AF6AC 000C7880 */  sll        $t7, $t4, 2
    /* BE660 800AF6B0 01EC7821 */  addu       $t7, $t7, $t4
    /* BE664 800AF6B4 306D4000 */  andi       $t5, $v1, 0x4000
    /* BE668 800AF6B8 11A00010 */  beqz       $t5, .L800AF6FC_BE6AC
    /* BE66C 800AF6BC 000F7880 */   sll       $t7, $t7, 2
    /* BE670 800AF6C0 3C088022 */  lui        $t0, %hi(D_8022378E)
    /* BE674 800AF6C4 010F4021 */  addu       $t0, $t0, $t7
    /* BE678 800AF6C8 9108378E */  lbu        $t0, %lo(D_8022378E)($t0)
    /* BE67C 800AF6CC 01802025 */  or         $a0, $t4, $zero
    /* BE680 800AF6D0 1100000A */  beqz       $t0, .L800AF6FC_BE6AC
    /* BE684 800AF6D4 00082880 */   sll       $a1, $t0, 2
    /* BE688 800AF6D8 00A82823 */  subu       $a1, $a1, $t0
    /* BE68C 800AF6DC 000528C0 */  sll        $a1, $a1, 3
    /* BE690 800AF6E0 00A82821 */  addu       $a1, $a1, $t0
    /* BE694 800AF6E4 000528C0 */  sll        $a1, $a1, 3
    /* BE698 800AF6E8 8046003D */  lb         $a2, 0x3D($v0)
    /* BE69C 800AF6EC 0C02BD29 */  jal        func_800AF4A4_BE454
    /* BE6A0 800AF6F0 AFA70020 */   sw        $a3, 0x20($sp)
    /* BE6A4 800AF6F4 8FA70020 */  lw         $a3, 0x20($sp)
    /* BE6A8 800AF6F8 8CE30020 */  lw         $v1, 0x20($a3)
  .L800AF6FC_BE6AC:
    /* BE6AC 800AF6FC 30788000 */  andi       $t8, $v1, 0x8000
    /* BE6B0 800AF700 13000012 */  beqz       $t8, .L800AF74C_BE6FC
    /* BE6B4 800AF704 8FAC0028 */   lw        $t4, 0x28($sp)
    /* BE6B8 800AF708 8FA9001C */  lw         $t1, 0x1C($sp)
    /* BE6BC 800AF70C 8FB90028 */  lw         $t9, 0x28($sp)
    /* BE6C0 800AF710 3C0B8022 */  lui        $t3, %hi(D_80223780)
    /* BE6C4 800AF714 00095080 */  sll        $t2, $t1, 2
    /* BE6C8 800AF718 01495021 */  addu       $t2, $t2, $t1
    /* BE6CC 800AF71C 000A5080 */  sll        $t2, $t2, 2
    /* BE6D0 800AF720 256B3780 */  addiu      $t3, $t3, %lo(D_80223780)
    /* BE6D4 800AF724 014B1021 */  addu       $v0, $t2, $t3
    /* BE6D8 800AF728 93240009 */  lbu        $a0, 0x9($t9)
    /* BE6DC 800AF72C 0C02BD6C */  jal        func_800AF5B0_BE560
    /* BE6E0 800AF730 AFA20018 */   sw        $v0, 0x18($sp)
    /* BE6E4 800AF734 8FA20018 */  lw         $v0, 0x18($sp)
    /* BE6E8 800AF738 84440002 */  lh         $a0, 0x2($v0)
    /* BE6EC 800AF73C 0C02BEE9 */  jal        func_800AFBA4_BEB54
    /* BE6F0 800AF740 84450004 */   lh        $a1, 0x4($v0)
    /* BE6F4 800AF744 10000004 */  b          .L800AF758_BE708
    /* BE6F8 800AF748 8FBF0014 */   lw        $ra, 0x14($sp)
  .L800AF74C_BE6FC:
    /* BE6FC 800AF74C 0C02BD4B */  jal        func_800AF52C_BE4DC
    /* BE700 800AF750 91840009 */   lbu       $a0, 0x9($t4)
    /* BE704 800AF754 8FBF0014 */  lw         $ra, 0x14($sp)
  .L800AF758_BE708:
    /* BE708 800AF758 27BD0028 */  addiu      $sp, $sp, 0x28
    /* BE70C 800AF75C 03E00008 */  jr         $ra
    /* BE710 800AF760 00000000 */   nop
endlabel func_800AF634_BE5E4
