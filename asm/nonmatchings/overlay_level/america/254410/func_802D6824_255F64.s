nonmatching func_802D6824_255F64, 0x6C

glabel func_802D6824_255F64
    /* 255F64 802D6824 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 255F68 802D6828 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 255F6C 802D682C AFA40018 */  sw         $a0, 0x18($sp)
    /* 255F70 802D6830 308600FF */  andi       $a2, $a0, 0xFF
    /* 255F74 802D6834 00C02025 */  or         $a0, $a2, $zero
    /* 255F78 802D6838 A3A6001B */  sb         $a2, 0x1B($sp)
    /* 255F7C 802D683C 0C04DD1A */  jal        func_80137468_146418
    /* 255F80 802D6840 2405001C */   addiu     $a1, $zero, 0x1C
    /* 255F84 802D6844 93A6001B */  lbu        $a2, 0x1B($sp)
    /* 255F88 802D6848 3C0F8005 */  lui        $t7, %hi(alienInstances)
    /* 255F8C 802D684C 25EF8198 */  addiu      $t7, $t7, %lo(alienInstances)
    /* 255F90 802D6850 00067080 */  sll        $t6, $a2, 2
    /* 255F94 802D6854 01C67021 */  addu       $t6, $t6, $a2
    /* 255F98 802D6858 000E7100 */  sll        $t6, $t6, 4
    /* 255F9C 802D685C 01CF1021 */  addu       $v0, $t6, $t7
    /* 255FA0 802D6860 8C590020 */  lw         $t9, 0x20($v0)
    /* 255FA4 802D6864 8458000E */  lh         $t8, 0xE($v0)
    /* 255FA8 802D6868 2401FFEF */  addiu      $at, $zero, -0x11
    /* 255FAC 802D686C 03214024 */  and        $t0, $t9, $at
    /* 255FB0 802D6870 AC480020 */  sw         $t0, 0x20($v0)
    /* 255FB4 802D6874 30C400FF */  andi       $a0, $a2, 0xFF
    /* 255FB8 802D6878 0C0201DB */  jal        func_8008076C_8F71C
    /* 255FBC 802D687C A4580006 */   sh        $t8, 0x6($v0)
    /* 255FC0 802D6880 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 255FC4 802D6884 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 255FC8 802D6888 03E00008 */  jr         $ra
    /* 255FCC 802D688C 00000000 */   nop
endlabel func_802D6824_255F64
