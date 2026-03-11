nonmatching func_80095A6C_A4A1C, 0x168

glabel func_80095A6C_A4A1C
    /* A4A1C 80095A6C 00043C00 */  sll        $a3, $a0, 16
    /* A4A20 80095A70 00077403 */  sra        $t6, $a3, 16
    /* A4A24 80095A74 01CE0019 */  multu      $t6, $t6
    /* A4A28 80095A78 00057C00 */  sll        $t7, $a1, 16
    /* A4A2C 80095A7C 000FC403 */  sra        $t8, $t7, 16
    /* A4A30 80095A80 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* A4A34 80095A84 AFBF0014 */  sw         $ra, 0x14($sp)
    /* A4A38 80095A88 AFA40018 */  sw         $a0, 0x18($sp)
    /* A4A3C 80095A8C AFA5001C */  sw         $a1, 0x1C($sp)
    /* A4A40 80095A90 AFA60020 */  sw         $a2, 0x20($sp)
    /* A4A44 80095A94 A7B8001E */  sh         $t8, 0x1E($sp)
    /* A4A48 80095A98 A7AE001A */  sh         $t6, 0x1A($sp)
    /* A4A4C 80095A9C 0000C812 */  mflo       $t9
    /* A4A50 80095AA0 00000000 */  nop
    /* A4A54 80095AA4 00000000 */  nop
    /* A4A58 80095AA8 03180019 */  multu      $t8, $t8
    /* A4A5C 80095AAC 00004012 */  mflo       $t0
    /* A4A60 80095AB0 03284821 */  addu       $t1, $t9, $t0
    /* A4A64 80095AB4 44892000 */  mtc1       $t1, $f4
    /* A4A68 80095AB8 0C007650 */  jal        sqrtf
    /* A4A6C 80095ABC 46802320 */   cvt.s.w   $f12, $f4
    /* A4A70 80095AC0 4600018D */  trunc.w.s  $f6, $f0
    /* A4A74 80095AC4 87A7001A */  lh         $a3, 0x1A($sp)
    /* A4A78 80095AC8 3C0A8005 */  lui        $t2, %hi(D_80052A94)
    /* A4A7C 80095ACC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* A4A80 80095AD0 44033000 */  mfc1       $v1, $f6
    /* A4A84 80095AD4 00001025 */  or         $v0, $zero, $zero
    /* A4A88 80095AD8 28610002 */  slti       $at, $v1, 0x2
    /* A4A8C 80095ADC 1420003B */  bnez       $at, .L80095BCC_A4B7C
    /* A4A90 80095AE0 00000000 */   nop
    /* A4A94 80095AE4 44838000 */  mtc1       $v1, $f16
    /* A4A98 80095AE8 3C014008 */  lui        $at, (0x40080000 >> 16)
    /* A4A9C 80095AEC 44815800 */  mtc1       $at, $f11
    /* A4AA0 80095AF0 468084A1 */  cvt.d.w    $f18, $f16
    /* A4AA4 80095AF4 44805000 */  mtc1       $zero, $f10
    /* A4AA8 80095AF8 44874000 */  mtc1       $a3, $f8
    /* A4AAC 80095AFC 87AD001E */  lh         $t5, 0x1E($sp)
    /* A4AB0 80095B00 46325103 */  div.d      $f4, $f10, $f18
    /* A4AB4 80095B04 448D5000 */  mtc1       $t5, $f10
    /* A4AB8 80095B08 46804020 */  cvt.s.w    $f0, $f8
    /* A4ABC 80095B0C 468050A0 */  cvt.s.w    $f2, $f10
    /* A4AC0 80095B10 46202320 */  cvt.s.d    $f12, $f4
    /* A4AC4 80095B14 460C0182 */  mul.s      $f6, $f0, $f12
    /* A4AC8 80095B18 00000000 */  nop
    /* A4ACC 80095B1C 460C1482 */  mul.s      $f18, $f2, $f12
    /* A4AD0 80095B20 46060200 */  add.s      $f8, $f0, $f6
    /* A4AD4 80095B24 46121100 */  add.s      $f4, $f2, $f18
    /* A4AD8 80095B28 4600440D */  trunc.w.s  $f16, $f8
    /* A4ADC 80095B2C 4600218D */  trunc.w.s  $f6, $f4
    /* A4AE0 80095B30 44028000 */  mfc1       $v0, $f16
    /* A4AE4 80095B34 44063000 */  mfc1       $a2, $f6
    /* A4AE8 80095B38 0002C400 */  sll        $t8, $v0, 16
    /* A4AEC 80095B3C 0018CC03 */  sra        $t9, $t8, 16
    /* A4AF0 80095B40 00022400 */  sll        $a0, $v0, 16
    /* A4AF4 80095B44 00062C00 */  sll        $a1, $a2, 16
    /* A4AF8 80095B48 00046403 */  sra        $t4, $a0, 16
    /* A4AFC 80095B4C 00057C03 */  sra        $t7, $a1, 16
    /* A4B00 80095B50 2B21FF80 */  slti       $at, $t9, -0x80
    /* A4B04 80095B54 01802025 */  or         $a0, $t4, $zero
    /* A4B08 80095B58 10200002 */  beqz       $at, .L80095B64_A4B14
    /* A4B0C 80095B5C 01E02825 */   or        $a1, $t7, $zero
    /* A4B10 80095B60 2404FF80 */  addiu      $a0, $zero, -0x80
  .L80095B64_A4B14:
    /* A4B14 80095B64 00064400 */  sll        $t0, $a2, 16
    /* A4B18 80095B68 00084C03 */  sra        $t1, $t0, 16
    /* A4B1C 80095B6C 2921FF80 */  slti       $at, $t1, -0x80
    /* A4B20 80095B70 50200003 */  beql       $at, $zero, .L80095B80_A4B30
    /* A4B24 80095B74 28810080 */   slti      $at, $a0, 0x80
    /* A4B28 80095B78 2405FF80 */  addiu      $a1, $zero, -0x80
    /* A4B2C 80095B7C 28810080 */  slti       $at, $a0, 0x80
  .L80095B80_A4B30:
    /* A4B30 80095B80 54200003 */  bnel       $at, $zero, .L80095B90_A4B40
    /* A4B34 80095B84 28A10080 */   slti      $at, $a1, 0x80
    /* A4B38 80095B88 2404007F */  addiu      $a0, $zero, 0x7F
    /* A4B3C 80095B8C 28A10080 */  slti       $at, $a1, 0x80
  .L80095B90_A4B40:
    /* A4B40 80095B90 14200002 */  bnez       $at, .L80095B9C_A4B4C
    /* A4B44 80095B94 00000000 */   nop
    /* A4B48 80095B98 2405007F */  addiu      $a1, $zero, 0x7F
  .L80095B9C_A4B4C:
    /* A4B4C 80095B9C 8D4A2A94 */  lw         $t2, %lo(D_80052A94)($t2)
    /* A4B50 80095BA0 00055A40 */  sll        $t3, $a1, 9
    /* A4B54 80095BA4 00046840 */  sll        $t5, $a0, 1
    /* A4B58 80095BA8 014B6021 */  addu       $t4, $t2, $t3
    /* A4B5C 80095BAC 018D7021 */  addu       $t6, $t4, $t5
    /* A4B60 80095BB0 95CF0000 */  lhu        $t7, 0x0($t6)
    /* A4B64 80095BB4 97B90022 */  lhu        $t9, 0x22($sp)
    /* A4B68 80095BB8 31F8003F */  andi       $t8, $t7, 0x3F
    /* A4B6C 80095BBC 03191823 */  subu       $v1, $t8, $t9
    /* A4B70 80095BC0 00034400 */  sll        $t0, $v1, 16
    /* A4B74 80095BC4 10000001 */  b          .L80095BCC_A4B7C
    /* A4B78 80095BC8 00081403 */   sra       $v0, $t0, 16
  .L80095BCC_A4B7C:
    /* A4B7C 80095BCC 03E00008 */  jr         $ra
    /* A4B80 80095BD0 27BD0018 */   addiu     $sp, $sp, 0x18
endlabel func_80095A6C_A4A1C
