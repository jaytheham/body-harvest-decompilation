nonmatching func_800C8814_D77C4, 0x468

glabel func_800C8814_D77C4
    /* D77C4 800C8814 27BDFF00 */  addiu      $sp, $sp, -0x100
    /* D77C8 800C8818 3C088015 */  lui        $t0, %hi(D_80154216)
    /* D77CC 800C881C 85084216 */  lh         $t0, %lo(D_80154216)($t0)
    /* D77D0 800C8820 2401FFFA */  addiu      $at, $zero, -0x6
    /* D77D4 800C8824 AFBF004C */  sw         $ra, 0x4C($sp)
    /* D77D8 800C8828 AFBE0048 */  sw         $fp, 0x48($sp)
    /* D77DC 800C882C AFB70044 */  sw         $s7, 0x44($sp)
    /* D77E0 800C8830 AFB60040 */  sw         $s6, 0x40($sp)
    /* D77E4 800C8834 AFB5003C */  sw         $s5, 0x3C($sp)
    /* D77E8 800C8838 AFB40038 */  sw         $s4, 0x38($sp)
    /* D77EC 800C883C AFB30034 */  sw         $s3, 0x34($sp)
    /* D77F0 800C8840 AFB20030 */  sw         $s2, 0x30($sp)
    /* D77F4 800C8844 AFB1002C */  sw         $s1, 0x2C($sp)
    /* D77F8 800C8848 AFB00028 */  sw         $s0, 0x28($sp)
    /* D77FC 800C884C 110100FE */  beq        $t0, $at, .L800C8C48_D7BF8
    /* D7800 800C8850 F7B40020 */   sdc1      $f20, 0x20($sp)
    /* D7804 800C8854 2401FFFB */  addiu      $at, $zero, -0x5
    /* D7808 800C8858 110100FB */  beq        $t0, $at, .L800C8C48_D7BF8
    /* D780C 800C885C 3C1EB700 */   lui       $fp, (0xB7000000 >> 16)
    /* D7810 800C8860 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* D7814 800C8864 3C158006 */  lui        $s5, %hi(D_8005BB38)
    /* D7818 800C8868 3C128015 */  lui        $s2, %hi(D_80154318)
    /* D781C 800C886C 3C108006 */  lui        $s0, %hi(D_8005BB2C)
    /* D7820 800C8870 4481A000 */  mtc1       $at, $f20
    /* D7824 800C8874 2610BB2C */  addiu      $s0, $s0, %lo(D_8005BB2C)
    /* D7828 800C8878 26524318 */  addiu      $s2, $s2, %lo(D_80154318)
    /* D782C 800C887C 26B5BB38 */  addiu      $s5, $s5, %lo(D_8005BB38)
    /* D7830 800C8880 3C14E700 */  lui        $s4, (0xE7000000 >> 16)
    /* D7834 800C8884 2413001C */  addiu      $s3, $zero, 0x1C
  .L800C8888_D7838:
    /* D7838 800C8888 01130019 */  multu      $t0, $s3
    /* D783C 800C888C 3C018004 */  lui        $at, %hi(D_80047954)
    /* D7840 800C8890 C4247954 */  lwc1       $f4, %lo(D_80047954)($at)
    /* D7844 800C8894 3C018004 */  lui        $at, %hi(D_8004795C)
    /* D7848 800C8898 C42A795C */  lwc1       $f10, %lo(D_8004795C)($at)
    /* D784C 800C889C 46142182 */  mul.s      $f6, $f4, $f20
    /* D7850 800C88A0 24184000 */  addiu      $t8, $zero, 0x4000
    /* D7854 800C88A4 46145402 */  mul.s      $f16, $f10, $f20
    /* D7858 800C88A8 00007012 */  mflo       $t6
    /* D785C 800C88AC 024E8821 */  addu       $s1, $s2, $t6
    /* D7860 800C88B0 86230004 */  lh         $v1, 0x4($s1)
    /* D7864 800C88B4 86290002 */  lh         $t1, 0x2($s1)
    /* D7868 800C88B8 4600320D */  trunc.w.s  $f8, $f6
    /* D786C 800C88BC 00730019 */  multu      $v1, $s3
    /* D7870 800C88C0 86240008 */  lh         $a0, 0x8($s1)
    /* D7874 800C88C4 4600848D */  trunc.w.s  $f18, $f16
    /* D7878 800C88C8 44074000 */  mfc1       $a3, $f8
    /* D787C 800C88CC 8625000C */  lh         $a1, 0xC($s1)
    /* D7880 800C88D0 A7A900F0 */  sh         $t1, 0xF0($sp)
    /* D7884 800C88D4 440E9000 */  mfc1       $t6, $f18
    /* D7888 800C88D8 00075C00 */  sll        $t3, $a3, 16
    /* D788C 800C88DC 000B3C03 */  sra        $a3, $t3, 16
    /* D7890 800C88E0 A7A900EE */  sh         $t1, 0xEE($sp)
    /* D7894 800C88E4 00007812 */  mflo       $t7
    /* D7898 800C88E8 024FB821 */  addu       $s7, $s2, $t7
    /* D789C 800C88EC 3C0F8004 */  lui        $t7, %hi(D_80047950)
    /* D78A0 800C88F0 85EF7950 */  lh         $t7, %lo(D_80047950)($t7)
    /* D78A4 800C88F4 86F60004 */  lh         $s6, 0x4($s7)
    /* D78A8 800C88F8 3126FFFF */  andi       $a2, $t1, 0xFFFF
    /* D78AC 800C88FC 030FC823 */  subu       $t9, $t8, $t7
    /* D78B0 800C8900 AFB90014 */  sw         $t9, 0x14($sp)
    /* D78B4 800C8904 A7A900EC */  sh         $t1, 0xEC($sp)
    /* D78B8 800C8908 0C02E4EB */  jal        func_800B93AC_C835C
    /* D78BC 800C890C AFAE0010 */   sw        $t6, 0x10($sp)
    /* D78C0 800C8910 104000C4 */  beqz       $v0, .L800C8C24_D7BD4
    /* D78C4 800C8914 27A500E4 */   addiu     $a1, $sp, 0xE4
    /* D78C8 800C8918 8E020000 */  lw         $v0, 0x0($s0)
    /* D78CC 800C891C 3C0CFA00 */  lui        $t4, (0xFA000000 >> 16)
    /* D78D0 800C8920 26230008 */  addiu      $v1, $s1, 0x8
    /* D78D4 800C8924 244B0008 */  addiu      $t3, $v0, 0x8
    /* D78D8 800C8928 AE0B0000 */  sw         $t3, 0x0($s0)
    /* D78DC 800C892C AC4C0000 */  sw         $t4, 0x0($v0)
    /* D78E0 800C8930 906E0006 */  lbu        $t6, 0x6($v1)
    /* D78E4 800C8934 90790007 */  lbu        $t9, 0x7($v1)
    /* D78E8 800C8938 02D30019 */  multu      $s6, $s3
    /* D78EC 800C893C 000EC600 */  sll        $t8, $t6, 24
    /* D78F0 800C8940 906E0008 */  lbu        $t6, 0x8($v1)
    /* D78F4 800C8944 00195C00 */  sll        $t3, $t9, 16
    /* D78F8 800C8948 030B6025 */  or         $t4, $t8, $t3
    /* D78FC 800C894C 000E7A00 */  sll        $t7, $t6, 8
    /* D7900 800C8950 018FC825 */  or         $t9, $t4, $t7
    /* D7904 800C8954 373800FF */  ori        $t8, $t9, 0xFF
    /* D7908 800C8958 AC580004 */  sw         $t8, 0x4($v0)
    /* D790C 800C895C 846B0000 */  lh         $t3, 0x0($v1)
    /* D7910 800C8960 00006012 */  mflo       $t4
    /* D7914 800C8964 024C2021 */  addu       $a0, $s2, $t4
    /* D7918 800C8968 A7AB00DC */  sh         $t3, 0xDC($sp)
    /* D791C 800C896C 846D0002 */  lh         $t5, 0x2($v1)
    /* D7920 800C8970 24840008 */  addiu      $a0, $a0, 0x8
    /* D7924 800C8974 27A600EC */  addiu      $a2, $sp, 0xEC
    /* D7928 800C8978 A7AD00DE */  sh         $t5, 0xDE($sp)
    /* D792C 800C897C 846E0004 */  lh         $t6, 0x4($v1)
    /* D7930 800C8980 A7AE00E0 */  sh         $t6, 0xE0($sp)
    /* D7934 800C8984 908F0003 */  lbu        $t7, 0x3($a0)
    /* D7938 800C8988 000FCA00 */  sll        $t9, $t7, 8
    /* D793C 800C898C A7B900E4 */  sh         $t9, 0xE4($sp)
    /* D7940 800C8990 90980004 */  lbu        $t8, 0x4($a0)
    /* D7944 800C8994 00185A00 */  sll        $t3, $t8, 8
    /* D7948 800C8998 A7AB00E6 */  sh         $t3, 0xE6($sp)
    /* D794C 800C899C 908D0005 */  lbu        $t5, 0x5($a0)
    /* D7950 800C89A0 3C0BBA00 */  lui        $t3, (0xBA001402 >> 16)
    /* D7954 800C89A4 356B1402 */  ori        $t3, $t3, (0xBA001402 & 0xFFFF)
    /* D7958 800C89A8 000D7200 */  sll        $t6, $t5, 8
    /* D795C 800C89AC A7AE00E8 */  sh         $t6, 0xE8($sp)
    /* D7960 800C89B0 906C000B */  lbu        $t4, 0xB($v1)
    /* D7964 800C89B4 3C18BA00 */  lui        $t8, (0xBA000E02 >> 16)
    /* D7968 800C89B8 27A400DC */  addiu      $a0, $sp, 0xDC
    /* D796C 800C89BC 318F0008 */  andi       $t7, $t4, 0x8
    /* D7970 800C89C0 15E00038 */  bnez       $t7, .L800C8AA4_D7A54
    /* D7974 800C89C4 3C0CBA00 */   lui       $t4, (0xBA001402 >> 16)
    /* D7978 800C89C8 8E020000 */  lw         $v0, 0x0($s0)
    /* D797C 800C89CC 3C0EBA00 */  lui        $t6, (0xBA000E02 >> 16)
    /* D7980 800C89D0 35CE0E02 */  ori        $t6, $t6, (0xBA000E02 & 0xFFFF)
    /* D7984 800C89D4 24590008 */  addiu      $t9, $v0, 0x8
    /* D7988 800C89D8 AE190000 */  sw         $t9, 0x0($s0)
    /* D798C 800C89DC AC400004 */  sw         $zero, 0x4($v0)
    /* D7990 800C89E0 AC540000 */  sw         $s4, 0x0($v0)
    /* D7994 800C89E4 8E020000 */  lw         $v0, 0x0($s0)
    /* D7998 800C89E8 3C198003 */  lui        $t9, %hi(D_800311D0)
    /* D799C 800C89EC 273911D0 */  addiu      $t9, $t9, %lo(D_800311D0)
    /* D79A0 800C89F0 24580008 */  addiu      $t8, $v0, 0x8
    /* D79A4 800C89F4 AE180000 */  sw         $t8, 0x0($s0)
    /* D79A8 800C89F8 AC400004 */  sw         $zero, 0x4($v0)
    /* D79AC 800C89FC AC4B0000 */  sw         $t3, 0x0($v0)
    /* D79B0 800C8A00 8E020000 */  lw         $v0, 0x0($s0)
    /* D79B4 800C8A04 3C0F0600 */  lui        $t7, (0x6000000 >> 16)
    /* D79B8 800C8A08 3C0BFCFF */  lui        $t3, (0xFCFFFFFF >> 16)
    /* D79BC 800C8A0C 244D0008 */  addiu      $t5, $v0, 0x8
    /* D79C0 800C8A10 AE0D0000 */  sw         $t5, 0x0($s0)
    /* D79C4 800C8A14 AC400004 */  sw         $zero, 0x4($v0)
    /* D79C8 800C8A18 AC4E0000 */  sw         $t6, 0x0($v0)
    /* D79CC 800C8A1C 8E020000 */  lw         $v0, 0x0($s0)
    /* D79D0 800C8A20 3C0DFFFD */  lui        $t5, (0xFFFDF6FB >> 16)
    /* D79D4 800C8A24 35ADF6FB */  ori        $t5, $t5, (0xFFFDF6FB & 0xFFFF)
    /* D79D8 800C8A28 244C0008 */  addiu      $t4, $v0, 0x8
    /* D79DC 800C8A2C AE0C0000 */  sw         $t4, 0x0($s0)
    /* D79E0 800C8A30 AC590004 */  sw         $t9, 0x4($v0)
    /* D79E4 800C8A34 AC4F0000 */  sw         $t7, 0x0($v0)
    /* D79E8 800C8A38 8E020000 */  lw         $v0, 0x0($s0)
    /* D79EC 800C8A3C 356BFFFF */  ori        $t3, $t3, (0xFCFFFFFF & 0xFFFF)
    /* D79F0 800C8A40 3C0F0055 */  lui        $t7, (0x552078 >> 16)
    /* D79F4 800C8A44 24580008 */  addiu      $t8, $v0, 0x8
    /* D79F8 800C8A48 AE180000 */  sw         $t8, 0x0($s0)
    /* D79FC 800C8A4C AC4D0004 */  sw         $t5, 0x4($v0)
    /* D7A00 800C8A50 AC4B0000 */  sw         $t3, 0x0($v0)
    /* D7A04 800C8A54 8E020000 */  lw         $v0, 0x0($s0)
    /* D7A08 800C8A58 3C0CB900 */  lui        $t4, (0xB900031D >> 16)
    /* D7A0C 800C8A5C 358C031D */  ori        $t4, $t4, (0xB900031D & 0xFFFF)
    /* D7A10 800C8A60 244E0008 */  addiu      $t6, $v0, 0x8
    /* D7A14 800C8A64 AE0E0000 */  sw         $t6, 0x0($s0)
    /* D7A18 800C8A68 35EF2078 */  ori        $t7, $t7, (0x552078 & 0xFFFF)
    /* D7A1C 800C8A6C AC4F0004 */  sw         $t7, 0x4($v0)
    /* D7A20 800C8A70 AC4C0000 */  sw         $t4, 0x0($v0)
    /* D7A24 800C8A74 8E020000 */  lw         $v0, 0x0($s0)
    /* D7A28 800C8A78 3C180002 */  lui        $t8, (0x20000 >> 16)
    /* D7A2C 800C8A7C 24590008 */  addiu      $t9, $v0, 0x8
    /* D7A30 800C8A80 AE190000 */  sw         $t9, 0x0($s0)
    /* D7A34 800C8A84 AC580004 */  sw         $t8, 0x4($v0)
    /* D7A38 800C8A88 AC5E0000 */  sw         $fp, 0x0($v0)
    /* D7A3C 800C8A8C 8E020000 */  lw         $v0, 0x0($s0)
    /* D7A40 800C8A90 244B0008 */  addiu      $t3, $v0, 0x8
    /* D7A44 800C8A94 AE0B0000 */  sw         $t3, 0x0($s0)
    /* D7A48 800C8A98 AC400004 */  sw         $zero, 0x4($v0)
    /* D7A4C 800C8A9C 10000044 */  b          .L800C8BB0_D7B60
    /* D7A50 800C8AA0 AC540000 */   sw        $s4, 0x0($v0)
  .L800C8AA4_D7A54:
    /* D7A54 800C8AA4 8E020000 */  lw         $v0, 0x0($s0)
    /* D7A58 800C8AA8 358C1402 */  ori        $t4, $t4, (0xBA001402 & 0xFFFF)
    /* D7A5C 800C8AAC 3C0F0010 */  lui        $t7, (0x100000 >> 16)
    /* D7A60 800C8AB0 244D0008 */  addiu      $t5, $v0, 0x8
    /* D7A64 800C8AB4 AE0D0000 */  sw         $t5, 0x0($s0)
    /* D7A68 800C8AB8 AC400004 */  sw         $zero, 0x4($v0)
    /* D7A6C 800C8ABC AC540000 */  sw         $s4, 0x0($v0)
    /* D7A70 800C8AC0 8E020000 */  lw         $v0, 0x0($s0)
    /* D7A74 800C8AC4 37180E02 */  ori        $t8, $t8, (0xBA000E02 & 0xFFFF)
    /* D7A78 800C8AC8 340B8000 */  ori        $t3, $zero, 0x8000
    /* D7A7C 800C8ACC 244E0008 */  addiu      $t6, $v0, 0x8
    /* D7A80 800C8AD0 AE0E0000 */  sw         $t6, 0x0($s0)
    /* D7A84 800C8AD4 AC4F0004 */  sw         $t7, 0x4($v0)
    /* D7A88 800C8AD8 AC4C0000 */  sw         $t4, 0x0($v0)
    /* D7A8C 800C8ADC 8E020000 */  lw         $v0, 0x0($s0)
    /* D7A90 800C8AE0 3C0CC811 */  lui        $t4, (0xC8112078 >> 16)
    /* D7A94 800C8AE4 3C0EB900 */  lui        $t6, (0xB900031D >> 16)
    /* D7A98 800C8AE8 24590008 */  addiu      $t9, $v0, 0x8
    /* D7A9C 800C8AEC AE190000 */  sw         $t9, 0x0($s0)
    /* D7AA0 800C8AF0 AC4B0004 */  sw         $t3, 0x4($v0)
    /* D7AA4 800C8AF4 AC580000 */  sw         $t8, 0x0($v0)
    /* D7AA8 800C8AF8 8E020000 */  lw         $v0, 0x0($s0)
    /* D7AAC 800C8AFC 35CE031D */  ori        $t6, $t6, (0xB900031D & 0xFFFF)
    /* D7AB0 800C8B00 358C2078 */  ori        $t4, $t4, (0xC8112078 & 0xFFFF)
    /* D7AB4 800C8B04 244D0008 */  addiu      $t5, $v0, 0x8
    /* D7AB8 800C8B08 AE0D0000 */  sw         $t5, 0x0($s0)
    /* D7ABC 800C8B0C AC4C0004 */  sw         $t4, 0x4($v0)
    /* D7AC0 800C8B10 AC4E0000 */  sw         $t6, 0x0($v0)
    /* D7AC4 800C8B14 8E020000 */  lw         $v0, 0x0($s0)
    /* D7AC8 800C8B18 3C190003 */  lui        $t9, (0x30001 >> 16)
    /* D7ACC 800C8B1C 37390001 */  ori        $t9, $t9, (0x30001 & 0xFFFF)
    /* D7AD0 800C8B20 244F0008 */  addiu      $t7, $v0, 0x8
    /* D7AD4 800C8B24 AE0F0000 */  sw         $t7, 0x0($s0)
    /* D7AD8 800C8B28 AC590004 */  sw         $t9, 0x4($v0)
    /* D7ADC 800C8B2C AC5E0000 */  sw         $fp, 0x0($v0)
    /* D7AE0 800C8B30 8E020000 */  lw         $v0, 0x0($s0)
    /* D7AE4 800C8B34 3C0DFFFE */  lui        $t5, (0xFFFE7838 >> 16)
    /* D7AE8 800C8B38 3C0BFCFF */  lui        $t3, (0xFCFFFFFF >> 16)
    /* D7AEC 800C8B3C 24580008 */  addiu      $t8, $v0, 0x8
    /* D7AF0 800C8B40 AE180000 */  sw         $t8, 0x0($s0)
    /* D7AF4 800C8B44 356BFFFF */  ori        $t3, $t3, (0xFCFFFFFF & 0xFFFF)
    /* D7AF8 800C8B48 35AD7838 */  ori        $t5, $t5, (0xFFFE7838 & 0xFFFF)
    /* D7AFC 800C8B4C AC4D0004 */  sw         $t5, 0x4($v0)
    /* D7B00 800C8B50 AC4B0000 */  sw         $t3, 0x0($v0)
    /* D7B04 800C8B54 906E000B */  lbu        $t6, 0xB($v1)
    /* D7B08 800C8B58 31CC0080 */  andi       $t4, $t6, 0x80
    /* D7B0C 800C8B5C 5580000A */  bnel       $t4, $zero, .L800C8B88_D7B38
    /* D7B10 800C8B60 8E020000 */   lw        $v0, 0x0($s0)
    /* D7B14 800C8B64 8E020000 */  lw         $v0, 0x0($s0)
    /* D7B18 800C8B68 3C19B600 */  lui        $t9, (0xB6000000 >> 16)
    /* D7B1C 800C8B6C 3C180002 */  lui        $t8, (0x20000 >> 16)
    /* D7B20 800C8B70 244F0008 */  addiu      $t7, $v0, 0x8
    /* D7B24 800C8B74 AE0F0000 */  sw         $t7, 0x0($s0)
    /* D7B28 800C8B78 AC580004 */  sw         $t8, 0x4($v0)
    /* D7B2C 800C8B7C 10000007 */  b          .L800C8B9C_D7B4C
    /* D7B30 800C8B80 AC590000 */   sw        $t9, 0x0($v0)
    /* D7B34 800C8B84 8E020000 */  lw         $v0, 0x0($s0)
  .L800C8B88_D7B38:
    /* D7B38 800C8B88 3C0D0002 */  lui        $t5, (0x20000 >> 16)
    /* D7B3C 800C8B8C 244B0008 */  addiu      $t3, $v0, 0x8
    /* D7B40 800C8B90 AE0B0000 */  sw         $t3, 0x0($s0)
    /* D7B44 800C8B94 AC4D0004 */  sw         $t5, 0x4($v0)
    /* D7B48 800C8B98 AC5E0000 */  sw         $fp, 0x0($v0)
  .L800C8B9C_D7B4C:
    /* D7B4C 800C8B9C 8E020000 */  lw         $v0, 0x0($s0)
    /* D7B50 800C8BA0 244E0008 */  addiu      $t6, $v0, 0x8
    /* D7B54 800C8BA4 AE0E0000 */  sw         $t6, 0x0($s0)
    /* D7B58 800C8BA8 AC400004 */  sw         $zero, 0x4($v0)
    /* D7B5C 800C8BAC AC540000 */  sw         $s4, 0x0($v0)
  .L800C8BB0_D7B60:
    /* D7B60 800C8BB0 0C000E74 */  jal        func_800039D0_45D0
    /* D7B64 800C8BB4 8EA70000 */   lw        $a3, 0x0($s5)
    /* D7B68 800C8BB8 8E020000 */  lw         $v0, 0x0($s0)
    /* D7B6C 800C8BBC 3C0F0104 */  lui        $t7, (0x1040040 >> 16)
    /* D7B70 800C8BC0 35EF0040 */  ori        $t7, $t7, (0x1040040 & 0xFFFF)
    /* D7B74 800C8BC4 244C0008 */  addiu      $t4, $v0, 0x8
    /* D7B78 800C8BC8 AE0C0000 */  sw         $t4, 0x0($s0)
    /* D7B7C 800C8BCC AC4F0000 */  sw         $t7, 0x0($v0)
    /* D7B80 800C8BD0 8EB90000 */  lw         $t9, 0x0($s5)
    /* D7B84 800C8BD4 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* D7B88 800C8BD8 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* D7B8C 800C8BDC 0321C024 */  and        $t8, $t9, $at
    /* D7B90 800C8BE0 AC580004 */  sw         $t8, 0x4($v0)
    /* D7B94 800C8BE4 8EAB0000 */  lw         $t3, 0x0($s5)
    /* D7B98 800C8BE8 8E020000 */  lw         $v0, 0x0($s0)
    /* D7B9C 800C8BEC 3C0C0600 */  lui        $t4, (0x6000000 >> 16)
    /* D7BA0 800C8BF0 256D0040 */  addiu      $t5, $t3, 0x40
    /* D7BA4 800C8BF4 244E0008 */  addiu      $t6, $v0, 0x8
    /* D7BA8 800C8BF8 AEAD0000 */  sw         $t5, 0x0($s5)
    /* D7BAC 800C8BFC AE0E0000 */  sw         $t6, 0x0($s0)
    /* D7BB0 800C8C00 AC4C0000 */  sw         $t4, 0x0($v0)
    /* D7BB4 800C8C04 8EEF0008 */  lw         $t7, 0x8($s7)
    /* D7BB8 800C8C08 3C18BD00 */  lui        $t8, (0xBD000000 >> 16)
    /* D7BBC 800C8C0C AC4F0004 */  sw         $t7, 0x4($v0)
    /* D7BC0 800C8C10 8E020000 */  lw         $v0, 0x0($s0)
    /* D7BC4 800C8C14 24590008 */  addiu      $t9, $v0, 0x8
    /* D7BC8 800C8C18 AE190000 */  sw         $t9, 0x0($s0)
    /* D7BCC 800C8C1C AC400004 */  sw         $zero, 0x4($v0)
    /* D7BD0 800C8C20 AC580000 */  sw         $t8, 0x0($v0)
  .L800C8C24_D7BD4:
    /* D7BD4 800C8C24 02D30019 */  multu      $s6, $s3
    /* D7BD8 800C8C28 2401FFFA */  addiu      $at, $zero, -0x6
    /* D7BDC 800C8C2C 00005812 */  mflo       $t3
    /* D7BE0 800C8C30 024B6821 */  addu       $t5, $s2, $t3
    /* D7BE4 800C8C34 85A80004 */  lh         $t0, 0x4($t5)
    /* D7BE8 800C8C38 11010003 */  beq        $t0, $at, .L800C8C48_D7BF8
    /* D7BEC 800C8C3C 2401FFFB */   addiu     $at, $zero, -0x5
    /* D7BF0 800C8C40 1501FF11 */  bne        $t0, $at, .L800C8888_D7838
    /* D7BF4 800C8C44 00000000 */   nop
  .L800C8C48_D7BF8:
    /* D7BF8 800C8C48 8FBF004C */  lw         $ra, 0x4C($sp)
    /* D7BFC 800C8C4C D7B40020 */  ldc1       $f20, 0x20($sp)
    /* D7C00 800C8C50 8FB00028 */  lw         $s0, 0x28($sp)
    /* D7C04 800C8C54 8FB1002C */  lw         $s1, 0x2C($sp)
    /* D7C08 800C8C58 8FB20030 */  lw         $s2, 0x30($sp)
    /* D7C0C 800C8C5C 8FB30034 */  lw         $s3, 0x34($sp)
    /* D7C10 800C8C60 8FB40038 */  lw         $s4, 0x38($sp)
    /* D7C14 800C8C64 8FB5003C */  lw         $s5, 0x3C($sp)
    /* D7C18 800C8C68 8FB60040 */  lw         $s6, 0x40($sp)
    /* D7C1C 800C8C6C 8FB70044 */  lw         $s7, 0x44($sp)
    /* D7C20 800C8C70 8FBE0048 */  lw         $fp, 0x48($sp)
    /* D7C24 800C8C74 03E00008 */  jr         $ra
    /* D7C28 800C8C78 27BD0100 */   addiu     $sp, $sp, 0x100
endlabel func_800C8814_D77C4
