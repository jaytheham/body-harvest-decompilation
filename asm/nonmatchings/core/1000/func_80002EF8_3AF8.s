nonmatching func_80002EF8_3AF8, 0x16C

glabel func_80002EF8_3AF8
    /* 3AF8 80002EF8 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 3AFC 80002EFC AFBF002C */  sw         $ra, 0x2C($sp)
    /* 3B00 80002F00 AFB50028 */  sw         $s5, 0x28($sp)
    /* 3B04 80002F04 AFB40024 */  sw         $s4, 0x24($sp)
    /* 3B08 80002F08 AFB30020 */  sw         $s3, 0x20($sp)
    /* 3B0C 80002F0C AFB2001C */  sw         $s2, 0x1C($sp)
    /* 3B10 80002F10 AFB10018 */  sw         $s1, 0x18($sp)
    /* 3B14 80002F14 AFB00014 */  sw         $s0, 0x14($sp)
    /* 3B18 80002F18 0C000509 */  jal        func_80001424_2024
    /* 3B1C 80002F1C AFA40038 */   sw        $a0, 0x38($sp)
    /* 3B20 80002F20 0C003FD0 */  jal        func_8000FF40_10B40
    /* 3B24 80002F24 00000000 */   nop
    /* 3B28 80002F28 3C128004 */  lui        $s2, %hi(D_80043388)
    /* 3B2C 80002F2C 26523388 */  addiu      $s2, $s2, %lo(D_80043388)
    /* 3B30 80002F30 0C0075B8 */  jal        osContStartReadData
    /* 3B34 80002F34 02402025 */   or        $a0, $s2, $zero
    /* 3B38 80002F38 3C158004 */  lui        $s5, %hi(D_80047F8C)
    /* 3B3C 80002F3C 3C148004 */  lui        $s4, %hi(D_80047F88)
    /* 3B40 80002F40 3C118004 */  lui        $s1, %hi(__osActiveQueue2)
    /* 3B44 80002F44 3C108004 */  lui        $s0, %hi(D_800476A0)
    /* 3B48 80002F48 261076A0 */  addiu      $s0, $s0, %lo(D_800476A0)
    /* 3B4C 80002F4C 2631769C */  addiu      $s1, $s1, %lo(__osActiveQueue2)
    /* 3B50 80002F50 26947F88 */  addiu      $s4, $s4, %lo(D_80047F88)
    /* 3B54 80002F54 26B57F8C */  addiu      $s5, $s5, %lo(D_80047F8C)
    /* 3B58 80002F58 27B30034 */  addiu      $s3, $sp, 0x34
    /* 3B5C 80002F5C 02402025 */  or         $a0, $s2, $zero
  .L80002F60_3B60:
    /* 3B60 80002F60 02602825 */  or         $a1, $s3, $zero
    /* 3B64 80002F64 0C006E9C */  jal        osRecvMesg
    /* 3B68 80002F68 24060001 */   addiu     $a2, $zero, 0x1
    /* 3B6C 80002F6C 0C000BB5 */  jal        func_80002ED4_3AD4
    /* 3B70 80002F70 00000000 */   nop
    /* 3B74 80002F74 0C003FE2 */  jal        __osSiRelAccess
    /* 3B78 80002F78 00000000 */   nop
    /* 3B7C 80002F7C 0C000464 */  jal        func_80001190_1D90
    /* 3B80 80002F80 00000000 */   nop
    /* 3B84 80002F84 0C000D76 */  jal        func_800035D8_41D8
    /* 3B88 80002F88 2404000A */   addiu     $a0, $zero, 0xA
    /* 3B8C 80002F8C 860E0000 */  lh         $t6, 0x0($s0)
    /* 3B90 80002F90 25CFFFFF */  addiu      $t7, $t6, -0x1
    /* 3B94 80002F94 2DE10006 */  sltiu      $at, $t7, 0x6
    /* 3B98 80002F98 10200022 */  beqz       $at, .L80003024_3C24
    /* 3B9C 80002F9C 000F7880 */   sll       $t7, $t7, 2
    /* 3BA0 80002FA0 3C018003 */  lui        $at, %hi(jtbl_80036C8C_core)
    /* 3BA4 80002FA4 002F0821 */  addu       $at, $at, $t7
    /* 3BA8 80002FA8 8C2F6C8C */  lw         $t7, %lo(jtbl_80036C8C_core)($at)
    /* 3BAC 80002FAC 01E00008 */  jr         $t7
    /* 3BB0 80002FB0 00000000 */   nop
    /* 3BB4 80002FB4 8E380000 */  lw         $t8, 0x0($s1)
    /* 3BB8 80002FB8 13000003 */  beqz       $t8, .L80002FC8_3BC8
    /* 3BBC 80002FBC 00000000 */   nop
    /* 3BC0 80002FC0 0C000B29 */  jal        func_80002CA4_38A4
    /* 3BC4 80002FC4 00000000 */   nop
  .L80002FC8_3BC8:
    /* 3BC8 80002FC8 10000016 */  b          .L80003024_3C24
    /* 3BCC 80002FCC A6000000 */   sh        $zero, 0x0($s0)
    /* 3BD0 80002FD0 8E390000 */  lw         $t9, 0x0($s1)
    /* 3BD4 80002FD4 13200003 */  beqz       $t9, .L80002FE4_3BE4
    /* 3BD8 80002FD8 00000000 */   nop
    /* 3BDC 80002FDC 0C000B41 */  jal        guess_saveHighScores
    /* 3BE0 80002FE0 00000000 */   nop
  .L80002FE4_3BE4:
    /* 3BE4 80002FE4 1000000F */  b          .L80003024_3C24
    /* 3BE8 80002FE8 A6000000 */   sh        $zero, 0x0($s0)
    /* 3BEC 80002FEC 0C000B56 */  jal        func_80002D58_3958
    /* 3BF0 80002FF0 00000000 */   nop
    /* 3BF4 80002FF4 1000000B */  b          .L80003024_3C24
    /* 3BF8 80002FF8 A6000000 */   sh        $zero, 0x0($s0)
    /* 3BFC 80002FFC 0C000B6C */  jal        guess_deleteSavedData
    /* 3C00 80003000 00000000 */   nop
    /* 3C04 80003004 0C000661 */  jal        func_80001984_2584
    /* 3C08 80003008 00000000 */   nop
    /* 3C0C 8000300C 10000005 */  b          .L80003024_3C24
    /* 3C10 80003010 A6000000 */   sh        $zero, 0x0($s0)
    /* 3C14 80003014 8E840000 */  lw         $a0, 0x0($s4)
    /* 3C18 80003018 0C000838 */  jal        func_800020E0_2CE0
    /* 3C1C 8000301C 8EA50000 */   lw        $a1, 0x0($s5)
    /* 3C20 80003020 A6000000 */  sh         $zero, 0x0($s0)
  .L80003024_3C24:
    /* 3C24 80003024 0C003FD0 */  jal        func_8000FF40_10B40
    /* 3C28 80003028 00000000 */   nop
    /* 3C2C 8000302C 0C0075B8 */  jal        osContStartReadData
    /* 3C30 80003030 02402025 */   or        $a0, $s2, $zero
    /* 3C34 80003034 1000FFCA */  b          .L80002F60_3B60
    /* 3C38 80003038 02402025 */   or        $a0, $s2, $zero
    /* 3C3C 8000303C 00000000 */  nop
    /* 3C40 80003040 8FBF002C */  lw         $ra, 0x2C($sp)
    /* 3C44 80003044 8FB00014 */  lw         $s0, 0x14($sp)
    /* 3C48 80003048 8FB10018 */  lw         $s1, 0x18($sp)
    /* 3C4C 8000304C 8FB2001C */  lw         $s2, 0x1C($sp)
    /* 3C50 80003050 8FB30020 */  lw         $s3, 0x20($sp)
    /* 3C54 80003054 8FB40024 */  lw         $s4, 0x24($sp)
    /* 3C58 80003058 8FB50028 */  lw         $s5, 0x28($sp)
    /* 3C5C 8000305C 03E00008 */  jr         $ra
    /* 3C60 80003060 27BD0038 */   addiu     $sp, $sp, 0x38
endlabel func_80002EF8_3AF8
