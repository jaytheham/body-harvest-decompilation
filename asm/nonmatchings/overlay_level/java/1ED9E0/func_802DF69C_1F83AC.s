nonmatching func_802DF69C_1F83AC, 0xEC

glabel func_802DF69C_1F83AC
    /* 1F83AC 802DF69C 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 1F83B0 802DF6A0 3C18802E */  lui        $t8, %hi(D_802E0CC4)
    /* 1F83B4 802DF6A4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1F83B8 802DF6A8 AFA40030 */  sw         $a0, 0x30($sp)
    /* 1F83BC 802DF6AC 27180CC4 */  addiu      $t8, $t8, %lo(D_802E0CC4)
    /* 1F83C0 802DF6B0 8F010000 */  lw         $at, 0x0($t8)
    /* 1F83C4 802DF6B4 27AF0028 */  addiu      $t7, $sp, 0x28
    /* 1F83C8 802DF6B8 3C0B802E */  lui        $t3, %hi(D_802E0CCC)
    /* 1F83CC 802DF6BC ADE10000 */  sw         $at, 0x0($t7)
    /* 1F83D0 802DF6C0 97010004 */  lhu        $at, 0x4($t8)
    /* 1F83D4 802DF6C4 256B0CCC */  addiu      $t3, $t3, %lo(D_802E0CCC)
    /* 1F83D8 802DF6C8 27AA0020 */  addiu      $t2, $sp, 0x20
    /* 1F83DC 802DF6CC A5E10004 */  sh         $at, 0x4($t7)
    /* 1F83E0 802DF6D0 8D610000 */  lw         $at, 0x0($t3)
    /* 1F83E4 802DF6D4 308E00FF */  andi       $t6, $a0, 0xFF
    /* 1F83E8 802DF6D8 000E4080 */  sll        $t0, $t6, 2
    /* 1F83EC 802DF6DC AD410000 */  sw         $at, 0x0($t2)
    /* 1F83F0 802DF6E0 95610004 */  lhu        $at, 0x4($t3)
    /* 1F83F4 802DF6E4 010E4021 */  addu       $t0, $t0, $t6
    /* 1F83F8 802DF6E8 00084100 */  sll        $t0, $t0, 4
    /* 1F83FC 802DF6EC 3C198005 */  lui        $t9, %hi(D_800481BD)
    /* 1F8400 802DF6F0 0328C821 */  addu       $t9, $t9, $t0
    /* 1F8404 802DF6F4 A5410004 */  sh         $at, 0x4($t2)
    /* 1F8408 802DF6F8 933981BD */  lbu        $t9, %lo(D_800481BD)($t9)
    /* 1F840C 802DF6FC 01C02025 */  or         $a0, $t6, $zero
    /* 1F8410 802DF700 A3AE0033 */  sb         $t6, 0x33($sp)
    /* 1F8414 802DF704 2405FF52 */  addiu      $a1, $zero, -0xAE
    /* 1F8418 802DF708 2406007E */  addiu      $a2, $zero, 0x7E
    /* 1F841C 802DF70C 24070183 */  addiu      $a3, $zero, 0x183
    /* 1F8420 802DF710 0C02A4E9 */  jal        func_800A93A4_B8354
    /* 1F8424 802DF714 A3B9001F */   sb        $t9, 0x1F($sp)
    /* 1F8428 802DF718 93AF001F */  lbu        $t7, 0x1F($sp)
    /* 1F842C 802DF71C 3C098005 */  lui        $t1, %hi(alienInstances)
    /* 1F8430 802DF720 25298198 */  addiu      $t1, $t1, %lo(alienInstances)
    /* 1F8434 802DF724 000FC080 */  sll        $t8, $t7, 2
    /* 1F8438 802DF728 030FC021 */  addu       $t8, $t8, $t7
    /* 1F843C 802DF72C 0018C100 */  sll        $t8, $t8, 4
    /* 1F8440 802DF730 03091021 */  addu       $v0, $t8, $t1
    /* 1F8444 802DF734 904D0024 */  lbu        $t5, 0x24($v0)
    /* 1F8448 802DF738 93A40033 */  lbu        $a0, 0x33($sp)
    /* 1F844C 802DF73C 27A50028 */  addiu      $a1, $sp, 0x28
    /* 1F8450 802DF740 11A0000B */  beqz       $t5, .L802DF770_1F8480
    /* 1F8454 802DF744 00000000 */   nop
    /* 1F8458 802DF748 844C002C */  lh         $t4, 0x2C($v0)
    /* 1F845C 802DF74C 2406E000 */  addiu      $a2, $zero, -0x2000
    /* 1F8460 802DF750 2407F000 */  addiu      $a3, $zero, -0x1000
    /* 1F8464 802DF754 298100A0 */  slti       $at, $t4, 0xA0
    /* 1F8468 802DF758 10200005 */  beqz       $at, .L802DF770_1F8480
    /* 1F846C 802DF75C 00000000 */   nop
    /* 1F8470 802DF760 0C0B7BF0 */  jal        func_802DEFC0_1F7CD0
    /* 1F8474 802DF764 24052328 */   addiu     $a1, $zero, 0x2328
    /* 1F8478 802DF768 10000004 */  b          .L802DF77C_1F848C
    /* 1F847C 802DF76C 8FBF0014 */   lw        $ra, 0x14($sp)
  .L802DF770_1F8480:
    /* 1F8480 802DF770 0C0B7CF0 */  jal        func_802DF3C0_1F80D0
    /* 1F8484 802DF774 27A60020 */   addiu     $a2, $sp, 0x20
    /* 1F8488 802DF778 8FBF0014 */  lw         $ra, 0x14($sp)
  .L802DF77C_1F848C:
    /* 1F848C 802DF77C 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 1F8490 802DF780 03E00008 */  jr         $ra
    /* 1F8494 802DF784 00000000 */   nop
endlabel func_802DF69C_1F83AC
