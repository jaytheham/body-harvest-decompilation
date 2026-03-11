nonmatching func_800DDD90_ECD40, 0x54

glabel func_800DDD90_ECD40
    /* ECD40 800DDD90 308E00FF */  andi       $t6, $a0, 0xFF
    /* ECD44 800DDD94 240100FF */  addiu      $at, $zero, 0xFF
    /* ECD48 800DDD98 AFA40000 */  sw         $a0, 0x0($sp)
    /* ECD4C 800DDD9C AFA50004 */  sw         $a1, 0x4($sp)
    /* ECD50 800DDDA0 30AF00FF */  andi       $t7, $a1, 0xFF
    /* ECD54 800DDDA4 AFA60008 */  sw         $a2, 0x8($sp)
    /* ECD58 800DDDA8 30D800FF */  andi       $t8, $a2, 0xFF
    /* ECD5C 800DDDAC AFA7000C */  sw         $a3, 0xC($sp)
    /* ECD60 800DDDB0 11C1000A */  beq        $t6, $at, .L800DDDDC_ECD8C
    /* ECD64 800DDDB4 30F900FF */   andi      $t9, $a3, 0xFF
    /* ECD68 800DDDB8 000E4080 */  sll        $t0, $t6, 2
    /* ECD6C 800DDDBC 010E4021 */  addu       $t0, $t0, $t6
    /* ECD70 800DDDC0 3C098015 */  lui        $t1, %hi(D_80156EF0)
    /* ECD74 800DDDC4 25296EF0 */  addiu      $t1, $t1, %lo(D_80156EF0)
    /* ECD78 800DDDC8 00084080 */  sll        $t0, $t0, 2
    /* ECD7C 800DDDCC 01091021 */  addu       $v0, $t0, $t1
    /* ECD80 800DDDD0 A04F0006 */  sb         $t7, 0x6($v0)
    /* ECD84 800DDDD4 A0580007 */  sb         $t8, 0x7($v0)
    /* ECD88 800DDDD8 A0590008 */  sb         $t9, 0x8($v0)
  .L800DDDDC_ECD8C:
    /* ECD8C 800DDDDC 03E00008 */  jr         $ra
    /* ECD90 800DDDE0 00000000 */   nop
endlabel func_800DDD90_ECD40
