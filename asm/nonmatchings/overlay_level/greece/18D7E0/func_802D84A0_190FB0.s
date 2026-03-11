nonmatching func_802D84A0_190FB0, 0x8C

glabel func_802D84A0_190FB0
    /* 190FB0 802D84A0 308E00FF */  andi       $t6, $a0, 0xFF
    /* 190FB4 802D84A4 000E7880 */  sll        $t7, $t6, 2
    /* 190FB8 802D84A8 01EE7821 */  addu       $t7, $t7, $t6
    /* 190FBC 802D84AC 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 190FC0 802D84B0 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 190FC4 802D84B4 000F7900 */  sll        $t7, $t7, 4
    /* 190FC8 802D84B8 01F81021 */  addu       $v0, $t7, $t8
    /* 190FCC 802D84BC 8C590020 */  lw         $t9, 0x20($v0)
    /* 190FD0 802D84C0 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 190FD4 802D84C4 AFA40030 */  sw         $a0, 0x30($sp)
    /* 190FD8 802D84C8 33280600 */  andi       $t0, $t9, 0x600
    /* 190FDC 802D84CC 01C02025 */  or         $a0, $t6, $zero
    /* 190FE0 802D84D0 11000012 */  beqz       $t0, .L802D851C_19102C
    /* 190FE4 802D84D4 AFBF001C */   sw        $ra, 0x1C($sp)
    /* 190FE8 802D84D8 AFA20024 */  sw         $v0, 0x24($sp)
    /* 190FEC 802D84DC 0C021512 */  jal        func_80085448_943F8
    /* 190FF0 802D84E0 A3AE0033 */   sb        $t6, 0x33($sp)
    /* 190FF4 802D84E4 1040000D */  beqz       $v0, .L802D851C_19102C
    /* 190FF8 802D84E8 8FA40024 */   lw        $a0, 0x24($sp)
    /* 190FFC 802D84EC 00002825 */  or         $a1, $zero, $zero
    /* 191000 802D84F0 00003025 */  or         $a2, $zero, $zero
    /* 191004 802D84F4 00003825 */  or         $a3, $zero, $zero
    /* 191008 802D84F8 0C04A4D5 */  jal        func_80129354_138304
    /* 19100C 802D84FC AFA00010 */   sw        $zero, 0x10($sp)
    /* 191010 802D8500 10400006 */  beqz       $v0, .L802D851C_19102C
    /* 191014 802D8504 93A40033 */   lbu       $a0, 0x33($sp)
    /* 191018 802D8508 0C04DD1A */  jal        func_80137468_146418
    /* 19101C 802D850C 24050065 */   addiu     $a1, $zero, 0x65
    /* 191020 802D8510 8FAA0024 */  lw         $t2, 0x24($sp)
    /* 191024 802D8514 2409001E */  addiu      $t1, $zero, 0x1E
    /* 191028 802D8518 A549001E */  sh         $t1, 0x1E($t2)
  .L802D851C_19102C:
    /* 19102C 802D851C 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 191030 802D8520 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 191034 802D8524 03E00008 */  jr         $ra
    /* 191038 802D8528 00000000 */   nop
endlabel func_802D84A0_190FB0
