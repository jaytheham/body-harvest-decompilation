nonmatching func_8007A038_4A4E8, 0x71C

glabel func_8007A038_4A4E8
    /* 4A4E8 8007A038 27BDFEB8 */  addiu      $sp, $sp, -0x148
    /* 4A4EC 8007A03C 3C0F8009 */  lui        $t7, %hi(D_800948C0)
    /* 4A4F0 8007A040 AFBF006C */  sw         $ra, 0x6C($sp)
    /* 4A4F4 8007A044 AFBE0068 */  sw         $fp, 0x68($sp)
    /* 4A4F8 8007A048 AFB70064 */  sw         $s7, 0x64($sp)
    /* 4A4FC 8007A04C AFB60060 */  sw         $s6, 0x60($sp)
    /* 4A500 8007A050 AFB5005C */  sw         $s5, 0x5C($sp)
    /* 4A504 8007A054 AFB40058 */  sw         $s4, 0x58($sp)
    /* 4A508 8007A058 AFB30054 */  sw         $s3, 0x54($sp)
    /* 4A50C 8007A05C AFB20050 */  sw         $s2, 0x50($sp)
    /* 4A510 8007A060 AFB1004C */  sw         $s1, 0x4C($sp)
    /* 4A514 8007A064 AFB00048 */  sw         $s0, 0x48($sp)
    /* 4A518 8007A068 F7B60040 */  sdc1       $f22, 0x40($sp)
    /* 4A51C 8007A06C F7B40038 */  sdc1       $f20, 0x38($sp)
    /* 4A520 8007A070 25EF48C0 */  addiu      $t7, $t7, %lo(D_800948C0)
    /* 4A524 8007A074 8DE10000 */  lw         $at, 0x0($t7)
    /* 4A528 8007A078 8DEB0004 */  lw         $t3, 0x4($t7)
    /* 4A52C 8007A07C 27AE00F8 */  addiu      $t6, $sp, 0xF8
    /* 4A530 8007A080 ADC10000 */  sw         $at, 0x0($t6)
    /* 4A534 8007A084 ADCB0004 */  sw         $t3, 0x4($t6)
    /* 4A538 8007A088 8DEB000C */  lw         $t3, 0xC($t7)
    /* 4A53C 8007A08C 8DE10008 */  lw         $at, 0x8($t7)
    /* 4A540 8007A090 3C0C8005 */  lui        $t4, %hi(showDemoText)
    /* 4A544 8007A094 ADCB000C */  sw         $t3, 0xC($t6)
    /* 4A548 8007A098 ADC10008 */  sw         $at, 0x8($t6)
    /* 4A54C 8007A09C 8DE10010 */  lw         $at, 0x10($t7)
    /* 4A550 8007A0A0 8DEB0014 */  lw         $t3, 0x14($t7)
    /* 4A554 8007A0A4 ADC10010 */  sw         $at, 0x10($t6)
    /* 4A558 8007A0A8 ADCB0014 */  sw         $t3, 0x14($t6)
    /* 4A55C 8007A0AC 8DEB001C */  lw         $t3, 0x1C($t7)
    /* 4A560 8007A0B0 8DE10018 */  lw         $at, 0x18($t7)
    /* 4A564 8007A0B4 ADCB001C */  sw         $t3, 0x1C($t6)
    /* 4A568 8007A0B8 ADC10018 */  sw         $at, 0x18($t6)
    /* 4A56C 8007A0BC 8D8C8034 */  lw         $t4, %lo(showDemoText)($t4)
    /* 4A570 8007A0C0 55800197 */  bnel       $t4, $zero, .L8007A720_4ABD0
    /* 4A574 8007A0C4 8FBF006C */   lw        $ra, 0x6C($sp)
    /* 4A578 8007A0C8 0C001431 */  jal        func_800050C4_5CC4
    /* 4A57C 8007A0CC 00000000 */   nop
    /* 4A580 8007A0D0 3C028003 */  lui        $v0, %hi(D_80031B84)
    /* 4A584 8007A0D4 8C421B84 */  lw         $v0, %lo(D_80031B84)($v0)
    /* 4A588 8007A0D8 3C038006 */  lui        $v1, %hi(D_8005BB48)
    /* 4A58C 8007A0DC 2463BB48 */  addiu      $v1, $v1, %lo(D_8005BB48)
    /* 4A590 8007A0E0 38580001 */  xori       $t8, $v0, 0x1
    /* 4A594 8007A0E4 00187080 */  sll        $t6, $t8, 2
    /* 4A598 8007A0E8 00026880 */  sll        $t5, $v0, 2
    /* 4A59C 8007A0EC 006DC821 */  addu       $t9, $v1, $t5
    /* 4A5A0 8007A0F0 006E7821 */  addu       $t7, $v1, $t6
    /* 4A5A4 8007A0F4 8DE50000 */  lw         $a1, 0x0($t7)
    /* 4A5A8 8007A0F8 0C003727 */  jal        func_8000DC9C_E89C
    /* 4A5AC 8007A0FC 8F240000 */   lw        $a0, 0x0($t9)
    /* 4A5B0 8007A100 24040140 */  addiu      $a0, $zero, 0x140
    /* 4A5B4 8007A104 0C00392C */  jal        osSetTime
    /* 4A5B8 8007A108 240500F0 */   addiu     $a1, $zero, 0xF0
    /* 4A5BC 8007A10C 3C048026 */  lui        $a0, %hi(D_80267080)
    /* 4A5C0 8007A110 3C05802B */  lui        $a1, %hi(D_802B2080)
    /* 4A5C4 8007A114 24A52080 */  addiu      $a1, $a1, %lo(D_802B2080)
    /* 4A5C8 8007A118 0C00370C */  jal        func_8000DC30_E830
    /* 4A5CC 8007A11C 24847080 */   addiu     $a0, $a0, %lo(D_80267080)
    /* 4A5D0 8007A120 0C001417 */  jal        func_8000505C_5C5C
    /* 4A5D4 8007A124 00000000 */   nop
    /* 4A5D8 8007A128 0C004DEB */  jal        func_800137AC_143AC
    /* 4A5DC 8007A12C 00000000 */   nop
    /* 4A5E0 8007A130 240B0001 */  addiu      $t3, $zero, 0x1
    /* 4A5E4 8007A134 3C018005 */  lui        $at, %hi(D_80052ACC)
    /* 4A5E8 8007A138 240201F4 */  addiu      $v0, $zero, 0x1F4
    /* 4A5EC 8007A13C 240C01F3 */  addiu      $t4, $zero, 0x1F3
    /* 4A5F0 8007A140 AFA00140 */  sw         $zero, 0x140($sp)
    /* 4A5F4 8007A144 A02B2ACC */  sb         $t3, %lo(D_80052ACC)($at)
    /* 4A5F8 8007A148 1040016F */  beqz       $v0, .L8007A708_4ABB8
    /* 4A5FC 8007A14C AFAC0144 */   sw        $t4, 0x144($sp)
    /* 4A600 8007A150 3C188003 */  lui        $t8, %hi(D_80031120)
    /* 4A604 8007A154 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 4A608 8007A158 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 4A60C 8007A15C 27181120 */  addiu      $t8, $t8, %lo(D_80031120)
    /* 4A610 8007A160 03017024 */  and        $t6, $t8, $at
    /* 4A614 8007A164 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 4A618 8007A168 27AD0118 */  addiu      $t5, $sp, 0x118
    /* 4A61C 8007A16C 27B90128 */  addiu      $t9, $sp, 0x128
    /* 4A620 8007A170 3C1E1FFF */  lui        $fp, (0x1FFFFFFF >> 16)
    /* 4A624 8007A174 3C148006 */  lui        $s4, %hi(D_8005BB38)
    /* 4A628 8007A178 3C138006 */  lui        $s3, %hi(D_8005BB2C)
    /* 4A62C 8007A17C 4481B000 */  mtc1       $at, $f22
    /* 4A630 8007A180 4480A000 */  mtc1       $zero, $f20
    /* 4A634 8007A184 2673BB2C */  addiu      $s3, $s3, %lo(D_8005BB2C)
    /* 4A638 8007A188 2694BB38 */  addiu      $s4, $s4, %lo(D_8005BB38)
    /* 4A63C 8007A18C 37DEFFFF */  ori        $fp, $fp, (0x1FFFFFFF & 0xFFFF)
    /* 4A640 8007A190 AFB90080 */  sw         $t9, 0x80($sp)
    /* 4A644 8007A194 AFAD0084 */  sw         $t5, 0x84($sp)
    /* 4A648 8007A198 AFAE007C */  sw         $t6, 0x7C($sp)
  .L8007A19C_4A64C:
    /* 4A64C 8007A19C 8FAF0140 */  lw         $t7, 0x140($sp)
    /* 4A650 8007A1A0 3C048007 */  lui        $a0, %hi(D_8006A8D0)
    /* 4A654 8007A1A4 3C058007 */  lui        $a1, %hi(D_80068038)
    /* 4A658 8007A1A8 25EB0002 */  addiu      $t3, $t7, 0x2
    /* 4A65C 8007A1AC AFAB0140 */  sw         $t3, 0x140($sp)
    /* 4A660 8007A1B0 24A58038 */  addiu      $a1, $a1, %lo(D_80068038)
    /* 4A664 8007A1B4 2484A8D0 */  addiu      $a0, $a0, %lo(D_8006A8D0)
    /* 4A668 8007A1B8 0C006E9C */  jal        osRecvMesg
    /* 4A66C 8007A1BC 24060001 */   addiu     $a2, $zero, 0x1
    /* 4A670 8007A1C0 0C004785 */  jal        func_80011E14_12A14
    /* 4A674 8007A1C4 00002025 */   or        $a0, $zero, $zero
    /* 4A678 8007A1C8 0C001332 */  jal        func_80004CC8_58C8
    /* 4A67C 8007A1CC 00000000 */   nop
    /* 4A680 8007A1D0 0C00134E */  jal        func_80004D38_5938
    /* 4A684 8007A1D4 00000000 */   nop
    /* 4A688 8007A1D8 0C0013D9 */  jal        func_80004F64_5B64
    /* 4A68C 8007A1DC 00000000 */   nop
    /* 4A690 8007A1E0 240C00EF */  addiu      $t4, $zero, 0xEF
    /* 4A694 8007A1E4 AFAC0010 */  sw         $t4, 0x10($sp)
    /* 4A698 8007A1E8 00002025 */  or         $a0, $zero, $zero
    /* 4A69C 8007A1EC 00002825 */  or         $a1, $zero, $zero
    /* 4A6A0 8007A1F0 00003025 */  or         $a2, $zero, $zero
    /* 4A6A4 8007A1F4 0C001377 */  jal        func_80004DDC_59DC
    /* 4A6A8 8007A1F8 00003825 */   or        $a3, $zero, $zero
    /* 4A6AC 8007A1FC 8E700000 */  lw         $s0, 0x0($s3)
    /* 4A6B0 8007A200 3C19FF10 */  lui        $t9, (0xFF10013F >> 16)
    /* 4A6B4 8007A204 3739013F */  ori        $t9, $t9, (0xFF10013F & 0xFFFF)
    /* 4A6B8 8007A208 260D0008 */  addiu      $t5, $s0, 0x8
    /* 4A6BC 8007A20C AE6D0000 */  sw         $t5, 0x0($s3)
    /* 4A6C0 8007A210 3C188003 */  lui        $t8, %hi(D_80031B84)
    /* 4A6C4 8007A214 AE190000 */  sw         $t9, 0x0($s0)
    /* 4A6C8 8007A218 8F181B84 */  lw         $t8, %lo(D_80031B84)($t8)
    /* 4A6CC 8007A21C 3C0F8006 */  lui        $t7, %hi(D_8005BB48)
    /* 4A6D0 8007A220 240D00E0 */  addiu      $t5, $zero, 0xE0
    /* 4A6D4 8007A224 00187080 */  sll        $t6, $t8, 2
    /* 4A6D8 8007A228 01EE7821 */  addu       $t7, $t7, $t6
    /* 4A6DC 8007A22C 8DEFBB48 */  lw         $t7, %lo(D_8005BB48)($t7)
    /* 4A6E0 8007A230 3C04802B */  lui        $a0, %hi(D_802B2080)
    /* 4A6E4 8007A234 240C0140 */  addiu      $t4, $zero, 0x140
    /* 4A6E8 8007A238 01FE5824 */  and        $t3, $t7, $fp
    /* 4A6EC 8007A23C AE0B0004 */  sw         $t3, 0x4($s0)
    /* 4A6F0 8007A240 AFA00028 */  sw         $zero, 0x28($sp)
    /* 4A6F4 8007A244 E7B60024 */  swc1       $f22, 0x24($sp)
    /* 4A6F8 8007A248 E7B60020 */  swc1       $f22, 0x20($sp)
    /* 4A6FC 8007A24C AFAD001C */  sw         $t5, 0x1C($sp)
    /* 4A700 8007A250 AFAC0018 */  sw         $t4, 0x18($sp)
    /* 4A704 8007A254 AFA00014 */  sw         $zero, 0x14($sp)
    /* 4A708 8007A258 AFA00010 */  sw         $zero, 0x10($sp)
    /* 4A70C 8007A25C 24842080 */  addiu      $a0, $a0, %lo(D_802B2080)
    /* 4A710 8007A260 00002825 */  or         $a1, $zero, $zero
    /* 4A714 8007A264 24060002 */  addiu      $a2, $zero, 0x2
    /* 4A718 8007A268 0C001717 */  jal        func_80005C5C_685C
    /* 4A71C 8007A26C 24070010 */   addiu     $a3, $zero, 0x10
    /* 4A720 8007A270 8FB90140 */  lw         $t9, 0x140($sp)
    /* 4A724 8007A274 3C0FFF10 */  lui        $t7, (0xFF10013F >> 16)
    /* 4A728 8007A278 3C0EFF10 */  lui        $t6, (0xFF10013F >> 16)
    /* 4A72C 8007A27C 2B21007F */  slti       $at, $t9, 0x7F
    /* 4A730 8007A280 10200017 */  beqz       $at, .L8007A2E0_4A790
    /* 4A734 8007A284 35EF013F */   ori       $t7, $t7, (0xFF10013F & 0xFFFF)
    /* 4A738 8007A288 8E700000 */  lw         $s0, 0x0($s3)
    /* 4A73C 8007A28C 35CE013F */  ori        $t6, $t6, (0xFF10013F & 0xFFFF)
    /* 4A740 8007A290 3C0F8003 */  lui        $t7, %hi(D_80031B84)
    /* 4A744 8007A294 26180008 */  addiu      $t8, $s0, 0x8
    /* 4A748 8007A298 AE780000 */  sw         $t8, 0x0($s3)
    /* 4A74C 8007A29C AE0E0000 */  sw         $t6, 0x0($s0)
    /* 4A750 8007A2A0 8DEF1B84 */  lw         $t7, %lo(D_80031B84)($t7)
    /* 4A754 8007A2A4 3C0C8006 */  lui        $t4, %hi(D_8005BB48)
    /* 4A758 8007A2A8 00002025 */  or         $a0, $zero, $zero
    /* 4A75C 8007A2AC 000F5880 */  sll        $t3, $t7, 2
    /* 4A760 8007A2B0 018B6021 */  addu       $t4, $t4, $t3
    /* 4A764 8007A2B4 8D8CBB48 */  lw         $t4, %lo(D_8005BB48)($t4)
    /* 4A768 8007A2B8 00002825 */  or         $a1, $zero, $zero
    /* 4A76C 8007A2BC 00003025 */  or         $a2, $zero, $zero
    /* 4A770 8007A2C0 019E6824 */  and        $t5, $t4, $fp
    /* 4A774 8007A2C4 AE0D0004 */  sw         $t5, 0x4($s0)
    /* 4A778 8007A2C8 8FA70140 */  lw         $a3, 0x140($sp)
    /* 4A77C 8007A2CC 0007C840 */  sll        $t9, $a3, 1
    /* 4A780 8007A2D0 0C001611 */  jal        func_80005844_6444
    /* 4A784 8007A2D4 332700FF */   andi      $a3, $t9, 0xFF
    /* 4A788 8007A2D8 10000013 */  b          .L8007A328_4A7D8
    /* 4A78C 8007A2DC 8E700000 */   lw        $s0, 0x0($s3)
  .L8007A2E0_4A790:
    /* 4A790 8007A2E0 8E700000 */  lw         $s0, 0x0($s3)
    /* 4A794 8007A2E4 3C0B8003 */  lui        $t3, %hi(D_80031B84)
    /* 4A798 8007A2E8 3C0D8006 */  lui        $t5, %hi(D_8005BB48)
    /* 4A79C 8007A2EC 260E0008 */  addiu      $t6, $s0, 0x8
    /* 4A7A0 8007A2F0 AE6E0000 */  sw         $t6, 0x0($s3)
    /* 4A7A4 8007A2F4 AE0F0000 */  sw         $t7, 0x0($s0)
    /* 4A7A8 8007A2F8 8D6B1B84 */  lw         $t3, %lo(D_80031B84)($t3)
    /* 4A7AC 8007A2FC 00002025 */  or         $a0, $zero, $zero
    /* 4A7B0 8007A300 00002825 */  or         $a1, $zero, $zero
    /* 4A7B4 8007A304 000B6080 */  sll        $t4, $t3, 2
    /* 4A7B8 8007A308 01AC6821 */  addu       $t5, $t5, $t4
    /* 4A7BC 8007A30C 8DADBB48 */  lw         $t5, %lo(D_8005BB48)($t5)
    /* 4A7C0 8007A310 00003025 */  or         $a2, $zero, $zero
    /* 4A7C4 8007A314 240700FF */  addiu      $a3, $zero, 0xFF
    /* 4A7C8 8007A318 01BEC824 */  and        $t9, $t5, $fp
    /* 4A7CC 8007A31C 0C001611 */  jal        func_80005844_6444
    /* 4A7D0 8007A320 AE190004 */   sw        $t9, 0x4($s0)
    /* 4A7D4 8007A324 8E700000 */  lw         $s0, 0x0($s3)
  .L8007A328_4A7D8:
    /* 4A7D8 8007A328 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
    /* 4A7DC 8007A32C 3C0BB900 */  lui        $t3, (0xB900031D >> 16)
    /* 4A7E0 8007A330 26180008 */  addiu      $t8, $s0, 0x8
    /* 4A7E4 8007A334 AE780000 */  sw         $t8, 0x0($s3)
    /* 4A7E8 8007A338 AE000004 */  sw         $zero, 0x4($s0)
    /* 4A7EC 8007A33C AE0E0000 */  sw         $t6, 0x0($s0)
    /* 4A7F0 8007A340 8E700000 */  lw         $s0, 0x0($s3)
    /* 4A7F4 8007A344 3C0C0055 */  lui        $t4, (0x552078 >> 16)
    /* 4A7F8 8007A348 358C2078 */  ori        $t4, $t4, (0x552078 & 0xFFFF)
    /* 4A7FC 8007A34C 260F0008 */  addiu      $t7, $s0, 0x8
    /* 4A800 8007A350 AE6F0000 */  sw         $t7, 0x0($s3)
    /* 4A804 8007A354 356B031D */  ori        $t3, $t3, (0xB900031D & 0xFFFF)
    /* 4A808 8007A358 AE0B0000 */  sw         $t3, 0x0($s0)
    /* 4A80C 8007A35C AE0C0004 */  sw         $t4, 0x4($s0)
    /* 4A810 8007A360 8E700000 */  lw         $s0, 0x0($s3)
    /* 4A814 8007A364 3C18FFFE */  lui        $t8, (0xFFFE793C >> 16)
    /* 4A818 8007A368 3C19FCFF */  lui        $t9, (0xFCFFFFFF >> 16)
    /* 4A81C 8007A36C 260D0008 */  addiu      $t5, $s0, 0x8
    /* 4A820 8007A370 AE6D0000 */  sw         $t5, 0x0($s3)
    /* 4A824 8007A374 3739FFFF */  ori        $t9, $t9, (0xFCFFFFFF & 0xFFFF)
    /* 4A828 8007A378 3718793C */  ori        $t8, $t8, (0xFFFE793C & 0xFFFF)
    /* 4A82C 8007A37C AE180004 */  sw         $t8, 0x4($s0)
    /* 4A830 8007A380 AE190000 */  sw         $t9, 0x0($s0)
    /* 4A834 8007A384 8E700000 */  lw         $s0, 0x0($s3)
    /* 4A838 8007A388 3C0FBA00 */  lui        $t7, (0xBA001301 >> 16)
    /* 4A83C 8007A38C 35EF1301 */  ori        $t7, $t7, (0xBA001301 & 0xFFFF)
    /* 4A840 8007A390 260E0008 */  addiu      $t6, $s0, 0x8
    /* 4A844 8007A394 AE6E0000 */  sw         $t6, 0x0($s3)
    /* 4A848 8007A398 3C0B0008 */  lui        $t3, (0x80000 >> 16)
    /* 4A84C 8007A39C AE0B0004 */  sw         $t3, 0x4($s0)
    /* 4A850 8007A3A0 AE0F0000 */  sw         $t7, 0x0($s0)
    /* 4A854 8007A3A4 8E700000 */  lw         $s0, 0x0($s3)
    /* 4A858 8007A3A8 3C014370 */  lui        $at, (0x43700000 >> 16)
    /* 4A85C 8007A3AC 44812000 */  mtc1       $at, $f4
    /* 4A860 8007A3B0 260C0008 */  addiu      $t4, $s0, 0x8
    /* 4A864 8007A3B4 AE6C0000 */  sw         $t4, 0x0($s3)
    /* 4A868 8007A3B8 3C190002 */  lui        $t9, (0x22000 >> 16)
    /* 4A86C 8007A3BC 37392000 */  ori        $t9, $t9, (0x22000 & 0xFFFF)
    /* 4A870 8007A3C0 3C0DB700 */  lui        $t5, (0xB7000000 >> 16)
    /* 4A874 8007A3C4 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
    /* 4A878 8007A3C8 44813000 */  mtc1       $at, $f6
    /* 4A87C 8007A3CC AE0D0000 */  sw         $t5, 0x0($s0)
    /* 4A880 8007A3D0 AE190004 */  sw         $t9, 0x4($s0)
    /* 4A884 8007A3D4 3C01447A */  lui        $at, (0x447A0000 >> 16)
    /* 4A888 8007A3D8 44814000 */  mtc1       $at, $f8
    /* 4A88C 8007A3DC E7B6001C */  swc1       $f22, 0x1C($sp)
    /* 4A890 8007A3E0 8E840000 */  lw         $a0, 0x0($s4)
    /* 4A894 8007A3E4 3C05C3A0 */  lui        $a1, (0xC3A00000 >> 16)
    /* 4A898 8007A3E8 3C0643A0 */  lui        $a2, (0x43A00000 >> 16)
    /* 4A89C 8007A3EC 3C07C370 */  lui        $a3, (0xC3700000 >> 16)
    /* 4A8A0 8007A3F0 E7A40010 */  swc1       $f4, 0x10($sp)
    /* 4A8A4 8007A3F4 E7A60014 */  swc1       $f6, 0x14($sp)
    /* 4A8A8 8007A3F8 0C0076D1 */  jal        guFrustum
    /* 4A8AC 8007A3FC E7A80018 */   swc1      $f8, 0x18($sp)
    /* 4A8B0 8007A400 8E700000 */  lw         $s0, 0x0($s3)
    /* 4A8B4 8007A404 3C0E0103 */  lui        $t6, (0x1030040 >> 16)
    /* 4A8B8 8007A408 35CE0040 */  ori        $t6, $t6, (0x1030040 & 0xFFFF)
    /* 4A8BC 8007A40C 26180008 */  addiu      $t8, $s0, 0x8
    /* 4A8C0 8007A410 AE780000 */  sw         $t8, 0x0($s3)
    /* 4A8C4 8007A414 AE0E0000 */  sw         $t6, 0x0($s0)
    /* 4A8C8 8007A418 8E8F0000 */  lw         $t7, 0x0($s4)
    /* 4A8CC 8007A41C 3C18BC00 */  lui        $t8, (0xBC00000E >> 16)
    /* 4A8D0 8007A420 3718000E */  ori        $t8, $t8, (0xBC00000E & 0xFFFF)
    /* 4A8D4 8007A424 01FE5824 */  and        $t3, $t7, $fp
    /* 4A8D8 8007A428 AE0B0004 */  sw         $t3, 0x4($s0)
    /* 4A8DC 8007A42C 8E8C0000 */  lw         $t4, 0x0($s4)
    /* 4A8E0 8007A430 8E700000 */  lw         $s0, 0x0($s3)
    /* 4A8E4 8007A434 340EFFFF */  ori        $t6, $zero, 0xFFFF
    /* 4A8E8 8007A438 258D0040 */  addiu      $t5, $t4, 0x40
    /* 4A8EC 8007A43C 26190008 */  addiu      $t9, $s0, 0x8
    /* 4A8F0 8007A440 AE8D0000 */  sw         $t5, 0x0($s4)
    /* 4A8F4 8007A444 AE790000 */  sw         $t9, 0x0($s3)
    /* 4A8F8 8007A448 AE0E0004 */  sw         $t6, 0x4($s0)
    /* 4A8FC 8007A44C AE180000 */  sw         $t8, 0x0($s0)
    /* 4A900 8007A450 3C0142C8 */  lui        $at, (0x42C80000 >> 16)
    /* 4A904 8007A454 44815000 */  mtc1       $at, $f10
    /* 4A908 8007A458 4406A000 */  mfc1       $a2, $f20
    /* 4A90C 8007A45C 4407A000 */  mfc1       $a3, $f20
    /* 4A910 8007A460 E7B40028 */  swc1       $f20, 0x28($sp)
    /* 4A914 8007A464 E7B60024 */  swc1       $f22, 0x24($sp)
    /* 4A918 8007A468 E7B40020 */  swc1       $f20, 0x20($sp)
    /* 4A91C 8007A46C E7B4001C */  swc1       $f20, 0x1C($sp)
    /* 4A920 8007A470 E7B40018 */  swc1       $f20, 0x18($sp)
    /* 4A924 8007A474 E7B40014 */  swc1       $f20, 0x14($sp)
    /* 4A928 8007A478 8E840000 */  lw         $a0, 0x0($s4)
    /* 4A92C 8007A47C 27A50118 */  addiu      $a1, $sp, 0x118
    /* 4A930 8007A480 0C008A04 */  jal        guLookAtReflect
    /* 4A934 8007A484 E7AA0010 */   swc1      $f10, 0x10($sp)
    /* 4A938 8007A488 8E700000 */  lw         $s0, 0x0($s3)
    /* 4A93C 8007A48C 3C0B0384 */  lui        $t3, (0x3840010 >> 16)
    /* 4A940 8007A490 356B0010 */  ori        $t3, $t3, (0x3840010 & 0xFFFF)
    /* 4A944 8007A494 260F0008 */  addiu      $t7, $s0, 0x8
    /* 4A948 8007A498 AE6F0000 */  sw         $t7, 0x0($s3)
    /* 4A94C 8007A49C AE0B0000 */  sw         $t3, 0x0($s0)
    /* 4A950 8007A4A0 8FAC0084 */  lw         $t4, 0x84($sp)
    /* 4A954 8007A4A4 3C190382 */  lui        $t9, (0x3820010 >> 16)
    /* 4A958 8007A4A8 37390010 */  ori        $t9, $t9, (0x3820010 & 0xFFFF)
    /* 4A95C 8007A4AC AE0C0004 */  sw         $t4, 0x4($s0)
    /* 4A960 8007A4B0 8E700000 */  lw         $s0, 0x0($s3)
    /* 4A964 8007A4B4 3C0F0101 */  lui        $t7, (0x1010040 >> 16)
    /* 4A968 8007A4B8 35EF0040 */  ori        $t7, $t7, (0x1010040 & 0xFFFF)
    /* 4A96C 8007A4BC 260D0008 */  addiu      $t5, $s0, 0x8
    /* 4A970 8007A4C0 AE6D0000 */  sw         $t5, 0x0($s3)
    /* 4A974 8007A4C4 AE190000 */  sw         $t9, 0x0($s0)
    /* 4A978 8007A4C8 8FB80080 */  lw         $t8, 0x80($sp)
    /* 4A97C 8007A4CC 00009025 */  or         $s2, $zero, $zero
    /* 4A980 8007A4D0 27B700F8 */  addiu      $s7, $sp, 0xF8
    /* 4A984 8007A4D4 AE180004 */  sw         $t8, 0x4($s0)
    /* 4A988 8007A4D8 8E700000 */  lw         $s0, 0x0($s3)
    /* 4A98C 8007A4DC 260E0008 */  addiu      $t6, $s0, 0x8
    /* 4A990 8007A4E0 AE6E0000 */  sw         $t6, 0x0($s3)
    /* 4A994 8007A4E4 AE0F0000 */  sw         $t7, 0x0($s0)
    /* 4A998 8007A4E8 8E8B0000 */  lw         $t3, 0x0($s4)
    /* 4A99C 8007A4EC 3C0E0102 */  lui        $t6, (0x1020040 >> 16)
    /* 4A9A0 8007A4F0 35CE0040 */  ori        $t6, $t6, (0x1020040 & 0xFFFF)
    /* 4A9A4 8007A4F4 017E6024 */  and        $t4, $t3, $fp
    /* 4A9A8 8007A4F8 AE0C0004 */  sw         $t4, 0x4($s0)
    /* 4A9AC 8007A4FC 8E8D0000 */  lw         $t5, 0x0($s4)
    /* 4A9B0 8007A500 8E700000 */  lw         $s0, 0x0($s3)
    /* 4A9B4 8007A504 25B90040 */  addiu      $t9, $t5, 0x40
    /* 4A9B8 8007A508 26180008 */  addiu      $t8, $s0, 0x8
    /* 4A9BC 8007A50C AE990000 */  sw         $t9, 0x0($s4)
    /* 4A9C0 8007A510 AE780000 */  sw         $t8, 0x0($s3)
    /* 4A9C4 8007A514 AE0E0000 */  sw         $t6, 0x0($s0)
    /* 4A9C8 8007A518 8FAF007C */  lw         $t7, 0x7C($sp)
    /* 4A9CC 8007A51C AE0F0004 */  sw         $t7, 0x4($s0)
    /* 4A9D0 8007A520 8FB60140 */  lw         $s6, 0x140($sp)
  .L8007A524_4A9D4:
    /* 4A9D4 8007A524 2A410004 */  slti       $at, $s2, 0x4
    /* 4A9D8 8007A528 14200002 */  bnez       $at, .L8007A534_4A9E4
    /* 4A9DC 8007A52C 02C0A825 */   or        $s5, $s6, $zero
    /* 4A9E0 8007A530 26D5FFE0 */  addiu      $s5, $s6, -0x20
  .L8007A534_4A9E4:
    /* 4A9E4 8007A534 00151040 */  sll        $v0, $s5, 1
    /* 4A9E8 8007A538 00028C00 */  sll        $s1, $v0, 16
    /* 4A9EC 8007A53C 00026400 */  sll        $t4, $v0, 16
    /* 4A9F0 8007A540 00115C03 */  sra        $t3, $s1, 16
    /* 4A9F4 8007A544 000C6C03 */  sra        $t5, $t4, 16
    /* 4A9F8 8007A548 05A10002 */  bgez       $t5, .L8007A554_4AA04
    /* 4A9FC 8007A54C 01608825 */   or        $s1, $t3, $zero
    /* 4AA00 8007A550 00008825 */  or         $s1, $zero, $zero
  .L8007A554_4AA04:
    /* 4AA04 8007A554 2A210101 */  slti       $at, $s1, 0x101
    /* 4AA08 8007A558 14200002 */  bnez       $at, .L8007A564_4AA14
    /* 4AA0C 8007A55C 00002025 */   or        $a0, $zero, $zero
    /* 4AA10 8007A560 24110100 */  addiu      $s1, $zero, 0x100
  .L8007A564_4AA14:
    /* 4AA14 8007A564 A7B100E0 */  sh         $s1, 0xE0($sp)
    /* 4AA18 8007A568 A7B100E2 */  sh         $s1, 0xE2($sp)
    /* 4AA1C 8007A56C A7B100E4 */  sh         $s1, 0xE4($sp)
    /* 4AA20 8007A570 00002825 */  or         $a1, $zero, $zero
    /* 4AA24 8007A574 27A600E0 */  addiu      $a2, $sp, 0xE0
    /* 4AA28 8007A578 0C000E74 */  jal        func_800039D0_45D0
    /* 4AA2C 8007A57C 8E870000 */   lw        $a3, 0x0($s4)
    /* 4AA30 8007A580 2403006C */  addiu      $v1, $zero, 0x6C
    /* 4AA34 8007A584 324D0003 */  andi       $t5, $s2, 0x3
    /* 4AA38 8007A588 01A30019 */  multu      $t5, $v1
    /* 4AA3C 8007A58C 8E700000 */  lw         $s0, 0x0($s3)
    /* 4AA40 8007A590 3C180104 */  lui        $t8, (0x1040040 >> 16)
    /* 4AA44 8007A594 37180040 */  ori        $t8, $t8, (0x1040040 & 0xFFFF)
    /* 4AA48 8007A598 26190008 */  addiu      $t9, $s0, 0x8
    /* 4AA4C 8007A59C AE790000 */  sw         $t9, 0x0($s3)
    /* 4AA50 8007A5A0 AE180000 */  sw         $t8, 0x0($s0)
    /* 4AA54 8007A5A4 8E8E0000 */  lw         $t6, 0x0($s4)
    /* 4AA58 8007A5A8 240D0032 */  addiu      $t5, $zero, 0x32
    /* 4AA5C 8007A5AC 27A400F0 */  addiu      $a0, $sp, 0xF0
    /* 4AA60 8007A5B0 0000C812 */  mflo       $t9
    /* 4AA64 8007A5B4 01DE7824 */  and        $t7, $t6, $fp
    /* 4AA68 8007A5B8 00127083 */  sra        $t6, $s2, 2
    /* 4AA6C 8007A5BC 01C30019 */  multu      $t6, $v1
    /* 4AA70 8007A5C0 AE0F0004 */  sw         $t7, 0x4($s0)
    /* 4AA74 8007A5C4 8E8B0000 */  lw         $t3, 0x0($s4)
    /* 4AA78 8007A5C8 2738FF5E */  addiu      $t8, $t9, -0xA2
    /* 4AA7C 8007A5CC A7B800F0 */  sh         $t8, 0xF0($sp)
    /* 4AA80 8007A5D0 256C0040 */  addiu      $t4, $t3, 0x40
    /* 4AA84 8007A5D4 AE8C0000 */  sw         $t4, 0x0($s4)
    /* 4AA88 8007A5D8 240B0036 */  addiu      $t3, $zero, 0x36
    /* 4AA8C 8007A5DC A7AD00F4 */  sh         $t5, 0xF4($sp)
    /* 4AA90 8007A5E0 8E870000 */  lw         $a3, 0x0($s4)
    /* 4AA94 8007A5E4 00007812 */  mflo       $t7
    /* 4AA98 8007A5E8 016F6023 */  subu       $t4, $t3, $t7
    /* 4AA9C 8007A5EC A7AC00F2 */  sh         $t4, 0xF2($sp)
    /* 4AAA0 8007A5F0 00002825 */  or         $a1, $zero, $zero
    /* 4AAA4 8007A5F4 0C000E74 */  jal        func_800039D0_45D0
    /* 4AAA8 8007A5F8 00003025 */   or        $a2, $zero, $zero
    /* 4AAAC 8007A5FC 8E700000 */  lw         $s0, 0x0($s3)
    /* 4AAB0 8007A600 3C180100 */  lui        $t8, (0x1000040 >> 16)
    /* 4AAB4 8007A604 37180040 */  ori        $t8, $t8, (0x1000040 & 0xFFFF)
    /* 4AAB8 8007A608 26190008 */  addiu      $t9, $s0, 0x8
    /* 4AABC 8007A60C AE790000 */  sw         $t9, 0x0($s3)
    /* 4AAC0 8007A610 AE180000 */  sw         $t8, 0x0($s0)
    /* 4AAC4 8007A614 8E8E0000 */  lw         $t6, 0x0($s4)
    /* 4AAC8 8007A618 00151A80 */  sll        $v1, $s5, 10
    /* 4AACC 8007A61C 306DFFFF */  andi       $t5, $v1, 0xFFFF
    /* 4AAD0 8007A620 01DE5824 */  and        $t3, $t6, $fp
    /* 4AAD4 8007A624 AE0B0004 */  sw         $t3, 0x4($s0)
    /* 4AAD8 8007A628 8E8F0000 */  lw         $t7, 0x0($s4)
    /* 4AADC 8007A62C 24010100 */  addiu      $at, $zero, 0x100
    /* 4AAE0 8007A630 01A01825 */  or         $v1, $t5, $zero
    /* 4AAE4 8007A634 25EC0040 */  addiu      $t4, $t7, 0x40
    /* 4AAE8 8007A638 16210002 */  bne        $s1, $at, .L8007A644_4AAF4
    /* 4AAEC 8007A63C AE8C0000 */   sw        $t4, 0x0($s4)
    /* 4AAF0 8007A640 00001825 */  or         $v1, $zero, $zero
  .L8007A644_4AAF4:
    /* 4AAF4 8007A644 A7A300E8 */  sh         $v1, 0xE8($sp)
    /* 4AAF8 8007A648 A7A000EA */  sh         $zero, 0xEA($sp)
    /* 4AAFC 8007A64C A7A000EC */  sh         $zero, 0xEC($sp)
    /* 4AB00 8007A650 00002025 */  or         $a0, $zero, $zero
    /* 4AB04 8007A654 27A500E8 */  addiu      $a1, $sp, 0xE8
    /* 4AB08 8007A658 00003025 */  or         $a2, $zero, $zero
    /* 4AB0C 8007A65C 0C000E74 */  jal        func_800039D0_45D0
    /* 4AB10 8007A660 8E870000 */   lw        $a3, 0x0($s4)
    /* 4AB14 8007A664 8E700000 */  lw         $s0, 0x0($s3)
    /* 4AB18 8007A668 3C180100 */  lui        $t8, (0x1000040 >> 16)
    /* 4AB1C 8007A66C 37180040 */  ori        $t8, $t8, (0x1000040 & 0xFFFF)
    /* 4AB20 8007A670 26190008 */  addiu      $t9, $s0, 0x8
    /* 4AB24 8007A674 AE790000 */  sw         $t9, 0x0($s3)
    /* 4AB28 8007A678 AE180000 */  sw         $t8, 0x0($s0)
    /* 4AB2C 8007A67C 8E8E0000 */  lw         $t6, 0x0($s4)
    /* 4AB30 8007A680 3C190600 */  lui        $t9, (0x6000000 >> 16)
    /* 4AB34 8007A684 26520001 */  addiu      $s2, $s2, 0x1
    /* 4AB38 8007A688 01DE5824 */  and        $t3, $t6, $fp
    /* 4AB3C 8007A68C AE0B0004 */  sw         $t3, 0x4($s0)
    /* 4AB40 8007A690 8E8F0000 */  lw         $t7, 0x0($s4)
    /* 4AB44 8007A694 8E700000 */  lw         $s0, 0x0($s3)
    /* 4AB48 8007A698 24010008 */  addiu      $at, $zero, 0x8
    /* 4AB4C 8007A69C 25EC0040 */  addiu      $t4, $t7, 0x40
    /* 4AB50 8007A6A0 260D0008 */  addiu      $t5, $s0, 0x8
    /* 4AB54 8007A6A4 AE8C0000 */  sw         $t4, 0x0($s4)
    /* 4AB58 8007A6A8 AE6D0000 */  sw         $t5, 0x0($s3)
    /* 4AB5C 8007A6AC AE190000 */  sw         $t9, 0x0($s0)
    /* 4AB60 8007A6B0 8EF80000 */  lw         $t8, 0x0($s7)
    /* 4AB64 8007A6B4 3C0BBD00 */  lui        $t3, (0xBD000000 >> 16)
    /* 4AB68 8007A6B8 26D6FFF0 */  addiu      $s6, $s6, -0x10
    /* 4AB6C 8007A6BC AE180004 */  sw         $t8, 0x4($s0)
    /* 4AB70 8007A6C0 8E700000 */  lw         $s0, 0x0($s3)
    /* 4AB74 8007A6C4 26F70004 */  addiu      $s7, $s7, 0x4
    /* 4AB78 8007A6C8 260E0008 */  addiu      $t6, $s0, 0x8
    /* 4AB7C 8007A6CC AE6E0000 */  sw         $t6, 0x0($s3)
    /* 4AB80 8007A6D0 AE000004 */  sw         $zero, 0x4($s0)
    /* 4AB84 8007A6D4 1641FF93 */  bne        $s2, $at, .L8007A524_4A9D4
    /* 4AB88 8007A6D8 AE0B0000 */   sw        $t3, 0x0($s0)
    /* 4AB8C 8007A6DC 0C001417 */  jal        func_8000505C_5C5C
    /* 4AB90 8007A6E0 00000000 */   nop
    /* 4AB94 8007A6E4 00002025 */  or         $a0, $zero, $zero
    /* 4AB98 8007A6E8 0C000D61 */  jal        isButtonNewlyPressed
    /* 4AB9C 8007A6EC 3405D000 */   ori       $a1, $zero, 0xD000
    /* 4ABA0 8007A6F0 14400005 */  bnez       $v0, .L8007A708_4ABB8
    /* 4ABA4 8007A6F4 00000000 */   nop
    /* 4ABA8 8007A6F8 8FA20144 */  lw         $v0, 0x144($sp)
    /* 4ABAC 8007A6FC 2443FFFF */  addiu      $v1, $v0, -0x1
    /* 4ABB0 8007A700 1440FEA6 */  bnez       $v0, .L8007A19C_4A64C
    /* 4ABB4 8007A704 AFA30144 */   sw        $v1, 0x144($sp)
  .L8007A708_4ABB8:
    /* 4ABB8 8007A708 3C018005 */  lui        $at, %hi(D_80052ACC)
    /* 4ABBC 8007A70C 0C0015AA */  jal        func_800056A8_62A8
    /* 4ABC0 8007A710 A0202ACC */   sb        $zero, %lo(D_80052ACC)($at)
    /* 4ABC4 8007A714 0C0015AA */  jal        func_800056A8_62A8
    /* 4ABC8 8007A718 00000000 */   nop
    /* 4ABCC 8007A71C 8FBF006C */  lw         $ra, 0x6C($sp)
  .L8007A720_4ABD0:
    /* 4ABD0 8007A720 D7B40038 */  ldc1       $f20, 0x38($sp)
    /* 4ABD4 8007A724 D7B60040 */  ldc1       $f22, 0x40($sp)
    /* 4ABD8 8007A728 8FB00048 */  lw         $s0, 0x48($sp)
    /* 4ABDC 8007A72C 8FB1004C */  lw         $s1, 0x4C($sp)
    /* 4ABE0 8007A730 8FB20050 */  lw         $s2, 0x50($sp)
    /* 4ABE4 8007A734 8FB30054 */  lw         $s3, 0x54($sp)
    /* 4ABE8 8007A738 8FB40058 */  lw         $s4, 0x58($sp)
    /* 4ABEC 8007A73C 8FB5005C */  lw         $s5, 0x5C($sp)
    /* 4ABF0 8007A740 8FB60060 */  lw         $s6, 0x60($sp)
    /* 4ABF4 8007A744 8FB70064 */  lw         $s7, 0x64($sp)
    /* 4ABF8 8007A748 8FBE0068 */  lw         $fp, 0x68($sp)
    /* 4ABFC 8007A74C 03E00008 */  jr         $ra
    /* 4AC00 8007A750 27BD0148 */   addiu     $sp, $sp, 0x148
endlabel func_8007A038_4A4E8
