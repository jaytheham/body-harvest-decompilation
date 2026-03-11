nonmatching func_800E2720_F16D0, 0x30

glabel func_800E2720_F16D0
    /* F16D0 800E2720 24010006 */  addiu      $at, $zero, 0x6
    /* F16D4 800E2724 0081001A */  div        $zero, $a0, $at
    /* F16D8 800E2728 3C028015 */  lui        $v0, %hi(D_80154308)
    /* F16DC 800E272C 00007012 */  mflo       $t6
    /* F16E0 800E2730 24424308 */  addiu      $v0, $v0, %lo(D_80154308)
    /* F16E4 800E2734 29C100C9 */  slti       $at, $t6, 0xC9
    /* F16E8 800E2738 14200003 */  bnez       $at, .L800E2748_F16F8
    /* F16EC 800E273C AC4E0000 */   sw        $t6, 0x0($v0)
    /* F16F0 800E2740 241800C8 */  addiu      $t8, $zero, 0xC8
    /* F16F4 800E2744 AC580000 */  sw         $t8, 0x0($v0)
  .L800E2748_F16F8:
    /* F16F8 800E2748 03E00008 */  jr         $ra
    /* F16FC 800E274C 00000000 */   nop
endlabel func_800E2720_F16D0
