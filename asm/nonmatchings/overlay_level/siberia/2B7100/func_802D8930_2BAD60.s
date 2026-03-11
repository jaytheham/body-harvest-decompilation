nonmatching func_802D8930_2BAD60, 0x90C

glabel func_802D8930_2BAD60
    /* 2BAD60 802D8930 308600FF */  andi       $a2, $a0, 0xFF
    /* 2BAD64 802D8934 00067080 */  sll        $t6, $a2, 2
    /* 2BAD68 802D8938 27BDFF40 */  addiu      $sp, $sp, -0xC0
    /* 2BAD6C 802D893C 01C67021 */  addu       $t6, $t6, $a2
    /* 2BAD70 802D8940 3C0F8005 */  lui        $t7, %hi(alienInstances)
    /* 2BAD74 802D8944 AFB00048 */  sw         $s0, 0x48($sp)
    /* 2BAD78 802D8948 25EF8198 */  addiu      $t7, $t7, %lo(alienInstances)
    /* 2BAD7C 802D894C 000E7100 */  sll        $t6, $t6, 4
    /* 2BAD80 802D8950 01CF8021 */  addu       $s0, $t6, $t7
    /* 2BAD84 802D8954 8E020020 */  lw         $v0, 0x20($s0)
    /* 2BAD88 802D8958 AFBF004C */  sw         $ra, 0x4C($sp)
    /* 2BAD8C 802D895C F7B40040 */  sdc1       $f20, 0x40($sp)
    /* 2BAD90 802D8960 30580600 */  andi       $t8, $v0, 0x600
    /* 2BAD94 802D8964 13000230 */  beqz       $t8, .L802D9228_2BB658
    /* 2BAD98 802D8968 AFA400C0 */   sw        $a0, 0xC0($sp)
    /* 2BAD9C 802D896C 0002CAC0 */  sll        $t9, $v0, 11
    /* 2BADA0 802D8970 07200017 */  bltz       $t9, .L802D89D0_2BAE00
    /* 2BADA4 802D8974 240E7D00 */   addiu     $t6, $zero, 0x7D00
    /* 2BADA8 802D8978 A2000036 */  sb         $zero, 0x36($s0)
    /* 2BADAC 802D897C A200004B */  sb         $zero, 0x4B($s0)
    /* 2BADB0 802D8980 A60E002C */  sh         $t6, 0x2C($s0)
    /* 2BADB4 802D8984 00C02025 */  or         $a0, $a2, $zero
    /* 2BADB8 802D8988 0C04DD1A */  jal        func_80137468_146418
    /* 2BADBC 802D898C 24050010 */   addiu     $a1, $zero, 0x10
    /* 2BADC0 802D8990 920F001A */  lbu        $t7, 0x1A($s0)
    /* 2BADC4 802D8994 3C078025 */  lui        $a3, %hi(D_8025668C)
    /* 2BADC8 802D8998 86040000 */  lh         $a0, 0x0($s0)
    /* 2BADCC 802D899C 000FC080 */  sll        $t8, $t7, 2
    /* 2BADD0 802D89A0 030FC023 */  subu       $t8, $t8, $t7
    /* 2BADD4 802D89A4 0018C080 */  sll        $t8, $t8, 2
    /* 2BADD8 802D89A8 030FC021 */  addu       $t8, $t8, $t7
    /* 2BADDC 802D89AC 0018C0C0 */  sll        $t8, $t8, 3
    /* 2BADE0 802D89B0 00F83821 */  addu       $a3, $a3, $t8
    /* 2BADE4 802D89B4 94E7668C */  lhu        $a3, %lo(D_8025668C)($a3)
    /* 2BADE8 802D89B8 86050002 */  lh         $a1, 0x2($s0)
    /* 2BADEC 802D89BC 86060004 */  lh         $a2, 0x4($s0)
    /* 2BADF0 802D89C0 0C037E12 */  jal        func_800DF848_EE7F8
    /* 2BADF4 802D89C4 AFA00010 */   sw        $zero, 0x10($sp)
    /* 2BADF8 802D89C8 10000218 */  b          .L802D922C_2BB65C
    /* 2BADFC 802D89CC 8FBF004C */   lw        $ra, 0x4C($sp)
  .L802D89D0_2BAE00:
    /* 2BAE00 802D89D0 8619000C */  lh         $t9, 0xC($s0)
    /* 2BAE04 802D89D4 3C088015 */  lui        $t0, %hi(D_8014DD50)
    /* 2BAE08 802D89D8 2508DD50 */  addiu      $t0, $t0, %lo(D_8014DD50)
    /* 2BAE0C 802D89DC 00197100 */  sll        $t6, $t9, 4
    /* 2BAE10 802D89E0 010E7821 */  addu       $t7, $t0, $t6
    /* 2BAE14 802D89E4 81EC000C */  lb         $t4, 0xC($t7)
    /* 2BAE18 802D89E8 A3A600C3 */  sb         $a2, 0xC3($sp)
    /* 2BAE1C 802D89EC 000CC100 */  sll        $t8, $t4, 4
    /* 2BAE20 802D89F0 01184821 */  addu       $t1, $t0, $t8
    /* 2BAE24 802D89F4 8122000D */  lb         $v0, 0xD($t1)
    /* 2BAE28 802D89F8 8125000C */  lb         $a1, 0xC($t1)
    /* 2BAE2C 802D89FC 0002C900 */  sll        $t9, $v0, 4
    /* 2BAE30 802D8A00 01195021 */  addu       $t2, $t0, $t9
    /* 2BAE34 802D8A04 814D000C */  lb         $t5, 0xC($t2)
    /* 2BAE38 802D8A08 8143000D */  lb         $v1, 0xD($t2)
    /* 2BAE3C 802D8A0C 000D7100 */  sll        $t6, $t5, 4
    /* 2BAE40 802D8A10 010E7821 */  addu       $t7, $t0, $t6
    /* 2BAE44 802D8A14 00037100 */  sll        $t6, $v1, 4
    /* 2BAE48 802D8A18 010E5821 */  addu       $t3, $t0, $t6
    /* 2BAE4C 802D8A1C 817F000C */  lb         $ra, 0xC($t3)
    /* 2BAE50 802D8A20 AFAF0060 */  sw         $t7, 0x60($sp)
    /* 2BAE54 802D8A24 81F9000C */  lb         $t9, 0xC($t7)
    /* 2BAE58 802D8A28 001F7900 */  sll        $t7, $ra, 4
    /* 2BAE5C 802D8A2C 8164000D */  lb         $a0, 0xD($t3)
    /* 2BAE60 802D8A30 010FC021 */  addu       $t8, $t0, $t7
    /* 2BAE64 802D8A34 AFB80058 */  sw         $t8, 0x58($sp)
    /* 2BAE68 802D8A38 A7B900B0 */  sh         $t9, 0xB0($sp)
    /* 2BAE6C 802D8A3C 830F000C */  lb         $t7, 0xC($t8)
    /* 2BAE70 802D8A40 0004C100 */  sll        $t8, $a0, 4
    /* 2BAE74 802D8A44 01187021 */  addu       $t6, $t0, $t8
    /* 2BAE78 802D8A48 81C6000C */  lb         $a2, 0xC($t6)
    /* 2BAE7C 802D8A4C A7AF00AA */  sh         $t7, 0xAA($sp)
    /* 2BAE80 802D8A50 0006C100 */  sll        $t8, $a2, 4
    /* 2BAE84 802D8A54 01187021 */  addu       $t6, $t0, $t8
    /* 2BAE88 802D8A58 81C7000C */  lb         $a3, 0xC($t6)
    /* 2BAE8C 802D8A5C A7A30092 */  sh         $v1, 0x92($sp)
    /* 2BAE90 802D8A60 8603002C */  lh         $v1, 0x2C($s0)
    /* 2BAE94 802D8A64 A7AC0088 */  sh         $t4, 0x88($sp)
    /* 2BAE98 802D8A68 A7A2008C */  sh         $v0, 0x8C($sp)
    /* 2BAE9C 802D8A6C 2861003D */  slti       $at, $v1, 0x3D
    /* 2BAEA0 802D8A70 A7A5008A */  sh         $a1, 0x8A($sp)
    /* 2BAEA4 802D8A74 A7AD008E */  sh         $t5, 0x8E($sp)
    /* 2BAEA8 802D8A78 A7BF0094 */  sh         $ra, 0x94($sp)
    /* 2BAEAC 802D8A7C A7BF00AC */  sh         $ra, 0xAC($sp)
    /* 2BAEB0 802D8A80 A7B90090 */  sh         $t9, 0x90($sp)
    /* 2BAEB4 802D8A84 A7A40098 */  sh         $a0, 0x98($sp)
    /* 2BAEB8 802D8A88 A7AF0096 */  sh         $t7, 0x96($sp)
    /* 2BAEBC 802D8A8C A7A6009A */  sh         $a2, 0x9A($sp)
    /* 2BAEC0 802D8A90 14200175 */  bnez       $at, .L802D9068_2BB498
    /* 2BAEC4 802D8A94 A7A7009C */   sh        $a3, 0x9C($sp)
    /* 2BAEC8 802D8A98 93A400C3 */  lbu        $a0, 0xC3($sp)
    /* 2BAECC 802D8A9C 2405FF38 */  addiu      $a1, $zero, -0xC8
    /* 2BAED0 802D8AA0 AFA90068 */  sw         $t1, 0x68($sp)
    /* 2BAED4 802D8AA4 AFAA0064 */  sw         $t2, 0x64($sp)
    /* 2BAED8 802D8AA8 AFAB005C */  sw         $t3, 0x5C($sp)
    /* 2BAEDC 802D8AAC A7AC00BE */  sh         $t4, 0xBE($sp)
    /* 2BAEE0 802D8AB0 0C021D07 */  jal        func_8008741C_963CC
    /* 2BAEE4 802D8AB4 A7AD00B2 */   sh        $t5, 0xB2($sp)
    /* 2BAEE8 802D8AB8 3C18802E */  lui        $t8, %hi(D_802E1974)
    /* 2BAEEC 802D8ABC 27181974 */  addiu      $t8, $t8, %lo(D_802E1974)
    /* 2BAEF0 802D8AC0 AFB80010 */  sw         $t8, 0x10($sp)
    /* 2BAEF4 802D8AC4 93A400C3 */  lbu        $a0, 0xC3($sp)
    /* 2BAEF8 802D8AC8 2405000B */  addiu      $a1, $zero, 0xB
    /* 2BAEFC 802D8ACC 24060006 */  addiu      $a2, $zero, 0x6
    /* 2BAF00 802D8AD0 0C0207C6 */  jal        func_80081F18_90EC8
    /* 2BAF04 802D8AD4 27A70088 */   addiu     $a3, $sp, 0x88
    /* 2BAF08 802D8AD8 24010002 */  addiu      $at, $zero, 0x2
    /* 2BAF0C 802D8ADC 8FA90068 */  lw         $t1, 0x68($sp)
    /* 2BAF10 802D8AE0 8FAA0064 */  lw         $t2, 0x64($sp)
    /* 2BAF14 802D8AE4 1041000B */  beq        $v0, $at, .L802D8B14_2BAF44
    /* 2BAF18 802D8AE8 8FAB005C */   lw        $t3, 0x5C($sp)
    /* 2BAF1C 802D8AEC 24010003 */  addiu      $at, $zero, 0x3
    /* 2BAF20 802D8AF0 10410081 */  beq        $v0, $at, .L802D8CF8_2BB128
    /* 2BAF24 802D8AF4 24010005 */   addiu     $at, $zero, 0x5
    /* 2BAF28 802D8AF8 104100F6 */  beq        $v0, $at, .L802D8ED4_2BB304
    /* 2BAF2C 802D8AFC 3C0E8025 */   lui       $t6, %hi(alienSpecs)
    /* 2BAF30 802D8B00 24010006 */  addiu      $at, $zero, 0x6
    /* 2BAF34 802D8B04 10410156 */  beq        $v0, $at, .L802D9060_2BB490
    /* 2BAF38 802D8B08 2418003C */   addiu     $t8, $zero, 0x3C
    /* 2BAF3C 802D8B0C 100001C7 */  b          .L802D922C_2BB65C
    /* 2BAF40 802D8B10 8FBF004C */   lw        $ra, 0x4C($sp)
  .L802D8B14_2BAF44:
    /* 2BAF44 802D8B14 86030006 */  lh         $v1, 0x6($s0)
    /* 2BAF48 802D8B18 AFAB005C */  sw         $t3, 0x5C($sp)
    /* 2BAF4C 802D8B1C 24636000 */  addiu      $v1, $v1, 0x6000
    /* 2BAF50 802D8B20 3064FFFF */  andi       $a0, $v1, 0xFFFF
    /* 2BAF54 802D8B24 0C007660 */  jal        sins
    /* 2BAF58 802D8B28 AFA40054 */   sw        $a0, 0x54($sp)
    /* 2BAF5C 802D8B2C 44822000 */  mtc1       $v0, $f4
    /* 2BAF60 802D8B30 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2BAF64 802D8B34 4481A800 */  mtc1       $at, $f21
    /* 2BAF68 802D8B38 468021A0 */  cvt.s.w    $f6, $f4
    /* 2BAF6C 802D8B3C 4480A000 */  mtc1       $zero, $f20
    /* 2BAF70 802D8B40 3C01402E */  lui        $at, (0x402E0000 >> 16)
    /* 2BAF74 802D8B44 44818800 */  mtc1       $at, $f17
    /* 2BAF78 802D8B48 44808000 */  mtc1       $zero, $f16
    /* 2BAF7C 802D8B4C 8FA40054 */  lw         $a0, 0x54($sp)
    /* 2BAF80 802D8B50 46003221 */  cvt.d.s    $f8, $f6
    /* 2BAF84 802D8B54 46344283 */  div.d      $f10, $f8, $f20
    /* 2BAF88 802D8B58 46305482 */  mul.d      $f18, $f10, $f16
    /* 2BAF8C 802D8B5C 4620910D */  trunc.w.d  $f4, $f18
    /* 2BAF90 802D8B60 44192000 */  mfc1       $t9, $f4
    /* 2BAF94 802D8B64 0C007654 */  jal        coss
    /* 2BAF98 802D8B68 A7B9007A */   sh        $t9, 0x7A($sp)
    /* 2BAF9C 802D8B6C 44823000 */  mtc1       $v0, $f6
    /* 2BAFA0 802D8B70 87A500AA */  lh         $a1, 0xAA($sp)
    /* 2BAFA4 802D8B74 8FAB005C */  lw         $t3, 0x5C($sp)
    /* 2BAFA8 802D8B78 46803220 */  cvt.s.w    $f8, $f6
    /* 2BAFAC 802D8B7C 3C088015 */  lui        $t0, %hi(D_8014DD50)
    /* 2BAFB0 802D8B80 8FA90058 */  lw         $t1, 0x58($sp)
    /* 2BAFB4 802D8B84 2508DD50 */  addiu      $t0, $t0, %lo(D_8014DD50)
    /* 2BAFB8 802D8B88 00057900 */  sll        $t7, $a1, 4
    /* 2BAFBC 802D8B8C 010F1821 */  addu       $v1, $t0, $t7
    /* 2BAFC0 802D8B90 460042A1 */  cvt.d.s    $f10, $f8
    /* 2BAFC4 802D8B94 84780000 */  lh         $t8, 0x0($v1)
    /* 2BAFC8 802D8B98 46345403 */  div.d      $f16, $f10, $f20
    /* 2BAFCC 802D8B9C 856E0000 */  lh         $t6, 0x0($t3)
    /* 2BAFD0 802D8BA0 852F0000 */  lh         $t7, 0x0($t1)
    /* 2BAFD4 802D8BA4 3C01C02E */  lui        $at, (0xC02E0000 >> 16)
    /* 2BAFD8 802D8BA8 44819800 */  mtc1       $at, $f19
    /* 2BAFDC 802D8BAC 44809000 */  mtc1       $zero, $f18
    /* 2BAFE0 802D8BB0 030EC821 */  addu       $t9, $t8, $t6
    /* 2BAFE4 802D8BB4 032F3021 */  addu       $a2, $t9, $t7
    /* 2BAFE8 802D8BB8 84790002 */  lh         $t9, 0x2($v1)
    /* 2BAFEC 802D8BBC 856F0002 */  lh         $t7, 0x2($t3)
    /* 2BAFF0 802D8BC0 852E0002 */  lh         $t6, 0x2($t1)
    /* 2BAFF4 802D8BC4 0006C400 */  sll        $t8, $a2, 16
    /* 2BAFF8 802D8BC8 00183403 */  sra        $a2, $t8, 16
    /* 2BAFFC 802D8BCC 032FC021 */  addu       $t8, $t9, $t7
    /* 2BB000 802D8BD0 030E3821 */  addu       $a3, $t8, $t6
    /* 2BB004 802D8BD4 84780004 */  lh         $t8, 0x4($v1)
    /* 2BB008 802D8BD8 856E0004 */  lh         $t6, 0x4($t3)
    /* 2BB00C 802D8BDC 852F0004 */  lh         $t7, 0x4($t1)
    /* 2BB010 802D8BE0 0007CC00 */  sll        $t9, $a3, 16
    /* 2BB014 802D8BE4 00193C03 */  sra        $a3, $t9, 16
    /* 2BB018 802D8BE8 030EC821 */  addu       $t9, $t8, $t6
    /* 2BB01C 802D8BEC 032FC021 */  addu       $t8, $t9, $t7
    /* 2BB020 802D8BF0 AFB80010 */  sw         $t8, 0x10($sp)
    /* 2BB024 802D8BF4 87AE007A */  lh         $t6, 0x7A($sp)
    /* 2BB028 802D8BF8 2419000F */  addiu      $t9, $zero, 0xF
    /* 2BB02C 802D8BFC AFB90018 */  sw         $t9, 0x18($sp)
    /* 2BB030 802D8C00 93A400C3 */  lbu        $a0, 0xC3($sp)
    /* 2BB034 802D8C04 AFAE0014 */  sw         $t6, 0x14($sp)
    /* 2BB038 802D8C08 46328102 */  mul.d      $f4, $f16, $f18
    /* 2BB03C 802D8C0C 4620218D */  trunc.w.d  $f6, $f4
    /* 2BB040 802D8C10 44183000 */  mfc1       $t8, $f6
    /* 2BB044 802D8C14 0C022390 */  jal        func_80088E40_97DF0
    /* 2BB048 802D8C18 AFB8001C */   sw        $t8, 0x1C($sp)
    /* 2BB04C 802D8C1C 86030006 */  lh         $v1, 0x6($s0)
    /* 2BB050 802D8C20 34018000 */  ori        $at, $zero, 0x8000
    /* 2BB054 802D8C24 00611821 */  addu       $v1, $v1, $at
    /* 2BB058 802D8C28 3064FFFF */  andi       $a0, $v1, 0xFFFF
    /* 2BB05C 802D8C2C 0C007660 */  jal        sins
    /* 2BB060 802D8C30 AFA40054 */   sw        $a0, 0x54($sp)
    /* 2BB064 802D8C34 44824000 */  mtc1       $v0, $f8
    /* 2BB068 802D8C38 3C01402E */  lui        $at, (0x402E0000 >> 16)
    /* 2BB06C 802D8C3C 44812800 */  mtc1       $at, $f5
    /* 2BB070 802D8C40 468042A0 */  cvt.s.w    $f10, $f8
    /* 2BB074 802D8C44 44802000 */  mtc1       $zero, $f4
    /* 2BB078 802D8C48 8FA40054 */  lw         $a0, 0x54($sp)
    /* 2BB07C 802D8C4C 46005421 */  cvt.d.s    $f16, $f10
    /* 2BB080 802D8C50 46348483 */  div.d      $f18, $f16, $f20
    /* 2BB084 802D8C54 46249182 */  mul.d      $f6, $f18, $f4
    /* 2BB088 802D8C58 4620320D */  trunc.w.d  $f8, $f6
    /* 2BB08C 802D8C5C 44194000 */  mfc1       $t9, $f8
    /* 2BB090 802D8C60 0C007654 */  jal        coss
    /* 2BB094 802D8C64 A7B9007A */   sh        $t9, 0x7A($sp)
    /* 2BB098 802D8C68 44825000 */  mtc1       $v0, $f10
    /* 2BB09C 802D8C6C 8FA30058 */  lw         $v1, 0x58($sp)
    /* 2BB0A0 802D8C70 8FAB005C */  lw         $t3, 0x5C($sp)
    /* 2BB0A4 802D8C74 46805420 */  cvt.s.w    $f16, $f10
    /* 2BB0A8 802D8C78 3C01C02E */  lui        $at, (0xC02E0000 >> 16)
    /* 2BB0AC 802D8C7C 44813800 */  mtc1       $at, $f7
    /* 2BB0B0 802D8C80 44803000 */  mtc1       $zero, $f6
    /* 2BB0B4 802D8C84 846F0000 */  lh         $t7, 0x0($v1)
    /* 2BB0B8 802D8C88 85780000 */  lh         $t8, 0x0($t3)
    /* 2BB0BC 802D8C8C 460084A1 */  cvt.d.s    $f18, $f16
    /* 2BB0C0 802D8C90 87B9007A */  lh         $t9, 0x7A($sp)
    /* 2BB0C4 802D8C94 46349103 */  div.d      $f4, $f18, $f20
    /* 2BB0C8 802D8C98 01F83021 */  addu       $a2, $t7, $t8
    /* 2BB0CC 802D8C9C 846F0002 */  lh         $t7, 0x2($v1)
    /* 2BB0D0 802D8CA0 85780002 */  lh         $t8, 0x2($t3)
    /* 2BB0D4 802D8CA4 00067400 */  sll        $t6, $a2, 16
    /* 2BB0D8 802D8CA8 000E3403 */  sra        $a2, $t6, 16
    /* 2BB0DC 802D8CAC 01F83821 */  addu       $a3, $t7, $t8
    /* 2BB0E0 802D8CB0 846F0004 */  lh         $t7, 0x4($v1)
    /* 2BB0E4 802D8CB4 85780004 */  lh         $t8, 0x4($t3)
    /* 2BB0E8 802D8CB8 00077400 */  sll        $t6, $a3, 16
    /* 2BB0EC 802D8CBC 000E3C03 */  sra        $a3, $t6, 16
    /* 2BB0F0 802D8CC0 01F87021 */  addu       $t6, $t7, $t8
    /* 2BB0F4 802D8CC4 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 2BB0F8 802D8CC8 240F000F */  addiu      $t7, $zero, 0xF
    /* 2BB0FC 802D8CCC AFAF0018 */  sw         $t7, 0x18($sp)
    /* 2BB100 802D8CD0 93A400C3 */  lbu        $a0, 0xC3($sp)
    /* 2BB104 802D8CD4 87A500AC */  lh         $a1, 0xAC($sp)
    /* 2BB108 802D8CD8 AFB90014 */  sw         $t9, 0x14($sp)
    /* 2BB10C 802D8CDC 46262202 */  mul.d      $f8, $f4, $f6
    /* 2BB110 802D8CE0 4620428D */  trunc.w.d  $f10, $f8
    /* 2BB114 802D8CE4 440E5000 */  mfc1       $t6, $f10
    /* 2BB118 802D8CE8 0C022390 */  jal        func_80088E40_97DF0
    /* 2BB11C 802D8CEC AFAE001C */   sw        $t6, 0x1C($sp)
    /* 2BB120 802D8CF0 1000014E */  b          .L802D922C_2BB65C
    /* 2BB124 802D8CF4 8FBF004C */   lw        $ra, 0x4C($sp)
  .L802D8CF8_2BB128:
    /* 2BB128 802D8CF8 86030006 */  lh         $v1, 0x6($s0)
    /* 2BB12C 802D8CFC AFAA0064 */  sw         $t2, 0x64($sp)
    /* 2BB130 802D8D00 24632000 */  addiu      $v1, $v1, 0x2000
    /* 2BB134 802D8D04 3064FFFF */  andi       $a0, $v1, 0xFFFF
    /* 2BB138 802D8D08 0C007660 */  jal        sins
    /* 2BB13C 802D8D0C AFA40054 */   sw        $a0, 0x54($sp)
    /* 2BB140 802D8D10 44828000 */  mtc1       $v0, $f16
    /* 2BB144 802D8D14 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2BB148 802D8D18 4481A800 */  mtc1       $at, $f21
    /* 2BB14C 802D8D1C 468084A0 */  cvt.s.w    $f18, $f16
    /* 2BB150 802D8D20 4480A000 */  mtc1       $zero, $f20
    /* 2BB154 802D8D24 3C01402E */  lui        $at, (0x402E0000 >> 16)
    /* 2BB158 802D8D28 44814800 */  mtc1       $at, $f9
    /* 2BB15C 802D8D2C 44804000 */  mtc1       $zero, $f8
    /* 2BB160 802D8D30 8FA40054 */  lw         $a0, 0x54($sp)
    /* 2BB164 802D8D34 46009121 */  cvt.d.s    $f4, $f18
    /* 2BB168 802D8D38 46342183 */  div.d      $f6, $f4, $f20
    /* 2BB16C 802D8D3C 46283282 */  mul.d      $f10, $f6, $f8
    /* 2BB170 802D8D40 4620540D */  trunc.w.d  $f16, $f10
    /* 2BB174 802D8D44 440F8000 */  mfc1       $t7, $f16
    /* 2BB178 802D8D48 0C007654 */  jal        coss
    /* 2BB17C 802D8D4C A7AF007A */   sh        $t7, 0x7A($sp)
    /* 2BB180 802D8D50 44829000 */  mtc1       $v0, $f18
    /* 2BB184 802D8D54 87A500B0 */  lh         $a1, 0xB0($sp)
    /* 2BB188 802D8D58 8FAA0064 */  lw         $t2, 0x64($sp)
    /* 2BB18C 802D8D5C 46809120 */  cvt.s.w    $f4, $f18
    /* 2BB190 802D8D60 3C088015 */  lui        $t0, %hi(D_8014DD50)
    /* 2BB194 802D8D64 8FA90060 */  lw         $t1, 0x60($sp)
    /* 2BB198 802D8D68 2508DD50 */  addiu      $t0, $t0, %lo(D_8014DD50)
    /* 2BB19C 802D8D6C 0005C100 */  sll        $t8, $a1, 4
    /* 2BB1A0 802D8D70 01181821 */  addu       $v1, $t0, $t8
    /* 2BB1A4 802D8D74 460021A1 */  cvt.d.s    $f6, $f4
    /* 2BB1A8 802D8D78 846E0000 */  lh         $t6, 0x0($v1)
    /* 2BB1AC 802D8D7C 46343203 */  div.d      $f8, $f6, $f20
    /* 2BB1B0 802D8D80 85590000 */  lh         $t9, 0x0($t2)
    /* 2BB1B4 802D8D84 85380000 */  lh         $t8, 0x0($t1)
    /* 2BB1B8 802D8D88 3C01C02E */  lui        $at, (0xC02E0000 >> 16)
    /* 2BB1BC 802D8D8C 44815800 */  mtc1       $at, $f11
    /* 2BB1C0 802D8D90 44805000 */  mtc1       $zero, $f10
    /* 2BB1C4 802D8D94 01D97821 */  addu       $t7, $t6, $t9
    /* 2BB1C8 802D8D98 01F83021 */  addu       $a2, $t7, $t8
    /* 2BB1CC 802D8D9C 846F0002 */  lh         $t7, 0x2($v1)
    /* 2BB1D0 802D8DA0 85580002 */  lh         $t8, 0x2($t2)
    /* 2BB1D4 802D8DA4 85390002 */  lh         $t9, 0x2($t1)
    /* 2BB1D8 802D8DA8 00067400 */  sll        $t6, $a2, 16
    /* 2BB1DC 802D8DAC 000E3403 */  sra        $a2, $t6, 16
    /* 2BB1E0 802D8DB0 01F87021 */  addu       $t6, $t7, $t8
    /* 2BB1E4 802D8DB4 01D93821 */  addu       $a3, $t6, $t9
    /* 2BB1E8 802D8DB8 846E0004 */  lh         $t6, 0x4($v1)
    /* 2BB1EC 802D8DBC 85590004 */  lh         $t9, 0x4($t2)
    /* 2BB1F0 802D8DC0 85380004 */  lh         $t8, 0x4($t1)
    /* 2BB1F4 802D8DC4 00077C00 */  sll        $t7, $a3, 16
    /* 2BB1F8 802D8DC8 000F3C03 */  sra        $a3, $t7, 16
    /* 2BB1FC 802D8DCC 01D97821 */  addu       $t7, $t6, $t9
    /* 2BB200 802D8DD0 01F87021 */  addu       $t6, $t7, $t8
    /* 2BB204 802D8DD4 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 2BB208 802D8DD8 87B9007A */  lh         $t9, 0x7A($sp)
    /* 2BB20C 802D8DDC 240F000F */  addiu      $t7, $zero, 0xF
    /* 2BB210 802D8DE0 AFAF0018 */  sw         $t7, 0x18($sp)
    /* 2BB214 802D8DE4 93A400C3 */  lbu        $a0, 0xC3($sp)
    /* 2BB218 802D8DE8 AFB90014 */  sw         $t9, 0x14($sp)
    /* 2BB21C 802D8DEC 462A4402 */  mul.d      $f16, $f8, $f10
    /* 2BB220 802D8DF0 4620848D */  trunc.w.d  $f18, $f16
    /* 2BB224 802D8DF4 440E9000 */  mfc1       $t6, $f18
    /* 2BB228 802D8DF8 0C022390 */  jal        func_80088E40_97DF0
    /* 2BB22C 802D8DFC AFAE001C */   sw        $t6, 0x1C($sp)
    /* 2BB230 802D8E00 86030006 */  lh         $v1, 0x6($s0)
    /* 2BB234 802D8E04 3064FFFF */  andi       $a0, $v1, 0xFFFF
    /* 2BB238 802D8E08 0C007660 */  jal        sins
    /* 2BB23C 802D8E0C AFA40054 */   sw        $a0, 0x54($sp)
    /* 2BB240 802D8E10 44822000 */  mtc1       $v0, $f4
    /* 2BB244 802D8E14 3C01402E */  lui        $at, (0x402E0000 >> 16)
    /* 2BB248 802D8E18 44818800 */  mtc1       $at, $f17
    /* 2BB24C 802D8E1C 468021A0 */  cvt.s.w    $f6, $f4
    /* 2BB250 802D8E20 44808000 */  mtc1       $zero, $f16
    /* 2BB254 802D8E24 8FA40054 */  lw         $a0, 0x54($sp)
    /* 2BB258 802D8E28 46003221 */  cvt.d.s    $f8, $f6
    /* 2BB25C 802D8E2C 46344283 */  div.d      $f10, $f8, $f20
    /* 2BB260 802D8E30 46305482 */  mul.d      $f18, $f10, $f16
    /* 2BB264 802D8E34 4620910D */  trunc.w.d  $f4, $f18
    /* 2BB268 802D8E38 440F2000 */  mfc1       $t7, $f4
    /* 2BB26C 802D8E3C 0C007654 */  jal        coss
    /* 2BB270 802D8E40 A7AF007A */   sh        $t7, 0x7A($sp)
    /* 2BB274 802D8E44 44823000 */  mtc1       $v0, $f6
    /* 2BB278 802D8E48 8FA30060 */  lw         $v1, 0x60($sp)
    /* 2BB27C 802D8E4C 8FAA0064 */  lw         $t2, 0x64($sp)
    /* 2BB280 802D8E50 46803220 */  cvt.s.w    $f8, $f6
    /* 2BB284 802D8E54 3C01C02E */  lui        $at, (0xC02E0000 >> 16)
    /* 2BB288 802D8E58 44819800 */  mtc1       $at, $f19
    /* 2BB28C 802D8E5C 44809000 */  mtc1       $zero, $f18
    /* 2BB290 802D8E60 84780000 */  lh         $t8, 0x0($v1)
    /* 2BB294 802D8E64 854E0000 */  lh         $t6, 0x0($t2)
    /* 2BB298 802D8E68 460042A1 */  cvt.d.s    $f10, $f8
    /* 2BB29C 802D8E6C 87AF007A */  lh         $t7, 0x7A($sp)
    /* 2BB2A0 802D8E70 46345403 */  div.d      $f16, $f10, $f20
    /* 2BB2A4 802D8E74 030E3021 */  addu       $a2, $t8, $t6
    /* 2BB2A8 802D8E78 84780002 */  lh         $t8, 0x2($v1)
    /* 2BB2AC 802D8E7C 854E0002 */  lh         $t6, 0x2($t2)
    /* 2BB2B0 802D8E80 0006CC00 */  sll        $t9, $a2, 16
    /* 2BB2B4 802D8E84 00193403 */  sra        $a2, $t9, 16
    /* 2BB2B8 802D8E88 030E3821 */  addu       $a3, $t8, $t6
    /* 2BB2BC 802D8E8C 84780004 */  lh         $t8, 0x4($v1)
    /* 2BB2C0 802D8E90 854E0004 */  lh         $t6, 0x4($t2)
    /* 2BB2C4 802D8E94 0007CC00 */  sll        $t9, $a3, 16
    /* 2BB2C8 802D8E98 00193C03 */  sra        $a3, $t9, 16
    /* 2BB2CC 802D8E9C 030EC821 */  addu       $t9, $t8, $t6
    /* 2BB2D0 802D8EA0 AFB90010 */  sw         $t9, 0x10($sp)
    /* 2BB2D4 802D8EA4 2418000F */  addiu      $t8, $zero, 0xF
    /* 2BB2D8 802D8EA8 AFB80018 */  sw         $t8, 0x18($sp)
    /* 2BB2DC 802D8EAC 93A400C3 */  lbu        $a0, 0xC3($sp)
    /* 2BB2E0 802D8EB0 87A500B2 */  lh         $a1, 0xB2($sp)
    /* 2BB2E4 802D8EB4 AFAF0014 */  sw         $t7, 0x14($sp)
    /* 2BB2E8 802D8EB8 46328102 */  mul.d      $f4, $f16, $f18
    /* 2BB2EC 802D8EBC 4620218D */  trunc.w.d  $f6, $f4
    /* 2BB2F0 802D8EC0 44193000 */  mfc1       $t9, $f6
    /* 2BB2F4 802D8EC4 0C022390 */  jal        func_80088E40_97DF0
    /* 2BB2F8 802D8EC8 AFB9001C */   sw        $t9, 0x1C($sp)
    /* 2BB2FC 802D8ECC 100000D7 */  b          .L802D922C_2BB65C
    /* 2BB300 802D8ED0 8FBF004C */   lw        $ra, 0x4C($sp)
  .L802D8ED4_2BB304:
    /* 2BB304 802D8ED4 920F001A */  lbu        $t7, 0x1A($s0)
    /* 2BB308 802D8ED8 85260002 */  lh         $a2, 0x2($t1)
    /* 2BB30C 802D8EDC 85270004 */  lh         $a3, 0x4($t1)
    /* 2BB310 802D8EE0 000FC080 */  sll        $t8, $t7, 2
    /* 2BB314 802D8EE4 030FC023 */  subu       $t8, $t8, $t7
    /* 2BB318 802D8EE8 0018C080 */  sll        $t8, $t8, 2
    /* 2BB31C 802D8EEC 030FC021 */  addu       $t8, $t8, $t7
    /* 2BB320 802D8EF0 0018C0C0 */  sll        $t8, $t8, 3
    /* 2BB324 802D8EF4 25CE6680 */  addiu      $t6, $t6, %lo(alienSpecs)
    /* 2BB328 802D8EF8 030E4021 */  addu       $t0, $t8, $t6
    /* 2BB32C 802D8EFC 24190064 */  addiu      $t9, $zero, 0x64
    /* 2BB330 802D8F00 A519002E */  sh         $t9, 0x2E($t0)
    /* 2BB334 802D8F04 24C6FFF6 */  addiu      $a2, $a2, -0xA
    /* 2BB338 802D8F08 24E70028 */  addiu      $a3, $a3, 0x28
    /* 2BB33C 802D8F0C 0007CC00 */  sll        $t9, $a3, 16
    /* 2BB340 802D8F10 0006C400 */  sll        $t8, $a2, 16
    /* 2BB344 802D8F14 00183403 */  sra        $a2, $t8, 16
    /* 2BB348 802D8F18 00193C03 */  sra        $a3, $t9, 16
    /* 2BB34C 802D8F1C 240F008C */  addiu      $t7, $zero, 0x8C
    /* 2BB350 802D8F20 27B9007C */  addiu      $t9, $sp, 0x7C
    /* 2BB354 802D8F24 27B80084 */  addiu      $t8, $sp, 0x84
    /* 2BB358 802D8F28 27AE0080 */  addiu      $t6, $sp, 0x80
    /* 2BB35C 802D8F2C A50F0030 */  sh         $t7, 0x30($t0)
    /* 2BB360 802D8F30 AFAE0014 */  sw         $t6, 0x14($sp)
    /* 2BB364 802D8F34 AFB80010 */  sw         $t8, 0x10($sp)
    /* 2BB368 802D8F38 AFB90018 */  sw         $t9, 0x18($sp)
    /* 2BB36C 802D8F3C 02002025 */  or         $a0, $s0, $zero
    /* 2BB370 802D8F40 85250000 */  lh         $a1, 0x0($t1)
    /* 2BB374 802D8F44 0C04A10A */  jal        func_80128428_1373D8
    /* 2BB378 802D8F48 AFA90068 */   sw        $t1, 0x68($sp)
    /* 2BB37C 802D8F4C 87A40086 */  lh         $a0, 0x86($sp)
    /* 2BB380 802D8F50 0C02E134 */  jal        func_800B84D0_C7480
    /* 2BB384 802D8F54 87A5007E */   lh        $a1, 0x7E($sp)
    /* 2BB388 802D8F58 8FAF007C */  lw         $t7, 0x7C($sp)
    /* 2BB38C 802D8F5C 93A400C3 */  lbu        $a0, 0xC3($sp)
    /* 2BB390 802D8F60 24050001 */  addiu      $a1, $zero, 0x1
    /* 2BB394 802D8F64 8FA60084 */  lw         $a2, 0x84($sp)
    /* 2BB398 802D8F68 00023A03 */  sra        $a3, $v0, 8
    /* 2BB39C 802D8F6C 0C02197D */  jal        func_800865F4_955A4
    /* 2BB3A0 802D8F70 AFAF0010 */   sw        $t7, 0x10($sp)
    /* 2BB3A4 802D8F74 9218001A */  lbu        $t8, 0x1A($s0)
    /* 2BB3A8 802D8F78 86030006 */  lh         $v1, 0x6($s0)
    /* 2BB3AC 802D8F7C 3C198025 */  lui        $t9, %hi(alienSpecs)
    /* 2BB3B0 802D8F80 00187080 */  sll        $t6, $t8, 2
    /* 2BB3B4 802D8F84 01D87023 */  subu       $t6, $t6, $t8
    /* 2BB3B8 802D8F88 000E7080 */  sll        $t6, $t6, 2
    /* 2BB3BC 802D8F8C 01D87021 */  addu       $t6, $t6, $t8
    /* 2BB3C0 802D8F90 000E70C0 */  sll        $t6, $t6, 3
    /* 2BB3C4 802D8F94 27396680 */  addiu      $t9, $t9, %lo(alienSpecs)
    /* 2BB3C8 802D8F98 24634000 */  addiu      $v1, $v1, 0x4000
    /* 2BB3CC 802D8F9C 01D94021 */  addu       $t0, $t6, $t9
    /* 2BB3D0 802D8FA0 240F0055 */  addiu      $t7, $zero, 0x55
    /* 2BB3D4 802D8FA4 241800D2 */  addiu      $t8, $zero, 0xD2
    /* 2BB3D8 802D8FA8 3064FFFF */  andi       $a0, $v1, 0xFFFF
    /* 2BB3DC 802D8FAC A50F002E */  sh         $t7, 0x2E($t0)
    /* 2BB3E0 802D8FB0 A5180030 */  sh         $t8, 0x30($t0)
    /* 2BB3E4 802D8FB4 0C007660 */  jal        sins
    /* 2BB3E8 802D8FB8 AFA40054 */   sw        $a0, 0x54($sp)
    /* 2BB3EC 802D8FBC 44824000 */  mtc1       $v0, $f8
    /* 2BB3F0 802D8FC0 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2BB3F4 802D8FC4 4481A800 */  mtc1       $at, $f21
    /* 2BB3F8 802D8FC8 468042A0 */  cvt.s.w    $f10, $f8
    /* 2BB3FC 802D8FCC 4480A000 */  mtc1       $zero, $f20
    /* 2BB400 802D8FD0 3C014014 */  lui        $at, (0x40140000 >> 16)
    /* 2BB404 802D8FD4 44812800 */  mtc1       $at, $f5
    /* 2BB408 802D8FD8 44802000 */  mtc1       $zero, $f4
    /* 2BB40C 802D8FDC 8FA40054 */  lw         $a0, 0x54($sp)
    /* 2BB410 802D8FE0 46005421 */  cvt.d.s    $f16, $f10
    /* 2BB414 802D8FE4 46348483 */  div.d      $f18, $f16, $f20
    /* 2BB418 802D8FE8 46249182 */  mul.d      $f6, $f18, $f4
    /* 2BB41C 802D8FEC 4620320D */  trunc.w.d  $f8, $f6
    /* 2BB420 802D8FF0 44194000 */  mfc1       $t9, $f8
    /* 2BB424 802D8FF4 0C007654 */  jal        coss
    /* 2BB428 802D8FF8 A7B9007A */   sh        $t9, 0x7A($sp)
    /* 2BB42C 802D8FFC 44825000 */  mtc1       $v0, $f10
    /* 2BB430 802D9000 3C01C014 */  lui        $at, (0xC0140000 >> 16)
    /* 2BB434 802D9004 44813800 */  mtc1       $at, $f7
    /* 2BB438 802D9008 46805420 */  cvt.s.w    $f16, $f10
    /* 2BB43C 802D900C 44803000 */  mtc1       $zero, $f6
    /* 2BB440 802D9010 8FA90068 */  lw         $t1, 0x68($sp)
    /* 2BB444 802D9014 87B8007A */  lh         $t8, 0x7A($sp)
    /* 2BB448 802D9018 240E0005 */  addiu      $t6, $zero, 0x5
    /* 2BB44C 802D901C 852F0004 */  lh         $t7, 0x4($t1)
    /* 2BB450 802D9020 460084A1 */  cvt.d.s    $f18, $f16
    /* 2BB454 802D9024 AFAE0018 */  sw         $t6, 0x18($sp)
    /* 2BB458 802D9028 46349103 */  div.d      $f4, $f18, $f20
    /* 2BB45C 802D902C AFAF0010 */  sw         $t7, 0x10($sp)
    /* 2BB460 802D9030 93A400C3 */  lbu        $a0, 0xC3($sp)
    /* 2BB464 802D9034 87A500BE */  lh         $a1, 0xBE($sp)
    /* 2BB468 802D9038 85260000 */  lh         $a2, 0x0($t1)
    /* 2BB46C 802D903C 85270002 */  lh         $a3, 0x2($t1)
    /* 2BB470 802D9040 AFB80014 */  sw         $t8, 0x14($sp)
    /* 2BB474 802D9044 46262202 */  mul.d      $f8, $f4, $f6
    /* 2BB478 802D9048 4620428D */  trunc.w.d  $f10, $f8
    /* 2BB47C 802D904C 440F5000 */  mfc1       $t7, $f10
    /* 2BB480 802D9050 0C022390 */  jal        func_80088E40_97DF0
    /* 2BB484 802D9054 AFAF001C */   sw        $t7, 0x1C($sp)
    /* 2BB488 802D9058 10000074 */  b          .L802D922C_2BB65C
    /* 2BB48C 802D905C 8FBF004C */   lw        $ra, 0x4C($sp)
  .L802D9060_2BB490:
    /* 2BB490 802D9060 10000071 */  b          .L802D9228_2BB658
    /* 2BB494 802D9064 A618002C */   sh        $t8, 0x2C($s0)
  .L802D9068_2BB498:
    /* 2BB498 802D9068 00077900 */  sll        $t7, $a3, 4
    /* 2BB49C 802D906C 860E000A */  lh         $t6, 0xA($s0)
    /* 2BB4A0 802D9070 010F1021 */  addu       $v0, $t0, $t7
    /* 2BB4A4 802D9074 9458000A */  lhu        $t8, 0xA($v0)
    /* 2BB4A8 802D9078 25D9004B */  addiu      $t9, $t6, 0x4B
    /* 2BB4AC 802D907C 2861000B */  slti       $at, $v1, 0xB
    /* 2BB4B0 802D9080 270E0078 */  addiu      $t6, $t8, 0x78
    /* 2BB4B4 802D9084 A619000A */  sh         $t9, 0xA($s0)
    /* 2BB4B8 802D9088 A44E000A */  sh         $t6, 0xA($v0)
    /* 2BB4BC 802D908C 14200055 */  bnez       $at, .L802D91E4_2BB614
    /* 2BB4C0 802D9090 A6000012 */   sh        $zero, 0x12($s0)
    /* 2BB4C4 802D9094 24010006 */  addiu      $at, $zero, 0x6
    /* 2BB4C8 802D9098 0061001A */  div        $zero, $v1, $at
    /* 2BB4CC 802D909C 0000C810 */  mfhi       $t9
    /* 2BB4D0 802D90A0 3C0F8003 */  lui        $t7, %hi(D_80031420)
    /* 2BB4D4 802D90A4 57200050 */  bnel       $t9, $zero, .L802D91E8_2BB618
    /* 2BB4D8 802D90A8 24010001 */   addiu     $at, $zero, 0x1
    /* 2BB4DC 802D90AC 8DEF1420 */  lw         $t7, %lo(D_80031420)($t7)
    /* 2BB4E0 802D90B0 02002025 */  or         $a0, $s0, $zero
    /* 2BB4E4 802D90B4 24018000 */  addiu      $at, $zero, -0x8000
    /* 2BB4E8 802D90B8 31F80003 */  andi       $t8, $t7, 0x3
    /* 2BB4EC 802D90BC 13000049 */  beqz       $t8, .L802D91E4_2BB614
    /* 2BB4F0 802D90C0 27AF0084 */   addiu     $t7, $sp, 0x84
    /* 2BB4F4 802D90C4 85260002 */  lh         $a2, 0x2($t1)
    /* 2BB4F8 802D90C8 27B80080 */  addiu      $t8, $sp, 0x80
    /* 2BB4FC 802D90CC AFB80014 */  sw         $t8, 0x14($sp)
    /* 2BB500 802D90D0 00C13021 */  addu       $a2, $a2, $at
    /* 2BB504 802D90D4 00067400 */  sll        $t6, $a2, 16
    /* 2BB508 802D90D8 000E3403 */  sra        $a2, $t6, 16
    /* 2BB50C 802D90DC 27AE007C */  addiu      $t6, $sp, 0x7C
    /* 2BB510 802D90E0 AFAE0018 */  sw         $t6, 0x18($sp)
    /* 2BB514 802D90E4 85250000 */  lh         $a1, 0x0($t1)
    /* 2BB518 802D90E8 85270004 */  lh         $a3, 0x4($t1)
    /* 2BB51C 802D90EC 0C04A10A */  jal        func_80128428_1373D8
    /* 2BB520 802D90F0 AFAF0010 */   sw        $t7, 0x10($sp)
    /* 2BB524 802D90F4 86040006 */  lh         $a0, 0x6($s0)
    /* 2BB528 802D90F8 24844000 */  addiu      $a0, $a0, 0x4000
    /* 2BB52C 802D90FC 3099FFFF */  andi       $t9, $a0, 0xFFFF
    /* 2BB530 802D9100 0C007660 */  jal        sins
    /* 2BB534 802D9104 03202025 */   or        $a0, $t9, $zero
    /* 2BB538 802D9108 44828000 */  mtc1       $v0, $f16
    /* 2BB53C 802D910C 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2BB540 802D9110 4481A800 */  mtc1       $at, $f21
    /* 2BB544 802D9114 468084A0 */  cvt.s.w    $f18, $f16
    /* 2BB548 802D9118 4480A000 */  mtc1       $zero, $f20
    /* 2BB54C 802D911C 86040006 */  lh         $a0, 0x6($s0)
    /* 2BB550 802D9120 24844000 */  addiu      $a0, $a0, 0x4000
    /* 2BB554 802D9124 46009121 */  cvt.d.s    $f4, $f18
    /* 2BB558 802D9128 308EFFFF */  andi       $t6, $a0, 0xFFFF
    /* 2BB55C 802D912C 46342183 */  div.d      $f6, $f4, $f20
    /* 2BB560 802D9130 01C02025 */  or         $a0, $t6, $zero
    /* 2BB564 802D9134 4620320D */  trunc.w.d  $f8, $f6
    /* 2BB568 802D9138 44184000 */  mfc1       $t8, $f8
    /* 2BB56C 802D913C 0C007654 */  jal        coss
    /* 2BB570 802D9140 A7B8007A */   sh        $t8, 0x7A($sp)
    /* 2BB574 802D9144 44825000 */  mtc1       $v0, $f10
    /* 2BB578 802D9148 00000000 */  nop
    /* 2BB57C 802D914C 46805420 */  cvt.s.w    $f16, $f10
    /* 2BB580 802D9150 460084A1 */  cvt.d.s    $f18, $f16
    /* 2BB584 802D9154 46349103 */  div.d      $f4, $f18, $f20
    /* 2BB588 802D9158 46202187 */  neg.d      $f6, $f4
    /* 2BB58C 802D915C 4620320D */  trunc.w.d  $f8, $f6
    /* 2BB590 802D9160 440F4000 */  mfc1       $t7, $f8
    /* 2BB594 802D9164 0C000E38 */  jal        func_800038E0_44E0
    /* 2BB598 802D9168 A7AF0078 */   sh        $t7, 0x78($sp)
    /* 2BB59C 802D916C 24010050 */  addiu      $at, $zero, 0x50
    /* 2BB5A0 802D9170 0041001A */  div        $zero, $v0, $at
    /* 2BB5A4 802D9174 87B8007A */  lh         $t8, 0x7A($sp)
    /* 2BB5A8 802D9178 87AF0078 */  lh         $t7, 0x78($sp)
    /* 2BB5AC 802D917C 2419000A */  addiu      $t9, $zero, 0xA
    /* 2BB5B0 802D9180 001877C0 */  sll        $t6, $t8, 31
    /* 2BB5B4 802D9184 000E3E03 */  sra        $a3, $t6, 24
    /* 2BB5B8 802D9188 240E0028 */  addiu      $t6, $zero, 0x28
    /* 2BB5BC 802D918C 000FC1C0 */  sll        $t8, $t7, 7
    /* 2BB5C0 802D9190 240F0014 */  addiu      $t7, $zero, 0x14
    /* 2BB5C4 802D9194 AFAE0018 */  sw         $t6, 0x18($sp)
    /* 2BB5C8 802D9198 AFB9001C */  sw         $t9, 0x1C($sp)
    /* 2BB5CC 802D919C 241900B4 */  addiu      $t9, $zero, 0xB4
    /* 2BB5D0 802D91A0 00007010 */  mfhi       $t6
    /* 2BB5D4 802D91A4 AFAF0020 */  sw         $t7, 0x20($sp)
    /* 2BB5D8 802D91A8 032E7823 */  subu       $t7, $t9, $t6
    /* 2BB5DC 802D91AC AFB80014 */  sw         $t8, 0x14($sp)
    /* 2BB5E0 802D91B0 24180032 */  addiu      $t8, $zero, 0x32
    /* 2BB5E4 802D91B4 241900FF */  addiu      $t9, $zero, 0xFF
    /* 2BB5E8 802D91B8 AFB90034 */  sw         $t9, 0x34($sp)
    /* 2BB5EC 802D91BC AFB80024 */  sw         $t8, 0x24($sp)
    /* 2BB5F0 802D91C0 AFB80030 */  sw         $t8, 0x30($sp)
    /* 2BB5F4 802D91C4 AFAF0028 */  sw         $t7, 0x28($sp)
    /* 2BB5F8 802D91C8 87A40086 */  lh         $a0, 0x86($sp)
    /* 2BB5FC 802D91CC 87A50082 */  lh         $a1, 0x82($sp)
    /* 2BB600 802D91D0 87A6007E */  lh         $a2, 0x7E($sp)
    /* 2BB604 802D91D4 AFA00010 */  sw         $zero, 0x10($sp)
    /* 2BB608 802D91D8 0C03297B */  jal        func_800CA5EC_D959C
    /* 2BB60C 802D91DC AFA0002C */   sw        $zero, 0x2C($sp)
    /* 2BB610 802D91E0 8603002C */  lh         $v1, 0x2C($s0)
  .L802D91E4_2BB614:
    /* 2BB614 802D91E4 24010001 */  addiu      $at, $zero, 0x1
  .L802D91E8_2BB618:
    /* 2BB618 802D91E8 1461000F */  bne        $v1, $at, .L802D9228_2BB658
    /* 2BB61C 802D91EC 3C078025 */   lui       $a3, %hi(D_8025668C)
    /* 2BB620 802D91F0 920E001A */  lbu        $t6, 0x1A($s0)
    /* 2BB624 802D91F4 24180006 */  addiu      $t8, $zero, 0x6
    /* 2BB628 802D91F8 AFB80010 */  sw         $t8, 0x10($sp)
    /* 2BB62C 802D91FC 000E7880 */  sll        $t7, $t6, 2
    /* 2BB630 802D9200 01EE7823 */  subu       $t7, $t7, $t6
    /* 2BB634 802D9204 000F7880 */  sll        $t7, $t7, 2
    /* 2BB638 802D9208 01EE7821 */  addu       $t7, $t7, $t6
    /* 2BB63C 802D920C 000F78C0 */  sll        $t7, $t7, 3
    /* 2BB640 802D9210 00EF3821 */  addu       $a3, $a3, $t7
    /* 2BB644 802D9214 94E7668C */  lhu        $a3, %lo(D_8025668C)($a3)
    /* 2BB648 802D9218 86040000 */  lh         $a0, 0x0($s0)
    /* 2BB64C 802D921C 86050002 */  lh         $a1, 0x2($s0)
    /* 2BB650 802D9220 0C037E12 */  jal        func_800DF848_EE7F8
    /* 2BB654 802D9224 86060004 */   lh        $a2, 0x4($s0)
  .L802D9228_2BB658:
    /* 2BB658 802D9228 8FBF004C */  lw         $ra, 0x4C($sp)
  .L802D922C_2BB65C:
    /* 2BB65C 802D922C D7B40040 */  ldc1       $f20, 0x40($sp)
    /* 2BB660 802D9230 8FB00048 */  lw         $s0, 0x48($sp)
    /* 2BB664 802D9234 03E00008 */  jr         $ra
    /* 2BB668 802D9238 27BD00C0 */   addiu     $sp, $sp, 0xC0
endlabel func_802D8930_2BAD60
