nonmatching func_802D5B58_2B7F88, 0xCC

glabel func_802D5B58_2B7F88
    /* 2B7F88 802D5B58 3C028005 */  lui        $v0, %hi(vehicleInstances)
    /* 2B7F8C 802D5B5C 2442DCD0 */  addiu      $v0, $v0, %lo(vehicleInstances)
    /* 2B7F90 802D5B60 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 2B7F94 802D5B64 944E0A8C */  lhu        $t6, 0xA8C($v0)
    /* 2B7F98 802D5B68 AFBF002C */  sw         $ra, 0x2C($sp)
    /* 2B7F9C 802D5B6C 3C04802E */  lui        $a0, %hi(D_802E2EC8)
    /* 2B7FA0 802D5B70 31CFFF7F */  andi       $t7, $t6, 0xFF7F
    /* 2B7FA4 802D5B74 AFB40028 */  sw         $s4, 0x28($sp)
    /* 2B7FA8 802D5B78 AFB30024 */  sw         $s3, 0x24($sp)
    /* 2B7FAC 802D5B7C AFB20020 */  sw         $s2, 0x20($sp)
    /* 2B7FB0 802D5B80 AFB1001C */  sw         $s1, 0x1C($sp)
    /* 2B7FB4 802D5B84 AFB00018 */  sw         $s0, 0x18($sp)
    /* 2B7FB8 802D5B88 A44F0A8C */  sh         $t7, 0xA8C($v0)
    /* 2B7FBC 802D5B8C 0C00731B */  jal        osSyncPrintf
    /* 2B7FC0 802D5B90 24842EC8 */   addiu     $a0, $a0, %lo(D_802E2EC8)
    /* 2B7FC4 802D5B94 3C038015 */  lui        $v1, %hi(D_8014D507)
    /* 2B7FC8 802D5B98 9063D507 */  lbu        $v1, %lo(D_8014D507)($v1)
    /* 2B7FCC 802D5B9C 3C118015 */  lui        $s1, %hi(D_8014D408)
    /* 2B7FD0 802D5BA0 2631D408 */  addiu      $s1, $s1, %lo(D_8014D408)
    /* 2B7FD4 802D5BA4 18600017 */  blez       $v1, .L802D5C04_2B8034
    /* 2B7FD8 802D5BA8 00008025 */   or        $s0, $zero, $zero
    /* 2B7FDC 802D5BAC 3C138005 */  lui        $s3, %hi(alienInstances)
    /* 2B7FE0 802D5BB0 26738198 */  addiu      $s3, $s3, %lo(alienInstances)
    /* 2B7FE4 802D5BB4 24140050 */  addiu      $s4, $zero, 0x50
    /* 2B7FE8 802D5BB8 24120001 */  addiu      $s2, $zero, 0x1
  .L802D5BBC_2B7FEC:
    /* 2B7FEC 802D5BBC 92220000 */  lbu        $v0, 0x0($s1)
    /* 2B7FF0 802D5BC0 00540019 */  multu      $v0, $s4
    /* 2B7FF4 802D5BC4 0000C012 */  mflo       $t8
    /* 2B7FF8 802D5BC8 02782021 */  addu       $a0, $s3, $t8
    /* 2B7FFC 802D5BCC 9099001A */  lbu        $t9, 0x1A($a0)
    /* 2B8000 802D5BD0 56590009 */  bnel       $s2, $t9, .L802D5BF8_2B8028
    /* 2B8004 802D5BD4 26100001 */   addiu     $s0, $s0, 0x1
    /* 2B8008 802D5BD8 90880024 */  lbu        $t0, 0x24($a0)
    /* 2B800C 802D5BDC 56480006 */  bnel       $s2, $t0, .L802D5BF8_2B8028
    /* 2B8010 802D5BE0 26100001 */   addiu     $s0, $s0, 0x1
    /* 2B8014 802D5BE4 0C0221D8 */  jal        func_80088760_97710
    /* 2B8018 802D5BE8 00000000 */   nop
    /* 2B801C 802D5BEC 3C038015 */  lui        $v1, %hi(D_8014D507)
    /* 2B8020 802D5BF0 9063D507 */  lbu        $v1, %lo(D_8014D507)($v1)
    /* 2B8024 802D5BF4 26100001 */  addiu      $s0, $s0, 0x1
  .L802D5BF8_2B8028:
    /* 2B8028 802D5BF8 0203082A */  slt        $at, $s0, $v1
    /* 2B802C 802D5BFC 1420FFEF */  bnez       $at, .L802D5BBC_2B7FEC
    /* 2B8030 802D5C00 26310001 */   addiu     $s1, $s1, 0x1
  .L802D5C04_2B8034:
    /* 2B8034 802D5C04 8FBF002C */  lw         $ra, 0x2C($sp)
    /* 2B8038 802D5C08 8FB00018 */  lw         $s0, 0x18($sp)
    /* 2B803C 802D5C0C 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 2B8040 802D5C10 8FB20020 */  lw         $s2, 0x20($sp)
    /* 2B8044 802D5C14 8FB30024 */  lw         $s3, 0x24($sp)
    /* 2B8048 802D5C18 8FB40028 */  lw         $s4, 0x28($sp)
    /* 2B804C 802D5C1C 03E00008 */  jr         $ra
    /* 2B8050 802D5C20 27BD0030 */   addiu     $sp, $sp, 0x30
endlabel func_802D5B58_2B7F88
