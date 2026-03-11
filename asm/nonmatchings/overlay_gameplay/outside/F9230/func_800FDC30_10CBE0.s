nonmatching func_800FDC30_10CBE0, 0x118

glabel func_800FDC30_10CBE0
    /* 10CBE0 800FDC30 00047400 */  sll        $t6, $a0, 16
    /* 10CBE4 800FDC34 000E7C03 */  sra        $t7, $t6, 16
    /* 10CBE8 800FDC38 3C188016 */  lui        $t8, %hi(D_80158E80)
    /* 10CBEC 800FDC3C 030FC021 */  addu       $t8, $t8, $t7
    /* 10CBF0 800FDC40 93188E80 */  lbu        $t8, %lo(D_80158E80)($t8)
    /* 10CBF4 800FDC44 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 10CBF8 800FDC48 3C088005 */  lui        $t0, %hi(vehicleInstances)
    /* 10CBFC 800FDC4C 0018C880 */  sll        $t9, $t8, 2
    /* 10CC00 800FDC50 0338C823 */  subu       $t9, $t9, $t8
    /* 10CC04 800FDC54 0019C8C0 */  sll        $t9, $t9, 3
    /* 10CC08 800FDC58 0338C823 */  subu       $t9, $t9, $t8
    /* 10CC0C 800FDC5C 0019C880 */  sll        $t9, $t9, 2
    /* 10CC10 800FDC60 2508DCD0 */  addiu      $t0, $t0, %lo(vehicleInstances)
    /* 10CC14 800FDC64 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 10CC18 800FDC68 AFA40018 */  sw         $a0, 0x18($sp)
    /* 10CC1C 800FDC6C 03281021 */  addu       $v0, $t9, $t0
    /* 10CC20 800FDC70 94490020 */  lhu        $t1, 0x20($v0)
    /* 10CC24 800FDC74 3C038016 */  lui        $v1, %hi(D_80159320)
    /* 10CC28 800FDC78 24639320 */  addiu      $v1, $v1, %lo(D_80159320)
    /* 10CC2C 800FDC7C 312A7FFF */  andi       $t2, $t1, 0x7FFF
    /* 10CC30 800FDC80 A44A0020 */  sh         $t2, 0x20($v0)
    /* 10CC34 800FDC84 8C6B0000 */  lw         $t3, 0x0($v1)
    /* 10CC38 800FDC88 3C058004 */  lui        $a1, %hi(currentLevel)
    /* 10CC3C 800FDC8C 24010001 */  addiu      $at, $zero, 0x1
    /* 10CC40 800FDC90 356C2000 */  ori        $t4, $t3, 0x2000
    /* 10CC44 800FDC94 AC6C0000 */  sw         $t4, 0x0($v1)
    /* 10CC48 800FDC98 8CA57F90 */  lw         $a1, %lo(currentLevel)($a1)
    /* 10CC4C 800FDC9C 10A10005 */  beq        $a1, $at, .L800FDCB4_10CC64
    /* 10CC50 800FDCA0 24010004 */   addiu     $at, $zero, 0x4
    /* 10CC54 800FDCA4 50A1001F */  beql       $a1, $at, .L800FDD24_10CCD4
    /* 10CC58 800FDCA8 9059001A */   lbu       $t9, 0x1A($v0)
    /* 10CC5C 800FDCAC 10000023 */  b          .L800FDD3C_10CCEC
    /* 10CC60 800FDCB0 8FBF0014 */   lw        $ra, 0x14($sp)
  .L800FDCB4_10CC64:
    /* 10CC64 800FDCB4 9045001A */  lbu        $a1, 0x1A($v0)
    /* 10CC68 800FDCB8 2401000C */  addiu      $at, $zero, 0xC
    /* 10CC6C 800FDCBC 24040011 */  addiu      $a0, $zero, 0x11
    /* 10CC70 800FDCC0 10A10013 */  beq        $a1, $at, .L800FDD10_10CCC0
    /* 10CC74 800FDCC4 00000000 */   nop
    /* 10CC78 800FDCC8 14A4001B */  bne        $a1, $a0, .L800FDD38_10CCE8
    /* 10CC7C 800FDCCC 2403007F */   addiu     $v1, $zero, 0x7F
    /* 10CC80 800FDCD0 3C028005 */  lui        $v0, %hi(D_80050A74)
    /* 10CC84 800FDCD4 24420A74 */  addiu      $v0, $v0, %lo(D_80050A74)
  .L800FDCD8_10CC88:
    /* 10CC88 800FDCD8 904D001A */  lbu        $t5, 0x1A($v0)
    /* 10CC8C 800FDCDC 00602825 */  or         $a1, $v1, $zero
    /* 10CC90 800FDCE0 548D0005 */  bnel       $a0, $t5, .L800FDCF8_10CCA8
    /* 10CC94 800FDCE4 2442FFA4 */   addiu     $v0, $v0, -0x5C
    /* 10CC98 800FDCE8 944E0020 */  lhu        $t6, 0x20($v0)
    /* 10CC9C 800FDCEC 31CF8000 */  andi       $t7, $t6, 0x8000
    /* 10CCA0 800FDCF0 15E00011 */  bnez       $t7, .L800FDD38_10CCE8
    /* 10CCA4 800FDCF4 2442FFA4 */   addiu     $v0, $v0, -0x5C
  .L800FDCF8_10CCA8:
    /* 10CCA8 800FDCF8 1460FFF7 */  bnez       $v1, .L800FDCD8_10CC88
    /* 10CCAC 800FDCFC 2463FFFF */   addiu     $v1, $v1, -0x1
    /* 10CCB0 800FDD00 24180005 */  addiu      $t8, $zero, 0x5
    /* 10CCB4 800FDD04 3C018005 */  lui        $at, %hi(D_8004DC58)
    /* 10CCB8 800FDD08 1000000B */  b          .L800FDD38_10CCE8
    /* 10CCBC 800FDD0C A438DC58 */   sh        $t8, %lo(D_8004DC58)($at)
  .L800FDD10_10CCC0:
    /* 10CCC0 800FDD10 0C02B864 */  jal        func_800AE190_BD140
    /* 10CCC4 800FDD14 2404000A */   addiu     $a0, $zero, 0xA
    /* 10CCC8 800FDD18 10000008 */  b          .L800FDD3C_10CCEC
    /* 10CCCC 800FDD1C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 10CCD0 800FDD20 9059001A */  lbu        $t9, 0x1A($v0)
  .L800FDD24_10CCD4:
    /* 10CCD4 800FDD24 2401000E */  addiu      $at, $zero, 0xE
    /* 10CCD8 800FDD28 57210004 */  bnel       $t9, $at, .L800FDD3C_10CCEC
    /* 10CCDC 800FDD2C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 10CCE0 800FDD30 0C03F6C0 */  jal        func_800FDB00_10CAB0
    /* 10CCE4 800FDD34 00000000 */   nop
  .L800FDD38_10CCE8:
    /* 10CCE8 800FDD38 8FBF0014 */  lw         $ra, 0x14($sp)
  .L800FDD3C_10CCEC:
    /* 10CCEC 800FDD3C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 10CCF0 800FDD40 03E00008 */  jr         $ra
    /* 10CCF4 800FDD44 00000000 */   nop
endlabel func_800FDC30_10CBE0
