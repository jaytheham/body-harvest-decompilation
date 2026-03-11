nonmatching func_800B5EE4_C4E94, 0x168

glabel func_800B5EE4_C4E94
    /* C4E94 800B5EE4 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* C4E98 800B5EE8 308EFFFF */  andi       $t6, $a0, 0xFFFF
    /* C4E9C 800B5EEC AFA70024 */  sw         $a3, 0x24($sp)
    /* C4EA0 800B5EF0 30EF00FF */  andi       $t7, $a3, 0xFF
    /* C4EA4 800B5EF4 31D88000 */  andi       $t8, $t6, 0x8000
    /* C4EA8 800B5EF8 01E03825 */  or         $a3, $t7, $zero
    /* C4EAC 800B5EFC AFBF0014 */  sw         $ra, 0x14($sp)
    /* C4EB0 800B5F00 AFA40018 */  sw         $a0, 0x18($sp)
    /* C4EB4 800B5F04 AFA60020 */  sw         $a2, 0x20($sp)
    /* C4EB8 800B5F08 1300004B */  beqz       $t8, .L800B6038_C4FE8
    /* C4EBC 800B5F0C 01C01825 */   or        $v1, $t6, $zero
    /* C4EC0 800B5F10 31D90400 */  andi       $t9, $t6, 0x400
    /* C4EC4 800B5F14 13200025 */  beqz       $t9, .L800B5FAC_C4F5C
    /* C4EC8 800B5F18 3C068015 */   lui       $a2, %hi(D_8014FD28)
    /* C4ECC 800B5F1C 93AB002B */  lbu        $t3, 0x2B($sp)
    /* C4ED0 800B5F20 3C068015 */  lui        $a2, %hi(D_8014FD28)
    /* C4ED4 800B5F24 24C6FD28 */  addiu      $a2, $a2, %lo(D_8014FD28)
    /* C4ED8 800B5F28 94C40000 */  lhu        $a0, 0x0($a2)
    /* C4EDC 800B5F2C 000B60C0 */  sll        $t4, $t3, 3
    /* C4EE0 800B5F30 018B6021 */  addu       $t4, $t4, $t3
    /* C4EE4 800B5F34 000C6940 */  sll        $t5, $t4, 5
    /* C4EE8 800B5F38 3C0A8015 */  lui        $t2, %hi(D_8014F8A8)
    /* C4EEC 800B5F3C 254AF8A8 */  addiu      $t2, $t2, %lo(D_8014F8A8)
    /* C4EF0 800B5F40 01A57021 */  addu       $t6, $t5, $a1
    /* C4EF4 800B5F44 000F7900 */  sll        $t7, $t7, 4
    /* C4EF8 800B5F48 000448C0 */  sll        $t1, $a0, 3
    /* C4EFC 800B5F4C 3C088015 */  lui        $t0, %hi(D_8014F89A)
    /* C4F00 800B5F50 012A1021 */  addu       $v0, $t1, $t2
    /* C4F04 800B5F54 01CFC021 */  addu       $t8, $t6, $t7
    /* C4F08 800B5F58 2508F89A */  addiu      $t0, $t0, %lo(D_8014F89A)
    /* C4F0C 800B5F5C AC580000 */  sw         $t8, 0x0($v0)
    /* C4F10 800B5F60 95180000 */  lhu        $t8, 0x0($t0)
    /* C4F14 800B5F64 307903C0 */  andi       $t9, $v1, 0x3C0
    /* C4F18 800B5F68 306A4000 */  andi       $t2, $v1, 0x4000
    /* C4F1C 800B5F6C 306C2000 */  andi       $t4, $v1, 0x2000
    /* C4F20 800B5F70 248EFFFF */  addiu      $t6, $a0, -0x1
    /* C4F24 800B5F74 00194983 */  sra        $t1, $t9, 6
    /* C4F28 800B5F78 000A5B83 */  sra        $t3, $t2, 14
    /* C4F2C 800B5F7C 000C6B43 */  sra        $t5, $t4, 13
    /* C4F30 800B5F80 31CFFFFF */  andi       $t7, $t6, 0xFFFF
    /* C4F34 800B5F84 A0490004 */  sb         $t1, 0x4($v0)
    /* C4F38 800B5F88 A04B0005 */  sb         $t3, 0x5($v0)
    /* C4F3C 800B5F8C A04D0006 */  sb         $t5, 0x6($v0)
    /* C4F40 800B5F90 15F80004 */  bne        $t7, $t8, .L800B5FA4_C4F54
    /* C4F44 800B5F94 A4CE0000 */   sh        $t6, 0x0($a2)
    /* C4F48 800B5F98 3C048014 */  lui        $a0, %hi(D_80142D30)
    /* C4F4C 800B5F9C 0C00731B */  jal        osSyncPrintf
    /* C4F50 800B5FA0 24842D30 */   addiu     $a0, $a0, %lo(D_80142D30)
  .L800B5FA4_C4F54:
    /* C4F54 800B5FA4 10000025 */  b          .L800B603C_C4FEC
    /* C4F58 800B5FA8 00001025 */   or        $v0, $zero, $zero
  .L800B5FAC_C4F5C:
    /* C4F5C 800B5FAC 93AA002B */  lbu        $t2, 0x2B($sp)
    /* C4F60 800B5FB0 3C088015 */  lui        $t0, %hi(D_8014F89A)
    /* C4F64 800B5FB4 2508F89A */  addiu      $t0, $t0, %lo(D_8014F89A)
    /* C4F68 800B5FB8 95040000 */  lhu        $a0, 0x0($t0)
    /* C4F6C 800B5FBC 000A58C0 */  sll        $t3, $t2, 3
    /* C4F70 800B5FC0 016A5821 */  addu       $t3, $t3, $t2
    /* C4F74 800B5FC4 000B6140 */  sll        $t4, $t3, 5
    /* C4F78 800B5FC8 3C098015 */  lui        $t1, %hi(D_8014F8A8)
    /* C4F7C 800B5FCC 2529F8A8 */  addiu      $t1, $t1, %lo(D_8014F8A8)
    /* C4F80 800B5FD0 01856821 */  addu       $t5, $t4, $a1
    /* C4F84 800B5FD4 00077100 */  sll        $t6, $a3, 4
    /* C4F88 800B5FD8 0004C8C0 */  sll        $t9, $a0, 3
    /* C4F8C 800B5FDC 03291021 */  addu       $v0, $t9, $t1
    /* C4F90 800B5FE0 01AE7821 */  addu       $t7, $t5, $t6
    /* C4F94 800B5FE4 24C6FD28 */  addiu      $a2, $a2, %lo(D_8014FD28)
    /* C4F98 800B5FE8 94CE0000 */  lhu        $t6, 0x0($a2)
    /* C4F9C 800B5FEC AC4F0000 */  sw         $t7, 0x0($v0)
    /* C4FA0 800B5FF0 307803C0 */  andi       $t8, $v1, 0x3C0
    /* C4FA4 800B5FF4 30694000 */  andi       $t1, $v1, 0x4000
    /* C4FA8 800B5FF8 306B2000 */  andi       $t3, $v1, 0x2000
    /* C4FAC 800B5FFC 248D0001 */  addiu      $t5, $a0, 0x1
    /* C4FB0 800B6000 0018C983 */  sra        $t9, $t8, 6
    /* C4FB4 800B6004 00095383 */  sra        $t2, $t1, 14
    /* C4FB8 800B6008 000B6343 */  sra        $t4, $t3, 13
    /* C4FBC 800B600C 31AFFFFF */  andi       $t7, $t5, 0xFFFF
    /* C4FC0 800B6010 A0590004 */  sb         $t9, 0x4($v0)
    /* C4FC4 800B6014 A04A0005 */  sb         $t2, 0x5($v0)
    /* C4FC8 800B6018 A04C0006 */  sb         $t4, 0x6($v0)
    /* C4FCC 800B601C 15CF0004 */  bne        $t6, $t7, .L800B6030_C4FE0
    /* C4FD0 800B6020 A50D0000 */   sh        $t5, 0x0($t0)
    /* C4FD4 800B6024 3C048014 */  lui        $a0, %hi(D_80142D58)
    /* C4FD8 800B6028 0C00731B */  jal        osSyncPrintf
    /* C4FDC 800B602C 24842D58 */   addiu     $a0, $a0, %lo(D_80142D58)
  .L800B6030_C4FE0:
    /* C4FE0 800B6030 10000002 */  b          .L800B603C_C4FEC
    /* C4FE4 800B6034 00001025 */   or        $v0, $zero, $zero
  .L800B6038_C4FE8:
    /* C4FE8 800B6038 24020001 */  addiu      $v0, $zero, 0x1
  .L800B603C_C4FEC:
    /* C4FEC 800B603C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* C4FF0 800B6040 27BD0018 */  addiu      $sp, $sp, 0x18
    /* C4FF4 800B6044 03E00008 */  jr         $ra
    /* C4FF8 800B6048 00000000 */   nop
endlabel func_800B5EE4_C4E94
