nonmatching func_802D4EE4_319034, 0x68

glabel func_802D4EE4_319034
    /* 319034 802D4EE4 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 319038 802D4EE8 00047400 */  sll        $t6, $a0, 16
    /* 31903C 802D4EEC 000E7C03 */  sra        $t7, $t6, 16
    /* 319040 802D4EF0 AFA40020 */  sw         $a0, 0x20($sp)
    /* 319044 802D4EF4 2401FFFD */  addiu      $at, $zero, -0x3
    /* 319048 802D4EF8 01E02025 */  or         $a0, $t7, $zero
    /* 31904C 802D4EFC 11E1000F */  beq        $t7, $at, .L802D4F3C_31908C
    /* 319050 802D4F00 AFBF0014 */   sw        $ra, 0x14($sp)
    /* 319054 802D4F04 000FC0C0 */  sll        $t8, $t7, 3
    /* 319058 802D4F08 030FC023 */  subu       $t8, $t8, $t7
    /* 31905C 802D4F0C 0018C080 */  sll        $t8, $t8, 2
    /* 319060 802D4F10 3C198015 */  lui        $t9, %hi(D_8015432C)
    /* 319064 802D4F14 0338C821 */  addu       $t9, $t9, $t8
    /* 319068 802D4F18 8739432C */  lh         $t9, %lo(D_8015432C)($t9)
    /* 31906C 802D4F1C 2405000B */  addiu      $a1, $zero, 0xB
    /* 319070 802D4F20 24060001 */  addiu      $a2, $zero, 0x1
    /* 319074 802D4F24 0C030789 */  jal        func_800C1E24_D0DD4
    /* 319078 802D4F28 A7B9001E */   sh        $t9, 0x1E($sp)
    /* 31907C 802D4F2C 87A4001E */  lh         $a0, 0x1E($sp)
    /* 319080 802D4F30 2405000B */  addiu      $a1, $zero, 0xB
    /* 319084 802D4F34 0C030789 */  jal        func_800C1E24_D0DD4
    /* 319088 802D4F38 24060001 */   addiu     $a2, $zero, 0x1
  .L802D4F3C_31908C:
    /* 31908C 802D4F3C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 319090 802D4F40 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 319094 802D4F44 03E00008 */  jr         $ra
    /* 319098 802D4F48 00000000 */   nop
endlabel func_802D4EE4_319034
