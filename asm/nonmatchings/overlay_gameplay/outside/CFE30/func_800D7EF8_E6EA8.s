nonmatching func_800D7EF8_E6EA8, 0xBC

glabel func_800D7EF8_E6EA8
    /* E6EA8 800D7EF8 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* E6EAC 800D7EFC AFBF0014 */  sw         $ra, 0x14($sp)
    /* E6EB0 800D7F00 AFA40028 */  sw         $a0, 0x28($sp)
    /* E6EB4 800D7F04 AFA5002C */  sw         $a1, 0x2C($sp)
    /* E6EB8 800D7F08 AFA60030 */  sw         $a2, 0x30($sp)
    /* E6EBC 800D7F0C AFA70034 */  sw         $a3, 0x34($sp)
    /* E6EC0 800D7F10 A7A60032 */  sh         $a2, 0x32($sp)
    /* E6EC4 800D7F14 24050001 */  addiu      $a1, $zero, 0x1
    /* E6EC8 800D7F18 0C0305ED */  jal        func_800C17B4_D0764
    /* E6ECC 800D7F1C 24040012 */   addiu     $a0, $zero, 0x12
    /* E6ED0 800D7F20 00024400 */  sll        $t0, $v0, 16
    /* E6ED4 800D7F24 0008C403 */  sra        $t8, $t0, 16
    /* E6ED8 800D7F28 2401FFFD */  addiu      $at, $zero, -0x3
    /* E6EDC 800D7F2C 03004025 */  or         $t0, $t8, $zero
    /* E6EE0 800D7F30 87A4002A */  lh         $a0, 0x2A($sp)
    /* E6EE4 800D7F34 87A5002E */  lh         $a1, 0x2E($sp)
    /* E6EE8 800D7F38 10410019 */  beq        $v0, $at, .L800D7FA0_E6F50
    /* E6EEC 800D7F3C 87A60032 */   lh        $a2, 0x32($sp)
    /* E6EF0 800D7F40 0018C8C0 */  sll        $t9, $t8, 3
    /* E6EF4 800D7F44 0338C823 */  subu       $t9, $t9, $t8
    /* E6EF8 800D7F48 3C098015 */  lui        $t1, %hi(D_80154318)
    /* E6EFC 800D7F4C 25294318 */  addiu      $t1, $t1, %lo(D_80154318)
    /* E6F00 800D7F50 0019C880 */  sll        $t9, $t9, 2
    /* E6F04 800D7F54 03291821 */  addu       $v1, $t9, $t1
    /* E6F08 800D7F58 87AA0036 */  lh         $t2, 0x36($sp)
    /* E6F0C 800D7F5C 248B0005 */  addiu      $t3, $a0, 0x5
    /* E6F10 800D7F60 24AC0001 */  addiu      $t4, $a1, 0x1
    /* E6F14 800D7F64 24CD0005 */  addiu      $t5, $a2, 0x5
    /* E6F18 800D7F68 A4640008 */  sh         $a0, 0x8($v1)
    /* E6F1C 800D7F6C A465000A */  sh         $a1, 0xA($v1)
    /* E6F20 800D7F70 A466000C */  sh         $a2, 0xC($v1)
    /* E6F24 800D7F74 A46B000E */  sh         $t3, 0xE($v1)
    /* E6F28 800D7F78 A46C0010 */  sh         $t4, 0x10($v1)
    /* E6F2C 800D7F7C A46D0012 */  sh         $t5, 0x12($v1)
    /* E6F30 800D7F80 AFA3001C */  sw         $v1, 0x1C($sp)
    /* E6F34 800D7F84 00003825 */  or         $a3, $zero, $zero
    /* E6F38 800D7F88 A7B80020 */  sh         $t8, 0x20($sp)
    /* E6F3C 800D7F8C 0C03089D */  jal        func_800C2274_D1224
    /* E6F40 800D7F90 A46A0002 */   sh        $t2, 0x2($v1)
    /* E6F44 800D7F94 8FA3001C */  lw         $v1, 0x1C($sp)
    /* E6F48 800D7F98 87A80020 */  lh         $t0, 0x20($sp)
    /* E6F4C 800D7F9C A0620014 */  sb         $v0, 0x14($v1)
  .L800D7FA0_E6F50:
    /* E6F50 800D7FA0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* E6F54 800D7FA4 27BD0028 */  addiu      $sp, $sp, 0x28
    /* E6F58 800D7FA8 01001025 */  or         $v0, $t0, $zero
    /* E6F5C 800D7FAC 03E00008 */  jr         $ra
    /* E6F60 800D7FB0 00000000 */   nop
endlabel func_800D7EF8_E6EA8
