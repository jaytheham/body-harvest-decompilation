nonmatching func_802D6670_31A7C0, 0x100

glabel func_802D6670_31A7C0
    /* 31A7C0 802D6670 3C03802E */  lui        $v1, %hi(D_802E7C40)
    /* 31A7C4 802D6674 24637C40 */  addiu      $v1, $v1, %lo(D_802E7C40)
    /* 31A7C8 802D6678 846E0000 */  lh         $t6, 0x0($v1)
    /* 31A7CC 802D667C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 31A7D0 802D6680 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 31A7D4 802D6684 25CF0001 */  addiu      $t7, $t6, 0x1
    /* 31A7D8 802D6688 A46F0000 */  sh         $t7, 0x0($v1)
    /* 31A7DC 802D668C 3C04802E */  lui        $a0, %hi(D_802E7A78)
    /* 31A7E0 802D6690 24847A78 */  addiu      $a0, $a0, %lo(D_802E7A78)
    /* 31A7E4 802D6694 0C00731B */  jal        osSyncPrintf
    /* 31A7E8 802D6698 84650000 */   lh        $a1, 0x0($v1)
    /* 31A7EC 802D669C 3C03802E */  lui        $v1, %hi(D_802E7C40)
    /* 31A7F0 802D66A0 24637C40 */  addiu      $v1, $v1, %lo(D_802E7C40)
    /* 31A7F4 802D66A4 84620000 */  lh         $v0, 0x0($v1)
    /* 31A7F8 802D66A8 1840000E */  blez       $v0, .L802D66E4_31A834
    /* 31A7FC 802D66AC 28410006 */   slti      $at, $v0, 0x6
    /* 31A800 802D66B0 1020000C */  beqz       $at, .L802D66E4_31A834
    /* 31A804 802D66B4 0002C080 */   sll       $t8, $v0, 2
    /* 31A808 802D66B8 0302C023 */  subu       $t8, $t8, $v0
    /* 31A80C 802D66BC 0018C0C0 */  sll        $t8, $t8, 3
    /* 31A810 802D66C0 0302C021 */  addu       $t8, $t8, $v0
    /* 31A814 802D66C4 0018C040 */  sll        $t8, $t8, 1
    /* 31A818 802D66C8 241900FF */  addiu      $t9, $zero, 0xFF
    /* 31A81C 802D66CC 03382023 */  subu       $a0, $t9, $t8
    /* 31A820 802D66D0 308800FF */  andi       $t0, $a0, 0xFF
    /* 31A824 802D66D4 0C038D78 */  jal        func_800E35E0_F2590
    /* 31A828 802D66D8 01002025 */   or        $a0, $t0, $zero
    /* 31A82C 802D66DC 3C02802E */  lui        $v0, %hi(D_802E7C40)
    /* 31A830 802D66E0 84427C40 */  lh         $v0, %lo(D_802E7C40)($v0)
  .L802D66E4_31A834:
    /* 31A834 802D66E4 24010001 */  addiu      $at, $zero, 0x1
    /* 31A838 802D66E8 54410019 */  bnel       $v0, $at, .L802D6750_31A8A0
    /* 31A83C 802D66EC 2401000A */   addiu     $at, $zero, 0xA
    /* 31A840 802D66F0 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* 31A844 802D66F4 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* 31A848 802D66F8 84440000 */  lh         $a0, 0x0($v0)
    /* 31A84C 802D66FC 0C04564B */  jal        func_8011592C_1248DC
    /* 31A850 802D6700 84450004 */   lh        $a1, 0x4($v0)
    /* 31A854 802D6704 3C098005 */  lui        $t1, %hi(D_80052B34)
    /* 31A858 802D6708 8D292B34 */  lw         $t1, %lo(D_80052B34)($t1)
    /* 31A85C 802D670C 3C0B8014 */  lui        $t3, %hi(D_8013FD78)
    /* 31A860 802D6710 8D6BFD78 */  lw         $t3, %lo(D_8013FD78)($t3)
    /* 31A864 802D6714 852A0006 */  lh         $t2, 0x6($t1)
    /* 31A868 802D6718 00002025 */  or         $a0, $zero, $zero
    /* 31A86C 802D671C 24050072 */  addiu      $a1, $zero, 0x72
    /* 31A870 802D6720 0C03F544 */  jal        func_800FD510_10C4C0
    /* 31A874 802D6724 A56A0006 */   sh        $t2, 0x6($t3)
    /* 31A878 802D6728 0C03F70C */  jal        func_800FDC30_10CBE0
    /* 31A87C 802D672C 00002025 */   or        $a0, $zero, $zero
    /* 31A880 802D6730 240C0001 */  addiu      $t4, $zero, 0x1
    /* 31A884 802D6734 3C018015 */  lui        $at, %hi(D_801493E0)
    /* 31A888 802D6738 A42C93E0 */  sh         $t4, %lo(D_801493E0)($at)
    /* 31A88C 802D673C 0C0054F6 */  jal        func_800153D8_15FD8
    /* 31A890 802D6740 240400D7 */   addiu     $a0, $zero, 0xD7
    /* 31A894 802D6744 3C02802E */  lui        $v0, %hi(D_802E7C40)
    /* 31A898 802D6748 84427C40 */  lh         $v0, %lo(D_802E7C40)($v0)
    /* 31A89C 802D674C 2401000A */  addiu      $at, $zero, 0xA
  .L802D6750_31A8A0:
    /* 31A8A0 802D6750 14410003 */  bne        $v0, $at, .L802D6760_31A8B0
    /* 31A8A4 802D6754 3C04802D */   lui       $a0, %hi(func_802D6670_31A7C0)
    /* 31A8A8 802D6758 0C001D2F */  jal        func_800074BC_80BC
    /* 31A8AC 802D675C 24846670 */   addiu     $a0, $a0, %lo(func_802D6670_31A7C0)
  .L802D6760_31A8B0:
    /* 31A8B0 802D6760 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 31A8B4 802D6764 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 31A8B8 802D6768 03E00008 */  jr         $ra
    /* 31A8BC 802D676C 00000000 */   nop
endlabel func_802D6670_31A7C0
