nonmatching func_802E0B08_2C2F38, 0x1F0

glabel func_802E0B08_2C2F38
    /* 2C2F38 802E0B08 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 2C2F3C 802E0B0C AFA40038 */  sw         $a0, 0x38($sp)
    /* 2C2F40 802E0B10 93AE003B */  lbu        $t6, 0x3B($sp)
    /* 2C2F44 802E0B14 24050050 */  addiu      $a1, $zero, 0x50
    /* 2C2F48 802E0B18 3C038005 */  lui        $v1, %hi(alienInstances)
    /* 2C2F4C 802E0B1C 01C50019 */  multu      $t6, $a1
    /* 2C2F50 802E0B20 24638198 */  addiu      $v1, $v1, %lo(alienInstances)
    /* 2C2F54 802E0B24 AFB00020 */  sw         $s0, 0x20($sp)
    /* 2C2F58 802E0B28 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 2C2F5C 802E0B2C 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* 2C2F60 802E0B30 00007812 */  mflo       $t7
    /* 2C2F64 802E0B34 006F8021 */  addu       $s0, $v1, $t7
    /* 2C2F68 802E0B38 92020025 */  lbu        $v0, 0x25($s0)
    /* 2C2F6C 802E0B3C 8E080020 */  lw         $t0, 0x20($s0)
    /* 2C2F70 802E0B40 00450019 */  multu      $v0, $a1
    /* 2C2F74 802E0B44 00086AC0 */  sll        $t5, $t0, 11
    /* 2C2F78 802E0B48 01017025 */  or         $t6, $t0, $at
    /* 2C2F7C 802E0B4C 0000C012 */  mflo       $t8
    /* 2C2F80 802E0B50 0078C821 */  addu       $t9, $v1, $t8
    /* 2C2F84 802E0B54 AFB90028 */  sw         $t9, 0x28($sp)
    /* 2C2F88 802E0B58 932A0025 */  lbu        $t2, 0x25($t9)
    /* 2C2F8C 802E0B5C 01450019 */  multu      $t2, $a1
    /* 2C2F90 802E0B60 00005812 */  mflo       $t3
    /* 2C2F94 802E0B64 006B6021 */  addu       $t4, $v1, $t3
    /* 2C2F98 802E0B68 05A0003E */  bltz       $t5, .L802E0C64_2C3094
    /* 2C2F9C 802E0B6C AFAC0034 */   sw        $t4, 0x34($sp)
    /* 2C2FA0 802E0B70 920F001A */  lbu        $t7, 0x1A($s0)
    /* 2C2FA4 802E0B74 3C198025 */  lui        $t9, %hi(D_8025668C)
    /* 2C2FA8 802E0B78 AE0E0020 */  sw         $t6, 0x20($s0)
    /* 2C2FAC 802E0B7C 000FC080 */  sll        $t8, $t7, 2
    /* 2C2FB0 802E0B80 030FC023 */  subu       $t8, $t8, $t7
    /* 2C2FB4 802E0B84 0018C080 */  sll        $t8, $t8, 2
    /* 2C2FB8 802E0B88 030FC021 */  addu       $t8, $t8, $t7
    /* 2C2FBC 802E0B8C 0018C0C0 */  sll        $t8, $t8, 3
    /* 2C2FC0 802E0B90 0338C821 */  addu       $t9, $t9, $t8
    /* 2C2FC4 802E0B94 8739668C */  lh         $t9, %lo(D_8025668C)($t9)
    /* 2C2FC8 802E0B98 3C013FF8 */  lui        $at, (0x3FF80000 >> 16)
    /* 2C2FCC 802E0B9C 44814800 */  mtc1       $at, $f9
    /* 2C2FD0 802E0BA0 44992000 */  mtc1       $t9, $f4
    /* 2C2FD4 802E0BA4 44804000 */  mtc1       $zero, $f8
    /* 2C2FD8 802E0BA8 24070001 */  addiu      $a3, $zero, 0x1
    /* 2C2FDC 802E0BAC 468021A1 */  cvt.d.w    $f6, $f4
    /* 2C2FE0 802E0BB0 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* 2C2FE4 802E0BB4 86040000 */  lh         $a0, 0x0($s0)
    /* 2C2FE8 802E0BB8 86050002 */  lh         $a1, 0x2($s0)
    /* 2C2FEC 802E0BBC 86060004 */  lh         $a2, 0x4($s0)
    /* 2C2FF0 802E0BC0 46283282 */  mul.d      $f10, $f6, $f8
    /* 2C2FF4 802E0BC4 240B0002 */  addiu      $t3, $zero, 0x2
    /* 2C2FF8 802E0BC8 4449F800 */  cfc1       $t1, $31
    /* 2C2FFC 802E0BCC 44C7F800 */  ctc1       $a3, $31
    /* 2C3000 802E0BD0 00000000 */  nop
    /* 2C3004 802E0BD4 46205424 */  cvt.w.d    $f16, $f10
    /* 2C3008 802E0BD8 4447F800 */  cfc1       $a3, $31
    /* 2C300C 802E0BDC 00000000 */  nop
    /* 2C3010 802E0BE0 30E70078 */  andi       $a3, $a3, 0x78
    /* 2C3014 802E0BE4 50E00014 */  beql       $a3, $zero, .L802E0C38_2C3068
    /* 2C3018 802E0BE8 44078000 */   mfc1      $a3, $f16
    /* 2C301C 802E0BEC 44818800 */  mtc1       $at, $f17
    /* 2C3020 802E0BF0 44808000 */  mtc1       $zero, $f16
    /* 2C3024 802E0BF4 24070001 */  addiu      $a3, $zero, 0x1
    /* 2C3028 802E0BF8 46305401 */  sub.d      $f16, $f10, $f16
    /* 2C302C 802E0BFC 44C7F800 */  ctc1       $a3, $31
    /* 2C3030 802E0C00 00000000 */  nop
    /* 2C3034 802E0C04 46208424 */  cvt.w.d    $f16, $f16
    /* 2C3038 802E0C08 4447F800 */  cfc1       $a3, $31
    /* 2C303C 802E0C0C 00000000 */  nop
    /* 2C3040 802E0C10 30E70078 */  andi       $a3, $a3, 0x78
    /* 2C3044 802E0C14 14E00005 */  bnez       $a3, .L802E0C2C_2C305C
    /* 2C3048 802E0C18 00000000 */   nop
    /* 2C304C 802E0C1C 44078000 */  mfc1       $a3, $f16
    /* 2C3050 802E0C20 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* 2C3054 802E0C24 10000007 */  b          .L802E0C44_2C3074
    /* 2C3058 802E0C28 00E13825 */   or        $a3, $a3, $at
  .L802E0C2C_2C305C:
    /* 2C305C 802E0C2C 10000005 */  b          .L802E0C44_2C3074
    /* 2C3060 802E0C30 2407FFFF */   addiu     $a3, $zero, -0x1
    /* 2C3064 802E0C34 44078000 */  mfc1       $a3, $f16
  .L802E0C38_2C3068:
    /* 2C3068 802E0C38 00000000 */  nop
    /* 2C306C 802E0C3C 04E0FFFB */  bltz       $a3, .L802E0C2C_2C305C
    /* 2C3070 802E0C40 00000000 */   nop
  .L802E0C44_2C3074:
    /* 2C3074 802E0C44 44C9F800 */  ctc1       $t1, $31
    /* 2C3078 802E0C48 30EAFFFF */  andi       $t2, $a3, 0xFFFF
    /* 2C307C 802E0C4C 01403825 */  or         $a3, $t2, $zero
    /* 2C3080 802E0C50 0C037E12 */  jal        func_800DF848_EE7F8
    /* 2C3084 802E0C54 AFAB0010 */   sw        $t3, 0x10($sp)
    /* 2C3088 802E0C58 93A4003B */  lbu        $a0, 0x3B($sp)
    /* 2C308C 802E0C5C 0C04DD1A */  jal        func_80137468_146418
    /* 2C3090 802E0C60 24050011 */   addiu     $a1, $zero, 0x11
  .L802E0C64_2C3094:
    /* 2C3094 802E0C64 920C001A */  lbu        $t4, 0x1A($s0)
    /* 2C3098 802E0C68 3C0E8025 */  lui        $t6, %hi(D_8025668C)
    /* 2C309C 802E0C6C 3C013FF8 */  lui        $at, (0x3FF80000 >> 16)
    /* 2C30A0 802E0C70 000C6880 */  sll        $t5, $t4, 2
    /* 2C30A4 802E0C74 01AC6823 */  subu       $t5, $t5, $t4
    /* 2C30A8 802E0C78 000D6880 */  sll        $t5, $t5, 2
    /* 2C30AC 802E0C7C 01AC6821 */  addu       $t5, $t5, $t4
    /* 2C30B0 802E0C80 000D68C0 */  sll        $t5, $t5, 3
    /* 2C30B4 802E0C84 01CD7021 */  addu       $t6, $t6, $t5
    /* 2C30B8 802E0C88 85CE668C */  lh         $t6, %lo(D_8025668C)($t6)
    /* 2C30BC 802E0C8C 44813800 */  mtc1       $at, $f7
    /* 2C30C0 802E0C90 44803000 */  mtc1       $zero, $f6
    /* 2C30C4 802E0C94 448E9000 */  mtc1       $t6, $f18
    /* 2C30C8 802E0C98 93A4003B */  lbu        $a0, 0x3B($sp)
    /* 2C30CC 802E0C9C 24060005 */  addiu      $a2, $zero, 0x5
    /* 2C30D0 802E0CA0 46809121 */  cvt.d.w    $f4, $f18
    /* 2C30D4 802E0CA4 46262202 */  mul.d      $f8, $f4, $f6
    /* 2C30D8 802E0CA8 4620428D */  trunc.w.d  $f10, $f8
    /* 2C30DC 802E0CAC 44055000 */  mfc1       $a1, $f10
    /* 2C30E0 802E0CB0 0C022ABF */  jal        func_8008AAFC_99AAC
    /* 2C30E4 802E0CB4 00000000 */   nop
    /* 2C30E8 802E0CB8 8618002C */  lh         $t8, 0x2C($s0)
    /* 2C30EC 802E0CBC 24010001 */  addiu      $at, $zero, 0x1
    /* 2C30F0 802E0CC0 8FB90034 */  lw         $t9, 0x34($sp)
    /* 2C30F4 802E0CC4 57010008 */  bnel       $t8, $at, .L802E0CE8_2C3118
    /* 2C30F8 802E0CC8 8FBF0024 */   lw        $ra, 0x24($sp)
    /* 2C30FC 802E0CCC 8F290020 */  lw         $t1, 0x20($t9)
    /* 2C3100 802E0CD0 240B0028 */  addiu      $t3, $zero, 0x28
    /* 2C3104 802E0CD4 352A4000 */  ori        $t2, $t1, 0x4000
    /* 2C3108 802E0CD8 AF2A0020 */  sw         $t2, 0x20($t9)
    /* 2C310C 802E0CDC 8FAC0028 */  lw         $t4, 0x28($sp)
    /* 2C3110 802E0CE0 A58B002C */  sh         $t3, 0x2C($t4)
    /* 2C3114 802E0CE4 8FBF0024 */  lw         $ra, 0x24($sp)
  .L802E0CE8_2C3118:
    /* 2C3118 802E0CE8 8FB00020 */  lw         $s0, 0x20($sp)
    /* 2C311C 802E0CEC 27BD0038 */  addiu      $sp, $sp, 0x38
    /* 2C3120 802E0CF0 03E00008 */  jr         $ra
    /* 2C3124 802E0CF4 00000000 */   nop
endlabel func_802E0B08_2C2F38
