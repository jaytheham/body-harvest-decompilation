nonmatching func_8007D91C_4DDCC, 0x810

glabel func_8007D91C_4DDCC
    /* 4DDCC 8007D91C 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* 4DDD0 8007D920 3C0F8009 */  lui        $t7, %hi(D_80094934)
    /* 4DDD4 8007D924 8DEF4934 */  lw         $t7, %lo(D_80094934)($t7)
    /* 4DDD8 8007D928 AFB60054 */  sw         $s6, 0x54($sp)
    /* 4DDDC 8007D92C AFBF005C */  sw         $ra, 0x5C($sp)
    /* 4DDE0 8007D930 AFB70058 */  sw         $s7, 0x58($sp)
    /* 4DDE4 8007D934 AFB50050 */  sw         $s5, 0x50($sp)
    /* 4DDE8 8007D938 AFB4004C */  sw         $s4, 0x4C($sp)
    /* 4DDEC 8007D93C AFB30048 */  sw         $s3, 0x48($sp)
    /* 4DDF0 8007D940 AFB20044 */  sw         $s2, 0x44($sp)
    /* 4DDF4 8007D944 AFB10040 */  sw         $s1, 0x40($sp)
    /* 4DDF8 8007D948 AFB0003C */  sw         $s0, 0x3C($sp)
    /* 4DDFC 8007D94C F7B40030 */  sdc1       $f20, 0x30($sp)
    /* 4DE00 8007D950 AFA40060 */  sw         $a0, 0x60($sp)
    /* 4DE04 8007D954 308E00FF */  andi       $t6, $a0, 0xFF
    /* 4DE08 8007D958 11E00015 */  beqz       $t7, .L8007D9B0_4DE60
    /* 4DE0C 8007D95C 0000B025 */   or        $s6, $zero, $zero
    /* 4DE10 8007D960 11C00009 */  beqz       $t6, .L8007D988_4DE38
    /* 4DE14 8007D964 3C04800A */   lui       $a0, %hi(D_80098FF0)
    /* 4DE18 8007D968 24010001 */  addiu      $at, $zero, 0x1
    /* 4DE1C 8007D96C 11C1000A */  beq        $t6, $at, .L8007D998_4DE48
    /* 4DE20 8007D970 3C04800A */   lui       $a0, %hi(D_80098FF4)
    /* 4DE24 8007D974 24010002 */  addiu      $at, $zero, 0x2
    /* 4DE28 8007D978 11C1000B */  beq        $t6, $at, .L8007D9A8_4DE58
    /* 4DE2C 8007D97C 3C04800A */   lui       $a0, %hi(D_80098FF8)
    /* 4DE30 8007D980 1000000B */  b          .L8007D9B0_4DE60
    /* 4DE34 8007D984 00000000 */   nop
  .L8007D988_4DE38:
    /* 4DE38 8007D988 0C01FA83 */  jal        func_8007EA0C_4EEBC
    /* 4DE3C 8007D98C 24848FF0 */   addiu     $a0, $a0, %lo(D_80098FF0)
    /* 4DE40 8007D990 10000007 */  b          .L8007D9B0_4DE60
    /* 4DE44 8007D994 00000000 */   nop
  .L8007D998_4DE48:
    /* 4DE48 8007D998 0C01FA83 */  jal        func_8007EA0C_4EEBC
    /* 4DE4C 8007D99C 24848FF4 */   addiu     $a0, $a0, %lo(D_80098FF4)
    /* 4DE50 8007D9A0 10000003 */  b          .L8007D9B0_4DE60
    /* 4DE54 8007D9A4 00000000 */   nop
  .L8007D9A8_4DE58:
    /* 4DE58 8007D9A8 0C01FA83 */  jal        func_8007EA0C_4EEBC
    /* 4DE5C 8007D9AC 24848FF8 */   addiu     $a0, $a0, %lo(D_80098FF8)
  .L8007D9B0_4DE60:
    /* 4DE60 8007D9B0 0C01F84B */  jal        func_8007E12C_4E5DC
    /* 4DE64 8007D9B4 00000000 */   nop
    /* 4DE68 8007D9B8 3C17800D */  lui        $s7, %hi(D_800D7A58)
    /* 4DE6C 8007D9BC 26F77A58 */  addiu      $s7, $s7, %lo(D_800D7A58)
    /* 4DE70 8007D9C0 92F80000 */  lbu        $t8, 0x0($s7)
    /* 4DE74 8007D9C4 00409025 */  or         $s2, $v0, $zero
    /* 4DE78 8007D9C8 0000A025 */  or         $s4, $zero, $zero
    /* 4DE7C 8007D9CC 1B00002A */  blez       $t8, .L8007DA78_4DF28
    /* 4DE80 8007D9D0 3C013F80 */   lui       $at, (0x3F800000 >> 16)
    /* 4DE84 8007D9D4 3C13800D */  lui        $s3, %hi(D_800D7A1C)
    /* 4DE88 8007D9D8 3C10800D */  lui        $s0, %hi(D_800D7B10)
    /* 4DE8C 8007D9DC 4481A000 */  mtc1       $at, $f20
    /* 4DE90 8007D9E0 26107B10 */  addiu      $s0, $s0, %lo(D_800D7B10)
    /* 4DE94 8007D9E4 26737A1C */  addiu      $s3, $s3, %lo(D_800D7A1C)
  .L8007D9E8_4DE98:
    /* 4DE98 8007D9E8 00148880 */  sll        $s1, $s4, 2
    /* 4DE9C 8007D9EC 02348823 */  subu       $s1, $s1, $s4
    /* 4DEA0 8007D9F0 8E790000 */  lw         $t9, 0x0($s3)
    /* 4DEA4 8007D9F4 00118880 */  sll        $s1, $s1, 2
    /* 4DEA8 8007D9F8 02348823 */  subu       $s1, $s1, $s4
    /* 4DEAC 8007D9FC 00118880 */  sll        $s1, $s1, 2
    /* 4DEB0 8007DA00 03311821 */  addu       $v1, $t9, $s1
    /* 4DEB4 8007DA04 8C6D001C */  lw         $t5, 0x1C($v1)
    /* 4DEB8 8007DA08 51A00015 */  beql       $t5, $zero, .L8007DA60_4DF10
    /* 4DEBC 8007DA0C 92F90000 */   lbu       $t9, 0x0($s7)
    /* 4DEC0 8007DA10 906E0029 */  lbu        $t6, 0x29($v1)
    /* 4DEC4 8007DA14 3C018009 */  lui        $at, %hi(D_80094944)
    /* 4DEC8 8007DA18 4406A000 */  mfc1       $a2, $f20
    /* 4DECC 8007DA1C A02E4944 */  sb         $t6, %lo(D_80094944)($at)
    /* 4DED0 8007DA20 906F0018 */  lbu        $t7, 0x18($v1)
    /* 4DED4 8007DA24 90670019 */  lbu        $a3, 0x19($v1)
    /* 4DED8 8007DA28 8C640008 */  lw         $a0, 0x8($v1)
    /* 4DEDC 8007DA2C 000FC180 */  sll        $t8, $t7, 6
    /* 4DEE0 8007DA30 0C02019A */  jal        func_80080668_50B18
    /* 4DEE4 8007DA34 02182821 */   addu      $a1, $s0, $t8
    /* 4DEE8 8007DA38 8E790000 */  lw         $t9, 0x0($s3)
    /* 4DEEC 8007DA3C 3C048009 */  lui        $a0, %hi(D_8009499C)
    /* 4DEF0 8007DA40 03316821 */  addu       $t5, $t9, $s1
    /* 4DEF4 8007DA44 8DAE0020 */  lw         $t6, 0x20($t5)
    /* 4DEF8 8007DA48 31CF0020 */  andi       $t7, $t6, 0x20
    /* 4DEFC 8007DA4C 51E00004 */  beql       $t7, $zero, .L8007DA60_4DF10
    /* 4DF00 8007DA50 92F90000 */   lbu       $t9, 0x0($s7)
    /* 4DF04 8007DA54 0C020670 */  jal        func_800819C0_51E70
    /* 4DF08 8007DA58 2484499C */   addiu     $a0, $a0, %lo(D_8009499C)
    /* 4DF0C 8007DA5C 92F90000 */  lbu        $t9, 0x0($s7)
  .L8007DA60_4DF10:
    /* 4DF10 8007DA60 26940001 */  addiu      $s4, $s4, 0x1
    /* 4DF14 8007DA64 329800FF */  andi       $t8, $s4, 0xFF
    /* 4DF18 8007DA68 0319082A */  slt        $at, $t8, $t9
    /* 4DF1C 8007DA6C 1420FFDE */  bnez       $at, .L8007D9E8_4DE98
    /* 4DF20 8007DA70 0300A025 */   or        $s4, $t8, $zero
    /* 4DF24 8007DA74 0000A025 */  or         $s4, $zero, $zero
  .L8007DA78_4DF28:
    /* 4DF28 8007DA78 3C0D8009 */  lui        $t5, %hi(D_80094948)
    /* 4DF2C 8007DA7C 8DAD4948 */  lw         $t5, %lo(D_80094948)($t5)
    /* 4DF30 8007DA80 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 4DF34 8007DA84 4481A000 */  mtc1       $at, $f20
    /* 4DF38 8007DA88 3C13800D */  lui        $s3, %hi(D_800D7A1C)
    /* 4DF3C 8007DA8C 11A00003 */  beqz       $t5, .L8007DA9C_4DF4C
    /* 4DF40 8007DA90 26737A1C */   addiu     $s3, $s3, %lo(D_800D7A1C)
    /* 4DF44 8007DA94 0C0207E7 */  jal        func_80081F9C_5244C
    /* 4DF48 8007DA98 00000000 */   nop
  .L8007DA9C_4DF4C:
    /* 4DF4C 8007DA9C 3C158009 */  lui        $s5, %hi(D_80094904)
    /* 4DF50 8007DAA0 26B54904 */  addiu      $s5, $s5, %lo(D_80094904)
    /* 4DF54 8007DAA4 92AE0000 */  lbu        $t6, 0x0($s5)
    /* 4DF58 8007DAA8 24010003 */  addiu      $at, $zero, 0x3
    /* 4DF5C 8007DAAC 15C10030 */  bne        $t6, $at, .L8007DB70_4E020
    /* 4DF60 8007DAB0 3C108006 */   lui       $s0, %hi(D_8005BB2C)
    /* 4DF64 8007DAB4 2610BB2C */  addiu      $s0, $s0, %lo(D_8005BB2C)
    /* 4DF68 8007DAB8 8E020000 */  lw         $v0, 0x0($s0)
    /* 4DF6C 8007DABC 3C11E700 */  lui        $s1, (0xE7000000 >> 16)
    /* 4DF70 8007DAC0 3C19B900 */  lui        $t9, (0xB9000002 >> 16)
    /* 4DF74 8007DAC4 244F0008 */  addiu      $t7, $v0, 0x8
    /* 4DF78 8007DAC8 AE0F0000 */  sw         $t7, 0x0($s0)
    /* 4DF7C 8007DACC AC400004 */  sw         $zero, 0x4($v0)
    /* 4DF80 8007DAD0 AC510000 */  sw         $s1, 0x0($v0)
    /* 4DF84 8007DAD4 8E020000 */  lw         $v0, 0x0($s0)
    /* 4DF88 8007DAD8 37390002 */  ori        $t9, $t9, (0xB9000002 & 0xFFFF)
    /* 4DF8C 8007DADC 240D0001 */  addiu      $t5, $zero, 0x1
    /* 4DF90 8007DAE0 24580008 */  addiu      $t8, $v0, 0x8
    /* 4DF94 8007DAE4 AE180000 */  sw         $t8, 0x0($s0)
    /* 4DF98 8007DAE8 AC4D0004 */  sw         $t5, 0x4($v0)
    /* 4DF9C 8007DAEC AC590000 */  sw         $t9, 0x0($v0)
    /* 4DFA0 8007DAF0 8E020000 */  lw         $v0, 0x0($s0)
    /* 4DFA4 8007DAF4 3C180044 */  lui        $t8, (0x443048 >> 16)
    /* 4DFA8 8007DAF8 3C0FB900 */  lui        $t7, (0xB900031D >> 16)
    /* 4DFAC 8007DAFC 244E0008 */  addiu      $t6, $v0, 0x8
    /* 4DFB0 8007DB00 AE0E0000 */  sw         $t6, 0x0($s0)
    /* 4DFB4 8007DB04 35EF031D */  ori        $t7, $t7, (0xB900031D & 0xFFFF)
    /* 4DFB8 8007DB08 37183048 */  ori        $t8, $t8, (0x443048 & 0xFFFF)
    /* 4DFBC 8007DB0C AC580004 */  sw         $t8, 0x4($v0)
    /* 4DFC0 8007DB10 AC4F0000 */  sw         $t7, 0x0($v0)
    /* 4DFC4 8007DB14 8E020000 */  lw         $v0, 0x0($s0)
    /* 4DFC8 8007DB18 3C180409 */  lui        $t8, %hi(D_408A6F0)
    /* 4DFCC 8007DB1C 2718A6F0 */  addiu      $t8, $t8, %lo(D_408A6F0)
    /* 4DFD0 8007DB20 24590008 */  addiu      $t9, $v0, 0x8
    /* 4DFD4 8007DB24 AE190000 */  sw         $t9, 0x0($s0)
    /* 4DFD8 8007DB28 AC400004 */  sw         $zero, 0x4($v0)
    /* 4DFDC 8007DB2C AC510000 */  sw         $s1, 0x0($v0)
    /* 4DFE0 8007DB30 240F0040 */  addiu      $t7, $zero, 0x40
    /* 4DFE4 8007DB34 240E0140 */  addiu      $t6, $zero, 0x140
    /* 4DFE8 8007DB38 240D00B0 */  addiu      $t5, $zero, 0xB0
    /* 4DFEC 8007DB3C 3C040408 */  lui        $a0, %hi(D_40856F0)
    /* 4DFF0 8007DB40 248456F0 */  addiu      $a0, $a0, %lo(D_40856F0)
    /* 4DFF4 8007DB44 AFAD0014 */  sw         $t5, 0x14($sp)
    /* 4DFF8 8007DB48 AFAE0018 */  sw         $t6, 0x18($sp)
    /* 4DFFC 8007DB4C AFAF001C */  sw         $t7, 0x1C($sp)
    /* 4E000 8007DB50 AFB80028 */  sw         $t8, 0x28($sp)
    /* 4E004 8007DB54 E7B40024 */  swc1       $f20, 0x24($sp)
    /* 4E008 8007DB58 E7B40020 */  swc1       $f20, 0x20($sp)
    /* 4E00C 8007DB5C AFA00010 */  sw         $zero, 0x10($sp)
    /* 4E010 8007DB60 24050002 */  addiu      $a1, $zero, 0x2
    /* 4E014 8007DB64 24060001 */  addiu      $a2, $zero, 0x1
    /* 4E018 8007DB68 0C001717 */  jal        func_80005C5C_685C
    /* 4E01C 8007DB6C 24070008 */   addiu     $a3, $zero, 0x8
  .L8007DB70_4E020:
    /* 4E020 8007DB70 3C108006 */  lui        $s0, %hi(D_8005BB2C)
    /* 4E024 8007DB74 2610BB2C */  addiu      $s0, $s0, %lo(D_8005BB2C)
    /* 4E028 8007DB78 0C0207FC */  jal        func_80081FF0_524A0
    /* 4E02C 8007DB7C 3C11E700 */   lui       $s1, (0xE7000000 >> 16)
    /* 4E030 8007DB80 0C01FAEE */  jal        func_8007EBB8_4F068
    /* 4E034 8007DB84 00000000 */   nop
    /* 4E038 8007DB88 0C023F7C */  jal        func_8008FDF0_602A0
    /* 4E03C 8007DB8C 00000000 */   nop
    /* 4E040 8007DB90 56400004 */  bnel       $s2, $zero, .L8007DBA4_4E054
    /* 4E044 8007DB94 8E020000 */   lw        $v0, 0x0($s0)
    /* 4E048 8007DB98 0C01FAE6 */  jal        func_8007EB98_4F048
    /* 4E04C 8007DB9C 00000000 */   nop
    /* 4E050 8007DBA0 8E020000 */  lw         $v0, 0x0($s0)
  .L8007DBA4_4E054:
    /* 4E054 8007DBA4 3C0EBA00 */  lui        $t6, (0xBA001402 >> 16)
    /* 4E058 8007DBA8 35CE1402 */  ori        $t6, $t6, (0xBA001402 & 0xFFFF)
    /* 4E05C 8007DBAC 24590008 */  addiu      $t9, $v0, 0x8
    /* 4E060 8007DBB0 AE190000 */  sw         $t9, 0x0($s0)
    /* 4E064 8007DBB4 AC400004 */  sw         $zero, 0x4($v0)
    /* 4E068 8007DBB8 AC510000 */  sw         $s1, 0x0($v0)
    /* 4E06C 8007DBBC 8E020000 */  lw         $v0, 0x0($s0)
    /* 4E070 8007DBC0 3C19FF33 */  lui        $t9, (0xFF33FFFF >> 16)
    /* 4E074 8007DBC4 3C18FC12 */  lui        $t8, (0xFC121824 >> 16)
    /* 4E078 8007DBC8 244D0008 */  addiu      $t5, $v0, 0x8
    /* 4E07C 8007DBCC AE0D0000 */  sw         $t5, 0x0($s0)
    /* 4E080 8007DBD0 AC400004 */  sw         $zero, 0x4($v0)
    /* 4E084 8007DBD4 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 4E088 8007DBD8 8E020000 */  lw         $v0, 0x0($s0)
    /* 4E08C 8007DBDC 37181824 */  ori        $t8, $t8, (0xFC121824 & 0xFFFF)
    /* 4E090 8007DBE0 3739FFFF */  ori        $t9, $t9, (0xFF33FFFF & 0xFFFF)
    /* 4E094 8007DBE4 244F0008 */  addiu      $t7, $v0, 0x8
    /* 4E098 8007DBE8 AE0F0000 */  sw         $t7, 0x0($s0)
    /* 4E09C 8007DBEC AC590004 */  sw         $t9, 0x4($v0)
    /* 4E0A0 8007DBF0 AC580000 */  sw         $t8, 0x0($v0)
    /* 4E0A4 8007DBF4 8E020000 */  lw         $v0, 0x0($s0)
    /* 4E0A8 8007DBF8 3C0F0055 */  lui        $t7, (0x552078 >> 16)
    /* 4E0AC 8007DBFC 3C0EB900 */  lui        $t6, (0xB900031D >> 16)
    /* 4E0B0 8007DC00 244D0008 */  addiu      $t5, $v0, 0x8
    /* 4E0B4 8007DC04 AE0D0000 */  sw         $t5, 0x0($s0)
    /* 4E0B8 8007DC08 35CE031D */  ori        $t6, $t6, (0xB900031D & 0xFFFF)
    /* 4E0BC 8007DC0C 35EF2078 */  ori        $t7, $t7, (0x552078 & 0xFFFF)
    /* 4E0C0 8007DC10 AC4F0004 */  sw         $t7, 0x4($v0)
    /* 4E0C4 8007DC14 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 4E0C8 8007DC18 8E020000 */  lw         $v0, 0x0($s0)
    /* 4E0CC 8007DC1C 3C19BA00 */  lui        $t9, (0xBA000602 >> 16)
    /* 4E0D0 8007DC20 37390602 */  ori        $t9, $t9, (0xBA000602 & 0xFFFF)
    /* 4E0D4 8007DC24 24580008 */  addiu      $t8, $v0, 0x8
    /* 4E0D8 8007DC28 AE180000 */  sw         $t8, 0x0($s0)
    /* 4E0DC 8007DC2C AC400004 */  sw         $zero, 0x4($v0)
    /* 4E0E0 8007DC30 AC590000 */  sw         $t9, 0x0($v0)
    /* 4E0E4 8007DC34 8E020000 */  lw         $v0, 0x0($s0)
    /* 4E0E8 8007DC38 3C0EBA00 */  lui        $t6, (0xBA000E02 >> 16)
    /* 4E0EC 8007DC3C 35CE0E02 */  ori        $t6, $t6, (0xBA000E02 & 0xFFFF)
    /* 4E0F0 8007DC40 244D0008 */  addiu      $t5, $v0, 0x8
    /* 4E0F4 8007DC44 AE0D0000 */  sw         $t5, 0x0($s0)
    /* 4E0F8 8007DC48 AC400004 */  sw         $zero, 0x4($v0)
    /* 4E0FC 8007DC4C AC4E0000 */  sw         $t6, 0x0($v0)
    /* 4E100 8007DC50 8E020000 */  lw         $v0, 0x0($s0)
    /* 4E104 8007DC54 3C18BA00 */  lui        $t8, (0xBA001301 >> 16)
    /* 4E108 8007DC58 37181301 */  ori        $t8, $t8, (0xBA001301 & 0xFFFF)
    /* 4E10C 8007DC5C 244F0008 */  addiu      $t7, $v0, 0x8
    /* 4E110 8007DC60 AE0F0000 */  sw         $t7, 0x0($s0)
    /* 4E114 8007DC64 3C190008 */  lui        $t9, (0x80000 >> 16)
    /* 4E118 8007DC68 AC590004 */  sw         $t9, 0x4($v0)
    /* 4E11C 8007DC6C AC580000 */  sw         $t8, 0x0($v0)
    /* 4E120 8007DC70 8E020000 */  lw         $v0, 0x0($s0)
    /* 4E124 8007DC74 3C0F8000 */  lui        $t7, (0x80008000 >> 16)
    /* 4E128 8007DC78 35EF8000 */  ori        $t7, $t7, (0x80008000 & 0xFFFF)
    /* 4E12C 8007DC7C 244D0008 */  addiu      $t5, $v0, 0x8
    /* 4E130 8007DC80 AE0D0000 */  sw         $t5, 0x0($s0)
    /* 4E134 8007DC84 3C0EBB00 */  lui        $t6, (0xBB000000 >> 16)
    /* 4E138 8007DC88 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 4E13C 8007DC8C AC4F0004 */  sw         $t7, 0x4($v0)
    /* 4E140 8007DC90 8E020000 */  lw         $v0, 0x0($s0)
    /* 4E144 8007DC94 240DFFFF */  addiu      $t5, $zero, -0x1
    /* 4E148 8007DC98 3C19B600 */  lui        $t9, (0xB6000000 >> 16)
    /* 4E14C 8007DC9C 24580008 */  addiu      $t8, $v0, 0x8
    /* 4E150 8007DCA0 AE180000 */  sw         $t8, 0x0($s0)
    /* 4E154 8007DCA4 AC4D0004 */  sw         $t5, 0x4($v0)
    /* 4E158 8007DCA8 AC590000 */  sw         $t9, 0x0($v0)
    /* 4E15C 8007DCAC 8E020000 */  lw         $v0, 0x0($s0)
    /* 4E160 8007DCB0 3C180002 */  lui        $t8, (0x22205 >> 16)
    /* 4E164 8007DCB4 37182205 */  ori        $t8, $t8, (0x22205 & 0xFFFF)
    /* 4E168 8007DCB8 244E0008 */  addiu      $t6, $v0, 0x8
    /* 4E16C 8007DCBC AE0E0000 */  sw         $t6, 0x0($s0)
    /* 4E170 8007DCC0 3C0FB700 */  lui        $t7, (0xB7000000 >> 16)
    /* 4E174 8007DCC4 AC4F0000 */  sw         $t7, 0x0($v0)
    /* 4E178 8007DCC8 AC580004 */  sw         $t8, 0x4($v0)
    /* 4E17C 8007DCCC 92B90000 */  lbu        $t9, 0x0($s5)
    /* 4E180 8007DCD0 24010002 */  addiu      $at, $zero, 0x2
    /* 4E184 8007DCD4 00002025 */  or         $a0, $zero, $zero
    /* 4E188 8007DCD8 17210004 */  bne        $t9, $at, .L8007DCEC_4E19C
    /* 4E18C 8007DCDC 00002825 */   or        $a1, $zero, $zero
    /* 4E190 8007DCE0 2406006E */  addiu      $a2, $zero, 0x6E
    /* 4E194 8007DCE4 0C02072B */  jal        func_80081CAC_5215C
    /* 4E198 8007DCE8 24070078 */   addiu     $a3, $zero, 0x78
  .L8007DCEC_4E19C:
    /* 4E19C 8007DCEC 0C01FD60 */  jal        func_8007F580_4FA30
    /* 4E1A0 8007DCF0 24040001 */   addiu     $a0, $zero, 0x1
    /* 4E1A4 8007DCF4 92ED0000 */  lbu        $t5, 0x0($s7)
    /* 4E1A8 8007DCF8 241500FF */  addiu      $s5, $zero, 0xFF
    /* 4E1AC 8007DCFC 19A000EE */  blez       $t5, .L8007E0B8_4E568
  .L8007DD00_4E1B0:
    /* 4E1B0 8007DD00 00148880 */   sll       $s1, $s4, 2
    /* 4E1B4 8007DD04 02348823 */  subu       $s1, $s1, $s4
    /* 4E1B8 8007DD08 8E6E0000 */  lw         $t6, 0x0($s3)
    /* 4E1BC 8007DD0C 00118880 */  sll        $s1, $s1, 2
    /* 4E1C0 8007DD10 02348823 */  subu       $s1, $s1, $s4
    /* 4E1C4 8007DD14 00118880 */  sll        $s1, $s1, 2
    /* 4E1C8 8007DD18 01D11821 */  addu       $v1, $t6, $s1
    /* 4E1CC 8007DD1C 8C6F001C */  lw         $t7, 0x1C($v1)
    /* 4E1D0 8007DD20 51E000E0 */  beql       $t7, $zero, .L8007E0A4_4E554
    /* 4E1D4 8007DD24 92EE0000 */   lbu       $t6, 0x0($s7)
    /* 4E1D8 8007DD28 90780028 */  lbu        $t8, 0x28($v1)
    /* 4E1DC 8007DD2C 52B80012 */  beql       $s5, $t8, .L8007DD78_4E228
    /* 4E1E0 8007DD30 8C6E0020 */   lw        $t6, 0x20($v1)
    /* 4E1E4 8007DD34 8E020000 */  lw         $v0, 0x0($s0)
    /* 4E1E8 8007DD38 3C0D0600 */  lui        $t5, (0x6000000 >> 16)
    /* 4E1EC 8007DD3C 3C0E800D */  lui        $t6, %hi(D_800D7A40)
    /* 4E1F0 8007DD40 24590008 */  addiu      $t9, $v0, 0x8
    /* 4E1F4 8007DD44 AE190000 */  sw         $t9, 0x0($s0)
    /* 4E1F8 8007DD48 AC4D0000 */  sw         $t5, 0x0($v0)
    /* 4E1FC 8007DD4C 8E6F0000 */  lw         $t7, 0x0($s3)
    /* 4E200 8007DD50 8DCE7A40 */  lw         $t6, %lo(D_800D7A40)($t6)
    /* 4E204 8007DD54 01F1C021 */  addu       $t8, $t7, $s1
    /* 4E208 8007DD58 93190028 */  lbu        $t9, 0x28($t8)
    /* 4E20C 8007DD5C 001968C0 */  sll        $t5, $t9, 3
    /* 4E210 8007DD60 01CD7821 */  addu       $t7, $t6, $t5
    /* 4E214 8007DD64 8DF80000 */  lw         $t8, 0x0($t7)
    /* 4E218 8007DD68 AC580004 */  sw         $t8, 0x4($v0)
    /* 4E21C 8007DD6C 8E790000 */  lw         $t9, 0x0($s3)
    /* 4E220 8007DD70 03311821 */  addu       $v1, $t9, $s1
    /* 4E224 8007DD74 8C6E0020 */  lw         $t6, 0x20($v1)
  .L8007DD78_4E228:
    /* 4E228 8007DD78 3C0F0055 */  lui        $t7, (0x552078 >> 16)
    /* 4E22C 8007DD7C 35EF2078 */  ori        $t7, $t7, (0x552078 & 0xFFFF)
    /* 4E230 8007DD80 31CD0001 */  andi       $t5, $t6, 0x1
    /* 4E234 8007DD84 11A00020 */  beqz       $t5, .L8007DE08_4E2B8
    /* 4E238 8007DD88 3C19FC32 */   lui       $t9, (0xFC323864 >> 16)
    /* 4E23C 8007DD8C 8E020000 */  lw         $v0, 0x0($s0)
    /* 4E240 8007DD90 3C18B900 */  lui        $t8, (0xB900031D >> 16)
    /* 4E244 8007DD94 3C190050 */  lui        $t9, (0x5049D8 >> 16)
    /* 4E248 8007DD98 244F0008 */  addiu      $t7, $v0, 0x8
    /* 4E24C 8007DD9C AE0F0000 */  sw         $t7, 0x0($s0)
    /* 4E250 8007DDA0 373949D8 */  ori        $t9, $t9, (0x5049D8 & 0xFFFF)
    /* 4E254 8007DDA4 3718031D */  ori        $t8, $t8, (0xB900031D & 0xFFFF)
    /* 4E258 8007DDA8 AC580000 */  sw         $t8, 0x0($v0)
    /* 4E25C 8007DDAC AC590004 */  sw         $t9, 0x4($v0)
    /* 4E260 8007DDB0 8E020000 */  lw         $v0, 0x0($s0)
    /* 4E264 8007DDB4 3C0DFA00 */  lui        $t5, (0xFA000000 >> 16)
    /* 4E268 8007DDB8 2401FF00 */  addiu      $at, $zero, -0x100
    /* 4E26C 8007DDBC 244E0008 */  addiu      $t6, $v0, 0x8
    /* 4E270 8007DDC0 AE0E0000 */  sw         $t6, 0x0($s0)
    /* 4E274 8007DDC4 AC4D0000 */  sw         $t5, 0x0($v0)
    /* 4E278 8007DDC8 8E6F0000 */  lw         $t7, 0x0($s3)
    /* 4E27C 8007DDCC 01F1C021 */  addu       $t8, $t7, $s1
    /* 4E280 8007DDD0 8F190024 */  lw         $t9, 0x24($t8)
    /* 4E284 8007DDD4 3C18FC12 */  lui        $t8, (0xFC121624 >> 16)
    /* 4E288 8007DDD8 37181624 */  ori        $t8, $t8, (0xFC121624 & 0xFFFF)
    /* 4E28C 8007DDDC 332E00FF */  andi       $t6, $t9, 0xFF
    /* 4E290 8007DDE0 01C16825 */  or         $t5, $t6, $at
    /* 4E294 8007DDE4 AC4D0004 */  sw         $t5, 0x4($v0)
    /* 4E298 8007DDE8 8E020000 */  lw         $v0, 0x0($s0)
    /* 4E29C 8007DDEC 3C19FF2F */  lui        $t9, (0xFF2FFFFF >> 16)
    /* 4E2A0 8007DDF0 3739FFFF */  ori        $t9, $t9, (0xFF2FFFFF & 0xFFFF)
    /* 4E2A4 8007DDF4 244F0008 */  addiu      $t7, $v0, 0x8
    /* 4E2A8 8007DDF8 AE0F0000 */  sw         $t7, 0x0($s0)
    /* 4E2AC 8007DDFC AC590004 */  sw         $t9, 0x4($v0)
    /* 4E2B0 8007DE00 10000010 */  b          .L8007DE44_4E2F4
    /* 4E2B4 8007DE04 AC580000 */   sw        $t8, 0x0($v0)
  .L8007DE08_4E2B8:
    /* 4E2B8 8007DE08 8E020000 */  lw         $v0, 0x0($s0)
    /* 4E2BC 8007DE0C 3C0DB900 */  lui        $t5, (0xB900031D >> 16)
    /* 4E2C0 8007DE10 35AD031D */  ori        $t5, $t5, (0xB900031D & 0xFFFF)
    /* 4E2C4 8007DE14 244E0008 */  addiu      $t6, $v0, 0x8
    /* 4E2C8 8007DE18 AE0E0000 */  sw         $t6, 0x0($s0)
    /* 4E2CC 8007DE1C AC4F0004 */  sw         $t7, 0x4($v0)
    /* 4E2D0 8007DE20 AC4D0000 */  sw         $t5, 0x0($v0)
    /* 4E2D4 8007DE24 8E020000 */  lw         $v0, 0x0($s0)
    /* 4E2D8 8007DE28 3C0EFF73 */  lui        $t6, (0xFF73FFFF >> 16)
    /* 4E2DC 8007DE2C 35CEFFFF */  ori        $t6, $t6, (0xFF73FFFF & 0xFFFF)
    /* 4E2E0 8007DE30 24580008 */  addiu      $t8, $v0, 0x8
    /* 4E2E4 8007DE34 AE180000 */  sw         $t8, 0x0($s0)
    /* 4E2E8 8007DE38 37393864 */  ori        $t9, $t9, (0xFC323864 & 0xFFFF)
    /* 4E2EC 8007DE3C AC590000 */  sw         $t9, 0x0($v0)
    /* 4E2F0 8007DE40 AC4E0004 */  sw         $t6, 0x4($v0)
  .L8007DE44_4E2F4:
    /* 4E2F4 8007DE44 8E6D0000 */  lw         $t5, 0x0($s3)
    /* 4E2F8 8007DE48 3C19B600 */  lui        $t9, (0xB6000000 >> 16)
    /* 4E2FC 8007DE4C 3C0E0002 */  lui        $t6, (0x20000 >> 16)
    /* 4E300 8007DE50 01B11821 */  addu       $v1, $t5, $s1
    /* 4E304 8007DE54 8C640020 */  lw         $a0, 0x20($v1)
    /* 4E308 8007DE58 308F0002 */  andi       $t7, $a0, 0x2
    /* 4E30C 8007DE5C 51E00013 */  beql       $t7, $zero, .L8007DEAC_4E35C
    /* 4E310 8007DE60 308E0004 */   andi      $t6, $a0, 0x4
    /* 4E314 8007DE64 8E020000 */  lw         $v0, 0x0($s0)
    /* 4E318 8007DE68 3C0FFCFF */  lui        $t7, (0xFCFFFFFF >> 16)
    /* 4E31C 8007DE6C 35EFFFFF */  ori        $t7, $t7, (0xFCFFFFFF & 0xFFFF)
    /* 4E320 8007DE70 24580008 */  addiu      $t8, $v0, 0x8
    /* 4E324 8007DE74 AE180000 */  sw         $t8, 0x0($s0)
    /* 4E328 8007DE78 AC4E0004 */  sw         $t6, 0x4($v0)
    /* 4E32C 8007DE7C AC590000 */  sw         $t9, 0x0($v0)
    /* 4E330 8007DE80 8E020000 */  lw         $v0, 0x0($s0)
    /* 4E334 8007DE84 3C18FFFE */  lui        $t8, (0xFFFE793C >> 16)
    /* 4E338 8007DE88 3718793C */  ori        $t8, $t8, (0xFFFE793C & 0xFFFF)
    /* 4E33C 8007DE8C 244D0008 */  addiu      $t5, $v0, 0x8
    /* 4E340 8007DE90 AE0D0000 */  sw         $t5, 0x0($s0)
    /* 4E344 8007DE94 AC580004 */  sw         $t8, 0x4($v0)
    /* 4E348 8007DE98 AC4F0000 */  sw         $t7, 0x0($v0)
    /* 4E34C 8007DE9C 8E790000 */  lw         $t9, 0x0($s3)
    /* 4E350 8007DEA0 03311821 */  addu       $v1, $t9, $s1
    /* 4E354 8007DEA4 8C640020 */  lw         $a0, 0x20($v1)
    /* 4E358 8007DEA8 308E0004 */  andi       $t6, $a0, 0x4
  .L8007DEAC_4E35C:
    /* 4E35C 8007DEAC 11C00034 */  beqz       $t6, .L8007DF80_4E430
    /* 4E360 8007DEB0 3C02800D */   lui       $v0, %hi(D_800D7A18)
    /* 4E364 8007DEB4 8C427A18 */  lw         $v0, %lo(D_800D7A18)($v0)
    /* 4E368 8007DEB8 44800000 */  mtc1       $zero, $f0
    /* 4E36C 8007DEBC 3C0F800D */  lui        $t7, %hi(D_800D7978)
    /* 4E370 8007DEC0 C4440018 */  lwc1       $f4, 0x18($v0)
    /* 4E374 8007DEC4 8C460010 */  lw         $a2, 0x10($v0)
    /* 4E378 8007DEC8 8C470014 */  lw         $a3, 0x14($v0)
    /* 4E37C 8007DECC E7A40010 */  swc1       $f4, 0x10($sp)
    /* 4E380 8007DED0 8478000C */  lh         $t8, 0xC($v1)
    /* 4E384 8007DED4 25EF7978 */  addiu      $t7, $t7, %lo(D_800D7978)
    /* 4E388 8007DED8 00166940 */  sll        $t5, $s6, 5
    /* 4E38C 8007DEDC 44983000 */  mtc1       $t8, $f6
    /* 4E390 8007DEE0 01AF9021 */  addu       $s2, $t5, $t7
    /* 4E394 8007DEE4 3C048006 */  lui        $a0, %hi(D_8005BB38)
    /* 4E398 8007DEE8 46803220 */  cvt.s.w    $f8, $f6
    /* 4E39C 8007DEEC 8C84BB38 */  lw         $a0, %lo(D_8005BB38)($a0)
    /* 4E3A0 8007DEF0 02402825 */  or         $a1, $s2, $zero
    /* 4E3A4 8007DEF4 E7A80014 */  swc1       $f8, 0x14($sp)
    /* 4E3A8 8007DEF8 8479000E */  lh         $t9, 0xE($v1)
    /* 4E3AC 8007DEFC 44995000 */  mtc1       $t9, $f10
    /* 4E3B0 8007DF00 00000000 */  nop
    /* 4E3B4 8007DF04 46805420 */  cvt.s.w    $f16, $f10
    /* 4E3B8 8007DF08 E7B00018 */  swc1       $f16, 0x18($sp)
    /* 4E3BC 8007DF0C 846E0010 */  lh         $t6, 0x10($v1)
    /* 4E3C0 8007DF10 E7B40024 */  swc1       $f20, 0x24($sp)
    /* 4E3C4 8007DF14 E7A00028 */  swc1       $f0, 0x28($sp)
    /* 4E3C8 8007DF18 448E9000 */  mtc1       $t6, $f18
    /* 4E3CC 8007DF1C E7A00020 */  swc1       $f0, 0x20($sp)
    /* 4E3D0 8007DF20 46809120 */  cvt.s.w    $f4, $f18
    /* 4E3D4 8007DF24 0C008A04 */  jal        guLookAtReflect
    /* 4E3D8 8007DF28 E7A4001C */   swc1      $f4, 0x1C($sp)
    /* 4E3DC 8007DF2C 8E020000 */  lw         $v0, 0x0($s0)
    /* 4E3E0 8007DF30 3C0F0384 */  lui        $t7, (0x3840010 >> 16)
    /* 4E3E4 8007DF34 35EF0010 */  ori        $t7, $t7, (0x3840010 & 0xFFFF)
    /* 4E3E8 8007DF38 244D0008 */  addiu      $t5, $v0, 0x8
    /* 4E3EC 8007DF3C AE0D0000 */  sw         $t5, 0x0($s0)
    /* 4E3F0 8007DF40 AC520004 */  sw         $s2, 0x4($v0)
    /* 4E3F4 8007DF44 AC4F0000 */  sw         $t7, 0x0($v0)
    /* 4E3F8 8007DF48 8E020000 */  lw         $v0, 0x0($s0)
    /* 4E3FC 8007DF4C 3C190382 */  lui        $t9, (0x3820010 >> 16)
    /* 4E400 8007DF50 37390010 */  ori        $t9, $t9, (0x3820010 & 0xFFFF)
    /* 4E404 8007DF54 24580008 */  addiu      $t8, $v0, 0x8
    /* 4E408 8007DF58 AE180000 */  sw         $t8, 0x0($s0)
    /* 4E40C 8007DF5C 264E0010 */  addiu      $t6, $s2, 0x10
    /* 4E410 8007DF60 AC4E0004 */  sw         $t6, 0x4($v0)
    /* 4E414 8007DF64 AC590000 */  sw         $t9, 0x0($v0)
    /* 4E418 8007DF68 8E6F0000 */  lw         $t7, 0x0($s3)
    /* 4E41C 8007DF6C 26D60001 */  addiu      $s6, $s6, 0x1
    /* 4E420 8007DF70 32CD00FF */  andi       $t5, $s6, 0xFF
    /* 4E424 8007DF74 01F1C021 */  addu       $t8, $t7, $s1
    /* 4E428 8007DF78 8F040020 */  lw         $a0, 0x20($t8)
    /* 4E42C 8007DF7C 01A0B025 */  or         $s6, $t5, $zero
  .L8007DF80_4E430:
    /* 4E430 8007DF80 30990008 */  andi       $t9, $a0, 0x8
    /* 4E434 8007DF84 13200009 */  beqz       $t9, .L8007DFAC_4E45C
    /* 4E438 8007DF88 3C01800E */   lui       $at, %hi(D_800D8514)
    /* 4E43C 8007DF8C 8E020000 */  lw         $v0, 0x0($s0)
    /* 4E440 8007DF90 3C0DB600 */  lui        $t5, (0xB6000000 >> 16)
    /* 4E444 8007DF94 240F2000 */  addiu      $t7, $zero, 0x2000
    /* 4E448 8007DF98 244E0008 */  addiu      $t6, $v0, 0x8
    /* 4E44C 8007DF9C AE0E0000 */  sw         $t6, 0x0($s0)
    /* 4E450 8007DFA0 AC4F0004 */  sw         $t7, 0x4($v0)
    /* 4E454 8007DFA4 10000008 */  b          .L8007DFC8_4E478
    /* 4E458 8007DFA8 AC4D0000 */   sw        $t5, 0x0($v0)
  .L8007DFAC_4E45C:
    /* 4E45C 8007DFAC 8E020000 */  lw         $v0, 0x0($s0)
    /* 4E460 8007DFB0 3C19B700 */  lui        $t9, (0xB7000000 >> 16)
    /* 4E464 8007DFB4 240E2000 */  addiu      $t6, $zero, 0x2000
    /* 4E468 8007DFB8 24580008 */  addiu      $t8, $v0, 0x8
    /* 4E46C 8007DFBC AE180000 */  sw         $t8, 0x0($s0)
    /* 4E470 8007DFC0 AC4E0004 */  sw         $t6, 0x4($v0)
    /* 4E474 8007DFC4 AC590000 */  sw         $t9, 0x0($v0)
  .L8007DFC8_4E478:
    /* 4E478 8007DFC8 8E6D0000 */  lw         $t5, 0x0($s3)
    /* 4E47C 8007DFCC 3C0F800D */  lui        $t7, %hi(D_800D7A44)
    /* 4E480 8007DFD0 3C048009 */  lui        $a0, %hi(D_8009499C)
    /* 4E484 8007DFD4 01B11821 */  addu       $v1, $t5, $s1
    /* 4E488 8007DFD8 9062002A */  lbu        $v0, 0x2A($v1)
    /* 4E48C 8007DFDC 12A20008 */  beq        $s5, $v0, .L8007E000_4E4B0
    /* 4E490 8007DFE0 00000000 */   nop
    /* 4E494 8007DFE4 8DEF7A44 */  lw         $t7, %lo(D_800D7A44)($t7)
    /* 4E498 8007DFE8 0002C0C0 */  sll        $t8, $v0, 3
    /* 4E49C 8007DFEC 3C01800E */  lui        $at, %hi(D_800D8514)
    /* 4E4A0 8007DFF0 01F8C821 */  addu       $t9, $t7, $t8
    /* 4E4A4 8007DFF4 8F2E0000 */  lw         $t6, 0x0($t9)
    /* 4E4A8 8007DFF8 10000002 */  b          .L8007E004_4E4B4
    /* 4E4AC 8007DFFC AC2E8514 */   sw        $t6, %lo(D_800D8514)($at)
  .L8007E000_4E4B0:
    /* 4E4B0 8007E000 AC208514 */  sw         $zero, %lo(D_800D8514)($at)
  .L8007E004_4E4B4:
    /* 4E4B4 8007E004 8C6D0020 */  lw         $t5, 0x20($v1)
    /* 4E4B8 8007E008 31AF0020 */  andi       $t7, $t5, 0x20
    /* 4E4BC 8007E00C 11E00003 */  beqz       $t7, .L8007E01C_4E4CC
    /* 4E4C0 8007E010 00000000 */   nop
    /* 4E4C4 8007E014 0C020694 */  jal        func_80081A50_51F00
    /* 4E4C8 8007E018 2484499C */   addiu     $a0, $a0, %lo(D_8009499C)
  .L8007E01C_4E4CC:
    /* 4E4CC 8007E01C 3C188009 */  lui        $t8, %hi(D_8009494C)
    /* 4E4D0 8007E020 9318494C */  lbu        $t8, %lo(D_8009494C)($t8)
    /* 4E4D4 8007E024 53000004 */  beql       $t8, $zero, .L8007E038_4E4E8
    /* 4E4D8 8007E028 8E620000 */   lw        $v0, 0x0($s3)
    /* 4E4DC 8007E02C 0C02081D */  jal        func_80082074_52524
    /* 4E4E0 8007E030 00000000 */   nop
    /* 4E4E4 8007E034 8E620000 */  lw         $v0, 0x0($s3)
  .L8007E038_4E4E8:
    /* 4E4E8 8007E038 3C018009 */  lui        $at, %hi(D_80094944)
    /* 4E4EC 8007E03C 0051C821 */  addu       $t9, $v0, $s1
    /* 4E4F0 8007E040 932E0029 */  lbu        $t6, 0x29($t9)
    /* 4E4F4 8007E044 02222021 */  addu       $a0, $s1, $v0
    /* 4E4F8 8007E048 0C01FFA3 */  jal        func_8007FE8C_5033C
    /* 4E4FC 8007E04C A02E4944 */   sb        $t6, %lo(D_80094944)($at)
    /* 4E500 8007E050 8E6D0000 */  lw         $t5, 0x0($s3)
    /* 4E504 8007E054 01B11821 */  addu       $v1, $t5, $s1
    /* 4E508 8007E058 8C6F0020 */  lw         $t7, 0x20($v1)
    /* 4E50C 8007E05C 31F80002 */  andi       $t8, $t7, 0x2
    /* 4E510 8007E060 5300000B */  beql       $t8, $zero, .L8007E090_4E540
    /* 4E514 8007E064 90780028 */   lbu       $t8, 0x28($v1)
    /* 4E518 8007E068 8E020000 */  lw         $v0, 0x0($s0)
    /* 4E51C 8007E06C 3C0EB700 */  lui        $t6, (0xB7000000 >> 16)
    /* 4E520 8007E070 3C0D0002 */  lui        $t5, (0x20000 >> 16)
    /* 4E524 8007E074 24590008 */  addiu      $t9, $v0, 0x8
    /* 4E528 8007E078 AE190000 */  sw         $t9, 0x0($s0)
    /* 4E52C 8007E07C AC4D0004 */  sw         $t5, 0x4($v0)
    /* 4E530 8007E080 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 4E534 8007E084 8E6F0000 */  lw         $t7, 0x0($s3)
    /* 4E538 8007E088 01F11821 */  addu       $v1, $t7, $s1
    /* 4E53C 8007E08C 90780028 */  lbu        $t8, 0x28($v1)
  .L8007E090_4E540:
    /* 4E540 8007E090 52B80004 */  beql       $s5, $t8, .L8007E0A4_4E554
    /* 4E544 8007E094 92EE0000 */   lbu       $t6, 0x0($s7)
    /* 4E548 8007E098 0C01FD60 */  jal        func_8007F580_4FA30
    /* 4E54C 8007E09C 00002025 */   or        $a0, $zero, $zero
    /* 4E550 8007E0A0 92EE0000 */  lbu        $t6, 0x0($s7)
  .L8007E0A4_4E554:
    /* 4E554 8007E0A4 26940001 */  addiu      $s4, $s4, 0x1
    /* 4E558 8007E0A8 329900FF */  andi       $t9, $s4, 0xFF
    /* 4E55C 8007E0AC 032E082A */  slt        $at, $t9, $t6
    /* 4E560 8007E0B0 1420FF13 */  bnez       $at, .L8007DD00_4E1B0
    /* 4E564 8007E0B4 0320A025 */   or        $s4, $t9, $zero
  .L8007E0B8_4E568:
    /* 4E568 8007E0B8 0C023F67 */  jal        func_8008FD9C_6024C
    /* 4E56C 8007E0BC 00000000 */   nop
    /* 4E570 8007E0C0 3C03800D */  lui        $v1, %hi(D_800D7970)
    /* 4E574 8007E0C4 90637970 */  lbu        $v1, %lo(D_800D7970)($v1)
    /* 4E578 8007E0C8 24010001 */  addiu      $at, $zero, 0x1
    /* 4E57C 8007E0CC 10600007 */  beqz       $v1, .L8007E0EC_4E59C
    /* 4E580 8007E0D0 00000000 */   nop
    /* 4E584 8007E0D4 10610003 */  beq        $v1, $at, .L8007E0E4_4E594
    /* 4E588 8007E0D8 24010002 */   addiu     $at, $zero, 0x2
    /* 4E58C 8007E0DC 14610003 */  bne        $v1, $at, .L8007E0EC_4E59C
    /* 4E590 8007E0E0 00000000 */   nop
  .L8007E0E4_4E594:
    /* 4E594 8007E0E4 0C01FEFE */  jal        func_8007FBF8_500A8
    /* 4E598 8007E0E8 00000000 */   nop
  .L8007E0EC_4E59C:
    /* 4E59C 8007E0EC 0C024192 */  jal        func_80090648_60AF8
    /* 4E5A0 8007E0F0 00000000 */   nop
    /* 4E5A4 8007E0F4 8FBF005C */  lw         $ra, 0x5C($sp)
    /* 4E5A8 8007E0F8 3C028009 */  lui        $v0, %hi(D_80094998)
    /* 4E5AC 8007E0FC 8C424998 */  lw         $v0, %lo(D_80094998)($v0)
    /* 4E5B0 8007E100 D7B40030 */  ldc1       $f20, 0x30($sp)
    /* 4E5B4 8007E104 8FB0003C */  lw         $s0, 0x3C($sp)
    /* 4E5B8 8007E108 8FB10040 */  lw         $s1, 0x40($sp)
    /* 4E5BC 8007E10C 8FB20044 */  lw         $s2, 0x44($sp)
    /* 4E5C0 8007E110 8FB30048 */  lw         $s3, 0x48($sp)
    /* 4E5C4 8007E114 8FB4004C */  lw         $s4, 0x4C($sp)
    /* 4E5C8 8007E118 8FB50050 */  lw         $s5, 0x50($sp)
    /* 4E5CC 8007E11C 8FB60054 */  lw         $s6, 0x54($sp)
    /* 4E5D0 8007E120 8FB70058 */  lw         $s7, 0x58($sp)
    /* 4E5D4 8007E124 03E00008 */  jr         $ra
    /* 4E5D8 8007E128 27BD0060 */   addiu     $sp, $sp, 0x60
endlabel func_8007D91C_4DDCC
