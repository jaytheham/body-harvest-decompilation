nonmatching func_80080BC0_8FB70, 0x1D8

glabel func_80080BC0_8FB70
    /* 8FB70 80080BC0 AFA40000 */  sw         $a0, 0x0($sp)
    /* 8FB74 80080BC4 308E00FF */  andi       $t6, $a0, 0xFF
    /* 8FB78 80080BC8 AFA50004 */  sw         $a1, 0x4($sp)
    /* 8FB7C 80080BCC 00057C00 */  sll        $t7, $a1, 16
    /* 8FB80 80080BD0 000F2C03 */  sra        $a1, $t7, 16
    /* 8FB84 80080BD4 01C02025 */  or         $a0, $t6, $zero
    /* 8FB88 80080BD8 00047880 */  sll        $t7, $a0, 2
    /* 8FB8C 80080BDC 01E47821 */  addu       $t7, $t7, $a0
    /* 8FB90 80080BE0 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 8FB94 80080BE4 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 8FB98 80080BE8 000F7900 */  sll        $t7, $t7, 4
    /* 8FB9C 80080BEC 01F81021 */  addu       $v0, $t7, $t8
    /* 8FBA0 80080BF0 84480000 */  lh         $t0, 0x0($v0)
    /* 8FBA4 80080BF4 844B0004 */  lh         $t3, 0x4($v0)
    /* 8FBA8 80080BF8 30E900FF */  andi       $t1, $a3, 0xFF
    /* 8FBAC 80080BFC AFA60008 */  sw         $a2, 0x8($sp)
    /* 8FBB0 80080C00 0006CC00 */  sll        $t9, $a2, 16
    /* 8FBB4 80080C04 00193403 */  sra        $a2, $t9, 16
    /* 8FBB8 80080C08 01256007 */  srav       $t4, $a1, $t1
    /* 8FBBC 80080C0C 01281807 */  srav       $v1, $t0, $t1
    /* 8FBC0 80080C10 0003CC00 */  sll        $t9, $v1, 16
    /* 8FBC4 80080C14 000CC400 */  sll        $t8, $t4, 16
    /* 8FBC8 80080C18 012B5007 */  srav       $t2, $t3, $t1
    /* 8FBCC 80080C1C 00191C03 */  sra        $v1, $t9, 16
    /* 8FBD0 80080C20 000A7400 */  sll        $t6, $t2, 16
    /* 8FBD4 80080C24 00186403 */  sra        $t4, $t8, 16
    /* 8FBD8 80080C28 AFA7000C */  sw         $a3, 0xC($sp)
    /* 8FBDC 80080C2C 146C0006 */  bne        $v1, $t4, .L80080C48_8FBF8
    /* 8FBE0 80080C30 000E5403 */   sra       $t2, $t6, 16
    /* 8FBE4 80080C34 01266807 */  srav       $t5, $a2, $t1
    /* 8FBE8 80080C38 000D7400 */  sll        $t6, $t5, 16
    /* 8FBEC 80080C3C 000E7C03 */  sra        $t7, $t6, 16
    /* 8FBF0 80080C40 514F0029 */  beql       $t2, $t7, .L80080CE8_8FC98
    /* 8FBF4 80080C44 240F0001 */   addiu     $t7, $zero, 0x1
  .L80080C48_8FBF8:
    /* 8FBF8 80080C48 106C000E */  beq        $v1, $t4, .L80080C84_8FC34
    /* 8FBFC 80080C4C 01263807 */   srav      $a3, $a2, $t1
    /* 8FC00 80080C50 8444000E */  lh         $a0, 0xE($v0)
    /* 8FC04 80080C54 006C7023 */  subu       $t6, $v1, $t4
    /* 8FC08 80080C58 000E7B80 */  sll        $t7, $t6, 14
    /* 8FC0C 80080C5C 04810006 */  bgez       $a0, .L80080C78_8FC28
    /* 8FC10 80080C60 008FC021 */   addu      $t8, $a0, $t7
    /* 8FC14 80080C64 006CC023 */  subu       $t8, $v1, $t4
    /* 8FC18 80080C68 0018CB80 */  sll        $t9, $t8, 14
    /* 8FC1C 80080C6C 00996823 */  subu       $t5, $a0, $t9
    /* 8FC20 80080C70 10000002 */  b          .L80080C7C_8FC2C
    /* 8FC24 80080C74 A44D000E */   sh        $t5, 0xE($v0)
  .L80080C78_8FC28:
    /* 8FC28 80080C78 A458000E */  sh         $t8, 0xE($v0)
  .L80080C7C_8FC2C:
    /* 8FC2C 80080C7C 03E00008 */  jr         $ra
    /* 8FC30 80080C80 A4450000 */   sh        $a1, 0x0($v0)
  .L80080C84_8FC34:
    /* 8FC34 80080C84 0007CC00 */  sll        $t9, $a3, 16
    /* 8FC38 80080C88 00193C03 */  sra        $a3, $t9, 16
    /* 8FC3C 80080C8C 11470040 */  beq        $t2, $a3, .L80080D90_8FD40
    /* 8FC40 80080C90 00000000 */   nop
    /* 8FC44 80080C94 8444000E */  lh         $a0, 0xE($v0)
    /* 8FC48 80080C98 0147C823 */  subu       $t9, $t2, $a3
    /* 8FC4C 80080C9C 00196B80 */  sll        $t5, $t9, 14
    /* 8FC50 80080CA0 00041823 */  negu       $v1, $a0
    /* 8FC54 80080CA4 0064082A */  slt        $at, $v1, $a0
    /* 8FC58 80080CA8 10200003 */  beqz       $at, .L80080CB8_8FC68
    /* 8FC5C 80080CAC 00602825 */   or        $a1, $v1, $zero
    /* 8FC60 80080CB0 10000001 */  b          .L80080CB8_8FC68
    /* 8FC64 80080CB4 00802825 */   or        $a1, $a0, $zero
  .L80080CB8_8FC68:
    /* 8FC68 80080CB8 28A14001 */  slti       $at, $a1, 0x4001
    /* 8FC6C 80080CBC 14200006 */  bnez       $at, .L80080CD8_8FC88
    /* 8FC70 80080CC0 008D7023 */   subu      $t6, $a0, $t5
    /* 8FC74 80080CC4 01477023 */  subu       $t6, $t2, $a3
    /* 8FC78 80080CC8 000E7B80 */  sll        $t7, $t6, 14
    /* 8FC7C 80080CCC 008FC021 */  addu       $t8, $a0, $t7
    /* 8FC80 80080CD0 10000002 */  b          .L80080CDC_8FC8C
    /* 8FC84 80080CD4 A458000E */   sh        $t8, 0xE($v0)
  .L80080CD8_8FC88:
    /* 8FC88 80080CD8 A44E000E */  sh         $t6, 0xE($v0)
  .L80080CDC_8FC8C:
    /* 8FC8C 80080CDC 03E00008 */  jr         $ra
    /* 8FC90 80080CE0 A4460004 */   sh        $a2, 0x4($v0)
    /* 8FC94 80080CE4 240F0001 */  addiu      $t7, $zero, 0x1
  .L80080CE8_8FC98:
    /* 8FC98 80080CE8 012F2004 */  sllv       $a0, $t7, $t1
    /* 8FC9C 80080CEC 2485FFFF */  addiu      $a1, $a0, -0x1
    /* 8FCA0 80080CF0 04810003 */  bgez       $a0, .L80080D00_8FCB0
    /* 8FCA4 80080CF4 00043043 */   sra       $a2, $a0, 1
    /* 8FCA8 80080CF8 24810001 */  addiu      $at, $a0, 0x1
    /* 8FCAC 80080CFC 00013043 */  sra        $a2, $at, 1
  .L80080D00_8FCB0:
    /* 8FCB0 80080D00 0105C024 */  and        $t8, $t0, $a1
    /* 8FCB4 80080D04 03061823 */  subu       $v1, $t8, $a2
    /* 8FCB8 80080D08 00035023 */  negu       $t2, $v1
    /* 8FCBC 80080D0C 0165C824 */  and        $t9, $t3, $a1
    /* 8FCC0 80080D10 0143082A */  slt        $at, $t2, $v1
    /* 8FCC4 80080D14 10200003 */  beqz       $at, .L80080D24_8FCD4
    /* 8FCC8 80080D18 03263823 */   subu      $a3, $t9, $a2
    /* 8FCCC 80080D1C 10000002 */  b          .L80080D28_8FCD8
    /* 8FCD0 80080D20 00602025 */   or        $a0, $v1, $zero
  .L80080D24_8FCD4:
    /* 8FCD4 80080D24 01402025 */  or         $a0, $t2, $zero
  .L80080D28_8FCD8:
    /* 8FCD8 80080D28 00071823 */  negu       $v1, $a3
    /* 8FCDC 80080D2C 0067082A */  slt        $at, $v1, $a3
    /* 8FCE0 80080D30 10200003 */  beqz       $at, .L80080D40_8FCF0
    /* 8FCE4 80080D34 00602825 */   or        $a1, $v1, $zero
    /* 8FCE8 80080D38 10000001 */  b          .L80080D40_8FCF0
    /* 8FCEC 80080D3C 00E02825 */   or        $a1, $a3, $zero
  .L80080D40_8FCF0:
    /* 8FCF0 80080D40 00A4082A */  slt        $at, $a1, $a0
    /* 8FCF4 80080D44 1020000A */  beqz       $at, .L80080D70_8FD20
    /* 8FCF8 80080D48 00000000 */   nop
    /* 8FCFC 80080D4C 19400005 */  blez       $t2, .L80080D64_8FD14
    /* 8FD00 80080D50 310FFF00 */   andi      $t7, $t0, 0xFF00
    /* 8FD04 80080D54 310DFF00 */  andi       $t5, $t0, 0xFF00
    /* 8FD08 80080D58 25AEFFFF */  addiu      $t6, $t5, -0x1
    /* 8FD0C 80080D5C 03E00008 */  jr         $ra
    /* 8FD10 80080D60 A44E0000 */   sh        $t6, 0x0($v0)
  .L80080D64_8FD14:
    /* 8FD14 80080D64 25F80100 */  addiu      $t8, $t7, 0x100
    /* 8FD18 80080D68 03E00008 */  jr         $ra
    /* 8FD1C 80080D6C A4580000 */   sh        $t8, 0x0($v0)
  .L80080D70_8FD20:
    /* 8FD20 80080D70 18600005 */  blez       $v1, .L80080D88_8FD38
    /* 8FD24 80080D74 316EFF00 */   andi      $t6, $t3, 0xFF00
    /* 8FD28 80080D78 3179FF00 */  andi       $t9, $t3, 0xFF00
    /* 8FD2C 80080D7C 272DFFFF */  addiu      $t5, $t9, -0x1
    /* 8FD30 80080D80 03E00008 */  jr         $ra
    /* 8FD34 80080D84 A44D0004 */   sh        $t5, 0x4($v0)
  .L80080D88_8FD38:
    /* 8FD38 80080D88 25CF0100 */  addiu      $t7, $t6, 0x100
    /* 8FD3C 80080D8C A44F0004 */  sh         $t7, 0x4($v0)
  .L80080D90_8FD40:
    /* 8FD40 80080D90 03E00008 */  jr         $ra
    /* 8FD44 80080D94 00000000 */   nop
endlabel func_80080BC0_8FB70
