nonmatching func_8009BF64_AAF14, 0x274

glabel func_8009BF64_AAF14
    /* AAF14 8009BF64 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* AAF18 8009BF68 AFA40048 */  sw         $a0, 0x48($sp)
    /* AAF1C 8009BF6C 97A6004A */  lhu        $a2, 0x4A($sp)
    /* AAF20 8009BF70 AFBF0014 */  sw         $ra, 0x14($sp)
    /* AAF24 8009BF74 241F003C */  addiu      $ra, $zero, 0x3C
    /* AAF28 8009BF78 00DF001A */  div        $zero, $a2, $ra
    /* AAF2C 8009BF7C 3C038006 */  lui        $v1, %hi(D_8005BB2C)
    /* AAF30 8009BF80 2463BB2C */  addiu      $v1, $v1, %lo(D_8005BB2C)
    /* AAF34 8009BF84 8C620000 */  lw         $v0, 0x0($v1)
    /* AAF38 8009BF88 00007012 */  mflo       $t6
    /* AAF3C 8009BF8C A3AE0047 */  sb         $t6, 0x47($sp)
    /* AAF40 8009BF90 00007810 */  mfhi       $t7
    /* AAF44 8009BF94 24580008 */  addiu      $t8, $v0, 0x8
    /* AAF48 8009BF98 A7AF004A */  sh         $t7, 0x4A($sp)
    /* AAF4C 8009BF9C AC780000 */  sw         $t8, 0x0($v1)
    /* AAF50 8009BFA0 240E0001 */  addiu      $t6, $zero, 0x1
    /* AAF54 8009BFA4 3C19B600 */  lui        $t9, (0xB6000000 >> 16)
    /* AAF58 8009BFA8 AC590000 */  sw         $t9, 0x0($v0)
    /* AAF5C 8009BFAC AC4E0004 */  sw         $t6, 0x4($v0)
    /* AAF60 8009BFB0 8C620000 */  lw         $v0, 0x0($v1)
    /* AAF64 8009BFB4 3C198000 */  lui        $t9, (0x80008000 >> 16)
    /* AAF68 8009BFB8 3C18BB00 */  lui        $t8, (0xBB000001 >> 16)
    /* AAF6C 8009BFBC 244F0008 */  addiu      $t7, $v0, 0x8
    /* AAF70 8009BFC0 AC6F0000 */  sw         $t7, 0x0($v1)
    /* AAF74 8009BFC4 37180001 */  ori        $t8, $t8, (0xBB000001 & 0xFFFF)
    /* AAF78 8009BFC8 37398000 */  ori        $t9, $t9, (0x80008000 & 0xFFFF)
    /* AAF7C 8009BFCC AC590004 */  sw         $t9, 0x4($v0)
    /* AAF80 8009BFD0 AC580000 */  sw         $t8, 0x0($v0)
    /* AAF84 8009BFD4 8C620000 */  lw         $v0, 0x0($v1)
    /* AAF88 8009BFD8 3C0FBA00 */  lui        $t7, (0xBA001301 >> 16)
    /* AAF8C 8009BFDC 35EF1301 */  ori        $t7, $t7, (0xBA001301 & 0xFFFF)
    /* AAF90 8009BFE0 244E0008 */  addiu      $t6, $v0, 0x8
    /* AAF94 8009BFE4 AC6E0000 */  sw         $t6, 0x0($v1)
    /* AAF98 8009BFE8 AC400004 */  sw         $zero, 0x4($v0)
    /* AAF9C 8009BFEC AC4F0000 */  sw         $t7, 0x0($v0)
    /* AAFA0 8009BFF0 8C620000 */  lw         $v0, 0x0($v1)
    /* AAFA4 8009BFF4 3C0E0050 */  lui        $t6, (0x5041C8 >> 16)
    /* AAFA8 8009BFF8 3C19B900 */  lui        $t9, (0xB900031D >> 16)
    /* AAFAC 8009BFFC 24580008 */  addiu      $t8, $v0, 0x8
    /* AAFB0 8009C000 AC780000 */  sw         $t8, 0x0($v1)
    /* AAFB4 8009C004 3739031D */  ori        $t9, $t9, (0xB900031D & 0xFFFF)
    /* AAFB8 8009C008 35CE41C8 */  ori        $t6, $t6, (0x5041C8 & 0xFFFF)
    /* AAFBC 8009C00C AC4E0004 */  sw         $t6, 0x4($v0)
    /* AAFC0 8009C010 AC590000 */  sw         $t9, 0x0($v0)
    /* AAFC4 8009C014 8C620000 */  lw         $v0, 0x0($v1)
    /* AAFC8 8009C018 3C18E700 */  lui        $t8, (0xE7000000 >> 16)
    /* AAFCC 8009C01C 3C0EBA00 */  lui        $t6, (0xBA000E02 >> 16)
    /* AAFD0 8009C020 244F0008 */  addiu      $t7, $v0, 0x8
    /* AAFD4 8009C024 AC6F0000 */  sw         $t7, 0x0($v1)
    /* AAFD8 8009C028 AC400004 */  sw         $zero, 0x4($v0)
    /* AAFDC 8009C02C AC580000 */  sw         $t8, 0x0($v0)
    /* AAFE0 8009C030 8C620000 */  lw         $v0, 0x0($v1)
    /* AAFE4 8009C034 35CE0E02 */  ori        $t6, $t6, (0xBA000E02 & 0xFFFF)
    /* AAFE8 8009C038 3C18FCFF */  lui        $t8, (0xFCFFB3FF >> 16)
    /* AAFEC 8009C03C 24590008 */  addiu      $t9, $v0, 0x8
    /* AAFF0 8009C040 AC790000 */  sw         $t9, 0x0($v1)
    /* AAFF4 8009C044 AC400004 */  sw         $zero, 0x4($v0)
    /* AAFF8 8009C048 AC4E0000 */  sw         $t6, 0x0($v0)
    /* AAFFC 8009C04C 8C620000 */  lw         $v0, 0x0($v1)
    /* AB000 8009C050 3C19FF65 */  lui        $t9, (0xFF65FEFF >> 16)
    /* AB004 8009C054 3739FEFF */  ori        $t9, $t9, (0xFF65FEFF & 0xFFFF)
    /* AB008 8009C058 244F0008 */  addiu      $t7, $v0, 0x8
    /* AB00C 8009C05C AC6F0000 */  sw         $t7, 0x0($v1)
    /* AB010 8009C060 3718B3FF */  ori        $t8, $t8, (0xFCFFB3FF & 0xFFFF)
    /* AB014 8009C064 AC580000 */  sw         $t8, 0x0($v0)
    /* AB018 8009C068 AC590004 */  sw         $t9, 0x4($v0)
    /* AB01C 8009C06C 8C620000 */  lw         $v0, 0x0($v1)
    /* AB020 8009C070 3C18325A */  lui        $t8, (0x325AE6FF >> 16)
    /* AB024 8009C074 3718E6FF */  ori        $t8, $t8, (0x325AE6FF & 0xFFFF)
    /* AB028 8009C078 244E0008 */  addiu      $t6, $v0, 0x8
    /* AB02C 8009C07C AC6E0000 */  sw         $t6, 0x0($v1)
    /* AB030 8009C080 3C0FFA00 */  lui        $t7, (0xFA000000 >> 16)
    /* AB034 8009C084 AC4F0000 */  sw         $t7, 0x0($v0)
    /* AB038 8009C088 AC580004 */  sw         $t8, 0x4($v0)
    /* AB03C 8009C08C 8C620000 */  lw         $v0, 0x0($v1)
    /* AB040 8009C090 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
    /* AB044 8009C094 17E00002 */  bnez       $ra, .L8009C0A0_AB050
    /* AB048 8009C098 00000000 */   nop
    /* AB04C 8009C09C 0007000D */  break      7
  .L8009C0A0_AB050:
    /* AB050 8009C0A0 2401FFFF */  addiu      $at, $zero, -0x1
    /* AB054 8009C0A4 17E10004 */  bne        $ra, $at, .L8009C0B8_AB068
    /* AB058 8009C0A8 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* AB05C 8009C0AC 14C10002 */  bne        $a2, $at, .L8009C0B8_AB068
    /* AB060 8009C0B0 00000000 */   nop
    /* AB064 8009C0B4 0006000D */  break      6
  .L8009C0B8_AB068:
    /* AB068 8009C0B8 24590008 */  addiu      $t9, $v0, 0x8
    /* AB06C 8009C0BC AC790000 */  sw         $t9, 0x0($v1)
    /* AB070 8009C0C0 AC400004 */  sw         $zero, 0x4($v0)
    /* AB074 8009C0C4 AC4E0000 */  sw         $t6, 0x0($v0)
    /* AB078 8009C0C8 93A50047 */  lbu        $a1, 0x47($sp)
    /* AB07C 8009C0CC 0C026F6E */  jal        func_8009BDB8_AAD68
    /* AB080 8009C0D0 2404001E */   addiu     $a0, $zero, 0x1E
    /* AB084 8009C0D4 3C0F8005 */  lui        $t7, %hi(D_80052A8C)
    /* AB088 8009C0D8 8DEF2A8C */  lw         $t7, %lo(D_80052A8C)($t7)
    /* AB08C 8009C0DC 24010014 */  addiu      $at, $zero, 0x14
    /* AB090 8009C0E0 24040029 */  addiu      $a0, $zero, 0x29
    /* AB094 8009C0E4 01E1001B */  divu       $zero, $t7, $at
    /* AB098 8009C0E8 0000C010 */  mfhi       $t8
    /* AB09C 8009C0EC 2F01000A */  sltiu      $at, $t8, 0xA
    /* AB0A0 8009C0F0 50200004 */  beql       $at, $zero, .L8009C104_AB0B4
    /* AB0A4 8009C0F4 97A6004A */   lhu       $a2, 0x4A($sp)
    /* AB0A8 8009C0F8 0C026F6E */  jal        func_8009BDB8_AAD68
    /* AB0AC 8009C0FC 2405000A */   addiu     $a1, $zero, 0xA
    /* AB0B0 8009C100 97A6004A */  lhu        $a2, 0x4A($sp)
  .L8009C104_AB0B4:
    /* AB0B4 8009C104 2402000A */  addiu      $v0, $zero, 0xA
    /* AB0B8 8009C108 24040032 */  addiu      $a0, $zero, 0x32
    /* AB0BC 8009C10C 28C1000A */  slti       $at, $a2, 0xA
    /* AB0C0 8009C110 1020000C */  beqz       $at, .L8009C144_AB0F4
    /* AB0C4 8009C114 00000000 */   nop
    /* AB0C8 8009C118 24040032 */  addiu      $a0, $zero, 0x32
    /* AB0CC 8009C11C 00002825 */  or         $a1, $zero, $zero
    /* AB0D0 8009C120 0C026F6E */  jal        func_8009BDB8_AAD68
    /* AB0D4 8009C124 AFA6001C */   sw        $a2, 0x1C($sp)
    /* AB0D8 8009C128 8FA6001C */  lw         $a2, 0x1C($sp)
    /* AB0DC 8009C12C 2401000A */  addiu      $at, $zero, 0xA
    /* AB0E0 8009C130 00C1001A */  div        $zero, $a2, $at
    /* AB0E4 8009C134 00003810 */  mfhi       $a3
    /* AB0E8 8009C138 30F900FF */  andi       $t9, $a3, 0xFF
    /* AB0EC 8009C13C 1000001F */  b          .L8009C1BC_AB16C
    /* AB0F0 8009C140 03203825 */   or        $a3, $t9, $zero
  .L8009C144_AB0F4:
    /* AB0F4 8009C144 00C2001A */  div        $zero, $a2, $v0
    /* AB0F8 8009C148 00003810 */  mfhi       $a3
    /* AB0FC 8009C14C 30EE00FF */  andi       $t6, $a3, 0xFF
    /* AB100 8009C150 00CE7823 */  subu       $t7, $a2, $t6
    /* AB104 8009C154 01E2001A */  div        $zero, $t7, $v0
    /* AB108 8009C158 14400002 */  bnez       $v0, .L8009C164_AB114
    /* AB10C 8009C15C 00000000 */   nop
    /* AB110 8009C160 0007000D */  break      7
  .L8009C164_AB114:
    /* AB114 8009C164 2401FFFF */  addiu      $at, $zero, -0x1
    /* AB118 8009C168 14410004 */  bne        $v0, $at, .L8009C17C_AB12C
    /* AB11C 8009C16C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* AB120 8009C170 14C10002 */  bne        $a2, $at, .L8009C17C_AB12C
    /* AB124 8009C174 00000000 */   nop
    /* AB128 8009C178 0006000D */  break      6
  .L8009C17C_AB12C:
    /* AB12C 8009C17C 00002812 */  mflo       $a1
    /* AB130 8009C180 30B800FF */  andi       $t8, $a1, 0xFF
    /* AB134 8009C184 01C03825 */  or         $a3, $t6, $zero
    /* AB138 8009C188 14400002 */  bnez       $v0, .L8009C194_AB144
    /* AB13C 8009C18C 00000000 */   nop
    /* AB140 8009C190 0007000D */  break      7
  .L8009C194_AB144:
    /* AB144 8009C194 2401FFFF */  addiu      $at, $zero, -0x1
    /* AB148 8009C198 14410004 */  bne        $v0, $at, .L8009C1AC_AB15C
    /* AB14C 8009C19C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* AB150 8009C1A0 15E10002 */  bne        $t7, $at, .L8009C1AC_AB15C
    /* AB154 8009C1A4 00000000 */   nop
    /* AB158 8009C1A8 0006000D */  break      6
  .L8009C1AC_AB15C:
    /* AB15C 8009C1AC AFA70018 */  sw         $a3, 0x18($sp)
    /* AB160 8009C1B0 0C026F6E */  jal        func_8009BDB8_AAD68
    /* AB164 8009C1B4 03002825 */   or        $a1, $t8, $zero
    /* AB168 8009C1B8 8FA70018 */  lw         $a3, 0x18($sp)
  .L8009C1BC_AB16C:
    /* AB16C 8009C1BC 24040041 */  addiu      $a0, $zero, 0x41
    /* AB170 8009C1C0 0C026F6E */  jal        func_8009BDB8_AAD68
    /* AB174 8009C1C4 30E500FF */   andi      $a1, $a3, 0xFF
    /* AB178 8009C1C8 8FBF0014 */  lw         $ra, 0x14($sp)
    /* AB17C 8009C1CC 27BD0048 */  addiu      $sp, $sp, 0x48
    /* AB180 8009C1D0 03E00008 */  jr         $ra
    /* AB184 8009C1D4 00000000 */   nop
endlabel func_8009BF64_AAF14
