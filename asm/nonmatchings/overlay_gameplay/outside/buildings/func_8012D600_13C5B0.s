nonmatching func_8012D600_13C5B0, 0x84

glabel func_8012D600_13C5B0
    /* 13C5B0 8012D600 3C068016 */  lui        $a2, %hi(D_8015FF50)
    /* 13C5B4 8012D604 2403FFFF */  addiu      $v1, $zero, -0x1
    /* 13C5B8 8012D608 2402FFFF */  addiu      $v0, $zero, -0x1
    /* 13C5BC 8012D60C 24C6FF50 */  addiu      $a2, $a2, %lo(D_8015FF50)
    /* 13C5C0 8012D610 24050018 */  addiu      $a1, $zero, 0x18
  .L8012D614_13C5C4:
    /* 13C5C4 8012D614 8CC40028 */  lw         $a0, 0x28($a2)
    /* 13C5C8 8012D618 0082082B */  sltu       $at, $a0, $v0
    /* 13C5CC 8012D61C 50200004 */  beql       $at, $zero, .L8012D630_13C5E0
    /* 13C5D0 8012D620 90CE002C */   lbu       $t6, 0x2C($a2)
    /* 13C5D4 8012D624 00801025 */  or         $v0, $a0, $zero
    /* 13C5D8 8012D628 00A01825 */  or         $v1, $a1, $zero
    /* 13C5DC 8012D62C 90CE002C */  lbu        $t6, 0x2C($a2)
  .L8012D630_13C5E0:
    /* 13C5E0 8012D630 00A02025 */  or         $a0, $a1, $zero
    /* 13C5E4 8012D634 15C00005 */  bnez       $t6, .L8012D64C_13C5FC
    /* 13C5E8 8012D638 3C0F8005 */   lui       $t7, %hi(D_80052A8C)
    /* 13C5EC 8012D63C 8DEF2A8C */  lw         $t7, %lo(D_80052A8C)($t7)
    /* 13C5F0 8012D640 00A01025 */  or         $v0, $a1, $zero
    /* 13C5F4 8012D644 03E00008 */  jr         $ra
    /* 13C5F8 8012D648 ACCF0028 */   sw        $t7, 0x28($a2)
  .L8012D64C_13C5FC:
    /* 13C5FC 8012D64C 24C6FFD0 */  addiu      $a2, $a2, -0x30
    /* 13C600 8012D650 14A0FFF0 */  bnez       $a1, .L8012D614_13C5C4
    /* 13C604 8012D654 24A5FFFF */   addiu     $a1, $a1, -0x1
    /* 13C608 8012D658 3C188005 */  lui        $t8, %hi(D_80052A8C)
    /* 13C60C 8012D65C 0003C880 */  sll        $t9, $v1, 2
    /* 13C610 8012D660 8F182A8C */  lw         $t8, %lo(D_80052A8C)($t8)
    /* 13C614 8012D664 0323C823 */  subu       $t9, $t9, $v1
    /* 13C618 8012D668 0019C900 */  sll        $t9, $t9, 4
    /* 13C61C 8012D66C 3C018016 */  lui        $at, %hi(D_8015FAF8)
    /* 13C620 8012D670 00390821 */  addu       $at, $at, $t9
    /* 13C624 8012D674 00601025 */  or         $v0, $v1, $zero
    /* 13C628 8012D678 AC38FAF8 */  sw         $t8, %lo(D_8015FAF8)($at)
    /* 13C62C 8012D67C 03E00008 */  jr         $ra
    /* 13C630 8012D680 00000000 */   nop
endlabel func_8012D600_13C5B0
