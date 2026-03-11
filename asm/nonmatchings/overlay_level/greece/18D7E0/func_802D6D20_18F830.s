nonmatching func_802D6D20_18F830, 0x25C

glabel func_802D6D20_18F830
    /* 18F830 802D6D20 3C0E8005 */  lui        $t6, %hi(D_80048030)
    /* 18F834 802D6D24 91CE8030 */  lbu        $t6, %lo(D_80048030)($t6)
    /* 18F838 802D6D28 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 18F83C 802D6D2C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 18F840 802D6D30 2DC10011 */  sltiu      $at, $t6, 0x11
    /* 18F844 802D6D34 1020008D */  beqz       $at, .L802D6F6C_18FA7C
    /* 18F848 802D6D38 000E7080 */   sll       $t6, $t6, 2
    /* 18F84C 802D6D3C 3C01802E */  lui        $at, %hi(jtbl_802DE3BC_overlay_level_greece)
    /* 18F850 802D6D40 002E0821 */  addu       $at, $at, $t6
    /* 18F854 802D6D44 8C2EE3BC */  lw         $t6, %lo(jtbl_802DE3BC_overlay_level_greece)($at)
    /* 18F858 802D6D48 01C00008 */  jr         $t6
    /* 18F85C 802D6D4C 00000000 */   nop
    /* 18F860 802D6D50 2404FFDB */  addiu      $a0, $zero, -0x25
    /* 18F864 802D6D54 2405FFCE */  addiu      $a1, $zero, -0x32
    /* 18F868 802D6D58 0C001206 */  jal        func_80004818_5418
    /* 18F86C 802D6D5C 24060001 */   addiu     $a2, $zero, 0x1
    /* 18F870 802D6D60 50400083 */  beql       $v0, $zero, .L802D6F70_18FA80
    /* 18F874 802D6D64 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18F878 802D6D68 0C001DB5 */  jal        func_800076D4_82D4
    /* 18F87C 802D6D6C 24040001 */   addiu     $a0, $zero, 0x1
    /* 18F880 802D6D70 1000007F */  b          .L802D6F70_18FA80
    /* 18F884 802D6D74 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18F888 802D6D78 0C04E4E8 */  jal        func_801393A0_148350
    /* 18F88C 802D6D7C 24040007 */   addiu     $a0, $zero, 0x7
    /* 18F890 802D6D80 5040007B */  beql       $v0, $zero, .L802D6F70_18FA80
    /* 18F894 802D6D84 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18F898 802D6D88 0C001DB5 */  jal        func_800076D4_82D4
    /* 18F89C 802D6D8C 24040002 */   addiu     $a0, $zero, 0x2
    /* 18F8A0 802D6D90 10000077 */  b          .L802D6F70_18FA80
    /* 18F8A4 802D6D94 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18F8A8 802D6D98 2404FFC2 */  addiu      $a0, $zero, -0x3E
    /* 18F8AC 802D6D9C 2405FFA4 */  addiu      $a1, $zero, -0x5C
    /* 18F8B0 802D6DA0 0C001206 */  jal        func_80004818_5418
    /* 18F8B4 802D6DA4 24060002 */   addiu     $a2, $zero, 0x2
    /* 18F8B8 802D6DA8 50400071 */  beql       $v0, $zero, .L802D6F70_18FA80
    /* 18F8BC 802D6DAC 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18F8C0 802D6DB0 0C001DB5 */  jal        func_800076D4_82D4
    /* 18F8C4 802D6DB4 24040003 */   addiu     $a0, $zero, 0x3
    /* 18F8C8 802D6DB8 1000006D */  b          .L802D6F70_18FA80
    /* 18F8CC 802D6DBC 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18F8D0 802D6DC0 24040000 */  addiu      $a0, $zero, 0x0
    /* 18F8D4 802D6DC4 0C001C9B */  jal        func_8000726C_7E6C
    /* 18F8D8 802D6DC8 2405000A */   addiu     $a1, $zero, 0xA
    /* 18F8DC 802D6DCC 50400068 */  beql       $v0, $zero, .L802D6F70_18FA80
    /* 18F8E0 802D6DD0 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18F8E4 802D6DD4 0C001DB5 */  jal        func_800076D4_82D4
    /* 18F8E8 802D6DD8 24040004 */   addiu     $a0, $zero, 0x4
    /* 18F8EC 802D6DDC 10000064 */  b          .L802D6F70_18FA80
    /* 18F8F0 802D6DE0 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18F8F4 802D6DE4 3C0F8005 */  lui        $t7, %hi(D_80052B34)
    /* 18F8F8 802D6DE8 8DEF2B34 */  lw         $t7, %lo(D_80052B34)($t7)
    /* 18F8FC 802D6DEC 24010007 */  addiu      $at, $zero, 0x7
    /* 18F900 802D6DF0 91F8001A */  lbu        $t8, 0x1A($t7)
    /* 18F904 802D6DF4 5701005E */  bnel       $t8, $at, .L802D6F70_18FA80
    /* 18F908 802D6DF8 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18F90C 802D6DFC 0C001DB5 */  jal        func_800076D4_82D4
    /* 18F910 802D6E00 24040006 */   addiu     $a0, $zero, 0x6
    /* 18F914 802D6E04 1000005A */  b          .L802D6F70_18FA80
    /* 18F918 802D6E08 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18F91C 802D6E0C 2404FF9F */  addiu      $a0, $zero, -0x61
    /* 18F920 802D6E10 24050003 */  addiu      $a1, $zero, 0x3
    /* 18F924 802D6E14 0C001206 */  jal        func_80004818_5418
    /* 18F928 802D6E18 24060003 */   addiu     $a2, $zero, 0x3
    /* 18F92C 802D6E1C 50400054 */  beql       $v0, $zero, .L802D6F70_18FA80
    /* 18F930 802D6E20 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18F934 802D6E24 0C001DB5 */  jal        func_800076D4_82D4
    /* 18F938 802D6E28 24040007 */   addiu     $a0, $zero, 0x7
    /* 18F93C 802D6E2C 10000050 */  b          .L802D6F70_18FA80
    /* 18F940 802D6E30 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18F944 802D6E34 2404FF99 */  addiu      $a0, $zero, -0x67
    /* 18F948 802D6E38 24050010 */  addiu      $a1, $zero, 0x10
    /* 18F94C 802D6E3C 0C001206 */  jal        func_80004818_5418
    /* 18F950 802D6E40 24060010 */   addiu     $a2, $zero, 0x10
    /* 18F954 802D6E44 5440004A */  bnel       $v0, $zero, .L802D6F70_18FA80
    /* 18F958 802D6E48 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18F95C 802D6E4C 0C001DB5 */  jal        func_800076D4_82D4
    /* 18F960 802D6E50 24040008 */   addiu     $a0, $zero, 0x8
    /* 18F964 802D6E54 10000046 */  b          .L802D6F70_18FA80
    /* 18F968 802D6E58 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18F96C 802D6E5C 2404FFDF */  addiu      $a0, $zero, -0x21
    /* 18F970 802D6E60 24050038 */  addiu      $a1, $zero, 0x38
    /* 18F974 802D6E64 0C001206 */  jal        func_80004818_5418
    /* 18F978 802D6E68 24060002 */   addiu     $a2, $zero, 0x2
    /* 18F97C 802D6E6C 50400040 */  beql       $v0, $zero, .L802D6F70_18FA80
    /* 18F980 802D6E70 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18F984 802D6E74 0C001DB5 */  jal        func_800076D4_82D4
    /* 18F988 802D6E78 24040009 */   addiu     $a0, $zero, 0x9
    /* 18F98C 802D6E7C 1000003C */  b          .L802D6F70_18FA80
    /* 18F990 802D6E80 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18F994 802D6E84 24040000 */  addiu      $a0, $zero, 0x0
    /* 18F998 802D6E88 0C001C9B */  jal        func_8000726C_7E6C
    /* 18F99C 802D6E8C 24050024 */   addiu     $a1, $zero, 0x24
    /* 18F9A0 802D6E90 14400006 */  bnez       $v0, .L802D6EAC_18F9BC
    /* 18F9A4 802D6E94 2404FFB2 */   addiu     $a0, $zero, -0x4E
    /* 18F9A8 802D6E98 24050061 */  addiu      $a1, $zero, 0x61
    /* 18F9AC 802D6E9C 0C001206 */  jal        func_80004818_5418
    /* 18F9B0 802D6EA0 24060001 */   addiu     $a2, $zero, 0x1
    /* 18F9B4 802D6EA4 50400032 */  beql       $v0, $zero, .L802D6F70_18FA80
    /* 18F9B8 802D6EA8 8FBF0014 */   lw        $ra, 0x14($sp)
  .L802D6EAC_18F9BC:
    /* 18F9BC 802D6EAC 0C001DB5 */  jal        func_800076D4_82D4
    /* 18F9C0 802D6EB0 2404000A */   addiu     $a0, $zero, 0xA
    /* 18F9C4 802D6EB4 1000002E */  b          .L802D6F70_18FA80
    /* 18F9C8 802D6EB8 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18F9CC 802D6EBC 24040000 */  addiu      $a0, $zero, 0x0
    /* 18F9D0 802D6EC0 0C001C9B */  jal        func_8000726C_7E6C
    /* 18F9D4 802D6EC4 24050014 */   addiu     $a1, $zero, 0x14
    /* 18F9D8 802D6EC8 50400029 */  beql       $v0, $zero, .L802D6F70_18FA80
    /* 18F9DC 802D6ECC 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18F9E0 802D6ED0 0C001DB5 */  jal        func_800076D4_82D4
    /* 18F9E4 802D6ED4 2404000B */   addiu     $a0, $zero, 0xB
    /* 18F9E8 802D6ED8 10000025 */  b          .L802D6F70_18FA80
    /* 18F9EC 802D6EDC 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18F9F0 802D6EE0 00002025 */  or         $a0, $zero, $zero
    /* 18F9F4 802D6EE4 24050055 */  addiu      $a1, $zero, 0x55
    /* 18F9F8 802D6EE8 0C001206 */  jal        func_80004818_5418
    /* 18F9FC 802D6EEC 24060002 */   addiu     $a2, $zero, 0x2
    /* 18FA00 802D6EF0 5040001F */  beql       $v0, $zero, .L802D6F70_18FA80
    /* 18FA04 802D6EF4 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18FA08 802D6EF8 0C001DB5 */  jal        func_800076D4_82D4
    /* 18FA0C 802D6EFC 2404000C */   addiu     $a0, $zero, 0xC
    /* 18FA10 802D6F00 1000001B */  b          .L802D6F70_18FA80
    /* 18FA14 802D6F04 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18FA18 802D6F08 24040000 */  addiu      $a0, $zero, 0x0
    /* 18FA1C 802D6F0C 0C001C9B */  jal        func_8000726C_7E6C
    /* 18FA20 802D6F10 24050030 */   addiu     $a1, $zero, 0x30
    /* 18FA24 802D6F14 50400016 */  beql       $v0, $zero, .L802D6F70_18FA80
    /* 18FA28 802D6F18 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18FA2C 802D6F1C 0C001DB5 */  jal        func_800076D4_82D4
    /* 18FA30 802D6F20 2404000D */   addiu     $a0, $zero, 0xD
    /* 18FA34 802D6F24 10000012 */  b          .L802D6F70_18FA80
    /* 18FA38 802D6F28 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18FA3C 802D6F2C 24040000 */  addiu      $a0, $zero, 0x0
    /* 18FA40 802D6F30 0C001C9B */  jal        func_8000726C_7E6C
    /* 18FA44 802D6F34 2405001C */   addiu     $a1, $zero, 0x1C
    /* 18FA48 802D6F38 5040000D */  beql       $v0, $zero, .L802D6F70_18FA80
    /* 18FA4C 802D6F3C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18FA50 802D6F40 0C001DB5 */  jal        func_800076D4_82D4
    /* 18FA54 802D6F44 2404000E */   addiu     $a0, $zero, 0xE
    /* 18FA58 802D6F48 10000009 */  b          .L802D6F70_18FA80
    /* 18FA5C 802D6F4C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18FA60 802D6F50 24040000 */  addiu      $a0, $zero, 0x0
    /* 18FA64 802D6F54 0C001C9B */  jal        func_8000726C_7E6C
    /* 18FA68 802D6F58 2405001E */   addiu     $a1, $zero, 0x1E
    /* 18FA6C 802D6F5C 50400004 */  beql       $v0, $zero, .L802D6F70_18FA80
    /* 18FA70 802D6F60 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18FA74 802D6F64 0C001DB5 */  jal        func_800076D4_82D4
    /* 18FA78 802D6F68 2404000F */   addiu     $a0, $zero, 0xF
  .L802D6F6C_18FA7C:
    /* 18FA7C 802D6F6C 8FBF0014 */  lw         $ra, 0x14($sp)
  .L802D6F70_18FA80:
    /* 18FA80 802D6F70 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 18FA84 802D6F74 03E00008 */  jr         $ra
    /* 18FA88 802D6F78 00000000 */   nop
endlabel func_802D6D20_18F830
