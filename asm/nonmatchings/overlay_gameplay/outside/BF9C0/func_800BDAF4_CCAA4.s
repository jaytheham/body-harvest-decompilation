nonmatching func_800BDAF4_CCAA4, 0x230

glabel func_800BDAF4_CCAA4
    /* CCAA4 800BDAF4 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* CCAA8 800BDAF8 AFBE0048 */  sw         $fp, 0x48($sp)
    /* CCAAC 800BDAFC AFB70044 */  sw         $s7, 0x44($sp)
    /* CCAB0 800BDB00 AFB60040 */  sw         $s6, 0x40($sp)
    /* CCAB4 800BDB04 AFB5003C */  sw         $s5, 0x3C($sp)
    /* CCAB8 800BDB08 AFB40038 */  sw         $s4, 0x38($sp)
    /* CCABC 800BDB0C AFB30034 */  sw         $s3, 0x34($sp)
    /* CCAC0 800BDB10 AFB00028 */  sw         $s0, 0x28($sp)
    /* CCAC4 800BDB14 3C148004 */  lui        $s4, %hi(currentLevel)
    /* CCAC8 800BDB18 3C158004 */  lui        $s5, %hi(D_80047F94)
    /* CCACC 800BDB1C 3C168014 */  lui        $s6, %hi(D_80147F00)
    /* CCAD0 800BDB20 3C178014 */  lui        $s7, %hi(D_80142DF0)
    /* CCAD4 800BDB24 3C1E8014 */  lui        $fp, %hi(D_80142DFC)
    /* CCAD8 800BDB28 AFBF004C */  sw         $ra, 0x4C($sp)
    /* CCADC 800BDB2C AFB20030 */  sw         $s2, 0x30($sp)
    /* CCAE0 800BDB30 AFB1002C */  sw         $s1, 0x2C($sp)
    /* CCAE4 800BDB34 27DE2DFC */  addiu      $fp, $fp, %lo(D_80142DFC)
    /* CCAE8 800BDB38 26F72DF0 */  addiu      $s7, $s7, %lo(D_80142DF0)
    /* CCAEC 800BDB3C 26D67F00 */  addiu      $s6, $s6, %lo(D_80147F00)
    /* CCAF0 800BDB40 26B57F94 */  addiu      $s5, $s5, %lo(D_80047F94)
    /* CCAF4 800BDB44 26947F90 */  addiu      $s4, $s4, %lo(currentLevel)
    /* CCAF8 800BDB48 00008025 */  or         $s0, $zero, $zero
    /* CCAFC 800BDB4C 00009825 */  or         $s3, $zero, $zero
  .L800BDB50_CCB00:
    /* CCB00 800BDB50 8E850000 */  lw         $a1, 0x0($s4)
    /* CCB04 800BDB54 8EA60000 */  lw         $a2, 0x0($s5)
    /* CCB08 800BDB58 02E02025 */  or         $a0, $s7, $zero
    /* CCB0C 800BDB5C 00057080 */  sll        $t6, $a1, 2
    /* CCB10 800BDB60 01C57023 */  subu       $t6, $t6, $a1
    /* CCB14 800BDB64 000E7080 */  sll        $t6, $t6, 2
    /* CCB18 800BDB68 02CE7821 */  addu       $t7, $s6, $t6
    /* CCB1C 800BDB6C 0006C040 */  sll        $t8, $a2, 1
    /* CCB20 800BDB70 01F8C821 */  addu       $t9, $t7, $t8
    /* CCB24 800BDB74 0C00731B */  jal        osSyncPrintf
    /* CCB28 800BDB78 9727FFF4 */   lhu       $a3, -0xC($t9)
    /* CCB2C 800BDB7C 8E890000 */  lw         $t1, 0x0($s4)
    /* CCB30 800BDB80 8EAC0000 */  lw         $t4, 0x0($s5)
    /* CCB34 800BDB84 24180001 */  addiu      $t8, $zero, 0x1
    /* CCB38 800BDB88 00095080 */  sll        $t2, $t1, 2
    /* CCB3C 800BDB8C 01495023 */  subu       $t2, $t2, $t1
    /* CCB40 800BDB90 000A5080 */  sll        $t2, $t2, 2
    /* CCB44 800BDB94 02CA5821 */  addu       $t3, $s6, $t2
    /* CCB48 800BDB98 000C6840 */  sll        $t5, $t4, 1
    /* CCB4C 800BDB9C 016D7021 */  addu       $t6, $t3, $t5
    /* CCB50 800BDBA0 95CFFFF4 */  lhu        $t7, -0xC($t6)
    /* CCB54 800BDBA4 0218C804 */  sllv       $t9, $t8, $s0
    /* CCB58 800BDBA8 03C02025 */  or         $a0, $fp, $zero
    /* CCB5C 800BDBAC 01F94824 */  and        $t1, $t7, $t9
    /* CCB60 800BDBB0 5120004C */  beql       $t1, $zero, .L800BDCE4_CCC94
    /* CCB64 800BDBB4 26730001 */   addiu     $s3, $s3, 0x1
    /* CCB68 800BDBB8 0C00731B */  jal        osSyncPrintf
    /* CCB6C 800BDBBC 02002825 */   or        $a1, $s0, $zero
    /* CCB70 800BDBC0 8E8A0000 */  lw         $t2, 0x0($s4)
    /* CCB74 800BDBC4 00135880 */  sll        $t3, $s3, 2
    /* CCB78 800BDBC8 01735821 */  addu       $t3, $t3, $s3
    /* CCB7C 800BDBCC 000A6080 */  sll        $t4, $t2, 2
    /* CCB80 800BDBD0 018A6021 */  addu       $t4, $t4, $t2
    /* CCB84 800BDBD4 000C6100 */  sll        $t4, $t4, 4
    /* CCB88 800BDBD8 000B5840 */  sll        $t3, $t3, 1
    /* CCB8C 800BDBDC 3C0E8004 */  lui        $t6, %hi(D_8003E0FC)
    /* CCB90 800BDBE0 25CEE0FC */  addiu      $t6, $t6, %lo(D_8003E0FC)
    /* CCB94 800BDBE4 018B6821 */  addu       $t5, $t4, $t3
    /* CCB98 800BDBE8 01AE1021 */  addu       $v0, $t5, $t6
    /* CCB9C 800BDBEC 8043FFB6 */  lb         $v1, -0x4A($v0)
    /* CCBA0 800BDBF0 24010050 */  addiu      $at, $zero, 0x50
    /* CCBA4 800BDBF4 24070064 */  addiu      $a3, $zero, 0x64
    /* CCBA8 800BDBF8 10610039 */  beq        $v1, $at, .L800BDCE0_CCC90
    /* CCBAC 800BDBFC 00032023 */   negu      $a0, $v1
    /* CCBB0 800BDC00 0083082A */  slt        $at, $a0, $v1
    /* CCBB4 800BDC04 10200003 */  beqz       $at, .L800BDC14_CCBC4
    /* CCBB8 800BDC08 00804025 */   or        $t0, $a0, $zero
    /* CCBBC 800BDC0C 10000001 */  b          .L800BDC14_CCBC4
    /* CCBC0 800BDC10 00604025 */   or        $t0, $v1, $zero
  .L800BDC14_CCBC4:
    /* CCBC4 800BDC14 844FFFB0 */  lh         $t7, -0x50($v0)
    /* CCBC8 800BDC18 844AFFB4 */  lh         $t2, -0x4C($v0)
    /* CCBCC 800BDC1C 8451FFB2 */  lh         $s1, -0x4E($v0)
    /* CCBD0 800BDC20 000FCE00 */  sll        $t9, $t7, 24
    /* CCBD4 800BDC24 000A6600 */  sll        $t4, $t2, 24
    /* CCBD8 800BDC28 25180001 */  addiu      $t8, $t0, 0x1
    /* CCBDC 800BDC2C 00198403 */  sra        $s0, $t9, 16
    /* CCBE0 800BDC30 000C9403 */  sra        $s2, $t4, 16
    /* CCBE4 800BDC34 A058FFB6 */  sb         $t8, -0x4A($v0)
    /* CCBE8 800BDC38 00123400 */  sll        $a2, $s2, 16
    /* CCBEC 800BDC3C 00102400 */  sll        $a0, $s0, 16
    /* CCBF0 800BDC40 00112C00 */  sll        $a1, $s1, 16
    /* CCBF4 800BDC44 00057403 */  sra        $t6, $a1, 16
    /* CCBF8 800BDC48 00046C03 */  sra        $t5, $a0, 16
    /* CCBFC 800BDC4C 0006C403 */  sra        $t8, $a2, 16
    /* CCC00 800BDC50 240F0003 */  addiu      $t7, $zero, 0x3
    /* CCC04 800BDC54 AFAF0010 */  sw         $t7, 0x10($sp)
    /* CCC08 800BDC58 03003025 */  or         $a2, $t8, $zero
    /* CCC0C 800BDC5C 01A02025 */  or         $a0, $t5, $zero
    /* CCC10 800BDC60 0C037B97 */  jal        func_800DEE5C_EDE0C
    /* CCC14 800BDC64 01C02825 */   or        $a1, $t6, $zero
    /* CCC18 800BDC68 00102400 */  sll        $a0, $s0, 16
    /* CCC1C 800BDC6C 00112C00 */  sll        $a1, $s1, 16
    /* CCC20 800BDC70 00123400 */  sll        $a2, $s2, 16
    /* CCC24 800BDC74 00065403 */  sra        $t2, $a2, 16
    /* CCC28 800BDC78 00054C03 */  sra        $t1, $a1, 16
    /* CCC2C 800BDC7C 0004CC03 */  sra        $t9, $a0, 16
    /* CCC30 800BDC80 240C0003 */  addiu      $t4, $zero, 0x3
    /* CCC34 800BDC84 AFAC0010 */  sw         $t4, 0x10($sp)
    /* CCC38 800BDC88 03202025 */  or         $a0, $t9, $zero
    /* CCC3C 800BDC8C 01202825 */  or         $a1, $t1, $zero
    /* CCC40 800BDC90 01403025 */  or         $a2, $t2, $zero
    /* CCC44 800BDC94 0C037B97 */  jal        func_800DEE5C_EDE0C
    /* CCC48 800BDC98 24070032 */   addiu     $a3, $zero, 0x32
    /* CCC4C 800BDC9C 00102400 */  sll        $a0, $s0, 16
    /* CCC50 800BDCA0 00112C00 */  sll        $a1, $s1, 16
    /* CCC54 800BDCA4 00123400 */  sll        $a2, $s2, 16
    /* CCC58 800BDCA8 00067403 */  sra        $t6, $a2, 16
    /* CCC5C 800BDCAC 00056C03 */  sra        $t5, $a1, 16
    /* CCC60 800BDCB0 00045C03 */  sra        $t3, $a0, 16
    /* CCC64 800BDCB4 241800C8 */  addiu      $t8, $zero, 0xC8
    /* CCC68 800BDCB8 240F00C8 */  addiu      $t7, $zero, 0xC8
    /* CCC6C 800BDCBC 241900FA */  addiu      $t9, $zero, 0xFA
    /* CCC70 800BDCC0 AFB90018 */  sw         $t9, 0x18($sp)
    /* CCC74 800BDCC4 AFAF0014 */  sw         $t7, 0x14($sp)
    /* CCC78 800BDCC8 AFB80010 */  sw         $t8, 0x10($sp)
    /* CCC7C 800BDCCC 01602025 */  or         $a0, $t3, $zero
    /* CCC80 800BDCD0 01A02825 */  or         $a1, $t5, $zero
    /* CCC84 800BDCD4 01C03025 */  or         $a2, $t6, $zero
    /* CCC88 800BDCD8 0C03416A */  jal        func_800D05A8_DF558
    /* CCC8C 800BDCDC 240701F4 */   addiu     $a3, $zero, 0x1F4
  .L800BDCE0_CCC90:
    /* CCC90 800BDCE0 26730001 */  addiu      $s3, $s3, 0x1
  .L800BDCE4_CCC94:
    /* CCC94 800BDCE4 327000FF */  andi       $s0, $s3, 0xFF
    /* CCC98 800BDCE8 2A010010 */  slti       $at, $s0, 0x10
    /* CCC9C 800BDCEC 1420FF98 */  bnez       $at, .L800BDB50_CCB00
    /* CCCA0 800BDCF0 02009825 */   or        $s3, $s0, $zero
    /* CCCA4 800BDCF4 8FBF004C */  lw         $ra, 0x4C($sp)
    /* CCCA8 800BDCF8 8FB00028 */  lw         $s0, 0x28($sp)
    /* CCCAC 800BDCFC 8FB1002C */  lw         $s1, 0x2C($sp)
    /* CCCB0 800BDD00 8FB20030 */  lw         $s2, 0x30($sp)
    /* CCCB4 800BDD04 8FB30034 */  lw         $s3, 0x34($sp)
    /* CCCB8 800BDD08 8FB40038 */  lw         $s4, 0x38($sp)
    /* CCCBC 800BDD0C 8FB5003C */  lw         $s5, 0x3C($sp)
    /* CCCC0 800BDD10 8FB60040 */  lw         $s6, 0x40($sp)
    /* CCCC4 800BDD14 8FB70044 */  lw         $s7, 0x44($sp)
    /* CCCC8 800BDD18 8FBE0048 */  lw         $fp, 0x48($sp)
    /* CCCCC 800BDD1C 03E00008 */  jr         $ra
    /* CCCD0 800BDD20 27BD0050 */   addiu     $sp, $sp, 0x50
endlabel func_800BDAF4_CCAA4
