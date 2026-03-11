nonmatching func_802D5530_254C70, 0x70

glabel func_802D5530_254C70
    /* 254C70 802D5530 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 254C74 802D5534 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 254C78 802D5538 0C001DB5 */  jal        func_800076D4_82D4
    /* 254C7C 802D553C 24040009 */   addiu     $a0, $zero, 0x9
    /* 254C80 802D5540 0C02F6BD */  jal        func_800BDAF4_CCAA4
    /* 254C84 802D5544 00000000 */   nop
    /* 254C88 802D5548 3C04802D */  lui        $a0, %hi(func_802D536C_254AAC)
    /* 254C8C 802D554C 0C001D2F */  jal        func_800074BC_80BC
    /* 254C90 802D5550 2484536C */   addiu     $a0, $a0, %lo(func_802D536C_254AAC)
    /* 254C94 802D5554 3C04802E */  lui        $a0, %hi(D_802E0E44)
    /* 254C98 802D5558 90840E44 */  lbu        $a0, %lo(D_802E0E44)($a0)
    /* 254C9C 802D555C 240100FF */  addiu      $at, $zero, 0xFF
    /* 254CA0 802D5560 3C0F8005 */  lui        $t7, %hi(D_800481B2)
    /* 254CA4 802D5564 1081000A */  beq        $a0, $at, .L802D5590_254CD0
    /* 254CA8 802D5568 00047080 */   sll       $t6, $a0, 2
    /* 254CAC 802D556C 01C47021 */  addu       $t6, $t6, $a0
    /* 254CB0 802D5570 000E7100 */  sll        $t6, $t6, 4
    /* 254CB4 802D5574 01EE7821 */  addu       $t7, $t7, $t6
    /* 254CB8 802D5578 91EF81B2 */  lbu        $t7, %lo(D_800481B2)($t7)
    /* 254CBC 802D557C 24010012 */  addiu      $at, $zero, 0x12
    /* 254CC0 802D5580 55E10004 */  bnel       $t7, $at, .L802D5594_254CD4
    /* 254CC4 802D5584 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 254CC8 802D5588 0C021EAB */  jal        func_80087AAC_96A5C
    /* 254CCC 802D558C 00000000 */   nop
  .L802D5590_254CD0:
    /* 254CD0 802D5590 8FBF0014 */  lw         $ra, 0x14($sp)
  .L802D5594_254CD4:
    /* 254CD4 802D5594 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 254CD8 802D5598 03E00008 */  jr         $ra
    /* 254CDC 802D559C 00000000 */   nop
endlabel func_802D5530_254C70
