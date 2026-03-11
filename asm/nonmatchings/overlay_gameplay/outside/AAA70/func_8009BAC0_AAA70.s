nonmatching func_8009BAC0_AAA70, 0x188

glabel func_8009BAC0_AAA70
    /* AAA70 8009BAC0 3C014320 */  lui        $at, (0x43200000 >> 16)
    /* AAA74 8009BAC4 44810000 */  mtc1       $at, $f0
    /* AAA78 8009BAC8 3C01437A */  lui        $at, (0x437A0000 >> 16)
    /* AAA7C 8009BACC 3C028015 */  lui        $v0, %hi(D_8014F20C)
    /* AAA80 8009BAD0 3C038015 */  lui        $v1, %hi(D_8014EDDC)
    /* AAA84 8009BAD4 44811000 */  mtc1       $at, $f2
    /* AAA88 8009BAD8 2463EDDC */  addiu      $v1, $v1, %lo(D_8014EDDC)
    /* AAA8C 8009BADC 2442F20C */  addiu      $v0, $v0, %lo(D_8014F20C)
    /* AAA90 8009BAE0 AC400000 */  sw         $zero, 0x0($v0)
    /* AAA94 8009BAE4 A4600000 */  sh         $zero, 0x0($v1)
    /* AAA98 8009BAE8 3C018015 */  lui        $at, %hi(D_8014EDD8)
    /* AAA9C 8009BAEC A420EDD8 */  sh         $zero, %lo(D_8014EDD8)($at)
    /* AAAA0 8009BAF0 3C018015 */  lui        $at, %hi(D_8014EDDA)
    /* AAAA4 8009BAF4 24180040 */  addiu      $t8, $zero, 0x40
    /* AAAA8 8009BAF8 A438EDDA */  sh         $t8, %lo(D_8014EDDA)($at)
    /* AAAAC 8009BAFC 3C018015 */  lui        $at, %hi(D_8014F1E4)
    /* AAAB0 8009BB00 E420F1E4 */  swc1       $f0, %lo(D_8014F1E4)($at)
    /* AAAB4 8009BB04 3C018015 */  lui        $at, %hi(D_8014F1E8)
    /* AAAB8 8009BB08 E422F1E8 */  swc1       $f2, %lo(D_8014F1E8)($at)
    /* AAABC 8009BB0C 3C018015 */  lui        $at, %hi(D_8014F1EC)
    /* AAAC0 8009BB10 E420F1EC */  swc1       $f0, %lo(D_8014F1EC)($at)
    /* AAAC4 8009BB14 3C018015 */  lui        $at, %hi(D_8014F1F0)
    /* AAAC8 8009BB18 E422F1F0 */  swc1       $f2, %lo(D_8014F1F0)($at)
    /* AAACC 8009BB1C 24040080 */  addiu      $a0, $zero, 0x80
    /* AAAD0 8009BB20 3C018015 */  lui        $at, %hi(D_8014F1F4)
    /* AAAD4 8009BB24 A424F1F4 */  sh         $a0, %lo(D_8014F1F4)($at)
    /* AAAD8 8009BB28 3C018015 */  lui        $at, %hi(D_8014F1F6)
    /* AAADC 8009BB2C A420F1F6 */  sh         $zero, %lo(D_8014F1F6)($at)
    /* AAAE0 8009BB30 3C018015 */  lui        $at, %hi(D_8014F1FA)
    /* AAAE4 8009BB34 A424F1FA */  sh         $a0, %lo(D_8014F1FA)($at)
    /* AAAE8 8009BB38 3C078015 */  lui        $a3, %hi(D_8014ED4A)
    /* AAAEC 8009BB3C 3C018015 */  lui        $at, %hi(D_8014F1F8)
    /* AAAF0 8009BB40 24E7ED4A */  addiu      $a3, $a3, %lo(D_8014ED4A)
    /* AAAF4 8009BB44 A420F1F8 */  sh         $zero, %lo(D_8014F1F8)($at)
    /* AAAF8 8009BB48 A4E00000 */  sh         $zero, 0x0($a3)
    /* AAAFC 8009BB4C 84F90000 */  lh         $t9, 0x0($a3)
    /* AAB00 8009BB50 3C088015 */  lui        $t0, %hi(D_8014ED48)
    /* AAB04 8009BB54 2508ED48 */  addiu      $t0, $t0, %lo(D_8014ED48)
    /* AAB08 8009BB58 A5190000 */  sh         $t9, 0x0($t0)
    /* AAB0C 8009BB5C 850E0000 */  lh         $t6, 0x0($t0)
    /* AAB10 8009BB60 3C098015 */  lui        $t1, %hi(D_8014ED46)
    /* AAB14 8009BB64 2529ED46 */  addiu      $t1, $t1, %lo(D_8014ED46)
    /* AAB18 8009BB68 A52E0000 */  sh         $t6, 0x0($t1)
    /* AAB1C 8009BB6C 852F0000 */  lh         $t7, 0x0($t1)
    /* AAB20 8009BB70 3C0A8015 */  lui        $t2, %hi(D_8014ED44)
    /* AAB24 8009BB74 254AED44 */  addiu      $t2, $t2, %lo(D_8014ED44)
    /* AAB28 8009BB78 A54F0000 */  sh         $t7, 0x0($t2)
    /* AAB2C 8009BB7C 85580000 */  lh         $t8, 0x0($t2)
    /* AAB30 8009BB80 3C0B8015 */  lui        $t3, %hi(D_8014ED52)
    /* AAB34 8009BB84 3C018015 */  lui        $at, %hi(D_8014ED42)
    /* AAB38 8009BB88 256BED52 */  addiu      $t3, $t3, %lo(D_8014ED52)
    /* AAB3C 8009BB8C A438ED42 */  sh         $t8, %lo(D_8014ED42)($at)
    /* AAB40 8009BB90 A5600000 */  sh         $zero, 0x0($t3)
    /* AAB44 8009BB94 85790000 */  lh         $t9, 0x0($t3)
    /* AAB48 8009BB98 3C0C8015 */  lui        $t4, %hi(D_8014ED50)
    /* AAB4C 8009BB9C 258CED50 */  addiu      $t4, $t4, %lo(D_8014ED50)
    /* AAB50 8009BBA0 A5990000 */  sh         $t9, 0x0($t4)
    /* AAB54 8009BBA4 858E0000 */  lh         $t6, 0x0($t4)
    /* AAB58 8009BBA8 3C0D8015 */  lui        $t5, %hi(D_8014ED4E)
    /* AAB5C 8009BBAC 25ADED4E */  addiu      $t5, $t5, %lo(D_8014ED4E)
    /* AAB60 8009BBB0 A5AE0000 */  sh         $t6, 0x0($t5)
    /* AAB64 8009BBB4 85AF0000 */  lh         $t7, 0x0($t5)
    /* AAB68 8009BBB8 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* AAB6C 8009BBBC 3C018015 */  lui        $at, %hi(D_8014ED4C)
    /* AAB70 8009BBC0 3C068015 */  lui        $a2, %hi(D_8014F5F0)
    /* AAB74 8009BBC4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* AAB78 8009BBC8 24C6F5F0 */  addiu      $a2, $a2, %lo(D_8014F5F0)
    /* AAB7C 8009BBCC 2405001F */  addiu      $a1, $zero, 0x1F
    /* AAB80 8009BBD0 A42FED4C */  sh         $t7, %lo(D_8014ED4C)($at)
  .L8009BBD4_AAB84:
    /* AAB84 8009BBD4 24020007 */  addiu      $v0, $zero, 0x7
    /* AAB88 8009BBD8 24C3001C */  addiu      $v1, $a2, 0x1C
  .L8009BBDC_AAB8C:
    /* AAB8C 8009BBDC 00402025 */  or         $a0, $v0, $zero
    /* AAB90 8009BBE0 AC600000 */  sw         $zero, 0x0($v1)
    /* AAB94 8009BBE4 2463FFFC */  addiu      $v1, $v1, -0x4
    /* AAB98 8009BBE8 1440FFFC */  bnez       $v0, .L8009BBDC_AAB8C
    /* AAB9C 8009BBEC 2442FFFF */   addiu     $v0, $v0, -0x1
    /* AABA0 8009BBF0 00A02025 */  or         $a0, $a1, $zero
    /* AABA4 8009BBF4 24C6FFE0 */  addiu      $a2, $a2, -0x20
    /* AABA8 8009BBF8 14A0FFF6 */  bnez       $a1, .L8009BBD4_AAB84
    /* AABAC 8009BBFC 24A5FFFF */   addiu     $a1, $a1, -0x1
    /* AABB0 8009BC00 3C018015 */  lui        $at, %hi(D_8014F610)
    /* AABB4 8009BC04 AC20F610 */  sw         $zero, %lo(D_8014F610)($at)
    /* AABB8 8009BC08 3C018015 */  lui        $at, %hi(D_8014F202)
    /* AABBC 8009BC0C A020F202 */  sb         $zero, %lo(D_8014F202)($at)
    /* AABC0 8009BC10 3C188005 */  lui        $t8, %hi(D_8004816A)
    /* AABC4 8009BC14 8718816A */  lh         $t8, %lo(D_8004816A)($t8)
    /* AABC8 8009BC18 3C018015 */  lui        $at, %hi(D_8014F203)
    /* AABCC 8009BC1C A020F203 */  sb         $zero, %lo(D_8014F203)($at)
    /* AABD0 8009BC20 3C018015 */  lui        $at, %hi(D_8014F204)
    /* AABD4 8009BC24 AC38F204 */  sw         $t8, %lo(D_8014F204)($at)
    /* AABD8 8009BC28 3C018015 */  lui        $at, %hi(D_8014F208)
    /* AABDC 8009BC2C 2419FFFF */  addiu      $t9, $zero, -0x1
    /* AABE0 8009BC30 0C04E6CD */  jal        func_80139B34_148AE4
    /* AABE4 8009BC34 AC39F208 */   sw        $t9, %lo(D_8014F208)($at)
    /* AABE8 8009BC38 8FBF0014 */  lw         $ra, 0x14($sp)
    /* AABEC 8009BC3C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* AABF0 8009BC40 03E00008 */  jr         $ra
    /* AABF4 8009BC44 00000000 */   nop
endlabel func_8009BAC0_AAA70
