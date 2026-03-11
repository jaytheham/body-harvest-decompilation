nonmatching func_802D95F8_31D748, 0x60

glabel func_802D95F8_31D748
    /* 31D748 802D95F8 308600FF */  andi       $a2, $a0, 0xFF
    /* 31D74C 802D95FC 00067080 */  sll        $t6, $a2, 2
    /* 31D750 802D9600 01C67021 */  addu       $t6, $t6, $a2
    /* 31D754 802D9604 3C0F8005 */  lui        $t7, %hi(alienInstances)
    /* 31D758 802D9608 25EF8198 */  addiu      $t7, $t7, %lo(alienInstances)
    /* 31D75C 802D960C 000E7100 */  sll        $t6, $t6, 4
    /* 31D760 802D9610 01CF1021 */  addu       $v0, $t6, $t7
    /* 31D764 802D9614 8C580020 */  lw         $t8, 0x20($v0)
    /* 31D768 802D9618 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 31D76C 802D961C 2401FFEF */  addiu      $at, $zero, -0x11
    /* 31D770 802D9620 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 31D774 802D9624 AFA40018 */  sw         $a0, 0x18($sp)
    /* 31D778 802D9628 0301C824 */  and        $t9, $t8, $at
    /* 31D77C 802D962C AC590020 */  sw         $t9, 0x20($v0)
    /* 31D780 802D9630 A3A6001B */  sb         $a2, 0x1B($sp)
    /* 31D784 802D9634 00C02025 */  or         $a0, $a2, $zero
    /* 31D788 802D9638 0C04DD1A */  jal        func_80137468_146418
    /* 31D78C 802D963C 240501FB */   addiu     $a1, $zero, 0x1FB
    /* 31D790 802D9640 0C021CD7 */  jal        func_8008735C_9630C
    /* 31D794 802D9644 93A4001B */   lbu       $a0, 0x1B($sp)
    /* 31D798 802D9648 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 31D79C 802D964C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 31D7A0 802D9650 03E00008 */  jr         $ra
    /* 31D7A4 802D9654 00000000 */   nop
endlabel func_802D95F8_31D748
