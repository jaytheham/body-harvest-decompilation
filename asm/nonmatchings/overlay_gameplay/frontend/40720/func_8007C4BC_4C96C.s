nonmatching func_8007C4BC_4C96C, 0x2A8

glabel func_8007C4BC_4C96C
    /* 4C96C 8007C4BC 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 4C970 8007C4C0 AFB40028 */  sw         $s4, 0x28($sp)
    /* 4C974 8007C4C4 AFB70034 */  sw         $s7, 0x34($sp)
    /* 4C978 8007C4C8 AFB60030 */  sw         $s6, 0x30($sp)
    /* 4C97C 8007C4CC AFB5002C */  sw         $s5, 0x2C($sp)
    /* 4C980 8007C4D0 AFB30024 */  sw         $s3, 0x24($sp)
    /* 4C984 8007C4D4 3C148009 */  lui        $s4, %hi(D_800944E8)
    /* 4C988 8007C4D8 AFBF003C */  sw         $ra, 0x3C($sp)
    /* 4C98C 8007C4DC AFBE0038 */  sw         $fp, 0x38($sp)
    /* 4C990 8007C4E0 AFB20020 */  sw         $s2, 0x20($sp)
    /* 4C994 8007C4E4 AFB1001C */  sw         $s1, 0x1C($sp)
    /* 4C998 8007C4E8 AFB00018 */  sw         $s0, 0x18($sp)
    /* 4C99C 8007C4EC 2413004F */  addiu      $s3, $zero, 0x4F
    /* 4C9A0 8007C4F0 0000B825 */  or         $s7, $zero, $zero
    /* 4C9A4 8007C4F4 24160004 */  addiu      $s6, $zero, 0x4
    /* 4C9A8 8007C4F8 269444E8 */  addiu      $s4, $s4, %lo(D_800944E8)
    /* 4C9AC 8007C4FC 24150003 */  addiu      $s5, $zero, 0x3
    /* 4C9B0 8007C500 00167080 */  sll        $t6, $s6, 2
  .L8007C504_4C9B4:
    /* 4C9B4 8007C504 028E8021 */  addu       $s0, $s4, $t6
    /* 4C9B8 8007C508 00002025 */  or         $a0, $zero, $zero
    /* 4C9BC 8007C50C 0C01E468 */  jal        func_800791A0_49650
    /* 4C9C0 8007C510 0260F025 */   or        $fp, $s3, $zero
    /* 4C9C4 8007C514 0C002BF7 */  jal        func_8000AFDC_BBDC
    /* 4C9C8 8007C518 00000000 */   nop
    /* 4C9CC 8007C51C 3C0F8004 */  lui        $t7, %hi(D_80047710)
    /* 4C9D0 8007C520 85EF7710 */  lh         $t7, %lo(D_80047710)($t7)
    /* 4C9D4 8007C524 24010023 */  addiu      $at, $zero, 0x23
    /* 4C9D8 8007C528 00168C00 */  sll        $s1, $s6, 16
    /* 4C9DC 8007C52C 000FC080 */  sll        $t8, $t7, 2
    /* 4C9E0 8007C530 0218C821 */  addu       $t9, $s0, $t8
    /* 4C9E4 8007C534 8F280000 */  lw         $t0, 0x0($t9)
    /* 4C9E8 8007C538 3C04800B */  lui        $a0, %hi(D_800AE074)
    /* 4C9EC 8007C53C 00115C03 */  sra        $t3, $s1, 16
    /* 4C9F0 8007C540 91020000 */  lbu        $v0, 0x0($t0)
    /* 4C9F4 8007C544 2484E074 */  addiu      $a0, $a0, %lo(D_800AE074)
    /* 4C9F8 8007C548 240F000C */  addiu      $t7, $zero, 0xC
    /* 4C9FC 8007C54C 14410004 */  bne        $v0, $at, .L8007C560_4CA10
    /* 4CA00 8007C550 03C02825 */   or        $a1, $fp, $zero
    /* 4CA04 8007C554 26F70001 */  addiu      $s7, $s7, 0x1
    /* 4CA08 8007C558 00174C00 */  sll        $t1, $s7, 16
    /* 4CA0C 8007C55C 0009BC03 */  sra        $s7, $t1, 16
  .L8007C560_4CA10:
    /* 4CA10 8007C560 17C0000E */  bnez       $fp, .L8007C59C_4CA4C
    /* 4CA14 8007C564 01608825 */   or        $s1, $t3, $zero
    /* 4CA18 8007C568 16E0000C */  bnez       $s7, .L8007C59C_4CA4C
    /* 4CA1C 8007C56C 00000000 */   nop
    /* 4CA20 8007C570 26D60001 */  addiu      $s6, $s6, 0x1
    /* 4CA24 8007C574 00166400 */  sll        $t4, $s6, 16
    /* 4CA28 8007C578 3C04800B */  lui        $a0, %hi(D_800AE070)
    /* 4CA2C 8007C57C 000CB403 */  sra        $s6, $t4, 16
    /* 4CA30 8007C580 2413004F */  addiu      $s3, $zero, 0x4F
    /* 4CA34 8007C584 2484E070 */  addiu      $a0, $a0, %lo(D_800AE070)
    /* 4CA38 8007C588 0C002929 */  jal        drawText
    /* 4CA3C 8007C58C 2405004F */   addiu     $a1, $zero, 0x4F
    /* 4CA40 8007C590 240E000C */  addiu      $t6, $zero, 0xC
    /* 4CA44 8007C594 10000003 */  b          .L8007C5A4_4CA54
    /* 4CA48 8007C598 01D69023 */   subu      $s2, $t6, $s6
  .L8007C59C_4CA4C:
    /* 4CA4C 8007C59C 0C002929 */  jal        drawText
    /* 4CA50 8007C5A0 01F69023 */   subu      $s2, $t7, $s6
  .L8007C5A4_4CA54:
    /* 4CA54 8007C5A4 1A20002C */  blez       $s1, .L8007C658_4CB08
    /* 4CA58 8007C5A8 0011C080 */   sll       $t8, $s1, 2
    /* 4CA5C 8007C5AC 0298C821 */  addu       $t9, $s4, $t8
    /* 4CA60 8007C5B0 8F28FFFC */  lw         $t0, -0x4($t9)
    /* 4CA64 8007C5B4 3C04800B */  lui        $a0, %hi(D_800AE07C)
    /* 4CA68 8007C5B8 240700EB */  addiu      $a3, $zero, 0xEB
    /* 4CA6C 8007C5BC 91090000 */  lbu        $t1, 0x0($t0)
    /* 4CA70 8007C5C0 2484E07C */  addiu      $a0, $a0, %lo(D_800AE07C)
    /* 4CA74 8007C5C4 2405006E */  addiu      $a1, $zero, 0x6E
    /* 4CA78 8007C5C8 15200008 */  bnez       $t1, .L8007C5EC_4CA9C
    /* 4CA7C 8007C5CC 2406006E */   addiu     $a2, $zero, 0x6E
    /* 4CA80 8007C5D0 3C04800B */  lui        $a0, %hi(D_800AE078)
    /* 4CA84 8007C5D4 2484E078 */  addiu      $a0, $a0, %lo(D_800AE078)
    /* 4CA88 8007C5D8 240500AA */  addiu      $a1, $zero, 0xAA
    /* 4CA8C 8007C5DC 0C002929 */  jal        drawText
    /* 4CA90 8007C5E0 240600AA */   addiu     $a2, $zero, 0xAA
    /* 4CA94 8007C5E4 10000003 */  b          .L8007C5F4_4CAA4
    /* 4CA98 8007C5E8 00000000 */   nop
  .L8007C5EC_4CA9C:
    /* 4CA9C 8007C5EC 0C002929 */  jal        drawText
    /* 4CAA0 8007C5F0 240700AA */   addiu     $a3, $zero, 0xAA
  .L8007C5F4_4CAA4:
    /* 4CAA4 8007C5F4 3C04800B */  lui        $a0, %hi(D_800AE080)
    /* 4CAA8 8007C5F8 2484E080 */  addiu      $a0, $a0, %lo(D_800AE080)
    /* 4CAAC 8007C5FC 0C002929 */  jal        drawText
    /* 4CAB0 8007C600 240500FF */   addiu     $a1, $zero, 0xFF
    /* 4CAB4 8007C604 16E00014 */  bnez       $s7, .L8007C658_4CB08
    /* 4CAB8 8007C608 02518021 */   addu      $s0, $s2, $s1
    /* 4CABC 8007C60C 24010008 */  addiu      $at, $zero, 0x8
    /* 4CAC0 8007C610 16010009 */  bne        $s0, $at, .L8007C638_4CAE8
    /* 4CAC4 8007C614 00000000 */   nop
    /* 4CAC8 8007C618 02750019 */  multu      $s3, $s5
    /* 4CACC 8007C61C 3C04800B */  lui        $a0, %hi(D_800AE084)
    /* 4CAD0 8007C620 240B00FF */  addiu      $t3, $zero, 0xFF
    /* 4CAD4 8007C624 2484E084 */  addiu      $a0, $a0, %lo(D_800AE084)
    /* 4CAD8 8007C628 00005012 */  mflo       $t2
    /* 4CADC 8007C62C 016A2823 */  subu       $a1, $t3, $t2
    /* 4CAE0 8007C630 0C002929 */  jal        drawText
    /* 4CAE4 8007C634 00000000 */   nop
  .L8007C638_4CAE8:
    /* 4CAE8 8007C638 56000008 */  bnel       $s0, $zero, .L8007C65C_4CB0C
    /* 4CAEC 8007C63C 02518021 */   addu      $s0, $s2, $s1
    /* 4CAF0 8007C640 02750019 */  multu      $s3, $s5
    /* 4CAF4 8007C644 3C04800B */  lui        $a0, %hi(D_800AE088)
    /* 4CAF8 8007C648 2484E088 */  addiu      $a0, $a0, %lo(D_800AE088)
    /* 4CAFC 8007C64C 00002812 */  mflo       $a1
    /* 4CB00 8007C650 0C002929 */  jal        drawText
    /* 4CB04 8007C654 00000000 */   nop
  .L8007C658_4CB08:
    /* 4CB08 8007C658 02518021 */  addu       $s0, $s2, $s1
  .L8007C65C_4CB0C:
    /* 4CB0C 8007C65C 2A010009 */  slti       $at, $s0, 0x9
    /* 4CB10 8007C660 10200008 */  beqz       $at, .L8007C684_4CB34
    /* 4CB14 8007C664 3C04800B */   lui       $a0, %hi(D_800AE08C)
    /* 4CB18 8007C668 00116080 */  sll        $t4, $s1, 2
    /* 4CB1C 8007C66C 028C6821 */  addu       $t5, $s4, $t4
    /* 4CB20 8007C670 8DA70000 */  lw         $a3, 0x0($t5)
    /* 4CB24 8007C674 2484E08C */  addiu      $a0, $a0, %lo(D_800AE08C)
    /* 4CB28 8007C678 24050080 */  addiu      $a1, $zero, 0x80
    /* 4CB2C 8007C67C 0C002929 */  jal        drawText
    /* 4CB30 8007C680 02003025 */   or        $a2, $s0, $zero
  .L8007C684_4CB34:
    /* 4CB34 8007C684 2631FFFF */  addiu      $s1, $s1, -0x1
    /* 4CB38 8007C688 00117400 */  sll        $t6, $s1, 16
    /* 4CB3C 8007C68C 000E7C03 */  sra        $t7, $t6, 16
    /* 4CB40 8007C690 19E00005 */  blez       $t7, .L8007C6A8_4CB58
    /* 4CB44 8007C694 01E08825 */   or        $s1, $t7, $zero
    /* 4CB48 8007C698 26D8FFF3 */  addiu      $t8, $s6, -0xD
    /* 4CB4C 8007C69C 030F082A */  slt        $at, $t8, $t7
    /* 4CB50 8007C6A0 1420FFC0 */  bnez       $at, .L8007C5A4_4CA54
    /* 4CB54 8007C6A4 00000000 */   nop
  .L8007C6A8_4CB58:
    /* 4CB58 8007C6A8 0C002C11 */  jal        func_8000B044_BC44
    /* 4CB5C 8007C6AC 00000000 */   nop
    /* 4CB60 8007C6B0 24010190 */  addiu      $at, $zero, 0x190
    /* 4CB64 8007C6B4 16E10005 */  bne        $s7, $at, .L8007C6CC_4CB7C
    /* 4CB68 8007C6B8 00002025 */   or        $a0, $zero, $zero
    /* 4CB6C 8007C6BC 00002825 */  or         $a1, $zero, $zero
    /* 4CB70 8007C6C0 00003025 */  or         $a2, $zero, $zero
    /* 4CB74 8007C6C4 0C0016BB */  jal        func_80005AEC_66EC
    /* 4CB78 8007C6C8 24070040 */   addiu     $a3, $zero, 0x40
  .L8007C6CC_4CB7C:
    /* 4CB7C 8007C6CC 16E00004 */  bnez       $s7, .L8007C6E0_4CB90
    /* 4CB80 8007C6D0 00000000 */   nop
    /* 4CB84 8007C6D4 2673FFFF */  addiu      $s3, $s3, -0x1
    /* 4CB88 8007C6D8 3279FFFF */  andi       $t9, $s3, 0xFFFF
    /* 4CB8C 8007C6DC 03209825 */  or         $s3, $t9, $zero
  .L8007C6E0_4CB90:
    /* 4CB90 8007C6E0 0C0016E1 */  jal        func_80005B84_6784
    /* 4CB94 8007C6E4 00000000 */   nop
    /* 4CB98 8007C6E8 3C058006 */  lui        $a1, %hi(D_8005BB2C)
    /* 4CB9C 8007C6EC 24A5BB2C */  addiu      $a1, $a1, %lo(D_8005BB2C)
    /* 4CBA0 8007C6F0 8CA20000 */  lw         $v0, 0x0($a1)
    /* 4CBA4 8007C6F4 3C09E900 */  lui        $t1, (0xE9000000 >> 16)
    /* 4CBA8 8007C6F8 3C0AB800 */  lui        $t2, (0xB8000000 >> 16)
    /* 4CBAC 8007C6FC 24480008 */  addiu      $t0, $v0, 0x8
    /* 4CBB0 8007C700 ACA80000 */  sw         $t0, 0x0($a1)
    /* 4CBB4 8007C704 AC400004 */  sw         $zero, 0x4($v0)
    /* 4CBB8 8007C708 AC490000 */  sw         $t1, 0x0($v0)
    /* 4CBBC 8007C70C 8CA20000 */  lw         $v0, 0x0($a1)
    /* 4CBC0 8007C710 244B0008 */  addiu      $t3, $v0, 0x8
    /* 4CBC4 8007C714 ACAB0000 */  sw         $t3, 0x0($a1)
    /* 4CBC8 8007C718 AC400004 */  sw         $zero, 0x4($v0)
    /* 4CBCC 8007C71C 0C001417 */  jal        func_8000505C_5C5C
    /* 4CBD0 8007C720 AC4A0000 */   sw        $t2, 0x0($v0)
    /* 4CBD4 8007C724 0C0016CC */  jal        func_80005B30_6730
    /* 4CBD8 8007C728 00000000 */   nop
    /* 4CBDC 8007C72C 5040FF75 */  beql       $v0, $zero, .L8007C504_4C9B4
    /* 4CBE0 8007C730 00167080 */   sll       $t6, $s6, 2
    /* 4CBE4 8007C734 8FBF003C */  lw         $ra, 0x3C($sp)
    /* 4CBE8 8007C738 8FB00018 */  lw         $s0, 0x18($sp)
    /* 4CBEC 8007C73C 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 4CBF0 8007C740 8FB20020 */  lw         $s2, 0x20($sp)
    /* 4CBF4 8007C744 8FB30024 */  lw         $s3, 0x24($sp)
    /* 4CBF8 8007C748 8FB40028 */  lw         $s4, 0x28($sp)
    /* 4CBFC 8007C74C 8FB5002C */  lw         $s5, 0x2C($sp)
    /* 4CC00 8007C750 8FB60030 */  lw         $s6, 0x30($sp)
    /* 4CC04 8007C754 8FB70034 */  lw         $s7, 0x34($sp)
    /* 4CC08 8007C758 8FBE0038 */  lw         $fp, 0x38($sp)
    /* 4CC0C 8007C75C 03E00008 */  jr         $ra
    /* 4CC10 8007C760 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_8007C4BC_4C96C
