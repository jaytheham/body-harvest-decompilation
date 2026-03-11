nonmatching func_8008D98C_5DE3C, 0x260

glabel func_8008D98C_5DE3C
    /* 5DE3C 8008D98C 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 5DE40 8008D990 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 5DE44 8008D994 AFB30020 */  sw         $s3, 0x20($sp)
    /* 5DE48 8008D998 AFB2001C */  sw         $s2, 0x1C($sp)
    /* 5DE4C 8008D99C AFB10018 */  sw         $s1, 0x18($sp)
    /* 5DE50 8008D9A0 0C022386 */  jal        func_80088E18_592C8
    /* 5DE54 8008D9A4 AFB00014 */   sw        $s0, 0x14($sp)
    /* 5DE58 8008D9A8 3C038006 */  lui        $v1, %hi(D_8005BB2C)
    /* 5DE5C 8008D9AC 2463BB2C */  addiu      $v1, $v1, %lo(D_8005BB2C)
    /* 5DE60 8008D9B0 8C620000 */  lw         $v0, 0x0($v1)
    /* 5DE64 8008D9B4 3C1FE700 */  lui        $ra, (0xE7000000 >> 16)
    /* 5DE68 8008D9B8 3C18BA00 */  lui        $t8, (0xBA001402 >> 16)
    /* 5DE6C 8008D9BC 244E0008 */  addiu      $t6, $v0, 0x8
    /* 5DE70 8008D9C0 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 5DE74 8008D9C4 AC400004 */  sw         $zero, 0x4($v0)
    /* 5DE78 8008D9C8 AC5F0000 */  sw         $ra, 0x0($v0)
    /* 5DE7C 8008D9CC 8C620000 */  lw         $v0, 0x0($v1)
    /* 5DE80 8008D9D0 37181402 */  ori        $t8, $t8, (0xBA001402 & 0xFFFF)
    /* 5DE84 8008D9D4 3C0EB600 */  lui        $t6, (0xB6000000 >> 16)
    /* 5DE88 8008D9D8 244F0008 */  addiu      $t7, $v0, 0x8
    /* 5DE8C 8008D9DC AC6F0000 */  sw         $t7, 0x0($v1)
    /* 5DE90 8008D9E0 AC400004 */  sw         $zero, 0x4($v0)
    /* 5DE94 8008D9E4 AC580000 */  sw         $t8, 0x0($v0)
    /* 5DE98 8008D9E8 8C620000 */  lw         $v0, 0x0($v1)
    /* 5DE9C 8008D9EC 3C0F0003 */  lui        $t7, (0x32000 >> 16)
    /* 5DEA0 8008D9F0 35EF2000 */  ori        $t7, $t7, (0x32000 & 0xFFFF)
    /* 5DEA4 8008D9F4 24590008 */  addiu      $t9, $v0, 0x8
    /* 5DEA8 8008D9F8 AC790000 */  sw         $t9, 0x0($v1)
    /* 5DEAC 8008D9FC AC4F0004 */  sw         $t7, 0x4($v0)
    /* 5DEB0 8008DA00 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 5DEB4 8008DA04 8C620000 */  lw         $v0, 0x0($v1)
    /* 5DEB8 8008DA08 3C0EB700 */  lui        $t6, (0xB7000000 >> 16)
    /* 5DEBC 8008DA0C 240F0001 */  addiu      $t7, $zero, 0x1
    /* 5DEC0 8008DA10 24580008 */  addiu      $t8, $v0, 0x8
    /* 5DEC4 8008DA14 AC780000 */  sw         $t8, 0x0($v1)
    /* 5DEC8 8008DA18 AC400004 */  sw         $zero, 0x4($v0)
    /* 5DECC 8008DA1C AC5F0000 */  sw         $ra, 0x0($v0)
    /* 5DED0 8008DA20 8C620000 */  lw         $v0, 0x0($v1)
    /* 5DED4 8008DA24 24590008 */  addiu      $t9, $v0, 0x8
    /* 5DED8 8008DA28 AC790000 */  sw         $t9, 0x0($v1)
    /* 5DEDC 8008DA2C AC4F0004 */  sw         $t7, 0x4($v0)
    /* 5DEE0 8008DA30 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 5DEE4 8008DA34 8C620000 */  lw         $v0, 0x0($v1)
    /* 5DEE8 8008DA38 3C0E8000 */  lui        $t6, (0x80008000 >> 16)
    /* 5DEEC 8008DA3C 3C19BB00 */  lui        $t9, (0xBB000001 >> 16)
    /* 5DEF0 8008DA40 24580008 */  addiu      $t8, $v0, 0x8
    /* 5DEF4 8008DA44 AC780000 */  sw         $t8, 0x0($v1)
    /* 5DEF8 8008DA48 37390001 */  ori        $t9, $t9, (0xBB000001 & 0xFFFF)
    /* 5DEFC 8008DA4C 35CE8000 */  ori        $t6, $t6, (0x80008000 & 0xFFFF)
    /* 5DF00 8008DA50 AC4E0004 */  sw         $t6, 0x4($v0)
    /* 5DF04 8008DA54 AC590000 */  sw         $t9, 0x0($v0)
    /* 5DF08 8008DA58 8C620000 */  lw         $v0, 0x0($v1)
    /* 5DF0C 8008DA5C 3C18BA00 */  lui        $t8, (0xBA000C02 >> 16)
    /* 5DF10 8008DA60 37180C02 */  ori        $t8, $t8, (0xBA000C02 & 0xFFFF)
    /* 5DF14 8008DA64 244F0008 */  addiu      $t7, $v0, 0x8
    /* 5DF18 8008DA68 AC6F0000 */  sw         $t7, 0x0($v1)
    /* 5DF1C 8008DA6C 24192000 */  addiu      $t9, $zero, 0x2000
    /* 5DF20 8008DA70 AC590004 */  sw         $t9, 0x4($v0)
    /* 5DF24 8008DA74 AC580000 */  sw         $t8, 0x0($v0)
    /* 5DF28 8008DA78 8C620000 */  lw         $v0, 0x0($v1)
    /* 5DF2C 8008DA7C 3C0FBA00 */  lui        $t7, (0xBA000602 >> 16)
    /* 5DF30 8008DA80 35EF0602 */  ori        $t7, $t7, (0xBA000602 & 0xFFFF)
    /* 5DF34 8008DA84 244E0008 */  addiu      $t6, $v0, 0x8
    /* 5DF38 8008DA88 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 5DF3C 8008DA8C AC400004 */  sw         $zero, 0x4($v0)
    /* 5DF40 8008DA90 AC4F0000 */  sw         $t7, 0x0($v0)
    /* 5DF44 8008DA94 8C620000 */  lw         $v0, 0x0($v1)
    /* 5DF48 8008DA98 3C19BA00 */  lui        $t9, (0xBA001301 >> 16)
    /* 5DF4C 8008DA9C 37391301 */  ori        $t9, $t9, (0xBA001301 & 0xFFFF)
    /* 5DF50 8008DAA0 24580008 */  addiu      $t8, $v0, 0x8
    /* 5DF54 8008DAA4 AC780000 */  sw         $t8, 0x0($v1)
    /* 5DF58 8008DAA8 3C0E0008 */  lui        $t6, (0x80000 >> 16)
    /* 5DF5C 8008DAAC AC4E0004 */  sw         $t6, 0x4($v0)
    /* 5DF60 8008DAB0 AC590000 */  sw         $t9, 0x0($v0)
    /* 5DF64 8008DAB4 8C620000 */  lw         $v0, 0x0($v1)
    /* 5DF68 8008DAB8 3C190050 */  lui        $t9, (0x5049D8 >> 16)
    /* 5DF6C 8008DABC 3C18B900 */  lui        $t8, (0xB900031D >> 16)
    /* 5DF70 8008DAC0 244F0008 */  addiu      $t7, $v0, 0x8
    /* 5DF74 8008DAC4 AC6F0000 */  sw         $t7, 0x0($v1)
    /* 5DF78 8008DAC8 3718031D */  ori        $t8, $t8, (0xB900031D & 0xFFFF)
    /* 5DF7C 8008DACC 373949D8 */  ori        $t9, $t9, (0x5049D8 & 0xFFFF)
    /* 5DF80 8008DAD0 AC590004 */  sw         $t9, 0x4($v0)
    /* 5DF84 8008DAD4 AC580000 */  sw         $t8, 0x0($v0)
    /* 5DF88 8008DAD8 8C620000 */  lw         $v0, 0x0($v1)
    /* 5DF8C 8008DADC 3C0FBA00 */  lui        $t7, (0xBA000E02 >> 16)
    /* 5DF90 8008DAE0 35EF0E02 */  ori        $t7, $t7, (0xBA000E02 & 0xFFFF)
    /* 5DF94 8008DAE4 244E0008 */  addiu      $t6, $v0, 0x8
    /* 5DF98 8008DAE8 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 5DF9C 8008DAEC AC400004 */  sw         $zero, 0x4($v0)
    /* 5DFA0 8008DAF0 AC4F0000 */  sw         $t7, 0x0($v0)
    /* 5DFA4 8008DAF4 8C620000 */  lw         $v0, 0x0($v1)
    /* 5DFA8 8008DAF8 24580008 */  addiu      $t8, $v0, 0x8
    /* 5DFAC 8008DAFC AC780000 */  sw         $t8, 0x0($v1)
    /* 5DFB0 8008DB00 AC5F0000 */  sw         $ra, 0x0($v0)
    /* 5DFB4 8008DB04 0C023856 */  jal        func_8008E158_5E608
    /* 5DFB8 8008DB08 AC400004 */   sw        $zero, 0x4($v0)
    /* 5DFBC 8008DB0C 0C023E98 */  jal        func_8008FA60_5FF10
    /* 5DFC0 8008DB10 00000000 */   nop
    /* 5DFC4 8008DB14 3C12800E */  lui        $s2, %hi(D_800DE130)
    /* 5DFC8 8008DB18 2652E130 */  addiu      $s2, $s2, %lo(D_800DE130)
    /* 5DFCC 8008DB1C 00008025 */  or         $s0, $zero, $zero
    /* 5DFD0 8008DB20 2413000C */  addiu      $s3, $zero, 0xC
    /* 5DFD4 8008DB24 241100FA */  addiu      $s1, $zero, 0xFA
  .L8008DB28_5DFD8:
    /* 5DFD8 8008DB28 02130019 */  multu      $s0, $s3
    /* 5DFDC 8008DB2C 0000C812 */  mflo       $t9
    /* 5DFE0 8008DB30 02597021 */  addu       $t6, $s2, $t9
    /* 5DFE4 8008DB34 91C20000 */  lbu        $v0, 0x0($t6)
    /* 5DFE8 8008DB38 1222001E */  beq        $s1, $v0, .L8008DBB4_5E064
    /* 5DFEC 8008DB3C 2C41000B */   sltiu     $at, $v0, 0xB
    /* 5DFF0 8008DB40 1020001C */  beqz       $at, .L8008DBB4_5E064
    /* 5DFF4 8008DB44 00027880 */   sll       $t7, $v0, 2
    /* 5DFF8 8008DB48 3C01800B */  lui        $at, %hi(jtbl_800AECB4_overlay_gameplay_frontend)
    /* 5DFFC 8008DB4C 002F0821 */  addu       $at, $at, $t7
    /* 5E000 8008DB50 8C2FECB4 */  lw         $t7, %lo(jtbl_800AECB4_overlay_gameplay_frontend)($at)
    /* 5E004 8008DB54 01E00008 */  jr         $t7
    /* 5E008 8008DB58 00000000 */   nop
    /* 5E00C 8008DB5C 0C0211F9 */  jal        func_800847E4_54C94
    /* 5E010 8008DB60 320400FF */   andi      $a0, $s0, 0xFF
    /* 5E014 8008DB64 10000014 */  b          .L8008DBB8_5E068
    /* 5E018 8008DB68 26100001 */   addiu     $s0, $s0, 0x1
    /* 5E01C 8008DB6C 0C0225D9 */  jal        func_80089764_59C14
    /* 5E020 8008DB70 320400FF */   andi      $a0, $s0, 0xFF
    /* 5E024 8008DB74 10000010 */  b          .L8008DBB8_5E068
    /* 5E028 8008DB78 26100001 */   addiu     $s0, $s0, 0x1
    /* 5E02C 8008DB7C 0C0226CE */  jal        func_80089B38_59FE8
    /* 5E030 8008DB80 00000000 */   nop
    /* 5E034 8008DB84 1000000C */  b          .L8008DBB8_5E068
    /* 5E038 8008DB88 26100001 */   addiu     $s0, $s0, 0x1
    /* 5E03C 8008DB8C 0C022A4A */  jal        func_8008A928_5ADD8
    /* 5E040 8008DB90 320400FF */   andi      $a0, $s0, 0xFF
    /* 5E044 8008DB94 10000008 */  b          .L8008DBB8_5E068
    /* 5E048 8008DB98 26100001 */   addiu     $s0, $s0, 0x1
    /* 5E04C 8008DB9C 0C022D4D */  jal        func_8008B534_5B9E4
    /* 5E050 8008DBA0 320400FF */   andi      $a0, $s0, 0xFF
    /* 5E054 8008DBA4 10000004 */  b          .L8008DBB8_5E068
    /* 5E058 8008DBA8 26100001 */   addiu     $s0, $s0, 0x1
    /* 5E05C 8008DBAC 0C022F00 */  jal        func_8008BC00_5C0B0
    /* 5E060 8008DBB0 320400FF */   andi      $a0, $s0, 0xFF
  .L8008DBB4_5E064:
    /* 5E064 8008DBB4 26100001 */  addiu      $s0, $s0, 0x1
  .L8008DBB8_5E068:
    /* 5E068 8008DBB8 321800FF */  andi       $t8, $s0, 0xFF
    /* 5E06C 8008DBBC 2B010096 */  slti       $at, $t8, 0x96
    /* 5E070 8008DBC0 1420FFD9 */  bnez       $at, .L8008DB28_5DFD8
    /* 5E074 8008DBC4 03008025 */   or        $s0, $t8, $zero
    /* 5E078 8008DBC8 0C021E29 */  jal        func_800878A4_57D54
    /* 5E07C 8008DBCC 00000000 */   nop
    /* 5E080 8008DBD0 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 5E084 8008DBD4 8FB00014 */  lw         $s0, 0x14($sp)
    /* 5E088 8008DBD8 8FB10018 */  lw         $s1, 0x18($sp)
    /* 5E08C 8008DBDC 8FB2001C */  lw         $s2, 0x1C($sp)
    /* 5E090 8008DBE0 8FB30020 */  lw         $s3, 0x20($sp)
    /* 5E094 8008DBE4 03E00008 */  jr         $ra
    /* 5E098 8008DBE8 27BD0028 */   addiu     $sp, $sp, 0x28
endlabel func_8008D98C_5DE3C
