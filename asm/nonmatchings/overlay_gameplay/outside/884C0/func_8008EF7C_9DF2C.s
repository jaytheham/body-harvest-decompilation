nonmatching func_8008EF7C_9DF2C, 0x140

glabel func_8008EF7C_9DF2C
    /* 9DF2C 8008EF7C 308500FF */  andi       $a1, $a0, 0xFF
    /* 9DF30 8008EF80 00057080 */  sll        $t6, $a1, 2
    /* 9DF34 8008EF84 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 9DF38 8008EF88 01C57021 */  addu       $t6, $t6, $a1
    /* 9DF3C 8008EF8C 3C0F8005 */  lui        $t7, %hi(alienInstances)
    /* 9DF40 8008EF90 AFB00018 */  sw         $s0, 0x18($sp)
    /* 9DF44 8008EF94 25EF8198 */  addiu      $t7, $t7, %lo(alienInstances)
    /* 9DF48 8008EF98 000E7100 */  sll        $t6, $t6, 4
    /* 9DF4C 8008EF9C 01CF8021 */  addu       $s0, $t6, $t7
    /* 9DF50 8008EFA0 8618000C */  lh         $t8, 0xC($s0)
    /* 9DF54 8008EFA4 3C028015 */  lui        $v0, %hi(D_8014DD50)
    /* 9DF58 8008EFA8 2442DD50 */  addiu      $v0, $v0, %lo(D_8014DD50)
    /* 9DF5C 8008EFAC 0018C900 */  sll        $t9, $t8, 4
    /* 9DF60 8008EFB0 AFA40030 */  sw         $a0, 0x30($sp)
    /* 9DF64 8008EFB4 00594021 */  addu       $t0, $v0, $t9
    /* 9DF68 8008EFB8 8104000C */  lb         $a0, 0xC($t0)
    /* 9DF6C 8008EFBC AFBF001C */  sw         $ra, 0x1C($sp)
    /* 9DF70 8008EFC0 00044900 */  sll        $t1, $a0, 4
    /* 9DF74 8008EFC4 00493021 */  addu       $a2, $v0, $t1
    /* 9DF78 8008EFC8 80C3000D */  lb         $v1, 0xD($a2)
    /* 9DF7C 8008EFCC 00035100 */  sll        $t2, $v1, 4
    /* 9DF80 8008EFD0 004A5821 */  addu       $t3, $v0, $t2
    /* 9DF84 8008EFD4 8167000D */  lb         $a3, 0xD($t3)
    /* 9DF88 8008EFD8 00076100 */  sll        $t4, $a3, 4
    /* 9DF8C 8008EFDC 004C6821 */  addu       $t5, $v0, $t4
    /* 9DF90 8008EFE0 81AE000D */  lb         $t6, 0xD($t5)
    /* 9DF94 8008EFE4 AFA60020 */  sw         $a2, 0x20($sp)
    /* 9DF98 8008EFE8 A7A4002E */  sh         $a0, 0x2E($sp)
    /* 9DF9C 8008EFEC A7A3002C */  sh         $v1, 0x2C($sp)
    /* 9DFA0 8008EFF0 A7A7002A */  sh         $a3, 0x2A($sp)
    /* 9DFA4 8008EFF4 0C020797 */  jal        func_80081E5C_90E0C
    /* 9DFA8 8008EFF8 A7AE0028 */   sh        $t6, 0x28($sp)
    /* 9DFAC 8008EFFC 0C020797 */  jal        func_80081E5C_90E0C
    /* 9DFB0 8008F000 87A4002C */   lh        $a0, 0x2C($sp)
    /* 9DFB4 8008F004 0C020797 */  jal        func_80081E5C_90E0C
    /* 9DFB8 8008F008 87A4002A */   lh        $a0, 0x2A($sp)
    /* 9DFBC 8008F00C 0C020797 */  jal        func_80081E5C_90E0C
    /* 9DFC0 8008F010 87A40028 */   lh        $a0, 0x28($sp)
    /* 9DFC4 8008F014 8FAF0020 */  lw         $t7, 0x20($sp)
    /* 9DFC8 8008F018 93A4002F */  lbu        $a0, 0x2F($sp)
    /* 9DFCC 8008F01C 85F8000E */  lh         $t8, 0xE($t7)
    /* 9DFD0 8008F020 57000022 */  bnel       $t8, $zero, .L8008F0AC_9E05C
    /* 9DFD4 8008F024 8FBF001C */   lw        $ra, 0x1C($sp)
    /* 9DFD8 8008F028 9219004B */  lbu        $t9, 0x4B($s0)
    /* 9DFDC 8008F02C 3C098014 */  lui        $t1, %hi(D_8013C658)
    /* 9DFE0 8008F030 2529C658 */  addiu      $t1, $t1, %lo(D_8013C658)
    /* 9DFE4 8008F034 00194100 */  sll        $t0, $t9, 4
    /* 9DFE8 8008F038 0C020721 */  jal        func_80081C84_90C34
    /* 9DFEC 8008F03C 01092821 */   addu      $a1, $t0, $t1
    /* 9DFF0 8008F040 920A004B */  lbu        $t2, 0x4B($s0)
    /* 9DFF4 8008F044 3C0C8014 */  lui        $t4, %hi(D_8013C678)
    /* 9DFF8 8008F048 258CC678 */  addiu      $t4, $t4, %lo(D_8013C678)
    /* 9DFFC 8008F04C 000A5900 */  sll        $t3, $t2, 4
    /* 9E000 8008F050 016C2821 */  addu       $a1, $t3, $t4
    /* 9E004 8008F054 0C020721 */  jal        func_80081C84_90C34
    /* 9E008 8008F058 93A4002D */   lbu       $a0, 0x2D($sp)
    /* 9E00C 8008F05C 920D004B */  lbu        $t5, 0x4B($s0)
    /* 9E010 8008F060 3C0F8014 */  lui        $t7, %hi(D_8013C698)
    /* 9E014 8008F064 25EFC698 */  addiu      $t7, $t7, %lo(D_8013C698)
    /* 9E018 8008F068 000D7100 */  sll        $t6, $t5, 4
    /* 9E01C 8008F06C 01CF2821 */  addu       $a1, $t6, $t7
    /* 9E020 8008F070 0C020721 */  jal        func_80081C84_90C34
    /* 9E024 8008F074 93A4002B */   lbu       $a0, 0x2B($sp)
    /* 9E028 8008F078 9218004B */  lbu        $t8, 0x4B($s0)
    /* 9E02C 8008F07C 3C088014 */  lui        $t0, %hi(D_8013C6B8)
    /* 9E030 8008F080 2508C6B8 */  addiu      $t0, $t0, %lo(D_8013C6B8)
    /* 9E034 8008F084 0018C900 */  sll        $t9, $t8, 4
    /* 9E038 8008F088 03282821 */  addu       $a1, $t9, $t0
    /* 9E03C 8008F08C 0C020721 */  jal        func_80081C84_90C34
    /* 9E040 8008F090 93A40029 */   lbu       $a0, 0x29($sp)
    /* 9E044 8008F094 9209004B */  lbu        $t1, 0x4B($s0)
    /* 9E048 8008F098 252B0001 */  addiu      $t3, $t1, 0x1
    /* 9E04C 8008F09C A20B004B */  sb         $t3, 0x4B($s0)
    /* 9E050 8008F0A0 316C0001 */  andi       $t4, $t3, 0x1
    /* 9E054 8008F0A4 A20C004B */  sb         $t4, 0x4B($s0)
    /* 9E058 8008F0A8 8FBF001C */  lw         $ra, 0x1C($sp)
  .L8008F0AC_9E05C:
    /* 9E05C 8008F0AC 8FB00018 */  lw         $s0, 0x18($sp)
    /* 9E060 8008F0B0 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 9E064 8008F0B4 03E00008 */  jr         $ra
    /* 9E068 8008F0B8 00000000 */   nop
endlabel func_8008EF7C_9DF2C
