nonmatching func_802D4DCC_2B71FC, 0x150

glabel func_802D4DCC_2B71FC
    /* 2B71FC 802D4DCC 3C0E8005 */  lui        $t6, %hi(D_80048030)
    /* 2B7200 802D4DD0 91CE8030 */  lbu        $t6, %lo(D_80048030)($t6)
    /* 2B7204 802D4DD4 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 2B7208 802D4DD8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2B720C 802D4DDC 2DC1000B */  sltiu      $at, $t6, 0xB
    /* 2B7210 802D4DE0 1020004A */  beqz       $at, .L802D4F0C_2B733C
    /* 2B7214 802D4DE4 000E7080 */   sll       $t6, $t6, 2
    /* 2B7218 802D4DE8 3C01802E */  lui        $at, %hi(jtbl_802E2F58_overlay_level_siberia)
    /* 2B721C 802D4DEC 002E0821 */  addu       $at, $at, $t6
    /* 2B7220 802D4DF0 8C2E2F58 */  lw         $t6, %lo(jtbl_802E2F58_overlay_level_siberia)($at)
    /* 2B7224 802D4DF4 01C00008 */  jr         $t6
    /* 2B7228 802D4DF8 00000000 */   nop
    /* 2B722C 802D4DFC 24040000 */  addiu      $a0, $zero, 0x0
    /* 2B7230 802D4E00 0C001C9B */  jal        func_8000726C_7E6C
    /* 2B7234 802D4E04 24050003 */   addiu     $a1, $zero, 0x3
    /* 2B7238 802D4E08 50400041 */  beql       $v0, $zero, .L802D4F10_2B7340
    /* 2B723C 802D4E0C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 2B7240 802D4E10 0C001DB5 */  jal        func_800076D4_82D4
    /* 2B7244 802D4E14 24040001 */   addiu     $a0, $zero, 0x1
    /* 2B7248 802D4E18 1000003D */  b          .L802D4F10_2B7340
    /* 2B724C 802D4E1C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 2B7250 802D4E20 2404001D */  addiu      $a0, $zero, 0x1D
    /* 2B7254 802D4E24 24050029 */  addiu      $a1, $zero, 0x29
    /* 2B7258 802D4E28 0C001206 */  jal        func_80004818_5418
    /* 2B725C 802D4E2C 24060003 */   addiu     $a2, $zero, 0x3
    /* 2B7260 802D4E30 50400037 */  beql       $v0, $zero, .L802D4F10_2B7340
    /* 2B7264 802D4E34 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 2B7268 802D4E38 0C001DB5 */  jal        func_800076D4_82D4
    /* 2B726C 802D4E3C 24040003 */   addiu     $a0, $zero, 0x3
    /* 2B7270 802D4E40 10000033 */  b          .L802D4F10_2B7340
    /* 2B7274 802D4E44 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 2B7278 802D4E48 24040000 */  addiu      $a0, $zero, 0x0
    /* 2B727C 802D4E4C 0C001C9B */  jal        func_8000726C_7E6C
    /* 2B7280 802D4E50 24050002 */   addiu     $a1, $zero, 0x2
    /* 2B7284 802D4E54 14400005 */  bnez       $v0, .L802D4E6C_2B729C
    /* 2B7288 802D4E58 24040000 */   addiu     $a0, $zero, 0x0
    /* 2B728C 802D4E5C 0C001C9B */  jal        func_8000726C_7E6C
    /* 2B7290 802D4E60 24050025 */   addiu     $a1, $zero, 0x25
    /* 2B7294 802D4E64 5040002A */  beql       $v0, $zero, .L802D4F10_2B7340
    /* 2B7298 802D4E68 8FBF0014 */   lw        $ra, 0x14($sp)
  .L802D4E6C_2B729C:
    /* 2B729C 802D4E6C 0C001DB5 */  jal        func_800076D4_82D4
    /* 2B72A0 802D4E70 24040004 */   addiu     $a0, $zero, 0x4
    /* 2B72A4 802D4E74 10000026 */  b          .L802D4F10_2B7340
    /* 2B72A8 802D4E78 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 2B72AC 802D4E7C 2404FFA7 */  addiu      $a0, $zero, -0x59
    /* 2B72B0 802D4E80 2405001A */  addiu      $a1, $zero, 0x1A
    /* 2B72B4 802D4E84 0C001206 */  jal        func_80004818_5418
    /* 2B72B8 802D4E88 24060003 */   addiu     $a2, $zero, 0x3
    /* 2B72BC 802D4E8C 50400020 */  beql       $v0, $zero, .L802D4F10_2B7340
    /* 2B72C0 802D4E90 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 2B72C4 802D4E94 0C001DB5 */  jal        func_800076D4_82D4
    /* 2B72C8 802D4E98 24040005 */   addiu     $a0, $zero, 0x5
    /* 2B72CC 802D4E9C 1000001C */  b          .L802D4F10_2B7340
    /* 2B72D0 802D4EA0 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 2B72D4 802D4EA4 2404FFCE */  addiu      $a0, $zero, -0x32
    /* 2B72D8 802D4EA8 2405FFF1 */  addiu      $a1, $zero, -0xF
    /* 2B72DC 802D4EAC 0C001206 */  jal        func_80004818_5418
    /* 2B72E0 802D4EB0 24060003 */   addiu     $a2, $zero, 0x3
    /* 2B72E4 802D4EB4 50400016 */  beql       $v0, $zero, .L802D4F10_2B7340
    /* 2B72E8 802D4EB8 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 2B72EC 802D4EBC 0C001DB5 */  jal        func_800076D4_82D4
    /* 2B72F0 802D4EC0 24040007 */   addiu     $a0, $zero, 0x7
    /* 2B72F4 802D4EC4 10000012 */  b          .L802D4F10_2B7340
    /* 2B72F8 802D4EC8 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 2B72FC 802D4ECC 24040000 */  addiu      $a0, $zero, 0x0
    /* 2B7300 802D4ED0 0C001C9B */  jal        func_8000726C_7E6C
    /* 2B7304 802D4ED4 24050030 */   addiu     $a1, $zero, 0x30
    /* 2B7308 802D4ED8 5040000D */  beql       $v0, $zero, .L802D4F10_2B7340
    /* 2B730C 802D4EDC 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 2B7310 802D4EE0 0C001DB5 */  jal        func_800076D4_82D4
    /* 2B7314 802D4EE4 24040008 */   addiu     $a0, $zero, 0x8
    /* 2B7318 802D4EE8 10000009 */  b          .L802D4F10_2B7340
    /* 2B731C 802D4EEC 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 2B7320 802D4EF0 24040000 */  addiu      $a0, $zero, 0x0
    /* 2B7324 802D4EF4 0C001C9B */  jal        func_8000726C_7E6C
    /* 2B7328 802D4EF8 2405001C */   addiu     $a1, $zero, 0x1C
    /* 2B732C 802D4EFC 50400004 */  beql       $v0, $zero, .L802D4F10_2B7340
    /* 2B7330 802D4F00 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 2B7334 802D4F04 0C001DB5 */  jal        func_800076D4_82D4
    /* 2B7338 802D4F08 24040009 */   addiu     $a0, $zero, 0x9
  .L802D4F0C_2B733C:
    /* 2B733C 802D4F0C 8FBF0014 */  lw         $ra, 0x14($sp)
  .L802D4F10_2B7340:
    /* 2B7340 802D4F10 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 2B7344 802D4F14 03E00008 */  jr         $ra
    /* 2B7348 802D4F18 00000000 */   nop
endlabel func_802D4DCC_2B71FC
