nonmatching func_80010290_10E90, 0x5C

glabel func_80010290_10E90
    /* 10E90 80010290 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 10E94 80010294 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 10E98 80010298 27A50020 */  addiu      $a1, $sp, 0x20
    /* 10E9C 8001029C 0C00408A */  jal        func_80010228_10E28
    /* 10EA0 800102A0 AFA40038 */   sw        $a0, 0x38($sp)
    /* 10EA4 800102A4 8FAE0020 */  lw         $t6, 0x20($sp)
    /* 10EA8 800102A8 3C014D49 */  lui        $at, (0x4D494F30 >> 16)
    /* 10EAC 800102AC 34214F30 */  ori        $at, $at, (0x4D494F30 & 0xFFFF)
    /* 10EB0 800102B0 11C10003 */  beq        $t6, $at, .L800102C0_10EC0
    /* 10EB4 800102B4 8FA40038 */   lw        $a0, 0x38($sp)
    /* 10EB8 800102B8 10000008 */  b          .L800102DC_10EDC
    /* 10EBC 800102BC 00001025 */   or        $v0, $zero, $zero
  .L800102C0_10EC0:
    /* 10EC0 800102C0 8FA20024 */  lw         $v0, 0x24($sp)
    /* 10EC4 800102C4 30450003 */  andi       $a1, $v0, 0x3
    /* 10EC8 800102C8 10A00003 */  beqz       $a1, .L800102D8_10ED8
    /* 10ECC 800102CC 00401825 */   or        $v1, $v0, $zero
    /* 10ED0 800102D0 00451823 */  subu       $v1, $v0, $a1
    /* 10ED4 800102D4 24630004 */  addiu      $v1, $v1, 0x4
  .L800102D8_10ED8:
    /* 10ED8 800102D8 00831021 */  addu       $v0, $a0, $v1
  .L800102DC_10EDC:
    /* 10EDC 800102DC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 10EE0 800102E0 27BD0038 */  addiu      $sp, $sp, 0x38
    /* 10EE4 800102E4 03E00008 */  jr         $ra
    /* 10EE8 800102E8 00000000 */   nop
endlabel func_80010290_10E90
