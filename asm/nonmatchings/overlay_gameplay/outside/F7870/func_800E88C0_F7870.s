nonmatching func_800E88C0_F7870, 0x140

glabel func_800E88C0_F7870
    /* F7870 800E88C0 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* F7874 800E88C4 AFBF001C */  sw         $ra, 0x1C($sp)
    /* F7878 800E88C8 AFB00018 */  sw         $s0, 0x18($sp)
    /* F787C 800E88CC 0C004800 */  jal        func_80012000_12C00
    /* F7880 800E88D0 00A08025 */   or        $s0, $a1, $zero
    /* F7884 800E88D4 1200000C */  beqz       $s0, .L800E8908_F78B8
    /* F7888 800E88D8 00402825 */   or        $a1, $v0, $zero
    /* F788C 800E88DC 24010001 */  addiu      $at, $zero, 0x1
    /* F7890 800E88E0 1201000E */  beq        $s0, $at, .L800E891C_F78CC
    /* F7894 800E88E4 3C02802D */   lui       $v0, %hi(D_802C9480)
    /* F7898 800E88E8 24010002 */  addiu      $at, $zero, 0x2
    /* F789C 800E88EC 12010010 */  beq        $s0, $at, .L800E8930_F78E0
    /* F78A0 800E88F0 3C02802D */   lui       $v0, %hi(D_802C9EA8)
    /* F78A4 800E88F4 3C108015 */  lui        $s0, %hi(D_801575B0)
    /* F78A8 800E88F8 3C068015 */  lui        $a2, %hi(D_801575A8)
    /* F78AC 800E88FC 8CC675A8 */  lw         $a2, %lo(D_801575A8)($a2)
    /* F78B0 800E8900 1000000F */  b          .L800E8940_F78F0
    /* F78B4 800E8904 8E1075B0 */   lw        $s0, %lo(D_801575B0)($s0)
  .L800E8908_F78B8:
    /* F78B8 800E8908 3C108015 */  lui        $s0, %hi(D_801575B0)
    /* F78BC 800E890C 3C068015 */  lui        $a2, %hi(D_801575A8)
    /* F78C0 800E8910 8CC675A8 */  lw         $a2, %lo(D_801575A8)($a2)
    /* F78C4 800E8914 1000000A */  b          .L800E8940_F78F0
    /* F78C8 800E8918 8E1075B0 */   lw        $s0, %lo(D_801575B0)($s0)
  .L800E891C_F78CC:
    /* F78CC 800E891C 24469480 */  addiu      $a2, $v0, %lo(D_802C9480)
    /* F78D0 800E8920 3C018015 */  lui        $at, %hi(D_801575AC)
    /* F78D4 800E8924 AC2675AC */  sw         $a2, %lo(D_801575AC)($at)
    /* F78D8 800E8928 10000005 */  b          .L800E8940_F78F0
    /* F78DC 800E892C 00008025 */   or        $s0, $zero, $zero
  .L800E8930_F78E0:
    /* F78E0 800E8930 24469EA8 */  addiu      $a2, $v0, %lo(D_802C9EA8)
    /* F78E4 800E8934 3C018015 */  lui        $at, %hi(D_801575AC)
    /* F78E8 800E8938 AC2675AC */  sw         $a2, %lo(D_801575AC)($at)
    /* F78EC 800E893C 00008025 */  or         $s0, $zero, $zero
  .L800E8940_F78F0:
    /* F78F0 800E8940 00C05825 */  or         $t3, $a2, $zero
    /* F78F4 800E8944 240A0004 */  addiu      $t2, $zero, 0x4
    /* F78F8 800E8948 2409FFB1 */  addiu      $t1, $zero, -0x4F
    /* F78FC 800E894C 2408FFBF */  addiu      $t0, $zero, -0x41
    /* F7900 800E8950 2404FFB8 */  addiu      $a0, $zero, -0x48
    /* F7904 800E8954 27A30030 */  addiu      $v1, $sp, 0x30
    /* F7908 800E8958 8CA10000 */  lw         $at, 0x0($a1)
  .L800E895C_F790C:
    /* F790C 800E895C 24A50008 */  addiu      $a1, $a1, 0x8
    /* F7910 800E8960 AC610000 */  sw         $at, 0x0($v1)
    /* F7914 800E8964 8CB8FFFC */  lw         $t8, -0x4($a1)
    /* F7918 800E8968 AC780004 */  sw         $t8, 0x4($v1)
    /* F791C 800E896C 83B90030 */  lb         $t9, 0x30($sp)
    /* F7920 800E8970 13280007 */  beq        $t9, $t0, .L800E8990_F7940
    /* F7924 800E8974 03201025 */   or        $v0, $t9, $zero
    /* F7928 800E8978 53290006 */  beql       $t9, $t1, .L800E8994_F7944
    /* F792C 800E897C 8C610000 */   lw        $at, 0x0($v1)
    /* F7930 800E8980 53240004 */  beql       $t9, $a0, .L800E8994_F7944
    /* F7934 800E8984 8C610000 */   lw        $at, 0x0($v1)
    /* F7938 800E8988 172A0007 */  bne        $t9, $t2, .L800E89A8_F7958
    /* F793C 800E898C 00000000 */   nop
  .L800E8990_F7940:
    /* F7940 800E8990 8C610000 */  lw         $at, 0x0($v1)
  .L800E8994_F7944:
    /* F7944 800E8994 24C60008 */  addiu      $a2, $a2, 0x8
    /* F7948 800E8998 26100001 */  addiu      $s0, $s0, 0x1
    /* F794C 800E899C ACC1FFF8 */  sw         $at, -0x8($a2)
    /* F7950 800E89A0 8C6D0004 */  lw         $t5, 0x4($v1)
    /* F7954 800E89A4 ACCDFFFC */  sw         $t5, -0x4($a2)
  .L800E89A8_F7958:
    /* F7958 800E89A8 5444FFEC */  bnel       $v0, $a0, .L800E895C_F790C
    /* F795C 800E89AC 8CA10000 */   lw        $at, 0x0($a1)
    /* F7960 800E89B0 3C018015 */  lui        $at, %hi(D_801575A8)
    /* F7964 800E89B4 AC2675A8 */  sw         $a2, %lo(D_801575A8)($at)
    /* F7968 800E89B8 3C018015 */  lui        $at, %hi(D_801575B0)
    /* F796C 800E89BC AC3075B0 */  sw         $s0, %lo(D_801575B0)($at)
    /* F7970 800E89C0 2A010145 */  slti       $at, $s0, 0x145
    /* F7974 800E89C4 14200009 */  bnez       $at, .L800E89EC_F799C
    /* F7978 800E89C8 3C048014 */   lui       $a0, %hi(D_80144260)
    /* F797C 800E89CC 3C018015 */  lui        $at, %hi(D_801575B0)
    /* F7980 800E89D0 AC3075B0 */  sw         $s0, %lo(D_801575B0)($at)
    /* F7984 800E89D4 24844260 */  addiu      $a0, $a0, %lo(D_80144260)
    /* F7988 800E89D8 02002825 */  or         $a1, $s0, $zero
    /* F798C 800E89DC 24060145 */  addiu      $a2, $zero, 0x145
    /* F7990 800E89E0 0C00731B */  jal        osSyncPrintf
    /* F7994 800E89E4 AFAB0024 */   sw        $t3, 0x24($sp)
    /* F7998 800E89E8 8FAB0024 */  lw         $t3, 0x24($sp)
  .L800E89EC_F799C:
    /* F799C 800E89EC 8FBF001C */  lw         $ra, 0x1C($sp)
    /* F79A0 800E89F0 8FB00018 */  lw         $s0, 0x18($sp)
    /* F79A4 800E89F4 27BD0038 */  addiu      $sp, $sp, 0x38
    /* F79A8 800E89F8 03E00008 */  jr         $ra
    /* F79AC 800E89FC 01601025 */   or        $v0, $t3, $zero
endlabel func_800E88C0_F7870
