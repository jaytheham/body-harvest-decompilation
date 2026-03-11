nonmatching func_802DC1B8_194CC8, 0x12C

glabel func_802DC1B8_194CC8
    /* 194CC8 802DC1B8 308E00FF */  andi       $t6, $a0, 0xFF
    /* 194CCC 802DC1BC 000E7880 */  sll        $t7, $t6, 2
    /* 194CD0 802DC1C0 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 194CD4 802DC1C4 01EE7821 */  addu       $t7, $t7, $t6
    /* 194CD8 802DC1C8 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 194CDC 802DC1CC AFB00028 */  sw         $s0, 0x28($sp)
    /* 194CE0 802DC1D0 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 194CE4 802DC1D4 000F7900 */  sll        $t7, $t7, 4
    /* 194CE8 802DC1D8 01F88021 */  addu       $s0, $t7, $t8
    /* 194CEC 802DC1DC 8E190020 */  lw         $t9, 0x20($s0)
    /* 194CF0 802DC1E0 AFBF002C */  sw         $ra, 0x2C($sp)
    /* 194CF4 802DC1E4 AFA40048 */  sw         $a0, 0x48($sp)
    /* 194CF8 802DC1E8 33290600 */  andi       $t1, $t9, 0x600
    /* 194CFC 802DC1EC 11200038 */  beqz       $t1, .L802DC2D0_194DE0
    /* 194D00 802DC1F0 AFA5004C */   sw        $a1, 0x4C($sp)
    /* 194D04 802DC1F4 860A000C */  lh         $t2, 0xC($s0)
    /* 194D08 802DC1F8 3C088015 */  lui        $t0, %hi(D_8014DD50)
    /* 194D0C 802DC1FC 2508DD50 */  addiu      $t0, $t0, %lo(D_8014DD50)
    /* 194D10 802DC200 000A5900 */  sll        $t3, $t2, 4
    /* 194D14 802DC204 010B6021 */  addu       $t4, $t0, $t3
    /* 194D18 802DC208 8183000C */  lb         $v1, 0xC($t4)
    /* 194D1C 802DC20C 02002025 */  or         $a0, $s0, $zero
    /* 194D20 802DC210 00036900 */  sll        $t5, $v1, 4
    /* 194D24 802DC214 010D1021 */  addu       $v0, $t0, $t5
    /* 194D28 802DC218 84450000 */  lh         $a1, 0x0($v0)
    /* 194D2C 802DC21C 84460002 */  lh         $a2, 0x2($v0)
    /* 194D30 802DC220 84470004 */  lh         $a3, 0x4($v0)
    /* 194D34 802DC224 04A10003 */  bgez       $a1, .L802DC234_194D44
    /* 194D38 802DC228 00057043 */   sra       $t6, $a1, 1
    /* 194D3C 802DC22C 24A10001 */  addiu      $at, $a1, 0x1
    /* 194D40 802DC230 00017043 */  sra        $t6, $at, 1
  .L802DC234_194D44:
    /* 194D44 802DC234 000E7C00 */  sll        $t7, $t6, 16
    /* 194D48 802DC238 000FC403 */  sra        $t8, $t7, 16
    /* 194D4C 802DC23C 03002825 */  or         $a1, $t8, $zero
    /* 194D50 802DC240 04C10003 */  bgez       $a2, .L802DC250_194D60
    /* 194D54 802DC244 0006C843 */   sra       $t9, $a2, 1
    /* 194D58 802DC248 24C10001 */  addiu      $at, $a2, 0x1
    /* 194D5C 802DC24C 0001C843 */  sra        $t9, $at, 1
  .L802DC250_194D60:
    /* 194D60 802DC250 00194C00 */  sll        $t1, $t9, 16
    /* 194D64 802DC254 00095403 */  sra        $t2, $t1, 16
    /* 194D68 802DC258 27B80038 */  addiu      $t8, $sp, 0x38
    /* 194D6C 802DC25C 27AF003C */  addiu      $t7, $sp, 0x3C
    /* 194D70 802DC260 27AE0040 */  addiu      $t6, $sp, 0x40
    /* 194D74 802DC264 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 194D78 802DC268 AFAF0014 */  sw         $t7, 0x14($sp)
    /* 194D7C 802DC26C AFB80018 */  sw         $t8, 0x18($sp)
    /* 194D80 802DC270 01403025 */  or         $a2, $t2, $zero
    /* 194D84 802DC274 04E10003 */  bgez       $a3, .L802DC284_194D94
    /* 194D88 802DC278 00075843 */   sra       $t3, $a3, 1
    /* 194D8C 802DC27C 24E10001 */  addiu      $at, $a3, 0x1
    /* 194D90 802DC280 00015843 */  sra        $t3, $at, 1
  .L802DC284_194D94:
    /* 194D94 802DC284 000B6400 */  sll        $t4, $t3, 16
    /* 194D98 802DC288 0C04A10A */  jal        func_80128428_1373D8
    /* 194D9C 802DC28C 000C3C03 */   sra       $a3, $t4, 16
    /* 194DA0 802DC290 9219001A */  lbu        $t9, 0x1A($s0)
    /* 194DA4 802DC294 8FAA004C */  lw         $t2, 0x4C($sp)
    /* 194DA8 802DC298 3C078025 */  lui        $a3, %hi(D_8025668C)
    /* 194DAC 802DC29C 00194880 */  sll        $t1, $t9, 2
    /* 194DB0 802DC2A0 01394823 */  subu       $t1, $t1, $t9
    /* 194DB4 802DC2A4 00094880 */  sll        $t1, $t1, 2
    /* 194DB8 802DC2A8 01394821 */  addu       $t1, $t1, $t9
    /* 194DBC 802DC2AC 000948C0 */  sll        $t1, $t1, 3
    /* 194DC0 802DC2B0 00E93821 */  addu       $a3, $a3, $t1
    /* 194DC4 802DC2B4 94E7668C */  lhu        $a3, %lo(D_8025668C)($a3)
    /* 194DC8 802DC2B8 87A40042 */  lh         $a0, 0x42($sp)
    /* 194DCC 802DC2BC 87A5003E */  lh         $a1, 0x3E($sp)
    /* 194DD0 802DC2C0 87A6003A */  lh         $a2, 0x3A($sp)
    /* 194DD4 802DC2C4 AFA00014 */  sw         $zero, 0x14($sp)
    /* 194DD8 802DC2C8 0C037C0E */  jal        func_800DF038_EDFE8
    /* 194DDC 802DC2CC AFAA0010 */   sw        $t2, 0x10($sp)
  .L802DC2D0_194DE0:
    /* 194DE0 802DC2D0 8FBF002C */  lw         $ra, 0x2C($sp)
    /* 194DE4 802DC2D4 8FB00028 */  lw         $s0, 0x28($sp)
    /* 194DE8 802DC2D8 27BD0048 */  addiu      $sp, $sp, 0x48
    /* 194DEC 802DC2DC 03E00008 */  jr         $ra
    /* 194DF0 802DC2E0 00000000 */   nop
endlabel func_802DC1B8_194CC8
