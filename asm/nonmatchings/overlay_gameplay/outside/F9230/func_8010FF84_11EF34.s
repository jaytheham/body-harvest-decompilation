nonmatching func_8010FF84_11EF34, 0x1C0

glabel func_8010FF84_11EF34
    /* 11EF34 8010FF84 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 11EF38 8010FF88 AFB60030 */  sw         $s6, 0x30($sp)
    /* 11EF3C 8010FF8C AFB00018 */  sw         $s0, 0x18($sp)
    /* 11EF40 8010FF90 AFBE0038 */  sw         $fp, 0x38($sp)
    /* 11EF44 8010FF94 AFB70034 */  sw         $s7, 0x34($sp)
    /* 11EF48 8010FF98 AFB5002C */  sw         $s5, 0x2C($sp)
    /* 11EF4C 8010FF9C AFB40028 */  sw         $s4, 0x28($sp)
    /* 11EF50 8010FFA0 AFB30024 */  sw         $s3, 0x24($sp)
    /* 11EF54 8010FFA4 AFB20020 */  sw         $s2, 0x20($sp)
    /* 11EF58 8010FFA8 AFB1001C */  sw         $s1, 0x1C($sp)
    /* 11EF5C 8010FFAC 3C108005 */  lui        $s0, %hi(D_8004D0F8)
    /* 11EF60 8010FFB0 3C168025 */  lui        $s6, %hi(alienSpecs)
    /* 11EF64 8010FFB4 00809025 */  or         $s2, $a0, $zero
    /* 11EF68 8010FFB8 AFBF003C */  sw         $ra, 0x3C($sp)
    /* 11EF6C 8010FFBC AFA50044 */  sw         $a1, 0x44($sp)
    /* 11EF70 8010FFC0 26D66680 */  addiu      $s6, $s6, %lo(alienSpecs)
    /* 11EF74 8010FFC4 2610D0F8 */  addiu      $s0, $s0, %lo(D_8004D0F8)
    /* 11EF78 8010FFC8 241100FE */  addiu      $s1, $zero, 0xFE
    /* 11EF7C 8010FFCC 3C130010 */  lui        $s3, (0x100000 >> 16)
    /* 11EF80 8010FFD0 2414001A */  addiu      $s4, $zero, 0x1A
    /* 11EF84 8010FFD4 2415001B */  addiu      $s5, $zero, 0x1B
    /* 11EF88 8010FFD8 24170068 */  addiu      $s7, $zero, 0x68
    /* 11EF8C 8010FFDC 241E0020 */  addiu      $fp, $zero, 0x20
  .L8010FFE0_11EF90:
    /* 11EF90 8010FFE0 8E020020 */  lw         $v0, 0x20($s0)
    /* 11EF94 8010FFE4 304E0600 */  andi       $t6, $v0, 0x600
    /* 11EF98 8010FFE8 11C00045 */  beqz       $t6, .L80110100_11F0B0
    /* 11EF9C 8010FFEC 00537824 */   and       $t7, $v0, $s3
    /* 11EFA0 8010FFF0 51E00007 */  beql       $t7, $zero, .L80110010_11EFC0
    /* 11EFA4 8010FFF4 9218001A */   lbu       $t8, 0x1A($s0)
    /* 11EFA8 8010FFF8 9202001A */  lbu        $v0, 0x1A($s0)
    /* 11EFAC 8010FFFC 52820004 */  beql       $s4, $v0, .L80110010_11EFC0
    /* 11EFB0 80110000 9218001A */   lbu       $t8, 0x1A($s0)
    /* 11EFB4 80110004 56A2003F */  bnel       $s5, $v0, .L80110104_11F0B4
    /* 11EFB8 80110008 02201025 */   or        $v0, $s1, $zero
    /* 11EFBC 8011000C 9218001A */  lbu        $t8, 0x1A($s0)
  .L80110010_11EFC0:
    /* 11EFC0 80110010 02002025 */  or         $a0, $s0, $zero
    /* 11EFC4 80110014 03170019 */  multu      $t8, $s7
    /* 11EFC8 80110018 0000C812 */  mflo       $t9
    /* 11EFCC 8011001C 02D91021 */  addu       $v0, $s6, $t9
    /* 11EFD0 80110020 8C480054 */  lw         $t0, 0x54($v0)
    /* 11EFD4 80110024 31090008 */  andi       $t1, $t0, 0x8
    /* 11EFD8 80110028 51200036 */  beql       $t1, $zero, .L80110104_11F0B4
    /* 11EFDC 8011002C 02201025 */   or        $v0, $s1, $zero
    /* 11EFE0 80110030 0C01F982 */  jal        func_8007E608_8D5B8
    /* 11EFE4 80110034 02402825 */   or        $a1, $s2, $zero
    /* 11EFE8 80110038 10400031 */  beqz       $v0, .L80110100_11F0B0
    /* 11EFEC 8011003C 02402025 */   or        $a0, $s2, $zero
    /* 11EFF0 80110040 0C0439A1 */  jal        func_8010E684_11D634
    /* 11EFF4 80110044 02002825 */   or        $a1, $s0, $zero
    /* 11EFF8 80110048 5040002E */  beql       $v0, $zero, .L80110104_11F0B4
    /* 11EFFC 8011004C 02201025 */   or        $v0, $s1, $zero
    /* 11F000 80110050 9202001A */  lbu        $v0, 0x1A($s0)
    /* 11F004 80110054 8FAA0044 */  lw         $t2, 0x44($sp)
    /* 11F008 80110058 28410003 */  slti       $at, $v0, 0x3
    /* 11F00C 8011005C 14200003 */  bnez       $at, .L8011006C_11F01C
    /* 11F010 80110060 00000000 */   nop
    /* 11F014 80110064 57C20014 */  bnel       $fp, $v0, .L801100B8_11F068
    /* 11F018 80110068 8FB90044 */   lw        $t9, 0x44($sp)
  .L8011006C_11F01C:
    /* 11F01C 8011006C 15400024 */  bnez       $t2, .L80110100_11F0B0
    /* 11F020 80110070 3C0B8005 */   lui       $t3, %hi(alienInstances)
    /* 11F024 80110074 256B8198 */  addiu      $t3, $t3, %lo(alienInstances)
    /* 11F028 80110078 020B2023 */  subu       $a0, $s0, $t3
    /* 11F02C 8011007C 24010050 */  addiu      $at, $zero, 0x50
    /* 11F030 80110080 0081001A */  div        $zero, $a0, $at
    /* 11F034 80110084 00006012 */  mflo       $t4
    /* 11F038 80110088 3C0E8005 */  lui        $t6, %hi(vehicleInstances)
    /* 11F03C 8011008C 25CEDCD0 */  addiu      $t6, $t6, %lo(vehicleInstances)
    /* 11F040 80110090 024E2823 */  subu       $a1, $s2, $t6
    /* 11F044 80110094 2401005C */  addiu      $at, $zero, 0x5C
    /* 11F048 80110098 00A1001A */  div        $zero, $a1, $at
    /* 11F04C 8011009C 00007812 */  mflo       $t7
    /* 11F050 801100A0 31E500FF */  andi       $a1, $t7, 0xFF
    /* 11F054 801100A4 0C020366 */  jal        func_80080D98_8FD48
    /* 11F058 801100A8 318400FF */   andi      $a0, $t4, 0xFF
    /* 11F05C 801100AC 10000015 */  b          .L80110104_11F0B4
    /* 11F060 801100B0 02201025 */   or        $v0, $s1, $zero
    /* 11F064 801100B4 8FB90044 */  lw         $t9, 0x44($sp)
  .L801100B8_11F068:
    /* 11F068 801100B8 24040007 */  addiu      $a0, $zero, 0x7
    /* 11F06C 801100BC 57200004 */  bnel       $t9, $zero, .L801100D0_11F080
    /* 11F070 801100C0 96480020 */   lhu       $t0, 0x20($s2)
    /* 11F074 801100C4 0C043EB2 */  jal        func_8010FAC8_11EA78
    /* 11F078 801100C8 02002825 */   or        $a1, $s0, $zero
    /* 11F07C 801100CC 96480020 */  lhu        $t0, 0x20($s2)
  .L801100D0_11F080:
    /* 11F080 801100D0 8FAA0044 */  lw         $t2, 0x44($sp)
    /* 11F084 801100D4 31090002 */  andi       $t1, $t0, 0x2
    /* 11F088 801100D8 15200003 */  bnez       $t1, .L801100E8_11F098
    /* 11F08C 801100DC 00000000 */   nop
    /* 11F090 801100E0 1000000C */  b          .L80110114_11F0C4
    /* 11F094 801100E4 24020006 */   addiu     $v0, $zero, 0x6
  .L801100E8_11F098:
    /* 11F098 801100E8 15400003 */  bnez       $t2, .L801100F8_11F0A8
    /* 11F09C 801100EC 24040001 */   addiu     $a0, $zero, 0x1
    /* 11F0A0 801100F0 0C043EB2 */  jal        func_8010FAC8_11EA78
    /* 11F0A4 801100F4 02002825 */   or        $a1, $s0, $zero
  .L801100F8_11F0A8:
    /* 11F0A8 801100F8 10000006 */  b          .L80110114_11F0C4
    /* 11F0AC 801100FC 24020004 */   addiu     $v0, $zero, 0x4
  .L80110100_11F0B0:
    /* 11F0B0 80110100 02201025 */  or         $v0, $s1, $zero
  .L80110104_11F0B4:
    /* 11F0B4 80110104 2610FFB0 */  addiu      $s0, $s0, -0x50
    /* 11F0B8 80110108 1620FFB5 */  bnez       $s1, .L8010FFE0_11EF90
    /* 11F0BC 8011010C 2631FFFF */   addiu     $s1, $s1, -0x1
    /* 11F0C0 80110110 00001025 */  or         $v0, $zero, $zero
  .L80110114_11F0C4:
    /* 11F0C4 80110114 8FBF003C */  lw         $ra, 0x3C($sp)
    /* 11F0C8 80110118 8FB00018 */  lw         $s0, 0x18($sp)
    /* 11F0CC 8011011C 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 11F0D0 80110120 8FB20020 */  lw         $s2, 0x20($sp)
    /* 11F0D4 80110124 8FB30024 */  lw         $s3, 0x24($sp)
    /* 11F0D8 80110128 8FB40028 */  lw         $s4, 0x28($sp)
    /* 11F0DC 8011012C 8FB5002C */  lw         $s5, 0x2C($sp)
    /* 11F0E0 80110130 8FB60030 */  lw         $s6, 0x30($sp)
    /* 11F0E4 80110134 8FB70034 */  lw         $s7, 0x34($sp)
    /* 11F0E8 80110138 8FBE0038 */  lw         $fp, 0x38($sp)
    /* 11F0EC 8011013C 03E00008 */  jr         $ra
    /* 11F0F0 80110140 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_8010FF84_11EF34
