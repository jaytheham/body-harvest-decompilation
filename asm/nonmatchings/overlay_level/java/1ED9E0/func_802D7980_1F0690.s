nonmatching func_802D7980_1F0690, 0x1E8

glabel func_802D7980_1F0690
    /* 1F0690 802D7980 3C0E8005 */  lui        $t6, %hi(D_80048030)
    /* 1F0694 802D7984 91CE8030 */  lbu        $t6, %lo(D_80048030)($t6)
    /* 1F0698 802D7988 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1F069C 802D798C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1F06A0 802D7990 2DC1000E */  sltiu      $at, $t6, 0xE
    /* 1F06A4 802D7994 10200070 */  beqz       $at, .L802D7B58_1F0868
    /* 1F06A8 802D7998 000E7080 */   sll       $t6, $t6, 2
    /* 1F06AC 802D799C 3C01802E */  lui        $at, %hi(jtbl_802E0F20_overlay_level_java)
    /* 1F06B0 802D79A0 002E0821 */  addu       $at, $at, $t6
    /* 1F06B4 802D79A4 8C2E0F20 */  lw         $t6, %lo(jtbl_802E0F20_overlay_level_java)($at)
    /* 1F06B8 802D79A8 01C00008 */  jr         $t6
    /* 1F06BC 802D79AC 00000000 */   nop
    /* 1F06C0 802D79B0 2404FFEF */  addiu      $a0, $zero, -0x11
    /* 1F06C4 802D79B4 24050043 */  addiu      $a1, $zero, 0x43
    /* 1F06C8 802D79B8 0C001206 */  jal        func_80004818_5418
    /* 1F06CC 802D79BC 24060002 */   addiu     $a2, $zero, 0x2
    /* 1F06D0 802D79C0 50400066 */  beql       $v0, $zero, .L802D7B5C_1F086C
    /* 1F06D4 802D79C4 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1F06D8 802D79C8 0C001DB5 */  jal        func_800076D4_82D4
    /* 1F06DC 802D79CC 24040001 */   addiu     $a0, $zero, 0x1
    /* 1F06E0 802D79D0 10000062 */  b          .L802D7B5C_1F086C
    /* 1F06E4 802D79D4 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1F06E8 802D79D8 24040000 */  addiu      $a0, $zero, 0x0
    /* 1F06EC 802D79DC 0C001C9B */  jal        func_8000726C_7E6C
    /* 1F06F0 802D79E0 24050001 */   addiu     $a1, $zero, 0x1
    /* 1F06F4 802D79E4 5040005D */  beql       $v0, $zero, .L802D7B5C_1F086C
    /* 1F06F8 802D79E8 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1F06FC 802D79EC 0C001DB5 */  jal        func_800076D4_82D4
    /* 1F0700 802D79F0 24040002 */   addiu     $a0, $zero, 0x2
    /* 1F0704 802D79F4 10000059 */  b          .L802D7B5C_1F086C
    /* 1F0708 802D79F8 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1F070C 802D79FC 2404002C */  addiu      $a0, $zero, 0x2C
    /* 1F0710 802D7A00 24050061 */  addiu      $a1, $zero, 0x61
    /* 1F0714 802D7A04 0C001206 */  jal        func_80004818_5418
    /* 1F0718 802D7A08 24060003 */   addiu     $a2, $zero, 0x3
    /* 1F071C 802D7A0C 50400053 */  beql       $v0, $zero, .L802D7B5C_1F086C
    /* 1F0720 802D7A10 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1F0724 802D7A14 0C001DB5 */  jal        func_800076D4_82D4
    /* 1F0728 802D7A18 24040003 */   addiu     $a0, $zero, 0x3
    /* 1F072C 802D7A1C 1000004F */  b          .L802D7B5C_1F086C
    /* 1F0730 802D7A20 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1F0734 802D7A24 2404005B */  addiu      $a0, $zero, 0x5B
    /* 1F0738 802D7A28 2405005F */  addiu      $a1, $zero, 0x5F
    /* 1F073C 802D7A2C 0C001206 */  jal        func_80004818_5418
    /* 1F0740 802D7A30 24060003 */   addiu     $a2, $zero, 0x3
    /* 1F0744 802D7A34 50400049 */  beql       $v0, $zero, .L802D7B5C_1F086C
    /* 1F0748 802D7A38 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1F074C 802D7A3C 0C001DB5 */  jal        func_800076D4_82D4
    /* 1F0750 802D7A40 24040004 */   addiu     $a0, $zero, 0x4
    /* 1F0754 802D7A44 10000045 */  b          .L802D7B5C_1F086C
    /* 1F0758 802D7A48 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1F075C 802D7A4C 24040049 */  addiu      $a0, $zero, 0x49
    /* 1F0760 802D7A50 24050023 */  addiu      $a1, $zero, 0x23
    /* 1F0764 802D7A54 0C001206 */  jal        func_80004818_5418
    /* 1F0768 802D7A58 24060002 */   addiu     $a2, $zero, 0x2
    /* 1F076C 802D7A5C 5040003F */  beql       $v0, $zero, .L802D7B5C_1F086C
    /* 1F0770 802D7A60 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1F0774 802D7A64 0C001DB5 */  jal        func_800076D4_82D4
    /* 1F0778 802D7A68 24040005 */   addiu     $a0, $zero, 0x5
    /* 1F077C 802D7A6C 1000003B */  b          .L802D7B5C_1F086C
    /* 1F0780 802D7A70 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1F0784 802D7A74 2404004E */  addiu      $a0, $zero, 0x4E
    /* 1F0788 802D7A78 24050012 */  addiu      $a1, $zero, 0x12
    /* 1F078C 802D7A7C 0C001206 */  jal        func_80004818_5418
    /* 1F0790 802D7A80 24060002 */   addiu     $a2, $zero, 0x2
    /* 1F0794 802D7A84 50400035 */  beql       $v0, $zero, .L802D7B5C_1F086C
    /* 1F0798 802D7A88 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1F079C 802D7A8C 0C001DB5 */  jal        func_800076D4_82D4
    /* 1F07A0 802D7A90 24040006 */   addiu     $a0, $zero, 0x6
    /* 1F07A4 802D7A94 10000031 */  b          .L802D7B5C_1F086C
    /* 1F07A8 802D7A98 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1F07AC 802D7A9C 2404006A */  addiu      $a0, $zero, 0x6A
    /* 1F07B0 802D7AA0 2405FFF5 */  addiu      $a1, $zero, -0xB
    /* 1F07B4 802D7AA4 0C001206 */  jal        func_80004818_5418
    /* 1F07B8 802D7AA8 24060003 */   addiu     $a2, $zero, 0x3
    /* 1F07BC 802D7AAC 5040002B */  beql       $v0, $zero, .L802D7B5C_1F086C
    /* 1F07C0 802D7AB0 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1F07C4 802D7AB4 0C001DB5 */  jal        func_800076D4_82D4
    /* 1F07C8 802D7AB8 24040007 */   addiu     $a0, $zero, 0x7
    /* 1F07CC 802D7ABC 10000027 */  b          .L802D7B5C_1F086C
    /* 1F07D0 802D7AC0 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1F07D4 802D7AC4 24040007 */  addiu      $a0, $zero, 0x7
    /* 1F07D8 802D7AC8 2405FFB0 */  addiu      $a1, $zero, -0x50
    /* 1F07DC 802D7ACC 0C001206 */  jal        func_80004818_5418
    /* 1F07E0 802D7AD0 24060008 */   addiu     $a2, $zero, 0x8
    /* 1F07E4 802D7AD4 50400021 */  beql       $v0, $zero, .L802D7B5C_1F086C
    /* 1F07E8 802D7AD8 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1F07EC 802D7ADC 0C001DB5 */  jal        func_800076D4_82D4
    /* 1F07F0 802D7AE0 2404000A */   addiu     $a0, $zero, 0xA
    /* 1F07F4 802D7AE4 1000001D */  b          .L802D7B5C_1F086C
    /* 1F07F8 802D7AE8 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1F07FC 802D7AEC 2404FFD1 */  addiu      $a0, $zero, -0x2F
    /* 1F0800 802D7AF0 2405FFBA */  addiu      $a1, $zero, -0x46
    /* 1F0804 802D7AF4 0C001206 */  jal        func_80004818_5418
    /* 1F0808 802D7AF8 24060003 */   addiu     $a2, $zero, 0x3
    /* 1F080C 802D7AFC 50400017 */  beql       $v0, $zero, .L802D7B5C_1F086C
    /* 1F0810 802D7B00 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1F0814 802D7B04 0C001DB5 */  jal        func_800076D4_82D4
    /* 1F0818 802D7B08 2404000B */   addiu     $a0, $zero, 0xB
    /* 1F081C 802D7B0C 10000013 */  b          .L802D7B5C_1F086C
    /* 1F0820 802D7B10 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1F0824 802D7B14 2404FF9C */  addiu      $a0, $zero, -0x64
    /* 1F0828 802D7B18 2405FFDD */  addiu      $a1, $zero, -0x23
    /* 1F082C 802D7B1C 0C001206 */  jal        func_80004818_5418
    /* 1F0830 802D7B20 24060006 */   addiu     $a2, $zero, 0x6
    /* 1F0834 802D7B24 5040000D */  beql       $v0, $zero, .L802D7B5C_1F086C
    /* 1F0838 802D7B28 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1F083C 802D7B2C 0C001DB5 */  jal        func_800076D4_82D4
    /* 1F0840 802D7B30 2404000C */   addiu     $a0, $zero, 0xC
    /* 1F0844 802D7B34 10000009 */  b          .L802D7B5C_1F086C
    /* 1F0848 802D7B38 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1F084C 802D7B3C 24040000 */  addiu      $a0, $zero, 0x0
    /* 1F0850 802D7B40 0C001C9B */  jal        func_8000726C_7E6C
    /* 1F0854 802D7B44 24050021 */   addiu     $a1, $zero, 0x21
    /* 1F0858 802D7B48 50400004 */  beql       $v0, $zero, .L802D7B5C_1F086C
    /* 1F085C 802D7B4C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1F0860 802D7B50 0C001DB5 */  jal        func_800076D4_82D4
    /* 1F0864 802D7B54 2404000D */   addiu     $a0, $zero, 0xD
  .L802D7B58_1F0868:
    /* 1F0868 802D7B58 8FBF0014 */  lw         $ra, 0x14($sp)
  .L802D7B5C_1F086C:
    /* 1F086C 802D7B5C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1F0870 802D7B60 03E00008 */  jr         $ra
    /* 1F0874 802D7B64 00000000 */   nop
endlabel func_802D7980_1F0690
