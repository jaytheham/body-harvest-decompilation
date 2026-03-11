nonmatching func_8008AF94_173054, 0x3C

glabel func_8008AF94_173054
    /* 173054 8008AF94 308E00FF */  andi       $t6, $a0, 0xFF
    /* 173058 8008AF98 00057E00 */  sll        $t7, $a1, 24
    /* 17305C 8008AF9C 240100FF */  addiu      $at, $zero, 0xFF
    /* 173060 8008AFA0 000FC603 */  sra        $t8, $t7, 24
    /* 173064 8008AFA4 AFA40000 */  sw         $a0, 0x0($sp)
    /* 173068 8008AFA8 11C10007 */  beq        $t6, $at, .L8008AFC8_173088
    /* 17306C 8008AFAC AFA50004 */   sw        $a1, 0x4($sp)
    /* 173070 8008AFB0 000EC880 */  sll        $t9, $t6, 2
    /* 173074 8008AFB4 032EC821 */  addu       $t9, $t9, $t6
    /* 173078 8008AFB8 0019C880 */  sll        $t9, $t9, 2
    /* 17307C 8008AFBC 3C018010 */  lui        $at, %hi(D_800FC8FA)
    /* 173080 8008AFC0 00390821 */  addu       $at, $at, $t9
    /* 173084 8008AFC4 A038C8FA */  sb         $t8, %lo(D_800FC8FA)($at)
  .L8008AFC8_173088:
    /* 173088 8008AFC8 03E00008 */  jr         $ra
    /* 17308C 8008AFCC 00000000 */   nop
endlabel func_8008AF94_173054
