nonmatching func_802DC7FC_25BF3C, 0x84

glabel func_802DC7FC_25BF3C
    /* 25BF3C 802DC7FC 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 25BF40 802DC800 3C0F802E */  lui        $t7, %hi(D_802E09A4)
    /* 25BF44 802DC804 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 25BF48 802DC808 AFA40028 */  sw         $a0, 0x28($sp)
    /* 25BF4C 802DC80C 25EF09A4 */  addiu      $t7, $t7, %lo(D_802E09A4)
    /* 25BF50 802DC810 8DE10000 */  lw         $at, 0x0($t7)
    /* 25BF54 802DC814 27AE0020 */  addiu      $t6, $sp, 0x20
    /* 25BF58 802DC818 308500FF */  andi       $a1, $a0, 0xFF
    /* 25BF5C 802DC81C ADC10000 */  sw         $at, 0x0($t6)
    /* 25BF60 802DC820 95E10004 */  lhu        $at, 0x4($t7)
    /* 25BF64 802DC824 00054880 */  sll        $t1, $a1, 2
    /* 25BF68 802DC828 01254821 */  addu       $t1, $t1, $a1
    /* 25BF6C 802DC82C 00094900 */  sll        $t1, $t1, 4
    /* 25BF70 802DC830 3C0A8005 */  lui        $t2, %hi(D_800481C4)
    /* 25BF74 802DC834 01495021 */  addu       $t2, $t2, $t1
    /* 25BF78 802DC838 A5C10004 */  sh         $at, 0x4($t6)
    /* 25BF7C 802DC83C 854A81C4 */  lh         $t2, %lo(D_800481C4)($t2)
    /* 25BF80 802DC840 3C040E02 */  lui        $a0, %hi(D_E020FF0)
    /* 25BF84 802DC844 24840FF0 */  addiu      $a0, $a0, %lo(D_E020FF0)
    /* 25BF88 802DC848 000A5880 */  sll        $t3, $t2, 2
    /* 25BF8C 802DC84C 016A5823 */  subu       $t3, $t3, $t2
    /* 25BF90 802DC850 256C0080 */  addiu      $t4, $t3, 0x80
    /* 25BF94 802DC854 0C0047E4 */  jal        func_80011F90_12B90
    /* 25BF98 802DC858 A7AC0022 */   sh        $t4, 0x22($sp)
    /* 25BF9C 802DC85C 00002025 */  or         $a0, $zero, $zero
    /* 25BFA0 802DC860 00002825 */  or         $a1, $zero, $zero
    /* 25BFA4 802DC864 27A60020 */  addiu      $a2, $sp, 0x20
    /* 25BFA8 802DC868 0C000E74 */  jal        func_800039D0_45D0
    /* 25BFAC 802DC86C 00403825 */   or        $a3, $v0, $zero
    /* 25BFB0 802DC870 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 25BFB4 802DC874 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 25BFB8 802DC878 03E00008 */  jr         $ra
    /* 25BFBC 802DC87C 00000000 */   nop
endlabel func_802DC7FC_25BF3C
