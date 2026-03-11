nonmatching func_802D4DA8_318EF8, 0x13C

glabel func_802D4DA8_318EF8
    /* 318EF8 802D4DA8 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 318EFC 802D4DAC AFA7003C */  sw         $a3, 0x3C($sp)
    /* 318F00 802D4DB0 87A7003E */  lh         $a3, 0x3E($sp)
    /* 318F04 802D4DB4 AFB00028 */  sw         $s0, 0x28($sp)
    /* 318F08 802D4DB8 87B00042 */  lh         $s0, 0x42($sp)
    /* 318F0C 802D4DBC AFBF002C */  sw         $ra, 0x2C($sp)
    /* 318F10 802D4DC0 AFA40030 */  sw         $a0, 0x30($sp)
    /* 318F14 802D4DC4 AFA50034 */  sw         $a1, 0x34($sp)
    /* 318F18 802D4DC8 AFA60038 */  sw         $a2, 0x38($sp)
    /* 318F1C 802D4DCC 2419FFF5 */  addiu      $t9, $zero, -0xB
    /* 318F20 802D4DD0 24080001 */  addiu      $t0, $zero, 0x1
    /* 318F24 802D4DD4 AFA8001C */  sw         $t0, 0x1C($sp)
    /* 318F28 802D4DD8 AFB90018 */  sw         $t9, 0x18($sp)
    /* 318F2C 802D4DDC 87A6003A */  lh         $a2, 0x3A($sp)
    /* 318F30 802D4DE0 87A50036 */  lh         $a1, 0x36($sp)
    /* 318F34 802D4DE4 87A40032 */  lh         $a0, 0x32($sp)
    /* 318F38 802D4DE8 04E10003 */  bgez       $a3, .L802D4DF8_318F48
    /* 318F3C 802D4DEC 00077043 */   sra       $t6, $a3, 1
    /* 318F40 802D4DF0 24E10001 */  addiu      $at, $a3, 0x1
    /* 318F44 802D4DF4 00017043 */  sra        $t6, $at, 1
  .L802D4DF8_318F48:
    /* 318F48 802D4DF8 000E7C00 */  sll        $t7, $t6, 16
    /* 318F4C 802D4DFC 000F3C03 */  sra        $a3, $t7, 16
    /* 318F50 802D4E00 AFB00010 */  sw         $s0, 0x10($sp)
    /* 318F54 802D4E04 0C034927 */  jal        func_800D249C_E144C
    /* 318F58 802D4E08 AFB00014 */   sw        $s0, 0x14($sp)
    /* 318F5C 802D4E0C 00028400 */  sll        $s0, $v0, 16
    /* 318F60 802D4E10 00104C03 */  sra        $t1, $s0, 16
    /* 318F64 802D4E14 2401FFFD */  addiu      $at, $zero, -0x3
    /* 318F68 802D4E18 1041002C */  beq        $v0, $at, .L802D4ECC_31901C
    /* 318F6C 802D4E1C 01208025 */   or        $s0, $t1, $zero
    /* 318F70 802D4E20 00092400 */  sll        $a0, $t1, 16
    /* 318F74 802D4E24 00045403 */  sra        $t2, $a0, 16
    /* 318F78 802D4E28 0C034969 */  jal        func_800D25A4_E1554
    /* 318F7C 802D4E2C 01402025 */   or        $a0, $t2, $zero
    /* 318F80 802D4E30 87A20042 */  lh         $v0, 0x42($sp)
    /* 318F84 802D4E34 24010003 */  addiu      $at, $zero, 0x3
    /* 318F88 802D4E38 240FFFF5 */  addiu      $t7, $zero, -0xB
    /* 318F8C 802D4E3C 0041001A */  div        $zero, $v0, $at
    /* 318F90 802D4E40 00006012 */  mflo       $t4
    /* 318F94 802D4E44 000C6C40 */  sll        $t5, $t4, 17
    /* 318F98 802D4E48 000D1403 */  sra        $v0, $t5, 16
    /* 318F9C 802D4E4C 24180002 */  addiu      $t8, $zero, 0x2
    /* 318FA0 802D4E50 AFB8001C */  sw         $t8, 0x1C($sp)
    /* 318FA4 802D4E54 AFA20010 */  sw         $v0, 0x10($sp)
    /* 318FA8 802D4E58 AFA20014 */  sw         $v0, 0x14($sp)
    /* 318FAC 802D4E5C AFAF0018 */  sw         $t7, 0x18($sp)
    /* 318FB0 802D4E60 87A40032 */  lh         $a0, 0x32($sp)
    /* 318FB4 802D4E64 87A50036 */  lh         $a1, 0x36($sp)
    /* 318FB8 802D4E68 87A6003A */  lh         $a2, 0x3A($sp)
    /* 318FBC 802D4E6C 0C034927 */  jal        func_800D249C_E144C
    /* 318FC0 802D4E70 87A7003E */   lh        $a3, 0x3E($sp)
    /* 318FC4 802D4E74 2401FFFD */  addiu      $at, $zero, -0x3
    /* 318FC8 802D4E78 1041000C */  beq        $v0, $at, .L802D4EAC_318FFC
    /* 318FCC 802D4E7C 2404001C */   addiu     $a0, $zero, 0x1C
    /* 318FD0 802D4E80 02040019 */  multu      $s0, $a0
    /* 318FD4 802D4E84 3C038015 */  lui        $v1, %hi(D_80154318)
    /* 318FD8 802D4E88 24634318 */  addiu      $v1, $v1, %lo(D_80154318)
    /* 318FDC 802D4E8C 0000C812 */  mflo       $t9
    /* 318FE0 802D4E90 00794021 */  addu       $t0, $v1, $t9
    /* 318FE4 802D4E94 A5020014 */  sh         $v0, 0x14($t0)
    /* 318FE8 802D4E98 00440019 */  multu      $v0, $a0
    /* 318FEC 802D4E9C 00004812 */  mflo       $t1
    /* 318FF0 802D4EA0 00695021 */  addu       $t2, $v1, $t1
    /* 318FF4 802D4EA4 10000009 */  b          .L802D4ECC_31901C
    /* 318FF8 802D4EA8 A5500014 */   sh        $s0, 0x14($t2)
  .L802D4EAC_318FFC:
    /* 318FFC 802D4EAC 00102400 */  sll        $a0, $s0, 16
    /* 319000 802D4EB0 00045C03 */  sra        $t3, $a0, 16
    /* 319004 802D4EB4 01602025 */  or         $a0, $t3, $zero
    /* 319008 802D4EB8 2405000B */  addiu      $a1, $zero, 0xB
    /* 31900C 802D4EBC 0C030693 */  jal        func_800C1A4C_D09FC
    /* 319010 802D4EC0 24060001 */   addiu     $a2, $zero, 0x1
    /* 319014 802D4EC4 10000002 */  b          .L802D4ED0_319020
    /* 319018 802D4EC8 2402FFFD */   addiu     $v0, $zero, -0x3
  .L802D4ECC_31901C:
    /* 31901C 802D4ECC 02001025 */  or         $v0, $s0, $zero
  .L802D4ED0_319020:
    /* 319020 802D4ED0 8FBF002C */  lw         $ra, 0x2C($sp)
    /* 319024 802D4ED4 8FB00028 */  lw         $s0, 0x28($sp)
    /* 319028 802D4ED8 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 31902C 802D4EDC 03E00008 */  jr         $ra
    /* 319030 802D4EE0 00000000 */   nop
endlabel func_802D4DA8_318EF8
