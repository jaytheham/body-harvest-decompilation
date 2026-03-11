nonmatching func_802DBF34_1F4C44, 0x2FC

glabel func_802DBF34_1F4C44
    /* 1F4C44 802DBF34 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 1F4C48 802DBF38 AFA40040 */  sw         $a0, 0x40($sp)
    /* 1F4C4C 802DBF3C 93AE0043 */  lbu        $t6, 0x43($sp)
    /* 1F4C50 802DBF40 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 1F4C54 802DBF44 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 1F4C58 802DBF48 000E7880 */  sll        $t7, $t6, 2
    /* 1F4C5C 802DBF4C 01EE7821 */  addu       $t7, $t7, $t6
    /* 1F4C60 802DBF50 000F7900 */  sll        $t7, $t7, 4
    /* 1F4C64 802DBF54 01F81021 */  addu       $v0, $t7, $t8
    /* 1F4C68 802DBF58 8C430020 */  lw         $v1, 0x20($v0)
    /* 1F4C6C 802DBF5C AFBF0034 */  sw         $ra, 0x34($sp)
    /* 1F4C70 802DBF60 30790600 */  andi       $t9, $v1, 0x600
    /* 1F4C74 802DBF64 132000AE */  beqz       $t9, .L802DC220_1F4F30
    /* 1F4C78 802DBF68 000342C0 */   sll       $t0, $v1, 11
    /* 1F4C7C 802DBF6C 05000047 */  bltz       $t0, .L802DC08C_1F4D9C
    /* 1F4C80 802DBF70 00035040 */   sll       $t2, $v1, 1
    /* 1F4C84 802DBF74 93AB0043 */  lbu        $t3, 0x43($sp)
    /* 1F4C88 802DBF78 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* 1F4C8C 802DBF7C 00615025 */  or         $t2, $v1, $at
    /* 1F4C90 802DBF80 24097FFF */  addiu      $t1, $zero, 0x7FFF
    /* 1F4C94 802DBF84 314E0600 */  andi       $t6, $t2, 0x600
    /* 1F4C98 802DBF88 316C0001 */  andi       $t4, $t3, 0x1
    /* 1F4C9C 802DBF8C A449002C */  sh         $t1, 0x2C($v0)
    /* 1F4CA0 802DBF90 A4400010 */  sh         $zero, 0x10($v0)
    /* 1F4CA4 802DBF94 AC4A0020 */  sw         $t2, 0x20($v0)
    /* 1F4CA8 802DBF98 A4400038 */  sh         $zero, 0x38($v0)
    /* 1F4CAC 802DBF9C 11C000A0 */  beqz       $t6, .L802DC220_1F4F30
    /* 1F4CB0 802DBFA0 A44C0014 */   sh        $t4, 0x14($v0)
    /* 1F4CB4 802DBFA4 904F001A */  lbu        $t7, 0x1A($v0)
    /* 1F4CB8 802DBFA8 3C198025 */  lui        $t9, %hi(D_8025668C)
    /* 1F4CBC 802DBFAC 3C013FE8 */  lui        $at, (0x3FE80000 >> 16)
    /* 1F4CC0 802DBFB0 000FC080 */  sll        $t8, $t7, 2
    /* 1F4CC4 802DBFB4 030FC023 */  subu       $t8, $t8, $t7
    /* 1F4CC8 802DBFB8 0018C080 */  sll        $t8, $t8, 2
    /* 1F4CCC 802DBFBC 030FC021 */  addu       $t8, $t8, $t7
    /* 1F4CD0 802DBFC0 0018C0C0 */  sll        $t8, $t8, 3
    /* 1F4CD4 802DBFC4 0338C821 */  addu       $t9, $t9, $t8
    /* 1F4CD8 802DBFC8 8739668C */  lh         $t9, %lo(D_8025668C)($t9)
    /* 1F4CDC 802DBFCC 44814800 */  mtc1       $at, $f9
    /* 1F4CE0 802DBFD0 44804000 */  mtc1       $zero, $f8
    /* 1F4CE4 802DBFD4 44992000 */  mtc1       $t9, $f4
    /* 1F4CE8 802DBFD8 24070001 */  addiu      $a3, $zero, 0x1
    /* 1F4CEC 802DBFDC 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* 1F4CF0 802DBFE0 468021A1 */  cvt.d.w    $f6, $f4
    /* 1F4CF4 802DBFE4 84440000 */  lh         $a0, 0x0($v0)
    /* 1F4CF8 802DBFE8 84450002 */  lh         $a1, 0x2($v0)
    /* 1F4CFC 802DBFEC 84460004 */  lh         $a2, 0x4($v0)
    /* 1F4D00 802DBFF0 46283282 */  mul.d      $f10, $f6, $f8
    /* 1F4D04 802DBFF4 4448F800 */  cfc1       $t0, $31
    /* 1F4D08 802DBFF8 44C7F800 */  ctc1       $a3, $31
    /* 1F4D0C 802DBFFC 00000000 */  nop
    /* 1F4D10 802DC000 46205424 */  cvt.w.d    $f16, $f10
    /* 1F4D14 802DC004 4447F800 */  cfc1       $a3, $31
    /* 1F4D18 802DC008 00000000 */  nop
    /* 1F4D1C 802DC00C 30E70078 */  andi       $a3, $a3, 0x78
    /* 1F4D20 802DC010 50E00014 */  beql       $a3, $zero, .L802DC064_1F4D74
    /* 1F4D24 802DC014 44078000 */   mfc1      $a3, $f16
    /* 1F4D28 802DC018 44818800 */  mtc1       $at, $f17
    /* 1F4D2C 802DC01C 44808000 */  mtc1       $zero, $f16
    /* 1F4D30 802DC020 24070001 */  addiu      $a3, $zero, 0x1
    /* 1F4D34 802DC024 46305401 */  sub.d      $f16, $f10, $f16
    /* 1F4D38 802DC028 44C7F800 */  ctc1       $a3, $31
    /* 1F4D3C 802DC02C 00000000 */  nop
    /* 1F4D40 802DC030 46208424 */  cvt.w.d    $f16, $f16
    /* 1F4D44 802DC034 4447F800 */  cfc1       $a3, $31
    /* 1F4D48 802DC038 00000000 */  nop
    /* 1F4D4C 802DC03C 30E70078 */  andi       $a3, $a3, 0x78
    /* 1F4D50 802DC040 14E00005 */  bnez       $a3, .L802DC058_1F4D68
    /* 1F4D54 802DC044 00000000 */   nop
    /* 1F4D58 802DC048 44078000 */  mfc1       $a3, $f16
    /* 1F4D5C 802DC04C 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* 1F4D60 802DC050 10000007 */  b          .L802DC070_1F4D80
    /* 1F4D64 802DC054 00E13825 */   or        $a3, $a3, $at
  .L802DC058_1F4D68:
    /* 1F4D68 802DC058 10000005 */  b          .L802DC070_1F4D80
    /* 1F4D6C 802DC05C 2407FFFF */   addiu     $a3, $zero, -0x1
    /* 1F4D70 802DC060 44078000 */  mfc1       $a3, $f16
  .L802DC064_1F4D74:
    /* 1F4D74 802DC064 00000000 */  nop
    /* 1F4D78 802DC068 04E0FFFB */  bltz       $a3, .L802DC058_1F4D68
    /* 1F4D7C 802DC06C 00000000 */   nop
  .L802DC070_1F4D80:
    /* 1F4D80 802DC070 44C8F800 */  ctc1       $t0, $31
    /* 1F4D84 802DC074 30E9FFFF */  andi       $t1, $a3, 0xFFFF
    /* 1F4D88 802DC078 01203825 */  or         $a3, $t1, $zero
    /* 1F4D8C 802DC07C 0C037E12 */  jal        func_800DF848_EE7F8
    /* 1F4D90 802DC080 AFA00010 */   sw        $zero, 0x10($sp)
    /* 1F4D94 802DC084 10000067 */  b          .L802DC224_1F4F34
    /* 1F4D98 802DC088 8FBF0034 */   lw        $ra, 0x34($sp)
  .L802DC08C_1F4D9C:
    /* 1F4D9C 802DC08C 05410058 */  bgez       $t2, .L802DC1F0_1F4F00
    /* 1F4DA0 802DC090 3C058022 */   lui       $a1, %hi(D_80222A70)
    /* 1F4DA4 802DC094 8CA52A70 */  lw         $a1, %lo(D_80222A70)($a1)
    /* 1F4DA8 802DC098 844B0002 */  lh         $t3, 0x2($v0)
    /* 1F4DAC 802DC09C 240700FA */  addiu      $a3, $zero, 0xFA
    /* 1F4DB0 802DC0A0 00AB082A */  slt        $at, $a1, $t3
    /* 1F4DB4 802DC0A4 50200024 */  beql       $at, $zero, .L802DC138_1F4E48
    /* 1F4DB8 802DC0A8 844E0010 */   lh        $t6, 0x10($v0)
    /* 1F4DBC 802DC0AC 84440014 */  lh         $a0, 0x14($v0)
    /* 1F4DC0 802DC0B0 10800008 */  beqz       $a0, .L802DC0D4_1F4DE4
    /* 1F4DC4 802DC0B4 00000000 */   nop
    /* 1F4DC8 802DC0B8 84430038 */  lh         $v1, 0x38($v0)
    /* 1F4DCC 802DC0BC 2861FFF7 */  slti       $at, $v1, -0x9
    /* 1F4DD0 802DC0C0 14200004 */  bnez       $at, .L802DC0D4_1F4DE4
    /* 1F4DD4 802DC0C4 246CFFFF */   addiu     $t4, $v1, -0x1
    /* 1F4DD8 802DC0C8 A44C0038 */  sh         $t4, 0x38($v0)
    /* 1F4DDC 802DC0CC 10000008 */  b          .L802DC0F0_1F4E00
    /* 1F4DE0 802DC0D0 84430038 */   lh        $v1, 0x38($v0)
  .L802DC0D4_1F4DE4:
    /* 1F4DE4 802DC0D4 14800006 */  bnez       $a0, .L802DC0F0_1F4E00
    /* 1F4DE8 802DC0D8 84430038 */   lh        $v1, 0x38($v0)
    /* 1F4DEC 802DC0DC 2861000A */  slti       $at, $v1, 0xA
    /* 1F4DF0 802DC0E0 10200003 */  beqz       $at, .L802DC0F0_1F4E00
    /* 1F4DF4 802DC0E4 246D0001 */   addiu     $t5, $v1, 0x1
    /* 1F4DF8 802DC0E8 A44D0038 */  sh         $t5, 0x38($v0)
    /* 1F4DFC 802DC0EC 84430038 */  lh         $v1, 0x38($v0)
  .L802DC0F0_1F4E00:
    /* 1F4E00 802DC0F0 00032080 */  sll        $a0, $v1, 2
    /* 1F4E04 802DC0F4 00832023 */  subu       $a0, $a0, $v1
    /* 1F4E08 802DC0F8 000420C0 */  sll        $a0, $a0, 3
    /* 1F4E0C 802DC0FC 844E000E */  lh         $t6, 0xE($v0)
    /* 1F4E10 802DC100 84580006 */  lh         $t8, 0x6($v0)
    /* 1F4E14 802DC104 84480010 */  lh         $t0, 0x10($v0)
    /* 1F4E18 802DC108 844A0012 */  lh         $t2, 0x12($v0)
    /* 1F4E1C 802DC10C 00832021 */  addu       $a0, $a0, $v1
    /* 1F4E20 802DC110 000420C0 */  sll        $a0, $a0, 3
    /* 1F4E24 802DC114 01C47821 */  addu       $t7, $t6, $a0
    /* 1F4E28 802DC118 0304C821 */  addu       $t9, $t8, $a0
    /* 1F4E2C 802DC11C 25090060 */  addiu      $t1, $t0, 0x60
    /* 1F4E30 802DC120 254B0010 */  addiu      $t3, $t2, 0x10
    /* 1F4E34 802DC124 A44F000E */  sh         $t7, 0xE($v0)
    /* 1F4E38 802DC128 A4590006 */  sh         $t9, 0x6($v0)
    /* 1F4E3C 802DC12C A4490010 */  sh         $t1, 0x10($v0)
    /* 1F4E40 802DC130 A44B0012 */  sh         $t3, 0x12($v0)
    /* 1F4E44 802DC134 844E0010 */  lh         $t6, 0x10($v0)
  .L802DC138_1F4E48:
    /* 1F4E48 802DC138 844C0038 */  lh         $t4, 0x38($v0)
    /* 1F4E4C 802DC13C 8459002C */  lh         $t9, 0x2C($v0)
    /* 1F4E50 802DC140 000E7823 */  negu       $t7, $t6
    /* 1F4E54 802DC144 000FC080 */  sll        $t8, $t7, 2
    /* 1F4E58 802DC148 000C6A00 */  sll        $t5, $t4, 8
    /* 1F4E5C 802DC14C 33280003 */  andi       $t0, $t9, 0x3
    /* 1F4E60 802DC150 A44D0008 */  sh         $t5, 0x8($v0)
    /* 1F4E64 802DC154 15000017 */  bnez       $t0, .L802DC1B4_1F4EC4
    /* 1F4E68 802DC158 A458000A */   sh        $t8, 0xA($v0)
    /* 1F4E6C 802DC15C 24090002 */  addiu      $t1, $zero, 0x2
    /* 1F4E70 802DC160 240A0002 */  addiu      $t2, $zero, 0x2
    /* 1F4E74 802DC164 240B001E */  addiu      $t3, $zero, 0x1E
    /* 1F4E78 802DC168 240C00C8 */  addiu      $t4, $zero, 0xC8
    /* 1F4E7C 802DC16C 240D0082 */  addiu      $t5, $zero, 0x82
    /* 1F4E80 802DC170 240E0082 */  addiu      $t6, $zero, 0x82
    /* 1F4E84 802DC174 240F0082 */  addiu      $t7, $zero, 0x82
    /* 1F4E88 802DC178 AFAF0028 */  sw         $t7, 0x28($sp)
    /* 1F4E8C 802DC17C AFAE0024 */  sw         $t6, 0x24($sp)
    /* 1F4E90 802DC180 AFAD0020 */  sw         $t5, 0x20($sp)
    /* 1F4E94 802DC184 AFAC001C */  sw         $t4, 0x1C($sp)
    /* 1F4E98 802DC188 AFAB0018 */  sw         $t3, 0x18($sp)
    /* 1F4E9C 802DC18C AFAA0014 */  sw         $t2, 0x14($sp)
    /* 1F4EA0 802DC190 AFA90010 */  sw         $t1, 0x10($sp)
    /* 1F4EA4 802DC194 84440000 */  lh         $a0, 0x0($v0)
    /* 1F4EA8 802DC198 84450002 */  lh         $a1, 0x2($v0)
    /* 1F4EAC 802DC19C 84460004 */  lh         $a2, 0x4($v0)
    /* 1F4EB0 802DC1A0 0C037A82 */  jal        func_800DEA08_ED9B8
    /* 1F4EB4 802DC1A4 AFA2003C */   sw        $v0, 0x3C($sp)
    /* 1F4EB8 802DC1A8 3C058022 */  lui        $a1, %hi(D_80222A70)
    /* 1F4EBC 802DC1AC 8CA52A70 */  lw         $a1, %lo(D_80222A70)($a1)
    /* 1F4EC0 802DC1B0 8FA2003C */  lw         $v0, 0x3C($sp)
  .L802DC1B4_1F4EC4:
    /* 1F4EC4 802DC1B4 84580030 */  lh         $t8, 0x30($v0)
    /* 1F4EC8 802DC1B8 00B8082A */  slt        $at, $a1, $t8
    /* 1F4ECC 802DC1BC 5020000D */  beql       $at, $zero, .L802DC1F4_1F4F04
    /* 1F4ED0 802DC1C0 904C001A */   lbu       $t4, 0x1A($v0)
    /* 1F4ED4 802DC1C4 84590002 */  lh         $t9, 0x2($v0)
    /* 1F4ED8 802DC1C8 0325082A */  slt        $at, $t9, $a1
    /* 1F4EDC 802DC1CC 50200009 */  beql       $at, $zero, .L802DC1F4_1F4F04
    /* 1F4EE0 802DC1D0 904C001A */   lbu       $t4, 0x1A($v0)
    /* 1F4EE4 802DC1D4 84480012 */  lh         $t0, 0x12($v0)
    /* 1F4EE8 802DC1D8 844A0010 */  lh         $t2, 0x10($v0)
    /* 1F4EEC 802DC1DC A4400038 */  sh         $zero, 0x38($v0)
    /* 1F4EF0 802DC1E0 00084843 */  sra        $t1, $t0, 1
    /* 1F4EF4 802DC1E4 000A5843 */  sra        $t3, $t2, 1
    /* 1F4EF8 802DC1E8 A4490012 */  sh         $t1, 0x12($v0)
    /* 1F4EFC 802DC1EC A44B0010 */  sh         $t3, 0x10($v0)
  .L802DC1F0_1F4F00:
    /* 1F4F00 802DC1F0 904C001A */  lbu        $t4, 0x1A($v0)
  .L802DC1F4_1F4F04:
    /* 1F4F04 802DC1F4 3C058025 */  lui        $a1, %hi(D_8025668C)
    /* 1F4F08 802DC1F8 93A40043 */  lbu        $a0, 0x43($sp)
    /* 1F4F0C 802DC1FC 000C6880 */  sll        $t5, $t4, 2
    /* 1F4F10 802DC200 01AC6823 */  subu       $t5, $t5, $t4
    /* 1F4F14 802DC204 000D6880 */  sll        $t5, $t5, 2
    /* 1F4F18 802DC208 01AC6821 */  addu       $t5, $t5, $t4
    /* 1F4F1C 802DC20C 000D68C0 */  sll        $t5, $t5, 3
    /* 1F4F20 802DC210 00AD2821 */  addu       $a1, $a1, $t5
    /* 1F4F24 802DC214 84A5668C */  lh         $a1, %lo(D_8025668C)($a1)
    /* 1F4F28 802DC218 0C022ABF */  jal        func_8008AAFC_99AAC
    /* 1F4F2C 802DC21C 24060003 */   addiu     $a2, $zero, 0x3
  .L802DC220_1F4F30:
    /* 1F4F30 802DC220 8FBF0034 */  lw         $ra, 0x34($sp)
  .L802DC224_1F4F34:
    /* 1F4F34 802DC224 27BD0040 */  addiu      $sp, $sp, 0x40
    /* 1F4F38 802DC228 03E00008 */  jr         $ra
    /* 1F4F3C 802DC22C 00000000 */   nop
endlabel func_802DBF34_1F4C44
