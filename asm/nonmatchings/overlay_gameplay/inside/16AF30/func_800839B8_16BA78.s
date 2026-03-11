nonmatching func_800839B8_16BA78, 0x68

glabel func_800839B8_16BA78
    /* 16BA78 800839B8 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 16BA7C 800839BC AFB10018 */  sw         $s1, 0x18($sp)
    /* 16BA80 800839C0 309100FF */  andi       $s1, $a0, 0xFF
    /* 16BA84 800839C4 00117080 */  sll        $t6, $s1, 2
    /* 16BA88 800839C8 01D17023 */  subu       $t6, $t6, $s1
    /* 16BA8C 800839CC 3C0F8010 */  lui        $t7, %hi(D_800FB6F8)
    /* 16BA90 800839D0 AFB00014 */  sw         $s0, 0x14($sp)
    /* 16BA94 800839D4 25EFB6F8 */  addiu      $t7, $t7, %lo(D_800FB6F8)
    /* 16BA98 800839D8 000E7080 */  sll        $t6, $t6, 2
    /* 16BA9C 800839DC 01CF8021 */  addu       $s0, $t6, $t7
    /* 16BAA0 800839E0 92180004 */  lbu        $t8, 0x4($s0)
    /* 16BAA4 800839E4 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 16BAA8 800839E8 AFA40020 */  sw         $a0, 0x20($sp)
    /* 16BAAC 800839EC 5B000008 */  blezl      $t8, .L80083A10_16BAD0
    /* 16BAB0 800839F0 8FBF001C */   lw        $ra, 0x1C($sp)
    /* 16BAB4 800839F4 86040006 */  lh         $a0, 0x6($s0)
  .L800839F8_16BAB8:
    /* 16BAB8 800839F8 0C020D7C */  jal        func_800835F0_16B6B0
    /* 16BABC 800839FC 322500FF */   andi      $a1, $s1, 0xFF
    /* 16BAC0 80083A00 92190004 */  lbu        $t9, 0x4($s0)
    /* 16BAC4 80083A04 5F20FFFC */  bgtzl      $t9, .L800839F8_16BAB8
    /* 16BAC8 80083A08 86040006 */   lh        $a0, 0x6($s0)
    /* 16BACC 80083A0C 8FBF001C */  lw         $ra, 0x1C($sp)
  .L80083A10_16BAD0:
    /* 16BAD0 80083A10 8FB00014 */  lw         $s0, 0x14($sp)
    /* 16BAD4 80083A14 8FB10018 */  lw         $s1, 0x18($sp)
    /* 16BAD8 80083A18 03E00008 */  jr         $ra
    /* 16BADC 80083A1C 27BD0020 */   addiu     $sp, $sp, 0x20
endlabel func_800839B8_16BA78
