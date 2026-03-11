nonmatching func_802DF99C_1F86AC, 0x1F8

glabel func_802DF99C_1F86AC
    /* 1F86AC 802DF99C 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 1F86B0 802DF9A0 AFB10018 */  sw         $s1, 0x18($sp)
    /* 1F86B4 802DF9A4 309100FF */  andi       $s1, $a0, 0xFF
    /* 1F86B8 802DF9A8 24090050 */  addiu      $t1, $zero, 0x50
    /* 1F86BC 802DF9AC 02290019 */  multu      $s1, $t1
    /* 1F86C0 802DF9B0 3C088005 */  lui        $t0, %hi(alienInstances)
    /* 1F86C4 802DF9B4 25088198 */  addiu      $t0, $t0, %lo(alienInstances)
    /* 1F86C8 802DF9B8 AFB00014 */  sw         $s0, 0x14($sp)
    /* 1F86CC 802DF9BC AFBF001C */  sw         $ra, 0x1C($sp)
    /* 1F86D0 802DF9C0 AFA40020 */  sw         $a0, 0x20($sp)
    /* 1F86D4 802DF9C4 24010007 */  addiu      $at, $zero, 0x7
    /* 1F86D8 802DF9C8 00007012 */  mflo       $t6
    /* 1F86DC 802DF9CC 010E8021 */  addu       $s0, $t0, $t6
    /* 1F86E0 802DF9D0 8E050020 */  lw         $a1, 0x20($s0)
    /* 1F86E4 802DF9D4 92060025 */  lbu        $a2, 0x25($s0)
    /* 1F86E8 802DF9D8 9207001A */  lbu        $a3, 0x1A($s0)
    /* 1F86EC 802DF9DC 00057840 */  sll        $t7, $a1, 1
    /* 1F86F0 802DF9E0 05E10016 */  bgez       $t7, .L802DFA3C_1F874C
    /* 1F86F4 802DF9E4 00000000 */   nop
    /* 1F86F8 802DF9E8 0221001A */  div        $zero, $s1, $at
    /* 1F86FC 802DF9EC 00001010 */  mfhi       $v0
    /* 1F8700 802DF9F0 0002C880 */  sll        $t9, $v0, 2
    /* 1F8704 802DF9F4 00026940 */  sll        $t5, $v0, 5
    /* 1F8708 802DF9F8 0322C823 */  subu       $t9, $t9, $v0
    /* 1F870C 802DF9FC 01A26823 */  subu       $t5, $t5, $v0
    /* 1F8710 802DFA00 86180006 */  lh         $t8, 0x6($s0)
    /* 1F8714 802DFA04 860C000A */  lh         $t4, 0xA($s0)
    /* 1F8718 802DFA08 0019C8C0 */  sll        $t9, $t9, 3
    /* 1F871C 802DFA0C 000D6880 */  sll        $t5, $t5, 2
    /* 1F8720 802DFA10 0322C821 */  addu       $t9, $t9, $v0
    /* 1F8724 802DFA14 01A26821 */  addu       $t5, $t5, $v0
    /* 1F8728 802DFA18 0019C8C0 */  sll        $t9, $t9, 3
    /* 1F872C 802DFA1C 000D6840 */  sll        $t5, $t5, 1
    /* 1F8730 802DFA20 03195021 */  addu       $t2, $t8, $t9
    /* 1F8734 802DFA24 018D7021 */  addu       $t6, $t4, $t5
    /* 1F8738 802DFA28 254BFD8A */  addiu      $t3, $t2, -0x276
    /* 1F873C 802DFA2C 25CF0064 */  addiu      $t7, $t6, 0x64
    /* 1F8740 802DFA30 A60B0006 */  sh         $t3, 0x6($s0)
    /* 1F8744 802DFA34 10000052 */  b          .L802DFB80_1F8890
    /* 1F8748 802DFA38 A60F000A */   sh        $t7, 0xA($s0)
  .L802DFA3C_1F874C:
    /* 1F874C 802DFA3C 00C90019 */  multu      $a2, $t1
    /* 1F8750 802DFA40 0007C080 */  sll        $t8, $a3, 2
    /* 1F8754 802DFA44 0307C023 */  subu       $t8, $t8, $a3
    /* 1F8758 802DFA48 0018C080 */  sll        $t8, $t8, 2
    /* 1F875C 802DFA4C 0307C021 */  addu       $t8, $t8, $a3
    /* 1F8760 802DFA50 3C198025 */  lui        $t9, %hi(alienSpecs)
    /* 1F8764 802DFA54 27396680 */  addiu      $t9, $t9, %lo(alienSpecs)
    /* 1F8768 802DFA58 0018C0C0 */  sll        $t8, $t8, 3
    /* 1F876C 802DFA5C 03191021 */  addu       $v0, $t8, $t9
    /* 1F8770 802DFA60 8C4A0054 */  lw         $t2, 0x54($v0)
    /* 1F8774 802DFA64 00006012 */  mflo       $t4
    /* 1F8778 802DFA68 010C1821 */  addu       $v1, $t0, $t4
    /* 1F877C 802DFA6C 906D0024 */  lbu        $t5, 0x24($v1)
    /* 1F8780 802DFA70 354B0004 */  ori        $t3, $t2, 0x4
    /* 1F8784 802DFA74 AC4B0054 */  sw         $t3, 0x54($v0)
    /* 1F8788 802DFA78 11A0001B */  beqz       $t5, .L802DFAE8_1F87F8
    /* 1F878C 802DFA7C 00000000 */   nop
    /* 1F8790 802DFA80 8462002C */  lh         $v0, 0x2C($v1)
    /* 1F8794 802DFA84 240100A0 */  addiu      $at, $zero, 0xA0
    /* 1F8798 802DFA88 14410006 */  bne        $v0, $at, .L802DFAA4_1F87B4
    /* 1F879C 802DFA8C 3C010800 */   lui       $at, (0x8000040 >> 16)
    /* 1F87A0 802DFA90 34210040 */  ori        $at, $at, (0x8000040 & 0xFFFF)
    /* 1F87A4 802DFA94 00A17025 */  or         $t6, $a1, $at
    /* 1F87A8 802DFA98 AE0E0020 */  sw         $t6, 0x20($s0)
    /* 1F87AC 802DFA9C 10000007 */  b          .L802DFABC_1F87CC
    /* 1F87B0 802DFAA0 8462002C */   lh        $v0, 0x2C($v1)
  .L802DFAA4_1F87B4:
    /* 1F87B4 802DFAA4 2401000A */  addiu      $at, $zero, 0xA
    /* 1F87B8 802DFAA8 14410004 */  bne        $v0, $at, .L802DFABC_1F87CC
    /* 1F87BC 802DFAAC 2401FFBF */   addiu     $at, $zero, -0x41
    /* 1F87C0 802DFAB0 00A17824 */  and        $t7, $a1, $at
    /* 1F87C4 802DFAB4 AE0F0020 */  sw         $t7, 0x20($s0)
    /* 1F87C8 802DFAB8 8462002C */  lh         $v0, 0x2C($v1)
  .L802DFABC_1F87CC:
    /* 1F87CC 802DFABC 284100A1 */  slti       $at, $v0, 0xA1
    /* 1F87D0 802DFAC0 14200005 */  bnez       $at, .L802DFAD8_1F87E8
    /* 1F87D4 802DFAC4 00000000 */   nop
    /* 1F87D8 802DFAC8 0C0295F9 */  jal        func_800A57E4_B4794
    /* 1F87DC 802DFACC 322400FF */   andi      $a0, $s1, 0xFF
    /* 1F87E0 802DFAD0 10000008 */  b          .L802DFAF4_1F8804
    /* 1F87E4 802DFAD4 322400FF */   andi      $a0, $s1, 0xFF
  .L802DFAD8_1F87E8:
    /* 1F87E8 802DFAD8 0C020193 */  jal        func_8008064C_8F5FC
    /* 1F87EC 802DFADC 322400FF */   andi      $a0, $s1, 0xFF
    /* 1F87F0 802DFAE0 10000004 */  b          .L802DFAF4_1F8804
    /* 1F87F4 802DFAE4 322400FF */   andi      $a0, $s1, 0xFF
  .L802DFAE8_1F87F8:
    /* 1F87F8 802DFAE8 0C0295F9 */  jal        func_800A57E4_B4794
    /* 1F87FC 802DFAEC 322400FF */   andi      $a0, $s1, 0xFF
    /* 1F8800 802DFAF0 322400FF */  andi       $a0, $s1, 0xFF
  .L802DFAF4_1F8804:
    /* 1F8804 802DFAF4 24050190 */  addiu      $a1, $zero, 0x190
    /* 1F8808 802DFAF8 0C0294F0 */  jal        func_800A53C0_B4370
    /* 1F880C 802DFAFC 24061F40 */   addiu     $a2, $zero, 0x1F40
    /* 1F8810 802DFB00 322400FF */  andi       $a0, $s1, 0xFF
    /* 1F8814 802DFB04 0C023A5E */  jal        func_8008E978_9D928
    /* 1F8818 802DFB08 240500FA */   addiu     $a1, $zero, 0xFA
    /* 1F881C 802DFB0C 86040000 */  lh         $a0, 0x0($s0)
    /* 1F8820 802DFB10 0C02E134 */  jal        func_800B84D0_C7480
    /* 1F8824 802DFB14 86050004 */   lh        $a1, 0x4($s0)
    /* 1F8828 802DFB18 86180002 */  lh         $t8, 0x2($s0)
    /* 1F882C 802DFB1C 00021A03 */  sra        $v1, $v0, 8
    /* 1F8830 802DFB20 246300C8 */  addiu      $v1, $v1, 0xC8
    /* 1F8834 802DFB24 0303082A */  slt        $at, $t8, $v1
    /* 1F8838 802DFB28 10200002 */  beqz       $at, .L802DFB34_1F8844
    /* 1F883C 802DFB2C 322400FF */   andi      $a0, $s1, 0xFF
    /* 1F8840 802DFB30 A6030002 */  sh         $v1, 0x2($s0)
  .L802DFB34_1F8844:
    /* 1F8844 802DFB34 8602001E */  lh         $v0, 0x1E($s0)
    /* 1F8848 802DFB38 10400003 */  beqz       $v0, .L802DFB48_1F8858
    /* 1F884C 802DFB3C 2459FFFF */   addiu     $t9, $v0, -0x1
    /* 1F8850 802DFB40 1000000F */  b          .L802DFB80_1F8890
    /* 1F8854 802DFB44 A619001E */   sh        $t9, 0x1E($s0)
  .L802DFB48_1F8858:
    /* 1F8858 802DFB48 0C0213FA */  jal        func_80084FE8_93F98
    /* 1F885C 802DFB4C 24050800 */   addiu     $a1, $zero, 0x800
    /* 1F8860 802DFB50 1040000B */  beqz       $v0, .L802DFB80_1F8890
    /* 1F8864 802DFB54 322400FF */   andi      $a0, $s1, 0xFF
    /* 1F8868 802DFB58 00002825 */  or         $a1, $zero, $zero
    /* 1F886C 802DFB5C 0C021C62 */  jal        func_80087188_96138
    /* 1F8870 802DFB60 24060010 */   addiu     $a2, $zero, 0x10
    /* 1F8874 802DFB64 A600001E */  sh         $zero, 0x1E($s0)
    /* 1F8878 802DFB68 322400FF */  andi       $a0, $s1, 0xFF
    /* 1F887C 802DFB6C 24050001 */  addiu      $a1, $zero, 0x1
    /* 1F8880 802DFB70 0C021C62 */  jal        func_80087188_96138
    /* 1F8884 802DFB74 24060010 */   addiu     $a2, $zero, 0x10
    /* 1F8888 802DFB78 240A0005 */  addiu      $t2, $zero, 0x5
    /* 1F888C 802DFB7C A60A001E */  sh         $t2, 0x1E($s0)
  .L802DFB80_1F8890:
    /* 1F8890 802DFB80 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 1F8894 802DFB84 8FB00014 */  lw         $s0, 0x14($sp)
    /* 1F8898 802DFB88 8FB10018 */  lw         $s1, 0x18($sp)
    /* 1F889C 802DFB8C 03E00008 */  jr         $ra
    /* 1F88A0 802DFB90 27BD0020 */   addiu     $sp, $sp, 0x20
endlabel func_802DF99C_1F86AC
