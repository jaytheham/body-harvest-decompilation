nonmatching func_800DF848_EE7F8, 0x180

glabel func_800DF848_EE7F8
    /* EE7F8 800DF848 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* EE7FC 800DF84C AFBF001C */  sw         $ra, 0x1C($sp)
    /* EE800 800DF850 AFA40040 */  sw         $a0, 0x40($sp)
    /* EE804 800DF854 AFA50044 */  sw         $a1, 0x44($sp)
    /* EE808 800DF858 AFA60048 */  sw         $a2, 0x48($sp)
    /* EE80C 800DF85C 0C000E38 */  jal        func_800038E0_44E0
    /* EE810 800DF860 AFA7004C */   sw        $a3, 0x4C($sp)
    /* EE814 800DF864 2408000A */  addiu      $t0, $zero, 0xA
    /* EE818 800DF868 0048001A */  div        $zero, $v0, $t0
    /* EE81C 800DF86C 00007810 */  mfhi       $t7
    /* EE820 800DF870 A7AF003A */  sh         $t7, 0x3A($sp)
    /* EE824 800DF874 15000002 */  bnez       $t0, .L800DF880_EE830
    /* EE828 800DF878 00000000 */   nop
    /* EE82C 800DF87C 0007000D */  break      7
  .L800DF880_EE830:
    /* EE830 800DF880 2401FFFF */  addiu      $at, $zero, -0x1
    /* EE834 800DF884 15010004 */  bne        $t0, $at, .L800DF898_EE848
    /* EE838 800DF888 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* EE83C 800DF88C 14410002 */  bne        $v0, $at, .L800DF898_EE848
    /* EE840 800DF890 00000000 */   nop
    /* EE844 800DF894 0006000D */  break      6
  .L800DF898_EE848:
    /* EE848 800DF898 0C000E38 */  jal        func_800038E0_44E0
    /* EE84C 800DF89C 00000000 */   nop
    /* EE850 800DF8A0 3C0A8014 */  lui        $t2, %hi(D_8013E384)
    /* EE854 800DF8A4 3C098014 */  lui        $t1, %hi(D_8013E348)
    /* EE858 800DF8A8 87A7003A */  lh         $a3, 0x3A($sp)
    /* EE85C 800DF8AC 2408000A */  addiu      $t0, $zero, 0xA
    /* EE860 800DF8B0 2529E348 */  addiu      $t1, $t1, %lo(D_8013E348)
    /* EE864 800DF8B4 254AE384 */  addiu      $t2, $t2, %lo(D_8013E384)
    /* EE868 800DF8B8 00003025 */  or         $a2, $zero, $zero
  .L800DF8BC_EE86C:
    /* EE86C 800DF8BC 0006C080 */  sll        $t8, $a2, 2
    /* EE870 800DF8C0 0306C023 */  subu       $t8, $t8, $a2
    /* EE874 800DF8C4 27B9002C */  addiu      $t9, $sp, 0x2C
    /* EE878 800DF8C8 00062880 */  sll        $a1, $a2, 2
    /* EE87C 800DF8CC 00A62823 */  subu       $a1, $a1, $a2
    /* EE880 800DF8D0 03192021 */  addu       $a0, $t8, $t9
    /* EE884 800DF8D4 00001825 */  or         $v1, $zero, $zero
  .L800DF8D8_EE888:
    /* EE888 800DF8D8 28C10002 */  slti       $at, $a2, 0x2
    /* EE88C 800DF8DC 1020000B */  beqz       $at, .L800DF90C_EE8BC
    /* EE890 800DF8E0 00000000 */   nop
    /* EE894 800DF8E4 00075880 */  sll        $t3, $a3, 2
    /* EE898 800DF8E8 01675823 */  subu       $t3, $t3, $a3
    /* EE89C 800DF8EC 000B5840 */  sll        $t3, $t3, 1
    /* EE8A0 800DF8F0 012B6021 */  addu       $t4, $t1, $t3
    /* EE8A4 800DF8F4 01856821 */  addu       $t5, $t4, $a1
    /* EE8A8 800DF8F8 01A37021 */  addu       $t6, $t5, $v1
    /* EE8AC 800DF8FC 91CF0000 */  lbu        $t7, 0x0($t6)
    /* EE8B0 800DF900 0083C021 */  addu       $t8, $a0, $v1
    /* EE8B4 800DF904 10000017 */  b          .L800DF964_EE914
    /* EE8B8 800DF908 A30F0000 */   sb        $t7, 0x0($t8)
  .L800DF90C_EE8BC:
    /* EE8BC 800DF90C 0048001A */  div        $zero, $v0, $t0
    /* EE8C0 800DF910 0000C810 */  mfhi       $t9
    /* EE8C4 800DF914 00195C00 */  sll        $t3, $t9, 16
    /* EE8C8 800DF918 000B6403 */  sra        $t4, $t3, 16
    /* EE8CC 800DF91C 000C6880 */  sll        $t5, $t4, 2
    /* EE8D0 800DF920 01AC6823 */  subu       $t5, $t5, $t4
    /* EE8D4 800DF924 000D6840 */  sll        $t5, $t5, 1
    /* EE8D8 800DF928 014D7021 */  addu       $t6, $t2, $t5
    /* EE8DC 800DF92C 01C57821 */  addu       $t7, $t6, $a1
    /* EE8E0 800DF930 01E3C021 */  addu       $t8, $t7, $v1
    /* EE8E4 800DF934 9319FFFA */  lbu        $t9, -0x6($t8)
    /* EE8E8 800DF938 00835821 */  addu       $t3, $a0, $v1
    /* EE8EC 800DF93C 15000002 */  bnez       $t0, .L800DF948_EE8F8
    /* EE8F0 800DF940 00000000 */   nop
    /* EE8F4 800DF944 0007000D */  break      7
  .L800DF948_EE8F8:
    /* EE8F8 800DF948 2401FFFF */  addiu      $at, $zero, -0x1
    /* EE8FC 800DF94C 15010004 */  bne        $t0, $at, .L800DF960_EE910
    /* EE900 800DF950 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* EE904 800DF954 14410002 */  bne        $v0, $at, .L800DF960_EE910
    /* EE908 800DF958 00000000 */   nop
    /* EE90C 800DF95C 0006000D */  break      6
  .L800DF960_EE910:
    /* EE910 800DF960 A1790000 */  sb         $t9, 0x0($t3)
  .L800DF964_EE914:
    /* EE914 800DF964 24630001 */  addiu      $v1, $v1, 0x1
    /* EE918 800DF968 00036400 */  sll        $t4, $v1, 16
    /* EE91C 800DF96C 000C6C03 */  sra        $t5, $t4, 16
    /* EE920 800DF970 29A10003 */  slti       $at, $t5, 0x3
    /* EE924 800DF974 1420FFD8 */  bnez       $at, .L800DF8D8_EE888
    /* EE928 800DF978 01A01825 */   or        $v1, $t5, $zero
    /* EE92C 800DF97C 24C60001 */  addiu      $a2, $a2, 0x1
    /* EE930 800DF980 00067400 */  sll        $t6, $a2, 16
    /* EE934 800DF984 000E7C03 */  sra        $t7, $t6, 16
    /* EE938 800DF988 29E10004 */  slti       $at, $t7, 0x4
    /* EE93C 800DF98C 1420FFCB */  bnez       $at, .L800DF8BC_EE86C
    /* EE940 800DF990 01E03025 */   or        $a2, $t7, $zero
    /* EE944 800DF994 93B80053 */  lbu        $t8, 0x53($sp)
    /* EE948 800DF998 27B9002C */  addiu      $t9, $sp, 0x2C
    /* EE94C 800DF99C AFB90014 */  sw         $t9, 0x14($sp)
    /* EE950 800DF9A0 87A40042 */  lh         $a0, 0x42($sp)
    /* EE954 800DF9A4 87A50046 */  lh         $a1, 0x46($sp)
    /* EE958 800DF9A8 87A6004A */  lh         $a2, 0x4A($sp)
    /* EE95C 800DF9AC 97A7004E */  lhu        $a3, 0x4E($sp)
    /* EE960 800DF9B0 0C037C0E */  jal        func_800DF038_EDFE8
    /* EE964 800DF9B4 AFB80010 */   sw        $t8, 0x10($sp)
    /* EE968 800DF9B8 8FBF001C */  lw         $ra, 0x1C($sp)
    /* EE96C 800DF9BC 27BD0040 */  addiu      $sp, $sp, 0x40
    /* EE970 800DF9C0 03E00008 */  jr         $ra
    /* EE974 800DF9C4 00000000 */   nop
endlabel func_800DF848_EE7F8
