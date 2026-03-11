nonmatching func_800E360C_F25BC, 0x12C

glabel func_800E360C_F25BC
    /* F25BC 800E360C 3C038006 */  lui        $v1, %hi(D_8005BB2C)
    /* F25C0 800E3610 2463BB2C */  addiu      $v1, $v1, %lo(D_8005BB2C)
    /* F25C4 800E3614 8C620000 */  lw         $v0, 0x0($v1)
    /* F25C8 800E3618 3C0CE700 */  lui        $t4, (0xE7000000 >> 16)
    /* F25CC 800E361C 3C190001 */  lui        $t9, (0x10001 >> 16)
    /* F25D0 800E3620 244E0008 */  addiu      $t6, $v0, 0x8
    /* F25D4 800E3624 AC6E0000 */  sw         $t6, 0x0($v1)
    /* F25D8 800E3628 AC400004 */  sw         $zero, 0x4($v0)
    /* F25DC 800E362C AC4C0000 */  sw         $t4, 0x0($v0)
    /* F25E0 800E3630 8C620000 */  lw         $v0, 0x0($v1)
    /* F25E4 800E3634 37390001 */  ori        $t9, $t9, (0x10001 & 0xFFFF)
    /* F25E8 800E3638 3C18B600 */  lui        $t8, (0xB6000000 >> 16)
    /* F25EC 800E363C 244F0008 */  addiu      $t7, $v0, 0x8
    /* F25F0 800E3640 AC6F0000 */  sw         $t7, 0x0($v1)
    /* F25F4 800E3644 AC590004 */  sw         $t9, 0x4($v0)
    /* F25F8 800E3648 AC580000 */  sw         $t8, 0x0($v0)
    /* F25FC 800E364C 8C620000 */  lw         $v0, 0x0($v1)
    /* F2600 800E3650 3C180050 */  lui        $t8, (0x5041C8 >> 16)
    /* F2604 800E3654 3C0FB900 */  lui        $t7, (0xB900031D >> 16)
    /* F2608 800E3658 244E0008 */  addiu      $t6, $v0, 0x8
    /* F260C 800E365C AC6E0000 */  sw         $t6, 0x0($v1)
    /* F2610 800E3660 35EF031D */  ori        $t7, $t7, (0xB900031D & 0xFFFF)
    /* F2614 800E3664 371841C8 */  ori        $t8, $t8, (0x5041C8 & 0xFFFF)
    /* F2618 800E3668 AC580004 */  sw         $t8, 0x4($v0)
    /* F261C 800E366C AC4F0000 */  sw         $t7, 0x0($v0)
    /* F2620 800E3670 8C620000 */  lw         $v0, 0x0($v1)
    /* F2624 800E3674 3C0EBA00 */  lui        $t6, (0xBA000E02 >> 16)
    /* F2628 800E3678 35CE0E02 */  ori        $t6, $t6, (0xBA000E02 & 0xFFFF)
    /* F262C 800E367C 24590008 */  addiu      $t9, $v0, 0x8
    /* F2630 800E3680 AC790000 */  sw         $t9, 0x0($v1)
    /* F2634 800E3684 AC400004 */  sw         $zero, 0x4($v0)
    /* F2638 800E3688 AC4E0000 */  sw         $t6, 0x0($v0)
    /* F263C 800E368C 8C620000 */  lw         $v0, 0x0($v1)
    /* F2640 800E3690 3C19FFFD */  lui        $t9, (0xFFFDF6FB >> 16)
    /* F2644 800E3694 3C18FCFF */  lui        $t8, (0xFCFFFFFF >> 16)
    /* F2648 800E3698 244F0008 */  addiu      $t7, $v0, 0x8
    /* F264C 800E369C AC6F0000 */  sw         $t7, 0x0($v1)
    /* F2650 800E36A0 3718FFFF */  ori        $t8, $t8, (0xFCFFFFFF & 0xFFFF)
    /* F2654 800E36A4 3739F6FB */  ori        $t9, $t9, (0xFFFDF6FB & 0xFFFF)
    /* F2658 800E36A8 AC590004 */  sw         $t9, 0x4($v0)
    /* F265C 800E36AC AC580000 */  sw         $t8, 0x0($v0)
    /* F2660 800E36B0 8C620000 */  lw         $v0, 0x0($v1)
    /* F2664 800E36B4 3C0D8014 */  lui        $t5, %hi(D_8013E344)
    /* F2668 800E36B8 3C0FFA00 */  lui        $t7, (0xFA000000 >> 16)
    /* F266C 800E36BC 244E0008 */  addiu      $t6, $v0, 0x8
    /* F2670 800E36C0 AC6E0000 */  sw         $t6, 0x0($v1)
    /* F2674 800E36C4 25ADE344 */  addiu      $t5, $t5, %lo(D_8013E344)
    /* F2678 800E36C8 AC4F0000 */  sw         $t7, 0x0($v0)
    /* F267C 800E36CC 91B90000 */  lbu        $t9, 0x0($t5)
    /* F2680 800E36D0 2401FF00 */  addiu      $at, $zero, -0x100
    /* F2684 800E36D4 03217025 */  or         $t6, $t9, $at
    /* F2688 800E36D8 AC4E0004 */  sw         $t6, 0x4($v0)
    /* F268C 800E36DC 8C620000 */  lw         $v0, 0x0($v1)
    /* F2690 800E36E0 3C198007 */  lui        $t9, %hi(D_80068084)
    /* F2694 800E36E4 3C01F600 */  lui        $at, (0xF6000000 >> 16)
    /* F2698 800E36E8 244F0008 */  addiu      $t7, $v0, 0x8
    /* F269C 800E36EC AC6F0000 */  sw         $t7, 0x0($v1)
    /* F26A0 800E36F0 AC400004 */  sw         $zero, 0x4($v0)
    /* F26A4 800E36F4 AC4C0000 */  sw         $t4, 0x0($v0)
    /* F26A8 800E36F8 8C620000 */  lw         $v0, 0x0($v1)
    /* F26AC 800E36FC 24580008 */  addiu      $t8, $v0, 0x8
    /* F26B0 800E3700 AC780000 */  sw         $t8, 0x0($v1)
    /* F26B4 800E3704 8F398084 */  lw         $t9, %lo(D_80068084)($t9)
    /* F26B8 800E3708 332E03FF */  andi       $t6, $t9, 0x3FF
    /* F26BC 800E370C 3C198007 */  lui        $t9, %hi(D_80068088)
    /* F26C0 800E3710 8F398088 */  lw         $t9, %lo(D_80068088)($t9)
    /* F26C4 800E3714 000E7B80 */  sll        $t7, $t6, 14
    /* F26C8 800E3718 01E1C025 */  or         $t8, $t7, $at
    /* F26CC 800E371C 332E03FF */  andi       $t6, $t9, 0x3FF
    /* F26D0 800E3720 000E7880 */  sll        $t7, $t6, 2
    /* F26D4 800E3724 030FC825 */  or         $t9, $t8, $t7
    /* F26D8 800E3728 AC590000 */  sw         $t9, 0x0($v0)
    /* F26DC 800E372C AC400004 */  sw         $zero, 0x4($v0)
    /* F26E0 800E3730 03E00008 */  jr         $ra
    /* F26E4 800E3734 A1A00000 */   sb        $zero, 0x0($t5)
endlabel func_800E360C_F25BC
