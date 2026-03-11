nonmatching func_800EC330_FB2E0, 0x70

glabel func_800EC330_FB2E0
    /* FB2E0 800EC330 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* FB2E4 800EC334 AFBF0014 */  sw         $ra, 0x14($sp)
    /* FB2E8 800EC338 3C048005 */  lui        $a0, %hi(D_80052542)
    /* FB2EC 800EC33C 3C058005 */  lui        $a1, %hi(D_80052546)
    /* FB2F0 800EC340 84A52546 */  lh         $a1, %lo(D_80052546)($a1)
    /* FB2F4 800EC344 0C045931 */  jal        func_801164C4_125474
    /* FB2F8 800EC348 84842542 */   lh        $a0, %lo(D_80052542)($a0)
    /* FB2FC 800EC34C 24030001 */  addiu      $v1, $zero, 0x1
    /* FB300 800EC350 3C018016 */  lui        $at, %hi(D_8016018C)
    /* FB304 800EC354 AC23018C */  sw         $v1, %lo(D_8016018C)($at)
    /* FB308 800EC358 904E0008 */  lbu        $t6, 0x8($v0)
    /* FB30C 800EC35C 3C188015 */  lui        $t8, %hi(D_80148390)
    /* FB310 800EC360 3C018005 */  lui        $at, %hi(D_80048188)
    /* FB314 800EC364 000E7880 */  sll        $t7, $t6, 2
    /* FB318 800EC368 01EE7823 */  subu       $t7, $t7, $t6
    /* FB31C 800EC36C 000F78C0 */  sll        $t7, $t7, 3
    /* FB320 800EC370 030FC021 */  addu       $t8, $t8, $t7
    /* FB324 800EC374 8F188390 */  lw         $t8, %lo(D_80148390)($t8)
    /* FB328 800EC378 24190003 */  addiu      $t9, $zero, 0x3
    /* FB32C 800EC37C 53000005 */  beql       $t8, $zero, .L800EC394_FB344
    /* FB330 800EC380 8FBF0014 */   lw        $ra, 0x14($sp)
    /* FB334 800EC384 AC238188 */  sw         $v1, %lo(D_80048188)($at)
    /* FB338 800EC388 3C018015 */  lui        $at, %hi(D_801575E0)
    /* FB33C 800EC38C A43975E0 */  sh         $t9, %lo(D_801575E0)($at)
    /* FB340 800EC390 8FBF0014 */  lw         $ra, 0x14($sp)
  .L800EC394_FB344:
    /* FB344 800EC394 27BD0018 */  addiu      $sp, $sp, 0x18
    /* FB348 800EC398 03E00008 */  jr         $ra
    /* FB34C 800EC39C 00000000 */   nop
endlabel func_800EC330_FB2E0
