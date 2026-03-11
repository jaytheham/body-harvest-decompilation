nonmatching func_802D7114_2B9544, 0x184

glabel func_802D7114_2B9544
    /* 2B9544 802D7114 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 2B9548 802D7118 AFBF0034 */  sw         $ra, 0x34($sp)
    /* 2B954C 802D711C 3C04802D */  lui        $a0, %hi(func_802D6CA0_2B90D0)
    /* 2B9550 802D7120 AFB60030 */  sw         $s6, 0x30($sp)
    /* 2B9554 802D7124 AFB5002C */  sw         $s5, 0x2C($sp)
    /* 2B9558 802D7128 AFB40028 */  sw         $s4, 0x28($sp)
    /* 2B955C 802D712C AFB30024 */  sw         $s3, 0x24($sp)
    /* 2B9560 802D7130 AFB20020 */  sw         $s2, 0x20($sp)
    /* 2B9564 802D7134 AFB1001C */  sw         $s1, 0x1C($sp)
    /* 2B9568 802D7138 AFB00018 */  sw         $s0, 0x18($sp)
    /* 2B956C 802D713C 0C001D2F */  jal        func_800074BC_80BC
    /* 2B9570 802D7140 24846CA0 */   addiu     $a0, $a0, %lo(func_802D6CA0_2B90D0)
    /* 2B9574 802D7144 0C004D1A */  jal        func_80013468_14068
    /* 2B9578 802D7148 2404000B */   addiu     $a0, $zero, 0xB
    /* 2B957C 802D714C 3C018015 */  lui        $at, %hi(D_8014D17C)
    /* 2B9580 802D7150 3C04802D */  lui        $a0, %hi(func_802D6FFC_2B942C)
    /* 2B9584 802D7154 A420D17C */  sh         $zero, %lo(D_8014D17C)($at)
    /* 2B9588 802D7158 0C001D04 */  jal        func_80007410_8010
    /* 2B958C 802D715C 24846FFC */   addiu     $a0, $a0, %lo(func_802D6FFC_2B942C)
    /* 2B9590 802D7160 3C04802D */  lui        $a0, %hi(func_802D6A70_2B8EA0)
    /* 2B9594 802D7164 0C001D2F */  jal        func_800074BC_80BC
    /* 2B9598 802D7168 24846A70 */   addiu     $a0, $a0, %lo(func_802D6A70_2B8EA0)
    /* 2B959C 802D716C 00002025 */  or         $a0, $zero, $zero
    /* 2B95A0 802D7170 24050019 */  addiu      $a1, $zero, 0x19
    /* 2B95A4 802D7174 0C03BFAD */  jal        func_800EFEB4_FEE64
    /* 2B95A8 802D7178 00003025 */   or        $a2, $zero, $zero
    /* 2B95AC 802D717C 3C038015 */  lui        $v1, %hi(D_8014D507)
    /* 2B95B0 802D7180 9063D507 */  lbu        $v1, %lo(D_8014D507)($v1)
    /* 2B95B4 802D7184 3C118015 */  lui        $s1, %hi(D_8014D408)
    /* 2B95B8 802D7188 2631D408 */  addiu      $s1, $s1, %lo(D_8014D408)
    /* 2B95BC 802D718C 18600016 */  blez       $v1, .L802D71E8_2B9618
    /* 2B95C0 802D7190 00009025 */   or        $s2, $zero, $zero
    /* 2B95C4 802D7194 3C148005 */  lui        $s4, %hi(alienInstances)
    /* 2B95C8 802D7198 26948198 */  addiu      $s4, $s4, %lo(alienInstances)
    /* 2B95CC 802D719C 24160001 */  addiu      $s6, $zero, 0x1
    /* 2B95D0 802D71A0 24150050 */  addiu      $s5, $zero, 0x50
    /* 2B95D4 802D71A4 2413001B */  addiu      $s3, $zero, 0x1B
  .L802D71A8_2B95D8:
    /* 2B95D8 802D71A8 92220000 */  lbu        $v0, 0x0($s1)
    /* 2B95DC 802D71AC 00550019 */  multu      $v0, $s5
    /* 2B95E0 802D71B0 00007012 */  mflo       $t6
    /* 2B95E4 802D71B4 028E8021 */  addu       $s0, $s4, $t6
    /* 2B95E8 802D71B8 920F0024 */  lbu        $t7, 0x24($s0)
    /* 2B95EC 802D71BC 566F0007 */  bnel       $s3, $t7, .L802D71DC_2B960C
    /* 2B95F0 802D71C0 26520001 */   addiu     $s2, $s2, 0x1
    /* 2B95F4 802D71C4 0C0221D8 */  jal        func_80088760_97710
    /* 2B95F8 802D71C8 02002025 */   or        $a0, $s0, $zero
    /* 2B95FC 802D71CC A616002C */  sh         $s6, 0x2C($s0)
    /* 2B9600 802D71D0 3C038015 */  lui        $v1, %hi(D_8014D507)
    /* 2B9604 802D71D4 9063D507 */  lbu        $v1, %lo(D_8014D507)($v1)
    /* 2B9608 802D71D8 26520001 */  addiu      $s2, $s2, 0x1
  .L802D71DC_2B960C:
    /* 2B960C 802D71DC 0243082A */  slt        $at, $s2, $v1
    /* 2B9610 802D71E0 1420FFF1 */  bnez       $at, .L802D71A8_2B95D8
    /* 2B9614 802D71E4 26310001 */   addiu     $s1, $s1, 0x1
  .L802D71E8_2B9618:
    /* 2B9618 802D71E8 3C03802E */  lui        $v1, %hi(D_802E309C)
    /* 2B961C 802D71EC 8463309C */  lh         $v1, %lo(D_802E309C)($v1)
    /* 2B9620 802D71F0 2401FFFF */  addiu      $at, $zero, -0x1
    /* 2B9624 802D71F4 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 2B9628 802D71F8 10610013 */  beq        $v1, $at, .L802D7248_2B9678
    /* 2B962C 802D71FC 24842B34 */   addiu     $a0, $a0, %lo(D_80052B34)
    /* 2B9630 802D7200 8C820000 */  lw         $v0, 0x0($a0)
    /* 2B9634 802D7204 94580020 */  lhu        $t8, 0x20($v0)
    /* 2B9638 802D7208 33190800 */  andi       $t9, $t8, 0x800
    /* 2B963C 802D720C 1320000E */  beqz       $t9, .L802D7248_2B9678
    /* 2B9640 802D7210 00000000 */   nop
    /* 2B9644 802D7214 9048001A */  lbu        $t0, 0x1A($v0)
    /* 2B9648 802D7218 00034880 */  sll        $t1, $v1, 2
    /* 2B964C 802D721C 01234823 */  subu       $t1, $t1, $v1
    /* 2B9650 802D7220 15000009 */  bnez       $t0, .L802D7248_2B9678
    /* 2B9654 802D7224 000948C0 */   sll       $t1, $t1, 3
    /* 2B9658 802D7228 01234823 */  subu       $t1, $t1, $v1
    /* 2B965C 802D722C 3C0A8005 */  lui        $t2, %hi(vehicleInstances)
    /* 2B9660 802D7230 254ADCD0 */  addiu      $t2, $t2, %lo(vehicleInstances)
    /* 2B9664 802D7234 00094880 */  sll        $t1, $t1, 2
    /* 2B9668 802D7238 0C048EB1 */  jal        func_80123AC4_132A74
    /* 2B966C 802D723C 012A2021 */   addu      $a0, $t1, $t2
    /* 2B9670 802D7240 1000000C */  b          .L802D7274_2B96A4
    /* 2B9674 802D7244 8FBF0034 */   lw        $ra, 0x34($sp)
  .L802D7248_2B9678:
    /* 2B9678 802D7248 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 2B967C 802D724C 24842B34 */  addiu      $a0, $a0, %lo(D_80052B34)
    /* 2B9680 802D7250 8C820000 */  lw         $v0, 0x0($a0)
    /* 2B9684 802D7254 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
    /* 2B9688 802D7258 44812000 */  mtc1       $at, $f4
    /* 2B968C 802D725C 944B0020 */  lhu        $t3, 0x20($v0)
    /* 2B9690 802D7260 356C0002 */  ori        $t4, $t3, 0x2
    /* 2B9694 802D7264 A44C0020 */  sh         $t4, 0x20($v0)
    /* 2B9698 802D7268 8C8D0000 */  lw         $t5, 0x0($a0)
    /* 2B969C 802D726C E5A40034 */  swc1       $f4, 0x34($t5)
    /* 2B96A0 802D7270 8FBF0034 */  lw         $ra, 0x34($sp)
  .L802D7274_2B96A4:
    /* 2B96A4 802D7274 8FB00018 */  lw         $s0, 0x18($sp)
    /* 2B96A8 802D7278 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 2B96AC 802D727C 8FB20020 */  lw         $s2, 0x20($sp)
    /* 2B96B0 802D7280 8FB30024 */  lw         $s3, 0x24($sp)
    /* 2B96B4 802D7284 8FB40028 */  lw         $s4, 0x28($sp)
    /* 2B96B8 802D7288 8FB5002C */  lw         $s5, 0x2C($sp)
    /* 2B96BC 802D728C 8FB60030 */  lw         $s6, 0x30($sp)
    /* 2B96C0 802D7290 03E00008 */  jr         $ra
    /* 2B96C4 802D7294 27BD0038 */   addiu     $sp, $sp, 0x38
endlabel func_802D7114_2B9544
