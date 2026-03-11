nonmatching func_800B8D80_C7D30, 0x1B0

glabel func_800B8D80_C7D30
    /* C7D30 800B8D80 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* C7D34 800B8D84 00047400 */  sll        $t6, $a0, 16
    /* C7D38 800B8D88 000E7C03 */  sra        $t7, $t6, 16
    /* C7D3C 800B8D8C 25E20080 */  addiu      $v0, $t7, 0x80
    /* C7D40 800B8D90 00025203 */  sra        $t2, $v0, 8
    /* C7D44 800B8D94 AFA60040 */  sw         $a2, 0x40($sp)
    /* C7D48 800B8D98 00064400 */  sll        $t0, $a2, 16
    /* C7D4C 800B8D9C 000A5C00 */  sll        $t3, $t2, 16
    /* C7D50 800B8DA0 00083403 */  sra        $a2, $t0, 16
    /* C7D54 800B8DA4 000B1403 */  sra        $v0, $t3, 16
    /* C7D58 800B8DA8 00461823 */  subu       $v1, $v0, $a2
    /* C7D5C 800B8DAC AFA5003C */  sw         $a1, 0x3C($sp)
    /* C7D60 800B8DB0 0005C400 */  sll        $t8, $a1, 16
    /* C7D64 800B8DB4 2861FF81 */  slti       $at, $v1, -0x7F
    /* C7D68 800B8DB8 00182C03 */  sra        $a1, $t8, 16
    /* C7D6C 800B8DBC AFBF0034 */  sw         $ra, 0x34($sp)
    /* C7D70 800B8DC0 AFB70030 */  sw         $s7, 0x30($sp)
    /* C7D74 800B8DC4 AFB6002C */  sw         $s6, 0x2C($sp)
    /* C7D78 800B8DC8 AFB50028 */  sw         $s5, 0x28($sp)
    /* C7D7C 800B8DCC AFB40024 */  sw         $s4, 0x24($sp)
    /* C7D80 800B8DD0 AFB30020 */  sw         $s3, 0x20($sp)
    /* C7D84 800B8DD4 AFB2001C */  sw         $s2, 0x1C($sp)
    /* C7D88 800B8DD8 AFB10018 */  sw         $s1, 0x18($sp)
    /* C7D8C 800B8DDC AFB00014 */  sw         $s0, 0x14($sp)
    /* C7D90 800B8DE0 AFA40038 */  sw         $a0, 0x38($sp)
    /* C7D94 800B8DE4 10200003 */  beqz       $at, .L800B8DF4_C7DA4
    /* C7D98 800B8DE8 AFA70044 */   sw        $a3, 0x44($sp)
    /* C7D9C 800B8DEC 10000004 */  b          .L800B8E00_C7DB0
    /* C7DA0 800B8DF0 2404FF81 */   addiu     $a0, $zero, -0x7F
  .L800B8DF4_C7DA4:
    /* C7DA4 800B8DF4 00032400 */  sll        $a0, $v1, 16
    /* C7DA8 800B8DF8 00046C03 */  sra        $t5, $a0, 16
    /* C7DAC 800B8DFC 01A02025 */  or         $a0, $t5, $zero
  .L800B8E00_C7DB0:
    /* C7DB0 800B8E00 00461821 */  addu       $v1, $v0, $a2
    /* C7DB4 800B8E04 28610081 */  slti       $at, $v1, 0x81
    /* C7DB8 800B8E08 14200003 */  bnez       $at, .L800B8E18_C7DC8
    /* C7DBC 800B8E0C 24A20080 */   addiu     $v0, $a1, 0x80
    /* C7DC0 800B8E10 10000004 */  b          .L800B8E24_C7DD4
    /* C7DC4 800B8E14 24170080 */   addiu     $s7, $zero, 0x80
  .L800B8E18_C7DC8:
    /* C7DC8 800B8E18 0003BC00 */  sll        $s7, $v1, 16
    /* C7DCC 800B8E1C 00177403 */  sra        $t6, $s7, 16
    /* C7DD0 800B8E20 01C0B825 */  or         $s7, $t6, $zero
  .L800B8E24_C7DD4:
    /* C7DD4 800B8E24 00027A03 */  sra        $t7, $v0, 8
    /* C7DD8 800B8E28 000FC400 */  sll        $t8, $t7, 16
    /* C7DDC 800B8E2C 00181403 */  sra        $v0, $t8, 16
    /* C7DE0 800B8E30 00461823 */  subu       $v1, $v0, $a2
    /* C7DE4 800B8E34 2861FF81 */  slti       $at, $v1, -0x7F
    /* C7DE8 800B8E38 10200003 */  beqz       $at, .L800B8E48_C7DF8
    /* C7DEC 800B8E3C 00048C00 */   sll       $s1, $a0, 16
    /* C7DF0 800B8E40 10000004 */  b          .L800B8E54_C7E04
    /* C7DF4 800B8E44 2416FF81 */   addiu     $s6, $zero, -0x7F
  .L800B8E48_C7DF8:
    /* C7DF8 800B8E48 0003B400 */  sll        $s6, $v1, 16
    /* C7DFC 800B8E4C 00164403 */  sra        $t0, $s6, 16
    /* C7E00 800B8E50 0100B025 */  or         $s6, $t0, $zero
  .L800B8E54_C7E04:
    /* C7E04 800B8E54 00461821 */  addu       $v1, $v0, $a2
    /* C7E08 800B8E58 28610081 */  slti       $at, $v1, 0x81
    /* C7E0C 800B8E5C 14200003 */  bnez       $at, .L800B8E6C_C7E1C
    /* C7E10 800B8E60 00115403 */   sra       $t2, $s1, 16
    /* C7E14 800B8E64 10000004 */  b          .L800B8E78_C7E28
    /* C7E18 800B8E68 24150080 */   addiu     $s5, $zero, 0x80
  .L800B8E6C_C7E1C:
    /* C7E1C 800B8E6C 0003AC00 */  sll        $s5, $v1, 16
    /* C7E20 800B8E70 00154C03 */  sra        $t1, $s5, 16
    /* C7E24 800B8E74 0120A825 */  or         $s5, $t1, $zero
  .L800B8E78_C7E28:
    /* C7E28 800B8E78 02E4082A */  slt        $at, $s7, $a0
    /* C7E2C 800B8E7C 14200019 */  bnez       $at, .L800B8EE4_C7E94
    /* C7E30 800B8E80 01408825 */   or        $s1, $t2, $zero
    /* C7E34 800B8E84 00168400 */  sll        $s0, $s6, 16
  .L800B8E88_C7E38:
    /* C7E38 800B8E88 00105C03 */  sra        $t3, $s0, 16
    /* C7E3C 800B8E8C 02B6082A */  slt        $at, $s5, $s6
    /* C7E40 800B8E90 1420000E */  bnez       $at, .L800B8ECC_C7E7C
    /* C7E44 800B8E94 01608025 */   or        $s0, $t3, $zero
    /* C7E48 800B8E98 00112400 */  sll        $a0, $s1, 16
  .L800B8E9C_C7E4C:
    /* C7E4C 800B8E9C 00102C00 */  sll        $a1, $s0, 16
    /* C7E50 800B8EA0 00056C03 */  sra        $t5, $a1, 16
    /* C7E54 800B8EA4 00046403 */  sra        $t4, $a0, 16
    /* C7E58 800B8EA8 01802025 */  or         $a0, $t4, $zero
    /* C7E5C 800B8EAC 0C02D057 */  jal        func_800B415C_C310C
    /* C7E60 800B8EB0 01A02825 */   or        $a1, $t5, $zero
    /* C7E64 800B8EB4 26100001 */  addiu      $s0, $s0, 0x1
    /* C7E68 800B8EB8 00107400 */  sll        $t6, $s0, 16
    /* C7E6C 800B8EBC 000E8403 */  sra        $s0, $t6, 16
    /* C7E70 800B8EC0 02B0082A */  slt        $at, $s5, $s0
    /* C7E74 800B8EC4 5020FFF5 */  beql       $at, $zero, .L800B8E9C_C7E4C
    /* C7E78 800B8EC8 00112400 */   sll       $a0, $s1, 16
  .L800B8ECC_C7E7C:
    /* C7E7C 800B8ECC 26310001 */  addiu      $s1, $s1, 0x1
    /* C7E80 800B8ED0 0011C400 */  sll        $t8, $s1, 16
    /* C7E84 800B8ED4 00188C03 */  sra        $s1, $t8, 16
    /* C7E88 800B8ED8 02F1082A */  slt        $at, $s7, $s1
    /* C7E8C 800B8EDC 5020FFEA */  beql       $at, $zero, .L800B8E88_C7E38
    /* C7E90 800B8EE0 00168400 */   sll       $s0, $s6, 16
  .L800B8EE4_C7E94:
    /* C7E94 800B8EE4 3C048015 */  lui        $a0, %hi(D_8014F89C)
    /* C7E98 800B8EE8 3C058015 */  lui        $a1, %hi(D_8014F89D)
    /* C7E9C 800B8EEC 3C068020 */  lui        $a2, %hi(D_801FEA30)
    /* C7EA0 800B8EF0 24C6EA30 */  addiu      $a2, $a2, %lo(D_801FEA30)
    /* C7EA4 800B8EF4 90A5F89D */  lbu        $a1, %lo(D_8014F89D)($a1)
    /* C7EA8 800B8EF8 9084F89C */  lbu        $a0, %lo(D_8014F89C)($a0)
    /* C7EAC 800B8EFC 0C02D014 */  jal        func_800B4050_C3000
    /* C7EB0 800B8F00 00003825 */   or        $a3, $zero, $zero
    /* C7EB4 800B8F04 8FBF0034 */  lw         $ra, 0x34($sp)
    /* C7EB8 800B8F08 8FB00014 */  lw         $s0, 0x14($sp)
    /* C7EBC 800B8F0C 8FB10018 */  lw         $s1, 0x18($sp)
    /* C7EC0 800B8F10 8FB2001C */  lw         $s2, 0x1C($sp)
    /* C7EC4 800B8F14 8FB30020 */  lw         $s3, 0x20($sp)
    /* C7EC8 800B8F18 8FB40024 */  lw         $s4, 0x24($sp)
    /* C7ECC 800B8F1C 8FB50028 */  lw         $s5, 0x28($sp)
    /* C7ED0 800B8F20 8FB6002C */  lw         $s6, 0x2C($sp)
    /* C7ED4 800B8F24 8FB70030 */  lw         $s7, 0x30($sp)
    /* C7ED8 800B8F28 03E00008 */  jr         $ra
    /* C7EDC 800B8F2C 27BD0038 */   addiu     $sp, $sp, 0x38
endlabel func_800B8D80_C7D30
