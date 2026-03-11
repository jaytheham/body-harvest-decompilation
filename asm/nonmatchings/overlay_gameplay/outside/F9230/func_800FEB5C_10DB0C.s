nonmatching func_800FEB5C_10DB0C, 0x11C

glabel func_800FEB5C_10DB0C
    /* 10DB0C 800FEB5C 3C078005 */  lui        $a3, %hi(D_80052B34)
    /* 10DB10 800FEB60 8CE72B34 */  lw         $a3, %lo(D_80052B34)($a3)
    /* 10DB14 800FEB64 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 10DB18 800FEB68 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 10DB1C 800FEB6C AFA40018 */  sw         $a0, 0x18($sp)
    /* 10DB20 800FEB70 94EE0020 */  lhu        $t6, 0x20($a3)
    /* 10DB24 800FEB74 0004C900 */  sll        $t9, $a0, 4
    /* 10DB28 800FEB78 3C018005 */  lui        $at, %hi(D_80052B48)
    /* 10DB2C 800FEB7C 31CF0002 */  andi       $t7, $t6, 0x2
    /* 10DB30 800FEB80 11E0000C */  beqz       $t7, .L800FEBB4_10DB64
    /* 10DB34 800FEB84 3C068025 */   lui       $a2, %hi(D_80257A34)
    /* 10DB38 800FEB88 3C098014 */  lui        $t1, %hi(D_8013FDA8)
    /* 10DB3C 800FEB8C 2529FDA8 */  addiu      $t1, $t1, %lo(D_8013FDA8)
    /* 10DB40 800FEB90 27280008 */  addiu      $t0, $t9, 0x8
    /* 10DB44 800FEB94 3C078006 */  lui        $a3, %hi(D_8005BB38)
    /* 10DB48 800FEB98 8CE7BB38 */  lw         $a3, %lo(D_8005BB38)($a3)
    /* 10DB4C 800FEB9C 01092021 */  addu       $a0, $t0, $t1
    /* 10DB50 800FEBA0 00002825 */  or         $a1, $zero, $zero
    /* 10DB54 800FEBA4 0C000E74 */  jal        func_800039D0_45D0
    /* 10DB58 800FEBA8 00003025 */   or        $a2, $zero, $zero
    /* 10DB5C 800FEBAC 1000002F */  b          .L800FEC6C_10DC1C
    /* 10DB60 800FEBB0 8FBF0014 */   lw        $ra, 0x14($sp)
  .L800FEBB4_10DB64:
    /* 10DB64 800FEBB4 A4202B48 */  sh         $zero, %lo(D_80052B48)($at)
    /* 10DB68 800FEBB8 90EC001A */  lbu        $t4, 0x1A($a3)
    /* 10DB6C 800FEBBC 84E50006 */  lh         $a1, 0x6($a3)
    /* 10DB70 800FEBC0 00E02025 */  or         $a0, $a3, $zero
    /* 10DB74 800FEBC4 000C68C0 */  sll        $t5, $t4, 3
    /* 10DB78 800FEBC8 01AC6823 */  subu       $t5, $t5, $t4
    /* 10DB7C 800FEBCC 000D6900 */  sll        $t5, $t5, 4
    /* 10DB80 800FEBD0 24A54000 */  addiu      $a1, $a1, 0x4000
    /* 10DB84 800FEBD4 00055400 */  sll        $t2, $a1, 16
    /* 10DB88 800FEBD8 00CD3021 */  addu       $a2, $a2, $t5
    /* 10DB8C 800FEBDC 84C67A34 */  lh         $a2, %lo(D_80257A34)($a2)
    /* 10DB90 800FEBE0 0C03E903 */  jal        func_800FA40C_1093BC
    /* 10DB94 800FEBE4 000A2C03 */   sra       $a1, $t2, 16
    /* 10DB98 800FEBE8 3C078005 */  lui        $a3, %hi(D_80052B34)
    /* 10DB9C 800FEBEC 8CE42B34 */  lw         $a0, %lo(D_80052B34)($a3)
    /* 10DBA0 800FEBF0 3C018005 */  lui        $at, %hi(D_80052B4A)
    /* 10DBA4 800FEBF4 3C068025 */  lui        $a2, %hi(D_80257A36)
    /* 10DBA8 800FEBF8 848E0008 */  lh         $t6, 0x8($a0)
    /* 10DBAC 800FEBFC 004E7821 */  addu       $t7, $v0, $t6
    /* 10DBB0 800FEC00 A42F2B4A */  sh         $t7, %lo(D_80052B4A)($at)
    /* 10DBB4 800FEC04 9098001A */  lbu        $t8, 0x1A($a0)
    /* 10DBB8 800FEC08 84850006 */  lh         $a1, 0x6($a0)
    /* 10DBBC 800FEC0C 0018C8C0 */  sll        $t9, $t8, 3
    /* 10DBC0 800FEC10 0338C823 */  subu       $t9, $t9, $t8
    /* 10DBC4 800FEC14 0019C900 */  sll        $t9, $t9, 4
    /* 10DBC8 800FEC18 00D93021 */  addu       $a2, $a2, $t9
    /* 10DBCC 800FEC1C 0C03E903 */  jal        func_800FA40C_1093BC
    /* 10DBD0 800FEC20 84C67A36 */   lh        $a2, %lo(D_80257A36)($a2)
    /* 10DBD4 800FEC24 3C088005 */  lui        $t0, %hi(D_80052B34)
    /* 10DBD8 800FEC28 8D082B34 */  lw         $t0, %lo(D_80052B34)($t0)
    /* 10DBDC 800FEC2C 8FAB0018 */  lw         $t3, 0x18($sp)
    /* 10DBE0 800FEC30 3C058005 */  lui        $a1, %hi(D_80052B48)
    /* 10DBE4 800FEC34 8509000A */  lh         $t1, 0xA($t0)
    /* 10DBE8 800FEC38 24A52B48 */  addiu      $a1, $a1, %lo(D_80052B48)
    /* 10DBEC 800FEC3C 3C0E8014 */  lui        $t6, %hi(D_8013FDA8)
    /* 10DBF0 800FEC40 000B6100 */  sll        $t4, $t3, 4
    /* 10DBF4 800FEC44 00495023 */  subu       $t2, $v0, $t1
    /* 10DBF8 800FEC48 A4AA0004 */  sh         $t2, 0x4($a1)
    /* 10DBFC 800FEC4C 258D0008 */  addiu      $t5, $t4, 0x8
    /* 10DC00 800FEC50 25CEFDA8 */  addiu      $t6, $t6, %lo(D_8013FDA8)
    /* 10DC04 800FEC54 3C078006 */  lui        $a3, %hi(D_8005BB38)
    /* 10DC08 800FEC58 8CE7BB38 */  lw         $a3, %lo(D_8005BB38)($a3)
    /* 10DC0C 800FEC5C 01AE2021 */  addu       $a0, $t5, $t6
    /* 10DC10 800FEC60 0C000E74 */  jal        func_800039D0_45D0
    /* 10DC14 800FEC64 00003025 */   or        $a2, $zero, $zero
    /* 10DC18 800FEC68 8FBF0014 */  lw         $ra, 0x14($sp)
  .L800FEC6C_10DC1C:
    /* 10DC1C 800FEC6C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 10DC20 800FEC70 03E00008 */  jr         $ra
    /* 10DC24 800FEC74 00000000 */   nop
endlabel func_800FEB5C_10DB0C
