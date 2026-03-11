nonmatching func_800DDF18_ECEC8, 0x60

glabel func_800DDF18_ECEC8
    /* ECEC8 800DDF18 308E00FF */  andi       $t6, $a0, 0xFF
    /* ECECC 800DDF1C 240100FF */  addiu      $at, $zero, 0xFF
    /* ECED0 800DDF20 11C10013 */  beq        $t6, $at, .L800DDF70_ECF20
    /* ECED4 800DDF24 AFA40000 */   sw        $a0, 0x0($sp)
    /* ECED8 800DDF28 000E7880 */  sll        $t7, $t6, 2
    /* ECEDC 800DDF2C 01EE7821 */  addu       $t7, $t7, $t6
    /* ECEE0 800DDF30 000F7880 */  sll        $t7, $t7, 2
    /* ECEE4 800DDF34 3C018015 */  lui        $at, %hi(D_80156EFA)
    /* ECEE8 800DDF38 3C038015 */  lui        $v1, %hi(D_80157531)
    /* ECEEC 800DDF3C 002F0821 */  addu       $at, $at, $t7
    /* ECEF0 800DDF40 24637531 */  addiu      $v1, $v1, %lo(D_80157531)
    /* ECEF4 800DDF44 A4206EFA */  sh         $zero, %lo(D_80156EFA)($at)
    /* ECEF8 800DDF48 90780000 */  lbu        $t8, 0x0($v1)
    /* ECEFC 800DDF4C 3C028015 */  lui        $v0, %hi(D_80157530)
    /* ECF00 800DDF50 24427530 */  addiu      $v0, $v0, %lo(D_80157530)
    /* ECF04 800DDF54 01D8082A */  slt        $at, $t6, $t8
    /* ECF08 800DDF58 50200003 */  beql       $at, $zero, .L800DDF68_ECF18
    /* ECF0C 800DDF5C 90590000 */   lbu       $t9, 0x0($v0)
    /* ECF10 800DDF60 A06E0000 */  sb         $t6, 0x0($v1)
    /* ECF14 800DDF64 90590000 */  lbu        $t9, 0x0($v0)
  .L800DDF68_ECF18:
    /* ECF18 800DDF68 2728FFFF */  addiu      $t0, $t9, -0x1
    /* ECF1C 800DDF6C A0480000 */  sb         $t0, 0x0($v0)
  .L800DDF70_ECF20:
    /* ECF20 800DDF70 03E00008 */  jr         $ra
    /* ECF24 800DDF74 00000000 */   nop
endlabel func_800DDF18_ECEC8
