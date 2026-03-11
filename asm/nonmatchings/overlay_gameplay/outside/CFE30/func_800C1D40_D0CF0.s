nonmatching func_800C1D40_D0CF0, 0xE4

glabel func_800C1D40_D0CF0
    /* D0CF0 800C1D40 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* D0CF4 800C1D44 00043C00 */  sll        $a3, $a0, 16
    /* D0CF8 800C1D48 00077403 */  sra        $t6, $a3, 16
    /* D0CFC 800C1D4C AFA50024 */  sw         $a1, 0x24($sp)
    /* D0D00 800C1D50 30AF00FF */  andi       $t7, $a1, 0xFF
    /* D0D04 800C1D54 01E02825 */  or         $a1, $t7, $zero
    /* D0D08 800C1D58 AFBF0014 */  sw         $ra, 0x14($sp)
    /* D0D0C 800C1D5C AFA40020 */  sw         $a0, 0x20($sp)
    /* D0D10 800C1D60 05C00029 */  bltz       $t6, .L800C1E08_D0DB8
    /* D0D14 800C1D64 AFA60028 */   sw        $a2, 0x28($sp)
    /* D0D18 800C1D68 29C10190 */  slti       $at, $t6, 0x190
    /* D0D1C 800C1D6C 10200026 */  beqz       $at, .L800C1E08_D0DB8
    /* D0D20 800C1D70 29E1001E */   slti      $at, $t7, 0x1E
    /* D0D24 800C1D74 10200024 */  beqz       $at, .L800C1E08_D0DB8
    /* D0D28 800C1D78 000EC0C0 */   sll       $t8, $t6, 3
    /* D0D2C 800C1D7C 030EC023 */  subu       $t8, $t8, $t6
    /* D0D30 800C1D80 3C198015 */  lui        $t9, %hi(D_80154318)
    /* D0D34 800C1D84 27394318 */  addiu      $t9, $t9, %lo(D_80154318)
    /* D0D38 800C1D88 0018C080 */  sll        $t8, $t8, 2
    /* D0D3C 800C1D8C 03191021 */  addu       $v0, $t8, $t9
    /* D0D40 800C1D90 90480000 */  lbu        $t0, 0x0($v0)
    /* D0D44 800C1D94 000E2400 */  sll        $a0, $t6, 16
    /* D0D48 800C1D98 00045C03 */  sra        $t3, $a0, 16
    /* D0D4C 800C1D9C 31090001 */  andi       $t1, $t0, 0x1
    /* D0D50 800C1DA0 11200019 */  beqz       $t1, .L800C1E08_D0DB8
    /* D0D54 800C1DA4 01602025 */   or        $a0, $t3, $zero
    /* D0D58 800C1DA8 844A0004 */  lh         $t2, 0x4($v0)
    /* D0D5C 800C1DAC A3AF0027 */  sb         $t7, 0x27($sp)
    /* D0D60 800C1DB0 0C030693 */  jal        func_800C1A4C_D09FC
    /* D0D64 800C1DB4 A7AA001E */   sh        $t2, 0x1E($sp)
    /* D0D68 800C1DB8 87A4001E */  lh         $a0, 0x1E($sp)
    /* D0D6C 800C1DBC 3C078015 */  lui        $a3, %hi(D_8015431C)
    /* D0D70 800C1DC0 93A50027 */  lbu        $a1, 0x27($sp)
    /* D0D74 800C1DC4 000460C0 */  sll        $t4, $a0, 3
    /* D0D78 800C1DC8 01846023 */  subu       $t4, $t4, $a0
    /* D0D7C 800C1DCC 000C6080 */  sll        $t4, $t4, 2
    /* D0D80 800C1DD0 00EC3821 */  addu       $a3, $a3, $t4
    /* D0D84 800C1DD4 84E7431C */  lh         $a3, %lo(D_8015431C)($a3)
    /* D0D88 800C1DD8 8FA60028 */  lw         $a2, 0x28($sp)
    /* D0D8C 800C1DDC 0C030693 */  jal        func_800C1A4C_D09FC
    /* D0D90 800C1DE0 A7A70022 */   sh        $a3, 0x22($sp)
    /* D0D94 800C1DE4 87A70022 */  lh         $a3, 0x22($sp)
    /* D0D98 800C1DE8 93A50027 */  lbu        $a1, 0x27($sp)
    /* D0D9C 800C1DEC 8FA60028 */  lw         $a2, 0x28($sp)
    /* D0DA0 800C1DF0 00072400 */  sll        $a0, $a3, 16
    /* D0DA4 800C1DF4 00046C03 */  sra        $t5, $a0, 16
    /* D0DA8 800C1DF8 0C030693 */  jal        func_800C1A4C_D09FC
    /* D0DAC 800C1DFC 01A02025 */   or        $a0, $t5, $zero
    /* D0DB0 800C1E00 10000005 */  b          .L800C1E18_D0DC8
    /* D0DB4 800C1E04 8FBF0014 */   lw        $ra, 0x14($sp)
  .L800C1E08_D0DB8:
    /* D0DB8 800C1E08 3C048014 */  lui        $a0, %hi(D_801432C4)
    /* D0DBC 800C1E0C 0C00731B */  jal        osSyncPrintf
    /* D0DC0 800C1E10 248432C4 */   addiu     $a0, $a0, %lo(D_801432C4)
    /* D0DC4 800C1E14 8FBF0014 */  lw         $ra, 0x14($sp)
  .L800C1E18_D0DC8:
    /* D0DC8 800C1E18 27BD0020 */  addiu      $sp, $sp, 0x20
    /* D0DCC 800C1E1C 03E00008 */  jr         $ra
    /* D0DD0 800C1E20 00000000 */   nop
endlabel func_800C1D40_D0CF0
