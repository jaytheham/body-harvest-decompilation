nonmatching func_802D6338_1EF048, 0x508

glabel func_802D6338_1EF048
    /* 1EF048 802D6338 3C088015 */  lui        $t0, %hi(D_80157F8C)
    /* 1EF04C 802D633C 25087F8C */  addiu      $t0, $t0, %lo(D_80157F8C)
    /* 1EF050 802D6340 85040000 */  lh         $a0, 0x0($t0)
    /* 1EF054 802D6344 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 1EF058 802D6348 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 1EF05C 802D634C 2C810007 */  sltiu      $at, $a0, 0x7
    /* 1EF060 802D6350 AFB10020 */  sw         $s1, 0x20($sp)
    /* 1EF064 802D6354 10200111 */  beqz       $at, .L802D679C_1EF4AC
    /* 1EF068 802D6358 AFB0001C */   sw        $s0, 0x1C($sp)
    /* 1EF06C 802D635C 00047080 */  sll        $t6, $a0, 2
    /* 1EF070 802D6360 3C01802E */  lui        $at, %hi(jtbl_802E0EB8_overlay_level_java)
    /* 1EF074 802D6364 002E0821 */  addu       $at, $at, $t6
    /* 1EF078 802D6368 8C2E0EB8 */  lw         $t6, %lo(jtbl_802E0EB8_overlay_level_java)($at)
    /* 1EF07C 802D636C 01C00008 */  jr         $t6
    /* 1EF080 802D6370 00000000 */   nop
    /* 1EF084 802D6374 3C0F8005 */  lui        $t7, %hi(D_80052A8C)
    /* 1EF088 802D6378 8DEF2A8C */  lw         $t7, %lo(D_80052A8C)($t7)
    /* 1EF08C 802D637C 24010005 */  addiu      $at, $zero, 0x5
    /* 1EF090 802D6380 3C108005 */  lui        $s0, %hi(buildingInstances)
    /* 1EF094 802D6384 01E1001B */  divu       $zero, $t7, $at
    /* 1EF098 802D6388 0000C010 */  mfhi       $t8
    /* 1EF09C 802D638C 26100AD8 */  addiu      $s0, $s0, %lo(buildingInstances)
    /* 1EF0A0 802D6390 17000006 */  bnez       $t8, .L802D63AC_1EF0BC
    /* 1EF0A4 802D6394 3C118015 */   lui       $s1, %hi(D_80157F8E)
    /* 1EF0A8 802D6398 3C05802E */  lui        $a1, %hi(D_802E0FB6)
    /* 1EF0AC 802D639C 24A50FB6 */  addiu      $a1, $a1, %lo(D_802E0FB6)
    /* 1EF0B0 802D63A0 84B90000 */  lh         $t9, 0x0($a1)
    /* 1EF0B4 802D63A4 27290002 */  addiu      $t1, $t9, 0x2
    /* 1EF0B8 802D63A8 A4A90000 */  sh         $t1, 0x0($a1)
  .L802D63AC_1EF0BC:
    /* 1EF0BC 802D63AC 3C05802E */  lui        $a1, %hi(D_802E0FB6)
    /* 1EF0C0 802D63B0 26317F8E */  addiu      $s1, $s1, %lo(D_80157F8E)
    /* 1EF0C4 802D63B4 86230000 */  lh         $v1, 0x0($s1)
    /* 1EF0C8 802D63B8 24A50FB6 */  addiu      $a1, $a1, %lo(D_802E0FB6)
    /* 1EF0CC 802D63BC 84AB0000 */  lh         $t3, 0x0($a1)
    /* 1EF0D0 802D63C0 860A04B0 */  lh         $t2, 0x4B0($s0)
    /* 1EF0D4 802D63C4 28620029 */  slti       $v0, $v1, 0x29
    /* 1EF0D8 802D63C8 246D0001 */  addiu      $t5, $v1, 0x1
    /* 1EF0DC 802D63CC 014B6023 */  subu       $t4, $t2, $t3
    /* 1EF0E0 802D63D0 A60C04B0 */  sh         $t4, 0x4B0($s0)
    /* 1EF0E4 802D63D4 144000F1 */  bnez       $v0, .L802D679C_1EF4AC
    /* 1EF0E8 802D63D8 A62D0000 */   sh        $t5, 0x0($s1)
    /* 1EF0EC 802D63DC 248E0001 */  addiu      $t6, $a0, 0x1
    /* 1EF0F0 802D63E0 A50E0000 */  sh         $t6, 0x0($t0)
    /* 1EF0F4 802D63E4 85040000 */  lh         $a0, 0x0($t0)
    /* 1EF0F8 802D63E8 100000EC */  b          .L802D679C_1EF4AC
    /* 1EF0FC 802D63EC A6200000 */   sh        $zero, 0x0($s1)
    /* 1EF100 802D63F0 3C118015 */  lui        $s1, %hi(D_80157F8E)
    /* 1EF104 802D63F4 26317F8E */  addiu      $s1, $s1, %lo(D_80157F8E)
    /* 1EF108 802D63F8 3C05802E */  lui        $a1, %hi(D_802E0FB6)
    /* 1EF10C 802D63FC 3C108005 */  lui        $s0, %hi(buildingInstances)
    /* 1EF110 802D6400 86230000 */  lh         $v1, 0x0($s1)
    /* 1EF114 802D6404 26100AD8 */  addiu      $s0, $s0, %lo(buildingInstances)
    /* 1EF118 802D6408 24A50FB6 */  addiu      $a1, $a1, %lo(D_802E0FB6)
    /* 1EF11C 802D640C 84B80000 */  lh         $t8, 0x0($a1)
    /* 1EF120 802D6410 860F04B0 */  lh         $t7, 0x4B0($s0)
    /* 1EF124 802D6414 28620097 */  slti       $v0, $v1, 0x97
    /* 1EF128 802D6418 24690001 */  addiu      $t1, $v1, 0x1
    /* 1EF12C 802D641C 01F8C823 */  subu       $t9, $t7, $t8
    /* 1EF130 802D6420 A61904B0 */  sh         $t9, 0x4B0($s0)
    /* 1EF134 802D6424 144000DD */  bnez       $v0, .L802D679C_1EF4AC
    /* 1EF138 802D6428 A6290000 */   sh        $t1, 0x0($s1)
    /* 1EF13C 802D642C 248A0001 */  addiu      $t2, $a0, 0x1
    /* 1EF140 802D6430 A50A0000 */  sh         $t2, 0x0($t0)
    /* 1EF144 802D6434 85040000 */  lh         $a0, 0x0($t0)
    /* 1EF148 802D6438 100000D8 */  b          .L802D679C_1EF4AC
    /* 1EF14C 802D643C A6200000 */   sh        $zero, 0x0($s1)
    /* 1EF150 802D6440 3C118015 */  lui        $s1, %hi(D_80157F8E)
    /* 1EF154 802D6444 26317F8E */  addiu      $s1, $s1, %lo(D_80157F8E)
    /* 1EF158 802D6448 86230000 */  lh         $v1, 0x0($s1)
    /* 1EF15C 802D644C 3C108005 */  lui        $s0, %hi(buildingInstances)
    /* 1EF160 802D6450 26100AD8 */  addiu      $s0, $s0, %lo(buildingInstances)
    /* 1EF164 802D6454 240BB500 */  addiu      $t3, $zero, -0x4B00
    /* 1EF168 802D6458 28620002 */  slti       $v0, $v1, 0x2
    /* 1EF16C 802D645C 246C0001 */  addiu      $t4, $v1, 0x1
    /* 1EF170 802D6460 A60B04B0 */  sh         $t3, 0x4B0($s0)
    /* 1EF174 802D6464 144000CD */  bnez       $v0, .L802D679C_1EF4AC
    /* 1EF178 802D6468 A62C0000 */   sh        $t4, 0x0($s1)
    /* 1EF17C 802D646C 248D0001 */  addiu      $t5, $a0, 0x1
    /* 1EF180 802D6470 A50D0000 */  sh         $t5, 0x0($t0)
    /* 1EF184 802D6474 85040000 */  lh         $a0, 0x0($t0)
    /* 1EF188 802D6478 100000C8 */  b          .L802D679C_1EF4AC
    /* 1EF18C 802D647C A6200000 */   sh        $zero, 0x0($s1)
    /* 1EF190 802D6480 3C05802E */  lui        $a1, %hi(D_802E0FB6)
    /* 1EF194 802D6484 3C108005 */  lui        $s0, %hi(buildingInstances)
    /* 1EF198 802D6488 26100AD8 */  addiu      $s0, $s0, %lo(buildingInstances)
    /* 1EF19C 802D648C 24A50FB6 */  addiu      $a1, $a1, %lo(D_802E0FB6)
    /* 1EF1A0 802D6490 3C118015 */  lui        $s1, %hi(D_80157F8E)
    /* 1EF1A4 802D6494 84AF0000 */  lh         $t7, 0x0($a1)
    /* 1EF1A8 802D6498 860E04B0 */  lh         $t6, 0x4B0($s0)
    /* 1EF1AC 802D649C 26317F8E */  addiu      $s1, $s1, %lo(D_80157F8E)
    /* 1EF1B0 802D64A0 86230000 */  lh         $v1, 0x0($s1)
    /* 1EF1B4 802D64A4 24010062 */  addiu      $at, $zero, 0x62
    /* 1EF1B8 802D64A8 01CFC023 */  subu       $t8, $t6, $t7
    /* 1EF1BC 802D64AC 14610015 */  bne        $v1, $at, .L802D6504_1EF214
    /* 1EF1C0 802D64B0 A61804B0 */   sh        $t8, 0x4B0($s0)
    /* 1EF1C4 802D64B4 3C058022 */  lui        $a1, %hi(D_80222A70)
    /* 1EF1C8 802D64B8 8CA52A70 */  lw         $a1, %lo(D_80222A70)($a1)
    /* 1EF1CC 802D64BC 86040498 */  lh         $a0, 0x498($s0)
    /* 1EF1D0 802D64C0 240C0008 */  addiu      $t4, $zero, 0x8
    /* 1EF1D4 802D64C4 24A50096 */  addiu      $a1, $a1, 0x96
    /* 1EF1D8 802D64C8 24840064 */  addiu      $a0, $a0, 0x64
    /* 1EF1DC 802D64CC 0004CC00 */  sll        $t9, $a0, 16
    /* 1EF1E0 802D64D0 00055400 */  sll        $t2, $a1, 16
    /* 1EF1E4 802D64D4 000A2C03 */  sra        $a1, $t2, 16
    /* 1EF1E8 802D64D8 00192403 */  sra        $a0, $t9, 16
    /* 1EF1EC 802D64DC AFAC0010 */  sw         $t4, 0x10($sp)
    /* 1EF1F0 802D64E0 8606049C */  lh         $a2, 0x49C($s0)
    /* 1EF1F4 802D64E4 2407012C */  addiu      $a3, $zero, 0x12C
    /* 1EF1F8 802D64E8 0C037C0E */  jal        func_800DF038_EDFE8
    /* 1EF1FC 802D64EC AFA00014 */   sw        $zero, 0x14($sp)
    /* 1EF200 802D64F0 3C048015 */  lui        $a0, %hi(D_80157F8C)
    /* 1EF204 802D64F4 3C088015 */  lui        $t0, %hi(D_80157F8C)
    /* 1EF208 802D64F8 25087F8C */  addiu      $t0, $t0, %lo(D_80157F8C)
    /* 1EF20C 802D64FC 84847F8C */  lh         $a0, %lo(D_80157F8C)($a0)
    /* 1EF210 802D6500 86230000 */  lh         $v1, 0x0($s1)
  .L802D6504_1EF214:
    /* 1EF214 802D6504 28620083 */  slti       $v0, $v1, 0x83
    /* 1EF218 802D6508 246D0001 */  addiu      $t5, $v1, 0x1
    /* 1EF21C 802D650C 144000A3 */  bnez       $v0, .L802D679C_1EF4AC
    /* 1EF220 802D6510 A62D0000 */   sh        $t5, 0x0($s1)
    /* 1EF224 802D6514 248E0001 */  addiu      $t6, $a0, 0x1
    /* 1EF228 802D6518 A50E0000 */  sh         $t6, 0x0($t0)
    /* 1EF22C 802D651C 85040000 */  lh         $a0, 0x0($t0)
    /* 1EF230 802D6520 1000009E */  b          .L802D679C_1EF4AC
    /* 1EF234 802D6524 A6200000 */   sh        $zero, 0x0($s1)
    /* 1EF238 802D6528 3C118015 */  lui        $s1, %hi(D_80157F8E)
    /* 1EF23C 802D652C 26317F8E */  addiu      $s1, $s1, %lo(D_80157F8E)
    /* 1EF240 802D6530 3C04802E */  lui        $a0, %hi(D_802E0E50)
    /* 1EF244 802D6534 24840E50 */  addiu      $a0, $a0, %lo(D_802E0E50)
    /* 1EF248 802D6538 0C00731B */  jal        osSyncPrintf
    /* 1EF24C 802D653C 86250000 */   lh        $a1, 0x0($s1)
    /* 1EF250 802D6540 3C04802E */  lui        $a0, %hi(D_802E04A0)
    /* 1EF254 802D6544 908404A0 */  lbu        $a0, %lo(D_802E04A0)($a0)
    /* 1EF258 802D6548 240100FF */  addiu      $at, $zero, 0xFF
    /* 1EF25C 802D654C 50810004 */  beql       $a0, $at, .L802D6560_1EF270
    /* 1EF260 802D6550 86230000 */   lh        $v1, 0x0($s1)
    /* 1EF264 802D6554 0C021EAB */  jal        func_80087AAC_96A5C
    /* 1EF268 802D6558 00000000 */   nop
    /* 1EF26C 802D655C 86230000 */  lh         $v1, 0x0($s1)
  .L802D6560_1EF270:
    /* 1EF270 802D6560 24010001 */  addiu      $at, $zero, 0x1
    /* 1EF274 802D6564 1461002B */  bne        $v1, $at, .L802D6614_1EF324
    /* 1EF278 802D6568 240F03E8 */   addiu     $t7, $zero, 0x3E8
    /* 1EF27C 802D656C AFAF0010 */  sw         $t7, 0x10($sp)
    /* 1EF280 802D6570 2404A65F */  addiu      $a0, $zero, -0x59A1
    /* 1EF284 802D6574 240502FF */  addiu      $a1, $zero, 0x2FF
    /* 1EF288 802D6578 2406DD34 */  addiu      $a2, $zero, -0x22CC
    /* 1EF28C 802D657C 0C0492D7 */  jal        func_80124B5C_133B0C
    /* 1EF290 802D6580 24072710 */   addiu     $a3, $zero, 0x2710
    /* 1EF294 802D6584 3C058022 */  lui        $a1, %hi(D_80222A70)
    /* 1EF298 802D6588 8CA52A70 */  lw         $a1, %lo(D_80222A70)($a1)
    /* 1EF29C 802D658C 3C108005 */  lui        $s0, %hi(buildingInstances)
    /* 1EF2A0 802D6590 26100AD8 */  addiu      $s0, $s0, %lo(buildingInstances)
    /* 1EF2A4 802D6594 24A50064 */  addiu      $a1, $a1, 0x64
    /* 1EF2A8 802D6598 0005C400 */  sll        $t8, $a1, 16
    /* 1EF2AC 802D659C 00182C03 */  sra        $a1, $t8, 16
    /* 1EF2B0 802D65A0 86040498 */  lh         $a0, 0x498($s0)
    /* 1EF2B4 802D65A4 8606049C */  lh         $a2, 0x49C($s0)
    /* 1EF2B8 802D65A8 0C0383D3 */  jal        func_800E0F4C_EFEFC
    /* 1EF2BC 802D65AC 24070019 */   addiu     $a3, $zero, 0x19
    /* 1EF2C0 802D65B0 3C058022 */  lui        $a1, %hi(D_80222A70)
    /* 1EF2C4 802D65B4 8CA52A70 */  lw         $a1, %lo(D_80222A70)($a1)
    /* 1EF2C8 802D65B8 240B0008 */  addiu      $t3, $zero, 0x8
    /* 1EF2CC 802D65BC AFAB0010 */  sw         $t3, 0x10($sp)
    /* 1EF2D0 802D65C0 24A50096 */  addiu      $a1, $a1, 0x96
    /* 1EF2D4 802D65C4 00054C00 */  sll        $t1, $a1, 16
    /* 1EF2D8 802D65C8 00092C03 */  sra        $a1, $t1, 16
    /* 1EF2DC 802D65CC 86040498 */  lh         $a0, 0x498($s0)
    /* 1EF2E0 802D65D0 8606049C */  lh         $a2, 0x49C($s0)
    /* 1EF2E4 802D65D4 2407012C */  addiu      $a3, $zero, 0x12C
    /* 1EF2E8 802D65D8 0C037C0E */  jal        func_800DF038_EDFE8
    /* 1EF2EC 802D65DC AFA00014 */   sw        $zero, 0x14($sp)
    /* 1EF2F0 802D65E0 3C058022 */  lui        $a1, %hi(D_80222A70)
    /* 1EF2F4 802D65E4 8CA52A70 */  lw         $a1, %lo(D_80222A70)($a1)
    /* 1EF2F8 802D65E8 240E0010 */  addiu      $t6, $zero, 0x10
    /* 1EF2FC 802D65EC AFAE0010 */  sw         $t6, 0x10($sp)
    /* 1EF300 802D65F0 24A50096 */  addiu      $a1, $a1, 0x96
    /* 1EF304 802D65F4 00056400 */  sll        $t4, $a1, 16
    /* 1EF308 802D65F8 000C2C03 */  sra        $a1, $t4, 16
    /* 1EF30C 802D65FC 860404B0 */  lh         $a0, 0x4B0($s0)
    /* 1EF310 802D6600 860604B4 */  lh         $a2, 0x4B4($s0)
    /* 1EF314 802D6604 2407012C */  addiu      $a3, $zero, 0x12C
    /* 1EF318 802D6608 0C037C0E */  jal        func_800DF038_EDFE8
    /* 1EF31C 802D660C AFA00014 */   sw        $zero, 0x14($sp)
    /* 1EF320 802D6610 86230000 */  lh         $v1, 0x0($s1)
  .L802D6614_1EF324:
    /* 1EF324 802D6614 24010005 */  addiu      $at, $zero, 0x5
    /* 1EF328 802D6618 0061001A */  div        $zero, $v1, $at
    /* 1EF32C 802D661C 3C108005 */  lui        $s0, %hi(buildingInstances)
    /* 1EF330 802D6620 00007810 */  mfhi       $t7
    /* 1EF334 802D6624 26100AD8 */  addiu      $s0, $s0, %lo(buildingInstances)
    /* 1EF338 802D6628 15E00013 */  bnez       $t7, .L802D6678_1EF388
    /* 1EF33C 802D662C 0003C880 */   sll       $t9, $v1, 2
    /* 1EF340 802D6630 0323C823 */  subu       $t9, $t9, $v1
    /* 1EF344 802D6634 861804B0 */  lh         $t8, 0x4B0($s0)
    /* 1EF348 802D6638 0019C8C0 */  sll        $t9, $t9, 3
    /* 1EF34C 802D663C 3C058022 */  lui        $a1, %hi(D_80222A70)
    /* 1EF350 802D6640 8CA52A70 */  lw         $a1, %lo(D_80222A70)($a1)
    /* 1EF354 802D6644 0323C821 */  addu       $t9, $t9, $v1
    /* 1EF358 802D6648 0019C840 */  sll        $t9, $t9, 1
    /* 1EF35C 802D664C 03192023 */  subu       $a0, $t8, $t9
    /* 1EF360 802D6650 248403E8 */  addiu      $a0, $a0, 0x3E8
    /* 1EF364 802D6654 24A50096 */  addiu      $a1, $a1, 0x96
    /* 1EF368 802D6658 00055C00 */  sll        $t3, $a1, 16
    /* 1EF36C 802D665C 00044C00 */  sll        $t1, $a0, 16
    /* 1EF370 802D6660 00092403 */  sra        $a0, $t1, 16
    /* 1EF374 802D6664 000B2C03 */  sra        $a1, $t3, 16
    /* 1EF378 802D6668 860604B4 */  lh         $a2, 0x4B4($s0)
    /* 1EF37C 802D666C 0C0383D3 */  jal        func_800E0F4C_EFEFC
    /* 1EF380 802D6670 24070019 */   addiu     $a3, $zero, 0x19
    /* 1EF384 802D6674 86230000 */  lh         $v1, 0x0($s1)
  .L802D6678_1EF388:
    /* 1EF388 802D6678 28620029 */  slti       $v0, $v1, 0x29
    /* 1EF38C 802D667C 246D0001 */  addiu      $t5, $v1, 0x1
    /* 1EF390 802D6680 14400007 */  bnez       $v0, .L802D66A0_1EF3B0
    /* 1EF394 802D6684 A62D0000 */   sh        $t5, 0x0($s1)
    /* 1EF398 802D6688 A6200000 */  sh         $zero, 0x0($s1)
    /* 1EF39C 802D668C 3C0E8015 */  lui        $t6, %hi(D_80157F8C)
    /* 1EF3A0 802D6690 85CE7F8C */  lh         $t6, %lo(D_80157F8C)($t6)
    /* 1EF3A4 802D6694 3C018015 */  lui        $at, %hi(D_80157F8C)
    /* 1EF3A8 802D6698 25CF0001 */  addiu      $t7, $t6, 0x1
    /* 1EF3AC 802D669C A42F7F8C */  sh         $t7, %lo(D_80157F8C)($at)
  .L802D66A0_1EF3B0:
    /* 1EF3B0 802D66A0 3C048015 */  lui        $a0, %hi(D_80157F8C)
    /* 1EF3B4 802D66A4 1000003D */  b          .L802D679C_1EF4AC
    /* 1EF3B8 802D66A8 84847F8C */   lh        $a0, %lo(D_80157F8C)($a0)
    /* 1EF3BC 802D66AC 3C118015 */  lui        $s1, %hi(D_80157F8E)
    /* 1EF3C0 802D66B0 26317F8E */  addiu      $s1, $s1, %lo(D_80157F8E)
    /* 1EF3C4 802D66B4 3C04802E */  lui        $a0, %hi(D_802E0E58)
    /* 1EF3C8 802D66B8 24840E58 */  addiu      $a0, $a0, %lo(D_802E0E58)
    /* 1EF3CC 802D66BC 0C00731B */  jal        osSyncPrintf
    /* 1EF3D0 802D66C0 86250000 */   lh        $a1, 0x0($s1)
    /* 1EF3D4 802D66C4 86230000 */  lh         $v1, 0x0($s1)
    /* 1EF3D8 802D66C8 24010001 */  addiu      $at, $zero, 0x1
    /* 1EF3DC 802D66CC 5461001F */  bnel       $v1, $at, .L802D674C_1EF45C
    /* 1EF3E0 802D66D0 2401001E */   addiu     $at, $zero, 0x1E
    /* 1EF3E4 802D66D4 0C047020 */  jal        func_8011C080_12B030
    /* 1EF3E8 802D66D8 24040032 */   addiu     $a0, $zero, 0x32
    /* 1EF3EC 802D66DC 3C058022 */  lui        $a1, %hi(D_80222A70)
    /* 1EF3F0 802D66E0 8CA52A70 */  lw         $a1, %lo(D_80222A70)($a1)
    /* 1EF3F4 802D66E4 3C108005 */  lui        $s0, %hi(buildingInstances)
    /* 1EF3F8 802D66E8 26100AD8 */  addiu      $s0, $s0, %lo(buildingInstances)
    /* 1EF3FC 802D66EC 24A50096 */  addiu      $a1, $a1, 0x96
    /* 1EF400 802D66F0 0005C400 */  sll        $t8, $a1, 16
    /* 1EF404 802D66F4 24090008 */  addiu      $t1, $zero, 0x8
    /* 1EF408 802D66F8 AFA90010 */  sw         $t1, 0x10($sp)
    /* 1EF40C 802D66FC 00182C03 */  sra        $a1, $t8, 16
    /* 1EF410 802D6700 86040498 */  lh         $a0, 0x498($s0)
    /* 1EF414 802D6704 8606049C */  lh         $a2, 0x49C($s0)
    /* 1EF418 802D6708 2407012C */  addiu      $a3, $zero, 0x12C
    /* 1EF41C 802D670C 0C037C0E */  jal        func_800DF038_EDFE8
    /* 1EF420 802D6710 AFA00014 */   sw        $zero, 0x14($sp)
    /* 1EF424 802D6714 3C058022 */  lui        $a1, %hi(D_80222A70)
    /* 1EF428 802D6718 8CA52A70 */  lw         $a1, %lo(D_80222A70)($a1)
    /* 1EF42C 802D671C 240C0010 */  addiu      $t4, $zero, 0x10
    /* 1EF430 802D6720 AFAC0010 */  sw         $t4, 0x10($sp)
    /* 1EF434 802D6724 24A50096 */  addiu      $a1, $a1, 0x96
    /* 1EF438 802D6728 00055400 */  sll        $t2, $a1, 16
    /* 1EF43C 802D672C 000A2C03 */  sra        $a1, $t2, 16
    /* 1EF440 802D6730 860404B0 */  lh         $a0, 0x4B0($s0)
    /* 1EF444 802D6734 860604B4 */  lh         $a2, 0x4B4($s0)
    /* 1EF448 802D6738 2407012C */  addiu      $a3, $zero, 0x12C
    /* 1EF44C 802D673C 0C037C0E */  jal        func_800DF038_EDFE8
    /* 1EF450 802D6740 AFA00014 */   sw        $zero, 0x14($sp)
    /* 1EF454 802D6744 86230000 */  lh         $v1, 0x0($s1)
    /* 1EF458 802D6748 2401001E */  addiu      $at, $zero, 0x1E
  .L802D674C_1EF45C:
    /* 1EF45C 802D674C 54610005 */  bnel       $v1, $at, .L802D6764_1EF474
    /* 1EF460 802D6750 28620029 */   slti      $v0, $v1, 0x29
    /* 1EF464 802D6754 0C047020 */  jal        func_8011C080_12B030
    /* 1EF468 802D6758 24040031 */   addiu     $a0, $zero, 0x31
    /* 1EF46C 802D675C 86230000 */  lh         $v1, 0x0($s1)
    /* 1EF470 802D6760 28620029 */  slti       $v0, $v1, 0x29
  .L802D6764_1EF474:
    /* 1EF474 802D6764 246D0001 */  addiu      $t5, $v1, 0x1
    /* 1EF478 802D6768 14400007 */  bnez       $v0, .L802D6788_1EF498
    /* 1EF47C 802D676C A62D0000 */   sh        $t5, 0x0($s1)
    /* 1EF480 802D6770 3C028015 */  lui        $v0, %hi(D_80157F8C)
    /* 1EF484 802D6774 24427F8C */  addiu      $v0, $v0, %lo(D_80157F8C)
    /* 1EF488 802D6778 844E0000 */  lh         $t6, 0x0($v0)
    /* 1EF48C 802D677C A6200000 */  sh         $zero, 0x0($s1)
    /* 1EF490 802D6780 25CF0001 */  addiu      $t7, $t6, 0x1
    /* 1EF494 802D6784 A44F0000 */  sh         $t7, 0x0($v0)
  .L802D6788_1EF498:
    /* 1EF498 802D6788 3C048015 */  lui        $a0, %hi(D_80157F8C)
    /* 1EF49C 802D678C 10000003 */  b          .L802D679C_1EF4AC
    /* 1EF4A0 802D6790 84847F8C */   lh        $a0, %lo(D_80157F8C)($a0)
    /* 1EF4A4 802D6794 10000025 */  b          .L802D682C_1EF53C
    /* 1EF4A8 802D6798 24020001 */   addiu     $v0, $zero, 0x1
  .L802D679C_1EF4AC:
    /* 1EF4AC 802D679C 3C108005 */  lui        $s0, %hi(buildingInstances)
    /* 1EF4B0 802D67A0 28810004 */  slti       $at, $a0, 0x4
    /* 1EF4B4 802D67A4 10200020 */  beqz       $at, .L802D6828_1EF538
    /* 1EF4B8 802D67A8 26100AD8 */   addiu     $s0, $s0, %lo(buildingInstances)
    /* 1EF4BC 802D67AC 860404B0 */  lh         $a0, 0x4B0($s0)
    /* 1EF4C0 802D67B0 860504B2 */  lh         $a1, 0x4B2($s0)
    /* 1EF4C4 802D67B4 0C04DBB3 */  jal        func_80136ECC_145E7C
    /* 1EF4C8 802D67B8 860604B4 */   lh        $a2, 0x4B4($s0)
    /* 1EF4CC 802D67BC 00028C00 */  sll        $s1, $v0, 16
    /* 1EF4D0 802D67C0 0011C403 */  sra        $t8, $s1, 16
    /* 1EF4D4 802D67C4 03008825 */  or         $s1, $t8, $zero
    /* 1EF4D8 802D67C8 860404B0 */  lh         $a0, 0x4B0($s0)
    /* 1EF4DC 802D67CC 860504B2 */  lh         $a1, 0x4B2($s0)
    /* 1EF4E0 802D67D0 0C04DB70 */  jal        func_80136DC0_145D70
    /* 1EF4E4 802D67D4 860604B4 */   lh        $a2, 0x4B4($s0)
    /* 1EF4E8 802D67D8 4600010D */  trunc.w.s  $f4, $f0
    /* 1EF4EC 802D67DC 24010005 */  addiu      $at, $zero, 0x5
    /* 1EF4F0 802D67E0 00113C00 */  sll        $a3, $s1, 16
    /* 1EF4F4 802D67E4 00076C03 */  sra        $t5, $a3, 16
    /* 1EF4F8 802D67E8 44092000 */  mfc1       $t1, $f4
    /* 1EF4FC 802D67EC 01A03825 */  or         $a3, $t5, $zero
    /* 1EF500 802D67F0 00002025 */  or         $a0, $zero, $zero
    /* 1EF504 802D67F4 00095400 */  sll        $t2, $t1, 16
    /* 1EF508 802D67F8 000A5C03 */  sra        $t3, $t2, 16
    /* 1EF50C 802D67FC 0161001A */  div        $zero, $t3, $at
    /* 1EF510 802D6800 00006012 */  mflo       $t4
    /* 1EF514 802D6804 448C3000 */  mtc1       $t4, $f6
    /* 1EF518 802D6808 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
    /* 1EF51C 802D680C 44814000 */  mtc1       $at, $f8
    /* 1EF520 802D6810 468031A0 */  cvt.s.w    $f6, $f6
    /* 1EF524 802D6814 240500B3 */  addiu      $a1, $zero, 0xB3
    /* 1EF528 802D6818 E7A80010 */  swc1       $f8, 0x10($sp)
    /* 1EF52C 802D681C 44063000 */  mfc1       $a2, $f6
    /* 1EF530 802D6820 0C00528F */  jal        func_80014A3C_1563C
    /* 1EF534 802D6824 00000000 */   nop
  .L802D6828_1EF538:
    /* 1EF538 802D6828 00001025 */  or         $v0, $zero, $zero
  .L802D682C_1EF53C:
    /* 1EF53C 802D682C 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 1EF540 802D6830 8FB0001C */  lw         $s0, 0x1C($sp)
    /* 1EF544 802D6834 8FB10020 */  lw         $s1, 0x20($sp)
    /* 1EF548 802D6838 03E00008 */  jr         $ra
    /* 1EF54C 802D683C 27BD0028 */   addiu     $sp, $sp, 0x28
endlabel func_802D6338_1EF048
