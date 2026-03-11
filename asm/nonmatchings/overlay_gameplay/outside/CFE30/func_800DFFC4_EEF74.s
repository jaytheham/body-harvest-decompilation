nonmatching func_800DFFC4_EEF74, 0x130

glabel func_800DFFC4_EEF74
    /* EEF74 800DFFC4 3C0E8003 */  lui        $t6, %hi(D_80031420)
    /* EEF78 800DFFC8 8DCE1420 */  lw         $t6, %lo(D_80031420)($t6)
    /* EEF7C 800DFFCC 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* EEF80 800DFFD0 AFBF003C */  sw         $ra, 0x3C($sp)
    /* EEF84 800DFFD4 31CF0003 */  andi       $t7, $t6, 0x3
    /* EEF88 800DFFD8 AFA40040 */  sw         $a0, 0x40($sp)
    /* EEF8C 800DFFDC AFA50044 */  sw         $a1, 0x44($sp)
    /* EEF90 800DFFE0 11E00040 */  beqz       $t7, .L800E00E4_EF094
    /* EEF94 800DFFE4 AFA60048 */   sw        $a2, 0x48($sp)
    /* EEF98 800DFFE8 3C0A8004 */  lui        $t2, %hi(currentLevel)
    /* EEF9C 800DFFEC 8D4A7F90 */  lw         $t2, %lo(currentLevel)($t2)
    /* EEFA0 800DFFF0 3C0C8014 */  lui        $t4, %hi(D_8013E3C0)
    /* EEFA4 800DFFF4 258CE3C0 */  addiu      $t4, $t4, %lo(D_8013E3C0)
    /* EEFA8 800DFFF8 000A5880 */  sll        $t3, $t2, 2
    /* EEFAC 800DFFFC 016A5823 */  subu       $t3, $t3, $t2
    /* EEFB0 800E0000 016C1821 */  addu       $v1, $t3, $t4
    /* EEFB4 800E0004 906DFFFD */  lbu        $t5, -0x3($v1)
    /* EEFB8 800E0008 906EFFFE */  lbu        $t6, -0x2($v1)
    /* EEFBC 800E000C 906FFFFF */  lbu        $t7, -0x1($v1)
    /* EEFC0 800E0010 24180008 */  addiu      $t8, $zero, 0x8
    /* EEFC4 800E0014 24190004 */  addiu      $t9, $zero, 0x4
    /* EEFC8 800E0018 24080014 */  addiu      $t0, $zero, 0x14
    /* EEFCC 800E001C 240900C8 */  addiu      $t1, $zero, 0xC8
    /* EEFD0 800E0020 AFA9001C */  sw         $t1, 0x1C($sp)
    /* EEFD4 800E0024 AFA80018 */  sw         $t0, 0x18($sp)
    /* EEFD8 800E0028 AFB90014 */  sw         $t9, 0x14($sp)
    /* EEFDC 800E002C AFB80010 */  sw         $t8, 0x10($sp)
    /* EEFE0 800E0030 87A40042 */  lh         $a0, 0x42($sp)
    /* EEFE4 800E0034 87A50046 */  lh         $a1, 0x46($sp)
    /* EEFE8 800E0038 87A6004A */  lh         $a2, 0x4A($sp)
    /* EEFEC 800E003C 24070028 */  addiu      $a3, $zero, 0x28
    /* EEFF0 800E0040 AFAD0020 */  sw         $t5, 0x20($sp)
    /* EEFF4 800E0044 AFAE0024 */  sw         $t6, 0x24($sp)
    /* EEFF8 800E0048 0C037A82 */  jal        func_800DEA08_ED9B8
    /* EEFFC 800E004C AFAF0028 */   sw        $t7, 0x28($sp)
    /* EF000 800E0050 0C000E38 */  jal        func_800038E0_44E0
    /* EF004 800E0054 00000000 */   nop
    /* EF008 800E0058 3C0B8004 */  lui        $t3, %hi(currentLevel)
    /* EF00C 800E005C 8D6B7F90 */  lw         $t3, %lo(currentLevel)($t3)
    /* EF010 800E0060 3C0D8014 */  lui        $t5, %hi(D_8013E3C0)
    /* EF014 800E0064 25ADE3C0 */  addiu      $t5, $t5, %lo(D_8013E3C0)
    /* EF018 800E0068 000B6080 */  sll        $t4, $t3, 2
    /* EF01C 800E006C 018B6023 */  subu       $t4, $t4, $t3
    /* EF020 800E0070 018D1821 */  addu       $v1, $t4, $t5
    /* EF024 800E0074 2418007F */  addiu      $t8, $zero, 0x7F
    /* EF028 800E0078 AFB80010 */  sw         $t8, 0x10($sp)
    /* EF02C 800E007C 24190032 */  addiu      $t9, $zero, 0x32
    /* EF030 800E0080 9078FFFF */  lbu        $t8, -0x1($v1)
    /* EF034 800E0084 906EFFFD */  lbu        $t6, -0x3($v1)
    /* EF038 800E0088 906FFFFE */  lbu        $t7, -0x2($v1)
    /* EF03C 800E008C AFB90018 */  sw         $t9, 0x18($sp)
    /* EF040 800E0090 241900FF */  addiu      $t9, $zero, 0xFF
    /* EF044 800E0094 24080004 */  addiu      $t0, $zero, 0x4
    /* EF048 800E0098 240A00FF */  addiu      $t2, $zero, 0xFF
    /* EF04C 800E009C AFAA0024 */  sw         $t2, 0x24($sp)
    /* EF050 800E00A0 AFA8001C */  sw         $t0, 0x1C($sp)
    /* EF054 800E00A4 AFB90034 */  sw         $t9, 0x34($sp)
    /* EF058 800E00A8 87A40042 */  lh         $a0, 0x42($sp)
    /* EF05C 800E00AC 87A50046 */  lh         $a1, 0x46($sp)
    /* EF060 800E00B0 87A6004A */  lh         $a2, 0x4A($sp)
    /* EF064 800E00B4 00003825 */  or         $a3, $zero, $zero
    /* EF068 800E00B8 AFA00014 */  sw         $zero, 0x14($sp)
    /* EF06C 800E00BC 04410004 */  bgez       $v0, .L800E00D0_EF080
    /* EF070 800E00C0 30490003 */   andi      $t1, $v0, 0x3
    /* EF074 800E00C4 11200002 */  beqz       $t1, .L800E00D0_EF080
    /* EF078 800E00C8 00000000 */   nop
    /* EF07C 800E00CC 2529FFFC */  addiu      $t1, $t1, -0x4
  .L800E00D0_EF080:
    /* EF080 800E00D0 AFA90020 */  sw         $t1, 0x20($sp)
    /* EF084 800E00D4 AFB80030 */  sw         $t8, 0x30($sp)
    /* EF088 800E00D8 AFAE0028 */  sw         $t6, 0x28($sp)
    /* EF08C 800E00DC 0C03297B */  jal        func_800CA5EC_D959C
    /* EF090 800E00E0 AFAF002C */   sw        $t7, 0x2C($sp)
  .L800E00E4_EF094:
    /* EF094 800E00E4 8FBF003C */  lw         $ra, 0x3C($sp)
    /* EF098 800E00E8 27BD0040 */  addiu      $sp, $sp, 0x40
    /* EF09C 800E00EC 03E00008 */  jr         $ra
    /* EF0A0 800E00F0 00000000 */   nop
endlabel func_800DFFC4_EEF74
