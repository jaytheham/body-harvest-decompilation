nonmatching func_802DC874_3209C4, 0x80

glabel func_802DC874_3209C4
    /* 3209C4 802DC874 308E00FF */  andi       $t6, $a0, 0xFF
    /* 3209C8 802DC878 000E7880 */  sll        $t7, $t6, 2
    /* 3209CC 802DC87C 01EE7821 */  addu       $t7, $t7, $t6
    /* 3209D0 802DC880 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 3209D4 802DC884 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 3209D8 802DC888 000F7900 */  sll        $t7, $t7, 4
    /* 3209DC 802DC88C 01F81021 */  addu       $v0, $t7, $t8
    /* 3209E0 802DC890 84430000 */  lh         $v1, 0x0($v0)
    /* 3209E4 802DC894 AFA40000 */  sw         $a0, 0x0($sp)
    /* 3209E8 802DC898 2861B800 */  slti       $at, $v1, -0x4800
    /* 3209EC 802DC89C 50200004 */  beql       $at, $zero, .L802DC8B0_320A00
    /* 3209F0 802DC8A0 2861CC01 */   slti      $at, $v1, -0x33FF
    /* 3209F4 802DC8A4 03E00008 */  jr         $ra
    /* 3209F8 802DC8A8 00001025 */   or        $v0, $zero, $zero
    /* 3209FC 802DC8AC 2861CC01 */  slti       $at, $v1, -0x33FF
  .L802DC8B0_320A00:
    /* 320A00 802DC8B0 54200004 */  bnel       $at, $zero, .L802DC8C4_320A14
    /* 320A04 802DC8B4 84430004 */   lh        $v1, 0x4($v0)
    /* 320A08 802DC8B8 03E00008 */  jr         $ra
    /* 320A0C 802DC8BC 00001025 */   or        $v0, $zero, $zero
    /* 320A10 802DC8C0 84430004 */  lh         $v1, 0x4($v0)
  .L802DC8C4_320A14:
    /* 320A14 802DC8C4 2861F500 */  slti       $at, $v1, -0xB00
    /* 320A18 802DC8C8 50200004 */  beql       $at, $zero, .L802DC8DC_320A2C
    /* 320A1C 802DC8CC 28610B01 */   slti      $at, $v1, 0xB01
    /* 320A20 802DC8D0 03E00008 */  jr         $ra
    /* 320A24 802DC8D4 00001025 */   or        $v0, $zero, $zero
    /* 320A28 802DC8D8 28610B01 */  slti       $at, $v1, 0xB01
  .L802DC8DC_320A2C:
    /* 320A2C 802DC8DC 14200003 */  bnez       $at, .L802DC8EC_320A3C
    /* 320A30 802DC8E0 24020001 */   addiu     $v0, $zero, 0x1
    /* 320A34 802DC8E4 03E00008 */  jr         $ra
    /* 320A38 802DC8E8 00001025 */   or        $v0, $zero, $zero
  .L802DC8EC_320A3C:
    /* 320A3C 802DC8EC 03E00008 */  jr         $ra
    /* 320A40 802DC8F0 00000000 */   nop
endlabel func_802DC874_3209C4
