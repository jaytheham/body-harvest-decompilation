nonmatching func_802D5F28_2B8358, 0x2F8

glabel func_802D5F28_2B8358
    /* 2B8358 802D5F28 3C038015 */  lui        $v1, %hi(D_80157F94)
    /* 2B835C 802D5F2C 84637F94 */  lh         $v1, %lo(D_80157F94)($v1)
    /* 2B8360 802D5F30 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 2B8364 802D5F34 240100FF */  addiu      $at, $zero, 0xFF
    /* 2B8368 802D5F38 10610028 */  beq        $v1, $at, .L802D5FDC_2B840C
    /* 2B836C 802D5F3C AFBF0014 */   sw        $ra, 0x14($sp)
    /* 2B8370 802D5F40 00037080 */  sll        $t6, $v1, 2
    /* 2B8374 802D5F44 01C37021 */  addu       $t6, $t6, $v1
    /* 2B8378 802D5F48 000E7100 */  sll        $t6, $t6, 4
    /* 2B837C 802D5F4C 3C0F8005 */  lui        $t7, %hi(D_800481B2)
    /* 2B8380 802D5F50 01EE7821 */  addu       $t7, $t7, $t6
    /* 2B8384 802D5F54 91EF81B2 */  lbu        $t7, %lo(D_800481B2)($t7)
    /* 2B8388 802D5F58 241800FF */  addiu      $t8, $zero, 0xFF
    /* 2B838C 802D5F5C 3C018015 */  lui        $at, %hi(D_80157F94)
    /* 2B8390 802D5F60 15E00003 */  bnez       $t7, .L802D5F70_2B83A0
    /* 2B8394 802D5F64 00000000 */   nop
    /* 2B8398 802D5F68 1000001C */  b          .L802D5FDC_2B840C
    /* 2B839C 802D5F6C A4387F94 */   sh        $t8, %lo(D_80157F94)($at)
  .L802D5F70_2B83A0:
    /* 2B83A0 802D5F70 0C020039 */  jal        func_800800E4_8F094
    /* 2B83A4 802D5F74 306400FF */   andi      $a0, $v1, 0xFF
    /* 2B83A8 802D5F78 3C048015 */  lui        $a0, %hi(D_80157F95)
    /* 2B83AC 802D5F7C 0C020144 */  jal        func_80080510_8F4C0
    /* 2B83B0 802D5F80 90847F95 */   lbu       $a0, %lo(D_80157F95)($a0)
    /* 2B83B4 802D5F84 3C038015 */  lui        $v1, %hi(D_80157F94)
    /* 2B83B8 802D5F88 84637F94 */  lh         $v1, %lo(D_80157F94)($v1)
    /* 2B83BC 802D5F8C 3C088005 */  lui        $t0, %hi(alienInstances)
    /* 2B83C0 802D5F90 25088198 */  addiu      $t0, $t0, %lo(alienInstances)
    /* 2B83C4 802D5F94 0003C880 */  sll        $t9, $v1, 2
    /* 2B83C8 802D5F98 0323C821 */  addu       $t9, $t9, $v1
    /* 2B83CC 802D5F9C 0019C900 */  sll        $t9, $t9, 4
    /* 2B83D0 802D5FA0 03281021 */  addu       $v0, $t9, $t0
    /* 2B83D4 802D5FA4 904A001A */  lbu        $t2, 0x1A($v0)
    /* 2B83D8 802D5FA8 8449000E */  lh         $t1, 0xE($v0)
    /* 2B83DC 802D5FAC 3C198025 */  lui        $t9, %hi(D_802566C8)
    /* 2B83E0 802D5FB0 000A5880 */  sll        $t3, $t2, 2
    /* 2B83E4 802D5FB4 016A5823 */  subu       $t3, $t3, $t2
    /* 2B83E8 802D5FB8 000B5880 */  sll        $t3, $t3, 2
    /* 2B83EC 802D5FBC 016A5821 */  addu       $t3, $t3, $t2
    /* 2B83F0 802D5FC0 000B58C0 */  sll        $t3, $t3, 3
    /* 2B83F4 802D5FC4 032BC821 */  addu       $t9, $t9, $t3
    /* 2B83F8 802D5FC8 A4490006 */  sh         $t1, 0x6($v0)
    /* 2B83FC 802D5FCC 8F3966C8 */  lw         $t9, %lo(D_802566C8)($t9)
    /* 2B8400 802D5FD0 306400FF */  andi       $a0, $v1, 0xFF
    /* 2B8404 802D5FD4 0320F809 */  jalr       $t9
    /* 2B8408 802D5FD8 00000000 */   nop
  .L802D5FDC_2B840C:
    /* 2B840C 802D5FDC 3C028015 */  lui        $v0, %hi(D_8014D17C)
    /* 2B8410 802D5FE0 2442D17C */  addiu      $v0, $v0, %lo(D_8014D17C)
    /* 2B8414 802D5FE4 3C04802E */  lui        $a0, %hi(D_802E2EDC)
    /* 2B8418 802D5FE8 3C05802E */  lui        $a1, %hi(D_802E30EC)
    /* 2B841C 802D5FEC 8CA530EC */  lw         $a1, %lo(D_802E30EC)($a1)
    /* 2B8420 802D5FF0 24842EDC */  addiu      $a0, $a0, %lo(D_802E2EDC)
    /* 2B8424 802D5FF4 0C00731B */  jal        osSyncPrintf
    /* 2B8428 802D5FF8 84460000 */   lh        $a2, 0x0($v0)
    /* 2B842C 802D5FFC 3C05802E */  lui        $a1, %hi(D_802E30EC)
    /* 2B8430 802D6000 24A530EC */  addiu      $a1, $a1, %lo(D_802E30EC)
    /* 2B8434 802D6004 8CA30000 */  lw         $v1, 0x0($a1)
    /* 2B8438 802D6008 3C028015 */  lui        $v0, %hi(D_8014D17C)
    /* 2B843C 802D600C 2442D17C */  addiu      $v0, $v0, %lo(D_8014D17C)
    /* 2B8440 802D6010 2C610005 */  sltiu      $at, $v1, 0x5
    /* 2B8444 802D6014 1020007E */  beqz       $at, .L802D6210_2B8640
    /* 2B8448 802D6018 00036080 */   sll       $t4, $v1, 2
    /* 2B844C 802D601C 3C01802E */  lui        $at, %hi(jtbl_802E2FA8_overlay_level_siberia)
    /* 2B8450 802D6020 002C0821 */  addu       $at, $at, $t4
    /* 2B8454 802D6024 8C2C2FA8 */  lw         $t4, %lo(jtbl_802E2FA8_overlay_level_siberia)($at)
    /* 2B8458 802D6028 01800008 */  jr         $t4
    /* 2B845C 802D602C 00000000 */   nop
    /* 2B8460 802D6030 3C028015 */  lui        $v0, %hi(D_80157F8C)
    /* 2B8464 802D6034 3C018015 */  lui        $at, %hi(D_80157F8E)
    /* 2B8468 802D6038 24427F8C */  addiu      $v0, $v0, %lo(D_80157F8C)
    /* 2B846C 802D603C A4207F8E */  sh         $zero, %lo(D_80157F8E)($at)
    /* 2B8470 802D6040 844D0000 */  lh         $t5, 0x0($v0)
    /* 2B8474 802D6044 3C014348 */  lui        $at, (0x43480000 >> 16)
    /* 2B8478 802D6048 44812000 */  mtc1       $at, $f4
    /* 2B847C 802D604C 25AE0001 */  addiu      $t6, $t5, 0x1
    /* 2B8480 802D6050 44803000 */  mtc1       $zero, $f6
    /* 2B8484 802D6054 A44E0000 */  sh         $t6, 0x0($v0)
    /* 2B8488 802D6058 3C018015 */  lui        $at, %hi(D_80157F84)
    /* 2B848C 802D605C E4247F84 */  swc1       $f4, %lo(D_80157F84)($at)
    /* 2B8490 802D6060 3C018015 */  lui        $at, %hi(D_80157F88)
    /* 2B8494 802D6064 E4267F88 */  swc1       $f6, %lo(D_80157F88)($at)
    /* 2B8498 802D6068 3C0143C8 */  lui        $at, (0x43C80000 >> 16)
    /* 2B849C 802D606C 44814000 */  mtc1       $at, $f8
    /* 2B84A0 802D6070 3C018015 */  lui        $at, %hi(D_80157F78)
    /* 2B84A4 802D6074 24040012 */  addiu      $a0, $zero, 0x12
    /* 2B84A8 802D6078 E4287F78 */  swc1       $f8, %lo(D_80157F78)($at)
    /* 2B84AC 802D607C 3C01C000 */  lui        $at, (0xC0000000 >> 16)
    /* 2B84B0 802D6080 44815000 */  mtc1       $at, $f10
    /* 2B84B4 802D6084 3C018015 */  lui        $at, %hi(D_80157F7C)
    /* 2B84B8 802D6088 E42A7F7C */  swc1       $f10, %lo(D_80157F7C)($at)
    /* 2B84BC 802D608C 3C0142C8 */  lui        $at, (0x42C80000 >> 16)
    /* 2B84C0 802D6090 44818000 */  mtc1       $at, $f16
    /* 2B84C4 802D6094 3C018015 */  lui        $at, %hi(D_80157F80)
    /* 2B84C8 802D6098 0C01E55B */  jal        func_8007956C_8851C
    /* 2B84CC 802D609C E4307F80 */   swc1      $f16, %lo(D_80157F80)($at)
    /* 2B84D0 802D60A0 3C01802E */  lui        $at, %hi(D_802E30F0)
    /* 2B84D4 802D60A4 AC2230F0 */  sw         $v0, %lo(D_802E30F0)($at)
    /* 2B84D8 802D60A8 3C05802E */  lui        $a1, %hi(D_802E30EC)
    /* 2B84DC 802D60AC 240100FF */  addiu      $at, $zero, 0xFF
    /* 2B84E0 802D60B0 24A530EC */  addiu      $a1, $a1, %lo(D_802E30EC)
    /* 2B84E4 802D60B4 10410023 */  beq        $v0, $at, .L802D6144_2B8574
    /* 2B84E8 802D60B8 00402025 */   or        $a0, $v0, $zero
    /* 2B84EC 802D60BC 00027880 */  sll        $t7, $v0, 2
    /* 2B84F0 802D60C0 01E27821 */  addu       $t7, $t7, $v0
    /* 2B84F4 802D60C4 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 2B84F8 802D60C8 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 2B84FC 802D60CC 000F7900 */  sll        $t7, $t7, 4
    /* 2B8500 802D60D0 01F81021 */  addu       $v0, $t7, $t8
    /* 2B8504 802D60D4 8C4A0020 */  lw         $t2, 0x20($v0)
    /* 2B8508 802D60D8 3C01F7FF */  lui        $at, (0xF7FFFE5F >> 16)
    /* 2B850C 802D60DC 3421FE5F */  ori        $at, $at, (0xF7FFFE5F & 0xFFFF)
    /* 2B8510 802D60E0 01415824 */  and        $t3, $t2, $at
    /* 2B8514 802D60E4 24036700 */  addiu      $v1, $zero, 0x6700
    /* 2B8518 802D60E8 24064000 */  addiu      $a2, $zero, 0x4000
    /* 2B851C 802D60EC 24089980 */  addiu      $t0, $zero, -0x6680
    /* 2B8520 802D60F0 24099D80 */  addiu      $t1, $zero, -0x6280
    /* 2B8524 802D60F4 AC4B0020 */  sw         $t3, 0x20($v0)
    /* 2B8528 802D60F8 356C0100 */  ori        $t4, $t3, 0x100
    /* 2B852C 802D60FC 240D0002 */  addiu      $t5, $zero, 0x2
    /* 2B8530 802D6100 A4430000 */  sh         $v1, 0x0($v0)
    /* 2B8534 802D6104 A4480004 */  sh         $t0, 0x4($v0)
    /* 2B8538 802D6108 A4430014 */  sh         $v1, 0x14($v0)
    /* 2B853C 802D610C A4490018 */  sh         $t1, 0x18($v0)
    /* 2B8540 802D6110 AC4C0020 */  sw         $t4, 0x20($v0)
    /* 2B8544 802D6114 A04D0024 */  sb         $t5, 0x24($v0)
    /* 2B8548 802D6118 A446000E */  sh         $a2, 0xE($v0)
    /* 2B854C 802D611C A446002A */  sh         $a2, 0x2A($v0)
    /* 2B8550 802D6120 3C01802E */  lui        $at, %hi(D_802E30F0)
    /* 2B8554 802D6124 0C01E866 */  jal        func_8007A198_89148
    /* 2B8558 802D6128 AC2430F0 */   sw        $a0, %lo(D_802E30F0)($at)
    /* 2B855C 802D612C 3C04802E */  lui        $a0, %hi(D_802E30F0)
    /* 2B8560 802D6130 8C8430F0 */  lw         $a0, %lo(D_802E30F0)($a0)
    /* 2B8564 802D6134 3C05802E */  lui        $a1, %hi(D_802E30EC)
    /* 2B8568 802D6138 3C018015 */  lui        $at, %hi(D_80157F94)
    /* 2B856C 802D613C 24A530EC */  addiu      $a1, $a1, %lo(D_802E30EC)
    /* 2B8570 802D6140 A4247F94 */  sh         $a0, %lo(D_80157F94)($at)
  .L802D6144_2B8574:
    /* 2B8574 802D6144 8CAE0000 */  lw         $t6, 0x0($a1)
    /* 2B8578 802D6148 25CF0001 */  addiu      $t7, $t6, 0x1
    /* 2B857C 802D614C 10000030 */  b          .L802D6210_2B8640
    /* 2B8580 802D6150 ACAF0000 */   sw        $t7, 0x0($a1)
    /* 2B8584 802D6154 84580000 */  lh         $t8, 0x0($v0)
    /* 2B8588 802D6158 246A0001 */  addiu      $t2, $v1, 0x1
    /* 2B858C 802D615C 27080001 */  addiu      $t0, $t8, 0x1
    /* 2B8590 802D6160 A4480000 */  sh         $t0, 0x0($v0)
    /* 2B8594 802D6164 84490000 */  lh         $t1, 0x0($v0)
    /* 2B8598 802D6168 29210028 */  slti       $at, $t1, 0x28
    /* 2B859C 802D616C 54200029 */  bnel       $at, $zero, .L802D6214_2B8644
    /* 2B85A0 802D6170 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 2B85A4 802D6174 A4400000 */  sh         $zero, 0x0($v0)
    /* 2B85A8 802D6178 10000025 */  b          .L802D6210_2B8640
    /* 2B85AC 802D617C ACAA0000 */   sw        $t2, 0x0($a1)
    /* 2B85B0 802D6180 844B0000 */  lh         $t3, 0x0($v0)
    /* 2B85B4 802D6184 246D0001 */  addiu      $t5, $v1, 0x1
    /* 2B85B8 802D6188 25790001 */  addiu      $t9, $t3, 0x1
    /* 2B85BC 802D618C A4590000 */  sh         $t9, 0x0($v0)
    /* 2B85C0 802D6190 844C0000 */  lh         $t4, 0x0($v0)
    /* 2B85C4 802D6194 5980001F */  blezl      $t4, .L802D6214_2B8644
    /* 2B85C8 802D6198 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 2B85CC 802D619C A4400000 */  sh         $zero, 0x0($v0)
    /* 2B85D0 802D61A0 1000001B */  b          .L802D6210_2B8640
    /* 2B85D4 802D61A4 ACAD0000 */   sw        $t5, 0x0($a1)
    /* 2B85D8 802D61A8 844E0000 */  lh         $t6, 0x0($v0)
    /* 2B85DC 802D61AC 24680001 */  addiu      $t0, $v1, 0x1
    /* 2B85E0 802D61B0 25CF0001 */  addiu      $t7, $t6, 0x1
    /* 2B85E4 802D61B4 A44F0000 */  sh         $t7, 0x0($v0)
    /* 2B85E8 802D61B8 84580000 */  lh         $t8, 0x0($v0)
    /* 2B85EC 802D61BC 2B010014 */  slti       $at, $t8, 0x14
    /* 2B85F0 802D61C0 54200014 */  bnel       $at, $zero, .L802D6214_2B8644
    /* 2B85F4 802D61C4 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 2B85F8 802D61C8 A4400000 */  sh         $zero, 0x0($v0)
    /* 2B85FC 802D61CC 10000010 */  b          .L802D6210_2B8640
    /* 2B8600 802D61D0 ACA80000 */   sw        $t0, 0x0($a1)
    /* 2B8604 802D61D4 3C04802E */  lui        $a0, %hi(D_802E30F0)
    /* 2B8608 802D61D8 0C01E644 */  jal        func_80079910_888C0
    /* 2B860C 802D61DC 8C8430F0 */   lw        $a0, %lo(D_802E30F0)($a0)
    /* 2B8610 802D61E0 3C04802D */  lui        $a0, %hi(func_802D5F28_2B8358)
    /* 2B8614 802D61E4 0C001D2F */  jal        func_800074BC_80BC
    /* 2B8618 802D61E8 24845F28 */   addiu     $a0, $a0, %lo(func_802D5F28_2B8358)
    /* 2B861C 802D61EC 3C04802D */  lui        $a0, %hi(func_802D5C24_2B8054)
    /* 2B8620 802D61F0 0C001D04 */  jal        func_80007410_8010
    /* 2B8624 802D61F4 24845C24 */   addiu     $a0, $a0, %lo(func_802D5C24_2B8054)
    /* 2B8628 802D61F8 3C028015 */  lui        $v0, %hi(D_8014D17C)
    /* 2B862C 802D61FC 3C05802E */  lui        $a1, %hi(D_802E30EC)
    /* 2B8630 802D6200 24A530EC */  addiu      $a1, $a1, %lo(D_802E30EC)
    /* 2B8634 802D6204 2442D17C */  addiu      $v0, $v0, %lo(D_8014D17C)
    /* 2B8638 802D6208 ACA00000 */  sw         $zero, 0x0($a1)
    /* 2B863C 802D620C A4400000 */  sh         $zero, 0x0($v0)
  .L802D6210_2B8640:
    /* 2B8640 802D6210 8FBF0014 */  lw         $ra, 0x14($sp)
  .L802D6214_2B8644:
    /* 2B8644 802D6214 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 2B8648 802D6218 03E00008 */  jr         $ra
    /* 2B864C 802D621C 00000000 */   nop
endlabel func_802D5F28_2B8358
