nonmatching func_802DEE40_25E580, 0x94

glabel func_802DEE40_25E580
    /* 25E580 802DEE40 308E00FF */  andi       $t6, $a0, 0xFF
    /* 25E584 802DEE44 000E7880 */  sll        $t7, $t6, 2
    /* 25E588 802DEE48 01EE7821 */  addu       $t7, $t7, $t6
    /* 25E58C 802DEE4C 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 25E590 802DEE50 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 25E594 802DEE54 000F7900 */  sll        $t7, $t7, 4
    /* 25E598 802DEE58 01F81021 */  addu       $v0, $t7, $t8
    /* 25E59C 802DEE5C 8C590020 */  lw         $t9, 0x20($v0)
    /* 25E5A0 802DEE60 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 25E5A4 802DEE64 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 25E5A8 802DEE68 001942C0 */  sll        $t0, $t9, 11
    /* 25E5AC 802DEE6C 05000014 */  bltz       $t0, .L802DEEC0_25E600
    /* 25E5B0 802DEE70 AFA40028 */   sw        $a0, 0x28($sp)
    /* 25E5B4 802DEE74 9049001A */  lbu        $t1, 0x1A($v0)
    /* 25E5B8 802DEE78 3C078025 */  lui        $a3, %hi(D_8025668C)
    /* 25E5BC 802DEE7C 240D0002 */  addiu      $t5, $zero, 0x2
    /* 25E5C0 802DEE80 00095080 */  sll        $t2, $t1, 2
    /* 25E5C4 802DEE84 01495023 */  subu       $t2, $t2, $t1
    /* 25E5C8 802DEE88 000A5080 */  sll        $t2, $t2, 2
    /* 25E5CC 802DEE8C 01495021 */  addu       $t2, $t2, $t1
    /* 25E5D0 802DEE90 000A50C0 */  sll        $t2, $t2, 3
    /* 25E5D4 802DEE94 00EA3821 */  addu       $a3, $a3, $t2
    /* 25E5D8 802DEE98 84E7668C */  lh         $a3, %lo(D_8025668C)($a3)
    /* 25E5DC 802DEE9C AFAD0010 */  sw         $t5, 0x10($sp)
    /* 25E5E0 802DEEA0 84440000 */  lh         $a0, 0x0($v0)
    /* 25E5E4 802DEEA4 00075840 */  sll        $t3, $a3, 1
    /* 25E5E8 802DEEA8 3167FFFF */  andi       $a3, $t3, 0xFFFF
    /* 25E5EC 802DEEAC 84450002 */  lh         $a1, 0x2($v0)
    /* 25E5F0 802DEEB0 84460004 */  lh         $a2, 0x4($v0)
    /* 25E5F4 802DEEB4 0C037E12 */  jal        func_800DF848_EE7F8
    /* 25E5F8 802DEEB8 AFA20020 */   sw        $v0, 0x20($sp)
    /* 25E5FC 802DEEBC 8FA20020 */  lw         $v0, 0x20($sp)
  .L802DEEC0_25E600:
    /* 25E600 802DEEC0 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 25E604 802DEEC4 A440002C */  sh         $zero, 0x2C($v0)
    /* 25E608 802DEEC8 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 25E60C 802DEECC 03E00008 */  jr         $ra
    /* 25E610 802DEED0 00000000 */   nop
endlabel func_802DEE40_25E580
