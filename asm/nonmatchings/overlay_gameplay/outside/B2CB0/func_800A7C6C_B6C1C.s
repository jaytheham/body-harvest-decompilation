nonmatching func_800A7C6C_B6C1C, 0x8E0

glabel func_800A7C6C_B6C1C
    /* B6C1C 800A7C6C 27BDFF50 */  addiu      $sp, $sp, -0xB0
    /* B6C20 800A7C70 3C0F8014 */  lui        $t7, %hi(D_8013D8B0)
    /* B6C24 800A7C74 AFBF0054 */  sw         $ra, 0x54($sp)
    /* B6C28 800A7C78 AFBE0050 */  sw         $fp, 0x50($sp)
    /* B6C2C 800A7C7C AFB7004C */  sw         $s7, 0x4C($sp)
    /* B6C30 800A7C80 AFB60048 */  sw         $s6, 0x48($sp)
    /* B6C34 800A7C84 AFB50044 */  sw         $s5, 0x44($sp)
    /* B6C38 800A7C88 AFB40040 */  sw         $s4, 0x40($sp)
    /* B6C3C 800A7C8C AFB3003C */  sw         $s3, 0x3C($sp)
    /* B6C40 800A7C90 AFB20038 */  sw         $s2, 0x38($sp)
    /* B6C44 800A7C94 AFB10034 */  sw         $s1, 0x34($sp)
    /* B6C48 800A7C98 AFB00030 */  sw         $s0, 0x30($sp)
    /* B6C4C 800A7C9C F7B40028 */  sdc1       $f20, 0x28($sp)
    /* B6C50 800A7CA0 25EFD8B0 */  addiu      $t7, $t7, %lo(D_8013D8B0)
    /* B6C54 800A7CA4 99E10002 */  lwr        $at, 0x2($t7)
    /* B6C58 800A7CA8 3C168004 */  lui        $s6, %hi(currentLevel)
    /* B6C5C 800A7CAC 27AE00A4 */  addiu      $t6, $sp, 0xA4
    /* B6C60 800A7CB0 26D67F90 */  addiu      $s6, $s6, %lo(currentLevel)
    /* B6C64 800A7CB4 B9C10002 */  swr        $at, 0x2($t6)
    /* B6C68 800A7CB8 8EC90000 */  lw         $t1, 0x0($s6)
    /* B6C6C 800A7CBC 24010005 */  addiu      $at, $zero, 0x5
    /* B6C70 800A7CC0 51210216 */  beql       $t1, $at, .L800A851C_B74CC
    /* B6C74 800A7CC4 8FBF0054 */   lw        $ra, 0x54($sp)
    /* B6C78 800A7CC8 0C000D17 */  jal        func_8000345C_405C
    /* B6C7C 800A7CCC 34048000 */   ori       $a0, $zero, 0x8000
    /* B6C80 800A7CD0 3C038004 */  lui        $v1, %hi(D_8004794C)
    /* B6C84 800A7CD4 2463794C */  addiu      $v1, $v1, %lo(D_8004794C)
    /* B6C88 800A7CD8 90620000 */  lbu        $v0, 0x0($v1)
    /* B6C8C 800A7CDC 3C0C8003 */  lui        $t4, %hi(D_8003154C)
    /* B6C90 800A7CE0 258C154C */  addiu      $t4, $t4, %lo(D_8003154C)
    /* B6C94 800A7CE4 18400003 */  blez       $v0, .L800A7CF4_B6CA4
    /* B6C98 800A7CE8 3C0140C0 */   lui       $at, (0x40C00000 >> 16)
    /* B6C9C 800A7CEC 244AFFFF */  addiu      $t2, $v0, -0x1
    /* B6CA0 800A7CF0 A06A0000 */  sb         $t2, 0x0($v1)
  .L800A7CF4_B6CA4:
    /* B6CA4 800A7CF4 8ED20000 */  lw         $s2, 0x0($s6)
    /* B6CA8 800A7CF8 3C1E8005 */  lui        $fp, %hi(vehicleInstances)
    /* B6CAC 800A7CFC 3C178003 */  lui        $s7, %hi(D_8003154C)
    /* B6CB0 800A7D00 00125880 */  sll        $t3, $s2, 2
    /* B6CB4 800A7D04 01725823 */  subu       $t3, $t3, $s2
    /* B6CB8 800A7D08 000B58C0 */  sll        $t3, $t3, 3
    /* B6CBC 800A7D0C 4481A000 */  mtc1       $at, $f20
    /* B6CC0 800A7D10 016C1821 */  addu       $v1, $t3, $t4
    /* B6CC4 800A7D14 26F7154C */  addiu      $s7, $s7, %lo(D_8003154C)
    /* B6CC8 800A7D18 27DEDCD0 */  addiu      $fp, $fp, %lo(vehicleInstances)
    /* B6CCC 800A7D1C A7A000AE */  sh         $zero, 0xAE($sp)
  .L800A7D20_B6CD0:
    /* B6CD0 800A7D20 87B500AE */  lh         $s5, 0xAE($sp)
    /* B6CD4 800A7D24 00156880 */  sll        $t5, $s5, 2
    /* B6CD8 800A7D28 006D8021 */  addu       $s0, $v1, $t5
    /* B6CDC 800A7D2C 9219FFEA */  lbu        $t9, -0x16($s0)
    /* B6CE0 800A7D30 01A0A825 */  or         $s5, $t5, $zero
    /* B6CE4 800A7D34 2738FFFF */  addiu      $t8, $t9, -0x1
    /* B6CE8 800A7D38 2F01000A */  sltiu      $at, $t8, 0xA
    /* B6CEC 800A7D3C 102001EC */  beqz       $at, .L800A84F0_B74A0
    /* B6CF0 800A7D40 0018C080 */   sll       $t8, $t8, 2
    /* B6CF4 800A7D44 3C018014 */  lui        $at, %hi(jtbl_80142860_overlay_gameplay_outside)
    /* B6CF8 800A7D48 00380821 */  addu       $at, $at, $t8
    /* B6CFC 800A7D4C 8C382860 */  lw         $t8, %lo(jtbl_80142860_overlay_gameplay_outside)($at)
    /* B6D00 800A7D50 03000008 */  jr         $t8
    /* B6D04 800A7D54 00000000 */   nop
    /* B6D08 800A7D58 9202FFEB */  lbu        $v0, -0x15($s0)
    /* B6D0C 800A7D5C 24010019 */  addiu      $at, $zero, 0x19
    /* B6D10 800A7D60 24040000 */  addiu      $a0, $zero, 0x0
    /* B6D14 800A7D64 14410032 */  bne        $v0, $at, .L800A7E30_B6DE0
    /* B6D18 800A7D68 00000000 */   nop
    /* B6D1C 800A7D6C 0C001C9B */  jal        func_8000726C_7E6C
    /* B6D20 800A7D70 24050014 */   addiu     $a1, $zero, 0x14
    /* B6D24 800A7D74 50400010 */  beql       $v0, $zero, .L800A7DB8_B6D68
    /* B6D28 800A7D78 8EC80000 */   lw        $t0, 0x0($s6)
    /* B6D2C 800A7D7C 8ECE0000 */  lw         $t6, 0x0($s6)
    /* B6D30 800A7D80 24010004 */  addiu      $at, $zero, 0x4
    /* B6D34 800A7D84 55C1000C */  bnel       $t6, $at, .L800A7DB8_B6D68
    /* B6D38 800A7D88 8EC80000 */   lw        $t0, 0x0($s6)
    /* B6D3C 800A7D8C 0C00635F */  jal        func_80018D7C_1997C
    /* B6D40 800A7D90 240400DE */   addiu     $a0, $zero, 0xDE
    /* B6D44 800A7D94 8ED20000 */  lw         $s2, 0x0($s6)
    /* B6D48 800A7D98 00127880 */  sll        $t7, $s2, 2
    /* B6D4C 800A7D9C 01F27823 */  subu       $t7, $t7, $s2
    /* B6D50 800A7DA0 000F78C0 */  sll        $t7, $t7, 3
    /* B6D54 800A7DA4 02EF1821 */  addu       $v1, $s7, $t7
    /* B6D58 800A7DA8 00758021 */  addu       $s0, $v1, $s5
    /* B6D5C 800A7DAC 10000020 */  b          .L800A7E30_B6DE0
    /* B6D60 800A7DB0 9202FFEB */   lbu       $v0, -0x15($s0)
    /* B6D64 800A7DB4 8EC80000 */  lw         $t0, 0x0($s6)
  .L800A7DB8_B6D68:
    /* B6D68 800A7DB8 24010004 */  addiu      $at, $zero, 0x4
    /* B6D6C 800A7DBC 15010011 */  bne        $t0, $at, .L800A7E04_B6DB4
    /* B6D70 800A7DC0 3C098004 */   lui       $t1, %hi(D_80047F94)
    /* B6D74 800A7DC4 8D297F94 */  lw         $t1, %lo(D_80047F94)($t1)
    /* B6D78 800A7DC8 24010002 */  addiu      $at, $zero, 0x2
    /* B6D7C 800A7DCC 1521000D */  bne        $t1, $at, .L800A7E04_B6DB4
    /* B6D80 800A7DD0 00000000 */   nop
    /* B6D84 800A7DD4 0C00635F */  jal        func_80018D7C_1997C
    /* B6D88 800A7DD8 240400DD */   addiu     $a0, $zero, 0xDD
    /* B6D8C 800A7DDC 0C004CC9 */  jal        func_80013324_13F24
    /* B6D90 800A7DE0 00000000 */   nop
    /* B6D94 800A7DE4 8ED20000 */  lw         $s2, 0x0($s6)
    /* B6D98 800A7DE8 00125080 */  sll        $t2, $s2, 2
    /* B6D9C 800A7DEC 01525023 */  subu       $t2, $t2, $s2
    /* B6DA0 800A7DF0 000A50C0 */  sll        $t2, $t2, 3
    /* B6DA4 800A7DF4 02EA1821 */  addu       $v1, $s7, $t2
    /* B6DA8 800A7DF8 00758021 */  addu       $s0, $v1, $s5
    /* B6DAC 800A7DFC 1000000C */  b          .L800A7E30_B6DE0
    /* B6DB0 800A7E00 9202FFEB */   lbu       $v0, -0x15($s0)
  .L800A7E04_B6DB4:
    /* B6DB4 800A7E04 0C00635F */  jal        func_80018D7C_1997C
    /* B6DB8 800A7E08 240400D4 */   addiu     $a0, $zero, 0xD4
    /* B6DBC 800A7E0C 0C004CC9 */  jal        func_80013324_13F24
    /* B6DC0 800A7E10 00000000 */   nop
    /* B6DC4 800A7E14 8ED20000 */  lw         $s2, 0x0($s6)
    /* B6DC8 800A7E18 00125880 */  sll        $t3, $s2, 2
    /* B6DCC 800A7E1C 01725823 */  subu       $t3, $t3, $s2
    /* B6DD0 800A7E20 000B58C0 */  sll        $t3, $t3, 3
    /* B6DD4 800A7E24 02EB1821 */  addu       $v1, $s7, $t3
    /* B6DD8 800A7E28 00758021 */  addu       $s0, $v1, $s5
    /* B6DDC 800A7E2C 9202FFEB */  lbu        $v0, -0x15($s0)
  .L800A7E30_B6DE0:
    /* B6DE0 800A7E30 14400004 */  bnez       $v0, .L800A7E44_B6DF4
    /* B6DE4 800A7E34 2401000A */   addiu     $at, $zero, 0xA
    /* B6DE8 800A7E38 240C0002 */  addiu      $t4, $zero, 0x2
    /* B6DEC 800A7E3C A20CFFEA */  sb         $t4, -0x16($s0)
    /* B6DF0 800A7E40 9202FFEB */  lbu        $v0, -0x15($s0)
  .L800A7E44_B6DF4:
    /* B6DF4 800A7E44 144101AA */  bne        $v0, $at, .L800A84F0_B74A0
    /* B6DF8 800A7E48 00002025 */   or        $a0, $zero, $zero
    /* B6DFC 800A7E4C 3C058014 */  lui        $a1, %hi(D_8013D8AB)
    /* B6E00 800A7E50 00B22821 */  addu       $a1, $a1, $s2
    /* B6E04 800A7E54 90A5D8AB */  lbu        $a1, %lo(D_8013D8AB)($a1)
    /* B6E08 800A7E58 0C03BFAD */  jal        func_800EFEB4_FEE64
    /* B6E0C 800A7E5C 00003025 */   or        $a2, $zero, $zero
    /* B6E10 800A7E60 8ED20000 */  lw         $s2, 0x0($s6)
    /* B6E14 800A7E64 00126880 */  sll        $t5, $s2, 2
    /* B6E18 800A7E68 01B26823 */  subu       $t5, $t5, $s2
    /* B6E1C 800A7E6C 000D68C0 */  sll        $t5, $t5, 3
    /* B6E20 800A7E70 02ED1821 */  addu       $v1, $s7, $t5
    /* B6E24 800A7E74 1000019E */  b          .L800A84F0_B74A0
    /* B6E28 800A7E78 00758021 */   addu      $s0, $v1, $s5
    /* B6E2C 800A7E7C 8219FFE8 */  lb         $t9, -0x18($s0)
    /* B6E30 800A7E80 820EFFE9 */  lb         $t6, -0x17($s0)
    /* B6E34 800A7E84 3C028015 */  lui        $v0, %hi(D_8014F7F8)
    /* B6E38 800A7E88 2442F7F8 */  addiu      $v0, $v0, %lo(D_8014F7F8)
    /* B6E3C 800A7E8C 0019C200 */  sll        $t8, $t9, 8
    /* B6E40 800A7E90 000E7A00 */  sll        $t7, $t6, 8
    /* B6E44 800A7E94 A4580000 */  sh         $t8, 0x0($v0)
    /* B6E48 800A7E98 A44F0004 */  sh         $t7, 0x4($v0)
    /* B6E4C 800A7E9C 84450004 */  lh         $a1, 0x4($v0)
    /* B6E50 800A7EA0 0C02E134 */  jal        func_800B84D0_C7480
    /* B6E54 800A7EA4 84440000 */   lh        $a0, 0x0($v0)
    /* B6E58 800A7EA8 00024203 */  sra        $t0, $v0, 8
    /* B6E5C 800A7EAC 3C018015 */  lui        $at, %hi(D_8014F7FA)
    /* B6E60 800A7EB0 A428F7FA */  sh         $t0, %lo(D_8014F7FA)($at)
    /* B6E64 800A7EB4 8ED20000 */  lw         $s2, 0x0($s6)
    /* B6E68 800A7EB8 3C198014 */  lui        $t9, %hi(D_8013D898)
    /* B6E6C 800A7EBC 2739D898 */  addiu      $t9, $t9, %lo(D_8013D898)
    /* B6E70 800A7EC0 00124880 */  sll        $t1, $s2, 2
    /* B6E74 800A7EC4 01324823 */  subu       $t1, $t1, $s2
    /* B6E78 800A7EC8 000948C0 */  sll        $t1, $t1, 3
    /* B6E7C 800A7ECC 02E95021 */  addu       $t2, $s7, $t1
    /* B6E80 800A7ED0 00126880 */  sll        $t5, $s2, 2
    /* B6E84 800A7ED4 01558021 */  addu       $s0, $t2, $s5
    /* B6E88 800A7ED8 240B0003 */  addiu      $t3, $zero, 0x3
    /* B6E8C 800A7EDC 240C0064 */  addiu      $t4, $zero, 0x64
    /* B6E90 800A7EE0 01B98821 */  addu       $s1, $t5, $t9
    /* B6E94 800A7EE4 A20BFFEA */  sb         $t3, -0x16($s0)
    /* B6E98 800A7EE8 A20CFFEB */  sb         $t4, -0x15($s0)
    /* B6E9C 800A7EEC 8624FFFC */  lh         $a0, -0x4($s1)
    /* B6EA0 800A7EF0 0C02E134 */  jal        func_800B84D0_C7480
    /* B6EA4 800A7EF4 8625FFFE */   lh        $a1, -0x2($s1)
    /* B6EA8 800A7EF8 8ED80000 */  lw         $t8, 0x0($s6)
    /* B6EAC 800A7EFC 3C0F8014 */  lui        $t7, %hi(D_8013D898)
    /* B6EB0 800A7F00 00022A03 */  sra        $a1, $v0, 8
    /* B6EB4 800A7F04 24A5008C */  addiu      $a1, $a1, 0x8C
    /* B6EB8 800A7F08 25EFD898 */  addiu      $t7, $t7, %lo(D_8013D898)
    /* B6EBC 800A7F0C 00187080 */  sll        $t6, $t8, 2
    /* B6EC0 800A7F10 01CF8821 */  addu       $s1, $t6, $t7
    /* B6EC4 800A7F14 00054400 */  sll        $t0, $a1, 16
    /* B6EC8 800A7F18 00082C03 */  sra        $a1, $t0, 16
    /* B6ECC 800A7F1C 8624FFFC */  lh         $a0, -0x4($s1)
    /* B6ED0 800A7F20 8626FFFE */  lh         $a2, -0x2($s1)
    /* B6ED4 800A7F24 24070046 */  addiu      $a3, $zero, 0x46
    /* B6ED8 800A7F28 AFA00010 */  sw         $zero, 0x10($sp)
    /* B6EDC 800A7F2C 0C037C0E */  jal        func_800DF038_EDFE8
    /* B6EE0 800A7F30 AFA00014 */   sw        $zero, 0x14($sp)
    /* B6EE4 800A7F34 3C048015 */  lui        $a0, %hi(D_8014F80A)
    /* B6EE8 800A7F38 3C068015 */  lui        $a2, %hi(D_8014F80C)
    /* B6EEC 800A7F3C 84C6F80C */  lh         $a2, %lo(D_8014F80C)($a2)
    /* B6EF0 800A7F40 8484F80A */  lh         $a0, %lo(D_8014F80A)($a0)
    /* B6EF4 800A7F44 24052710 */  addiu      $a1, $zero, 0x2710
    /* B6EF8 800A7F48 0C03087C */  jal        func_800C21F0_D11A0
    /* B6EFC 800A7F4C 00003825 */   or        $a3, $zero, $zero
    /* B6F00 800A7F50 3C018015 */  lui        $at, %hi(D_8014F7FE)
    /* B6F04 800A7F54 A022F7FE */  sb         $v0, %lo(D_8014F7FE)($at)
    /* B6F08 800A7F58 8ED20000 */  lw         $s2, 0x0($s6)
    /* B6F0C 800A7F5C 00125080 */  sll        $t2, $s2, 2
    /* B6F10 800A7F60 01525023 */  subu       $t2, $t2, $s2
    /* B6F14 800A7F64 000A50C0 */  sll        $t2, $t2, 3
    /* B6F18 800A7F68 02EA1821 */  addu       $v1, $s7, $t2
    /* B6F1C 800A7F6C 10000160 */  b          .L800A84F0_B74A0
    /* B6F20 800A7F70 00758021 */   addu      $s0, $v1, $s5
    /* B6F24 800A7F74 3C048015 */  lui        $a0, %hi(D_8014F80A)
    /* B6F28 800A7F78 3C058015 */  lui        $a1, %hi(D_8014F812)
    /* B6F2C 800A7F7C 3C068015 */  lui        $a2, %hi(D_8014F80C)
    /* B6F30 800A7F80 3C078015 */  lui        $a3, %hi(D_8014F7FE)
    /* B6F34 800A7F84 90E7F7FE */  lbu        $a3, %lo(D_8014F7FE)($a3)
    /* B6F38 800A7F88 84C6F80C */  lh         $a2, %lo(D_8014F80C)($a2)
    /* B6F3C 800A7F8C 84A5F812 */  lh         $a1, %lo(D_8014F812)($a1)
    /* B6F40 800A7F90 8484F80A */  lh         $a0, %lo(D_8014F80A)($a0)
    /* B6F44 800A7F94 0C0307B3 */  jal        func_800C1ECC_D0E7C
    /* B6F48 800A7F98 AFA00010 */   sw        $zero, 0x10($sp)
    /* B6F4C 800A7F9C 8ED20000 */  lw         $s2, 0x0($s6)
    /* B6F50 800A7FA0 240D0004 */  addiu      $t5, $zero, 0x4
    /* B6F54 800A7FA4 2419003C */  addiu      $t9, $zero, 0x3C
    /* B6F58 800A7FA8 00125880 */  sll        $t3, $s2, 2
    /* B6F5C 800A7FAC 01725823 */  subu       $t3, $t3, $s2
    /* B6F60 800A7FB0 000B58C0 */  sll        $t3, $t3, 3
    /* B6F64 800A7FB4 02EB1821 */  addu       $v1, $s7, $t3
    /* B6F68 800A7FB8 00758021 */  addu       $s0, $v1, $s5
    /* B6F6C 800A7FBC 920CFFEB */  lbu        $t4, -0x15($s0)
    /* B6F70 800A7FC0 5580014C */  bnel       $t4, $zero, .L800A84F4_B74A4
    /* B6F74 800A7FC4 87AE00AE */   lh        $t6, 0xAE($sp)
    /* B6F78 800A7FC8 A20DFFEA */  sb         $t5, -0x16($s0)
    /* B6F7C 800A7FCC 10000148 */  b          .L800A84F0_B74A0
    /* B6F80 800A7FD0 A219FFEB */   sb        $t9, -0x15($s0)
    /* B6F84 800A7FD4 3C048015 */  lui        $a0, %hi(D_8014F80A)
    /* B6F88 800A7FD8 3C058015 */  lui        $a1, %hi(D_8014F812)
    /* B6F8C 800A7FDC 3C068015 */  lui        $a2, %hi(D_8014F80C)
    /* B6F90 800A7FE0 3C078015 */  lui        $a3, %hi(D_8014F7FE)
    /* B6F94 800A7FE4 90E7F7FE */  lbu        $a3, %lo(D_8014F7FE)($a3)
    /* B6F98 800A7FE8 84C6F80C */  lh         $a2, %lo(D_8014F80C)($a2)
    /* B6F9C 800A7FEC 84A5F812 */  lh         $a1, %lo(D_8014F812)($a1)
    /* B6FA0 800A7FF0 8484F80A */  lh         $a0, %lo(D_8014F80A)($a0)
    /* B6FA4 800A7FF4 AFA00010 */  sw         $zero, 0x10($sp)
    /* B6FA8 800A7FF8 0C0307B3 */  jal        func_800C1ECC_D0E7C
    /* B6FAC 800A7FFC 0000A025 */   or        $s4, $zero, $zero
    /* B6FB0 800A8000 3C058016 */  lui        $a1, %hi(D_80158FD8)
    /* B6FB4 800A8004 84A58FD8 */  lh         $a1, %lo(D_80158FD8)($a1)
    /* B6FB8 800A8008 18A0005A */  blez       $a1, .L800A8174_B7124
  .L800A800C_B6FBC:
    /* B6FBC 800A800C 3C188016 */   lui       $t8, %hi(D_80158E80)
    /* B6FC0 800A8010 0314C021 */  addu       $t8, $t8, $s4
    /* B6FC4 800A8014 93188E80 */  lbu        $t8, %lo(D_80158E80)($t8)
    /* B6FC8 800A8018 8EC90000 */  lw         $t1, 0x0($s6)
    /* B6FCC 800A801C 3C138025 */  lui        $s3, %hi(D_80257A0C)
    /* B6FD0 800A8020 00187080 */  sll        $t6, $t8, 2
    /* B6FD4 800A8024 01D87023 */  subu       $t6, $t6, $t8
    /* B6FD8 800A8028 000E70C0 */  sll        $t6, $t6, 3
    /* B6FDC 800A802C 01D87023 */  subu       $t6, $t6, $t8
    /* B6FE0 800A8030 00095080 */  sll        $t2, $t1, 2
    /* B6FE4 800A8034 000E7080 */  sll        $t6, $t6, 2
    /* B6FE8 800A8038 01495023 */  subu       $t2, $t2, $t1
    /* B6FEC 800A803C 03CE9021 */  addu       $s2, $fp, $t6
    /* B6FF0 800A8040 000A50C0 */  sll        $t2, $t2, 3
    /* B6FF4 800A8044 924F001A */  lbu        $t7, 0x1A($s2)
    /* B6FF8 800A8048 02EA5821 */  addu       $t3, $s7, $t2
    /* B6FFC 800A804C 01758021 */  addu       $s0, $t3, $s5
    /* B7000 800A8050 820CFFE8 */  lb         $t4, -0x18($s0)
    /* B7004 800A8054 86590000 */  lh         $t9, 0x0($s2)
    /* B7008 800A8058 000F40C0 */  sll        $t0, $t7, 3
    /* B700C 800A805C 010F4023 */  subu       $t0, $t0, $t7
    /* B7010 800A8060 8204FFE9 */  lb         $a0, -0x17($s0)
    /* B7014 800A8064 00084100 */  sll        $t0, $t0, 4
    /* B7018 800A8068 000C6A00 */  sll        $t5, $t4, 8
    /* B701C 800A806C 02689821 */  addu       $s3, $s3, $t0
    /* B7020 800A8070 01B91023 */  subu       $v0, $t5, $t9
    /* B7024 800A8074 86737A0C */  lh         $s3, %lo(D_80257A0C)($s3)
    /* B7028 800A8078 00021823 */  negu       $v1, $v0
    /* B702C 800A807C 0062082A */  slt        $at, $v1, $v0
    /* B7030 800A8080 0004C200 */  sll        $t8, $a0, 8
    /* B7034 800A8084 03002025 */  or         $a0, $t8, $zero
    /* B7038 800A8088 10200003 */  beqz       $at, .L800A8098_B7048
    /* B703C 800A808C 26730050 */   addiu     $s3, $s3, 0x50
    /* B7040 800A8090 10000002 */  b          .L800A809C_B704C
    /* B7044 800A8094 00408825 */   or        $s1, $v0, $zero
  .L800A8098_B7048:
    /* B7048 800A8098 00608825 */  or         $s1, $v1, $zero
  .L800A809C_B704C:
    /* B704C 800A809C 864E0004 */  lh         $t6, 0x4($s2)
    /* B7050 800A80A0 008E1023 */  subu       $v0, $a0, $t6
    /* B7054 800A80A4 00021823 */  negu       $v1, $v0
    /* B7058 800A80A8 0062082A */  slt        $at, $v1, $v0
    /* B705C 800A80AC 10200003 */  beqz       $at, .L800A80BC_B706C
    /* B7060 800A80B0 00608025 */   or        $s0, $v1, $zero
    /* B7064 800A80B4 10000001 */  b          .L800A80BC_B706C
    /* B7068 800A80B8 00408025 */   or        $s0, $v0, $zero
  .L800A80BC_B706C:
    /* B706C 800A80BC 0271082A */  slt        $at, $s3, $s1
    /* B7070 800A80C0 14200027 */  bnez       $at, .L800A8160_B7110
    /* B7074 800A80C4 0270082A */   slt       $at, $s3, $s0
    /* B7078 800A80C8 54200026 */  bnel       $at, $zero, .L800A8164_B7114
    /* B707C 800A80CC 26940001 */   addiu     $s4, $s4, 0x1
    /* B7080 800A80D0 02310019 */  multu      $s1, $s1
    /* B7084 800A80D4 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* B7088 800A80D8 00007812 */  mflo       $t7
    /* B708C 800A80DC 00000000 */  nop
    /* B7090 800A80E0 00000000 */  nop
    /* B7094 800A80E4 02100019 */  multu      $s0, $s0
    /* B7098 800A80E8 00004012 */  mflo       $t0
    /* B709C 800A80EC 01E84821 */  addu       $t1, $t7, $t0
    /* B70A0 800A80F0 44892000 */  mtc1       $t1, $f4
    /* B70A4 800A80F4 05210004 */  bgez       $t1, .L800A8108_B70B8
    /* B70A8 800A80F8 46802320 */   cvt.s.w   $f12, $f4
    /* B70AC 800A80FC 44813000 */  mtc1       $at, $f6
    /* B70B0 800A8100 00000000 */  nop
    /* B70B4 800A8104 46066300 */  add.s      $f12, $f12, $f6
  .L800A8108_B70B8:
    /* B70B8 800A8108 0C007650 */  jal        sqrtf
    /* B70BC 800A810C 00000000 */   nop
    /* B70C0 800A8110 4600020D */  trunc.w.s  $f8, $f0
    /* B70C4 800A8114 440B4000 */  mfc1       $t3, $f8
    /* B70C8 800A8118 00000000 */  nop
    /* B70CC 800A811C 0173082A */  slt        $at, $t3, $s3
    /* B70D0 800A8120 1020000D */  beqz       $at, .L800A8158_B7108
    /* B70D4 800A8124 00000000 */   nop
    /* B70D8 800A8128 44915000 */  mtc1       $s1, $f10
    /* B70DC 800A812C 44908000 */  mtc1       $s0, $f16
    /* B70E0 800A8130 46805320 */  cvt.s.w    $f12, $f10
    /* B70E4 800A8134 0C000E09 */  jal        func_80003824_4424
    /* B70E8 800A8138 468083A0 */   cvt.s.w   $f14, $f16
    /* B70EC 800A813C 00022C00 */  sll        $a1, $v0, 16
    /* B70F0 800A8140 00056403 */  sra        $t4, $a1, 16
    /* B70F4 800A8144 4407A000 */  mfc1       $a3, $f20
    /* B70F8 800A8148 01802825 */  or         $a1, $t4, $zero
    /* B70FC 800A814C 02402025 */  or         $a0, $s2, $zero
    /* B7100 800A8150 0C040B77 */  jal        func_80102DDC_111D8C
    /* B7104 800A8154 00003025 */   or        $a2, $zero, $zero
  .L800A8158_B7108:
    /* B7108 800A8158 3C058016 */  lui        $a1, %hi(D_80158FD8)
    /* B710C 800A815C 84A58FD8 */  lh         $a1, %lo(D_80158FD8)($a1)
  .L800A8160_B7110:
    /* B7110 800A8160 26940001 */  addiu      $s4, $s4, 0x1
  .L800A8164_B7114:
    /* B7114 800A8164 328D00FF */  andi       $t5, $s4, 0xFF
    /* B7118 800A8168 01A5082A */  slt        $at, $t5, $a1
    /* B711C 800A816C 1420FFA7 */  bnez       $at, .L800A800C_B6FBC
    /* B7120 800A8170 01A0A025 */   or        $s4, $t5, $zero
  .L800A8174_B7124:
    /* B7124 800A8174 8ED20000 */  lw         $s2, 0x0($s6)
    /* B7128 800A8178 0012C880 */  sll        $t9, $s2, 2
    /* B712C 800A817C 0332C823 */  subu       $t9, $t9, $s2
    /* B7130 800A8180 0019C8C0 */  sll        $t9, $t9, 3
    /* B7134 800A8184 02F9C021 */  addu       $t8, $s7, $t9
    /* B7138 800A8188 03158021 */  addu       $s0, $t8, $s5
    /* B713C 800A818C 920EFFEB */  lbu        $t6, -0x15($s0)
    /* B7140 800A8190 15C0003C */  bnez       $t6, .L800A8284_B7234
    /* B7144 800A8194 240F0005 */   addiu     $t7, $zero, 0x5
    /* B7148 800A8198 24080028 */  addiu      $t0, $zero, 0x28
    /* B714C 800A819C A20FFFEA */  sb         $t7, -0x16($s0)
    /* B7150 800A81A0 A208FFEB */  sb         $t0, -0x15($s0)
    /* B7154 800A81A4 3C018015 */  lui        $at, %hi(D_8014F800)
    /* B7158 800A81A8 AC20F800 */  sw         $zero, %lo(D_8014F800)($at)
    /* B715C 800A81AC 0C0296F4 */  jal        func_800A5BD0_B4B80
    /* B7160 800A81B0 87A400AE */   lh        $a0, 0xAE($sp)
    /* B7164 800A81B4 8EC90000 */  lw         $t1, 0x0($s6)
    /* B7168 800A81B8 00095080 */  sll        $t2, $t1, 2
    /* B716C 800A81BC 01495023 */  subu       $t2, $t2, $t1
    /* B7170 800A81C0 000A50C0 */  sll        $t2, $t2, 3
    /* B7174 800A81C4 02EA5821 */  addu       $t3, $s7, $t2
    /* B7178 800A81C8 01758021 */  addu       $s0, $t3, $s5
    /* B717C 800A81CC 8211FFE8 */  lb         $s1, -0x18($s0)
    /* B7180 800A81D0 8212FFE9 */  lb         $s2, -0x17($s0)
    /* B7184 800A81D4 00116200 */  sll        $t4, $s1, 8
    /* B7188 800A81D8 00126A00 */  sll        $t5, $s2, 8
    /* B718C 800A81DC 000DA400 */  sll        $s4, $t5, 16
    /* B7190 800A81E0 000C9C00 */  sll        $s3, $t4, 16
    /* B7194 800A81E4 0013CC03 */  sra        $t9, $s3, 16
    /* B7198 800A81E8 00147403 */  sra        $t6, $s4, 16
    /* B719C 800A81EC 000E2C00 */  sll        $a1, $t6, 16
    /* B71A0 800A81F0 00192400 */  sll        $a0, $t9, 16
    /* B71A4 800A81F4 0004C403 */  sra        $t8, $a0, 16
    /* B71A8 800A81F8 00057C03 */  sra        $t7, $a1, 16
    /* B71AC 800A81FC 01808825 */  or         $s1, $t4, $zero
    /* B71B0 800A8200 01A09025 */  or         $s2, $t5, $zero
    /* B71B4 800A8204 01E02825 */  or         $a1, $t7, $zero
    /* B71B8 800A8208 03002025 */  or         $a0, $t8, $zero
    /* B71BC 800A820C 01C0A025 */  or         $s4, $t6, $zero
    /* B71C0 800A8210 0C02E134 */  jal        func_800B84D0_C7480
    /* B71C4 800A8214 03209825 */   or        $s3, $t9, $zero
    /* B71C8 800A8218 3C013F00 */  lui        $at, (0x3F000000 >> 16)
    /* B71CC 800A821C 44819000 */  mtc1       $at, $f18
    /* B71D0 800A8220 00133400 */  sll        $a2, $s3, 16
    /* B71D4 800A8224 00023A03 */  sra        $a3, $v0, 8
    /* B71D8 800A8228 00074C00 */  sll        $t1, $a3, 16
    /* B71DC 800A822C 00064403 */  sra        $t0, $a2, 16
    /* B71E0 800A8230 01003025 */  or         $a2, $t0, $zero
    /* B71E4 800A8234 00093C03 */  sra        $a3, $t1, 16
    /* B71E8 800A8238 00002025 */  or         $a0, $zero, $zero
    /* B71EC 800A823C 24050181 */  addiu      $a1, $zero, 0x181
    /* B71F0 800A8240 AFB40010 */  sw         $s4, 0x10($sp)
    /* B71F4 800A8244 0C04DC6E */  jal        func_801371B8_146168
    /* B71F8 800A8248 E7B20014 */   swc1      $f18, 0x14($sp)
    /* B71FC 800A824C 02202025 */  or         $a0, $s1, $zero
    /* B7200 800A8250 0C029EE1 */  jal        func_800A7B84_B6B34
    /* B7204 800A8254 02402825 */   or        $a1, $s2, $zero
    /* B7208 800A8258 8ED20000 */  lw         $s2, 0x0($s6)
    /* B720C 800A825C 24010001 */  addiu      $at, $zero, 0x1
    /* B7210 800A8260 3C0B8004 */  lui        $t3, %hi(D_80047F94)
    /* B7214 800A8264 56410008 */  bnel       $s2, $at, .L800A8288_B7238
    /* B7218 800A8268 00126080 */   sll       $t4, $s2, 2
    /* B721C 800A826C 8D6B7F94 */  lw         $t3, %lo(D_80047F94)($t3)
    /* B7220 800A8270 55600005 */  bnel       $t3, $zero, .L800A8288_B7238
    /* B7224 800A8274 00126080 */   sll       $t4, $s2, 2
    /* B7228 800A8278 0C00635F */  jal        func_80018D7C_1997C
    /* B722C 800A827C 24040101 */   addiu     $a0, $zero, 0x101
    /* B7230 800A8280 8ED20000 */  lw         $s2, 0x0($s6)
  .L800A8284_B7234:
    /* B7234 800A8284 00126080 */  sll        $t4, $s2, 2
  .L800A8288_B7238:
    /* B7238 800A8288 01926023 */  subu       $t4, $t4, $s2
    /* B723C 800A828C 000C60C0 */  sll        $t4, $t4, 3
    /* B7240 800A8290 02EC1821 */  addu       $v1, $s7, $t4
    /* B7244 800A8294 10000096 */  b          .L800A84F0_B74A0
    /* B7248 800A8298 00758021 */   addu      $s0, $v1, $s5
    /* B724C 800A829C 920DFFEB */  lbu        $t5, -0x15($s0)
    /* B7250 800A82A0 24190006 */  addiu      $t9, $zero, 0x6
    /* B7254 800A82A4 24180032 */  addiu      $t8, $zero, 0x32
    /* B7258 800A82A8 55A00092 */  bnel       $t5, $zero, .L800A84F4_B74A4
    /* B725C 800A82AC 87AE00AE */   lh        $t6, 0xAE($sp)
    /* B7260 800A82B0 820EFFE8 */  lb         $t6, -0x18($s0)
    /* B7264 800A82B4 820FFFE9 */  lb         $t7, -0x17($s0)
    /* B7268 800A82B8 A219FFEA */  sb         $t9, -0x16($s0)
    /* B726C 800A82BC 000E9E00 */  sll        $s3, $t6, 24
    /* B7270 800A82C0 000FA600 */  sll        $s4, $t7, 24
    /* B7274 800A82C4 00145403 */  sra        $t2, $s4, 16
    /* B7278 800A82C8 00134403 */  sra        $t0, $s3, 16
    /* B727C 800A82CC 00082400 */  sll        $a0, $t0, 16
    /* B7280 800A82D0 000A2C00 */  sll        $a1, $t2, 16
    /* B7284 800A82D4 00055C03 */  sra        $t3, $a1, 16
    /* B7288 800A82D8 00044C03 */  sra        $t1, $a0, 16
    /* B728C 800A82DC A218FFEB */  sb         $t8, -0x15($s0)
    /* B7290 800A82E0 01202025 */  or         $a0, $t1, $zero
    /* B7294 800A82E4 01602825 */  or         $a1, $t3, $zero
    /* B7298 800A82E8 01009825 */  or         $s3, $t0, $zero
    /* B729C 800A82EC 0C02E134 */  jal        func_800B84D0_C7480
    /* B72A0 800A82F0 0140A025 */   or        $s4, $t2, $zero
    /* B72A4 800A82F4 3C013E80 */  lui        $at, (0x3E800000 >> 16)
    /* B72A8 800A82F8 44812000 */  mtc1       $at, $f4
    /* B72AC 800A82FC 00133400 */  sll        $a2, $s3, 16
    /* B72B0 800A8300 00023A03 */  sra        $a3, $v0, 8
    /* B72B4 800A8304 00076C00 */  sll        $t5, $a3, 16
    /* B72B8 800A8308 00066403 */  sra        $t4, $a2, 16
    /* B72BC 800A830C 01803025 */  or         $a2, $t4, $zero
    /* B72C0 800A8310 000D3C03 */  sra        $a3, $t5, 16
    /* B72C4 800A8314 00002025 */  or         $a0, $zero, $zero
    /* B72C8 800A8318 2405017C */  addiu      $a1, $zero, 0x17C
    /* B72CC 800A831C AFB40010 */  sw         $s4, 0x10($sp)
    /* B72D0 800A8320 0C04DC6E */  jal        func_801371B8_146168
    /* B72D4 800A8324 E7A40014 */   swc1      $f4, 0x14($sp)
    /* B72D8 800A8328 8ED20000 */  lw         $s2, 0x0($s6)
    /* B72DC 800A832C 0012C080 */  sll        $t8, $s2, 2
    /* B72E0 800A8330 0312C023 */  subu       $t8, $t8, $s2
    /* B72E4 800A8334 0018C0C0 */  sll        $t8, $t8, 3
    /* B72E8 800A8338 02F81821 */  addu       $v1, $s7, $t8
    /* B72EC 800A833C 1000006C */  b          .L800A84F0_B74A0
    /* B72F0 800A8340 00758021 */   addu      $s0, $v1, $s5
    /* B72F4 800A8344 920EFFEB */  lbu        $t6, -0x15($s0)
    /* B72F8 800A8348 240F0007 */  addiu      $t7, $zero, 0x7
    /* B72FC 800A834C 24080014 */  addiu      $t0, $zero, 0x14
    /* B7300 800A8350 15C00067 */  bnez       $t6, .L800A84F0_B74A0
    /* B7304 800A8354 3C098015 */   lui       $t1, %hi(D_8014F800)
    /* B7308 800A8358 A20FFFEA */  sb         $t7, -0x16($s0)
    /* B730C 800A835C A208FFEB */  sb         $t0, -0x15($s0)
    /* B7310 800A8360 8D29F800 */  lw         $t1, %lo(D_8014F800)($t1)
    /* B7314 800A8364 3C0A8015 */  lui        $t2, %hi(D_8014F804)
    /* B7318 800A8368 55200062 */  bnel       $t1, $zero, .L800A84F4_B74A4
    /* B731C 800A836C 87AE00AE */   lh        $t6, 0xAE($sp)
    /* B7320 800A8370 8D4AF804 */  lw         $t2, %lo(D_8014F804)($t2)
    /* B7324 800A8374 2401FFFF */  addiu      $at, $zero, -0x1
    /* B7328 800A8378 87AB00AE */  lh         $t3, 0xAE($sp)
    /* B732C 800A837C 1541005C */  bne        $t2, $at, .L800A84F0_B74A0
    /* B7330 800A8380 3C018015 */   lui       $at, %hi(D_8014F804)
    /* B7334 800A8384 1000005A */  b          .L800A84F0_B74A0
    /* B7338 800A8388 AC2BF804 */   sw        $t3, %lo(D_8014F804)($at)
    /* B733C 800A838C 920CFFEB */  lbu        $t4, -0x15($s0)
    /* B7340 800A8390 240D0009 */  addiu      $t5, $zero, 0x9
    /* B7344 800A8394 24190005 */  addiu      $t9, $zero, 0x5
    /* B7348 800A8398 55800056 */  bnel       $t4, $zero, .L800A84F4_B74A4
    /* B734C 800A839C 87AE00AE */   lh        $t6, 0xAE($sp)
    /* B7350 800A83A0 A20DFFEA */  sb         $t5, -0x16($s0)
    /* B7354 800A83A4 10000052 */  b          .L800A84F0_B74A0
    /* B7358 800A83A8 A219FFEB */   sb        $t9, -0x15($s0)
    /* B735C 800A83AC 9218FFEB */  lbu        $t8, -0x15($s0)
    /* B7360 800A83B0 240E0009 */  addiu      $t6, $zero, 0x9
    /* B7364 800A83B4 240F0005 */  addiu      $t7, $zero, 0x5
    /* B7368 800A83B8 5700004E */  bnel       $t8, $zero, .L800A84F4_B74A4
    /* B736C 800A83BC 87AE00AE */   lh        $t6, 0xAE($sp)
    /* B7370 800A83C0 A20EFFEA */  sb         $t6, -0x16($s0)
    /* B7374 800A83C4 1000004A */  b          .L800A84F0_B74A0
    /* B7378 800A83C8 A20FFFEB */   sb        $t7, -0x15($s0)
    /* B737C 800A83CC 9208FFEB */  lbu        $t0, -0x15($s0)
    /* B7380 800A83D0 55000048 */  bnel       $t0, $zero, .L800A84F4_B74A4
    /* B7384 800A83D4 87AE00AE */   lh        $t6, 0xAE($sp)
    /* B7388 800A83D8 8209FFE8 */  lb         $t1, -0x18($s0)
    /* B738C 800A83DC 820AFFE9 */  lb         $t2, -0x17($s0)
    /* B7390 800A83E0 00099E00 */  sll        $s3, $t1, 24
    /* B7394 800A83E4 000AA600 */  sll        $s4, $t2, 24
    /* B7398 800A83E8 00146C03 */  sra        $t5, $s4, 16
    /* B739C 800A83EC 00135C03 */  sra        $t3, $s3, 16
    /* B73A0 800A83F0 000B2400 */  sll        $a0, $t3, 16
    /* B73A4 800A83F4 000D2C00 */  sll        $a1, $t5, 16
    /* B73A8 800A83F8 0005CC03 */  sra        $t9, $a1, 16
    /* B73AC 800A83FC 00046403 */  sra        $t4, $a0, 16
    /* B73B0 800A8400 01802025 */  or         $a0, $t4, $zero
    /* B73B4 800A8404 03202825 */  or         $a1, $t9, $zero
    /* B73B8 800A8408 01609825 */  or         $s3, $t3, $zero
    /* B73BC 800A840C 0C02E134 */  jal        func_800B84D0_C7480
    /* B73C0 800A8410 01A0A025 */   or        $s4, $t5, $zero
    /* B73C4 800A8414 3C018014 */  lui        $at, %hi(D_80142888)
    /* B73C8 800A8418 C4262888 */  lwc1       $f6, %lo(D_80142888)($at)
    /* B73CC 800A841C 00133400 */  sll        $a2, $s3, 16
    /* B73D0 800A8420 00023A03 */  sra        $a3, $v0, 8
    /* B73D4 800A8424 00077400 */  sll        $t6, $a3, 16
    /* B73D8 800A8428 0006C403 */  sra        $t8, $a2, 16
    /* B73DC 800A842C 03003025 */  or         $a2, $t8, $zero
    /* B73E0 800A8430 000E3C03 */  sra        $a3, $t6, 16
    /* B73E4 800A8434 00002025 */  or         $a0, $zero, $zero
    /* B73E8 800A8438 2405017D */  addiu      $a1, $zero, 0x17D
    /* B73EC 800A843C AFB40010 */  sw         $s4, 0x10($sp)
    /* B73F0 800A8440 0C04DC6E */  jal        func_801371B8_146168
    /* B73F4 800A8444 E7A60014 */   swc1      $f6, 0x14($sp)
    /* B73F8 800A8448 8EC80000 */  lw         $t0, 0x0($s6)
    /* B73FC 800A844C 27B800A4 */  addiu      $t8, $sp, 0xA4
    /* B7400 800A8450 240E0050 */  addiu      $t6, $zero, 0x50
    /* B7404 800A8454 00084880 */  sll        $t1, $t0, 2
    /* B7408 800A8458 01284823 */  subu       $t1, $t1, $t0
    /* B740C 800A845C 000948C0 */  sll        $t1, $t1, 3
    /* B7410 800A8460 02E95021 */  addu       $t2, $s7, $t1
    /* B7414 800A8464 01558021 */  addu       $s0, $t2, $s5
    /* B7418 800A8468 820BFFE8 */  lb         $t3, -0x18($s0)
    /* B741C 800A846C 820DFFE9 */  lb         $t5, -0x17($s0)
    /* B7420 800A8470 240F000A */  addiu      $t7, $zero, 0xA
    /* B7424 800A8474 000B6200 */  sll        $t4, $t3, 8
    /* B7428 800A8478 000DCA00 */  sll        $t9, $t5, 8
    /* B742C 800A847C A7AC00A8 */  sh         $t4, 0xA8($sp)
    /* B7430 800A8480 A7B900AA */  sh         $t9, 0xAA($sp)
    /* B7434 800A8484 AFAF0018 */  sw         $t7, 0x18($sp)
    /* B7438 800A8488 AFAE0014 */  sw         $t6, 0x14($sp)
    /* B743C 800A848C AFB80010 */  sw         $t8, 0x10($sp)
    /* B7440 800A8490 27A400A8 */  addiu      $a0, $sp, 0xA8
    /* B7444 800A8494 2405001E */  addiu      $a1, $zero, 0x1E
    /* B7448 800A8498 240601F4 */  addiu      $a2, $zero, 0x1F4
    /* B744C 800A849C 240700FF */  addiu      $a3, $zero, 0xFF
    /* B7450 800A84A0 0C02E66A */  jal        func_800B99A8_C8958
    /* B7454 800A84A4 AFA0001C */   sw        $zero, 0x1C($sp)
    /* B7458 800A84A8 8ED20000 */  lw         $s2, 0x0($s6)
    /* B745C 800A84AC 2409000A */  addiu      $t1, $zero, 0xA
    /* B7460 800A84B0 240A0005 */  addiu      $t2, $zero, 0x5
    /* B7464 800A84B4 00124080 */  sll        $t0, $s2, 2
    /* B7468 800A84B8 01124023 */  subu       $t0, $t0, $s2
    /* B746C 800A84BC 000840C0 */  sll        $t0, $t0, 3
    /* B7470 800A84C0 02E81821 */  addu       $v1, $s7, $t0
    /* B7474 800A84C4 00758021 */  addu       $s0, $v1, $s5
    /* B7478 800A84C8 A209FFEA */  sb         $t1, -0x16($s0)
    /* B747C 800A84CC 10000008 */  b          .L800A84F0_B74A0
    /* B7480 800A84D0 A20AFFEB */   sb        $t2, -0x15($s0)
    /* B7484 800A84D4 920BFFEB */  lbu        $t3, -0x15($s0)
    /* B7488 800A84D8 240C0008 */  addiu      $t4, $zero, 0x8
    /* B748C 800A84DC 240D0019 */  addiu      $t5, $zero, 0x19
    /* B7490 800A84E0 55600004 */  bnel       $t3, $zero, .L800A84F4_B74A4
    /* B7494 800A84E4 87AE00AE */   lh        $t6, 0xAE($sp)
    /* B7498 800A84E8 A20CFFEA */  sb         $t4, -0x16($s0)
    /* B749C 800A84EC A20DFFEB */  sb         $t5, -0x15($s0)
  .L800A84F0_B74A0:
    /* B74A0 800A84F0 87AE00AE */  lh         $t6, 0xAE($sp)
  .L800A84F4_B74A4:
    /* B74A4 800A84F4 9219FFEB */  lbu        $t9, -0x15($s0)
    /* B74A8 800A84F8 25CF0001 */  addiu      $t7, $t6, 0x1
    /* B74AC 800A84FC 000F4400 */  sll        $t0, $t7, 16
    /* B74B0 800A8500 00084C03 */  sra        $t1, $t0, 16
    /* B74B4 800A8504 29210006 */  slti       $at, $t1, 0x6
    /* B74B8 800A8508 2738FFFF */  addiu      $t8, $t9, -0x1
    /* B74BC 800A850C A7AF00AE */  sh         $t7, 0xAE($sp)
    /* B74C0 800A8510 1420FE03 */  bnez       $at, .L800A7D20_B6CD0
    /* B74C4 800A8514 A218FFEB */   sb        $t8, -0x15($s0)
    /* B74C8 800A8518 8FBF0054 */  lw         $ra, 0x54($sp)
  .L800A851C_B74CC:
    /* B74CC 800A851C D7B40028 */  ldc1       $f20, 0x28($sp)
    /* B74D0 800A8520 8FB00030 */  lw         $s0, 0x30($sp)
    /* B74D4 800A8524 8FB10034 */  lw         $s1, 0x34($sp)
    /* B74D8 800A8528 8FB20038 */  lw         $s2, 0x38($sp)
    /* B74DC 800A852C 8FB3003C */  lw         $s3, 0x3C($sp)
    /* B74E0 800A8530 8FB40040 */  lw         $s4, 0x40($sp)
    /* B74E4 800A8534 8FB50044 */  lw         $s5, 0x44($sp)
    /* B74E8 800A8538 8FB60048 */  lw         $s6, 0x48($sp)
    /* B74EC 800A853C 8FB7004C */  lw         $s7, 0x4C($sp)
    /* B74F0 800A8540 8FBE0050 */  lw         $fp, 0x50($sp)
    /* B74F4 800A8544 03E00008 */  jr         $ra
    /* B74F8 800A8548 27BD00B0 */   addiu     $sp, $sp, 0xB0
endlabel func_800A7C6C_B6C1C
