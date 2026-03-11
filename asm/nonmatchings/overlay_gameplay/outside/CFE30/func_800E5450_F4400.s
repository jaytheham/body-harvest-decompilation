nonmatching func_800E5450_F4400, 0xD0

glabel func_800E5450_F4400
    /* F4400 800E5450 27BDFFF8 */  addiu      $sp, $sp, -0x8
    /* F4404 800E5454 3C078015 */  lui        $a3, %hi(D_80152D00)
    /* F4408 800E5458 AFA5000C */  sw         $a1, 0xC($sp)
    /* F440C 800E545C 00803025 */  or         $a2, $a0, $zero
    /* F4410 800E5460 24020040 */  addiu      $v0, $zero, 0x40
    /* F4414 800E5464 24E72D00 */  addiu      $a3, $a3, %lo(D_80152D00)
    /* F4418 800E5468 00001825 */  or         $v1, $zero, $zero
    /* F441C 800E546C 24080018 */  addiu      $t0, $zero, 0x18
  .L800E5470_F4420:
    /* F4420 800E5470 00680019 */  multu      $v1, $t0
    /* F4424 800E5474 00007012 */  mflo       $t6
    /* F4428 800E5478 00EE7821 */  addu       $t7, $a3, $t6
    /* F442C 800E547C 85F80000 */  lh         $t8, 0x0($t7)
    /* F4430 800E5480 57000004 */  bnel       $t8, $zero, .L800E5494_F4444
    /* F4434 800E5484 24630001 */   addiu     $v1, $v1, 0x1
    /* F4438 800E5488 10000006 */  b          .L800E54A4_F4454
    /* F443C 800E548C 306200FF */   andi      $v0, $v1, 0xFF
    /* F4440 800E5490 24630001 */  addiu      $v1, $v1, 0x1
  .L800E5494_F4444:
    /* F4444 800E5494 307900FF */  andi       $t9, $v1, 0xFF
    /* F4448 800E5498 2B210040 */  slti       $at, $t9, 0x40
    /* F444C 800E549C 1420FFF4 */  bnez       $at, .L800E5470_F4420
    /* F4450 800E54A0 03201825 */   or        $v1, $t9, $zero
  .L800E54A4_F4454:
    /* F4454 800E54A4 24010040 */  addiu      $at, $zero, 0x40
    /* F4458 800E54A8 14410013 */  bne        $v0, $at, .L800E54F8_F44A8
    /* F445C 800E54AC 00001825 */   or        $v1, $zero, $zero
    /* F4460 800E54B0 3C028014 */  lui        $v0, %hi(D_8013DD1A)
    /* F4464 800E54B4 9042DD1A */  lbu        $v0, %lo(D_8013DD1A)($v0)
    /* F4468 800E54B8 93A50004 */  lbu        $a1, 0x4($sp)
  .L800E54BC_F446C:
    /* F446C 800E54BC 00680019 */  multu      $v1, $t0
    /* F4470 800E54C0 00004812 */  mflo       $t1
    /* F4474 800E54C4 00E95021 */  addu       $t2, $a3, $t1
    /* F4478 800E54C8 85440002 */  lh         $a0, 0x2($t2)
    /* F447C 800E54CC 0044082A */  slt        $at, $v0, $a0
    /* F4480 800E54D0 54200004 */  bnel       $at, $zero, .L800E54E4_F4494
    /* F4484 800E54D4 24630001 */   addiu     $v1, $v1, 0x1
    /* F4488 800E54D8 306500FF */  andi       $a1, $v1, 0xFF
    /* F448C 800E54DC 308200FF */  andi       $v0, $a0, 0xFF
    /* F4490 800E54E0 24630001 */  addiu      $v1, $v1, 0x1
  .L800E54E4_F4494:
    /* F4494 800E54E4 306B00FF */  andi       $t3, $v1, 0xFF
    /* F4498 800E54E8 29610040 */  slti       $at, $t3, 0x40
    /* F449C 800E54EC 1420FFF3 */  bnez       $at, .L800E54BC_F446C
    /* F44A0 800E54F0 01601825 */   or        $v1, $t3, $zero
    /* F44A4 800E54F4 30A200FF */  andi       $v0, $a1, 0xFF
  .L800E54F8_F44A8:
    /* F44A8 800E54F8 00480019 */  multu      $v0, $t0
    /* F44AC 800E54FC 240D000A */  addiu      $t5, $zero, 0xA
    /* F44B0 800E5500 240E0002 */  addiu      $t6, $zero, 0x2
    /* F44B4 800E5504 27BD0008 */  addiu      $sp, $sp, 0x8
    /* F44B8 800E5508 00006012 */  mflo       $t4
    /* F44BC 800E550C 00EC1821 */  addu       $v1, $a3, $t4
    /* F44C0 800E5510 A46D0002 */  sh         $t5, 0x2($v1)
    /* F44C4 800E5514 AC660008 */  sw         $a2, 0x8($v1)
    /* F44C8 800E5518 03E00008 */  jr         $ra
    /* F44CC 800E551C A46E0000 */   sh        $t6, 0x0($v1)
endlabel func_800E5450_F4400
