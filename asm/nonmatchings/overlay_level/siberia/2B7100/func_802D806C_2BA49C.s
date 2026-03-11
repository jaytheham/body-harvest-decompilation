nonmatching func_802D806C_2BA49C, 0xB4

glabel func_802D806C_2BA49C
    /* 2BA49C 802D806C 308E00FF */  andi       $t6, $a0, 0xFF
    /* 2BA4A0 802D8070 000E7880 */  sll        $t7, $t6, 2
    /* 2BA4A4 802D8074 01EE7821 */  addu       $t7, $t7, $t6
    /* 2BA4A8 802D8078 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 2BA4AC 802D807C 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 2BA4B0 802D8080 000F7900 */  sll        $t7, $t7, 4
    /* 2BA4B4 802D8084 01F81821 */  addu       $v1, $t7, $t8
    /* 2BA4B8 802D8088 8C790020 */  lw         $t9, 0x20($v1)
    /* 2BA4BC 802D808C 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 2BA4C0 802D8090 AFA40030 */  sw         $a0, 0x30($sp)
    /* 2BA4C4 802D8094 33282000 */  andi       $t0, $t9, 0x2000
    /* 2BA4C8 802D8098 01C02025 */  or         $a0, $t6, $zero
    /* 2BA4CC 802D809C AFBF001C */  sw         $ra, 0x1C($sp)
    /* 2BA4D0 802D80A0 AFA50034 */  sw         $a1, 0x34($sp)
    /* 2BA4D4 802D80A4 1100001A */  beqz       $t0, .L802D8110_2BA540
    /* 2BA4D8 802D80A8 AFA60038 */   sw        $a2, 0x38($sp)
    /* 2BA4DC 802D80AC 87A90036 */  lh         $t1, 0x36($sp)
    /* 2BA4E0 802D80B0 3C0B8015 */  lui        $t3, %hi(D_8014DD5A)
    /* 2BA4E4 802D80B4 24050002 */  addiu      $a1, $zero, 0x2
    /* 2BA4E8 802D80B8 00095100 */  sll        $t2, $t1, 4
    /* 2BA4EC 802D80BC 016A5821 */  addu       $t3, $t3, $t2
    /* 2BA4F0 802D80C0 956BDD5A */  lhu        $t3, %lo(D_8014DD5A)($t3)
    /* 2BA4F4 802D80C4 24060002 */  addiu      $a2, $zero, 0x2
    /* 2BA4F8 802D80C8 27A7002C */  addiu      $a3, $sp, 0x2C
    /* 2BA4FC 802D80CC 15600010 */  bnez       $t3, .L802D8110_2BA540
    /* 2BA500 802D80D0 3C0D802E */   lui       $t5, %hi(D_802E1430)
    /* 2BA504 802D80D4 87AC003A */  lh         $t4, 0x3A($sp)
    /* 2BA508 802D80D8 25AD1430 */  addiu      $t5, $t5, %lo(D_802E1430)
    /* 2BA50C 802D80DC A7A9002C */  sh         $t1, 0x2C($sp)
    /* 2BA510 802D80E0 AFAD0010 */  sw         $t5, 0x10($sp)
    /* 2BA514 802D80E4 AFA30024 */  sw         $v1, 0x24($sp)
    /* 2BA518 802D80E8 0C0207C6 */  jal        func_80081F18_90EC8
    /* 2BA51C 802D80EC A7AC002E */   sh        $t4, 0x2E($sp)
    /* 2BA520 802D80F0 304E00FF */  andi       $t6, $v0, 0xFF
    /* 2BA524 802D80F4 24010002 */  addiu      $at, $zero, 0x2
    /* 2BA528 802D80F8 15C10005 */  bne        $t6, $at, .L802D8110_2BA540
    /* 2BA52C 802D80FC 8FA30024 */   lw        $v1, 0x24($sp)
    /* 2BA530 802D8100 8C6F0020 */  lw         $t7, 0x20($v1)
    /* 2BA534 802D8104 2401DFFF */  addiu      $at, $zero, -0x2001
    /* 2BA538 802D8108 01E1C024 */  and        $t8, $t7, $at
    /* 2BA53C 802D810C AC780020 */  sw         $t8, 0x20($v1)
  .L802D8110_2BA540:
    /* 2BA540 802D8110 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 2BA544 802D8114 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 2BA548 802D8118 03E00008 */  jr         $ra
    /* 2BA54C 802D811C 00000000 */   nop
endlabel func_802D806C_2BA49C
