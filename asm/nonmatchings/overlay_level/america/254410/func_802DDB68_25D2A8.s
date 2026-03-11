nonmatching func_802DDB68_25D2A8, 0x120

glabel func_802DDB68_25D2A8
    /* 25D2A8 802DDB68 308700FF */  andi       $a3, $a0, 0xFF
    /* 25D2AC 802DDB6C 00077080 */  sll        $t6, $a3, 2
    /* 25D2B0 802DDB70 27BDFFA8 */  addiu      $sp, $sp, -0x58
    /* 25D2B4 802DDB74 01C77021 */  addu       $t6, $t6, $a3
    /* 25D2B8 802DDB78 3C0F8005 */  lui        $t7, %hi(alienInstances)
    /* 25D2BC 802DDB7C AFB00028 */  sw         $s0, 0x28($sp)
    /* 25D2C0 802DDB80 25EF8198 */  addiu      $t7, $t7, %lo(alienInstances)
    /* 25D2C4 802DDB84 000E7100 */  sll        $t6, $t6, 4
    /* 25D2C8 802DDB88 01CF8021 */  addu       $s0, $t6, $t7
    /* 25D2CC 802DDB8C 8602000C */  lh         $v0, 0xC($s0)
    /* 25D2D0 802DDB90 3C088015 */  lui        $t0, %hi(D_8014DD50)
    /* 25D2D4 802DDB94 2508DD50 */  addiu      $t0, $t0, %lo(D_8014DD50)
    /* 25D2D8 802DDB98 0002C100 */  sll        $t8, $v0, 4
    /* 25D2DC 802DDB9C 0118C821 */  addu       $t9, $t0, $t8
    /* 25D2E0 802DDBA0 8323000C */  lb         $v1, 0xC($t9)
    /* 25D2E4 802DDBA4 AFA40058 */  sw         $a0, 0x58($sp)
    /* 25D2E8 802DDBA8 00022600 */  sll        $a0, $v0, 24
    /* 25D2EC 802DDBAC AFBF002C */  sw         $ra, 0x2C($sp)
    /* 25D2F0 802DDBB0 00044E03 */  sra        $t1, $a0, 24
    /* 25D2F4 802DDBB4 00035100 */  sll        $t2, $v1, 4
    /* 25D2F8 802DDBB8 010A2821 */  addu       $a1, $t0, $t2
    /* 25D2FC 802DDBBC 01202025 */  or         $a0, $t1, $zero
    /* 25D300 802DDBC0 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 25D304 802DDBC4 27A60044 */   addiu     $a2, $sp, 0x44
    /* 25D308 802DDBC8 27AB0040 */  addiu      $t3, $sp, 0x40
    /* 25D30C 802DDBCC 27AC003C */  addiu      $t4, $sp, 0x3C
    /* 25D310 802DDBD0 27AD0038 */  addiu      $t5, $sp, 0x38
    /* 25D314 802DDBD4 AFAD0018 */  sw         $t5, 0x18($sp)
    /* 25D318 802DDBD8 AFAC0014 */  sw         $t4, 0x14($sp)
    /* 25D31C 802DDBDC AFAB0010 */  sw         $t3, 0x10($sp)
    /* 25D320 802DDBE0 02002025 */  or         $a0, $s0, $zero
    /* 25D324 802DDBE4 87A50046 */  lh         $a1, 0x46($sp)
    /* 25D328 802DDBE8 87A6004A */  lh         $a2, 0x4A($sp)
    /* 25D32C 802DDBEC 0C04A10A */  jal        func_80128428_1373D8
    /* 25D330 802DDBF0 87A7004E */   lh        $a3, 0x4E($sp)
    /* 25D334 802DDBF4 0C01E55B */  jal        func_8007956C_8851C
    /* 25D338 802DDBF8 2404001F */   addiu     $a0, $zero, 0x1F
    /* 25D33C 802DDBFC 304E00FF */  andi       $t6, $v0, 0xFF
    /* 25D340 802DDC00 2401FFFF */  addiu      $at, $zero, -0x1
    /* 25D344 802DDC04 11C1001B */  beq        $t6, $at, .L802DDC74_25D3B4
    /* 25D348 802DDC08 304300FF */   andi      $v1, $v0, 0xFF
    /* 25D34C 802DDC0C 00037880 */  sll        $t7, $v1, 2
    /* 25D350 802DDC10 01E37821 */  addu       $t7, $t7, $v1
    /* 25D354 802DDC14 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 25D358 802DDC18 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 25D35C 802DDC1C 000F7900 */  sll        $t7, $t7, 4
    /* 25D360 802DDC20 01F81021 */  addu       $v0, $t7, $t8
    /* 25D364 802DDC24 8C4B0020 */  lw         $t3, 0x20($v0)
    /* 25D368 802DDC28 8FB90040 */  lw         $t9, 0x40($sp)
    /* 25D36C 802DDC2C 8FA9003C */  lw         $t1, 0x3C($sp)
    /* 25D370 802DDC30 8FAA0038 */  lw         $t2, 0x38($sp)
    /* 25D374 802DDC34 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* 25D378 802DDC38 01616025 */  or         $t4, $t3, $at
    /* 25D37C 802DDC3C AC4C0020 */  sw         $t4, 0x20($v0)
    /* 25D380 802DDC40 A4590000 */  sh         $t9, 0x0($v0)
    /* 25D384 802DDC44 A4490002 */  sh         $t1, 0x2($v0)
    /* 25D388 802DDC48 A44A0004 */  sh         $t2, 0x4($v0)
    /* 25D38C 802DDC4C 860D0006 */  lh         $t5, 0x6($s0)
    /* 25D390 802DDC50 240F0600 */  addiu      $t7, $zero, 0x600
    /* 25D394 802DDC54 24180014 */  addiu      $t8, $zero, 0x14
    /* 25D398 802DDC58 A44D000E */  sh         $t5, 0xE($v0)
    /* 25D39C 802DDC5C 860E0006 */  lh         $t6, 0x6($s0)
    /* 25D3A0 802DDC60 A44F0012 */  sh         $t7, 0x12($v0)
    /* 25D3A4 802DDC64 A458002C */  sh         $t8, 0x2C($v0)
    /* 25D3A8 802DDC68 00602025 */  or         $a0, $v1, $zero
    /* 25D3AC 802DDC6C 0C01E8A8 */  jal        func_8007A2A0_89250
    /* 25D3B0 802DDC70 A44E0006 */   sh        $t6, 0x6($v0)
  .L802DDC74_25D3B4:
    /* 25D3B4 802DDC74 8FBF002C */  lw         $ra, 0x2C($sp)
    /* 25D3B8 802DDC78 8FB00028 */  lw         $s0, 0x28($sp)
    /* 25D3BC 802DDC7C 27BD0058 */  addiu      $sp, $sp, 0x58
    /* 25D3C0 802DDC80 03E00008 */  jr         $ra
    /* 25D3C4 802DDC84 00000000 */   nop
endlabel func_802DDB68_25D2A8
