nonmatching func_800DF9C8_EE978, 0x6C

glabel func_800DF9C8_EE978
    /* EE978 800DF9C8 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* EE97C 800DF9CC 93AC0033 */  lbu        $t4, 0x33($sp)
    /* EE980 800DF9D0 8FAD0034 */  lw         $t5, 0x34($sp)
    /* EE984 800DF9D4 AFBF001C */  sw         $ra, 0x1C($sp)
    /* EE988 800DF9D8 AFA40020 */  sw         $a0, 0x20($sp)
    /* EE98C 800DF9DC AFA50024 */  sw         $a1, 0x24($sp)
    /* EE990 800DF9E0 AFA60028 */  sw         $a2, 0x28($sp)
    /* EE994 800DF9E4 AFA7002C */  sw         $a3, 0x2C($sp)
    /* EE998 800DF9E8 00047400 */  sll        $t6, $a0, 16
    /* EE99C 800DF9EC 0005C400 */  sll        $t8, $a1, 16
    /* EE9A0 800DF9F0 00064400 */  sll        $t0, $a2, 16
    /* EE9A4 800DF9F4 30EAFFFF */  andi       $t2, $a3, 0xFFFF
    /* EE9A8 800DF9F8 240B0001 */  addiu      $t3, $zero, 0x1
    /* EE9AC 800DF9FC 3C018015 */  lui        $at, %hi(D_80153B87)
    /* EE9B0 800DFA00 01403825 */  or         $a3, $t2, $zero
    /* EE9B4 800DFA04 00083403 */  sra        $a2, $t0, 16
    /* EE9B8 800DFA08 00182C03 */  sra        $a1, $t8, 16
    /* EE9BC 800DFA0C 000E2403 */  sra        $a0, $t6, 16
    /* EE9C0 800DFA10 A02B3B87 */  sb         $t3, %lo(D_80153B87)($at)
    /* EE9C4 800DFA14 AFAC0010 */  sw         $t4, 0x10($sp)
    /* EE9C8 800DFA18 0C037C0E */  jal        func_800DF038_EDFE8
    /* EE9CC 800DFA1C AFAD0014 */   sw        $t5, 0x14($sp)
    /* EE9D0 800DFA20 8FBF001C */  lw         $ra, 0x1C($sp)
    /* EE9D4 800DFA24 3C018015 */  lui        $at, %hi(D_80153B87)
    /* EE9D8 800DFA28 A0203B87 */  sb         $zero, %lo(D_80153B87)($at)
    /* EE9DC 800DFA2C 03E00008 */  jr         $ra
    /* EE9E0 800DFA30 27BD0020 */   addiu     $sp, $sp, 0x20
endlabel func_800DF9C8_EE978
