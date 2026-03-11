nonmatching func_802D5BF8_1EE908, 0x1EC

glabel func_802D5BF8_1EE908
    /* 1EE908 802D5BF8 3C0E8004 */  lui        $t6, %hi(currentLevel)
    /* 1EE90C 802D5BFC 8DCE7F90 */  lw         $t6, %lo(currentLevel)($t6)
    /* 1EE910 802D5C00 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 1EE914 802D5C04 24010002 */  addiu      $at, $zero, 0x2
    /* 1EE918 802D5C08 15C10033 */  bne        $t6, $at, .L802D5CD8_1EE9E8
    /* 1EE91C 802D5C0C AFBF001C */   sw        $ra, 0x1C($sp)
    /* 1EE920 802D5C10 24042CB7 */  addiu      $a0, $zero, 0x2CB7
    /* 1EE924 802D5C14 0C02E134 */  jal        func_800B84D0_C7480
    /* 1EE928 802D5C18 2405BD06 */   addiu     $a1, $zero, -0x42FA
    /* 1EE92C 802D5C1C 00022A03 */  sra        $a1, $v0, 8
    /* 1EE930 802D5C20 00057C00 */  sll        $t7, $a1, 16
    /* 1EE934 802D5C24 000F2C03 */  sra        $a1, $t7, 16
    /* 1EE938 802D5C28 24042CB7 */  addiu      $a0, $zero, 0x2CB7
    /* 1EE93C 802D5C2C 2406BD06 */  addiu      $a2, $zero, -0x42FA
    /* 1EE940 802D5C30 0C0B536C */  jal        func_802D4DB0_1EDAC0
    /* 1EE944 802D5C34 2407008C */   addiu     $a3, $zero, 0x8C
    /* 1EE948 802D5C38 240425C3 */  addiu      $a0, $zero, 0x25C3
    /* 1EE94C 802D5C3C 0C02E134 */  jal        func_800B84D0_C7480
    /* 1EE950 802D5C40 2405BF1A */   addiu     $a1, $zero, -0x40E6
    /* 1EE954 802D5C44 00022A03 */  sra        $a1, $v0, 8
    /* 1EE958 802D5C48 0005CC00 */  sll        $t9, $a1, 16
    /* 1EE95C 802D5C4C 00192C03 */  sra        $a1, $t9, 16
    /* 1EE960 802D5C50 240425C3 */  addiu      $a0, $zero, 0x25C3
    /* 1EE964 802D5C54 2406BF1A */  addiu      $a2, $zero, -0x40E6
    /* 1EE968 802D5C58 0C0B536C */  jal        func_802D4DB0_1EDAC0
    /* 1EE96C 802D5C5C 24070064 */   addiu     $a3, $zero, 0x64
    /* 1EE970 802D5C60 24042751 */  addiu      $a0, $zero, 0x2751
    /* 1EE974 802D5C64 0C02E134 */  jal        func_800B84D0_C7480
    /* 1EE978 802D5C68 2405B2E1 */   addiu     $a1, $zero, -0x4D1F
    /* 1EE97C 802D5C6C 00022A03 */  sra        $a1, $v0, 8
    /* 1EE980 802D5C70 00054C00 */  sll        $t1, $a1, 16
    /* 1EE984 802D5C74 00092C03 */  sra        $a1, $t1, 16
    /* 1EE988 802D5C78 24042751 */  addiu      $a0, $zero, 0x2751
    /* 1EE98C 802D5C7C 2406B2E1 */  addiu      $a2, $zero, -0x4D1F
    /* 1EE990 802D5C80 0C0B536C */  jal        func_802D4DB0_1EDAC0
    /* 1EE994 802D5C84 240700AA */   addiu     $a3, $zero, 0xAA
    /* 1EE998 802D5C88 24042779 */  addiu      $a0, $zero, 0x2779
    /* 1EE99C 802D5C8C 0C02E134 */  jal        func_800B84D0_C7480
    /* 1EE9A0 802D5C90 2405CF83 */   addiu     $a1, $zero, -0x307D
    /* 1EE9A4 802D5C94 00022A03 */  sra        $a1, $v0, 8
    /* 1EE9A8 802D5C98 00055C00 */  sll        $t3, $a1, 16
    /* 1EE9AC 802D5C9C 000B2C03 */  sra        $a1, $t3, 16
    /* 1EE9B0 802D5CA0 24042779 */  addiu      $a0, $zero, 0x2779
    /* 1EE9B4 802D5CA4 2406CF83 */  addiu      $a2, $zero, -0x307D
    /* 1EE9B8 802D5CA8 0C0B536C */  jal        func_802D4DB0_1EDAC0
    /* 1EE9BC 802D5CAC 2407005A */   addiu     $a3, $zero, 0x5A
    /* 1EE9C0 802D5CB0 24042EA7 */  addiu      $a0, $zero, 0x2EA7
    /* 1EE9C4 802D5CB4 0C02E134 */  jal        func_800B84D0_C7480
    /* 1EE9C8 802D5CB8 2405B192 */   addiu     $a1, $zero, -0x4E6E
    /* 1EE9CC 802D5CBC 00022A03 */  sra        $a1, $v0, 8
    /* 1EE9D0 802D5CC0 00056C00 */  sll        $t5, $a1, 16
    /* 1EE9D4 802D5CC4 000D2C03 */  sra        $a1, $t5, 16
    /* 1EE9D8 802D5CC8 24042EAA */  addiu      $a0, $zero, 0x2EAA
    /* 1EE9DC 802D5CCC 2406B192 */  addiu      $a2, $zero, -0x4E6E
    /* 1EE9E0 802D5CD0 0C0B536C */  jal        func_802D4DB0_1EDAC0
    /* 1EE9E4 802D5CD4 24070064 */   addiu     $a3, $zero, 0x64
  .L802D5CD8_1EE9E8:
    /* 1EE9E8 802D5CD8 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 1EE9EC 802D5CDC 44816000 */  mtc1       $at, $f12
    /* 1EE9F0 802D5CE0 24050001 */  addiu      $a1, $zero, 0x1
    /* 1EE9F4 802D5CE4 2406003C */  addiu      $a2, $zero, 0x3C
    /* 1EE9F8 802D5CE8 0C04D742 */  jal        func_80135D08_144CB8
    /* 1EE9FC 802D5CEC 24070001 */   addiu     $a3, $zero, 0x1
    /* 1EEA00 802D5CF0 24042CB7 */  addiu      $a0, $zero, 0x2CB7
    /* 1EEA04 802D5CF4 0C02E134 */  jal        func_800B84D0_C7480
    /* 1EEA08 802D5CF8 2405BD06 */   addiu     $a1, $zero, -0x42FA
    /* 1EEA0C 802D5CFC 00022A03 */  sra        $a1, $v0, 8
    /* 1EEA10 802D5D00 24A50032 */  addiu      $a1, $a1, 0x32
    /* 1EEA14 802D5D04 00057C00 */  sll        $t7, $a1, 16
    /* 1EEA18 802D5D08 000F2C03 */  sra        $a1, $t7, 16
    /* 1EEA1C 802D5D0C 24042CB7 */  addiu      $a0, $zero, 0x2CB7
    /* 1EEA20 802D5D10 2406BD06 */  addiu      $a2, $zero, -0x42FA
    /* 1EEA24 802D5D14 240701F4 */  addiu      $a3, $zero, 0x1F4
    /* 1EEA28 802D5D18 AFA00010 */  sw         $zero, 0x10($sp)
    /* 1EEA2C 802D5D1C 0C037C0E */  jal        func_800DF038_EDFE8
    /* 1EEA30 802D5D20 AFA00014 */   sw        $zero, 0x14($sp)
    /* 1EEA34 802D5D24 24042751 */  addiu      $a0, $zero, 0x2751
    /* 1EEA38 802D5D28 0C02E134 */  jal        func_800B84D0_C7480
    /* 1EEA3C 802D5D2C 2405B2E1 */   addiu     $a1, $zero, -0x4D1F
    /* 1EEA40 802D5D30 00022A03 */  sra        $a1, $v0, 8
    /* 1EEA44 802D5D34 24A50032 */  addiu      $a1, $a1, 0x32
    /* 1EEA48 802D5D38 0005CC00 */  sll        $t9, $a1, 16
    /* 1EEA4C 802D5D3C 00192C03 */  sra        $a1, $t9, 16
    /* 1EEA50 802D5D40 24042751 */  addiu      $a0, $zero, 0x2751
    /* 1EEA54 802D5D44 2406B2E1 */  addiu      $a2, $zero, -0x4D1F
    /* 1EEA58 802D5D48 240701F4 */  addiu      $a3, $zero, 0x1F4
    /* 1EEA5C 802D5D4C AFA00010 */  sw         $zero, 0x10($sp)
    /* 1EEA60 802D5D50 0C037C0E */  jal        func_800DF038_EDFE8
    /* 1EEA64 802D5D54 AFA00014 */   sw        $zero, 0x14($sp)
    /* 1EEA68 802D5D58 240425C3 */  addiu      $a0, $zero, 0x25C3
    /* 1EEA6C 802D5D5C 0C02E134 */  jal        func_800B84D0_C7480
    /* 1EEA70 802D5D60 2405BF1A */   addiu     $a1, $zero, -0x40E6
    /* 1EEA74 802D5D64 00022A03 */  sra        $a1, $v0, 8
    /* 1EEA78 802D5D68 24A5001E */  addiu      $a1, $a1, 0x1E
    /* 1EEA7C 802D5D6C 00054C00 */  sll        $t1, $a1, 16
    /* 1EEA80 802D5D70 00092C03 */  sra        $a1, $t1, 16
    /* 1EEA84 802D5D74 240425C3 */  addiu      $a0, $zero, 0x25C3
    /* 1EEA88 802D5D78 2406BF1A */  addiu      $a2, $zero, -0x40E6
    /* 1EEA8C 802D5D7C 2407012C */  addiu      $a3, $zero, 0x12C
    /* 1EEA90 802D5D80 AFA00010 */  sw         $zero, 0x10($sp)
    /* 1EEA94 802D5D84 0C037C0E */  jal        func_800DF038_EDFE8
    /* 1EEA98 802D5D88 AFA00014 */   sw        $zero, 0x14($sp)
    /* 1EEA9C 802D5D8C 24042EA7 */  addiu      $a0, $zero, 0x2EA7
    /* 1EEAA0 802D5D90 0C02E134 */  jal        func_800B84D0_C7480
    /* 1EEAA4 802D5D94 2405B192 */   addiu     $a1, $zero, -0x4E6E
    /* 1EEAA8 802D5D98 00022A03 */  sra        $a1, $v0, 8
    /* 1EEAAC 802D5D9C 24A5001E */  addiu      $a1, $a1, 0x1E
    /* 1EEAB0 802D5DA0 00055C00 */  sll        $t3, $a1, 16
    /* 1EEAB4 802D5DA4 000B2C03 */  sra        $a1, $t3, 16
    /* 1EEAB8 802D5DA8 24042EAA */  addiu      $a0, $zero, 0x2EAA
    /* 1EEABC 802D5DAC 2406B192 */  addiu      $a2, $zero, -0x4E6E
    /* 1EEAC0 802D5DB0 2407012C */  addiu      $a3, $zero, 0x12C
    /* 1EEAC4 802D5DB4 AFA00010 */  sw         $zero, 0x10($sp)
    /* 1EEAC8 802D5DB8 0C037C0E */  jal        func_800DF038_EDFE8
    /* 1EEACC 802D5DBC AFA00014 */   sw        $zero, 0x14($sp)
    /* 1EEAD0 802D5DC0 24040000 */  addiu      $a0, $zero, 0x0
    /* 1EEAD4 802D5DC4 0C001CB3 */  jal        func_800072CC_7ECC
    /* 1EEAD8 802D5DC8 24050015 */   addiu     $a1, $zero, 0x15
    /* 1EEADC 802D5DCC 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 1EEAE0 802D5DD0 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 1EEAE4 802D5DD4 03E00008 */  jr         $ra
    /* 1EEAE8 802D5DD8 00000000 */   nop
    /* 1EEAEC 802D5DDC 03E00008 */  jr         $ra
    /* 1EEAF0 802D5DE0 00000000 */   nop
endlabel func_802D5BF8_1EE908
