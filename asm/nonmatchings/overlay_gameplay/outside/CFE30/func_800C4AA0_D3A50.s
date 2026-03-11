nonmatching func_800C4AA0_D3A50, 0x218

glabel func_800C4AA0_D3A50
    /* D3A50 800C4AA0 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* D3A54 800C4AA4 AFB00018 */  sw         $s0, 0x18($sp)
    /* D3A58 800C4AA8 3C108015 */  lui        $s0, %hi(D_801541FE)
    /* D3A5C 800C4AAC 861041FE */  lh         $s0, %lo(D_801541FE)($s0)
    /* D3A60 800C4AB0 AFBE0038 */  sw         $fp, 0x38($sp)
    /* D3A64 800C4AB4 241EFFFB */  addiu      $fp, $zero, -0x5
    /* D3A68 800C4AB8 AFBF003C */  sw         $ra, 0x3C($sp)
    /* D3A6C 800C4ABC AFB70034 */  sw         $s7, 0x34($sp)
    /* D3A70 800C4AC0 AFB60030 */  sw         $s6, 0x30($sp)
    /* D3A74 800C4AC4 AFB5002C */  sw         $s5, 0x2C($sp)
    /* D3A78 800C4AC8 AFB40028 */  sw         $s4, 0x28($sp)
    /* D3A7C 800C4ACC AFB30024 */  sw         $s3, 0x24($sp)
    /* D3A80 800C4AD0 AFB20020 */  sw         $s2, 0x20($sp)
    /* D3A84 800C4AD4 121E0003 */  beq        $s0, $fp, .L800C4AE4_D3A94
    /* D3A88 800C4AD8 AFB1001C */   sw        $s1, 0x1C($sp)
    /* D3A8C 800C4ADC 2402FFFA */  addiu      $v0, $zero, -0x6
    /* D3A90 800C4AE0 16020005 */  bne        $s0, $v0, .L800C4AF8_D3AA8
  .L800C4AE4_D3A94:
    /* D3A94 800C4AE4 00002025 */   or        $a0, $zero, $zero
    /* D3A98 800C4AE8 0C030506 */  jal        func_800C1418_D03C8
    /* D3A9C 800C4AEC 24050001 */   addiu     $a1, $zero, 0x1
    /* D3AA0 800C4AF0 10000066 */  b          .L800C4C8C_D3C3C
    /* D3AA4 800C4AF4 8FBF003C */   lw        $ra, 0x3C($sp)
  .L800C4AF8_D3AA8:
    /* D3AA8 800C4AF8 521E0064 */  beql       $s0, $fp, .L800C4C8C_D3C3C
    /* D3AAC 800C4AFC 8FBF003C */   lw        $ra, 0x3C($sp)
    /* D3AB0 800C4B00 12020061 */  beq        $s0, $v0, .L800C4C88_D3C38
    /* D3AB4 800C4B04 24170003 */   addiu     $s7, $zero, 0x3
    /* D3AB8 800C4B08 3C158015 */  lui        $s5, %hi(D_80154318)
    /* D3ABC 800C4B0C 3C138014 */  lui        $s3, %hi(D_8013DFA8)
    /* D3AC0 800C4B10 2673DFA8 */  addiu      $s3, $s3, %lo(D_8013DFA8)
    /* D3AC4 800C4B14 26B54318 */  addiu      $s5, $s5, %lo(D_80154318)
    /* D3AC8 800C4B18 2416001C */  addiu      $s6, $zero, 0x1C
    /* D3ACC 800C4B1C 24140003 */  addiu      $s4, $zero, 0x3
  .L800C4B20_D3AD0:
    /* D3AD0 800C4B20 02160019 */  multu      $s0, $s6
    /* D3AD4 800C4B24 00102400 */  sll        $a0, $s0, 16
    /* D3AD8 800C4B28 0004C403 */  sra        $t8, $a0, 16
    /* D3ADC 800C4B2C 03002025 */  or         $a0, $t8, $zero
    /* D3AE0 800C4B30 00002825 */  or         $a1, $zero, $zero
    /* D3AE4 800C4B34 24060001 */  addiu      $a2, $zero, 0x1
    /* D3AE8 800C4B38 00007012 */  mflo       $t6
    /* D3AEC 800C4B3C 02AE8821 */  addu       $s1, $s5, $t6
    /* D3AF0 800C4B40 922F0012 */  lbu        $t7, 0x12($s1)
    /* D3AF4 800C4B44 29E10004 */  slti       $at, $t7, 0x4
    /* D3AF8 800C4B48 50200008 */  beql       $at, $zero, .L800C4B6C_D3B1C
    /* D3AFC 800C4B4C 26300008 */   addiu     $s0, $s1, 0x8
    /* D3B00 800C4B50 0C030693 */  jal        func_800C1A4C_D09FC
    /* D3B04 800C4B54 86320004 */   lh        $s2, 0x4($s1)
    /* D3B08 800C4B58 00128400 */  sll        $s0, $s2, 16
    /* D3B0C 800C4B5C 0010CC03 */  sra        $t9, $s0, 16
    /* D3B10 800C4B60 10000045 */  b          .L800C4C78_D3C28
    /* D3B14 800C4B64 03208025 */   or        $s0, $t9, $zero
    /* D3B18 800C4B68 26300008 */  addiu      $s0, $s1, 0x8
  .L800C4B6C_D3B1C:
    /* D3B1C 800C4B6C 9208000A */  lbu        $t0, 0xA($s0)
    /* D3B20 800C4B70 2509FFFD */  addiu      $t1, $t0, -0x3
    /* D3B24 800C4B74 A209000A */  sb         $t1, 0xA($s0)
    /* D3B28 800C4B78 862A0002 */  lh         $t2, 0x2($s1)
    /* D3B2C 800C4B7C 254B0008 */  addiu      $t3, $t2, 0x8
    /* D3B30 800C4B80 A62B0002 */  sh         $t3, 0x2($s1)
    /* D3B34 800C4B84 920C0009 */  lbu        $t4, 0x9($s0)
    /* D3B38 800C4B88 92040006 */  lbu        $a0, 0x6($s0)
    /* D3B3C 800C4B8C 01940019 */  multu      $t4, $s4
    /* D3B40 800C4B90 00006812 */  mflo       $t5
    /* D3B44 800C4B94 026D7021 */  addu       $t6, $s3, $t5
    /* D3B48 800C4B98 0C031299 */  jal        func_800C4A64_D3A14
    /* D3B4C 800C4B9C 91C50000 */   lbu       $a1, 0x0($t6)
    /* D3B50 800C4BA0 92190009 */  lbu        $t9, 0x9($s0)
    /* D3B54 800C4BA4 920F0006 */  lbu        $t7, 0x6($s0)
    /* D3B58 800C4BA8 92040007 */  lbu        $a0, 0x7($s0)
    /* D3B5C 800C4BAC 03340019 */  multu      $t9, $s4
    /* D3B60 800C4BB0 01E2C021 */  addu       $t8, $t7, $v0
    /* D3B64 800C4BB4 A2180006 */  sb         $t8, 0x6($s0)
    /* D3B68 800C4BB8 00004012 */  mflo       $t0
    /* D3B6C 800C4BBC 02684821 */  addu       $t1, $s3, $t0
    /* D3B70 800C4BC0 0C031299 */  jal        func_800C4A64_D3A14
    /* D3B74 800C4BC4 91250001 */   lbu       $a1, 0x1($t1)
    /* D3B78 800C4BC8 920C0009 */  lbu        $t4, 0x9($s0)
    /* D3B7C 800C4BCC 920A0007 */  lbu        $t2, 0x7($s0)
    /* D3B80 800C4BD0 92040008 */  lbu        $a0, 0x8($s0)
    /* D3B84 800C4BD4 01940019 */  multu      $t4, $s4
    /* D3B88 800C4BD8 01425821 */  addu       $t3, $t2, $v0
    /* D3B8C 800C4BDC A20B0007 */  sb         $t3, 0x7($s0)
    /* D3B90 800C4BE0 00006812 */  mflo       $t5
    /* D3B94 800C4BE4 026D7021 */  addu       $t6, $s3, $t5
    /* D3B98 800C4BE8 0C031299 */  jal        func_800C4A64_D3A14
    /* D3B9C 800C4BEC 91C50002 */   lbu       $a1, 0x2($t6)
    /* D3BA0 800C4BF0 92190009 */  lbu        $t9, 0x9($s0)
    /* D3BA4 800C4BF4 920F0008 */  lbu        $t7, 0x8($s0)
    /* D3BA8 800C4BF8 92090006 */  lbu        $t1, 0x6($s0)
    /* D3BAC 800C4BFC 03340019 */  multu      $t9, $s4
    /* D3BB0 800C4C00 01E2C021 */  addu       $t8, $t7, $v0
    /* D3BB4 800C4C04 A2180008 */  sb         $t8, 0x8($s0)
    /* D3BB8 800C4C08 00004012 */  mflo       $t0
    /* D3BBC 800C4C0C 02681821 */  addu       $v1, $s3, $t0
    /* D3BC0 800C4C10 906A0000 */  lbu        $t2, 0x0($v1)
    /* D3BC4 800C4C14 552A0018 */  bnel       $t1, $t2, .L800C4C78_D3C28
    /* D3BC8 800C4C18 86300004 */   lh        $s0, 0x4($s1)
    /* D3BCC 800C4C1C 920B0007 */  lbu        $t3, 0x7($s0)
    /* D3BD0 800C4C20 906C0001 */  lbu        $t4, 0x1($v1)
    /* D3BD4 800C4C24 556C0014 */  bnel       $t3, $t4, .L800C4C78_D3C28
    /* D3BD8 800C4C28 86300004 */   lh        $s0, 0x4($s1)
    /* D3BDC 800C4C2C 906E0002 */  lbu        $t6, 0x2($v1)
    /* D3BE0 800C4C30 330D00FF */  andi       $t5, $t8, 0xFF
    /* D3BE4 800C4C34 55AE0010 */  bnel       $t5, $t6, .L800C4C78_D3C28
    /* D3BE8 800C4C38 86300004 */   lh        $s0, 0x4($s1)
    /* D3BEC 800C4C3C 0C000E38 */  jal        func_800038E0_44E0
    /* D3BF0 800C4C40 00000000 */   nop
    /* D3BF4 800C4C44 0057001A */  div        $zero, $v0, $s7
    /* D3BF8 800C4C48 00007810 */  mfhi       $t7
    /* D3BFC 800C4C4C A20F0009 */  sb         $t7, 0x9($s0)
    /* D3C00 800C4C50 16E00002 */  bnez       $s7, .L800C4C5C_D3C0C
    /* D3C04 800C4C54 00000000 */   nop
    /* D3C08 800C4C58 0007000D */  break      7
  .L800C4C5C_D3C0C:
    /* D3C0C 800C4C5C 2401FFFF */  addiu      $at, $zero, -0x1
    /* D3C10 800C4C60 16E10004 */  bne        $s7, $at, .L800C4C74_D3C24
    /* D3C14 800C4C64 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D3C18 800C4C68 14410002 */  bne        $v0, $at, .L800C4C74_D3C24
    /* D3C1C 800C4C6C 00000000 */   nop
    /* D3C20 800C4C70 0006000D */  break      6
  .L800C4C74_D3C24:
    /* D3C24 800C4C74 86300004 */  lh         $s0, 0x4($s1)
  .L800C4C78_D3C28:
    /* D3C28 800C4C78 121E0003 */  beq        $s0, $fp, .L800C4C88_D3C38
    /* D3C2C 800C4C7C 2401FFFA */   addiu     $at, $zero, -0x6
    /* D3C30 800C4C80 1601FFA7 */  bne        $s0, $at, .L800C4B20_D3AD0
    /* D3C34 800C4C84 00000000 */   nop
  .L800C4C88_D3C38:
    /* D3C38 800C4C88 8FBF003C */  lw         $ra, 0x3C($sp)
  .L800C4C8C_D3C3C:
    /* D3C3C 800C4C8C 8FB00018 */  lw         $s0, 0x18($sp)
    /* D3C40 800C4C90 8FB1001C */  lw         $s1, 0x1C($sp)
    /* D3C44 800C4C94 8FB20020 */  lw         $s2, 0x20($sp)
    /* D3C48 800C4C98 8FB30024 */  lw         $s3, 0x24($sp)
    /* D3C4C 800C4C9C 8FB40028 */  lw         $s4, 0x28($sp)
    /* D3C50 800C4CA0 8FB5002C */  lw         $s5, 0x2C($sp)
    /* D3C54 800C4CA4 8FB60030 */  lw         $s6, 0x30($sp)
    /* D3C58 800C4CA8 8FB70034 */  lw         $s7, 0x34($sp)
    /* D3C5C 800C4CAC 8FBE0038 */  lw         $fp, 0x38($sp)
    /* D3C60 800C4CB0 03E00008 */  jr         $ra
    /* D3C64 800C4CB4 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_800C4AA0_D3A50
