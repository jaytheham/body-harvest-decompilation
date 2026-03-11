nonmatching func_80092C40_A1BF0, 0x1BC

glabel func_80092C40_A1BF0
    /* A1BF0 80092C40 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* A1BF4 80092C44 AFA40038 */  sw         $a0, 0x38($sp)
    /* A1BF8 80092C48 93AE003B */  lbu        $t6, 0x3B($sp)
    /* A1BFC 80092C4C 3C188005 */  lui        $t8, %hi(alienInstances)
    /* A1C00 80092C50 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* A1C04 80092C54 000E7880 */  sll        $t7, $t6, 2
    /* A1C08 80092C58 01EE7821 */  addu       $t7, $t7, $t6
    /* A1C0C 80092C5C 000F7900 */  sll        $t7, $t7, 4
    /* A1C10 80092C60 01F81821 */  addu       $v1, $t7, $t8
    /* A1C14 80092C64 84790000 */  lh         $t9, 0x0($v1)
    /* A1C18 80092C68 84690014 */  lh         $t1, 0x14($v1)
    /* A1C1C 80092C6C 846A0004 */  lh         $t2, 0x4($v1)
    /* A1C20 80092C70 846B0018 */  lh         $t3, 0x18($v1)
    /* A1C24 80092C74 03291023 */  subu       $v0, $t9, $t1
    /* A1C28 80092C78 00023023 */  negu       $a2, $v0
    /* A1C2C 80092C7C 00C2082A */  slt        $at, $a2, $v0
    /* A1C30 80092C80 AFBF0014 */  sw         $ra, 0x14($sp)
    /* A1C34 80092C84 10200003 */  beqz       $at, .L80092C94_A1C44
    /* A1C38 80092C88 014B2823 */   subu      $a1, $t2, $t3
    /* A1C3C 80092C8C 10000002 */  b          .L80092C98_A1C48
    /* A1C40 80092C90 00404025 */   or        $t0, $v0, $zero
  .L80092C94_A1C44:
    /* A1C44 80092C94 00C04025 */  or         $t0, $a2, $zero
  .L80092C98_A1C48:
    /* A1C48 80092C98 00052023 */  negu       $a0, $a1
    /* A1C4C 80092C9C 0085082A */  slt        $at, $a0, $a1
    /* A1C50 80092CA0 10200003 */  beqz       $at, .L80092CB0_A1C60
    /* A1C54 80092CA4 00803825 */   or        $a3, $a0, $zero
    /* A1C58 80092CA8 10000001 */  b          .L80092CB0_A1C60
    /* A1C5C 80092CAC 00A03825 */   or        $a3, $a1, $zero
  .L80092CB0_A1C60:
    /* A1C60 80092CB0 00E8082A */  slt        $at, $a3, $t0
    /* A1C64 80092CB4 10200007 */  beqz       $at, .L80092CD4_A1C84
    /* A1C68 80092CB8 00C2082A */   slt       $at, $a2, $v0
    /* A1C6C 80092CBC 10200003 */  beqz       $at, .L80092CCC_A1C7C
    /* A1C70 80092CC0 00C02825 */   or        $a1, $a2, $zero
    /* A1C74 80092CC4 10000009 */  b          .L80092CEC_A1C9C
    /* A1C78 80092CC8 00402025 */   or        $a0, $v0, $zero
  .L80092CCC_A1C7C:
    /* A1C7C 80092CCC 10000007 */  b          .L80092CEC_A1C9C
    /* A1C80 80092CD0 00A02025 */   or        $a0, $a1, $zero
  .L80092CD4_A1C84:
    /* A1C84 80092CD4 0085082A */  slt        $at, $a0, $a1
    /* A1C88 80092CD8 10200003 */  beqz       $at, .L80092CE8_A1C98
    /* A1C8C 80092CDC 00801025 */   or        $v0, $a0, $zero
    /* A1C90 80092CE0 10000001 */  b          .L80092CE8_A1C98
    /* A1C94 80092CE4 00A01025 */   or        $v0, $a1, $zero
  .L80092CE8_A1C98:
    /* A1C98 80092CE8 00402025 */  or         $a0, $v0, $zero
  .L80092CEC_A1C9C:
    /* A1C9C 80092CEC 8C620020 */  lw         $v0, 0x20($v1)
    /* A1CA0 80092CF0 28810100 */  slti       $at, $a0, 0x100
    /* A1CA4 80092CF4 304C4000 */  andi       $t4, $v0, 0x4000
    /* A1CA8 80092CF8 11800010 */  beqz       $t4, .L80092D3C_A1CEC
    /* A1CAC 80092CFC 304F0100 */   andi      $t7, $v0, 0x100
    /* A1CB0 80092D00 1020003A */  beqz       $at, .L80092DEC_A1D9C
    /* A1CB4 80092D04 93A4003B */   lbu       $a0, 0x3B($sp)
    /* A1CB8 80092D08 0C024AEF */  jal        func_80092BBC_A1B6C
    /* A1CBC 80092D0C AFA30018 */   sw        $v1, 0x18($sp)
    /* A1CC0 80092D10 8FA30018 */  lw         $v1, 0x18($sp)
    /* A1CC4 80092D14 8C620020 */  lw         $v0, 0x20($v1)
    /* A1CC8 80092D18 304D4000 */  andi       $t5, $v0, 0x4000
    /* A1CCC 80092D1C 15A00033 */  bnez       $t5, .L80092DEC_A1D9C
    /* A1CD0 80092D20 304E2000 */   andi      $t6, $v0, 0x2000
    /* A1CD4 80092D24 11C00031 */  beqz       $t6, .L80092DEC_A1D9C
    /* A1CD8 80092D28 93A4003B */   lbu       $a0, 0x3B($sp)
    /* A1CDC 80092D2C 0C0202D1 */  jal        func_80080B44_8FAF4
    /* A1CE0 80092D30 90650039 */   lbu       $a1, 0x39($v1)
    /* A1CE4 80092D34 1000002E */  b          .L80092DF0_A1DA0
    /* A1CE8 80092D38 8FBF0014 */   lw        $ra, 0x14($sp)
  .L80092D3C_A1CEC:
    /* A1CEC 80092D3C 11E0000A */  beqz       $t7, .L80092D68_A1D18
    /* A1CF0 80092D40 288101F4 */   slti      $at, $a0, 0x1F4
    /* A1CF4 80092D44 10200008 */  beqz       $at, .L80092D68_A1D18
    /* A1CF8 80092D48 2401FEFF */   addiu     $at, $zero, -0x101
    /* A1CFC 80092D4C 0041C024 */  and        $t8, $v0, $at
    /* A1D00 80092D50 3C010001 */  lui        $at, (0x10800 >> 16)
    /* A1D04 80092D54 34210800 */  ori        $at, $at, (0x10800 & 0xFFFF)
    /* A1D08 80092D58 AC780020 */  sw         $t8, 0x20($v1)
    /* A1D0C 80092D5C 03014825 */  or         $t1, $t8, $at
    /* A1D10 80092D60 10000022 */  b          .L80092DEC_A1D9C
    /* A1D14 80092D64 AC690020 */   sw        $t1, 0x20($v1)
  .L80092D68_A1D18:
    /* A1D18 80092D68 304A0800 */  andi       $t2, $v0, 0x800
    /* A1D1C 80092D6C 1140001F */  beqz       $t2, .L80092DEC_A1D9C
    /* A1D20 80092D70 28810321 */   slti      $at, $a0, 0x321
    /* A1D24 80092D74 14200007 */  bnez       $at, .L80092D94_A1D44
    /* A1D28 80092D78 3C01FFFE */   lui       $at, (0xFFFEF7FF >> 16)
    /* A1D2C 80092D7C 3421F7FF */  ori        $at, $at, (0xFFFEF7FF & 0xFFFF)
    /* A1D30 80092D80 00415824 */  and        $t3, $v0, $at
    /* A1D34 80092D84 AC6B0020 */  sw         $t3, 0x20($v1)
    /* A1D38 80092D88 356D0100 */  ori        $t5, $t3, 0x100
    /* A1D3C 80092D8C 10000017 */  b          .L80092DEC_A1D9C
    /* A1D40 80092D90 AC6D0020 */   sw        $t5, 0x20($v1)
  .L80092D94_A1D44:
    /* A1D44 80092D94 288100C8 */  slti       $at, $a0, 0xC8
    /* A1D48 80092D98 50200015 */  beql       $at, $zero, .L80092DF0_A1DA0
    /* A1D4C 80092D9C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* A1D50 80092DA0 846E003A */  lh         $t6, 0x3A($v1)
    /* A1D54 80092DA4 3C01FFFE */  lui        $at, (0xFFFEF7FF >> 16)
    /* A1D58 80092DA8 3421F7FF */  ori        $at, $at, (0xFFFEF7FF & 0xFFFF)
    /* A1D5C 80092DAC 15C0000F */  bnez       $t6, .L80092DEC_A1D9C
    /* A1D60 80092DB0 00417824 */   and       $t7, $v0, $at
    /* A1D64 80092DB4 3C014000 */  lui        $at, (0x40001100 >> 16)
    /* A1D68 80092DB8 34211100 */  ori        $at, $at, (0x40001100 & 0xFFFF)
    /* A1D6C 80092DBC 01E1C825 */  or         $t9, $t7, $at
    /* A1D70 80092DC0 AC6F0020 */  sw         $t7, 0x20($v1)
    /* A1D74 80092DC4 24090014 */  addiu      $t1, $zero, 0x14
    /* A1D78 80092DC8 240A00A0 */  addiu      $t2, $zero, 0xA0
    /* A1D7C 80092DCC 332C0600 */  andi       $t4, $t9, 0x600
    /* A1D80 80092DD0 AC790020 */  sw         $t9, 0x20($v1)
    /* A1D84 80092DD4 A469002C */  sh         $t1, 0x2C($v1)
    /* A1D88 80092DD8 11800004 */  beqz       $t4, .L80092DEC_A1D9C
    /* A1D8C 80092DDC A46A0010 */   sh        $t2, 0x10($v1)
    /* A1D90 80092DE0 93A4003B */  lbu        $a0, 0x3B($sp)
    /* A1D94 80092DE4 0C04DD1A */  jal        func_80137468_146418
    /* A1D98 80092DE8 24050013 */   addiu     $a1, $zero, 0x13
  .L80092DEC_A1D9C:
    /* A1D9C 80092DEC 8FBF0014 */  lw         $ra, 0x14($sp)
  .L80092DF0_A1DA0:
    /* A1DA0 80092DF0 27BD0038 */  addiu      $sp, $sp, 0x38
    /* A1DA4 80092DF4 03E00008 */  jr         $ra
    /* A1DA8 80092DF8 00000000 */   nop
endlabel func_80092C40_A1BF0
