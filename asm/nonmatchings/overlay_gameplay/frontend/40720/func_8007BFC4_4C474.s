nonmatching func_8007BFC4_4C474, 0x4F8

glabel func_8007BFC4_4C474
    /* 4C474 8007BFC4 27BDFE98 */  addiu      $sp, $sp, -0x168
    /* 4C478 8007BFC8 3C028003 */  lui        $v0, %hi(D_800313D0)
    /* 4C47C 8007BFCC 844213D0 */  lh         $v0, %lo(D_800313D0)($v0)
    /* 4C480 8007BFD0 AFBE0038 */  sw         $fp, 0x38($sp)
    /* 4C484 8007BFD4 240E0004 */  addiu      $t6, $zero, 0x4
    /* 4C488 8007BFD8 AFBF003C */  sw         $ra, 0x3C($sp)
    /* 4C48C 8007BFDC AFB70034 */  sw         $s7, 0x34($sp)
    /* 4C490 8007BFE0 AFB60030 */  sw         $s6, 0x30($sp)
    /* 4C494 8007BFE4 AFB5002C */  sw         $s5, 0x2C($sp)
    /* 4C498 8007BFE8 AFB40028 */  sw         $s4, 0x28($sp)
    /* 4C49C 8007BFEC AFB30024 */  sw         $s3, 0x24($sp)
    /* 4C4A0 8007BFF0 AFB20020 */  sw         $s2, 0x20($sp)
    /* 4C4A4 8007BFF4 AFB1001C */  sw         $s1, 0x1C($sp)
    /* 4C4A8 8007BFF8 AFB00018 */  sw         $s0, 0x18($sp)
    /* 4C4AC 8007BFFC 241E004F */  addiu      $fp, $zero, 0x4F
    /* 4C4B0 8007C000 A7A0015E */  sh         $zero, 0x15E($sp)
    /* 4C4B4 8007C004 A7AE0160 */  sh         $t6, 0x160($sp)
    /* 4C4B8 8007C008 A7A0005C */  sh         $zero, 0x5C($sp)
    /* 4C4BC 8007C00C 10400005 */  beqz       $v0, .L8007C024_4C4D4
    /* 4C4C0 8007C010 24050001 */   addiu     $a1, $zero, 0x1
    /* 4C4C4 8007C014 24010001 */  addiu      $at, $zero, 0x1
    /* 4C4C8 8007C018 10410024 */  beq        $v0, $at, .L8007C0AC_4C55C
    /* 4C4CC 8007C01C 24010002 */   addiu     $at, $zero, 0x2
    /* 4C4D0 8007C020 10410043 */  beq        $v0, $at, .L8007C130_4C5E0
  .L8007C024_4C4D4:
    /* 4C4D4 8007C024 3C038009 */   lui       $v1, %hi(D_800933A0)
    /* 4C4D8 8007C028 246333A0 */  addiu      $v1, $v1, %lo(D_800933A0)
    /* 4C4DC 8007C02C 00009025 */  or         $s2, $zero, $zero
    /* 4C4E0 8007C030 27B6005C */  addiu      $s6, $sp, 0x5C
    /* 4C4E4 8007C034 2414003B */  addiu      $s4, $zero, 0x3B
    /* 4C4E8 8007C038 24130040 */  addiu      $s3, $zero, 0x40
    /* 4C4EC 8007C03C 00727821 */  addu       $t7, $v1, $s2
  .L8007C040_4C4F0:
    /* 4C4F0 8007C040 91E20000 */  lbu        $v0, 0x0($t7)
    /* 4C4F4 8007C044 264A0001 */  addiu      $t2, $s2, 0x1
    /* 4C4F8 8007C048 12620003 */  beq        $s3, $v0, .L8007C058_4C508
    /* 4C4FC 8007C04C 00000000 */   nop
    /* 4C500 8007C050 5682000F */  bnel       $s4, $v0, .L8007C090_4C540
    /* 4C504 8007C054 26520001 */   addiu     $s2, $s2, 0x1
  .L8007C058_4C508:
    /* 4C508 8007C058 16620006 */  bne        $s3, $v0, .L8007C074_4C524
    /* 4C50C 8007C05C 0005C040 */   sll       $t8, $a1, 1
    /* 4C510 8007C060 24A50001 */  addiu      $a1, $a1, 0x1
    /* 4C514 8007C064 00054400 */  sll        $t0, $a1, 16
    /* 4C518 8007C068 02D8C821 */  addu       $t9, $s6, $t8
    /* 4C51C 8007C06C A7320000 */  sh         $s2, 0x0($t9)
    /* 4C520 8007C070 00082C03 */  sra        $a1, $t0, 16
  .L8007C074_4C524:
    /* 4C524 8007C074 00055840 */  sll        $t3, $a1, 1
    /* 4C528 8007C078 24A50001 */  addiu      $a1, $a1, 0x1
    /* 4C52C 8007C07C 00056C00 */  sll        $t5, $a1, 16
    /* 4C530 8007C080 02CB6021 */  addu       $t4, $s6, $t3
    /* 4C534 8007C084 A58A0000 */  sh         $t2, 0x0($t4)
    /* 4C538 8007C088 000D2C03 */  sra        $a1, $t5, 16
    /* 4C53C 8007C08C 26520001 */  addiu      $s2, $s2, 0x1
  .L8007C090_4C540:
    /* 4C540 8007C090 00127C00 */  sll        $t7, $s2, 16
    /* 4C544 8007C094 000F9403 */  sra        $s2, $t7, 16
    /* 4C548 8007C098 2E410400 */  sltiu      $at, $s2, 0x400
    /* 4C54C 8007C09C 5420FFE8 */  bnel       $at, $zero, .L8007C040_4C4F0
    /* 4C550 8007C0A0 00727821 */   addu      $t7, $v1, $s2
    /* 4C554 8007C0A4 10000041 */  b          .L8007C1AC_4C65C
    /* 4C558 8007C0A8 00000000 */   nop
  .L8007C0AC_4C55C:
    /* 4C55C 8007C0AC 00009025 */  or         $s2, $zero, $zero
    /* 4C560 8007C0B0 27B6005C */  addiu      $s6, $sp, 0x5C
    /* 4C564 8007C0B4 2414003B */  addiu      $s4, $zero, 0x3B
    /* 4C568 8007C0B8 24130040 */  addiu      $s3, $zero, 0x40
  .L8007C0BC_4C56C:
    /* 4C56C 8007C0BC 3C028009 */  lui        $v0, %hi(D_800938A0)
    /* 4C570 8007C0C0 00521021 */  addu       $v0, $v0, $s2
    /* 4C574 8007C0C4 904238A0 */  lbu        $v0, %lo(D_800938A0)($v0)
    /* 4C578 8007C0C8 264A0001 */  addiu      $t2, $s2, 0x1
    /* 4C57C 8007C0CC 12620003 */  beq        $s3, $v0, .L8007C0DC_4C58C
    /* 4C580 8007C0D0 00000000 */   nop
    /* 4C584 8007C0D4 5682000F */  bnel       $s4, $v0, .L8007C114_4C5C4
    /* 4C588 8007C0D8 26520001 */   addiu     $s2, $s2, 0x1
  .L8007C0DC_4C58C:
    /* 4C58C 8007C0DC 16620006 */  bne        $s3, $v0, .L8007C0F8_4C5A8
    /* 4C590 8007C0E0 0005C840 */   sll       $t9, $a1, 1
    /* 4C594 8007C0E4 24A50001 */  addiu      $a1, $a1, 0x1
    /* 4C598 8007C0E8 00054C00 */  sll        $t1, $a1, 16
    /* 4C59C 8007C0EC 02D94021 */  addu       $t0, $s6, $t9
    /* 4C5A0 8007C0F0 A5120000 */  sh         $s2, 0x0($t0)
    /* 4C5A4 8007C0F4 00092C03 */  sra        $a1, $t1, 16
  .L8007C0F8_4C5A8:
    /* 4C5A8 8007C0F8 00056040 */  sll        $t4, $a1, 1
    /* 4C5AC 8007C0FC 24A50001 */  addiu      $a1, $a1, 0x1
    /* 4C5B0 8007C100 00057400 */  sll        $t6, $a1, 16
    /* 4C5B4 8007C104 02CC6821 */  addu       $t5, $s6, $t4
    /* 4C5B8 8007C108 A5AA0000 */  sh         $t2, 0x0($t5)
    /* 4C5BC 8007C10C 000E2C03 */  sra        $a1, $t6, 16
    /* 4C5C0 8007C110 26520001 */  addiu      $s2, $s2, 0x1
  .L8007C114_4C5C4:
    /* 4C5C4 8007C114 0012C400 */  sll        $t8, $s2, 16
    /* 4C5C8 8007C118 00189403 */  sra        $s2, $t8, 16
    /* 4C5CC 8007C11C 2E410400 */  sltiu      $at, $s2, 0x400
    /* 4C5D0 8007C120 1420FFE6 */  bnez       $at, .L8007C0BC_4C56C
    /* 4C5D4 8007C124 00000000 */   nop
    /* 4C5D8 8007C128 10000020 */  b          .L8007C1AC_4C65C
    /* 4C5DC 8007C12C 00000000 */   nop
  .L8007C130_4C5E0:
    /* 4C5E0 8007C130 00009025 */  or         $s2, $zero, $zero
    /* 4C5E4 8007C134 27B6005C */  addiu      $s6, $sp, 0x5C
    /* 4C5E8 8007C138 2414003B */  addiu      $s4, $zero, 0x3B
    /* 4C5EC 8007C13C 24130040 */  addiu      $s3, $zero, 0x40
  .L8007C140_4C5F0:
    /* 4C5F0 8007C140 3C028009 */  lui        $v0, %hi(D_80093DA0)
    /* 4C5F4 8007C144 00521021 */  addu       $v0, $v0, $s2
    /* 4C5F8 8007C148 90423DA0 */  lbu        $v0, %lo(D_80093DA0)($v0)
    /* 4C5FC 8007C14C 264A0001 */  addiu      $t2, $s2, 0x1
    /* 4C600 8007C150 12620003 */  beq        $s3, $v0, .L8007C160_4C610
    /* 4C604 8007C154 00000000 */   nop
    /* 4C608 8007C158 5682000F */  bnel       $s4, $v0, .L8007C198_4C648
    /* 4C60C 8007C15C 26520001 */   addiu     $s2, $s2, 0x1
  .L8007C160_4C610:
    /* 4C610 8007C160 16620006 */  bne        $s3, $v0, .L8007C17C_4C62C
    /* 4C614 8007C164 00054040 */   sll       $t0, $a1, 1
    /* 4C618 8007C168 24A50001 */  addiu      $a1, $a1, 0x1
    /* 4C61C 8007C16C 00055C00 */  sll        $t3, $a1, 16
    /* 4C620 8007C170 02C84821 */  addu       $t1, $s6, $t0
    /* 4C624 8007C174 A5320000 */  sh         $s2, 0x0($t1)
    /* 4C628 8007C178 000B2C03 */  sra        $a1, $t3, 16
  .L8007C17C_4C62C:
    /* 4C62C 8007C17C 00056840 */  sll        $t5, $a1, 1
    /* 4C630 8007C180 24A50001 */  addiu      $a1, $a1, 0x1
    /* 4C634 8007C184 00057C00 */  sll        $t7, $a1, 16
    /* 4C638 8007C188 02CD7021 */  addu       $t6, $s6, $t5
    /* 4C63C 8007C18C A5CA0000 */  sh         $t2, 0x0($t6)
    /* 4C640 8007C190 000F2C03 */  sra        $a1, $t7, 16
    /* 4C644 8007C194 26520001 */  addiu      $s2, $s2, 0x1
  .L8007C198_4C648:
    /* 4C648 8007C198 0012CC00 */  sll        $t9, $s2, 16
    /* 4C64C 8007C19C 00199403 */  sra        $s2, $t9, 16
    /* 4C650 8007C1A0 2E410400 */  sltiu      $at, $s2, 0x400
    /* 4C654 8007C1A4 1420FFE6 */  bnez       $at, .L8007C140_4C5F0
    /* 4C658 8007C1A8 00000000 */   nop
  .L8007C1AC_4C65C:
    /* 4C65C 8007C1AC 0C004D45 */  jal        func_80013514_14114
    /* 4C660 8007C1B0 00000000 */   nop
    /* 4C664 8007C1B4 24170003 */  addiu      $s7, $zero, 0x3
    /* 4C668 8007C1B8 27B10124 */  addiu      $s1, $sp, 0x124
  .L8007C1BC_4C66C:
    /* 4C66C 8007C1BC 0C01E468 */  jal        func_800791A0_49650
    /* 4C670 8007C1C0 00002025 */   or        $a0, $zero, $zero
    /* 4C674 8007C1C4 0C002BF7 */  jal        func_8000AFDC_BBDC
    /* 4C678 8007C1C8 00000000 */   nop
    /* 4C67C 8007C1CC 87A90160 */  lh         $t1, 0x160($sp)
    /* 4C680 8007C1D0 87AB015E */  lh         $t3, 0x15E($sp)
    /* 4C684 8007C1D4 29210023 */  slti       $at, $t1, 0x23
    /* 4C688 8007C1D8 14200002 */  bnez       $at, .L8007C1E4_4C694
    /* 4C68C 8007C1DC 256C0001 */   addiu     $t4, $t3, 0x1
    /* 4C690 8007C1E0 A7AC015E */  sh         $t4, 0x15E($sp)
  .L8007C1E4_4C694:
    /* 4C694 8007C1E4 87AD0160 */  lh         $t5, 0x160($sp)
    /* 4C698 8007C1E8 03C02825 */  or         $a1, $fp, $zero
    /* 4C69C 8007C1EC 17C0000E */  bnez       $fp, .L8007C228_4C6D8
    /* 4C6A0 8007C1F0 01A09025 */   or        $s2, $t5, $zero
    /* 4C6A4 8007C1F4 29A10059 */  slti       $at, $t5, 0x59
    /* 4C6A8 8007C1F8 1020000B */  beqz       $at, .L8007C228_4C6D8
    /* 4C6AC 8007C1FC 25AA0001 */   addiu     $t2, $t5, 0x1
    /* 4C6B0 8007C200 3C04800B */  lui        $a0, %hi(D_800AE04C)
    /* 4C6B4 8007C204 A7AA0160 */  sh         $t2, 0x160($sp)
    /* 4C6B8 8007C208 241E004F */  addiu      $fp, $zero, 0x4F
    /* 4C6BC 8007C20C 2484E04C */  addiu      $a0, $a0, %lo(D_800AE04C)
    /* 4C6C0 8007C210 0C002929 */  jal        drawText
    /* 4C6C4 8007C214 2405004F */   addiu     $a1, $zero, 0x4F
    /* 4C6C8 8007C218 87AE0160 */  lh         $t6, 0x160($sp)
    /* 4C6CC 8007C21C 240F000C */  addiu      $t7, $zero, 0xC
    /* 4C6D0 8007C220 10000009 */  b          .L8007C248_4C6F8
    /* 4C6D4 8007C224 01EEA823 */   subu      $s5, $t7, $t6
  .L8007C228_4C6D8:
    /* 4C6D8 8007C228 87B80160 */  lh         $t8, 0x160($sp)
    /* 4C6DC 8007C22C 2419000C */  addiu      $t9, $zero, 0xC
    /* 4C6E0 8007C230 3C04800B */  lui        $a0, %hi(D_800AE050)
    /* 4C6E4 8007C234 2B010059 */  slti       $at, $t8, 0x59
    /* 4C6E8 8007C238 10200003 */  beqz       $at, .L8007C248_4C6F8
    /* 4C6EC 8007C23C 0338A823 */   subu      $s5, $t9, $t8
    /* 4C6F0 8007C240 0C002929 */  jal        drawText
    /* 4C6F4 8007C244 2484E050 */   addiu     $a0, $a0, %lo(D_800AE050)
  .L8007C248_4C6F8:
    /* 4C6F8 8007C248 1A400028 */  blez       $s2, .L8007C2EC_4C79C
    /* 4C6FC 8007C24C 2A410003 */   slti      $at, $s2, 0x3
    /* 4C700 8007C250 10200009 */  beqz       $at, .L8007C278_4C728
    /* 4C704 8007C254 3C04800B */   lui       $a0, %hi(D_800AE058)
    /* 4C708 8007C258 3C04800B */  lui        $a0, %hi(D_800AE054)
    /* 4C70C 8007C25C 2484E054 */  addiu      $a0, $a0, %lo(D_800AE054)
    /* 4C710 8007C260 240500B4 */  addiu      $a1, $zero, 0xB4
    /* 4C714 8007C264 240600D7 */  addiu      $a2, $zero, 0xD7
    /* 4C718 8007C268 0C002929 */  jal        drawText
    /* 4C71C 8007C26C 240700FE */   addiu     $a3, $zero, 0xFE
    /* 4C720 8007C270 10000006 */  b          .L8007C28C_4C73C
    /* 4C724 8007C274 00000000 */   nop
  .L8007C278_4C728:
    /* 4C728 8007C278 2484E058 */  addiu      $a0, $a0, %lo(D_800AE058)
    /* 4C72C 8007C27C 240500EB */  addiu      $a1, $zero, 0xEB
    /* 4C730 8007C280 240600E1 */  addiu      $a2, $zero, 0xE1
    /* 4C734 8007C284 0C002929 */  jal        drawText
    /* 4C738 8007C288 240700FE */   addiu     $a3, $zero, 0xFE
  .L8007C28C_4C73C:
    /* 4C73C 8007C28C 3C04800B */  lui        $a0, %hi(D_800AE05C)
    /* 4C740 8007C290 2484E05C */  addiu      $a0, $a0, %lo(D_800AE05C)
    /* 4C744 8007C294 0C002929 */  jal        drawText
    /* 4C748 8007C298 240500FF */   addiu     $a1, $zero, 0xFF
    /* 4C74C 8007C29C 02B28021 */  addu       $s0, $s5, $s2
    /* 4C750 8007C2A0 24010008 */  addiu      $at, $zero, 0x8
    /* 4C754 8007C2A4 16010009 */  bne        $s0, $at, .L8007C2CC_4C77C
    /* 4C758 8007C2A8 00000000 */   nop
    /* 4C75C 8007C2AC 03D70019 */  multu      $fp, $s7
    /* 4C760 8007C2B0 3C04800B */  lui        $a0, %hi(D_800AE060)
    /* 4C764 8007C2B4 240900FF */  addiu      $t1, $zero, 0xFF
    /* 4C768 8007C2B8 2484E060 */  addiu      $a0, $a0, %lo(D_800AE060)
    /* 4C76C 8007C2BC 00004012 */  mflo       $t0
    /* 4C770 8007C2C0 01282823 */  subu       $a1, $t1, $t0
    /* 4C774 8007C2C4 0C002929 */  jal        drawText
    /* 4C778 8007C2C8 00000000 */   nop
  .L8007C2CC_4C77C:
    /* 4C77C 8007C2CC 56000008 */  bnel       $s0, $zero, .L8007C2F0_4C7A0
    /* 4C780 8007C2D0 02B28021 */   addu      $s0, $s5, $s2
    /* 4C784 8007C2D4 03D70019 */  multu      $fp, $s7
    /* 4C788 8007C2D8 3C04800B */  lui        $a0, %hi(D_800AE064)
    /* 4C78C 8007C2DC 2484E064 */  addiu      $a0, $a0, %lo(D_800AE064)
    /* 4C790 8007C2E0 00002812 */  mflo       $a1
    /* 4C794 8007C2E4 0C002929 */  jal        drawText
    /* 4C798 8007C2E8 00000000 */   nop
  .L8007C2EC_4C79C:
    /* 4C79C 8007C2EC 02B28021 */  addu       $s0, $s5, $s2
  .L8007C2F0_4C7A0:
    /* 4C7A0 8007C2F0 2A010009 */  slti       $at, $s0, 0x9
    /* 4C7A4 8007C2F4 10200035 */  beqz       $at, .L8007C3CC_4C87C
    /* 4C7A8 8007C2F8 3C028003 */   lui       $v0, %hi(D_800313D0)
    /* 4C7AC 8007C2FC 844213D0 */  lh         $v0, %lo(D_800313D0)($v0)
    /* 4C7B0 8007C300 24010001 */  addiu      $at, $zero, 0x1
    /* 4C7B4 8007C304 02003025 */  or         $a2, $s0, $zero
    /* 4C7B8 8007C308 10400006 */  beqz       $v0, .L8007C324_4C7D4
    /* 4C7BC 8007C30C 02203825 */   or        $a3, $s1, $zero
    /* 4C7C0 8007C310 1041000B */  beq        $v0, $at, .L8007C340_4C7F0
    /* 4C7C4 8007C314 00127840 */   sll       $t7, $s2, 1
    /* 4C7C8 8007C318 24010002 */  addiu      $at, $zero, 0x2
    /* 4C7CC 8007C31C 1041000E */  beq        $v0, $at, .L8007C358_4C808
    /* 4C7D0 8007C320 00124840 */   sll       $t1, $s2, 1
  .L8007C324_4C7D4:
    /* 4C7D4 8007C324 00125840 */  sll        $t3, $s2, 1
    /* 4C7D8 8007C328 02CB6021 */  addu       $t4, $s6, $t3
    /* 4C7DC 8007C32C 858DFFFE */  lh         $t5, -0x2($t4)
    /* 4C7E0 8007C330 3C0A8009 */  lui        $t2, %hi(D_800933A0)
    /* 4C7E4 8007C334 254A33A0 */  addiu      $t2, $t2, %lo(D_800933A0)
    /* 4C7E8 8007C338 1000000C */  b          .L8007C36C_4C81C
    /* 4C7EC 8007C33C 01AA1821 */   addu      $v1, $t5, $t2
  .L8007C340_4C7F0:
    /* 4C7F0 8007C340 02CF7021 */  addu       $t6, $s6, $t7
    /* 4C7F4 8007C344 85D9FFFE */  lh         $t9, -0x2($t6)
    /* 4C7F8 8007C348 3C188009 */  lui        $t8, %hi(D_800938A0)
    /* 4C7FC 8007C34C 271838A0 */  addiu      $t8, $t8, %lo(D_800938A0)
    /* 4C800 8007C350 10000006 */  b          .L8007C36C_4C81C
    /* 4C804 8007C354 03381821 */   addu      $v1, $t9, $t8
  .L8007C358_4C808:
    /* 4C808 8007C358 02C94021 */  addu       $t0, $s6, $t1
    /* 4C80C 8007C35C 850BFFFE */  lh         $t3, -0x2($t0)
    /* 4C810 8007C360 3C0C8009 */  lui        $t4, %hi(D_80093DA0)
    /* 4C814 8007C364 258C3DA0 */  addiu      $t4, $t4, %lo(D_80093DA0)
    /* 4C818 8007C368 016C1821 */  addu       $v1, $t3, $t4
  .L8007C36C_4C81C:
    /* 4C81C 8007C36C 90640000 */  lbu        $a0, 0x0($v1)
    /* 4C820 8007C370 16640003 */  bne        $s3, $a0, .L8007C380_4C830
    /* 4C824 8007C374 00801025 */   or        $v0, $a0, $zero
    /* 4C828 8007C378 10000010 */  b          .L8007C3BC_4C86C
    /* 4C82C 8007C37C A3A00124 */   sb        $zero, 0x124($sp)
  .L8007C380_4C830:
    /* 4C830 8007C380 1262000C */  beq        $s3, $v0, .L8007C3B4_4C864
    /* 4C834 8007C384 00002825 */   or        $a1, $zero, $zero
    /* 4C838 8007C388 1282000A */  beq        $s4, $v0, .L8007C3B4_4C864
    /* 4C83C 8007C38C 02256821 */   addu      $t5, $s1, $a1
  .L8007C390_4C840:
    /* 4C840 8007C390 A1A40000 */  sb         $a0, 0x0($t5)
    /* 4C844 8007C394 90640001 */  lbu        $a0, 0x1($v1)
    /* 4C848 8007C398 24A50001 */  addiu      $a1, $a1, 0x1
    /* 4C84C 8007C39C 00055400 */  sll        $t2, $a1, 16
    /* 4C850 8007C3A0 000A2C03 */  sra        $a1, $t2, 16
    /* 4C854 8007C3A4 12640003 */  beq        $s3, $a0, .L8007C3B4_4C864
    /* 4C858 8007C3A8 24630001 */   addiu     $v1, $v1, 0x1
    /* 4C85C 8007C3AC 5684FFF8 */  bnel       $s4, $a0, .L8007C390_4C840
    /* 4C860 8007C3B0 02256821 */   addu      $t5, $s1, $a1
  .L8007C3B4_4C864:
    /* 4C864 8007C3B4 02257021 */  addu       $t6, $s1, $a1
    /* 4C868 8007C3B8 A1C00000 */  sb         $zero, 0x0($t6)
  .L8007C3BC_4C86C:
    /* 4C86C 8007C3BC 3C04800B */  lui        $a0, %hi(D_800AE068)
    /* 4C870 8007C3C0 2484E068 */  addiu      $a0, $a0, %lo(D_800AE068)
    /* 4C874 8007C3C4 0C002929 */  jal        drawText
    /* 4C878 8007C3C8 24050080 */   addiu     $a1, $zero, 0x80
  .L8007C3CC_4C87C:
    /* 4C87C 8007C3CC 2652FFFF */  addiu      $s2, $s2, -0x1
    /* 4C880 8007C3D0 0012CC00 */  sll        $t9, $s2, 16
    /* 4C884 8007C3D4 0019C403 */  sra        $t8, $t9, 16
    /* 4C888 8007C3D8 1B000006 */  blez       $t8, .L8007C3F4_4C8A4
    /* 4C88C 8007C3DC 03009025 */   or        $s2, $t8, $zero
    /* 4C890 8007C3E0 87A90160 */  lh         $t1, 0x160($sp)
    /* 4C894 8007C3E4 2528FFF3 */  addiu      $t0, $t1, -0xD
    /* 4C898 8007C3E8 0118082A */  slt        $at, $t0, $t8
    /* 4C89C 8007C3EC 1420FF96 */  bnez       $at, .L8007C248_4C6F8
    /* 4C8A0 8007C3F0 00000000 */   nop
  .L8007C3F4_4C8A4:
    /* 4C8A4 8007C3F4 0C002C11 */  jal        func_8000B044_BC44
    /* 4C8A8 8007C3F8 00000000 */   nop
    /* 4C8AC 8007C3FC 87AB015E */  lh         $t3, 0x15E($sp)
    /* 4C8B0 8007C400 2401012C */  addiu      $at, $zero, 0x12C
    /* 4C8B4 8007C404 00002025 */  or         $a0, $zero, $zero
    /* 4C8B8 8007C408 51610005 */  beql       $t3, $at, .L8007C420_4C8D0
    /* 4C8BC 8007C40C 00002025 */   or        $a0, $zero, $zero
    /* 4C8C0 8007C410 0C000D61 */  jal        isButtonNewlyPressed
    /* 4C8C4 8007C414 34059000 */   ori       $a1, $zero, 0x9000
    /* 4C8C8 8007C418 10400005 */  beqz       $v0, .L8007C430_4C8E0
    /* 4C8CC 8007C41C 00002025 */   or        $a0, $zero, $zero
  .L8007C420_4C8D0:
    /* 4C8D0 8007C420 00002825 */  or         $a1, $zero, $zero
    /* 4C8D4 8007C424 00003025 */  or         $a2, $zero, $zero
    /* 4C8D8 8007C428 0C0016BB */  jal        func_80005AEC_66EC
    /* 4C8DC 8007C42C 24070040 */   addiu     $a3, $zero, 0x40
  .L8007C430_4C8E0:
    /* 4C8E0 8007C430 27DEFFFF */  addiu      $fp, $fp, -0x1
    /* 4C8E4 8007C434 33CCFFFF */  andi       $t4, $fp, 0xFFFF
    /* 4C8E8 8007C438 0C0016E1 */  jal        func_80005B84_6784
    /* 4C8EC 8007C43C 0180F025 */   or        $fp, $t4, $zero
    /* 4C8F0 8007C440 3C058006 */  lui        $a1, %hi(D_8005BB2C)
    /* 4C8F4 8007C444 24A5BB2C */  addiu      $a1, $a1, %lo(D_8005BB2C)
    /* 4C8F8 8007C448 8CA20000 */  lw         $v0, 0x0($a1)
    /* 4C8FC 8007C44C 3C0AE900 */  lui        $t2, (0xE9000000 >> 16)
    /* 4C900 8007C450 3C0EB800 */  lui        $t6, (0xB8000000 >> 16)
    /* 4C904 8007C454 244D0008 */  addiu      $t5, $v0, 0x8
    /* 4C908 8007C458 ACAD0000 */  sw         $t5, 0x0($a1)
    /* 4C90C 8007C45C AC400004 */  sw         $zero, 0x4($v0)
    /* 4C910 8007C460 AC4A0000 */  sw         $t2, 0x0($v0)
    /* 4C914 8007C464 8CA20000 */  lw         $v0, 0x0($a1)
    /* 4C918 8007C468 244F0008 */  addiu      $t7, $v0, 0x8
    /* 4C91C 8007C46C ACAF0000 */  sw         $t7, 0x0($a1)
    /* 4C920 8007C470 AC400004 */  sw         $zero, 0x4($v0)
    /* 4C924 8007C474 0C001417 */  jal        func_8000505C_5C5C
    /* 4C928 8007C478 AC4E0000 */   sw        $t6, 0x0($v0)
    /* 4C92C 8007C47C 0C0016CC */  jal        func_80005B30_6730
    /* 4C930 8007C480 00000000 */   nop
    /* 4C934 8007C484 1040FF4D */  beqz       $v0, .L8007C1BC_4C66C
    /* 4C938 8007C488 00000000 */   nop
    /* 4C93C 8007C48C 8FBF003C */  lw         $ra, 0x3C($sp)
    /* 4C940 8007C490 8FB00018 */  lw         $s0, 0x18($sp)
    /* 4C944 8007C494 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 4C948 8007C498 8FB20020 */  lw         $s2, 0x20($sp)
    /* 4C94C 8007C49C 8FB30024 */  lw         $s3, 0x24($sp)
    /* 4C950 8007C4A0 8FB40028 */  lw         $s4, 0x28($sp)
    /* 4C954 8007C4A4 8FB5002C */  lw         $s5, 0x2C($sp)
    /* 4C958 8007C4A8 8FB60030 */  lw         $s6, 0x30($sp)
    /* 4C95C 8007C4AC 8FB70034 */  lw         $s7, 0x34($sp)
    /* 4C960 8007C4B0 8FBE0038 */  lw         $fp, 0x38($sp)
    /* 4C964 8007C4B4 03E00008 */  jr         $ra
    /* 4C968 8007C4B8 27BD0168 */   addiu     $sp, $sp, 0x168
endlabel func_8007BFC4_4C474
