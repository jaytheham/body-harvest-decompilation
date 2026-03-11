nonmatching func_80089D04_98CB4, 0x1B0

glabel func_80089D04_98CB4
    /* 98CB4 80089D04 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 98CB8 80089D08 AFA40048 */  sw         $a0, 0x48($sp)
    /* 98CBC 80089D0C 93AE004B */  lbu        $t6, 0x4B($sp)
    /* 98CC0 80089D10 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 98CC4 80089D14 AFB00040 */  sw         $s0, 0x40($sp)
    /* 98CC8 80089D18 000E7880 */  sll        $t7, $t6, 2
    /* 98CCC 80089D1C 01EE7821 */  addu       $t7, $t7, $t6
    /* 98CD0 80089D20 000F7900 */  sll        $t7, $t7, 4
    /* 98CD4 80089D24 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 98CD8 80089D28 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 98CDC 80089D2C 01F88021 */  addu       $s0, $t7, $t8
    /* 98CE0 80089D30 0C03BD94 */  jal        func_800EF650_FE600
    /* 98CE4 80089D34 02002025 */   or        $a0, $s0, $zero
    /* 98CE8 80089D38 8E190020 */  lw         $t9, 0x20($s0)
    /* 98CEC 80089D3C 3C098004 */  lui        $t1, %hi(currentLevel)
    /* 98CF0 80089D40 001942C0 */  sll        $t0, $t9, 11
    /* 98CF4 80089D44 05020032 */  bltzl      $t0, .L80089E10_98DC0
    /* 98CF8 80089D48 860F002C */   lh        $t7, 0x2C($s0)
    /* 98CFC 80089D4C 8D297F90 */  lw         $t1, %lo(currentLevel)($t1)
    /* 98D00 80089D50 24010005 */  addiu      $at, $zero, 0x5
    /* 98D04 80089D54 240A0001 */  addiu      $t2, $zero, 0x1
    /* 98D08 80089D58 11210003 */  beq        $t1, $at, .L80089D68_98D18
    /* 98D0C 80089D5C 240B7D00 */   addiu     $t3, $zero, 0x7D00
    /* 98D10 80089D60 1000004F */  b          .L80089EA0_98E50
    /* 98D14 80089D64 A60A002C */   sh        $t2, 0x2C($s0)
  .L80089D68_98D18:
    /* 98D18 80089D68 920D0026 */  lbu        $t5, 0x26($s0)
    /* 98D1C 80089D6C 240C0007 */  addiu      $t4, $zero, 0x7
    /* 98D20 80089D70 A60B002C */  sh         $t3, 0x2C($s0)
    /* 98D24 80089D74 15A0001E */  bnez       $t5, .L80089DF0_98DA0
    /* 98D28 80089D78 A20C0024 */   sb        $t4, 0x24($s0)
    /* 98D2C 80089D7C 3C0E8003 */  lui        $t6, %hi(D_80031420)
    /* 98D30 80089D80 8DCE1420 */  lw         $t6, %lo(D_80031420)($t6)
    /* 98D34 80089D84 00003825 */  or         $a3, $zero, $zero
    /* 98D38 80089D88 2408007F */  addiu      $t0, $zero, 0x7F
    /* 98D3C 80089D8C 31CF0003 */  andi       $t7, $t6, 0x3
    /* 98D40 80089D90 11E00017 */  beqz       $t7, .L80089DF0_98DA0
    /* 98D44 80089D94 24090032 */   addiu     $t1, $zero, 0x32
    /* 98D48 80089D98 86050002 */  lh         $a1, 0x2($s0)
    /* 98D4C 80089D9C 240A0003 */  addiu      $t2, $zero, 0x3
    /* 98D50 80089DA0 240B0014 */  addiu      $t3, $zero, 0x14
    /* 98D54 80089DA4 24A50028 */  addiu      $a1, $a1, 0x28
    /* 98D58 80089DA8 0005C400 */  sll        $t8, $a1, 16
    /* 98D5C 80089DAC 240C00FF */  addiu      $t4, $zero, 0xFF
    /* 98D60 80089DB0 240D00FF */  addiu      $t5, $zero, 0xFF
    /* 98D64 80089DB4 240E00FF */  addiu      $t6, $zero, 0xFF
    /* 98D68 80089DB8 AFAE0034 */  sw         $t6, 0x34($sp)
    /* 98D6C 80089DBC AFAD002C */  sw         $t5, 0x2C($sp)
    /* 98D70 80089DC0 AFAC0024 */  sw         $t4, 0x24($sp)
    /* 98D74 80089DC4 00182C03 */  sra        $a1, $t8, 16
    /* 98D78 80089DC8 AFAB0020 */  sw         $t3, 0x20($sp)
    /* 98D7C 80089DCC AFAA001C */  sw         $t2, 0x1C($sp)
    /* 98D80 80089DD0 86040000 */  lh         $a0, 0x0($s0)
    /* 98D84 80089DD4 86060004 */  lh         $a2, 0x4($s0)
    /* 98D88 80089DD8 AFA80010 */  sw         $t0, 0x10($sp)
    /* 98D8C 80089DDC AFA00014 */  sw         $zero, 0x14($sp)
    /* 98D90 80089DE0 AFA90018 */  sw         $t1, 0x18($sp)
    /* 98D94 80089DE4 AFA00028 */  sw         $zero, 0x28($sp)
    /* 98D98 80089DE8 0C03297B */  jal        func_800CA5EC_D959C
    /* 98D9C 80089DEC AFA00030 */   sw        $zero, 0x30($sp)
  .L80089DF0_98DA0:
    /* 98DA0 80089DF0 93A4004B */  lbu        $a0, 0x4B($sp)
    /* 98DA4 80089DF4 0C04DD1A */  jal        func_80137468_146418
    /* 98DA8 80089DF8 2405026C */   addiu     $a1, $zero, 0x26C
    /* 98DAC 80089DFC 0C02C0D3 */  jal        func_800B034C_BF2FC
    /* 98DB0 80089E00 00000000 */   nop
    /* 98DB4 80089E04 10000027 */  b          .L80089EA4_98E54
    /* 98DB8 80089E08 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 98DBC 80089E0C 860F002C */  lh         $t7, 0x2C($s0)
  .L80089E10_98DC0:
    /* 98DC0 80089E10 24017CCE */  addiu      $at, $zero, 0x7CCE
    /* 98DC4 80089E14 15E10003 */  bne        $t7, $at, .L80089E24_98DD4
    /* 98DC8 80089E18 00000000 */   nop
    /* 98DCC 80089E1C 0C02F76D */  jal        func_800BDDB4_CCD64
    /* 98DD0 80089E20 00000000 */   nop
  .L80089E24_98DD4:
    /* 98DD4 80089E24 3C188005 */  lui        $t8, %hi(D_80052A8C)
    /* 98DD8 80089E28 8F182A8C */  lw         $t8, %lo(D_80052A8C)($t8)
    /* 98DDC 80089E2C 3C088003 */  lui        $t0, %hi(D_80031420)
    /* 98DE0 80089E30 33190007 */  andi       $t9, $t8, 0x7
    /* 98DE4 80089E34 5720001B */  bnel       $t9, $zero, .L80089EA4_98E54
    /* 98DE8 80089E38 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 98DEC 80089E3C 8D081420 */  lw         $t0, %lo(D_80031420)($t0)
    /* 98DF0 80089E40 00003825 */  or         $a3, $zero, $zero
    /* 98DF4 80089E44 240A007F */  addiu      $t2, $zero, 0x7F
    /* 98DF8 80089E48 31090003 */  andi       $t1, $t0, 0x3
    /* 98DFC 80089E4C 11200014 */  beqz       $t1, .L80089EA0_98E50
    /* 98E00 80089E50 240B0005 */   addiu     $t3, $zero, 0x5
    /* 98E04 80089E54 240C0006 */  addiu      $t4, $zero, 0x6
    /* 98E08 80089E58 240D0008 */  addiu      $t5, $zero, 0x8
    /* 98E0C 80089E5C 240E00FF */  addiu      $t6, $zero, 0xFF
    /* 98E10 80089E60 240F00FF */  addiu      $t7, $zero, 0xFF
    /* 98E14 80089E64 241800FF */  addiu      $t8, $zero, 0xFF
    /* 98E18 80089E68 AFB80034 */  sw         $t8, 0x34($sp)
    /* 98E1C 80089E6C AFAF002C */  sw         $t7, 0x2C($sp)
    /* 98E20 80089E70 AFAE0024 */  sw         $t6, 0x24($sp)
    /* 98E24 80089E74 AFAD0020 */  sw         $t5, 0x20($sp)
    /* 98E28 80089E78 AFAC001C */  sw         $t4, 0x1C($sp)
    /* 98E2C 80089E7C 86040000 */  lh         $a0, 0x0($s0)
    /* 98E30 80089E80 86050002 */  lh         $a1, 0x2($s0)
    /* 98E34 80089E84 86060004 */  lh         $a2, 0x4($s0)
    /* 98E38 80089E88 AFAA0010 */  sw         $t2, 0x10($sp)
    /* 98E3C 80089E8C AFA00014 */  sw         $zero, 0x14($sp)
    /* 98E40 80089E90 AFAB0018 */  sw         $t3, 0x18($sp)
    /* 98E44 80089E94 AFA00028 */  sw         $zero, 0x28($sp)
    /* 98E48 80089E98 0C03297B */  jal        func_800CA5EC_D959C
    /* 98E4C 80089E9C AFA00030 */   sw        $zero, 0x30($sp)
  .L80089EA0_98E50:
    /* 98E50 80089EA0 8FBF0044 */  lw         $ra, 0x44($sp)
  .L80089EA4_98E54:
    /* 98E54 80089EA4 8FB00040 */  lw         $s0, 0x40($sp)
    /* 98E58 80089EA8 27BD0048 */  addiu      $sp, $sp, 0x48
    /* 98E5C 80089EAC 03E00008 */  jr         $ra
    /* 98E60 80089EB0 00000000 */   nop
endlabel func_80089D04_98CB4
