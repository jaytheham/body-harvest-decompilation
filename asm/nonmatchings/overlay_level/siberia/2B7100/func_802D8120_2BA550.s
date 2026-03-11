nonmatching func_802D8120_2BA550, 0xA0

glabel func_802D8120_2BA550
    /* 2BA550 802D8120 308E00FF */  andi       $t6, $a0, 0xFF
    /* 2BA554 802D8124 000E7880 */  sll        $t7, $t6, 2
    /* 2BA558 802D8128 01EE7821 */  addu       $t7, $t7, $t6
    /* 2BA55C 802D812C 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 2BA560 802D8130 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 2BA564 802D8134 000F7900 */  sll        $t7, $t7, 4
    /* 2BA568 802D8138 01F81821 */  addu       $v1, $t7, $t8
    /* 2BA56C 802D813C 8C790020 */  lw         $t9, 0x20($v1)
    /* 2BA570 802D8140 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 2BA574 802D8144 AFA40030 */  sw         $a0, 0x30($sp)
    /* 2BA578 802D8148 33284000 */  andi       $t0, $t9, 0x4000
    /* 2BA57C 802D814C 01C02025 */  or         $a0, $t6, $zero
    /* 2BA580 802D8150 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 2BA584 802D8154 AFA50034 */  sw         $a1, 0x34($sp)
    /* 2BA588 802D8158 11000015 */  beqz       $t0, .L802D81B0_2BA5E0
    /* 2BA58C 802D815C AFA60038 */   sw        $a2, 0x38($sp)
    /* 2BA590 802D8160 87A90036 */  lh         $t1, 0x36($sp)
    /* 2BA594 802D8164 87AA003A */  lh         $t2, 0x3A($sp)
    /* 2BA598 802D8168 3C0B802E */  lui        $t3, %hi(D_802E1478)
    /* 2BA59C 802D816C 256B1478 */  addiu      $t3, $t3, %lo(D_802E1478)
    /* 2BA5A0 802D8170 AFAB0010 */  sw         $t3, 0x10($sp)
    /* 2BA5A4 802D8174 24050002 */  addiu      $a1, $zero, 0x2
    /* 2BA5A8 802D8178 24060002 */  addiu      $a2, $zero, 0x2
    /* 2BA5AC 802D817C 27A7002C */  addiu      $a3, $sp, 0x2C
    /* 2BA5B0 802D8180 AFA30024 */  sw         $v1, 0x24($sp)
    /* 2BA5B4 802D8184 A7A9002C */  sh         $t1, 0x2C($sp)
    /* 2BA5B8 802D8188 0C0207C6 */  jal        func_80081F18_90EC8
    /* 2BA5BC 802D818C A7AA002E */   sh        $t2, 0x2E($sp)
    /* 2BA5C0 802D8190 304C00FF */  andi       $t4, $v0, 0xFF
    /* 2BA5C4 802D8194 24010002 */  addiu      $at, $zero, 0x2
    /* 2BA5C8 802D8198 15810005 */  bne        $t4, $at, .L802D81B0_2BA5E0
    /* 2BA5CC 802D819C 8FA30024 */   lw        $v1, 0x24($sp)
    /* 2BA5D0 802D81A0 8C6D0020 */  lw         $t5, 0x20($v1)
    /* 2BA5D4 802D81A4 2401BFFF */  addiu      $at, $zero, -0x4001
    /* 2BA5D8 802D81A8 01A17024 */  and        $t6, $t5, $at
    /* 2BA5DC 802D81AC AC6E0020 */  sw         $t6, 0x20($v1)
  .L802D81B0_2BA5E0:
    /* 2BA5E0 802D81B0 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 2BA5E4 802D81B4 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 2BA5E8 802D81B8 03E00008 */  jr         $ra
    /* 2BA5EC 802D81BC 00000000 */   nop
endlabel func_802D8120_2BA550
