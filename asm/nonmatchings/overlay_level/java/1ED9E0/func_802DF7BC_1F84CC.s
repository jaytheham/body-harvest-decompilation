nonmatching func_802DF7BC_1F84CC, 0xEC

glabel func_802DF7BC_1F84CC
    /* 1F84CC 802DF7BC 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 1F84D0 802DF7C0 3C18802E */  lui        $t8, %hi(D_802E0CD4)
    /* 1F84D4 802DF7C4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1F84D8 802DF7C8 AFA40030 */  sw         $a0, 0x30($sp)
    /* 1F84DC 802DF7CC 27180CD4 */  addiu      $t8, $t8, %lo(D_802E0CD4)
    /* 1F84E0 802DF7D0 8F010000 */  lw         $at, 0x0($t8)
    /* 1F84E4 802DF7D4 27AF0028 */  addiu      $t7, $sp, 0x28
    /* 1F84E8 802DF7D8 3C0B802E */  lui        $t3, %hi(D_802E0CDC)
    /* 1F84EC 802DF7DC ADE10000 */  sw         $at, 0x0($t7)
    /* 1F84F0 802DF7E0 97010004 */  lhu        $at, 0x4($t8)
    /* 1F84F4 802DF7E4 256B0CDC */  addiu      $t3, $t3, %lo(D_802E0CDC)
    /* 1F84F8 802DF7E8 27AA0020 */  addiu      $t2, $sp, 0x20
    /* 1F84FC 802DF7EC A5E10004 */  sh         $at, 0x4($t7)
    /* 1F8500 802DF7F0 8D610000 */  lw         $at, 0x0($t3)
    /* 1F8504 802DF7F4 308E00FF */  andi       $t6, $a0, 0xFF
    /* 1F8508 802DF7F8 000E4080 */  sll        $t0, $t6, 2
    /* 1F850C 802DF7FC AD410000 */  sw         $at, 0x0($t2)
    /* 1F8510 802DF800 95610004 */  lhu        $at, 0x4($t3)
    /* 1F8514 802DF804 010E4021 */  addu       $t0, $t0, $t6
    /* 1F8518 802DF808 00084100 */  sll        $t0, $t0, 4
    /* 1F851C 802DF80C 3C198005 */  lui        $t9, %hi(D_800481BD)
    /* 1F8520 802DF810 0328C821 */  addu       $t9, $t9, $t0
    /* 1F8524 802DF814 A5410004 */  sh         $at, 0x4($t2)
    /* 1F8528 802DF818 933981BD */  lbu        $t9, %lo(D_800481BD)($t9)
    /* 1F852C 802DF81C 01C02025 */  or         $a0, $t6, $zero
    /* 1F8530 802DF820 A3AE0033 */  sb         $t6, 0x33($sp)
    /* 1F8534 802DF824 240500AE */  addiu      $a1, $zero, 0xAE
    /* 1F8538 802DF828 2406007E */  addiu      $a2, $zero, 0x7E
    /* 1F853C 802DF82C 24070183 */  addiu      $a3, $zero, 0x183
    /* 1F8540 802DF830 0C02A4E9 */  jal        func_800A93A4_B8354
    /* 1F8544 802DF834 A3B9001F */   sb        $t9, 0x1F($sp)
    /* 1F8548 802DF838 93AF001F */  lbu        $t7, 0x1F($sp)
    /* 1F854C 802DF83C 3C098005 */  lui        $t1, %hi(alienInstances)
    /* 1F8550 802DF840 25298198 */  addiu      $t1, $t1, %lo(alienInstances)
    /* 1F8554 802DF844 000FC080 */  sll        $t8, $t7, 2
    /* 1F8558 802DF848 030FC021 */  addu       $t8, $t8, $t7
    /* 1F855C 802DF84C 0018C100 */  sll        $t8, $t8, 4
    /* 1F8560 802DF850 03091021 */  addu       $v0, $t8, $t1
    /* 1F8564 802DF854 904D0024 */  lbu        $t5, 0x24($v0)
    /* 1F8568 802DF858 93A40033 */  lbu        $a0, 0x33($sp)
    /* 1F856C 802DF85C 27A50028 */  addiu      $a1, $sp, 0x28
    /* 1F8570 802DF860 11A0000B */  beqz       $t5, .L802DF890_1F85A0
    /* 1F8574 802DF864 00000000 */   nop
    /* 1F8578 802DF868 844C002C */  lh         $t4, 0x2C($v0)
    /* 1F857C 802DF86C 2406E000 */  addiu      $a2, $zero, -0x2000
    /* 1F8580 802DF870 2407F000 */  addiu      $a3, $zero, -0x1000
    /* 1F8584 802DF874 298100A0 */  slti       $at, $t4, 0xA0
    /* 1F8588 802DF878 10200005 */  beqz       $at, .L802DF890_1F85A0
    /* 1F858C 802DF87C 00000000 */   nop
    /* 1F8590 802DF880 0C0B7BF0 */  jal        func_802DEFC0_1F7CD0
    /* 1F8594 802DF884 2405DCD8 */   addiu     $a1, $zero, -0x2328
    /* 1F8598 802DF888 10000004 */  b          .L802DF89C_1F85AC
    /* 1F859C 802DF88C 8FBF0014 */   lw        $ra, 0x14($sp)
  .L802DF890_1F85A0:
    /* 1F85A0 802DF890 0C0B7CF0 */  jal        func_802DF3C0_1F80D0
    /* 1F85A4 802DF894 27A60020 */   addiu     $a2, $sp, 0x20
    /* 1F85A8 802DF898 8FBF0014 */  lw         $ra, 0x14($sp)
  .L802DF89C_1F85AC:
    /* 1F85AC 802DF89C 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 1F85B0 802DF8A0 03E00008 */  jr         $ra
    /* 1F85B4 802DF8A4 00000000 */   nop
endlabel func_802DF7BC_1F84CC
