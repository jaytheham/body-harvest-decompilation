nonmatching func_800B0830_BF7E0, 0xAC

glabel func_800B0830_BF7E0
    /* BF7E0 800B0830 3C028022 */  lui        $v0, %hi(D_80223778)
    /* BF7E4 800B0834 8C423778 */  lw         $v0, %lo(D_80223778)($v0)
    /* BF7E8 800B0838 00803025 */  or         $a2, $a0, $zero
    /* BF7EC 800B083C 3C0F8022 */  lui        $t7, %hi(D_80222A78)
    /* BF7F0 800B0840 00401825 */  or         $v1, $v0, $zero
    /* BF7F4 800B0844 10400023 */  beqz       $v0, .L800B08D4_BF884
    /* BF7F8 800B0848 2442FFFF */   addiu     $v0, $v0, -0x1
    /* BF7FC 800B084C 00027100 */  sll        $t6, $v0, 4
    /* BF800 800B0850 25EF2A78 */  addiu      $t7, $t7, %lo(D_80222A78)
    /* BF804 800B0854 3C05800B */  lui        $a1, %hi(func_800AFD48_BECF8)
    /* BF808 800B0858 3C0B8005 */  lui        $t3, %hi(D_80048038)
    /* BF80C 800B085C 3C088022 */  lui        $t0, %hi(D_80223780)
    /* BF810 800B0860 25083780 */  addiu      $t0, $t0, %lo(D_80223780)
    /* BF814 800B0864 256B8038 */  addiu      $t3, $t3, %lo(D_80048038)
    /* BF818 800B0868 24A5FD48 */  addiu      $a1, $a1, %lo(func_800AFD48_BECF8)
    /* BF81C 800B086C 01CF2021 */  addu       $a0, $t6, $t7
    /* BF820 800B0870 240A001F */  addiu      $t2, $zero, 0x1F
    /* BF824 800B0874 24090014 */  addiu      $t1, $zero, 0x14
  .L800B0878_BF828:
    /* BF828 800B0878 8C83000C */  lw         $v1, 0xC($a0)
    /* BF82C 800B087C 50A30004 */  beql       $a1, $v1, .L800B0890_BF840
    /* BF830 800B0880 90870009 */   lbu       $a3, 0x9($a0)
    /* BF834 800B0884 54600010 */  bnel       $v1, $zero, .L800B08C8_BF878
    /* BF838 800B0888 00401825 */   or        $v1, $v0, $zero
    /* BF83C 800B088C 90870009 */  lbu        $a3, 0x9($a0)
  .L800B0890_BF840:
    /* BF840 800B0890 00E90019 */  multu      $a3, $t1
    /* BF844 800B0894 0000C012 */  mflo       $t8
    /* BF848 800B0898 01181821 */  addu       $v1, $t0, $t8
    /* BF84C 800B089C 80790000 */  lb         $t9, 0x0($v1)
    /* BF850 800B08A0 55590009 */  bnel       $t2, $t9, .L800B08C8_BF878
    /* BF854 800B08A4 00401825 */   or        $v1, $v0, $zero
    /* BF858 800B08A8 906C0012 */  lbu        $t4, 0x12($v1)
    /* BF85C 800B08AC 01676821 */  addu       $t5, $t3, $a3
    /* BF860 800B08B0 0186082A */  slt        $at, $t4, $a2
    /* BF864 800B08B4 50200004 */  beql       $at, $zero, .L800B08C8_BF878
    /* BF868 800B08B8 00401825 */   or        $v1, $v0, $zero
    /* BF86C 800B08BC A0800000 */  sb         $zero, 0x0($a0)
    /* BF870 800B08C0 A1A00000 */  sb         $zero, 0x0($t5)
    /* BF874 800B08C4 00401825 */  or         $v1, $v0, $zero
  .L800B08C8_BF878:
    /* BF878 800B08C8 2484FFF0 */  addiu      $a0, $a0, -0x10
    /* BF87C 800B08CC 1440FFEA */  bnez       $v0, .L800B0878_BF828
    /* BF880 800B08D0 2442FFFF */   addiu     $v0, $v0, -0x1
  .L800B08D4_BF884:
    /* BF884 800B08D4 03E00008 */  jr         $ra
    /* BF888 800B08D8 00000000 */   nop
endlabel func_800B0830_BF7E0
