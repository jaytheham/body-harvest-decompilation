nonmatching func_800B03CC_BF37C, 0x2F8

glabel func_800B03CC_BF37C
    /* BF37C 800B03CC 27BDFF90 */  addiu      $sp, $sp, -0x70
    /* BF380 800B03D0 AFB20020 */  sw         $s2, 0x20($sp)
    /* BF384 800B03D4 3C128004 */  lui        $s2, %hi(currentLevel)
    /* BF388 800B03D8 26527F90 */  addiu      $s2, $s2, %lo(currentLevel)
    /* BF38C 800B03DC 8E4E0000 */  lw         $t6, 0x0($s2)
    /* BF390 800B03E0 AFB1001C */  sw         $s1, 0x1C($sp)
    /* BF394 800B03E4 24110005 */  addiu      $s1, $zero, 0x5
    /* BF398 800B03E8 AFB00018 */  sw         $s0, 0x18($sp)
    /* BF39C 800B03EC 309000FF */  andi       $s0, $a0, 0xFF
    /* BF3A0 800B03F0 AFBF003C */  sw         $ra, 0x3C($sp)
    /* BF3A4 800B03F4 AFBE0038 */  sw         $fp, 0x38($sp)
    /* BF3A8 800B03F8 AFB70034 */  sw         $s7, 0x34($sp)
    /* BF3AC 800B03FC AFB60030 */  sw         $s6, 0x30($sp)
    /* BF3B0 800B0400 AFB5002C */  sw         $s5, 0x2C($sp)
    /* BF3B4 800B0404 AFB40028 */  sw         $s4, 0x28($sp)
    /* BF3B8 800B0408 AFB30024 */  sw         $s3, 0x24($sp)
    /* BF3BC 800B040C AFA40070 */  sw         $a0, 0x70($sp)
    /* BF3C0 800B0410 AFA50074 */  sw         $a1, 0x74($sp)
    /* BF3C4 800B0414 122E0005 */  beq        $s1, $t6, .L800B042C_BF3DC
    /* BF3C8 800B0418 AFA60078 */   sw        $a2, 0x78($sp)
    /* BF3CC 800B041C 3C058007 */  lui        $a1, %hi(D_8006AA70)
    /* BF3D0 800B0420 8CA5AA70 */  lw         $a1, %lo(D_8006AA70)($a1)
    /* BF3D4 800B0424 0C004690 */  jal        func_80011A40_12640
    /* BF3D8 800B0428 24040006 */   addiu     $a0, $zero, 0x6
  .L800B042C_BF3DC:
    /* BF3DC 800B042C 00107880 */  sll        $t7, $s0, 2
    /* BF3E0 800B0430 01F07821 */  addu       $t7, $t7, $s0
    /* BF3E4 800B0434 000F78C0 */  sll        $t7, $t7, 3
    /* BF3E8 800B0438 3C048004 */  lui        $a0, %hi(D_8003CEC6)
    /* BF3EC 800B043C 008F2021 */  addu       $a0, $a0, $t7
    /* BF3F0 800B0440 0C01E55B */  jal        func_8007956C_8851C
    /* BF3F4 800B0444 9084CEC6 */   lbu       $a0, %lo(D_8003CEC6)($a0)
    /* BF3F8 800B0448 305800FF */  andi       $t8, $v0, 0xFF
    /* BF3FC 800B044C 240100FF */  addiu      $at, $zero, 0xFF
    /* BF400 800B0450 304300FF */  andi       $v1, $v0, 0xFF
    /* BF404 800B0454 17010003 */  bne        $t8, $at, .L800B0464_BF414
    /* BF408 800B0458 A3A2005E */   sb        $v0, 0x5E($sp)
    /* BF40C 800B045C 1000008D */  b          .L800B0694_BF644
    /* BF410 800B0460 240200FF */   addiu     $v0, $zero, 0xFF
  .L800B0464_BF414:
    /* BF414 800B0464 0003C880 */  sll        $t9, $v1, 2
    /* BF418 800B0468 3C148005 */  lui        $s4, %hi(alienInstances)
    /* BF41C 800B046C 0323C821 */  addu       $t9, $t9, $v1
    /* BF420 800B0470 87A40076 */  lh         $a0, 0x76($sp)
    /* BF424 800B0474 87A5007A */  lh         $a1, 0x7A($sp)
    /* BF428 800B0478 26948198 */  addiu      $s4, $s4, %lo(alienInstances)
    /* BF42C 800B047C 0019C900 */  sll        $t9, $t9, 4
    /* BF430 800B0480 02999821 */  addu       $s3, $s4, $t9
    /* BF434 800B0484 A3A3005F */  sb         $v1, 0x5F($sp)
    /* BF438 800B0488 A6640000 */  sh         $a0, 0x0($s3)
    /* BF43C 800B048C 0C02C3C8 */  jal        func_800B0F20_BFED0
    /* BF440 800B0490 A6650004 */   sh        $a1, 0x4($s3)
    /* BF444 800B0494 8E480000 */  lw         $t0, 0x0($s2)
    /* BF448 800B0498 A262001B */  sb         $v0, 0x1B($s3)
    /* BF44C 800B049C A660002C */  sh         $zero, 0x2C($s3)
    /* BF450 800B04A0 16280005 */  bne        $s1, $t0, .L800B04B8_BF468
    /* BF454 800B04A4 240A4000 */   addiu     $t2, $zero, 0x4000
    /* BF458 800B04A8 A660000E */  sh         $zero, 0xE($s3)
    /* BF45C 800B04AC 8669000E */  lh         $t1, 0xE($s3)
    /* BF460 800B04B0 10000004 */  b          .L800B04C4_BF474
    /* BF464 800B04B4 A6690006 */   sh        $t1, 0x6($s3)
  .L800B04B8_BF468:
    /* BF468 800B04B8 A66A000E */  sh         $t2, 0xE($s3)
    /* BF46C 800B04BC 866B000E */  lh         $t3, 0xE($s3)
    /* BF470 800B04C0 A66B0006 */  sh         $t3, 0x6($s3)
  .L800B04C4_BF474:
    /* BF474 800B04C4 926C0025 */  lbu        $t4, 0x25($s3)
    /* BF478 800B04C8 87AE0076 */  lh         $t6, 0x76($sp)
    /* BF47C 800B04CC 3C018014 */  lui        $at, %hi(D_80140AC4)
    /* BF480 800B04D0 000C6880 */  sll        $t5, $t4, 2
    /* BF484 800B04D4 01AC6821 */  addu       $t5, $t5, $t4
    /* BF488 800B04D8 000D6900 */  sll        $t5, $t5, 4
    /* BF48C 800B04DC 028D1021 */  addu       $v0, $s4, $t5
    /* BF490 800B04E0 A44E0024 */  sh         $t6, 0x24($v0)
    /* BF494 800B04E4 87AF007A */  lh         $t7, 0x7A($sp)
    /* BF498 800B04E8 3C048014 */  lui        $a0, %hi(D_80142C14)
    /* BF49C 800B04EC 24842C14 */  addiu      $a0, $a0, %lo(D_80142C14)
    /* BF4A0 800B04F0 A44F0026 */  sh         $t7, 0x26($v0)
    /* BF4A4 800B04F4 93A5005F */  lbu        $a1, 0x5F($sp)
    /* BF4A8 800B04F8 AC330AC4 */  sw         $s3, %lo(D_80140AC4)($at)
    /* BF4AC 800B04FC 92660025 */  lbu        $a2, 0x25($s3)
    /* BF4B0 800B0500 AFA20058 */  sw         $v0, 0x58($sp)
    /* BF4B4 800B0504 0C00731B */  jal        osSyncPrintf
    /* BF4B8 800B0508 AFA5004C */   sw        $a1, 0x4C($sp)
    /* BF4BC 800B050C 93B8005F */  lbu        $t8, 0x5F($sp)
    /* BF4C0 800B0510 00104880 */  sll        $t1, $s0, 2
    /* BF4C4 800B0514 3C168014 */  lui        $s6, %hi(D_80140AB0)
    /* BF4C8 800B0518 0018C880 */  sll        $t9, $t8, 2
    /* BF4CC 800B051C 0338C821 */  addu       $t9, $t9, $t8
    /* BF4D0 800B0520 0019C900 */  sll        $t9, $t9, 4
    /* BF4D4 800B0524 01304821 */  addu       $t1, $t1, $s0
    /* BF4D8 800B0528 3C0A8004 */  lui        $t2, %hi(D_8003CEC0)
    /* BF4DC 800B052C 26D60AB0 */  addiu      $s6, $s6, %lo(D_80140AB0)
    /* BF4E0 800B0530 02994021 */  addu       $t0, $s4, $t9
    /* BF4E4 800B0534 254ACEC0 */  addiu      $t2, $t2, %lo(D_8003CEC0)
    /* BF4E8 800B0538 000948C0 */  sll        $t1, $t1, 3
    /* BF4EC 800B053C 3C1E8014 */  lui        $fp, %hi(D_80142C28)
    /* BF4F0 800B0540 3C17800B */  lui        $s7, %hi(func_800B02FC_BF2AC)
    /* BF4F4 800B0544 AEC80000 */  sw         $t0, 0x0($s6)
    /* BF4F8 800B0548 26F702FC */  addiu      $s7, $s7, %lo(func_800B02FC_BF2AC)
    /* BF4FC 800B054C 27DE2C28 */  addiu      $fp, $fp, %lo(D_80142C28)
    /* BF500 800B0550 012AA821 */  addu       $s5, $t1, $t2
    /* BF504 800B0554 24110001 */  addiu      $s1, $zero, 0x1
    /* BF508 800B0558 001158C0 */  sll        $t3, $s1, 3
  .L800B055C_BF50C:
    /* BF50C 800B055C 02AB9021 */  addu       $s2, $s5, $t3
    /* BF510 800B0560 92440006 */  lbu        $a0, 0x6($s2)
    /* BF514 800B0564 5080003B */  beql       $a0, $zero, .L800B0654_BF604
    /* BF518 800B0568 93A8005E */   lbu       $t0, 0x5E($sp)
    /* BF51C 800B056C 0C01E55B */  jal        func_8007956C_8851C
    /* BF520 800B0570 00000000 */   nop
    /* BF524 800B0574 304C00FF */  andi       $t4, $v0, 0xFF
    /* BF528 800B0578 240100FF */  addiu      $at, $zero, 0xFF
    /* BF52C 800B057C 15810008 */  bne        $t4, $at, .L800B05A0_BF550
    /* BF530 800B0580 305000FF */   andi      $s0, $v0, 0xFF
    /* BF534 800B0584 8E6D0020 */  lw         $t5, 0x20($s3)
    /* BF538 800B0588 262E000B */  addiu      $t6, $s1, 0xB
    /* BF53C 800B058C 240F0001 */  addiu      $t7, $zero, 0x1
    /* BF540 800B0590 01CFC004 */  sllv       $t8, $t7, $t6
    /* BF544 800B0594 01B8C825 */  or         $t9, $t5, $t8
    /* BF548 800B0598 10000027 */  b          .L800B0638_BF5E8
    /* BF54C 800B059C AE790020 */   sw        $t9, 0x20($s3)
  .L800B05A0_BF550:
    /* BF550 800B05A0 00104080 */  sll        $t0, $s0, 2
    /* BF554 800B05A4 01104021 */  addu       $t0, $t0, $s0
    /* BF558 800B05A8 86490004 */  lh         $t1, 0x4($s2)
    /* BF55C 800B05AC 87AA0076 */  lh         $t2, 0x76($sp)
    /* BF560 800B05B0 87AC007A */  lh         $t4, 0x7A($sp)
    /* BF564 800B05B4 864F0000 */  lh         $t7, 0x0($s2)
    /* BF568 800B05B8 00084100 */  sll        $t0, $t0, 4
    /* BF56C 800B05BC 93AD005F */  lbu        $t5, 0x5F($sp)
    /* BF570 800B05C0 02881021 */  addu       $v0, $s4, $t0
    /* BF574 800B05C4 012A5821 */  addu       $t3, $t1, $t2
    /* BF578 800B05C8 018F7023 */  subu       $t6, $t4, $t7
    /* BF57C 800B05CC A44B0000 */  sh         $t3, 0x0($v0)
    /* BF580 800B05D0 A44E0004 */  sh         $t6, 0x4($v0)
    /* BF584 800B05D4 A04D0025 */  sb         $t5, 0x25($v0)
    /* BF588 800B05D8 9278001B */  lbu        $t8, 0x1B($s3)
    /* BF58C 800B05DC 8FB9004C */  lw         $t9, 0x4C($sp)
    /* BF590 800B05E0 24080003 */  addiu      $t0, $zero, 0x3
    /* BF594 800B05E4 A3B10061 */  sb         $s1, 0x61($sp)
    /* BF598 800B05E8 A3A80060 */  sb         $t0, 0x60($sp)
    /* BF59C 800B05EC A3B00068 */  sb         $s0, 0x68($sp)
    /* BF5A0 800B05F0 AFB7006C */  sw         $s7, 0x6C($sp)
    /* BF5A4 800B05F4 27A40060 */  addiu      $a0, $sp, 0x60
    /* BF5A8 800B05F8 A058001B */  sb         $t8, 0x1B($v0)
    /* BF5AC 800B05FC 0C02B915 */  jal        func_800AE454_BD404
    /* BF5B0 800B0600 A3B90062 */   sb        $t9, 0x62($sp)
    /* BF5B4 800B0604 03C02025 */  or         $a0, $fp, $zero
    /* BF5B8 800B0608 0C00731B */  jal        osSyncPrintf
    /* BF5BC 800B060C 02002825 */   or        $a1, $s0, $zero
    /* BF5C0 800B0610 8FA90058 */  lw         $t1, 0x58($sp)
    /* BF5C4 800B0614 00105880 */  sll        $t3, $s0, 2
    /* BF5C8 800B0618 01705821 */  addu       $t3, $t3, $s0
    /* BF5CC 800B061C 000B5900 */  sll        $t3, $t3, 4
    /* BF5D0 800B0620 00117880 */  sll        $t7, $s1, 2
    /* BF5D4 800B0624 01315021 */  addu       $t2, $t1, $s1
    /* BF5D8 800B0628 A150FFFF */  sb         $s0, -0x1($t2)
    /* BF5DC 800B062C 02CF7021 */  addu       $t6, $s6, $t7
    /* BF5E0 800B0630 028B6021 */  addu       $t4, $s4, $t3
    /* BF5E4 800B0634 ADCC0000 */  sw         $t4, 0x0($t6)
  .L800B0638_BF5E8:
    /* BF5E8 800B0638 26310001 */  addiu      $s1, $s1, 0x1
    /* BF5EC 800B063C 00116C00 */  sll        $t5, $s1, 16
    /* BF5F0 800B0640 000D8C03 */  sra        $s1, $t5, 16
    /* BF5F4 800B0644 2A210005 */  slti       $at, $s1, 0x5
    /* BF5F8 800B0648 5420FFC4 */  bnel       $at, $zero, .L800B055C_BF50C
    /* BF5FC 800B064C 001158C0 */   sll       $t3, $s1, 3
    /* BF600 800B0650 93A8005E */  lbu        $t0, 0x5E($sp)
  .L800B0654_BF604:
    /* BF604 800B0654 3C09800B */  lui        $t1, %hi(func_800B0288_BF238)
    /* BF608 800B0658 24190003 */  addiu      $t9, $zero, 0x3
    /* BF60C 800B065C 25290288 */  addiu      $t1, $t1, %lo(func_800B0288_BF238)
    /* BF610 800B0660 A3B90060 */  sb         $t9, 0x60($sp)
    /* BF614 800B0664 AFA9006C */  sw         $t1, 0x6C($sp)
    /* BF618 800B0668 27A40060 */  addiu      $a0, $sp, 0x60
    /* BF61C 800B066C 0C02B915 */  jal        func_800AE454_BD404
    /* BF620 800B0670 A3A80068 */   sb        $t0, 0x68($sp)
    /* BF624 800B0674 3C018014 */  lui        $at, %hi(D_8013D8C0)
    /* BF628 800B0678 AC20D8C0 */  sw         $zero, %lo(D_8013D8C0)($at)
    /* BF62C 800B067C 3C018015 */  lui        $at, %hi(D_8014F828)
    /* BF630 800B0680 AC20F828 */  sw         $zero, %lo(D_8014F828)($at)
    /* BF634 800B0684 3C018015 */  lui        $at, %hi(D_801493E2)
    /* BF638 800B0688 240A0001 */  addiu      $t2, $zero, 0x1
    /* BF63C 800B068C A42A93E2 */  sh         $t2, %lo(D_801493E2)($at)
    /* BF640 800B0690 93A2005F */  lbu        $v0, 0x5F($sp)
  .L800B0694_BF644:
    /* BF644 800B0694 8FBF003C */  lw         $ra, 0x3C($sp)
    /* BF648 800B0698 8FB00018 */  lw         $s0, 0x18($sp)
    /* BF64C 800B069C 8FB1001C */  lw         $s1, 0x1C($sp)
    /* BF650 800B06A0 8FB20020 */  lw         $s2, 0x20($sp)
    /* BF654 800B06A4 8FB30024 */  lw         $s3, 0x24($sp)
    /* BF658 800B06A8 8FB40028 */  lw         $s4, 0x28($sp)
    /* BF65C 800B06AC 8FB5002C */  lw         $s5, 0x2C($sp)
    /* BF660 800B06B0 8FB60030 */  lw         $s6, 0x30($sp)
    /* BF664 800B06B4 8FB70034 */  lw         $s7, 0x34($sp)
    /* BF668 800B06B8 8FBE0038 */  lw         $fp, 0x38($sp)
    /* BF66C 800B06BC 03E00008 */  jr         $ra
    /* BF670 800B06C0 27BD0070 */   addiu     $sp, $sp, 0x70
endlabel func_800B03CC_BF37C
