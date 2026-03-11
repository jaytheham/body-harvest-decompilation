nonmatching func_800DFA34_EE9E4, 0x64

glabel func_800DFA34_EE9E4
    /* EE9E4 800DFA34 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* EE9E8 800DFA38 93AC0033 */  lbu        $t4, 0x33($sp)
    /* EE9EC 800DFA3C AFBF001C */  sw         $ra, 0x1C($sp)
    /* EE9F0 800DFA40 AFA40020 */  sw         $a0, 0x20($sp)
    /* EE9F4 800DFA44 AFA50024 */  sw         $a1, 0x24($sp)
    /* EE9F8 800DFA48 AFA60028 */  sw         $a2, 0x28($sp)
    /* EE9FC 800DFA4C AFA7002C */  sw         $a3, 0x2C($sp)
    /* EEA00 800DFA50 00047400 */  sll        $t6, $a0, 16
    /* EEA04 800DFA54 0005C400 */  sll        $t8, $a1, 16
    /* EEA08 800DFA58 00064400 */  sll        $t0, $a2, 16
    /* EEA0C 800DFA5C 30EAFFFF */  andi       $t2, $a3, 0xFFFF
    /* EEA10 800DFA60 240B0001 */  addiu      $t3, $zero, 0x1
    /* EEA14 800DFA64 3C018015 */  lui        $at, %hi(D_80153B87)
    /* EEA18 800DFA68 01403825 */  or         $a3, $t2, $zero
    /* EEA1C 800DFA6C 00083403 */  sra        $a2, $t0, 16
    /* EEA20 800DFA70 00182C03 */  sra        $a1, $t8, 16
    /* EEA24 800DFA74 000E2403 */  sra        $a0, $t6, 16
    /* EEA28 800DFA78 A02B3B87 */  sb         $t3, %lo(D_80153B87)($at)
    /* EEA2C 800DFA7C 0C037E12 */  jal        func_800DF848_EE7F8
    /* EEA30 800DFA80 AFAC0010 */   sw        $t4, 0x10($sp)
    /* EEA34 800DFA84 8FBF001C */  lw         $ra, 0x1C($sp)
    /* EEA38 800DFA88 3C018015 */  lui        $at, %hi(D_80153B87)
    /* EEA3C 800DFA8C A0203B87 */  sb         $zero, %lo(D_80153B87)($at)
    /* EEA40 800DFA90 03E00008 */  jr         $ra
    /* EEA44 800DFA94 27BD0020 */   addiu     $sp, $sp, 0x20
endlabel func_800DFA34_EE9E4
