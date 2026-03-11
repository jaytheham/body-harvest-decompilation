nonmatching func_802DBF98_194AA8, 0x1EC

glabel func_802DBF98_194AA8
    /* 194AA8 802DBF98 308E00FF */  andi       $t6, $a0, 0xFF
    /* 194AAC 802DBF9C 000E7880 */  sll        $t7, $t6, 2
    /* 194AB0 802DBFA0 01EE7821 */  addu       $t7, $t7, $t6
    /* 194AB4 802DBFA4 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 194AB8 802DBFA8 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 194ABC 802DBFAC 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 194AC0 802DBFB0 000F7900 */  sll        $t7, $t7, 4
    /* 194AC4 802DBFB4 01F84021 */  addu       $t0, $t7, $t8
    /* 194AC8 802DBFB8 91190025 */  lbu        $t9, 0x25($t0)
    /* 194ACC 802DBFBC AFBF0014 */  sw         $ra, 0x14($sp)
    /* 194AD0 802DBFC0 AFA40048 */  sw         $a0, 0x48($sp)
    /* 194AD4 802DBFC4 01C02025 */  or         $a0, $t6, $zero
    /* 194AD8 802DBFC8 A3AE004B */  sb         $t6, 0x4B($sp)
    /* 194ADC 802DBFCC AFA8001C */  sw         $t0, 0x1C($sp)
    /* 194AE0 802DBFD0 24050099 */  addiu      $a1, $zero, 0x99
    /* 194AE4 802DBFD4 24060032 */  addiu      $a2, $zero, 0x32
    /* 194AE8 802DBFD8 240700D4 */  addiu      $a3, $zero, 0xD4
    /* 194AEC 802DBFDC 0C02A4E9 */  jal        func_800A93A4_B8354
    /* 194AF0 802DBFE0 A3B90043 */   sb        $t9, 0x43($sp)
    /* 194AF4 802DBFE4 8FA8001C */  lw         $t0, 0x1C($sp)
    /* 194AF8 802DBFE8 93AE0043 */  lbu        $t6, 0x43($sp)
    /* 194AFC 802DBFEC 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 194B00 802DBFF0 850C000C */  lh         $t4, 0xC($t0)
    /* 194B04 802DBFF4 000E7880 */  sll        $t7, $t6, 2
    /* 194B08 802DBFF8 01EE7821 */  addu       $t7, $t7, $t6
    /* 194B0C 802DBFFC 3C018015 */  lui        $at, %hi(D_8014DD54)
    /* 194B10 802DC000 000F7900 */  sll        $t7, $t7, 4
    /* 194B14 802DC004 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 194B18 802DC008 000C6900 */  sll        $t5, $t4, 4
    /* 194B1C 802DC00C 002D0821 */  addu       $at, $at, $t5
    /* 194B20 802DC010 240BFF6A */  addiu      $t3, $zero, -0x96
    /* 194B24 802DC014 01F8C821 */  addu       $t9, $t7, $t8
    /* 194B28 802DC018 A42BDD54 */  sh         $t3, %lo(D_8014DD54)($at)
    /* 194B2C 802DC01C AFB90018 */  sw         $t9, 0x18($sp)
    /* 194B30 802DC020 8F2C0020 */  lw         $t4, 0x20($t9)
    /* 194B34 802DC024 24014000 */  addiu      $at, $zero, 0x4000
    /* 194B38 802DC028 93A4004B */  lbu        $a0, 0x4B($sp)
    /* 194B3C 802DC02C 318B4000 */  andi       $t3, $t4, 0x4000
    /* 194B40 802DC030 1161000B */  beq        $t3, $at, .L802DC060_194B70
    /* 194B44 802DC034 3C05802E */   lui       $a1, %hi(D_802DE274)
    /* 194B48 802DC038 3C05802E */  lui        $a1, %hi(D_802DE25C)
    /* 194B4C 802DC03C 3C06802E */  lui        $a2, %hi(D_802DE268)
    /* 194B50 802DC040 24C6E268 */  addiu      $a2, $a2, %lo(D_802DE268)
    /* 194B54 802DC044 24A5E25C */  addiu      $a1, $a1, %lo(D_802DE25C)
    /* 194B58 802DC048 0C0B6C5B */  jal        func_802DB16C_193C7C
    /* 194B5C 802DC04C AFA8001C */   sw        $t0, 0x1C($sp)
    /* 194B60 802DC050 8FA8001C */  lw         $t0, 0x1C($sp)
    /* 194B64 802DC054 240A1000 */  addiu      $t2, $zero, 0x1000
    /* 194B68 802DC058 10000009 */  b          .L802DC080_194B90
    /* 194B6C 802DC05C 24090320 */   addiu     $t1, $zero, 0x320
  .L802DC060_194B70:
    /* 194B70 802DC060 3C06802E */  lui        $a2, %hi(D_802DE268)
    /* 194B74 802DC064 24C6E268 */  addiu      $a2, $a2, %lo(D_802DE268)
    /* 194B78 802DC068 24A5E274 */  addiu      $a1, $a1, %lo(D_802DE274)
    /* 194B7C 802DC06C 0C0B6C5B */  jal        func_802DB16C_193C7C
    /* 194B80 802DC070 AFA8001C */   sw        $t0, 0x1C($sp)
    /* 194B84 802DC074 8FA8001C */  lw         $t0, 0x1C($sp)
    /* 194B88 802DC078 240A4000 */  addiu      $t2, $zero, 0x4000
    /* 194B8C 802DC07C 240907D0 */  addiu      $t1, $zero, 0x7D0
  .L802DC080_194B90:
    /* 194B90 802DC080 5440003D */  bnel       $v0, $zero, .L802DC178_194C88
    /* 194B94 802DC084 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 194B98 802DC088 AFA8001C */  sw         $t0, 0x1C($sp)
    /* 194B9C 802DC08C AFA90034 */  sw         $t1, 0x34($sp)
    /* 194BA0 802DC090 0C000E38 */  jal        func_800038E0_44E0
    /* 194BA4 802DC094 AFAA0038 */   sw        $t2, 0x38($sp)
    /* 194BA8 802DC098 24010064 */  addiu      $at, $zero, 0x64
    /* 194BAC 802DC09C 0041001A */  div        $zero, $v0, $at
    /* 194BB0 802DC0A0 00006810 */  mfhi       $t5
    /* 194BB4 802DC0A4 8FA8001C */  lw         $t0, 0x1C($sp)
    /* 194BB8 802DC0A8 8FA90034 */  lw         $t1, 0x34($sp)
    /* 194BBC 802DC0AC 15A00031 */  bnez       $t5, .L802DC174_194C84
    /* 194BC0 802DC0B0 8FAA0038 */   lw        $t2, 0x38($sp)
    /* 194BC4 802DC0B4 3C068005 */  lui        $a2, %hi(D_80052B34)
    /* 194BC8 802DC0B8 8CC62B34 */  lw         $a2, %lo(D_80052B34)($a2)
    /* 194BCC 802DC0BC 850F0000 */  lh         $t7, 0x0($t0)
    /* 194BD0 802DC0C0 8FAC0018 */  lw         $t4, 0x18($sp)
    /* 194BD4 802DC0C4 84CE0000 */  lh         $t6, 0x0($a2)
    /* 194BD8 802DC0C8 01CF1023 */  subu       $v0, $t6, $t7
    /* 194BDC 802DC0CC 00022023 */  negu       $a0, $v0
    /* 194BE0 802DC0D0 0082082A */  slt        $at, $a0, $v0
    /* 194BE4 802DC0D4 10200003 */  beqz       $at, .L802DC0E4_194BF4
    /* 194BE8 802DC0D8 00803825 */   or        $a3, $a0, $zero
    /* 194BEC 802DC0DC 10000001 */  b          .L802DC0E4_194BF4
    /* 194BF0 802DC0E0 00403825 */   or        $a3, $v0, $zero
  .L802DC0E4_194BF4:
    /* 194BF4 802DC0E4 84D80004 */  lh         $t8, 0x4($a2)
    /* 194BF8 802DC0E8 85190004 */  lh         $t9, 0x4($t0)
    /* 194BFC 802DC0EC 03191823 */  subu       $v1, $t8, $t9
    /* 194C00 802DC0F0 00032823 */  negu       $a1, $v1
    /* 194C04 802DC0F4 00A3082A */  slt        $at, $a1, $v1
    /* 194C08 802DC0F8 10200003 */  beqz       $at, .L802DC108_194C18
    /* 194C0C 802DC0FC 00A03025 */   or        $a2, $a1, $zero
    /* 194C10 802DC100 10000001 */  b          .L802DC108_194C18
    /* 194C14 802DC104 00603025 */   or        $a2, $v1, $zero
  .L802DC108_194C18:
    /* 194C18 802DC108 00C7082A */  slt        $at, $a2, $a3
    /* 194C1C 802DC10C 10200007 */  beqz       $at, .L802DC12C_194C3C
    /* 194C20 802DC110 0082082A */   slt       $at, $a0, $v0
    /* 194C24 802DC114 10200003 */  beqz       $at, .L802DC124_194C34
    /* 194C28 802DC118 00801825 */   or        $v1, $a0, $zero
    /* 194C2C 802DC11C 1000000A */  b          .L802DC148_194C58
    /* 194C30 802DC120 0049082A */   slt       $at, $v0, $t1
  .L802DC124_194C34:
    /* 194C34 802DC124 10000007 */  b          .L802DC144_194C54
    /* 194C38 802DC128 00601025 */   or        $v0, $v1, $zero
  .L802DC12C_194C3C:
    /* 194C3C 802DC12C 00A3082A */  slt        $at, $a1, $v1
    /* 194C40 802DC130 10200003 */  beqz       $at, .L802DC140_194C50
    /* 194C44 802DC134 00A02025 */   or        $a0, $a1, $zero
    /* 194C48 802DC138 10000001 */  b          .L802DC140_194C50
    /* 194C4C 802DC13C 00602025 */   or        $a0, $v1, $zero
  .L802DC140_194C50:
    /* 194C50 802DC140 00801025 */  or         $v0, $a0, $zero
  .L802DC144_194C54:
    /* 194C54 802DC144 0049082A */  slt        $at, $v0, $t1
  .L802DC148_194C58:
    /* 194C58 802DC148 5020000B */  beql       $at, $zero, .L802DC178_194C88
    /* 194C5C 802DC14C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 194C60 802DC150 898B0045 */  lwl        $t3, 0x45($t4)
    /* 194C64 802DC154 998B0048 */  lwr        $t3, 0x48($t4)
    /* 194C68 802DC158 316D8000 */  andi       $t5, $t3, 0x8000
    /* 194C6C 802DC15C 55A00006 */  bnel       $t5, $zero, .L802DC178_194C88
    /* 194C70 802DC160 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 194C74 802DC164 8D0E0020 */  lw         $t6, 0x20($t0)
    /* 194C78 802DC168 A1000036 */  sb         $zero, 0x36($t0)
    /* 194C7C 802DC16C 01CA7825 */  or         $t7, $t6, $t2
    /* 194C80 802DC170 AD0F0020 */  sw         $t7, 0x20($t0)
  .L802DC174_194C84:
    /* 194C84 802DC174 8FBF0014 */  lw         $ra, 0x14($sp)
  .L802DC178_194C88:
    /* 194C88 802DC178 27BD0048 */  addiu      $sp, $sp, 0x48
    /* 194C8C 802DC17C 03E00008 */  jr         $ra
    /* 194C90 802DC180 00000000 */   nop
endlabel func_802DBF98_194AA8
