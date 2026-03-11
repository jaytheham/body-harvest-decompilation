nonmatching func_802DA18C_1F2E9C, 0x84

glabel func_802DA18C_1F2E9C
    /* 1F2E9C 802DA18C 308E00FF */  andi       $t6, $a0, 0xFF
    /* 1F2EA0 802DA190 000E7880 */  sll        $t7, $t6, 2
    /* 1F2EA4 802DA194 01EE7821 */  addu       $t7, $t7, $t6
    /* 1F2EA8 802DA198 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 1F2EAC 802DA19C 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 1F2EB0 802DA1A0 000F7900 */  sll        $t7, $t7, 4
    /* 1F2EB4 802DA1A4 01F81821 */  addu       $v1, $t7, $t8
    /* 1F2EB8 802DA1A8 8C790020 */  lw         $t9, 0x20($v1)
    /* 1F2EBC 802DA1AC 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 1F2EC0 802DA1B0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1F2EC4 802DA1B4 37281000 */  ori        $t0, $t9, 0x1000
    /* 1F2EC8 802DA1B8 AFA40020 */  sw         $a0, 0x20($sp)
    /* 1F2ECC 802DA1BC AFA50024 */  sw         $a1, 0x24($sp)
    /* 1F2ED0 802DA1C0 AFA60028 */  sw         $a2, 0x28($sp)
    /* 1F2ED4 802DA1C4 AC680020 */  sw         $t0, 0x20($v1)
    /* 1F2ED8 802DA1C8 0C000E38 */  jal        func_800038E0_44E0
    /* 1F2EDC 802DA1CC AFA3001C */   sw        $v1, 0x1C($sp)
    /* 1F2EE0 802DA1D0 30490001 */  andi       $t1, $v0, 0x1
    /* 1F2EE4 802DA1D4 8FA3001C */  lw         $v1, 0x1C($sp)
    /* 1F2EE8 802DA1D8 11200006 */  beqz       $t1, .L802DA1F4_1F2F04
    /* 1F2EEC 802DA1DC 87A4002A */   lh        $a0, 0x2A($sp)
    /* 1F2EF0 802DA1E0 2401FFFF */  addiu      $at, $zero, -0x1
    /* 1F2EF4 802DA1E4 50810004 */  beql       $a0, $at, .L802DA1F8_1F2F08
    /* 1F2EF8 802DA1E8 87AA0026 */   lh        $t2, 0x26($sp)
    /* 1F2EFC 802DA1EC 10000003 */  b          .L802DA1FC_1F2F0C
    /* 1F2F00 802DA1F0 A0640026 */   sb        $a0, 0x26($v1)
  .L802DA1F4_1F2F04:
    /* 1F2F04 802DA1F4 87AA0026 */  lh         $t2, 0x26($sp)
  .L802DA1F8_1F2F08:
    /* 1F2F08 802DA1F8 A06A0026 */  sb         $t2, 0x26($v1)
  .L802DA1FC_1F2F0C:
    /* 1F2F0C 802DA1FC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1F2F10 802DA200 A0600036 */  sb         $zero, 0x36($v1)
    /* 1F2F14 802DA204 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 1F2F18 802DA208 03E00008 */  jr         $ra
    /* 1F2F1C 802DA20C 00000000 */   nop
endlabel func_802DA18C_1F2E9C
