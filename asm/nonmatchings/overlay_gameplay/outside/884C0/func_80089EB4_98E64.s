nonmatching func_80089EB4_98E64, 0xF8

glabel func_80089EB4_98E64
    /* 98E64 80089EB4 308E00FF */  andi       $t6, $a0, 0xFF
    /* 98E68 80089EB8 000E7880 */  sll        $t7, $t6, 2
    /* 98E6C 80089EBC 01EE7821 */  addu       $t7, $t7, $t6
    /* 98E70 80089EC0 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 98E74 80089EC4 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 98E78 80089EC8 000F7900 */  sll        $t7, $t7, 4
    /* 98E7C 80089ECC 01F81021 */  addu       $v0, $t7, $t8
    /* 98E80 80089ED0 8C430020 */  lw         $v1, 0x20($v0)
    /* 98E84 80089ED4 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 98E88 80089ED8 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 98E8C 80089EDC 0003CAC0 */  sll        $t9, $v1, 11
    /* 98E90 80089EE0 AFA40028 */  sw         $a0, 0x28($sp)
    /* 98E94 80089EE4 AFA5002C */  sw         $a1, 0x2C($sp)
    /* 98E98 80089EE8 AFA60030 */  sw         $a2, 0x30($sp)
    /* 98E9C 80089EEC AFA70034 */  sw         $a3, 0x34($sp)
    /* 98EA0 80089EF0 07200016 */  bltz       $t9, .L80089F4C_98EFC
    /* 98EA4 80089EF4 9048001A */   lbu       $t0, 0x1A($v0)
    /* 98EA8 80089EF8 30690600 */  andi       $t1, $v1, 0x600
    /* 98EAC 80089EFC 11200010 */  beqz       $t1, .L80089F40_98EF0
    /* 98EB0 80089F00 00085080 */   sll       $t2, $t0, 2
    /* 98EB4 80089F04 01485023 */  subu       $t2, $t2, $t0
    /* 98EB8 80089F08 000A5080 */  sll        $t2, $t2, 2
    /* 98EBC 80089F0C 01485021 */  addu       $t2, $t2, $t0
    /* 98EC0 80089F10 8FAB0030 */  lw         $t3, 0x30($sp)
    /* 98EC4 80089F14 000A50C0 */  sll        $t2, $t2, 3
    /* 98EC8 80089F18 3C078025 */  lui        $a3, %hi(D_8025668C)
    /* 98ECC 80089F1C 00EA3821 */  addu       $a3, $a3, $t2
    /* 98ED0 80089F20 94E7668C */  lhu        $a3, %lo(D_8025668C)($a3)
    /* 98ED4 80089F24 84440000 */  lh         $a0, 0x0($v0)
    /* 98ED8 80089F28 84450002 */  lh         $a1, 0x2($v0)
    /* 98EDC 80089F2C 84460004 */  lh         $a2, 0x4($v0)
    /* 98EE0 80089F30 AFA20020 */  sw         $v0, 0x20($sp)
    /* 98EE4 80089F34 0C037E12 */  jal        func_800DF848_EE7F8
    /* 98EE8 80089F38 AFAB0010 */   sw        $t3, 0x10($sp)
    /* 98EEC 80089F3C 8FA20020 */  lw         $v0, 0x20($sp)
  .L80089F40_98EF0:
    /* 98EF0 80089F40 8FAC002C */  lw         $t4, 0x2C($sp)
    /* 98EF4 80089F44 10000015 */  b          .L80089F9C_98F4C
    /* 98EF8 80089F48 A44C002C */   sh        $t4, 0x2C($v0)
  .L80089F4C_98EFC:
    /* 98EFC 80089F4C 844D002C */  lh         $t5, 0x2C($v0)
    /* 98F00 80089F50 24010001 */  addiu      $at, $zero, 0x1
    /* 98F04 80089F54 306E0600 */  andi       $t6, $v1, 0x600
    /* 98F08 80089F58 55A10011 */  bnel       $t5, $at, .L80089FA0_98F50
    /* 98F0C 80089F5C 8FBF001C */   lw        $ra, 0x1C($sp)
    /* 98F10 80089F60 11C0000E */  beqz       $t6, .L80089F9C_98F4C
    /* 98F14 80089F64 00087880 */   sll       $t7, $t0, 2
    /* 98F18 80089F68 01E87823 */  subu       $t7, $t7, $t0
    /* 98F1C 80089F6C 000F7880 */  sll        $t7, $t7, 2
    /* 98F20 80089F70 01E87821 */  addu       $t7, $t7, $t0
    /* 98F24 80089F74 8FB80034 */  lw         $t8, 0x34($sp)
    /* 98F28 80089F78 000F78C0 */  sll        $t7, $t7, 3
    /* 98F2C 80089F7C 3C078025 */  lui        $a3, %hi(D_8025668C)
    /* 98F30 80089F80 00EF3821 */  addu       $a3, $a3, $t7
    /* 98F34 80089F84 94E7668C */  lhu        $a3, %lo(D_8025668C)($a3)
    /* 98F38 80089F88 84440000 */  lh         $a0, 0x0($v0)
    /* 98F3C 80089F8C 84450002 */  lh         $a1, 0x2($v0)
    /* 98F40 80089F90 84460004 */  lh         $a2, 0x4($v0)
    /* 98F44 80089F94 0C037E12 */  jal        func_800DF848_EE7F8
    /* 98F48 80089F98 AFB80010 */   sw        $t8, 0x10($sp)
  .L80089F9C_98F4C:
    /* 98F4C 80089F9C 8FBF001C */  lw         $ra, 0x1C($sp)
  .L80089FA0_98F50:
    /* 98F50 80089FA0 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 98F54 80089FA4 03E00008 */  jr         $ra
    /* 98F58 80089FA8 00000000 */   nop
endlabel func_80089EB4_98E64
