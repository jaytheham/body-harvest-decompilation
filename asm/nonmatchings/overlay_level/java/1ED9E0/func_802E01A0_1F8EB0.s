nonmatching func_802E01A0_1F8EB0, 0x2F4

glabel func_802E01A0_1F8EB0
    /* 1F8EB0 802E01A0 308E00FF */  andi       $t6, $a0, 0xFF
    /* 1F8EB4 802E01A4 24090050 */  addiu      $t1, $zero, 0x50
    /* 1F8EB8 802E01A8 01C90019 */  multu      $t6, $t1
    /* 1F8EBC 802E01AC 27BDFF88 */  addiu      $sp, $sp, -0x78
    /* 1F8EC0 802E01B0 3C088005 */  lui        $t0, %hi(alienInstances)
    /* 1F8EC4 802E01B4 25088198 */  addiu      $t0, $t0, %lo(alienInstances)
    /* 1F8EC8 802E01B8 AFB00028 */  sw         $s0, 0x28($sp)
    /* 1F8ECC 802E01BC AFBF002C */  sw         $ra, 0x2C($sp)
    /* 1F8ED0 802E01C0 AFA40078 */  sw         $a0, 0x78($sp)
    /* 1F8ED4 802E01C4 2407012C */  addiu      $a3, $zero, 0x12C
    /* 1F8ED8 802E01C8 240B008C */  addiu      $t3, $zero, 0x8C
    /* 1F8EDC 802E01CC 240C008C */  addiu      $t4, $zero, 0x8C
    /* 1F8EE0 802E01D0 00007812 */  mflo       $t7
    /* 1F8EE4 802E01D4 010F8021 */  addu       $s0, $t0, $t7
    /* 1F8EE8 802E01D8 8E180020 */  lw         $t8, 0x20($s0)
    /* 1F8EEC 802E01DC 240D00C8 */  addiu      $t5, $zero, 0xC8
    /* 1F8EF0 802E01E0 0018CAC0 */  sll        $t9, $t8, 11
    /* 1F8EF4 802E01E4 07220030 */  bltzl      $t9, .L802E02A8_1F8FB8
    /* 1F8EF8 802E01E8 86020000 */   lh        $v0, 0x0($s0)
    /* 1F8EFC 802E01EC 86040000 */  lh         $a0, 0x0($s0)
    /* 1F8F00 802E01F0 86050002 */  lh         $a1, 0x2($s0)
    /* 1F8F04 802E01F4 86060004 */  lh         $a2, 0x4($s0)
    /* 1F8F08 802E01F8 AFAB0010 */  sw         $t3, 0x10($sp)
    /* 1F8F0C 802E01FC AFAC0014 */  sw         $t4, 0x14($sp)
    /* 1F8F10 802E0200 0C03416A */  jal        func_800D05A8_DF558
    /* 1F8F14 802E0204 AFAD0018 */   sw        $t5, 0x18($sp)
    /* 1F8F18 802E0208 0C000E38 */  jal        func_800038E0_44E0
    /* 1F8F1C 802E020C 00000000 */   nop
    /* 1F8F20 802E0210 240100C8 */  addiu      $at, $zero, 0xC8
    /* 1F8F24 802E0214 0041001A */  div        $zero, $v0, $at
    /* 1F8F28 802E0218 00007010 */  mfhi       $t6
    /* 1F8F2C 802E021C 92070025 */  lbu        $a3, 0x25($s0)
    /* 1F8F30 802E0220 24090050 */  addiu      $t1, $zero, 0x50
    /* 1F8F34 802E0224 3C088005 */  lui        $t0, %hi(alienInstances)
    /* 1F8F38 802E0228 00E90019 */  multu      $a3, $t1
    /* 1F8F3C 802E022C 25088198 */  addiu      $t0, $t0, %lo(alienInstances)
    /* 1F8F40 802E0230 25CF003C */  addiu      $t7, $t6, 0x3C
    /* 1F8F44 802E0234 A60F002C */  sh         $t7, 0x2C($s0)
    /* 1F8F48 802E0238 2401EFFF */  addiu      $at, $zero, -0x1001
    /* 1F8F4C 802E023C 3C0AFFBF */  lui        $t2, (0xFFBFFFFF >> 16)
    /* 1F8F50 802E0240 354AFFFF */  ori        $t2, $t2, (0xFFBFFFFF & 0xFFFF)
    /* 1F8F54 802E0244 0000C012 */  mflo       $t8
    /* 1F8F58 802E0248 01181821 */  addu       $v1, $t0, $t8
    /* 1F8F5C 802E024C 906C0025 */  lbu        $t4, 0x25($v1)
    /* 1F8F60 802E0250 8C790020 */  lw         $t9, 0x20($v1)
    /* 1F8F64 802E0254 01890019 */  multu      $t4, $t1
    /* 1F8F68 802E0258 03215824 */  and        $t3, $t9, $at
    /* 1F8F6C 802E025C AC6B0020 */  sw         $t3, 0x20($v1)
    /* 1F8F70 802E0260 00006812 */  mflo       $t5
    /* 1F8F74 802E0264 010D2021 */  addu       $a0, $t0, $t5
    /* 1F8F78 802E0268 908E0001 */  lbu        $t6, 0x1($a0)
    /* 1F8F7C 802E026C 01C90019 */  multu      $t6, $t1
    /* 1F8F80 802E0270 00007812 */  mflo       $t7
    /* 1F8F84 802E0274 010F2821 */  addu       $a1, $t0, $t7
    /* 1F8F88 802E0278 8CB80020 */  lw         $t8, 0x20($a1)
    /* 1F8F8C 802E027C 030AC824 */  and        $t9, $t8, $t2
    /* 1F8F90 802E0280 ACB90020 */  sw         $t9, 0x20($a1)
    /* 1F8F94 802E0284 908B0002 */  lbu        $t3, 0x2($a0)
    /* 1F8F98 802E0288 01690019 */  multu      $t3, $t1
    /* 1F8F9C 802E028C 00006012 */  mflo       $t4
    /* 1F8FA0 802E0290 010C3021 */  addu       $a2, $t0, $t4
    /* 1F8FA4 802E0294 8CCD0020 */  lw         $t5, 0x20($a2)
    /* 1F8FA8 802E0298 01AA7024 */  and        $t6, $t5, $t2
    /* 1F8FAC 802E029C 10000078 */  b          .L802E0480_1F9190
    /* 1F8FB0 802E02A0 ACCE0020 */   sw        $t6, 0x20($a2)
    /* 1F8FB4 802E02A4 86020000 */  lh         $v0, 0x0($s0)
  .L802E02A8_1F8FB8:
    /* 1F8FB8 802E02A8 86030004 */  lh         $v1, 0x4($s0)
    /* 1F8FBC 802E02AC 860F0002 */  lh         $t7, 0x2($s0)
    /* 1F8FC0 802E02B0 00022400 */  sll        $a0, $v0, 16
    /* 1F8FC4 802E02B4 00032C00 */  sll        $a1, $v1, 16
    /* 1F8FC8 802E02B8 0005CC03 */  sra        $t9, $a1, 16
    /* 1F8FCC 802E02BC 0004C403 */  sra        $t8, $a0, 16
    /* 1F8FD0 802E02C0 03002025 */  or         $a0, $t8, $zero
    /* 1F8FD4 802E02C4 AFB80044 */  sw         $t8, 0x44($sp)
    /* 1F8FD8 802E02C8 03202825 */  or         $a1, $t9, $zero
    /* 1F8FDC 802E02CC AFB90040 */  sw         $t9, 0x40($sp)
    /* 1F8FE0 802E02D0 AFA20074 */  sw         $v0, 0x74($sp)
    /* 1F8FE4 802E02D4 AFA3006C */  sw         $v1, 0x6C($sp)
    /* 1F8FE8 802E02D8 0C02E134 */  jal        func_800B84D0_C7480
    /* 1F8FEC 802E02DC AFAF0070 */   sw        $t7, 0x70($sp)
    /* 1F8FF0 802E02E0 8FA90070 */  lw         $t1, 0x70($sp)
    /* 1F8FF4 802E02E4 00021A03 */  sra        $v1, $v0, 8
    /* 1F8FF8 802E02E8 0069082A */  slt        $at, $v1, $t1
    /* 1F8FFC 802E02EC 10200013 */  beqz       $at, .L802E033C_1F904C
    /* 1F9000 802E02F0 00000000 */   nop
    /* 1F9004 802E02F4 860B0002 */  lh         $t3, 0x2($s0)
    /* 1F9008 802E02F8 24040032 */  addiu      $a0, $zero, 0x32
    /* 1F900C 802E02FC 24050019 */  addiu      $a1, $zero, 0x19
    /* 1F9010 802E0300 256CFF90 */  addiu      $t4, $t3, -0x70
    /* 1F9014 802E0304 A60C0002 */  sh         $t4, 0x2($s0)
    /* 1F9018 802E0308 860D0002 */  lh         $t5, 0x2($s0)
    /* 1F901C 802E030C 2406005F */  addiu      $a2, $zero, 0x5F
    /* 1F9020 802E0310 006D082A */  slt        $at, $v1, $t5
    /* 1F9024 802E0314 54200050 */  bnel       $at, $zero, .L802E0458_1F9168
    /* 1F9028 802E0318 8619002C */   lh        $t9, 0x2C($s0)
    /* 1F902C 802E031C 8FAE0040 */  lw         $t6, 0x40($sp)
    /* 1F9030 802E0320 A6030002 */  sh         $v1, 0x2($s0)
    /* 1F9034 802E0324 87A70046 */  lh         $a3, 0x46($sp)
    /* 1F9038 802E0328 AFA90010 */  sw         $t1, 0x10($sp)
    /* 1F903C 802E032C 0C0331EC */  jal        func_800CC7B0_DB760
    /* 1F9040 802E0330 AFAE0014 */   sw        $t6, 0x14($sp)
    /* 1F9044 802E0334 10000048 */  b          .L802E0458_1F9168
    /* 1F9048 802E0338 8619002C */   lh        $t9, 0x2C($s0)
  .L802E033C_1F904C:
    /* 1F904C 802E033C 0C000E38 */  jal        func_800038E0_44E0
    /* 1F9050 802E0340 00000000 */   nop
    /* 1F9054 802E0344 24010003 */  addiu      $at, $zero, 0x3
    /* 1F9058 802E0348 0041001A */  div        $zero, $v0, $at
    /* 1F905C 802E034C 00007810 */  mfhi       $t7
    /* 1F9060 802E0350 55E00041 */  bnel       $t7, $zero, .L802E0458_1F9168
    /* 1F9064 802E0354 8619002C */   lh        $t9, 0x2C($s0)
    /* 1F9068 802E0358 0C000E38 */  jal        func_800038E0_44E0
    /* 1F906C 802E035C 00000000 */   nop
    /* 1F9070 802E0360 24010096 */  addiu      $at, $zero, 0x96
    /* 1F9074 802E0364 0041001A */  div        $zero, $v0, $at
    /* 1F9078 802E0368 0000C010 */  mfhi       $t8
    /* 1F907C 802E036C 27190032 */  addiu      $t9, $t8, 0x32
    /* 1F9080 802E0370 0C000E38 */  jal        func_800038E0_44E0
    /* 1F9084 802E0374 AFB90068 */   sw        $t9, 0x68($sp)
    /* 1F9088 802E0378 3401FFFF */  ori        $at, $zero, 0xFFFF
    /* 1F908C 802E037C 0041001A */  div        $zero, $v0, $at
    /* 1F9090 802E0380 00002010 */  mfhi       $a0
    /* 1F9094 802E0384 308BFFFF */  andi       $t3, $a0, 0xFFFF
    /* 1F9098 802E0388 0C007660 */  jal        sins
    /* 1F909C 802E038C 01602025 */   or        $a0, $t3, $zero
    /* 1F90A0 802E0390 44823000 */  mtc1       $v0, $f6
    /* 1F90A4 802E0394 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 1F90A8 802E0398 44818800 */  mtc1       $at, $f17
    /* 1F90AC 802E039C 46803220 */  cvt.s.w    $f8, $f6
    /* 1F90B0 802E03A0 44808000 */  mtc1       $zero, $f16
    /* 1F90B4 802E03A4 8FAC0068 */  lw         $t4, 0x68($sp)
    /* 1F90B8 802E03A8 448C2000 */  mtc1       $t4, $f4
    /* 1F90BC 802E03AC 460042A1 */  cvt.d.s    $f10, $f8
    /* 1F90C0 802E03B0 46305483 */  div.d      $f18, $f10, $f16
    /* 1F90C4 802E03B4 46802021 */  cvt.d.w    $f0, $f4
    /* 1F90C8 802E03B8 F7A00030 */  sdc1       $f0, 0x30($sp)
    /* 1F90CC 802E03BC 46209102 */  mul.d      $f4, $f18, $f0
    /* 1F90D0 802E03C0 4620218D */  trunc.w.d  $f6, $f4
    /* 1F90D4 802E03C4 0C000E38 */  jal        func_800038E0_44E0
    /* 1F90D8 802E03C8 E7A60064 */   swc1      $f6, 0x64($sp)
    /* 1F90DC 802E03CC 3401FFFF */  ori        $at, $zero, 0xFFFF
    /* 1F90E0 802E03D0 0041001A */  div        $zero, $v0, $at
    /* 1F90E4 802E03D4 00002010 */  mfhi       $a0
    /* 1F90E8 802E03D8 308EFFFF */  andi       $t6, $a0, 0xFFFF
    /* 1F90EC 802E03DC 0C007654 */  jal        coss
    /* 1F90F0 802E03E0 01C02025 */   or        $a0, $t6, $zero
    /* 1F90F4 802E03E4 44824000 */  mtc1       $v0, $f8
    /* 1F90F8 802E03E8 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 1F90FC 802E03EC 44819800 */  mtc1       $at, $f19
    /* 1F9100 802E03F0 468042A0 */  cvt.s.w    $f10, $f8
    /* 1F9104 802E03F4 44809000 */  mtc1       $zero, $f18
    /* 1F9108 802E03F8 D7A00030 */  ldc1       $f0, 0x30($sp)
    /* 1F910C 802E03FC 8FAF0074 */  lw         $t7, 0x74($sp)
    /* 1F9110 802E0400 8FB80064 */  lw         $t8, 0x64($sp)
    /* 1F9114 802E0404 8FAE006C */  lw         $t6, 0x6C($sp)
    /* 1F9118 802E0408 46005421 */  cvt.d.s    $f16, $f10
    /* 1F911C 802E040C 01F83821 */  addu       $a3, $t7, $t8
    /* 1F9120 802E0410 46328103 */  div.d      $f4, $f16, $f18
    /* 1F9124 802E0414 87A50072 */  lh         $a1, 0x72($sp)
    /* 1F9128 802E0418 0007CC00 */  sll        $t9, $a3, 16
    /* 1F912C 802E041C 24180002 */  addiu      $t8, $zero, 0x2
    /* 1F9130 802E0420 AFB80018 */  sw         $t8, 0x18($sp)
    /* 1F9134 802E0424 00193C03 */  sra        $a3, $t9, 16
    /* 1F9138 802E0428 87A40046 */  lh         $a0, 0x46($sp)
    /* 1F913C 802E042C 87A60042 */  lh         $a2, 0x42($sp)
    /* 1F9140 802E0430 AFA50010 */  sw         $a1, 0x10($sp)
    /* 1F9144 802E0434 46202187 */  neg.d      $f6, $f4
    /* 1F9148 802E0438 46203202 */  mul.d      $f8, $f6, $f0
    /* 1F914C 802E043C 4620428D */  trunc.w.d  $f10, $f8
    /* 1F9150 802E0440 440D5000 */  mfc1       $t5, $f10
    /* 1F9154 802E0444 00000000 */  nop
    /* 1F9158 802E0448 01CD7821 */  addu       $t7, $t6, $t5
    /* 1F915C 802E044C 0C0345AF */  jal        func_800D16BC_E066C
    /* 1F9160 802E0450 AFAF0014 */   sw        $t7, 0x14($sp)
    /* 1F9164 802E0454 8619002C */  lh         $t9, 0x2C($s0)
  .L802E0458_1F9168:
    /* 1F9168 802E0458 24010001 */  addiu      $at, $zero, 0x1
    /* 1F916C 802E045C 57210009 */  bnel       $t9, $at, .L802E0484_1F9194
    /* 1F9170 802E0460 8FBF002C */   lw        $ra, 0x2C($sp)
    /* 1F9174 802E0464 86040000 */  lh         $a0, 0x0($s0)
    /* 1F9178 802E0468 86050002 */  lh         $a1, 0x2($s0)
    /* 1F917C 802E046C 86060004 */  lh         $a2, 0x4($s0)
    /* 1F9180 802E0470 24070190 */  addiu      $a3, $zero, 0x190
    /* 1F9184 802E0474 AFA00010 */  sw         $zero, 0x10($sp)
    /* 1F9188 802E0478 0C037C0E */  jal        func_800DF038_EDFE8
    /* 1F918C 802E047C AFA00014 */   sw        $zero, 0x14($sp)
  .L802E0480_1F9190:
    /* 1F9190 802E0480 8FBF002C */  lw         $ra, 0x2C($sp)
  .L802E0484_1F9194:
    /* 1F9194 802E0484 8FB00028 */  lw         $s0, 0x28($sp)
    /* 1F9198 802E0488 27BD0078 */  addiu      $sp, $sp, 0x78
    /* 1F919C 802E048C 03E00008 */  jr         $ra
    /* 1F91A0 802E0490 00000000 */   nop
endlabel func_802E01A0_1F8EB0
    /* 1F91A4 802E0494 00000000 */  nop
    /* 1F91A8 802E0498 00000000 */  nop
    /* 1F91AC 802E049C 00000000 */  nop
