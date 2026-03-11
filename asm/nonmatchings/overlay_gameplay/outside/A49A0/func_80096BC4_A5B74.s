nonmatching func_80096BC4_A5B74, 0x4FC

glabel func_80096BC4_A5B74
    /* A5B74 80096BC4 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* A5B78 80096BC8 AFB40028 */  sw         $s4, 0x28($sp)
    /* A5B7C 80096BCC 3C148004 */  lui        $s4, %hi(currentLevel)
    /* A5B80 80096BD0 26947F90 */  addiu      $s4, $s4, %lo(currentLevel)
    /* A5B84 80096BD4 8E990000 */  lw         $t9, 0x0($s4)
    /* A5B88 80096BD8 00053400 */  sll        $a2, $a1, 16
    /* A5B8C 80096BDC 0006C403 */  sra        $t8, $a2, 16
    /* A5B90 80096BE0 AFA40040 */  sw         $a0, 0x40($sp)
    /* A5B94 80096BE4 00047400 */  sll        $t6, $a0, 16
    /* A5B98 80096BE8 000E2403 */  sra        $a0, $t6, 16
    /* A5B9C 80096BEC 03003025 */  or         $a2, $t8, $zero
    /* A5BA0 80096BF0 3C188014 */  lui        $t8, %hi(D_801479B0)
    /* A5BA4 80096BF4 001971C0 */  sll        $t6, $t9, 7
    /* A5BA8 80096BF8 AFBF003C */  sw         $ra, 0x3C($sp)
    /* A5BAC 80096BFC AFB00018 */  sw         $s0, 0x18($sp)
    /* A5BB0 80096C00 AFA50044 */  sw         $a1, 0x44($sp)
    /* A5BB4 80096C04 25CFFF80 */  addiu      $t7, $t6, -0x80
    /* A5BB8 80096C08 271879B0 */  addiu      $t8, $t8, %lo(D_801479B0)
    /* A5BBC 80096C0C AFBE0038 */  sw         $fp, 0x38($sp)
    /* A5BC0 80096C10 AFB70034 */  sw         $s7, 0x34($sp)
    /* A5BC4 80096C14 AFB60030 */  sw         $s6, 0x30($sp)
    /* A5BC8 80096C18 AFB5002C */  sw         $s5, 0x2C($sp)
    /* A5BCC 80096C1C AFB30024 */  sw         $s3, 0x24($sp)
    /* A5BD0 80096C20 AFB20020 */  sw         $s2, 0x20($sp)
    /* A5BD4 80096C24 AFB1001C */  sw         $s1, 0x1C($sp)
    /* A5BD8 80096C28 01F88021 */  addu       $s0, $t7, $t8
    /* A5BDC 80096C2C 0C02C3C8 */  jal        func_800B0F20_BFED0
    /* A5BE0 80096C30 00062823 */   negu      $a1, $a2
    /* A5BE4 80096C34 3C1F8006 */  lui        $ra, %hi(D_8005BB2C)
    /* A5BE8 80096C38 27FFBB2C */  addiu      $ra, $ra, %lo(D_8005BB2C)
    /* A5BEC 80096C3C 8FE30000 */  lw         $v1, 0x0($ra)
    /* A5BF0 80096C40 3C11E700 */  lui        $s1, (0xE7000000 >> 16)
    /* A5BF4 80096C44 3C0FB700 */  lui        $t7, (0xB7000000 >> 16)
    /* A5BF8 80096C48 24790008 */  addiu      $t9, $v1, 0x8
    /* A5BFC 80096C4C AFF90000 */  sw         $t9, 0x0($ra)
    /* A5C00 80096C50 AC600004 */  sw         $zero, 0x4($v1)
    /* A5C04 80096C54 AC710000 */  sw         $s1, 0x0($v1)
    /* A5C08 80096C58 8FE30000 */  lw         $v1, 0x0($ra)
    /* A5C0C 80096C5C 24180205 */  addiu      $t8, $zero, 0x205
    /* A5C10 80096C60 2413001F */  addiu      $s3, $zero, 0x1F
    /* A5C14 80096C64 246E0008 */  addiu      $t6, $v1, 0x8
    /* A5C18 80096C68 AFEE0000 */  sw         $t6, 0x0($ra)
    /* A5C1C 80096C6C AC780004 */  sw         $t8, 0x4($v1)
    /* A5C20 80096C70 AC6F0000 */  sw         $t7, 0x0($v1)
    /* A5C24 80096C74 8FE30000 */  lw         $v1, 0x0($ra)
    /* A5C28 80096C78 3C0F0003 */  lui        $t7, (0x33000 >> 16)
    /* A5C2C 80096C7C 35EF3000 */  ori        $t7, $t7, (0x33000 & 0xFFFF)
    /* A5C30 80096C80 24790008 */  addiu      $t9, $v1, 0x8
    /* A5C34 80096C84 AFF90000 */  sw         $t9, 0x0($ra)
    /* A5C38 80096C88 3C0EB600 */  lui        $t6, (0xB6000000 >> 16)
    /* A5C3C 80096C8C AC6E0000 */  sw         $t6, 0x0($v1)
    /* A5C40 80096C90 AC6F0004 */  sw         $t7, 0x4($v1)
    /* A5C44 80096C94 8FE30000 */  lw         $v1, 0x0($ra)
    /* A5C48 80096C98 3C19BA00 */  lui        $t9, (0xBA001402 >> 16)
    /* A5C4C 80096C9C 37391402 */  ori        $t9, $t9, (0xBA001402 & 0xFFFF)
    /* A5C50 80096CA0 24780008 */  addiu      $t8, $v1, 0x8
    /* A5C54 80096CA4 AFF80000 */  sw         $t8, 0x0($ra)
    /* A5C58 80096CA8 AC600004 */  sw         $zero, 0x4($v1)
    /* A5C5C 80096CAC AC790000 */  sw         $t9, 0x0($v1)
    /* A5C60 80096CB0 8FE30000 */  lw         $v1, 0x0($ra)
    /* A5C64 80096CB4 3C18FFFE */  lui        $t8, (0xFFFE793C >> 16)
    /* A5C68 80096CB8 3C0FFCFF */  lui        $t7, (0xFCFFFFFF >> 16)
    /* A5C6C 80096CBC 246E0008 */  addiu      $t6, $v1, 0x8
    /* A5C70 80096CC0 AFEE0000 */  sw         $t6, 0x0($ra)
    /* A5C74 80096CC4 35EFFFFF */  ori        $t7, $t7, (0xFCFFFFFF & 0xFFFF)
    /* A5C78 80096CC8 3718793C */  ori        $t8, $t8, (0xFFFE793C & 0xFFFF)
    /* A5C7C 80096CCC AC780004 */  sw         $t8, 0x4($v1)
    /* A5C80 80096CD0 AC6F0000 */  sw         $t7, 0x0($v1)
    /* A5C84 80096CD4 8FE30000 */  lw         $v1, 0x0($ra)
    /* A5C88 80096CD8 3C0F0050 */  lui        $t7, (0x5041C8 >> 16)
    /* A5C8C 80096CDC 3C0EB900 */  lui        $t6, (0xB900031D >> 16)
    /* A5C90 80096CE0 24790008 */  addiu      $t9, $v1, 0x8
    /* A5C94 80096CE4 AFF90000 */  sw         $t9, 0x0($ra)
    /* A5C98 80096CE8 35CE031D */  ori        $t6, $t6, (0xB900031D & 0xFFFF)
    /* A5C9C 80096CEC 35EF41C8 */  ori        $t7, $t7, (0x5041C8 & 0xFFFF)
    /* A5CA0 80096CF0 AC6F0004 */  sw         $t7, 0x4($v1)
    /* A5CA4 80096CF4 AC6E0000 */  sw         $t6, 0x0($v1)
    /* A5CA8 80096CF8 8FE30000 */  lw         $v1, 0x0($ra)
    /* A5CAC 80096CFC 3C0E8000 */  lui        $t6, (0x80008000 >> 16)
    /* A5CB0 80096D00 35CE8000 */  ori        $t6, $t6, (0x80008000 & 0xFFFF)
    /* A5CB4 80096D04 24780008 */  addiu      $t8, $v1, 0x8
    /* A5CB8 80096D08 AFF80000 */  sw         $t8, 0x0($ra)
    /* A5CBC 80096D0C 3C19BB00 */  lui        $t9, (0xBB000000 >> 16)
    /* A5CC0 80096D10 AC790000 */  sw         $t9, 0x0($v1)
    /* A5CC4 80096D14 AC6E0004 */  sw         $t6, 0x4($v1)
    /* A5CC8 80096D18 8FE30000 */  lw         $v1, 0x0($ra)
    /* A5CCC 80096D1C 3C18BA00 */  lui        $t8, (0xBA001301 >> 16)
    /* A5CD0 80096D20 37181301 */  ori        $t8, $t8, (0xBA001301 & 0xFFFF)
    /* A5CD4 80096D24 246F0008 */  addiu      $t7, $v1, 0x8
    /* A5CD8 80096D28 AFEF0000 */  sw         $t7, 0x0($ra)
    /* A5CDC 80096D2C AC600004 */  sw         $zero, 0x4($v1)
    /* A5CE0 80096D30 AC780000 */  sw         $t8, 0x0($v1)
    /* A5CE4 80096D34 8FE30000 */  lw         $v1, 0x0($ra)
    /* A5CE8 80096D38 3C0EBA00 */  lui        $t6, (0xBA000E02 >> 16)
    /* A5CEC 80096D3C 35CE0E02 */  ori        $t6, $t6, (0xBA000E02 & 0xFFFF)
    /* A5CF0 80096D40 24790008 */  addiu      $t9, $v1, 0x8
    /* A5CF4 80096D44 AFF90000 */  sw         $t9, 0x0($ra)
    /* A5CF8 80096D48 AC600004 */  sw         $zero, 0x4($v1)
    /* A5CFC 80096D4C AC6E0000 */  sw         $t6, 0x0($v1)
    /* A5D00 80096D50 8FE30000 */  lw         $v1, 0x0($ra)
    /* A5D04 80096D54 241E00FF */  addiu      $fp, $zero, 0xFF
    /* A5D08 80096D58 24170040 */  addiu      $s7, $zero, 0x40
    /* A5D0C 80096D5C 246F0008 */  addiu      $t7, $v1, 0x8
    /* A5D10 80096D60 AFEF0000 */  sw         $t7, 0x0($ra)
    /* A5D14 80096D64 AC600004 */  sw         $zero, 0x4($v1)
    /* A5D18 80096D68 AC710000 */  sw         $s1, 0x0($v1)
    /* A5D1C 80096D6C 24030020 */  addiu      $v1, $zero, 0x20
    /* A5D20 80096D70 106000AC */  beqz       $v1, .L80097024_A5FD4
    /* A5D24 80096D74 3C168014 */   lui       $s6, %hi(D_801475F0)
    /* A5D28 80096D78 3C0C8006 */  lui        $t4, %hi(D_8005BB34)
    /* A5D2C 80096D7C 258CBB34 */  addiu      $t4, $t4, %lo(D_8005BB34)
    /* A5D30 80096D80 26D675F0 */  addiu      $s6, $s6, %lo(D_801475F0)
    /* A5D34 80096D84 2415FFFF */  addiu      $s5, $zero, -0x1
    /* A5D38 80096D88 241201FF */  addiu      $s2, $zero, 0x1FF
  .L80096D8C_A5D3C:
    /* A5D3C 80096D8C 820D0000 */  lb         $t5, 0x0($s0)
    /* A5D40 80096D90 12AD00A0 */  beq        $s5, $t5, .L80097014_A5FC4
    /* A5D44 80096D94 000D7080 */   sll       $t6, $t5, 2
    /* A5D48 80096D98 8E980000 */  lw         $t8, 0x0($s4)
    /* A5D4C 80096D9C 8D890000 */  lw         $t1, 0x0($t4)
    /* A5D50 80096DA0 820F0001 */  lb         $t7, 0x1($s0)
    /* A5D54 80096DA4 0018C880 */  sll        $t9, $t8, 2
    /* A5D58 80096DA8 0338C823 */  subu       $t9, $t9, $t8
    /* A5D5C 80096DAC 0019C980 */  sll        $t9, $t9, 6
    /* A5D60 80096DB0 02D93821 */  addu       $a3, $s6, $t9
    /* A5D64 80096DB4 25390010 */  addiu      $t9, $t1, 0x10
    /* A5D68 80096DB8 272A0010 */  addiu      $t2, $t9, 0x10
    /* A5D6C 80096DBC 000FC080 */  sll        $t8, $t7, 2
    /* A5D70 80096DC0 AD990000 */  sw         $t9, 0x0($t4)
    /* A5D74 80096DC4 254F0010 */  addiu      $t7, $t2, 0x10
    /* A5D78 80096DC8 00F84021 */  addu       $t0, $a3, $t8
    /* A5D7C 80096DCC AD8A0000 */  sw         $t2, 0x0($t4)
    /* A5D80 80096DD0 AD8F0000 */  sw         $t7, 0x0($t4)
    /* A5D84 80096DD4 25F80010 */  addiu      $t8, $t7, 0x10
    /* A5D88 80096DD8 00EE3021 */  addu       $a2, $a3, $t6
    /* A5D8C 80096DDC AD980000 */  sw         $t8, 0x0($t4)
    /* A5D90 80096DE0 84C4FF40 */  lh         $a0, -0xC0($a2)
    /* A5D94 80096DE4 01E02825 */  or         $a1, $t7, $zero
    /* A5D98 80096DE8 03205825 */  or         $t3, $t9, $zero
    /* A5D9C 80096DEC 000478C0 */  sll        $t7, $a0, 3
    /* A5DA0 80096DF0 A56F0000 */  sh         $t7, 0x0($t3)
    /* A5DA4 80096DF4 A52F0000 */  sh         $t7, 0x0($t1)
    /* A5DA8 80096DF8 84C4FF42 */  lh         $a0, -0xBE($a2)
    /* A5DAC 80096DFC 00028C00 */  sll        $s1, $v0, 16
    /* A5DB0 80096E00 24C6FF40 */  addiu      $a2, $a2, -0xC0
    /* A5DB4 80096E04 00042023 */  negu       $a0, $a0
    /* A5DB8 80096E08 000470C0 */  sll        $t6, $a0, 3
    /* A5DBC 80096E0C A56E0002 */  sh         $t6, 0x2($t3)
    /* A5DC0 80096E10 A52E0002 */  sh         $t6, 0x2($t1)
    /* A5DC4 80096E14 8504FF40 */  lh         $a0, -0xC0($t0)
    /* A5DC8 80096E18 2508FF40 */  addiu      $t0, $t0, -0xC0
    /* A5DCC 80096E1C 2403008C */  addiu      $v1, $zero, 0x8C
    /* A5DD0 80096E20 0004C8C0 */  sll        $t9, $a0, 3
    /* A5DD4 80096E24 A4B90000 */  sh         $t9, 0x0($a1)
    /* A5DD8 80096E28 A5590000 */  sh         $t9, 0x0($t2)
    /* A5DDC 80096E2C 85040002 */  lh         $a0, 0x2($t0)
    /* A5DE0 80096E30 0011CC03 */  sra        $t9, $s1, 16
    /* A5DE4 80096E34 03208825 */  or         $s1, $t9, $zero
    /* A5DE8 80096E38 00047023 */  negu       $t6, $a0
    /* A5DEC 80096E3C 000E7CC0 */  sll        $t7, $t6, 19
    /* A5DF0 80096E40 000FC403 */  sra        $t8, $t7, 16
    /* A5DF4 80096E44 A4B80002 */  sh         $t8, 0x2($a1)
    /* A5DF8 80096E48 A5400004 */  sh         $zero, 0x4($t2)
    /* A5DFC 80096E4C 854E0004 */  lh         $t6, 0x4($t2)
    /* A5E00 80096E50 A5580002 */  sh         $t8, 0x2($t2)
    /* A5E04 80096E54 03002025 */  or         $a0, $t8, $zero
    /* A5E08 80096E58 A52E0004 */  sh         $t6, 0x4($t1)
    /* A5E0C 80096E5C A4B70004 */  sh         $s7, 0x4($a1)
    /* A5E10 80096E60 84AF0004 */  lh         $t7, 0x4($a1)
    /* A5E14 80096E64 3C188014 */  lui        $t8, %hi(D_801479B0)
    /* A5E18 80096E68 271879B0 */  addiu      $t8, $t8, %lo(D_801479B0)
    /* A5E1C 80096E6C A56F0004 */  sh         $t7, 0x4($t3)
    /* A5E20 80096E70 8E8E0000 */  lw         $t6, 0x0($s4)
    /* A5E24 80096E74 0218C823 */  subu       $t9, $s0, $t8
    /* A5E28 80096E78 000E79C0 */  sll        $t7, $t6, 7
    /* A5E2C 80096E7C 000FC023 */  negu       $t8, $t7
    /* A5E30 80096E80 03387021 */  addu       $t6, $t9, $t8
    /* A5E34 80096E84 25CF0080 */  addiu      $t7, $t6, 0x80
    /* A5E38 80096E88 000FC843 */  sra        $t9, $t7, 1
    /* A5E3C 80096E8C 0019C0C3 */  sra        $t8, $t9, 3
    /* A5E40 80096E90 5638003B */  bnel       $s1, $t8, .L80096F80_A5F30
    /* A5E44 80096E94 A0A3000C */   sb        $v1, 0xC($a1)
    /* A5E48 80096E98 3C038014 */  lui        $v1, %hi(D_8013D510)
    /* A5E4C 80096E9C 8463D510 */  lh         $v1, %lo(D_8013D510)($v1)
    /* A5E50 80096EA0 241100FF */  addiu      $s1, $zero, 0xFF
    /* A5E54 80096EA4 00037100 */  sll        $t6, $v1, 4
    /* A5E58 80096EA8 01D2001A */  div        $zero, $t6, $s2
    /* A5E5C 80096EAC 01C01825 */  or         $v1, $t6, $zero
    /* A5E60 80096EB0 16400002 */  bnez       $s2, .L80096EBC_A5E6C
    /* A5E64 80096EB4 00000000 */   nop
    /* A5E68 80096EB8 0007000D */  break      7
  .L80096EBC_A5E6C:
    /* A5E6C 80096EBC 2401FFFF */  addiu      $at, $zero, -0x1
    /* A5E70 80096EC0 16410004 */  bne        $s2, $at, .L80096ED4_A5E84
    /* A5E74 80096EC4 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* A5E78 80096EC8 14610002 */  bne        $v1, $at, .L80096ED4_A5E84
    /* A5E7C 80096ECC 00000000 */   nop
    /* A5E80 80096ED0 0006000D */  break      6
  .L80096ED4_A5E84:
    /* A5E84 80096ED4 00003010 */  mfhi       $a2
    /* A5E88 80096ED8 240101FF */  addiu      $at, $zero, 0x1FF
    /* A5E8C 80096EDC 24680200 */  addiu      $t0, $v1, 0x200
    /* A5E90 80096EE0 0101001A */  div        $zero, $t0, $at
    /* A5E94 80096EE4 0000C010 */  mfhi       $t8
    /* A5E98 80096EE8 00063C00 */  sll        $a3, $a2, 16
    /* A5E9C 80096EEC 00062400 */  sll        $a0, $a2, 16
    /* A5EA0 80096EF0 0007CC03 */  sra        $t9, $a3, 16
    /* A5EA4 80096EF4 00186C00 */  sll        $t5, $t8, 16
    /* A5EA8 80096EF8 00047C03 */  sra        $t7, $a0, 16
    /* A5EAC 80096EFC 000D7403 */  sra        $t6, $t5, 16
    /* A5EB0 80096F00 2B210100 */  slti       $at, $t9, 0x100
    /* A5EB4 80096F04 01E02025 */  or         $a0, $t7, $zero
    /* A5EB8 80096F08 01C06825 */  or         $t5, $t6, $zero
    /* A5EBC 80096F0C 03203825 */  or         $a3, $t9, $zero
    /* A5EC0 80096F10 14200004 */  bnez       $at, .L80096F24_A5ED4
    /* A5EC4 80096F14 03004025 */   or        $t0, $t8, $zero
    /* A5EC8 80096F18 02592023 */  subu       $a0, $s2, $t9
    /* A5ECC 80096F1C 00047C00 */  sll        $t7, $a0, 16
    /* A5ED0 80096F20 000F2403 */  sra        $a0, $t7, 16
  .L80096F24_A5ED4:
    /* A5ED4 80096F24 A0A4000C */  sb         $a0, 0xC($a1)
    /* A5ED8 80096F28 A144000C */  sb         $a0, 0xC($t2)
    /* A5EDC 80096F2C A164000C */  sb         $a0, 0xC($t3)
    /* A5EE0 80096F30 A124000C */  sb         $a0, 0xC($t1)
    /* A5EE4 80096F34 03C47023 */  subu       $t6, $fp, $a0
    /* A5EE8 80096F38 A0AE000D */  sb         $t6, 0xD($a1)
    /* A5EEC 80096F3C A14E000D */  sb         $t6, 0xD($t2)
    /* A5EF0 80096F40 00082400 */  sll        $a0, $t0, 16
    /* A5EF4 80096F44 A16E000D */  sb         $t6, 0xD($t3)
    /* A5EF8 80096F48 00047C03 */  sra        $t7, $a0, 16
    /* A5EFC 80096F4C 29A10100 */  slti       $at, $t5, 0x100
    /* A5F00 80096F50 A12E000D */  sb         $t6, 0xD($t1)
    /* A5F04 80096F54 14200004 */  bnez       $at, .L80096F68_A5F18
    /* A5F08 80096F58 01E02025 */   or        $a0, $t7, $zero
    /* A5F0C 80096F5C 024D2023 */  subu       $a0, $s2, $t5
    /* A5F10 80096F60 0004CC00 */  sll        $t9, $a0, 16
    /* A5F14 80096F64 00192403 */  sra        $a0, $t9, 16
  .L80096F68_A5F18:
    /* A5F18 80096F68 A0A4000E */  sb         $a0, 0xE($a1)
    /* A5F1C 80096F6C A144000E */  sb         $a0, 0xE($t2)
    /* A5F20 80096F70 A164000E */  sb         $a0, 0xE($t3)
    /* A5F24 80096F74 10000010 */  b          .L80096FB8_A5F68
    /* A5F28 80096F78 A124000E */   sb        $a0, 0xE($t1)
    /* A5F2C 80096F7C A0A3000C */  sb         $v1, 0xC($a1)
  .L80096F80_A5F30:
    /* A5F30 80096F80 A143000C */  sb         $v1, 0xC($t2)
    /* A5F34 80096F84 A163000C */  sb         $v1, 0xC($t3)
    /* A5F38 80096F88 A123000C */  sb         $v1, 0xC($t1)
    /* A5F3C 80096F8C 240300BE */  addiu      $v1, $zero, 0xBE
    /* A5F40 80096F90 A0A3000D */  sb         $v1, 0xD($a1)
    /* A5F44 80096F94 A143000D */  sb         $v1, 0xD($t2)
    /* A5F48 80096F98 A163000D */  sb         $v1, 0xD($t3)
    /* A5F4C 80096F9C A123000D */  sb         $v1, 0xD($t1)
    /* A5F50 80096FA0 240300FF */  addiu      $v1, $zero, 0xFF
    /* A5F54 80096FA4 A0A3000E */  sb         $v1, 0xE($a1)
    /* A5F58 80096FA8 A143000E */  sb         $v1, 0xE($t2)
    /* A5F5C 80096FAC A163000E */  sb         $v1, 0xE($t3)
    /* A5F60 80096FB0 A123000E */  sb         $v1, 0xE($t1)
    /* A5F64 80096FB4 24110046 */  addiu      $s1, $zero, 0x46
  .L80096FB8_A5F68:
    /* A5F68 80096FB8 A151000F */  sb         $s1, 0xF($t2)
    /* A5F6C 80096FBC A131000F */  sb         $s1, 0xF($t1)
    /* A5F70 80096FC0 A0A0000F */  sb         $zero, 0xF($a1)
    /* A5F74 80096FC4 A160000F */  sb         $zero, 0xF($t3)
    /* A5F78 80096FC8 8FE30000 */  lw         $v1, 0x0($ra)
    /* A5F7C 80096FCC 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* A5F80 80096FD0 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* A5F84 80096FD4 246E0008 */  addiu      $t6, $v1, 0x8
    /* A5F88 80096FD8 AFEE0000 */  sw         $t6, 0x0($ra)
    /* A5F8C 80096FDC 3C0F0400 */  lui        $t7, (0x400103F >> 16)
    /* A5F90 80096FE0 35EF103F */  ori        $t7, $t7, (0x400103F & 0xFFFF)
    /* A5F94 80096FE4 0121C824 */  and        $t9, $t1, $at
    /* A5F98 80096FE8 AC790004 */  sw         $t9, 0x4($v1)
    /* A5F9C 80096FEC AC6F0000 */  sw         $t7, 0x0($v1)
    /* A5FA0 80096FF0 8FE30000 */  lw         $v1, 0x0($ra)
    /* A5FA4 80096FF4 3C0F0006 */  lui        $t7, (0x60204 >> 16)
    /* A5FA8 80096FF8 3C0EB100 */  lui        $t6, (0xB1000204 >> 16)
    /* A5FAC 80096FFC 24780008 */  addiu      $t8, $v1, 0x8
    /* A5FB0 80097000 AFF80000 */  sw         $t8, 0x0($ra)
    /* A5FB4 80097004 35CE0204 */  ori        $t6, $t6, (0xB1000204 & 0xFFFF)
    /* A5FB8 80097008 35EF0204 */  ori        $t7, $t7, (0x60204 & 0xFFFF)
    /* A5FBC 8009700C AC6F0004 */  sw         $t7, 0x4($v1)
    /* A5FC0 80097010 AC6E0000 */  sw         $t6, 0x0($v1)
  .L80097014_A5FC4:
    /* A5FC4 80097014 02601825 */  or         $v1, $s3, $zero
    /* A5FC8 80097018 26100002 */  addiu      $s0, $s0, 0x2
    /* A5FCC 8009701C 1660FF5B */  bnez       $s3, .L80096D8C_A5D3C
    /* A5FD0 80097020 2673FFFF */   addiu     $s3, $s3, -0x1
  .L80097024_A5FD4:
    /* A5FD4 80097024 8FE30000 */  lw         $v1, 0x0($ra)
    /* A5FD8 80097028 3C18BB00 */  lui        $t8, (0xBB000001 >> 16)
    /* A5FDC 8009702C 3C0E8000 */  lui        $t6, (0x80008000 >> 16)
    /* A5FE0 80097030 24790008 */  addiu      $t9, $v1, 0x8
    /* A5FE4 80097034 AFF90000 */  sw         $t9, 0x0($ra)
    /* A5FE8 80097038 35CE8000 */  ori        $t6, $t6, (0x80008000 & 0xFFFF)
    /* A5FEC 8009703C 37180001 */  ori        $t8, $t8, (0xBB000001 & 0xFFFF)
    /* A5FF0 80097040 AC780000 */  sw         $t8, 0x0($v1)
    /* A5FF4 80097044 AC6E0004 */  sw         $t6, 0x4($v1)
    /* A5FF8 80097048 8FE30000 */  lw         $v1, 0x0($ra)
    /* A5FFC 8009704C 24182000 */  addiu      $t8, $zero, 0x2000
    /* A6000 80097050 3C19B700 */  lui        $t9, (0xB7000000 >> 16)
    /* A6004 80097054 246F0008 */  addiu      $t7, $v1, 0x8
    /* A6008 80097058 AFEF0000 */  sw         $t7, 0x0($ra)
    /* A600C 8009705C 3C0E8014 */  lui        $t6, %hi(D_8013D510)
    /* A6010 80097060 AC780004 */  sw         $t8, 0x4($v1)
    /* A6014 80097064 AC790000 */  sw         $t9, 0x0($v1)
    /* A6018 80097068 85CED510 */  lh         $t6, %lo(D_8013D510)($t6)
    /* A601C 8009706C 3C018014 */  lui        $at, %hi(D_8013D510)
    /* A6020 80097070 3C18E700 */  lui        $t8, (0xE7000000 >> 16)
    /* A6024 80097074 25CF0001 */  addiu      $t7, $t6, 0x1
    /* A6028 80097078 A42FD510 */  sh         $t7, %lo(D_8013D510)($at)
    /* A602C 8009707C 8FE30000 */  lw         $v1, 0x0($ra)
    /* A6030 80097080 24790008 */  addiu      $t9, $v1, 0x8
    /* A6034 80097084 AFF90000 */  sw         $t9, 0x0($ra)
    /* A6038 80097088 AC600004 */  sw         $zero, 0x4($v1)
    /* A603C 8009708C AC780000 */  sw         $t8, 0x0($v1)
    /* A6040 80097090 8FBF003C */  lw         $ra, 0x3C($sp)
    /* A6044 80097094 8FBE0038 */  lw         $fp, 0x38($sp)
    /* A6048 80097098 8FB70034 */  lw         $s7, 0x34($sp)
    /* A604C 8009709C 8FB60030 */  lw         $s6, 0x30($sp)
    /* A6050 800970A0 8FB5002C */  lw         $s5, 0x2C($sp)
    /* A6054 800970A4 8FB40028 */  lw         $s4, 0x28($sp)
    /* A6058 800970A8 8FB30024 */  lw         $s3, 0x24($sp)
    /* A605C 800970AC 8FB20020 */  lw         $s2, 0x20($sp)
    /* A6060 800970B0 8FB1001C */  lw         $s1, 0x1C($sp)
    /* A6064 800970B4 8FB00018 */  lw         $s0, 0x18($sp)
    /* A6068 800970B8 03E00008 */  jr         $ra
    /* A606C 800970BC 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_80096BC4_A5B74
