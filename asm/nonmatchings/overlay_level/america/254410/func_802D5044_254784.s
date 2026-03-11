nonmatching func_802D5044_254784, 0xCC

glabel func_802D5044_254784
    /* 254784 802D5044 3C068005 */  lui        $a2, %hi(buildingInstances)
    /* 254788 802D5048 24C60AD8 */  addiu      $a2, $a2, %lo(buildingInstances)
    /* 25478C 802D504C 3C0E8005 */  lui        $t6, %hi(D_8004816C)
    /* 254790 802D5050 90C20967 */  lbu        $v0, 0x967($a2)
    /* 254794 802D5054 90C305D7 */  lbu        $v1, 0x5D7($a2)
    /* 254798 802D5058 85CE816C */  lh         $t6, %lo(D_8004816C)($t6)
    /* 25479C 802D505C 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 2547A0 802D5060 28410007 */  slti       $at, $v0, 0x7
    /* 2547A4 802D5064 01C37821 */  addu       $t7, $t6, $v1
    /* 2547A8 802D5068 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2547AC 802D506C 1420000F */  bnez       $at, .L802D50AC_2547EC
    /* 2547B0 802D5070 AFAF0024 */   sw        $t7, 0x24($sp)
    /* 2547B4 802D5074 24040000 */  addiu      $a0, $zero, 0x0
    /* 2547B8 802D5078 0C001CB3 */  jal        func_800072CC_7ECC
    /* 2547BC 802D507C 2405002E */   addiu     $a1, $zero, 0x2E
    /* 2547C0 802D5080 24040000 */  addiu      $a0, $zero, 0x0
    /* 2547C4 802D5084 0C001CB3 */  jal        func_800072CC_7ECC
    /* 2547C8 802D5088 2405002D */   addiu     $a1, $zero, 0x2D
    /* 2547CC 802D508C 3C04802D */  lui        $a0, %hi(func_802D5044_254784)
    /* 2547D0 802D5090 0C001D2F */  jal        func_800074BC_80BC
    /* 2547D4 802D5094 24845044 */   addiu     $a0, $a0, %lo(func_802D5044_254784)
    /* 2547D8 802D5098 3C04802E */  lui        $a0, %hi(D_802E0CF0)
    /* 2547DC 802D509C 0C00731B */  jal        osSyncPrintf
    /* 2547E0 802D50A0 24840CF0 */   addiu     $a0, $a0, %lo(D_802E0CF0)
    /* 2547E4 802D50A4 3C068005 */  lui        $a2, %hi(buildingInstances)
    /* 2547E8 802D50A8 24C60AD8 */  addiu      $a2, $a2, %lo(buildingInstances)
  .L802D50AC_2547EC:
    /* 2547EC 802D50AC 8FB80024 */  lw         $t8, 0x24($sp)
    /* 2547F0 802D50B0 24040000 */  addiu      $a0, $zero, 0x0
    /* 2547F4 802D50B4 2405002D */  addiu      $a1, $zero, 0x2D
    /* 2547F8 802D50B8 2B010007 */  slti       $at, $t8, 0x7
    /* 2547FC 802D50BC 1020000B */  beqz       $at, .L802D50EC_25482C
    /* 254800 802D50C0 3C19802D */   lui       $t9, %hi(func_802D5044_254784)
    /* 254804 802D50C4 27395044 */  addiu      $t9, $t9, %lo(func_802D5044_254784)
    /* 254808 802D50C8 0C001CB3 */  jal        func_800072CC_7ECC
    /* 25480C 802D50CC AFB9001C */   sw        $t9, 0x1C($sp)
    /* 254810 802D50D0 0C001D2F */  jal        func_800074BC_80BC
    /* 254814 802D50D4 8FA4001C */   lw        $a0, 0x1C($sp)
    /* 254818 802D50D8 3C04802E */  lui        $a0, %hi(D_802E0D08)
    /* 25481C 802D50DC 0C00731B */  jal        osSyncPrintf
    /* 254820 802D50E0 24840D08 */   addiu     $a0, $a0, %lo(D_802E0D08)
    /* 254824 802D50E4 3C068005 */  lui        $a2, %hi(buildingInstances)
    /* 254828 802D50E8 24C60AD8 */  addiu      $a2, $a2, %lo(buildingInstances)
  .L802D50EC_25482C:
    /* 25482C 802D50EC 90C805D6 */  lbu        $t0, 0x5D6($a2)
    /* 254830 802D50F0 3C0A8026 */  lui        $t2, %hi(D_802590A9)
    /* 254834 802D50F4 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 254838 802D50F8 00084940 */  sll        $t1, $t0, 5
    /* 25483C 802D50FC 01495021 */  addu       $t2, $t2, $t1
    /* 254840 802D5100 814A90A9 */  lb         $t2, %lo(D_802590A9)($t2)
    /* 254844 802D5104 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 254848 802D5108 03E00008 */  jr         $ra
    /* 25484C 802D510C A0CA05DF */   sb        $t2, 0x5DF($a2)
endlabel func_802D5044_254784
