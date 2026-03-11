nonmatching func_80085D40_16DE00, 0x1E8

glabel func_80085D40_16DE00
    /* 16DE00 80085D40 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 16DE04 80085D44 AFA40040 */  sw         $a0, 0x40($sp)
    /* 16DE08 80085D48 93AE0043 */  lbu        $t6, 0x43($sp)
    /* 16DE0C 80085D4C 3C188010 */  lui        $t8, %hi(D_800FB6F8)
    /* 16DE10 80085D50 AFB40028 */  sw         $s4, 0x28($sp)
    /* 16DE14 80085D54 000E7880 */  sll        $t7, $t6, 2
    /* 16DE18 80085D58 01EE7823 */  subu       $t7, $t7, $t6
    /* 16DE1C 80085D5C 000F7880 */  sll        $t7, $t7, 2
    /* 16DE20 80085D60 2718B6F8 */  addiu      $t8, $t8, %lo(D_800FB6F8)
    /* 16DE24 80085D64 AFB30024 */  sw         $s3, 0x24($sp)
    /* 16DE28 80085D68 01F8A021 */  addu       $s4, $t7, $t8
    /* 16DE2C 80085D6C 86930006 */  lh         $s3, 0x6($s4)
    /* 16DE30 80085D70 2401FFFB */  addiu      $at, $zero, -0x5
    /* 16DE34 80085D74 AFBF003C */  sw         $ra, 0x3C($sp)
    /* 16DE38 80085D78 AFBE0038 */  sw         $fp, 0x38($sp)
    /* 16DE3C 80085D7C AFB70034 */  sw         $s7, 0x34($sp)
    /* 16DE40 80085D80 AFB60030 */  sw         $s6, 0x30($sp)
    /* 16DE44 80085D84 AFB5002C */  sw         $s5, 0x2C($sp)
    /* 16DE48 80085D88 AFB20020 */  sw         $s2, 0x20($sp)
    /* 16DE4C 80085D8C AFB1001C */  sw         $s1, 0x1C($sp)
    /* 16DE50 80085D90 12610059 */  beq        $s3, $at, .L80085EF8_16DFB8
    /* 16DE54 80085D94 AFB00018 */   sw        $s0, 0x18($sp)
    /* 16DE58 80085D98 2401FFFA */  addiu      $at, $zero, -0x6
    /* 16DE5C 80085D9C 12610056 */  beq        $s3, $at, .L80085EF8_16DFB8
    /* 16DE60 80085DA0 241E0001 */   addiu     $fp, $zero, 0x1
    /* 16DE64 80085DA4 3C158010 */  lui        $s5, %hi(D_800FB7B0)
    /* 16DE68 80085DA8 26B5B7B0 */  addiu      $s5, $s5, %lo(D_800FB7B0)
    /* 16DE6C 80085DAC 241700F1 */  addiu      $s7, $zero, 0xF1
    /* 16DE70 80085DB0 24160016 */  addiu      $s6, $zero, 0x16
  .L80085DB4_16DE74:
    /* 16DE74 80085DB4 02760019 */  multu      $s3, $s6
    /* 16DE78 80085DB8 0000C812 */  mflo       $t9
    /* 16DE7C 80085DBC 02B99021 */  addu       $s2, $s5, $t9
    /* 16DE80 80085DC0 92480011 */  lbu        $t0, 0x11($s2)
    /* 16DE84 80085DC4 26500008 */  addiu      $s0, $s2, 0x8
    /* 16DE88 80085DC8 02008825 */  or         $s1, $s0, $zero
    /* 16DE8C 80085DCC 2901001E */  slti       $at, $t0, 0x1E
    /* 16DE90 80085DD0 50200017 */  beql       $at, $zero, .L80085E30_16DEF0
    /* 16DE94 80085DD4 920D000A */   lbu       $t5, 0xA($s0)
    /* 16DE98 80085DD8 86890002 */  lh         $t1, 0x2($s4)
    /* 16DE9C 80085DDC 00132400 */  sll        $a0, $s3, 16
    /* 16DEA0 80085DE0 00045C03 */  sra        $t3, $a0, 16
    /* 16DEA4 80085DE4 16E9000A */  bne        $s7, $t1, .L80085E10_16DED0
    /* 16DEA8 80085DE8 01602025 */   or        $a0, $t3, $zero
    /* 16DEAC 80085DEC 928A0004 */  lbu        $t2, 0x4($s4)
    /* 16DEB0 80085DF0 57CA0008 */  bnel       $fp, $t2, .L80085E14_16DED4
    /* 16DEB4 80085DF4 86500004 */   lh        $s0, 0x4($s2)
    /* 16DEB8 80085DF8 0C020E6E */  jal        func_800839B8_16BA78
    /* 16DEBC 80085DFC 93A40043 */   lbu       $a0, 0x43($sp)
    /* 16DEC0 80085E00 0C020CC0 */  jal        func_80083300_16B3C0
    /* 16DEC4 80085E04 93A40043 */   lbu       $a0, 0x43($sp)
    /* 16DEC8 80085E08 1000003C */  b          .L80085EFC_16DFBC
    /* 16DECC 80085E0C 8FBF003C */   lw        $ra, 0x3C($sp)
  .L80085E10_16DED0:
    /* 16DED0 80085E10 86500004 */  lh         $s0, 0x4($s2)
  .L80085E14_16DED4:
    /* 16DED4 80085E14 0C020D7C */  jal        func_800835F0_16B6B0
    /* 16DED8 80085E18 93A50043 */   lbu       $a1, 0x43($sp)
    /* 16DEDC 80085E1C 00109C00 */  sll        $s3, $s0, 16
    /* 16DEE0 80085E20 00136403 */  sra        $t4, $s3, 16
    /* 16DEE4 80085E24 1000002F */  b          .L80085EE4_16DFA4
    /* 16DEE8 80085E28 01809825 */   or        $s3, $t4, $zero
    /* 16DEEC 80085E2C 920D000A */  lbu        $t5, 0xA($s0)
  .L80085E30_16DEF0:
    /* 16DEF0 80085E30 55A0000B */  bnel       $t5, $zero, .L80085E60_16DF20
    /* 16DEF4 80085E34 92180009 */   lbu       $t8, 0x9($s0)
    /* 16DEF8 80085E38 92020009 */  lbu        $v0, 0x9($s0)
    /* 16DEFC 80085E3C 240E0001 */  addiu      $t6, $zero, 0x1
    /* 16DF00 80085E40 284100AB */  slti       $at, $v0, 0xAB
    /* 16DF04 80085E44 14200003 */  bnez       $at, .L80085E54_16DF14
    /* 16DF08 80085E48 244F0013 */   addiu     $t7, $v0, 0x13
    /* 16DF0C 80085E4C 10000006 */  b          .L80085E68_16DF28
    /* 16DF10 80085E50 A20E000A */   sb        $t6, 0xA($s0)
  .L80085E54_16DF14:
    /* 16DF14 80085E54 10000004 */  b          .L80085E68_16DF28
    /* 16DF18 80085E58 A20F0009 */   sb        $t7, 0x9($s0)
    /* 16DF1C 80085E5C 92180009 */  lbu        $t8, 0x9($s0)
  .L80085E60_16DF20:
    /* 16DF20 80085E60 2719FFE7 */  addiu      $t9, $t8, -0x19
    /* 16DF24 80085E64 A2190009 */  sb         $t9, 0x9($s0)
  .L80085E68_16DF28:
    /* 16DF28 80085E68 0C000E38 */  jal        func_800038E0_44E0
    /* 16DF2C 80085E6C 00000000 */   nop
    /* 16DF30 80085E70 86080002 */  lh         $t0, 0x2($s0)
    /* 16DF34 80085E74 04410004 */  bgez       $v0, .L80085E88_16DF48
    /* 16DF38 80085E78 30490001 */   andi      $t1, $v0, 0x1
    /* 16DF3C 80085E7C 11200002 */  beqz       $t1, .L80085E88_16DF48
    /* 16DF40 80085E80 00000000 */   nop
    /* 16DF44 80085E84 2529FFFE */  addiu      $t1, $t1, -0x2
  .L80085E88_16DF48:
    /* 16DF48 80085E88 01095021 */  addu       $t2, $t0, $t1
    /* 16DF4C 80085E8C 254B0002 */  addiu      $t3, $t2, 0x2
    /* 16DF50 80085E90 0C000E38 */  jal        func_800038E0_44E0
    /* 16DF54 80085E94 A60B0002 */   sh        $t3, 0x2($s0)
    /* 16DF58 80085E98 864C0002 */  lh         $t4, 0x2($s2)
    /* 16DF5C 80085E9C 04410004 */  bgez       $v0, .L80085EB0_16DF70
    /* 16DF60 80085EA0 304D0001 */   andi      $t5, $v0, 0x1
    /* 16DF64 80085EA4 11A00002 */  beqz       $t5, .L80085EB0_16DF70
    /* 16DF68 80085EA8 00000000 */   nop
    /* 16DF6C 80085EAC 25ADFFFE */  addiu      $t5, $t5, -0x2
  .L80085EB0_16DF70:
    /* 16DF70 80085EB0 018D7021 */  addu       $t6, $t4, $t5
    /* 16DF74 80085EB4 25CF0002 */  addiu      $t7, $t6, 0x2
    /* 16DF78 80085EB8 A64F0002 */  sh         $t7, 0x2($s2)
    /* 16DF7C 80085EBC 92380006 */  lbu        $t8, 0x6($s1)
    /* 16DF80 80085EC0 92280007 */  lbu        $t0, 0x7($s1)
    /* 16DF84 80085EC4 922A0008 */  lbu        $t2, 0x8($s1)
    /* 16DF88 80085EC8 2719FFFD */  addiu      $t9, $t8, -0x3
    /* 16DF8C 80085ECC 2509FFFD */  addiu      $t1, $t0, -0x3
    /* 16DF90 80085ED0 254BFFFD */  addiu      $t3, $t2, -0x3
    /* 16DF94 80085ED4 A2390006 */  sb         $t9, 0x6($s1)
    /* 16DF98 80085ED8 A2290007 */  sb         $t1, 0x7($s1)
    /* 16DF9C 80085EDC A22B0008 */  sb         $t3, 0x8($s1)
    /* 16DFA0 80085EE0 86530004 */  lh         $s3, 0x4($s2)
  .L80085EE4_16DFA4:
    /* 16DFA4 80085EE4 2401FFFB */  addiu      $at, $zero, -0x5
    /* 16DFA8 80085EE8 12610003 */  beq        $s3, $at, .L80085EF8_16DFB8
    /* 16DFAC 80085EEC 2401FFFA */   addiu     $at, $zero, -0x6
    /* 16DFB0 80085EF0 1661FFB0 */  bne        $s3, $at, .L80085DB4_16DE74
    /* 16DFB4 80085EF4 00000000 */   nop
  .L80085EF8_16DFB8:
    /* 16DFB8 80085EF8 8FBF003C */  lw         $ra, 0x3C($sp)
  .L80085EFC_16DFBC:
    /* 16DFBC 80085EFC 8FB00018 */  lw         $s0, 0x18($sp)
    /* 16DFC0 80085F00 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 16DFC4 80085F04 8FB20020 */  lw         $s2, 0x20($sp)
    /* 16DFC8 80085F08 8FB30024 */  lw         $s3, 0x24($sp)
    /* 16DFCC 80085F0C 8FB40028 */  lw         $s4, 0x28($sp)
    /* 16DFD0 80085F10 8FB5002C */  lw         $s5, 0x2C($sp)
    /* 16DFD4 80085F14 8FB60030 */  lw         $s6, 0x30($sp)
    /* 16DFD8 80085F18 8FB70034 */  lw         $s7, 0x34($sp)
    /* 16DFDC 80085F1C 8FBE0038 */  lw         $fp, 0x38($sp)
    /* 16DFE0 80085F20 03E00008 */  jr         $ra
    /* 16DFE4 80085F24 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_80085D40_16DE00
