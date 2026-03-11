nonmatching func_802DA054_259794, 0xCC

glabel func_802DA054_259794
    /* 259794 802DA054 308E00FF */  andi       $t6, $a0, 0xFF
    /* 259798 802DA058 000E7880 */  sll        $t7, $t6, 2
    /* 25979C 802DA05C 01EE7821 */  addu       $t7, $t7, $t6
    /* 2597A0 802DA060 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 2597A4 802DA064 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 2597A8 802DA068 000F7900 */  sll        $t7, $t7, 4
    /* 2597AC 802DA06C 01F81821 */  addu       $v1, $t7, $t8
    /* 2597B0 802DA070 8C790020 */  lw         $t9, 0x20($v1)
    /* 2597B4 802DA074 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 2597B8 802DA078 AFA40038 */  sw         $a0, 0x38($sp)
    /* 2597BC 802DA07C 33282000 */  andi       $t0, $t9, 0x2000
    /* 2597C0 802DA080 01C02025 */  or         $a0, $t6, $zero
    /* 2597C4 802DA084 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 2597C8 802DA088 AFA5003C */  sw         $a1, 0x3C($sp)
    /* 2597CC 802DA08C AFA60040 */  sw         $a2, 0x40($sp)
    /* 2597D0 802DA090 1100001F */  beqz       $t0, .L802DA110_259850
    /* 2597D4 802DA094 AFA70044 */   sw        $a3, 0x44($sp)
    /* 2597D8 802DA098 87A9003E */  lh         $t1, 0x3E($sp)
    /* 2597DC 802DA09C 87AA0042 */  lh         $t2, 0x42($sp)
    /* 2597E0 802DA0A0 87AB0046 */  lh         $t3, 0x46($sp)
    /* 2597E4 802DA0A4 87AC004A */  lh         $t4, 0x4A($sp)
    /* 2597E8 802DA0A8 87AD004E */  lh         $t5, 0x4E($sp)
    /* 2597EC 802DA0AC 87AE0052 */  lh         $t6, 0x52($sp)
    /* 2597F0 802DA0B0 87AF0056 */  lh         $t7, 0x56($sp)
    /* 2597F4 802DA0B4 3C18802E */  lui        $t8, %hi(D_802E0444)
    /* 2597F8 802DA0B8 27180444 */  addiu      $t8, $t8, %lo(D_802E0444)
    /* 2597FC 802DA0BC AFB80010 */  sw         $t8, 0x10($sp)
    /* 259800 802DA0C0 24050007 */  addiu      $a1, $zero, 0x7
    /* 259804 802DA0C4 24060003 */  addiu      $a2, $zero, 0x3
    /* 259808 802DA0C8 27A70028 */  addiu      $a3, $sp, 0x28
    /* 25980C 802DA0CC AFA30020 */  sw         $v1, 0x20($sp)
    /* 259810 802DA0D0 A7A90028 */  sh         $t1, 0x28($sp)
    /* 259814 802DA0D4 A7AA002A */  sh         $t2, 0x2A($sp)
    /* 259818 802DA0D8 A7AB002C */  sh         $t3, 0x2C($sp)
    /* 25981C 802DA0DC A7AC002E */  sh         $t4, 0x2E($sp)
    /* 259820 802DA0E0 A7AD0030 */  sh         $t5, 0x30($sp)
    /* 259824 802DA0E4 A7AE0032 */  sh         $t6, 0x32($sp)
    /* 259828 802DA0E8 0C0207C6 */  jal        func_80081F18_90EC8
    /* 25982C 802DA0EC A7AF0034 */   sh        $t7, 0x34($sp)
    /* 259830 802DA0F0 305900FF */  andi       $t9, $v0, 0xFF
    /* 259834 802DA0F4 24010003 */  addiu      $at, $zero, 0x3
    /* 259838 802DA0F8 17210005 */  bne        $t9, $at, .L802DA110_259850
    /* 25983C 802DA0FC 8FA30020 */   lw        $v1, 0x20($sp)
    /* 259840 802DA100 8C680020 */  lw         $t0, 0x20($v1)
    /* 259844 802DA104 2401DFFF */  addiu      $at, $zero, -0x2001
    /* 259848 802DA108 01014824 */  and        $t1, $t0, $at
    /* 25984C 802DA10C AC690020 */  sw         $t1, 0x20($v1)
  .L802DA110_259850:
    /* 259850 802DA110 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 259854 802DA114 27BD0038 */  addiu      $sp, $sp, 0x38
    /* 259858 802DA118 03E00008 */  jr         $ra
    /* 25985C 802DA11C 00000000 */   nop
endlabel func_802DA054_259794
