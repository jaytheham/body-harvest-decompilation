nonmatching func_8007B2F0_1633B0, 0x22C

glabel func_8007B2F0_1633B0
    /* 1633B0 8007B2F0 0004C080 */  sll        $t8, $a0, 2
    /* 1633B4 8007B2F4 0304C023 */  subu       $t8, $t8, $a0
    /* 1633B8 8007B2F8 0018C100 */  sll        $t8, $t8, 4
    /* 1633BC 8007B2FC 3C02800E */  lui        $v0, %hi(D_800E66D4)
    /* 1633C0 8007B300 00581021 */  addu       $v0, $v0, $t8
    /* 1633C4 8007B304 904266D4 */  lbu        $v0, %lo(D_800E66D4)($v0)
    /* 1633C8 8007B308 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 1633CC 8007B30C 240E0001 */  addiu      $t6, $zero, 0x1
    /* 1633D0 8007B310 304300E0 */  andi       $v1, $v0, 0xE0
    /* 1633D4 8007B314 00034143 */  sra        $t0, $v1, 5
    /* 1633D8 8007B318 3046001C */  andi       $a2, $v0, 0x1C
    /* 1633DC 8007B31C 0006C883 */  sra        $t9, $a2, 2
    /* 1633E0 8007B320 2D010005 */  sltiu      $at, $t0, 0x5
    /* 1633E4 8007B324 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1633E8 8007B328 AFA40030 */  sw         $a0, 0x30($sp)
    /* 1633EC 8007B32C AFAE0024 */  sw         $t6, 0x24($sp)
    /* 1633F0 8007B330 10200067 */  beqz       $at, .L8007B4D0_163590
    /* 1633F4 8007B334 27260038 */   addiu     $a2, $t9, 0x38
    /* 1633F8 8007B338 00084880 */  sll        $t1, $t0, 2
    /* 1633FC 8007B33C 3C01800A */  lui        $at, %hi(jtbl_800A4B9C_overlay_gameplay_inside)
    /* 163400 8007B340 00290821 */  addu       $at, $at, $t1
    /* 163404 8007B344 8C294B9C */  lw         $t1, %lo(jtbl_800A4B9C_overlay_gameplay_inside)($at)
    /* 163408 8007B348 01200008 */  jr         $t1
    /* 16340C 8007B34C 00000000 */   nop
    /* 163410 8007B350 000627C3 */  sra        $a0, $a2, 31
    /* 163414 8007B354 AFA40018 */  sw         $a0, 0x18($sp)
    /* 163418 8007B358 AFA6001C */  sw         $a2, 0x1C($sp)
    /* 16341C 8007B35C 0C001C9B */  jal        func_8000726C_7E6C
    /* 163420 8007B360 00C02825 */   or        $a1, $a2, $zero
    /* 163424 8007B364 10400006 */  beqz       $v0, .L8007B380_163440
    /* 163428 8007B368 8FA40018 */   lw        $a0, 0x18($sp)
    /* 16342C 8007B36C 8FA40018 */  lw         $a0, 0x18($sp)
    /* 163430 8007B370 0C001CEE */  jal        func_800073B8_7FB8
    /* 163434 8007B374 8FA5001C */   lw        $a1, 0x1C($sp)
    /* 163438 8007B378 10000003 */  b          .L8007B388_163448
    /* 16343C 8007B37C 00000000 */   nop
  .L8007B380_163440:
    /* 163440 8007B380 0C001CB3 */  jal        func_800072CC_7ECC
    /* 163444 8007B384 8FA5001C */   lw        $a1, 0x1C($sp)
  .L8007B388_163448:
    /* 163448 8007B388 3C0C8005 */  lui        $t4, %hi(buildingInteriorToLoadId)
    /* 16344C 8007B38C 8D8C2548 */  lw         $t4, %lo(buildingInteriorToLoadId)($t4)
    /* 163450 8007B390 3C0E8004 */  lui        $t6, %hi(D_80047970)
    /* 163454 8007B394 25CE7970 */  addiu      $t6, $t6, %lo(D_80047970)
    /* 163458 8007B398 000C6840 */  sll        $t5, $t4, 1
    /* 16345C 8007B39C 01AE1821 */  addu       $v1, $t5, $t6
    /* 163460 8007B3A0 10000055 */  b          .L8007B4F8_1635B8
    /* 163464 8007B3A4 84640000 */   lh        $a0, 0x0($v1)
    /* 163468 8007B3A8 00C02825 */  or         $a1, $a2, $zero
    /* 16346C 8007B3AC 000627C3 */  sra        $a0, $a2, 31
    /* 163470 8007B3B0 0C001CB3 */  jal        func_800072CC_7ECC
    /* 163474 8007B3B4 AFA6002C */   sw        $a2, 0x2C($sp)
    /* 163478 8007B3B8 0C01ED47 */  jal        func_8007B51C_1635DC
    /* 16347C 8007B3BC 8FA4002C */   lw        $a0, 0x2C($sp)
    /* 163480 8007B3C0 3C0F8005 */  lui        $t7, %hi(buildingInteriorToLoadId)
    /* 163484 8007B3C4 8DEF2548 */  lw         $t7, %lo(buildingInteriorToLoadId)($t7)
    /* 163488 8007B3C8 3C198004 */  lui        $t9, %hi(D_80047970)
    /* 16348C 8007B3CC 27397970 */  addiu      $t9, $t9, %lo(D_80047970)
    /* 163490 8007B3D0 000FC040 */  sll        $t8, $t7, 1
    /* 163494 8007B3D4 03191821 */  addu       $v1, $t8, $t9
    /* 163498 8007B3D8 AFA20024 */  sw         $v0, 0x24($sp)
    /* 16349C 8007B3DC 10000046 */  b          .L8007B4F8_1635B8
    /* 1634A0 8007B3E0 84640000 */   lh        $a0, 0x0($v1)
    /* 1634A4 8007B3E4 00C02825 */  or         $a1, $a2, $zero
    /* 1634A8 8007B3E8 0C001CEE */  jal        func_800073B8_7FB8
    /* 1634AC 8007B3EC 000627C3 */   sra       $a0, $a2, 31
    /* 1634B0 8007B3F0 3C088005 */  lui        $t0, %hi(buildingInteriorToLoadId)
    /* 1634B4 8007B3F4 8D082548 */  lw         $t0, %lo(buildingInteriorToLoadId)($t0)
    /* 1634B8 8007B3F8 3C0A8004 */  lui        $t2, %hi(D_80047970)
    /* 1634BC 8007B3FC 254A7970 */  addiu      $t2, $t2, %lo(D_80047970)
    /* 1634C0 8007B400 00084840 */  sll        $t1, $t0, 1
    /* 1634C4 8007B404 012A1821 */  addu       $v1, $t1, $t2
    /* 1634C8 8007B408 1000003B */  b          .L8007B4F8_1635B8
    /* 1634CC 8007B40C 84640000 */   lh        $a0, 0x0($v1)
    /* 1634D0 8007B410 3C0B8005 */  lui        $t3, %hi(buildingInteriorToLoadId)
    /* 1634D4 8007B414 8D6B2548 */  lw         $t3, %lo(buildingInteriorToLoadId)($t3)
    /* 1634D8 8007B418 3C0D8004 */  lui        $t5, %hi(D_80047970)
    /* 1634DC 8007B41C 25AD7970 */  addiu      $t5, $t5, %lo(D_80047970)
    /* 1634E0 8007B420 3C0E800E */  lui        $t6, %hi(D_800E662C)
    /* 1634E4 8007B424 000B6040 */  sll        $t4, $t3, 1
    /* 1634E8 8007B428 8DCE662C */  lw         $t6, %lo(D_800E662C)($t6)
    /* 1634EC 8007B42C 018D1821 */  addu       $v1, $t4, $t5
    /* 1634F0 8007B430 84640000 */  lh         $a0, 0x0($v1)
    /* 1634F4 8007B434 240F0001 */  addiu      $t7, $zero, 0x1
    /* 1634F8 8007B438 01CFC004 */  sllv       $t8, $t7, $t6
    /* 1634FC 8007B43C 0098C824 */  and        $t9, $a0, $t8
    /* 163500 8007B440 1720002D */  bnez       $t9, .L8007B4F8_1635B8
    /* 163504 8007B444 00C02825 */   or        $a1, $a2, $zero
    /* 163508 8007B448 0C001CB3 */  jal        func_800072CC_7ECC
    /* 16350C 8007B44C 000627C3 */   sra       $a0, $a2, 31
    /* 163510 8007B450 3C088005 */  lui        $t0, %hi(buildingInteriorToLoadId)
    /* 163514 8007B454 8D082548 */  lw         $t0, %lo(buildingInteriorToLoadId)($t0)
    /* 163518 8007B458 3C0A8004 */  lui        $t2, %hi(D_80047970)
    /* 16351C 8007B45C 254A7970 */  addiu      $t2, $t2, %lo(D_80047970)
    /* 163520 8007B460 00084840 */  sll        $t1, $t0, 1
    /* 163524 8007B464 012A1821 */  addu       $v1, $t1, $t2
    /* 163528 8007B468 10000023 */  b          .L8007B4F8_1635B8
    /* 16352C 8007B46C 84640000 */   lh        $a0, 0x0($v1)
    /* 163530 8007B470 3C0B8005 */  lui        $t3, %hi(buildingInteriorToLoadId)
    /* 163534 8007B474 8D6B2548 */  lw         $t3, %lo(buildingInteriorToLoadId)($t3)
    /* 163538 8007B478 3C0D8004 */  lui        $t5, %hi(D_80047970)
    /* 16353C 8007B47C 25AD7970 */  addiu      $t5, $t5, %lo(D_80047970)
    /* 163540 8007B480 3C0F800E */  lui        $t7, %hi(D_800E662C)
    /* 163544 8007B484 000B6040 */  sll        $t4, $t3, 1
    /* 163548 8007B488 8DEF662C */  lw         $t7, %lo(D_800E662C)($t7)
    /* 16354C 8007B48C 018D1821 */  addu       $v1, $t4, $t5
    /* 163550 8007B490 84640000 */  lh         $a0, 0x0($v1)
    /* 163554 8007B494 240E0001 */  addiu      $t6, $zero, 0x1
    /* 163558 8007B498 01EEC004 */  sllv       $t8, $t6, $t7
    /* 16355C 8007B49C 0098C824 */  and        $t9, $a0, $t8
    /* 163560 8007B4A0 17200015 */  bnez       $t9, .L8007B4F8_1635B8
    /* 163564 8007B4A4 00C02825 */   or        $a1, $a2, $zero
    /* 163568 8007B4A8 0C001CEE */  jal        func_800073B8_7FB8
    /* 16356C 8007B4AC 000627C3 */   sra       $a0, $a2, 31
    /* 163570 8007B4B0 3C088005 */  lui        $t0, %hi(buildingInteriorToLoadId)
    /* 163574 8007B4B4 8D082548 */  lw         $t0, %lo(buildingInteriorToLoadId)($t0)
    /* 163578 8007B4B8 3C0A8004 */  lui        $t2, %hi(D_80047970)
    /* 16357C 8007B4BC 254A7970 */  addiu      $t2, $t2, %lo(D_80047970)
    /* 163580 8007B4C0 00084840 */  sll        $t1, $t0, 1
    /* 163584 8007B4C4 012A1821 */  addu       $v1, $t1, $t2
    /* 163588 8007B4C8 1000000B */  b          .L8007B4F8_1635B8
    /* 16358C 8007B4CC 84640000 */   lh        $a0, 0x0($v1)
  .L8007B4D0_163590:
    /* 163590 8007B4D0 3C04800A */  lui        $a0, %hi(D_800A49EC)
    /* 163594 8007B4D4 0C00731B */  jal        osSyncPrintf
    /* 163598 8007B4D8 248449EC */   addiu     $a0, $a0, %lo(D_800A49EC)
    /* 16359C 8007B4DC 3C0B8005 */  lui        $t3, %hi(buildingInteriorToLoadId)
    /* 1635A0 8007B4E0 8D6B2548 */  lw         $t3, %lo(buildingInteriorToLoadId)($t3)
    /* 1635A4 8007B4E4 3C0D8004 */  lui        $t5, %hi(D_80047970)
    /* 1635A8 8007B4E8 25AD7970 */  addiu      $t5, $t5, %lo(D_80047970)
    /* 1635AC 8007B4EC 000B6040 */  sll        $t4, $t3, 1
    /* 1635B0 8007B4F0 018D1821 */  addu       $v1, $t4, $t5
    /* 1635B4 8007B4F4 84640000 */  lh         $a0, 0x0($v1)
  .L8007B4F8_1635B8:
    /* 1635B8 8007B4F8 8FAE0030 */  lw         $t6, 0x30($sp)
    /* 1635BC 8007B4FC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1635C0 8007B500 240F0001 */  addiu      $t7, $zero, 0x1
    /* 1635C4 8007B504 01CFC004 */  sllv       $t8, $t7, $t6
    /* 1635C8 8007B508 0098C825 */  or         $t9, $a0, $t8
    /* 1635CC 8007B50C 8FA20024 */  lw         $v0, 0x24($sp)
    /* 1635D0 8007B510 A4790000 */  sh         $t9, 0x0($v1)
    /* 1635D4 8007B514 03E00008 */  jr         $ra
    /* 1635D8 8007B518 27BD0030 */   addiu     $sp, $sp, 0x30
endlabel func_8007B2F0_1633B0
