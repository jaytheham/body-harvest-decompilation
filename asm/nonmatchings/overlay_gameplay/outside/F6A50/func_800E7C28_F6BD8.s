nonmatching func_800E7C28_F6BD8, 0x568

glabel func_800E7C28_F6BD8
    /* F6BD8 800E7C28 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* F6BDC 800E7C2C AFB00024 */  sw         $s0, 0x24($sp)
    /* F6BE0 800E7C30 3C108004 */  lui        $s0, %hi(currentControllerStates)
    /* F6BE4 800E7C34 26107588 */  addiu      $s0, $s0, %lo(currentControllerStates)
    /* F6BE8 800E7C38 96030006 */  lhu        $v1, 0x6($s0)
    /* F6BEC 800E7C3C AFBF002C */  sw         $ra, 0x2C($sp)
    /* F6BF0 800E7C40 AFB10028 */  sw         $s1, 0x28($sp)
    /* F6BF4 800E7C44 306E0020 */  andi       $t6, $v1, 0x20
    /* F6BF8 800E7C48 15C0014B */  bnez       $t6, .L800E8178_F7128
    /* F6BFC 800E7C4C F7B40018 */   sdc1      $f20, 0x18($sp)
    /* F6C00 800E7C50 3C0F8015 */  lui        $t7, %hi(D_80157590)
    /* F6C04 800E7C54 85EF7590 */  lh         $t7, %lo(D_80157590)($t7)
    /* F6C08 800E7C58 24010004 */  addiu      $at, $zero, 0x4
    /* F6C0C 800E7C5C 3C028015 */  lui        $v0, %hi(D_8015758C)
    /* F6C10 800E7C60 15E10079 */  bne        $t7, $at, .L800E7E48_F6DF8
    /* F6C14 800E7C64 30780010 */   andi      $t8, $v1, 0x10
    /* F6C18 800E7C68 3C118015 */  lui        $s1, %hi(D_8015758E)
    /* F6C1C 800E7C6C 82190008 */  lb         $t9, 0x8($s0)
    /* F6C20 800E7C70 820B0009 */  lb         $t3, 0x9($s0)
    /* F6C24 800E7C74 2631758E */  addiu      $s1, $s1, %lo(D_8015758E)
    /* F6C28 800E7C78 2442758C */  addiu      $v0, $v0, %lo(D_8015758C)
    /* F6C2C 800E7C7C 86380000 */  lh         $t8, 0x0($s1)
    /* F6C30 800E7C80 844A0000 */  lh         $t2, 0x0($v0)
    /* F6C34 800E7C84 00194100 */  sll        $t0, $t9, 4
    /* F6C38 800E7C88 000B60C0 */  sll        $t4, $t3, 3
    /* F6C3C 800E7C8C 306E0004 */  andi       $t6, $v1, 0x4
    /* F6C40 800E7C90 03084823 */  subu       $t1, $t8, $t0
    /* F6C44 800E7C94 014C6821 */  addu       $t5, $t2, $t4
    /* F6C48 800E7C98 A6290000 */  sh         $t1, 0x0($s1)
    /* F6C4C 800E7C9C 11C00006 */  beqz       $t6, .L800E7CB8_F6C68
    /* F6C50 800E7CA0 A44D0000 */   sh        $t5, 0x0($v0)
    /* F6C54 800E7CA4 3C0F8014 */  lui        $t7, %hi(D_8013E438)
    /* F6C58 800E7CA8 8DEFE438 */  lw         $t7, %lo(D_8013E438)($t7)
    /* F6C5C 800E7CAC 3C018014 */  lui        $at, %hi(D_8013E438)
    /* F6C60 800E7CB0 25F90005 */  addiu      $t9, $t7, 0x5
    /* F6C64 800E7CB4 AC39E438 */  sw         $t9, %lo(D_8013E438)($at)
  .L800E7CB8_F6C68:
    /* F6C68 800E7CB8 30780008 */  andi       $t8, $v1, 0x8
    /* F6C6C 800E7CBC 13000005 */  beqz       $t8, .L800E7CD4_F6C84
    /* F6C70 800E7CC0 3C088014 */   lui       $t0, %hi(D_8013E438)
    /* F6C74 800E7CC4 8D08E438 */  lw         $t0, %lo(D_8013E438)($t0)
    /* F6C78 800E7CC8 3C018014 */  lui        $at, %hi(D_8013E438)
    /* F6C7C 800E7CCC 2509FFFB */  addiu      $t1, $t0, -0x5
    /* F6C80 800E7CD0 AC29E438 */  sw         $t1, %lo(D_8013E438)($at)
  .L800E7CD4_F6C84:
    /* F6C84 800E7CD4 8FAB003C */  lw         $t3, 0x3C($sp)
    /* F6C88 800E7CD8 8FAA0038 */  lw         $t2, 0x38($sp)
    /* F6C8C 800E7CDC 3C018015 */  lui        $at, %hi(D_80157586)
    /* F6C90 800E7CE0 A42B7586 */  sh         $t3, %lo(D_80157586)($at)
    /* F6C94 800E7CE4 8FAC0034 */  lw         $t4, 0x34($sp)
    /* F6C98 800E7CE8 3C018015 */  lui        $at, %hi(D_80157588)
    /* F6C9C 800E7CEC A42A7588 */  sh         $t2, %lo(D_80157588)($at)
    /* F6CA0 800E7CF0 3C018015 */  lui        $at, %hi(D_8015758A)
    /* F6CA4 800E7CF4 A42C758A */  sh         $t4, %lo(D_8015758A)($at)
    /* F6CA8 800E7CF8 0C007654 */  jal        coss
    /* F6CAC 800E7CFC 94440000 */   lhu       $a0, 0x0($v0)
    /* F6CB0 800E7D00 A7A20032 */  sh         $v0, 0x32($sp)
    /* F6CB4 800E7D04 0C007654 */  jal        coss
    /* F6CB8 800E7D08 96240000 */   lhu       $a0, 0x0($s1)
    /* F6CBC 800E7D0C 87AD0032 */  lh         $t5, 0x32($sp)
    /* F6CC0 800E7D10 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* F6CC4 800E7D14 4481A800 */  mtc1       $at, $f21
    /* F6CC8 800E7D18 448D2000 */  mtc1       $t5, $f4
    /* F6CCC 800E7D1C 4480A000 */  mtc1       $zero, $f20
    /* F6CD0 800E7D20 3C0E8014 */  lui        $t6, %hi(D_8013E438)
    /* F6CD4 800E7D24 468021A0 */  cvt.s.w    $f6, $f4
    /* F6CD8 800E7D28 8DCEE438 */  lw         $t6, %lo(D_8013E438)($t6)
    /* F6CDC 800E7D2C 3C0F8015 */  lui        $t7, %hi(D_80157586)
    /* F6CE0 800E7D30 85EF7586 */  lh         $t7, %lo(D_80157586)($t7)
    /* F6CE4 800E7D34 448E8000 */  mtc1       $t6, $f16
    /* F6CE8 800E7D38 3C018015 */  lui        $at, %hi(D_80157580)
    /* F6CEC 800E7D3C 46003221 */  cvt.d.s    $f8, $f6
    /* F6CF0 800E7D40 44823000 */  mtc1       $v0, $f6
    /* F6CF4 800E7D44 46344283 */  div.d      $f10, $f8, $f20
    /* F6CF8 800E7D48 3C048015 */  lui        $a0, %hi(D_8015758C)
    /* F6CFC 800E7D4C 9484758C */  lhu        $a0, %lo(D_8015758C)($a0)
    /* F6D00 800E7D50 46803220 */  cvt.s.w    $f8, $f6
    /* F6D04 800E7D54 448F3000 */  mtc1       $t7, $f6
    /* F6D08 800E7D58 468084A1 */  cvt.d.w    $f18, $f16
    /* F6D0C 800E7D5C 46004421 */  cvt.d.s    $f16, $f8
    /* F6D10 800E7D60 46803221 */  cvt.d.w    $f8, $f6
    /* F6D14 800E7D64 46325102 */  mul.d      $f4, $f10, $f18
    /* F6D18 800E7D68 46348283 */  div.d      $f10, $f16, $f20
    /* F6D1C 800E7D6C 46245482 */  mul.d      $f18, $f10, $f4
    /* F6D20 800E7D70 46289400 */  add.d      $f16, $f18, $f8
    /* F6D24 800E7D74 4620828D */  trunc.w.d  $f10, $f16
    /* F6D28 800E7D78 44185000 */  mfc1       $t8, $f10
    /* F6D2C 800E7D7C 0C007660 */  jal        sins
    /* F6D30 800E7D80 A4387580 */   sh        $t8, %lo(D_80157580)($at)
    /* F6D34 800E7D84 44822000 */  mtc1       $v0, $f4
    /* F6D38 800E7D88 3C088014 */  lui        $t0, %hi(D_8013E438)
    /* F6D3C 800E7D8C 8D08E438 */  lw         $t0, %lo(D_8013E438)($t0)
    /* F6D40 800E7D90 468021A0 */  cvt.s.w    $f6, $f4
    /* F6D44 800E7D94 3C098015 */  lui        $t1, %hi(D_80157588)
    /* F6D48 800E7D98 44888000 */  mtc1       $t0, $f16
    /* F6D4C 800E7D9C 85297588 */  lh         $t1, %lo(D_80157588)($t1)
    /* F6D50 800E7DA0 3C018015 */  lui        $at, %hi(D_80157582)
    /* F6D54 800E7DA4 468082A1 */  cvt.d.w    $f10, $f16
    /* F6D58 800E7DA8 3C048015 */  lui        $a0, %hi(D_8015758C)
    /* F6D5C 800E7DAC 9484758C */  lhu        $a0, %lo(D_8015758C)($a0)
    /* F6D60 800E7DB0 460034A1 */  cvt.d.s    $f18, $f6
    /* F6D64 800E7DB4 44893000 */  mtc1       $t1, $f6
    /* F6D68 800E7DB8 46349203 */  div.d      $f8, $f18, $f20
    /* F6D6C 800E7DBC 468034A1 */  cvt.d.w    $f18, $f6
    /* F6D70 800E7DC0 462A4102 */  mul.d      $f4, $f8, $f10
    /* F6D74 800E7DC4 46322400 */  add.d      $f16, $f4, $f18
    /* F6D78 800E7DC8 4620820D */  trunc.w.d  $f8, $f16
    /* F6D7C 800E7DCC 440A4000 */  mfc1       $t2, $f8
    /* F6D80 800E7DD0 0C007654 */  jal        coss
    /* F6D84 800E7DD4 A42A7582 */   sh        $t2, %lo(D_80157582)($at)
    /* F6D88 800E7DD8 A7A20032 */  sh         $v0, 0x32($sp)
    /* F6D8C 800E7DDC 0C007660 */  jal        sins
    /* F6D90 800E7DE0 96240000 */   lhu       $a0, 0x0($s1)
    /* F6D94 800E7DE4 87AC0032 */  lh         $t4, 0x32($sp)
    /* F6D98 800E7DE8 3C0D8014 */  lui        $t5, %hi(D_8013E438)
    /* F6D9C 800E7DEC 8DADE438 */  lw         $t5, %lo(D_8013E438)($t5)
    /* F6DA0 800E7DF0 448C5000 */  mtc1       $t4, $f10
    /* F6DA4 800E7DF4 3C0E8015 */  lui        $t6, %hi(D_8015758A)
    /* F6DA8 800E7DF8 448D8000 */  mtc1       $t5, $f16
    /* F6DAC 800E7DFC 468051A0 */  cvt.s.w    $f6, $f10
    /* F6DB0 800E7E00 85CE758A */  lh         $t6, %lo(D_8015758A)($t6)
    /* F6DB4 800E7E04 3C018015 */  lui        $at, %hi(D_80157584)
    /* F6DB8 800E7E08 46808221 */  cvt.d.w    $f8, $f16
    /* F6DBC 800E7E0C 46003121 */  cvt.d.s    $f4, $f6
    /* F6DC0 800E7E10 44823000 */  mtc1       $v0, $f6
    /* F6DC4 800E7E14 46342483 */  div.d      $f18, $f4, $f20
    /* F6DC8 800E7E18 46803120 */  cvt.s.w    $f4, $f6
    /* F6DCC 800E7E1C 448E3000 */  mtc1       $t6, $f6
    /* F6DD0 800E7E20 46002421 */  cvt.d.s    $f16, $f4
    /* F6DD4 800E7E24 46803121 */  cvt.d.w    $f4, $f6
    /* F6DD8 800E7E28 46289282 */  mul.d      $f10, $f18, $f8
    /* F6DDC 800E7E2C 46348483 */  div.d      $f18, $f16, $f20
    /* F6DE0 800E7E30 462A9202 */  mul.d      $f8, $f18, $f10
    /* F6DE4 800E7E34 46244400 */  add.d      $f16, $f8, $f4
    /* F6DE8 800E7E38 4620848D */  trunc.w.d  $f18, $f16
    /* F6DEC 800E7E3C 44199000 */  mfc1       $t9, $f18
    /* F6DF0 800E7E40 100000CD */  b          .L800E8178_F7128
    /* F6DF4 800E7E44 A4397584 */   sh        $t9, %lo(D_80157584)($at)
  .L800E7E48_F6DF8:
    /* F6DF8 800E7E48 13000012 */  beqz       $t8, .L800E7E94_F6E44
    /* F6DFC 800E7E4C 3C058015 */   lui       $a1, %hi(D_8015758C)
    /* F6E00 800E7E50 3C118015 */  lui        $s1, %hi(D_8015758E)
    /* F6E04 800E7E54 82090008 */  lb         $t1, 0x8($s0)
    /* F6E08 800E7E58 820D0009 */  lb         $t5, 0x9($s0)
    /* F6E0C 800E7E5C 2631758E */  addiu      $s1, $s1, %lo(D_8015758E)
    /* F6E10 800E7E60 24A5758C */  addiu      $a1, $a1, %lo(D_8015758C)
    /* F6E14 800E7E64 86280000 */  lh         $t0, 0x0($s1)
    /* F6E18 800E7E68 84AC0000 */  lh         $t4, 0x0($a1)
    /* F6E1C 800E7E6C 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* F6E20 800E7E70 00095900 */  sll        $t3, $t1, 4
    /* F6E24 800E7E74 000D70C0 */  sll        $t6, $t5, 3
    /* F6E28 800E7E78 4481A800 */  mtc1       $at, $f21
    /* F6E2C 800E7E7C 4480A000 */  mtc1       $zero, $f20
    /* F6E30 800E7E80 010B5021 */  addu       $t2, $t0, $t3
    /* F6E34 800E7E84 018E7821 */  addu       $t7, $t4, $t6
    /* F6E38 800E7E88 A62A0000 */  sh         $t2, 0x0($s1)
    /* F6E3C 800E7E8C 10000051 */  b          .L800E7FD4_F6F84
    /* F6E40 800E7E90 A4AF0000 */   sh        $t7, 0x0($a1)
  .L800E7E94_F6E44:
    /* F6E44 800E7E94 3C118015 */  lui        $s1, %hi(D_8015758E)
    /* F6E48 800E7E98 2631758E */  addiu      $s1, $s1, %lo(D_8015758E)
    /* F6E4C 800E7E9C 0C007660 */  jal        sins
    /* F6E50 800E7EA0 96240000 */   lhu       $a0, 0x0($s1)
    /* F6E54 800E7EA4 A7A20030 */  sh         $v0, 0x30($sp)
    /* F6E58 800E7EA8 0C007654 */  jal        coss
    /* F6E5C 800E7EAC 96240000 */   lhu       $a0, 0x0($s1)
    /* F6E60 800E7EB0 44824000 */  mtc1       $v0, $f8
    /* F6E64 800E7EB4 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* F6E68 800E7EB8 4481A800 */  mtc1       $at, $f21
    /* F6E6C 800E7EBC 46804120 */  cvt.s.w    $f4, $f8
    /* F6E70 800E7EC0 4480A000 */  mtc1       $zero, $f20
    /* F6E74 800E7EC4 82190009 */  lb         $t9, 0x9($s0)
    /* F6E78 800E7EC8 87AA0030 */  lh         $t2, 0x30($sp)
    /* F6E7C 800E7ECC 82080008 */  lb         $t0, 0x8($s0)
    /* F6E80 800E7ED0 0019C083 */  sra        $t8, $t9, 2
    /* F6E84 800E7ED4 46002421 */  cvt.d.s    $f16, $f4
    /* F6E88 800E7ED8 00184823 */  negu       $t1, $t8
    /* F6E8C 800E7EDC 46348483 */  div.d      $f18, $f16, $f20
    /* F6E90 800E7EE0 44895000 */  mtc1       $t1, $f10
    /* F6E94 800E7EE4 448A8000 */  mtc1       $t2, $f16
    /* F6E98 800E7EE8 00085883 */  sra        $t3, $t0, 2
    /* F6E9C 800E7EEC 468051A1 */  cvt.d.w    $f6, $f10
    /* F6EA0 800E7EF0 448B4000 */  mtc1       $t3, $f8
    /* F6EA4 800E7EF4 3C0D8015 */  lui        $t5, %hi(D_80157580)
    /* F6EA8 800E7EF8 85AD7580 */  lh         $t5, %lo(D_80157580)($t5)
    /* F6EAC 800E7EFC 46804121 */  cvt.d.w    $f4, $f8
    /* F6EB0 800E7F00 3C018015 */  lui        $at, %hi(D_80157580)
    /* F6EB4 800E7F04 46323282 */  mul.d      $f10, $f6, $f18
    /* F6EB8 800E7F08 468081A0 */  cvt.s.w    $f6, $f16
    /* F6EBC 800E7F0C 460034A1 */  cvt.d.s    $f18, $f6
    /* F6EC0 800E7F10 46349203 */  div.d      $f8, $f18, $f20
    /* F6EC4 800E7F14 448D9000 */  mtc1       $t5, $f18
    /* F6EC8 800E7F18 46282402 */  mul.d      $f16, $f4, $f8
    /* F6ECC 800E7F1C 46809121 */  cvt.d.w    $f4, $f18
    /* F6ED0 800E7F20 46305180 */  add.d      $f6, $f10, $f16
    /* F6ED4 800E7F24 46262200 */  add.d      $f8, $f4, $f6
    /* F6ED8 800E7F28 4620428D */  trunc.w.d  $f10, $f8
    /* F6EDC 800E7F2C 440E5000 */  mfc1       $t6, $f10
    /* F6EE0 800E7F30 00000000 */  nop
    /* F6EE4 800E7F34 A42E7580 */  sh         $t6, %lo(D_80157580)($at)
    /* F6EE8 800E7F38 0C007654 */  jal        coss
    /* F6EEC 800E7F3C 96240000 */   lhu       $a0, 0x0($s1)
    /* F6EF0 800E7F40 A7A20030 */  sh         $v0, 0x30($sp)
    /* F6EF4 800E7F44 0C007660 */  jal        sins
    /* F6EF8 800E7F48 96240000 */   lhu       $a0, 0x0($s1)
    /* F6EFC 800E7F4C 44822000 */  mtc1       $v0, $f4
    /* F6F00 800E7F50 820F0009 */  lb         $t7, 0x9($s0)
    /* F6F04 800E7F54 87AB0030 */  lh         $t3, 0x30($sp)
    /* F6F08 800E7F58 468021A0 */  cvt.s.w    $f6, $f4
    /* F6F0C 800E7F5C 000FC883 */  sra        $t9, $t7, 2
    /* F6F10 800E7F60 0019C023 */  negu       $t8, $t9
    /* F6F14 800E7F64 44988000 */  mtc1       $t8, $f16
    /* F6F18 800E7F68 82090008 */  lb         $t1, 0x8($s0)
    /* F6F1C 800E7F6C 3C0A8015 */  lui        $t2, %hi(D_80157584)
    /* F6F20 800E7F70 46003221 */  cvt.d.s    $f8, $f6
    /* F6F24 800E7F74 468084A1 */  cvt.d.w    $f18, $f16
    /* F6F28 800E7F78 00094083 */  sra        $t0, $t1, 2
    /* F6F2C 800E7F7C 44882000 */  mtc1       $t0, $f4
    /* F6F30 800E7F80 854A7584 */  lh         $t2, %lo(D_80157584)($t2)
    /* F6F34 800E7F84 46344283 */  div.d      $f10, $f8, $f20
    /* F6F38 800E7F88 448B4000 */  mtc1       $t3, $f8
    /* F6F3C 800E7F8C 3C018015 */  lui        $at, %hi(D_80157584)
    /* F6F40 800E7F90 3C058015 */  lui        $a1, %hi(D_8015758C)
    /* F6F44 800E7F94 468021A1 */  cvt.d.w    $f6, $f4
    /* F6F48 800E7F98 24A5758C */  addiu      $a1, $a1, %lo(D_8015758C)
    /* F6F4C 800E7F9C 462A9402 */  mul.d      $f16, $f18, $f10
    /* F6F50 800E7FA0 468044A0 */  cvt.s.w    $f18, $f8
    /* F6F54 800E7FA4 460092A1 */  cvt.d.s    $f10, $f18
    /* F6F58 800E7FA8 46345103 */  div.d      $f4, $f10, $f20
    /* F6F5C 800E7FAC 448A5000 */  mtc1       $t2, $f10
    /* F6F60 800E7FB0 46243202 */  mul.d      $f8, $f6, $f4
    /* F6F64 800E7FB4 468051A1 */  cvt.d.w    $f6, $f10
    /* F6F68 800E7FB8 46288481 */  sub.d      $f18, $f16, $f8
    /* F6F6C 800E7FBC 46323100 */  add.d      $f4, $f6, $f18
    /* F6F70 800E7FC0 4620240D */  trunc.w.d  $f16, $f4
    /* F6F74 800E7FC4 440C8000 */  mfc1       $t4, $f16
    /* F6F78 800E7FC8 00000000 */  nop
    /* F6F7C 800E7FCC A42C7584 */  sh         $t4, %lo(D_80157584)($at)
    /* F6F80 800E7FD0 96030006 */  lhu        $v1, 0x6($s0)
  .L800E7FD4_F6F84:
    /* F6F84 800E7FD4 306E0008 */  andi       $t6, $v1, 0x8
    /* F6F88 800E7FD8 11C00006 */  beqz       $t6, .L800E7FF4_F6FA4
    /* F6F8C 800E7FDC 30780004 */   andi      $t8, $v1, 0x4
    /* F6F90 800E7FE0 3C028015 */  lui        $v0, %hi(D_80157582)
    /* F6F94 800E7FE4 24427582 */  addiu      $v0, $v0, %lo(D_80157582)
    /* F6F98 800E7FE8 844F0000 */  lh         $t7, 0x0($v0)
    /* F6F9C 800E7FEC 25F90001 */  addiu      $t9, $t7, 0x1
    /* F6FA0 800E7FF0 A4590000 */  sh         $t9, 0x0($v0)
  .L800E7FF4_F6FA4:
    /* F6FA4 800E7FF4 3C028015 */  lui        $v0, %hi(D_80157582)
    /* F6FA8 800E7FF8 13000004 */  beqz       $t8, .L800E800C_F6FBC
    /* F6FAC 800E7FFC 24427582 */   addiu     $v0, $v0, %lo(D_80157582)
    /* F6FB0 800E8000 84490000 */  lh         $t1, 0x0($v0)
    /* F6FB4 800E8004 2528FFFF */  addiu      $t0, $t1, -0x1
    /* F6FB8 800E8008 A4480000 */  sh         $t0, 0x0($v0)
  .L800E800C_F6FBC:
    /* F6FBC 800E800C 0C007654 */  jal        coss
    /* F6FC0 800E8010 94A40000 */   lhu       $a0, 0x0($a1)
    /* F6FC4 800E8014 A7A20032 */  sh         $v0, 0x32($sp)
    /* F6FC8 800E8018 0C007654 */  jal        coss
    /* F6FCC 800E801C 96240000 */   lhu       $a0, 0x0($s1)
    /* F6FD0 800E8020 87AB0032 */  lh         $t3, 0x32($sp)
    /* F6FD4 800E8024 3C018014 */  lui        $at, %hi(D_80144240)
    /* F6FD8 800E8028 D4244240 */  ldc1       $f4, %lo(D_80144240)($at)
    /* F6FDC 800E802C 448B4000 */  mtc1       $t3, $f8
    /* F6FE0 800E8030 3C0A8015 */  lui        $t2, %hi(D_80157580)
    /* F6FE4 800E8034 854A7580 */  lh         $t2, %lo(D_80157580)($t2)
    /* F6FE8 800E8038 468042A0 */  cvt.s.w    $f10, $f8
    /* F6FEC 800E803C 44824000 */  mtc1       $v0, $f8
    /* F6FF0 800E8040 3C018015 */  lui        $at, %hi(D_80157586)
    /* F6FF4 800E8044 3C048015 */  lui        $a0, %hi(D_8015758C)
    /* F6FF8 800E8048 9484758C */  lhu        $a0, %lo(D_8015758C)($a0)
    /* F6FFC 800E804C 460051A1 */  cvt.d.s    $f6, $f10
    /* F7000 800E8050 468042A0 */  cvt.s.w    $f10, $f8
    /* F7004 800E8054 448A4000 */  mtc1       $t2, $f8
    /* F7008 800E8058 46343483 */  div.d      $f18, $f6, $f20
    /* F700C 800E805C 460051A1 */  cvt.d.s    $f6, $f10
    /* F7010 800E8060 468042A1 */  cvt.d.w    $f10, $f8
    /* F7014 800E8064 46249402 */  mul.d      $f16, $f18, $f4
    /* F7018 800E8068 46343483 */  div.d      $f18, $f6, $f20
    /* F701C 800E806C 46309102 */  mul.d      $f4, $f18, $f16
    /* F7020 800E8070 46245181 */  sub.d      $f6, $f10, $f4
    /* F7024 800E8074 4620348D */  trunc.w.d  $f18, $f6
    /* F7028 800E8078 440C9000 */  mfc1       $t4, $f18
    /* F702C 800E807C 0C007660 */  jal        sins
    /* F7030 800E8080 A42C7586 */   sh        $t4, %lo(D_80157586)($at)
    /* F7034 800E8084 44828000 */  mtc1       $v0, $f16
    /* F7038 800E8088 3C018014 */  lui        $at, %hi(D_80144248)
    /* F703C 800E808C 3C0E8015 */  lui        $t6, %hi(D_80157582)
    /* F7040 800E8090 46808220 */  cvt.s.w    $f8, $f16
    /* F7044 800E8094 85CE7582 */  lh         $t6, %lo(D_80157582)($t6)
    /* F7048 800E8098 D4264248 */  ldc1       $f6, %lo(D_80144248)($at)
    /* F704C 800E809C 3C018015 */  lui        $at, %hi(D_80157588)
    /* F7050 800E80A0 448E8000 */  mtc1       $t6, $f16
    /* F7054 800E80A4 3C048015 */  lui        $a0, %hi(D_8015758C)
    /* F7058 800E80A8 460042A1 */  cvt.d.s    $f10, $f8
    /* F705C 800E80AC 46808221 */  cvt.d.w    $f8, $f16
    /* F7060 800E80B0 9484758C */  lhu        $a0, %lo(D_8015758C)($a0)
    /* F7064 800E80B4 46345103 */  div.d      $f4, $f10, $f20
    /* F7068 800E80B8 46262482 */  mul.d      $f18, $f4, $f6
    /* F706C 800E80BC 46324281 */  sub.d      $f10, $f8, $f18
    /* F7070 800E80C0 4620510D */  trunc.w.d  $f4, $f10
    /* F7074 800E80C4 44192000 */  mfc1       $t9, $f4
    /* F7078 800E80C8 0C007654 */  jal        coss
    /* F707C 800E80CC A4397588 */   sh        $t9, %lo(D_80157588)($at)
    /* F7080 800E80D0 A7A20032 */  sh         $v0, 0x32($sp)
    /* F7084 800E80D4 0C007660 */  jal        sins
    /* F7088 800E80D8 96240000 */   lhu       $a0, 0x0($s1)
    /* F708C 800E80DC 87B80032 */  lh         $t8, 0x32($sp)
    /* F7090 800E80E0 3C018014 */  lui        $at, %hi(D_80144250)
    /* F7094 800E80E4 D42A4250 */  ldc1       $f10, %lo(D_80144250)($at)
    /* F7098 800E80E8 44983000 */  mtc1       $t8, $f6
    /* F709C 800E80EC 3C078015 */  lui        $a3, %hi(D_80157584)
    /* F70A0 800E80F0 84E77584 */  lh         $a3, %lo(D_80157584)($a3)
    /* F70A4 800E80F4 46803420 */  cvt.s.w    $f16, $f6
    /* F70A8 800E80F8 44823000 */  mtc1       $v0, $f6
    /* F70AC 800E80FC 3C018015 */  lui        $at, %hi(D_8015758A)
    /* F70B0 800E8100 3C048014 */  lui        $a0, %hi(D_801441F0)
    /* F70B4 800E8104 248441F0 */  addiu      $a0, $a0, %lo(D_801441F0)
    /* F70B8 800E8108 3C058015 */  lui        $a1, %hi(D_80157580)
    /* F70BC 800E810C 46008221 */  cvt.d.s    $f8, $f16
    /* F70C0 800E8110 46803420 */  cvt.s.w    $f16, $f6
    /* F70C4 800E8114 44873000 */  mtc1       $a3, $f6
    /* F70C8 800E8118 3C068015 */  lui        $a2, %hi(D_80157582)
    /* F70CC 800E811C 3C0D8015 */  lui        $t5, %hi(D_8015758C)
    /* F70D0 800E8120 46344483 */  div.d      $f18, $f8, $f20
    /* F70D4 800E8124 46008221 */  cvt.d.s    $f8, $f16
    /* F70D8 800E8128 46803421 */  cvt.d.w    $f16, $f6
    /* F70DC 800E812C 462A9102 */  mul.d      $f4, $f18, $f10
    /* F70E0 800E8130 46344483 */  div.d      $f18, $f8, $f20
    /* F70E4 800E8134 46249282 */  mul.d      $f10, $f18, $f4
    /* F70E8 800E8138 462A8201 */  sub.d      $f8, $f16, $f10
    /* F70EC 800E813C 4620448D */  trunc.w.d  $f18, $f8
    /* F70F0 800E8140 44089000 */  mfc1       $t0, $f18
    /* F70F4 800E8144 00000000 */  nop
    /* F70F8 800E8148 A428758A */  sh         $t0, %lo(D_8015758A)($at)
    /* F70FC 800E814C 960B0006 */  lhu        $t3, 0x6($s0)
    /* F7100 800E8150 316A0001 */  andi       $t2, $t3, 0x1
    /* F7104 800E8154 51400009 */  beql       $t2, $zero, .L800E817C_F712C
    /* F7108 800E8158 8FBF002C */   lw        $ra, 0x2C($sp)
    /* F710C 800E815C 85AD758C */  lh         $t5, %lo(D_8015758C)($t5)
    /* F7110 800E8160 862C0000 */  lh         $t4, 0x0($s1)
    /* F7114 800E8164 84A57580 */  lh         $a1, %lo(D_80157580)($a1)
    /* F7118 800E8168 84C67582 */  lh         $a2, %lo(D_80157582)($a2)
    /* F711C 800E816C AFAD0010 */  sw         $t5, 0x10($sp)
    /* F7120 800E8170 0C00731B */  jal        osSyncPrintf
    /* F7124 800E8174 AFAC0014 */   sw        $t4, 0x14($sp)
  .L800E8178_F7128:
    /* F7128 800E8178 8FBF002C */  lw         $ra, 0x2C($sp)
  .L800E817C_F712C:
    /* F712C 800E817C D7B40018 */  ldc1       $f20, 0x18($sp)
    /* F7130 800E8180 8FB00024 */  lw         $s0, 0x24($sp)
    /* F7134 800E8184 8FB10028 */  lw         $s1, 0x28($sp)
    /* F7138 800E8188 03E00008 */  jr         $ra
    /* F713C 800E818C 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_800E7C28_F6BD8
