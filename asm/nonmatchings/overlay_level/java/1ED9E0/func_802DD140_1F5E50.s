nonmatching func_802DD140_1F5E50, 0x104

glabel func_802DD140_1F5E50
    /* 1F5E50 802DD140 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 1F5E54 802DD144 AFA40028 */  sw         $a0, 0x28($sp)
    /* 1F5E58 802DD148 93AE002B */  lbu        $t6, 0x2B($sp)
    /* 1F5E5C 802DD14C 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 1F5E60 802DD150 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 1F5E64 802DD154 000E7880 */  sll        $t7, $t6, 2
    /* 1F5E68 802DD158 01EE7821 */  addu       $t7, $t7, $t6
    /* 1F5E6C 802DD15C 000F7900 */  sll        $t7, $t7, 4
    /* 1F5E70 802DD160 01F81021 */  addu       $v0, $t7, $t8
    /* 1F5E74 802DD164 8C430020 */  lw         $v1, 0x20($v0)
    /* 1F5E78 802DD168 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 1F5E7C 802DD16C AFA5002C */  sw         $a1, 0x2C($sp)
    /* 1F5E80 802DD170 30790600 */  andi       $t9, $v1, 0x600
    /* 1F5E84 802DD174 1320002F */  beqz       $t9, .L802DD234_1F5F44
    /* 1F5E88 802DD178 3C014000 */   lui       $at, (0x40000000 >> 16)
    /* 1F5E8C 802DD17C 00614025 */  or         $t0, $v1, $at
    /* 1F5E90 802DD180 000852C0 */  sll        $t2, $t0, 11
    /* 1F5E94 802DD184 05400014 */  bltz       $t2, .L802DD1D8_1F5EE8
    /* 1F5E98 802DD188 AC480020 */   sw        $t0, 0x20($v0)
    /* 1F5E9C 802DD18C 904B001A */  lbu        $t3, 0x1A($v0)
    /* 1F5EA0 802DD190 3C078025 */  lui        $a3, %hi(D_8025668C)
    /* 1F5EA4 802DD194 240D0004 */  addiu      $t5, $zero, 0x4
    /* 1F5EA8 802DD198 000B6080 */  sll        $t4, $t3, 2
    /* 1F5EAC 802DD19C 018B6023 */  subu       $t4, $t4, $t3
    /* 1F5EB0 802DD1A0 000C6080 */  sll        $t4, $t4, 2
    /* 1F5EB4 802DD1A4 018B6021 */  addu       $t4, $t4, $t3
    /* 1F5EB8 802DD1A8 000C60C0 */  sll        $t4, $t4, 3
    /* 1F5EBC 802DD1AC 00EC3821 */  addu       $a3, $a3, $t4
    /* 1F5EC0 802DD1B0 94E7668C */  lhu        $a3, %lo(D_8025668C)($a3)
    /* 1F5EC4 802DD1B4 AFAD0010 */  sw         $t5, 0x10($sp)
    /* 1F5EC8 802DD1B8 84440000 */  lh         $a0, 0x0($v0)
    /* 1F5ECC 802DD1BC 84450002 */  lh         $a1, 0x2($v0)
    /* 1F5ED0 802DD1C0 84460004 */  lh         $a2, 0x4($v0)
    /* 1F5ED4 802DD1C4 0C037E12 */  jal        func_800DF848_EE7F8
    /* 1F5ED8 802DD1C8 AFA20024 */   sw        $v0, 0x24($sp)
    /* 1F5EDC 802DD1CC 8FA20024 */  lw         $v0, 0x24($sp)
    /* 1F5EE0 802DD1D0 240E0050 */  addiu      $t6, $zero, 0x50
    /* 1F5EE4 802DD1D4 A44E002C */  sh         $t6, 0x2C($v0)
  .L802DD1D8_1F5EE8:
    /* 1F5EE8 802DD1D8 93A4002B */  lbu        $a0, 0x2B($sp)
    /* 1F5EEC 802DD1DC 0C0B738D */  jal        func_802DCE34_1F5B44
    /* 1F5EF0 802DD1E0 AFA20024 */   sw        $v0, 0x24($sp)
    /* 1F5EF4 802DD1E4 8FA20024 */  lw         $v0, 0x24($sp)
    /* 1F5EF8 802DD1E8 24010001 */  addiu      $at, $zero, 0x1
    /* 1F5EFC 802DD1EC 3C078025 */  lui        $a3, %hi(D_8025668C)
    /* 1F5F00 802DD1F0 844F002C */  lh         $t7, 0x2C($v0)
    /* 1F5F04 802DD1F4 24080004 */  addiu      $t0, $zero, 0x4
    /* 1F5F08 802DD1F8 55E1000F */  bnel       $t7, $at, .L802DD238_1F5F48
    /* 1F5F0C 802DD1FC 8FBF001C */   lw        $ra, 0x1C($sp)
    /* 1F5F10 802DD200 9058001A */  lbu        $t8, 0x1A($v0)
    /* 1F5F14 802DD204 84440000 */  lh         $a0, 0x0($v0)
    /* 1F5F18 802DD208 84450002 */  lh         $a1, 0x2($v0)
    /* 1F5F1C 802DD20C 0018C880 */  sll        $t9, $t8, 2
    /* 1F5F20 802DD210 0338C823 */  subu       $t9, $t9, $t8
    /* 1F5F24 802DD214 0019C880 */  sll        $t9, $t9, 2
    /* 1F5F28 802DD218 0338C821 */  addu       $t9, $t9, $t8
    /* 1F5F2C 802DD21C 0019C8C0 */  sll        $t9, $t9, 3
    /* 1F5F30 802DD220 00F93821 */  addu       $a3, $a3, $t9
    /* 1F5F34 802DD224 94E7668C */  lhu        $a3, %lo(D_8025668C)($a3)
    /* 1F5F38 802DD228 84460004 */  lh         $a2, 0x4($v0)
    /* 1F5F3C 802DD22C 0C037E12 */  jal        func_800DF848_EE7F8
    /* 1F5F40 802DD230 AFA80010 */   sw        $t0, 0x10($sp)
  .L802DD234_1F5F44:
    /* 1F5F44 802DD234 8FBF001C */  lw         $ra, 0x1C($sp)
  .L802DD238_1F5F48:
    /* 1F5F48 802DD238 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 1F5F4C 802DD23C 03E00008 */  jr         $ra
    /* 1F5F50 802DD240 00000000 */   nop
endlabel func_802DD140_1F5E50
