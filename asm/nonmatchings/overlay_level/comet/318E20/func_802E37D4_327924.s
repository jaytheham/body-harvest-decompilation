nonmatching func_802E37D4_327924, 0x34

glabel func_802E37D4_327924
    /* 327924 802E37D4 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 327928 802E37D8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 32792C 802E37DC AFA40018 */  sw         $a0, 0x18($sp)
    /* 327930 802E37E0 308E00FF */  andi       $t6, $a0, 0xFF
    /* 327934 802E37E4 01C02025 */  or         $a0, $t6, $zero
    /* 327938 802E37E8 2405FF6A */  addiu      $a1, $zero, -0x96
    /* 32793C 802E37EC 2406FFDB */  addiu      $a2, $zero, -0x25
    /* 327940 802E37F0 0C02A4E9 */  jal        func_800A93A4_B8354
    /* 327944 802E37F4 240700D4 */   addiu     $a3, $zero, 0xD4
    /* 327948 802E37F8 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 32794C 802E37FC 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 327950 802E3800 03E00008 */  jr         $ra
    /* 327954 802E3804 00000000 */   nop
endlabel func_802E37D4_327924
