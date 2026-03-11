nonmatching func_8008E9DC_5EE8C, 0xD4

glabel func_8008E9DC_5EE8C
    /* 5EE8C 8008E9DC 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 5EE90 8008E9E0 AFA7002C */  sw         $a3, 0x2C($sp)
    /* 5EE94 8008E9E4 87AA002E */  lh         $t2, 0x2E($sp)
    /* 5EE98 8008E9E8 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 5EE9C 8008E9EC AFA40020 */  sw         $a0, 0x20($sp)
    /* 5EEA0 8008E9F0 AFA50024 */  sw         $a1, 0x24($sp)
    /* 5EEA4 8008E9F4 AFA60028 */  sw         $a2, 0x28($sp)
    /* 5EEA8 8008E9F8 00047400 */  sll        $t6, $a0, 16
    /* 5EEAC 8008E9FC 0005C400 */  sll        $t8, $a1, 16
    /* 5EEB0 8008EA00 00064400 */  sll        $t0, $a2, 16
    /* 5EEB4 8008EA04 00083403 */  sra        $a2, $t0, 16
    /* 5EEB8 8008EA08 00182C03 */  sra        $a1, $t8, 16
    /* 5EEBC 8008EA0C 000E2403 */  sra        $a0, $t6, 16
    /* 5EEC0 8008EA10 24070002 */  addiu      $a3, $zero, 0x2
    /* 5EEC4 8008EA14 0C02370D */  jal        func_8008DC34_5E0E4
    /* 5EEC8 8008EA18 AFAA0010 */   sw        $t2, 0x10($sp)
    /* 5EECC 8008EA1C 240100FF */  addiu      $at, $zero, 0xFF
    /* 5EED0 8008EA20 1041001F */  beq        $v0, $at, .L8008EAA0_5EF50
    /* 5EED4 8008EA24 93A4003F */   lbu       $a0, 0x3F($sp)
    /* 5EED8 8008EA28 93AD003B */  lbu        $t5, 0x3B($sp)
    /* 5EEDC 8008EA2C 00025880 */  sll        $t3, $v0, 2
    /* 5EEE0 8008EA30 01625821 */  addu       $t3, $t3, $v0
    /* 5EEE4 8008EA34 008D001A */  div        $zero, $a0, $t5
    /* 5EEE8 8008EA38 3C0C800E */  lui        $t4, %hi(D_800E1980)
    /* 5EEEC 8008EA3C 258C1980 */  addiu      $t4, $t4, %lo(D_800E1980)
    /* 5EEF0 8008EA40 000B5880 */  sll        $t3, $t3, 2
    /* 5EEF4 8008EA44 016C1821 */  addu       $v1, $t3, $t4
    /* 5EEF8 8008EA48 93AF0043 */  lbu        $t7, 0x43($sp)
    /* 5EEFC 8008EA4C 93B80047 */  lbu        $t8, 0x47($sp)
    /* 5EF00 8008EA50 93B9004B */  lbu        $t9, 0x4B($sp)
    /* 5EF04 8008EA54 83A80033 */  lb         $t0, 0x33($sp)
    /* 5EF08 8008EA58 83A90037 */  lb         $t1, 0x37($sp)
    /* 5EF0C 8008EA5C 00007012 */  mflo       $t6
    /* 5EF10 8008EA60 A064000D */  sb         $a0, 0xD($v1)
    /* 5EF14 8008EA64 A06E0012 */  sb         $t6, 0x12($v1)
    /* 5EF18 8008EA68 15A00002 */  bnez       $t5, .L8008EA74_5EF24
    /* 5EF1C 8008EA6C 00000000 */   nop
    /* 5EF20 8008EA70 0007000D */  break      7
  .L8008EA74_5EF24:
    /* 5EF24 8008EA74 2401FFFF */  addiu      $at, $zero, -0x1
    /* 5EF28 8008EA78 15A10004 */  bne        $t5, $at, .L8008EA8C_5EF3C
    /* 5EF2C 8008EA7C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 5EF30 8008EA80 14810002 */  bne        $a0, $at, .L8008EA8C_5EF3C
    /* 5EF34 8008EA84 00000000 */   nop
    /* 5EF38 8008EA88 0006000D */  break      6
  .L8008EA8C_5EF3C:
    /* 5EF3C 8008EA8C A06F0006 */  sb         $t7, 0x6($v1)
    /* 5EF40 8008EA90 A0780007 */  sb         $t8, 0x7($v1)
    /* 5EF44 8008EA94 A0790008 */  sb         $t9, 0x8($v1)
    /* 5EF48 8008EA98 A0680010 */  sb         $t0, 0x10($v1)
    /* 5EF4C 8008EA9C A0690011 */  sb         $t1, 0x11($v1)
  .L8008EAA0_5EF50:
    /* 5EF50 8008EAA0 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 5EF54 8008EAA4 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 5EF58 8008EAA8 03E00008 */  jr         $ra
    /* 5EF5C 8008EAAC 00000000 */   nop
endlabel func_8008E9DC_5EE8C
