nonmatching func_802D897C_31CACC, 0x74

glabel func_802D897C_31CACC
    /* 31CACC 802D897C 308600FF */  andi       $a2, $a0, 0xFF
    /* 31CAD0 802D8980 00067080 */  sll        $t6, $a2, 2
    /* 31CAD4 802D8984 01C67021 */  addu       $t6, $t6, $a2
    /* 31CAD8 802D8988 3C0F8005 */  lui        $t7, %hi(alienInstances)
    /* 31CADC 802D898C 25EF8198 */  addiu      $t7, $t7, %lo(alienInstances)
    /* 31CAE0 802D8990 000E7100 */  sll        $t6, $t6, 4
    /* 31CAE4 802D8994 01CF1021 */  addu       $v0, $t6, $t7
    /* 31CAE8 802D8998 8C580020 */  lw         $t8, 0x20($v0)
    /* 31CAEC 802D899C 904A0047 */  lbu        $t2, 0x47($v0)
    /* 31CAF0 802D89A0 2401F7AF */  addiu      $at, $zero, -0x851
    /* 31CAF4 802D89A4 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 31CAF8 802D89A8 0301C824 */  and        $t9, $t8, $at
    /* 31CAFC 802D89AC AFBF0014 */  sw         $ra, 0x14($sp)
    /* 31CB00 802D89B0 AFA40018 */  sw         $a0, 0x18($sp)
    /* 31CB04 802D89B4 AC590020 */  sw         $t9, 0x20($v0)
    /* 31CB08 802D89B8 37290100 */  ori        $t1, $t9, 0x100
    /* 31CB0C 802D89BC 314BFFFE */  andi       $t3, $t2, 0xFFFE
    /* 31CB10 802D89C0 AC490020 */  sw         $t1, 0x20($v0)
    /* 31CB14 802D89C4 A04B0047 */  sb         $t3, 0x47($v0)
    /* 31CB18 802D89C8 A3A6001B */  sb         $a2, 0x1B($sp)
    /* 31CB1C 802D89CC 0C021CD7 */  jal        func_8008735C_9630C
    /* 31CB20 802D89D0 30C400FF */   andi      $a0, $a2, 0xFF
    /* 31CB24 802D89D4 93A4001B */  lbu        $a0, 0x1B($sp)
    /* 31CB28 802D89D8 0C04DD1A */  jal        func_80137468_146418
    /* 31CB2C 802D89DC 24050266 */   addiu     $a1, $zero, 0x266
    /* 31CB30 802D89E0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 31CB34 802D89E4 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 31CB38 802D89E8 03E00008 */  jr         $ra
    /* 31CB3C 802D89EC 00000000 */   nop
endlabel func_802D897C_31CACC
