nonmatching func_800E0E9C_EFE4C, 0xB0

glabel func_800E0E9C_EFE4C
    /* EFE4C 800E0E9C 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* EFE50 800E0EA0 AFA60028 */  sw         $a2, 0x28($sp)
    /* EFE54 800E0EA4 97AE002A */  lhu        $t6, 0x2A($sp)
    /* EFE58 800E0EA8 3C188022 */  lui        $t8, %hi(D_80222A70)
    /* EFE5C 800E0EAC 8F182A70 */  lw         $t8, %lo(D_80222A70)($t8)
    /* EFE60 800E0EB0 AFA50024 */  sw         $a1, 0x24($sp)
    /* EFE64 800E0EB4 AFBF001C */  sw         $ra, 0x1C($sp)
    /* EFE68 800E0EB8 AFA40020 */  sw         $a0, 0x20($sp)
    /* EFE6C 800E0EBC 87A40022 */  lh         $a0, 0x22($sp)
    /* EFE70 800E0EC0 05C10003 */  bgez       $t6, .L800E0ED0_EFE80
    /* EFE74 800E0EC4 000E7843 */   sra       $t7, $t6, 1
    /* EFE78 800E0EC8 25C10001 */  addiu      $at, $t6, 0x1
    /* EFE7C 800E0ECC 00017843 */  sra        $t7, $at, 1
  .L800E0ED0_EFE80:
    /* EFE80 800E0ED0 01F82821 */  addu       $a1, $t7, $t8
    /* EFE84 800E0ED4 0005CC00 */  sll        $t9, $a1, 16
    /* EFE88 800E0ED8 00192C03 */  sra        $a1, $t9, 16
    /* EFE8C 800E0EDC 87A60026 */  lh         $a2, 0x26($sp)
    /* EFE90 800E0EE0 00003825 */  or         $a3, $zero, $zero
    /* EFE94 800E0EE4 0C0376D8 */  jal        func_800DDB60_ECB10
    /* EFE98 800E0EE8 AFAE0010 */   sw        $t6, 0x10($sp)
    /* EFE9C 800E0EEC 3C058022 */  lui        $a1, %hi(D_80222A70)
    /* EFEA0 800E0EF0 8CA52A70 */  lw         $a1, %lo(D_80222A70)($a1)
    /* EFEA4 800E0EF4 240B0002 */  addiu      $t3, $zero, 0x2
    /* EFEA8 800E0EF8 AFAB0010 */  sw         $t3, 0x10($sp)
    /* EFEAC 800E0EFC 24A50004 */  addiu      $a1, $a1, 0x4
    /* EFEB0 800E0F00 00054C00 */  sll        $t1, $a1, 16
    /* EFEB4 800E0F04 00092C03 */  sra        $a1, $t1, 16
    /* EFEB8 800E0F08 87A40022 */  lh         $a0, 0x22($sp)
    /* EFEBC 800E0F0C 87A60026 */  lh         $a2, 0x26($sp)
    /* EFEC0 800E0F10 0C037BCB */  jal        func_800DEF2C_EDEDC
    /* EFEC4 800E0F14 24070064 */   addiu     $a3, $zero, 0x64
    /* EFEC8 800E0F18 3C058022 */  lui        $a1, %hi(D_80222A70)
    /* EFECC 800E0F1C 8CA52A70 */  lw         $a1, %lo(D_80222A70)($a1)
    /* EFED0 800E0F20 87A40022 */  lh         $a0, 0x22($sp)
    /* EFED4 800E0F24 87A60026 */  lh         $a2, 0x26($sp)
    /* EFED8 800E0F28 24A50004 */  addiu      $a1, $a1, 0x4
    /* EFEDC 800E0F2C 00056400 */  sll        $t4, $a1, 16
    /* EFEE0 800E0F30 000C2C03 */  sra        $a1, $t4, 16
    /* EFEE4 800E0F34 0C04DCAD */  jal        func_801372B4_146264
    /* EFEE8 800E0F38 24070001 */   addiu     $a3, $zero, 0x1
    /* EFEEC 800E0F3C 8FBF001C */  lw         $ra, 0x1C($sp)
    /* EFEF0 800E0F40 27BD0020 */  addiu      $sp, $sp, 0x20
    /* EFEF4 800E0F44 03E00008 */  jr         $ra
    /* EFEF8 800E0F48 00000000 */   nop
endlabel func_800E0E9C_EFE4C
