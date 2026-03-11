nonmatching func_802D81C0_2BA5F0, 0x2F0

glabel func_802D81C0_2BA5F0
    /* 2BA5F0 802D81C0 308E00FF */  andi       $t6, $a0, 0xFF
    /* 2BA5F4 802D81C4 000EC080 */  sll        $t8, $t6, 2
    /* 2BA5F8 802D81C8 27BDFF78 */  addiu      $sp, $sp, -0x88
    /* 2BA5FC 802D81CC 030EC021 */  addu       $t8, $t8, $t6
    /* 2BA600 802D81D0 3C198005 */  lui        $t9, %hi(alienInstances)
    /* 2BA604 802D81D4 AFB10040 */  sw         $s1, 0x40($sp)
    /* 2BA608 802D81D8 27398198 */  addiu      $t9, $t9, %lo(alienInstances)
    /* 2BA60C 802D81DC 0018C100 */  sll        $t8, $t8, 4
    /* 2BA610 802D81E0 03198821 */  addu       $s1, $t8, $t9
    /* 2BA614 802D81E4 8E280020 */  lw         $t0, 0x20($s1)
    /* 2BA618 802D81E8 AFB0003C */  sw         $s0, 0x3C($sp)
    /* 2BA61C 802D81EC 00058400 */  sll        $s0, $a1, 16
    /* 2BA620 802D81F0 00107C03 */  sra        $t7, $s0, 16
    /* 2BA624 802D81F4 AFA40088 */  sw         $a0, 0x88($sp)
    /* 2BA628 802D81F8 31091000 */  andi       $t1, $t0, 0x1000
    /* 2BA62C 802D81FC 01C02025 */  or         $a0, $t6, $zero
    /* 2BA630 802D8200 01E08025 */  or         $s0, $t7, $zero
    /* 2BA634 802D8204 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 2BA638 802D8208 AFA5008C */  sw         $a1, 0x8C($sp)
    /* 2BA63C 802D820C AFA60090 */  sw         $a2, 0x90($sp)
    /* 2BA640 802D8210 112000A2 */  beqz       $t1, .L802D849C_2BA8CC
    /* 2BA644 802D8214 AFA70094 */   sw        $a3, 0x94($sp)
    /* 2BA648 802D8218 87AA0092 */  lh         $t2, 0x92($sp)
    /* 2BA64C 802D821C 87AB0096 */  lh         $t3, 0x96($sp)
    /* 2BA650 802D8220 87AC009A */  lh         $t4, 0x9A($sp)
    /* 2BA654 802D8224 87AD009E */  lh         $t5, 0x9E($sp)
    /* 2BA658 802D8228 3C0E802E */  lui        $t6, %hi(D_802E1540)
    /* 2BA65C 802D822C 25CE1540 */  addiu      $t6, $t6, %lo(D_802E1540)
    /* 2BA660 802D8230 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 2BA664 802D8234 24050004 */  addiu      $a1, $zero, 0x4
    /* 2BA668 802D8238 24060003 */  addiu      $a2, $zero, 0x3
    /* 2BA66C 802D823C 27A70080 */  addiu      $a3, $sp, 0x80
    /* 2BA670 802D8240 A3A4008B */  sb         $a0, 0x8B($sp)
    /* 2BA674 802D8244 A7AA0080 */  sh         $t2, 0x80($sp)
    /* 2BA678 802D8248 A7AB0082 */  sh         $t3, 0x82($sp)
    /* 2BA67C 802D824C A7AC0084 */  sh         $t4, 0x84($sp)
    /* 2BA680 802D8250 0C0207C6 */  jal        func_80081F18_90EC8
    /* 2BA684 802D8254 A7AD0086 */   sh        $t5, 0x86($sp)
    /* 2BA688 802D8258 A3A2007F */  sb         $v0, 0x7F($sp)
    /* 2BA68C 802D825C 93A4008B */  lbu        $a0, 0x8B($sp)
    /* 2BA690 802D8260 0C0213FA */  jal        func_80084FE8_93F98
    /* 2BA694 802D8264 24050800 */   addiu     $a1, $zero, 0x800
    /* 2BA698 802D8268 10400076 */  beqz       $v0, .L802D8444_2BA874
    /* 2BA69C 802D826C 00101023 */   negu      $v0, $s0
    /* 2BA6A0 802D8270 0050082A */  slt        $at, $v0, $s0
    /* 2BA6A4 802D8274 10200003 */  beqz       $at, .L802D8284_2BA6B4
    /* 2BA6A8 802D8278 00401825 */   or        $v1, $v0, $zero
    /* 2BA6AC 802D827C 10000001 */  b          .L802D8284_2BA6B4
    /* 2BA6B0 802D8280 02001825 */   or        $v1, $s0, $zero
  .L802D8284_2BA6B4:
    /* 2BA6B4 802D8284 3C010001 */  lui        $at, (0x15F90 >> 16)
    /* 2BA6B8 802D8288 34215F90 */  ori        $at, $at, (0x15F90 & 0xFFFF)
    /* 2BA6BC 802D828C 0061082A */  slt        $at, $v1, $at
    /* 2BA6C0 802D8290 1020006C */  beqz       $at, .L802D8444_2BA874
    /* 2BA6C4 802D8294 0050082A */   slt       $at, $v0, $s0
    /* 2BA6C8 802D8298 10200003 */  beqz       $at, .L802D82A8_2BA6D8
    /* 2BA6CC 802D829C 00401825 */   or        $v1, $v0, $zero
    /* 2BA6D0 802D82A0 10000001 */  b          .L802D82A8_2BA6D8
    /* 2BA6D4 802D82A4 02001825 */   or        $v1, $s0, $zero
  .L802D82A8_2BA6D8:
    /* 2BA6D8 802D82A8 286109C5 */  slti       $at, $v1, 0x9C5
    /* 2BA6DC 802D82AC 54200066 */  bnel       $at, $zero, .L802D8448_2BA878
    /* 2BA6E0 802D82B0 922A0036 */   lbu       $t2, 0x36($s1)
    /* 2BA6E4 802D82B4 922F0036 */  lbu        $t7, 0x36($s1)
    /* 2BA6E8 802D82B8 87B8009E */  lh         $t8, 0x9E($sp)
    /* 2BA6EC 802D82BC 24010002 */  addiu      $at, $zero, 0x2
    /* 2BA6F0 802D82C0 15E10060 */  bne        $t7, $at, .L802D8444_2BA874
    /* 2BA6F4 802D82C4 0018C900 */   sll       $t9, $t8, 4
    /* 2BA6F8 802D82C8 3C088015 */  lui        $t0, %hi(D_8014DD5E)
    /* 2BA6FC 802D82CC 01194021 */  addu       $t0, $t0, $t9
    /* 2BA700 802D82D0 8508DD5E */  lh         $t0, %lo(D_8014DD5E)($t0)
    /* 2BA704 802D82D4 3C108005 */  lui        $s0, %hi(D_80052B34)
    /* 2BA708 802D82D8 29010002 */  slti       $at, $t0, 0x2
    /* 2BA70C 802D82DC 5020005A */  beql       $at, $zero, .L802D8448_2BA878
    /* 2BA710 802D82E0 922A0036 */   lbu       $t2, 0x36($s1)
    /* 2BA714 802D82E4 8E102B34 */  lw         $s0, %lo(D_80052B34)($s0)
    /* 2BA718 802D82E8 93A4008B */  lbu        $a0, 0x8B($sp)
    /* 2BA71C 802D82EC 9209001A */  lbu        $t1, 0x1A($s0)
    /* 2BA720 802D82F0 11200043 */  beqz       $t1, .L802D8400_2BA830
    /* 2BA724 802D82F4 00000000 */   nop
    /* 2BA728 802D82F8 0C04DD1A */  jal        func_80137468_146418
    /* 2BA72C 802D82FC 24050258 */   addiu     $a1, $zero, 0x258
    /* 2BA730 802D8300 86240006 */  lh         $a0, 0x6($s1)
    /* 2BA734 802D8304 2484A000 */  addiu      $a0, $a0, -0x6000
    /* 2BA738 802D8308 308AFFFF */  andi       $t2, $a0, 0xFFFF
    /* 2BA73C 802D830C 0C007660 */  jal        sins
    /* 2BA740 802D8310 01402025 */   or        $a0, $t2, $zero
    /* 2BA744 802D8314 44822000 */  mtc1       $v0, $f4
    /* 2BA748 802D8318 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2BA74C 802D831C 44815800 */  mtc1       $at, $f11
    /* 2BA750 802D8320 468021A0 */  cvt.s.w    $f6, $f4
    /* 2BA754 802D8324 44805000 */  mtc1       $zero, $f10
    /* 2BA758 802D8328 86240006 */  lh         $a0, 0x6($s1)
    /* 2BA75C 802D832C 2484A000 */  addiu      $a0, $a0, -0x6000
    /* 2BA760 802D8330 46003221 */  cvt.d.s    $f8, $f6
    /* 2BA764 802D8334 308BFFFF */  andi       $t3, $a0, 0xFFFF
    /* 2BA768 802D8338 462A4403 */  div.d      $f16, $f8, $f10
    /* 2BA76C 802D833C 01602025 */  or         $a0, $t3, $zero
    /* 2BA770 802D8340 462084A0 */  cvt.s.d    $f18, $f16
    /* 2BA774 802D8344 0C007654 */  jal        coss
    /* 2BA778 802D8348 E7B2005C */   swc1      $f18, 0x5C($sp)
    /* 2BA77C 802D834C 3C0142FE */  lui        $at, (0x42FE0000 >> 16)
    /* 2BA780 802D8350 44810000 */  mtc1       $at, $f0
    /* 2BA784 802D8354 C7A4005C */  lwc1       $f4, 0x5C($sp)
    /* 2BA788 802D8358 44825000 */  mtc1       $v0, $f10
    /* 2BA78C 802D835C 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2BA790 802D8360 46002182 */  mul.s      $f6, $f4, $f0
    /* 2BA794 802D8364 44802000 */  mtc1       $zero, $f4
    /* 2BA798 802D8368 44812800 */  mtc1       $at, $f5
    /* 2BA79C 802D836C 3C108005 */  lui        $s0, %hi(D_80052B34)
    /* 2BA7A0 802D8370 8E102B34 */  lw         $s0, %lo(D_80052B34)($s0)
    /* 2BA7A4 802D8374 240FFFB0 */  addiu      $t7, $zero, -0x50
    /* 2BA7A8 802D8378 46805420 */  cvt.s.w    $f16, $f10
    /* 2BA7AC 802D837C 86040000 */  lh         $a0, 0x0($s0)
    /* 2BA7B0 802D8380 86050002 */  lh         $a1, 0x2($s0)
    /* 2BA7B4 802D8384 86060004 */  lh         $a2, 0x4($s0)
    /* 2BA7B8 802D8388 240800B4 */  addiu      $t0, $zero, 0xB4
    /* 2BA7BC 802D838C 4600320D */  trunc.w.s  $f8, $f6
    /* 2BA7C0 802D8390 240900FF */  addiu      $t1, $zero, 0xFF
    /* 2BA7C4 802D8394 240A0028 */  addiu      $t2, $zero, 0x28
    /* 2BA7C8 802D8398 460084A1 */  cvt.d.s    $f18, $f16
    /* 2BA7CC 802D839C 44074000 */  mfc1       $a3, $f8
    /* 2BA7D0 802D83A0 46249183 */  div.d      $f6, $f18, $f4
    /* 2BA7D4 802D83A4 240B0014 */  addiu      $t3, $zero, 0x14
    /* 2BA7D8 802D83A8 00076E00 */  sll        $t5, $a3, 24
    /* 2BA7DC 802D83AC 000D3E03 */  sra        $a3, $t5, 24
    /* 2BA7E0 802D83B0 240D00FF */  addiu      $t5, $zero, 0xFF
    /* 2BA7E4 802D83B4 240C00FF */  addiu      $t4, $zero, 0xFF
    /* 2BA7E8 802D83B8 240E00C8 */  addiu      $t6, $zero, 0xC8
    /* 2BA7EC 802D83BC AFAE0030 */  sw         $t6, 0x30($sp)
    /* 2BA7F0 802D83C0 AFAC0028 */  sw         $t4, 0x28($sp)
    /* 2BA7F4 802D83C4 AFAD002C */  sw         $t5, 0x2C($sp)
    /* 2BA7F8 802D83C8 AFAB0024 */  sw         $t3, 0x24($sp)
    /* 2BA7FC 802D83CC AFAA0020 */  sw         $t2, 0x20($sp)
    /* 2BA800 802D83D0 AFA9001C */  sw         $t1, 0x1C($sp)
    /* 2BA804 802D83D4 AFA80018 */  sw         $t0, 0x18($sp)
    /* 2BA808 802D83D8 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 2BA80C 802D83DC 46203207 */  neg.d      $f8, $f6
    /* 2BA810 802D83E0 462042A0 */  cvt.s.d    $f10, $f8
    /* 2BA814 802D83E4 46005402 */  mul.s      $f16, $f10, $f0
    /* 2BA818 802D83E8 4600848D */  trunc.w.s  $f18, $f16
    /* 2BA81C 802D83EC 44199000 */  mfc1       $t9, $f18
    /* 2BA820 802D83F0 0C031507 */  jal        func_800C541C_D43CC
    /* 2BA824 802D83F4 AFB90014 */   sw        $t9, 0x14($sp)
    /* 2BA828 802D83F8 3C108005 */  lui        $s0, %hi(D_80052B34)
    /* 2BA82C 802D83FC 8E102B34 */  lw         $s0, %lo(D_80052B34)($s0)
  .L802D8400_2BA830:
    /* 2BA830 802D8400 3C058014 */  lui        $a1, %hi(D_8014619A)
    /* 2BA834 802D8404 84AF619A */  lh         $t7, %lo(D_8014619A)($a1)
    /* 2BA838 802D8408 02002025 */  or         $a0, $s0, $zero
    /* 2BA83C 802D840C 86260000 */  lh         $a2, 0x0($s1)
    /* 2BA840 802D8410 000FC440 */  sll        $t8, $t7, 17
    /* 2BA844 802D8414 00182C03 */  sra        $a1, $t8, 16
    /* 2BA848 802D8418 0C048949 */  jal        func_80122524_1314D4
    /* 2BA84C 802D841C 86270004 */   lh        $a3, 0x4($s1)
    /* 2BA850 802D8420 86250006 */  lh         $a1, 0x6($s1)
    /* 2BA854 802D8424 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 2BA858 802D8428 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 2BA85C 802D842C 24A5A000 */  addiu      $a1, $a1, -0x6000
    /* 2BA860 802D8430 00054400 */  sll        $t0, $a1, 16
    /* 2BA864 802D8434 00082C03 */  sra        $a1, $t0, 16
    /* 2BA868 802D8438 00003025 */  or         $a2, $zero, $zero
    /* 2BA86C 802D843C 0C040B77 */  jal        func_80102DDC_111D8C
    /* 2BA870 802D8440 3C074348 */   lui       $a3, (0x43480000 >> 16)
  .L802D8444_2BA874:
    /* 2BA874 802D8444 922A0036 */  lbu        $t2, 0x36($s1)
  .L802D8448_2BA878:
    /* 2BA878 802D8448 87AB009E */  lh         $t3, 0x9E($sp)
    /* 2BA87C 802D844C 24010002 */  addiu      $at, $zero, 0x2
    /* 2BA880 802D8450 1541000A */  bne        $t2, $at, .L802D847C_2BA8AC
    /* 2BA884 802D8454 000B6100 */   sll       $t4, $t3, 4
    /* 2BA888 802D8458 3C0D8015 */  lui        $t5, %hi(D_8014DD5E)
    /* 2BA88C 802D845C 01AC6821 */  addu       $t5, $t5, $t4
    /* 2BA890 802D8460 85ADDD5E */  lh         $t5, %lo(D_8014DD5E)($t5)
    /* 2BA894 802D8464 24010001 */  addiu      $at, $zero, 0x1
    /* 2BA898 802D8468 93A4008B */  lbu        $a0, 0x8B($sp)
    /* 2BA89C 802D846C 55A10004 */  bnel       $t5, $at, .L802D8480_2BA8B0
    /* 2BA8A0 802D8470 93AE007F */   lbu       $t6, 0x7F($sp)
    /* 2BA8A4 802D8474 0C04DD1A */  jal        func_80137468_146418
    /* 2BA8A8 802D8478 24050134 */   addiu     $a1, $zero, 0x134
  .L802D847C_2BA8AC:
    /* 2BA8AC 802D847C 93AE007F */  lbu        $t6, 0x7F($sp)
  .L802D8480_2BA8B0:
    /* 2BA8B0 802D8480 24010003 */  addiu      $at, $zero, 0x3
    /* 2BA8B4 802D8484 55C10006 */  bnel       $t6, $at, .L802D84A0_2BA8D0
    /* 2BA8B8 802D8488 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 2BA8BC 802D848C 8E2F0020 */  lw         $t7, 0x20($s1)
    /* 2BA8C0 802D8490 2401EFFF */  addiu      $at, $zero, -0x1001
    /* 2BA8C4 802D8494 01E1C024 */  and        $t8, $t7, $at
    /* 2BA8C8 802D8498 AE380020 */  sw         $t8, 0x20($s1)
  .L802D849C_2BA8CC:
    /* 2BA8CC 802D849C 8FBF0044 */  lw         $ra, 0x44($sp)
  .L802D84A0_2BA8D0:
    /* 2BA8D0 802D84A0 8FB0003C */  lw         $s0, 0x3C($sp)
    /* 2BA8D4 802D84A4 8FB10040 */  lw         $s1, 0x40($sp)
    /* 2BA8D8 802D84A8 03E00008 */  jr         $ra
    /* 2BA8DC 802D84AC 27BD0088 */   addiu     $sp, $sp, 0x88
endlabel func_802D81C0_2BA5F0
