nonmatching func_800D5424_E43D4, 0x164

glabel func_800D5424_E43D4
    /* E43D4 800D5424 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* E43D8 800D5428 AFBF001C */  sw         $ra, 0x1C($sp)
    /* E43DC 800D542C AFA40038 */  sw         $a0, 0x38($sp)
    /* E43E0 800D5430 AFA5003C */  sw         $a1, 0x3C($sp)
    /* E43E4 800D5434 AFA60040 */  sw         $a2, 0x40($sp)
    /* E43E8 800D5438 AFA70044 */  sw         $a3, 0x44($sp)
    /* E43EC 800D543C 24050001 */  addiu      $a1, $zero, 0x1
    /* E43F0 800D5440 0C030675 */  jal        func_800C19D4_D0984
    /* E43F4 800D5444 24040010 */   addiu     $a0, $zero, 0x10
    /* E43F8 800D5448 240A001C */  addiu      $t2, $zero, 0x1C
    /* E43FC 800D544C 004A0019 */  multu      $v0, $t2
    /* E4400 800D5450 3C098015 */  lui        $t1, %hi(D_80154318)
    /* E4404 800D5454 25294318 */  addiu      $t1, $t1, %lo(D_80154318)
    /* E4408 800D5458 A7A2002E */  sh         $v0, 0x2E($sp)
    /* E440C 800D545C 2401FFFD */  addiu      $at, $zero, -0x3
    /* E4410 800D5460 87B9002E */  lh         $t9, 0x2E($sp)
    /* E4414 800D5464 00007012 */  mflo       $t6
    /* E4418 800D5468 012E7821 */  addu       $t7, $t1, $t6
    /* E441C 800D546C 85F80004 */  lh         $t8, 0x4($t7)
    /* E4420 800D5470 10410040 */  beq        $v0, $at, .L800D5574_E4524
    /* E4424 800D5474 A7B8002C */   sh        $t8, 0x2C($sp)
    /* E4428 800D5478 032A0019 */  multu      $t9, $t2
    /* E442C 800D547C 87A4003A */  lh         $a0, 0x3A($sp)
    /* E4430 800D5480 87A5003E */  lh         $a1, 0x3E($sp)
    /* E4434 800D5484 87A60042 */  lh         $a2, 0x42($sp)
    /* E4438 800D5488 93AC004B */  lbu        $t4, 0x4B($sp)
    /* E443C 800D548C 93AD004F */  lbu        $t5, 0x4F($sp)
    /* E4440 800D5490 24020001 */  addiu      $v0, $zero, 0x1
    /* E4444 800D5494 24080002 */  addiu      $t0, $zero, 0x2
    /* E4448 800D5498 93A70047 */  lbu        $a3, 0x47($sp)
    /* E444C 800D549C AFAC0010 */  sw         $t4, 0x10($sp)
    /* E4450 800D54A0 00005812 */  mflo       $t3
    /* E4454 800D54A4 012B1821 */  addu       $v1, $t1, $t3
    /* E4458 800D54A8 A4620002 */  sh         $v0, 0x2($v1)
    /* E445C 800D54AC A068000E */  sb         $t0, 0xE($v1)
    /* E4460 800D54B0 A062000F */  sb         $v0, 0xF($v1)
    /* E4464 800D54B4 A0680010 */  sb         $t0, 0x10($v1)
    /* E4468 800D54B8 AFA30028 */  sw         $v1, 0x28($sp)
    /* E446C 800D54BC A4640008 */  sh         $a0, 0x8($v1)
    /* E4470 800D54C0 A465000A */  sh         $a1, 0xA($v1)
    /* E4474 800D54C4 A466000C */  sh         $a2, 0xC($v1)
    /* E4478 800D54C8 0C0357F5 */  jal        func_800D5FD4_E4F84
    /* E447C 800D54CC AFAD0014 */   sw        $t5, 0x14($sp)
    /* E4480 800D54D0 8FA30028 */  lw         $v1, 0x28($sp)
    /* E4484 800D54D4 24680008 */  addiu      $t0, $v1, 0x8
    /* E4488 800D54D8 A1020009 */  sb         $v0, 0x9($t0)
    /* E448C 800D54DC 93AF004F */  lbu        $t7, 0x4F($sp)
    /* E4490 800D54E0 93AE004B */  lbu        $t6, 0x4B($sp)
    /* E4494 800D54E4 AFA80024 */  sw         $t0, 0x24($sp)
    /* E4498 800D54E8 93A70047 */  lbu        $a3, 0x47($sp)
    /* E449C 800D54EC 87A60042 */  lh         $a2, 0x42($sp)
    /* E44A0 800D54F0 87A5003E */  lh         $a1, 0x3E($sp)
    /* E44A4 800D54F4 87A4003A */  lh         $a0, 0x3A($sp)
    /* E44A8 800D54F8 AFAF0014 */  sw         $t7, 0x14($sp)
    /* E44AC 800D54FC 0C0357F5 */  jal        func_800D5FD4_E4F84
    /* E44B0 800D5500 AFAE0010 */   sw        $t6, 0x10($sp)
    /* E44B4 800D5504 8FB80024 */  lw         $t8, 0x24($sp)
    /* E44B8 800D5508 A302000A */  sb         $v0, 0xA($t8)
    /* E44BC 800D550C 93AB004F */  lbu        $t3, 0x4F($sp)
    /* E44C0 800D5510 93B9004B */  lbu        $t9, 0x4B($sp)
    /* E44C4 800D5514 93A70047 */  lbu        $a3, 0x47($sp)
    /* E44C8 800D5518 87A60042 */  lh         $a2, 0x42($sp)
    /* E44CC 800D551C 87A5003E */  lh         $a1, 0x3E($sp)
    /* E44D0 800D5520 87A4003A */  lh         $a0, 0x3A($sp)
    /* E44D4 800D5524 AFAB0014 */  sw         $t3, 0x14($sp)
    /* E44D8 800D5528 0C0357F5 */  jal        func_800D5FD4_E4F84
    /* E44DC 800D552C AFB90010 */   sw        $t9, 0x10($sp)
    /* E44E0 800D5530 8FAC0024 */  lw         $t4, 0x24($sp)
    /* E44E4 800D5534 3C188015 */  lui        $t8, %hi(D_80154318)
    /* E44E8 800D5538 27184318 */  addiu      $t8, $t8, %lo(D_80154318)
    /* E44EC 800D553C A182000B */  sb         $v0, 0xB($t4)
    /* E44F0 800D5540 87AD002C */  lh         $t5, 0x2C($sp)
    /* E44F4 800D5544 000D70C0 */  sll        $t6, $t5, 3
    /* E44F8 800D5548 01CD7023 */  subu       $t6, $t6, $t5
    /* E44FC 800D554C 000E7080 */  sll        $t6, $t6, 2
    /* E4500 800D5550 25CF0008 */  addiu      $t7, $t6, 0x8
    /* E4504 800D5554 01F81821 */  addu       $v1, $t7, $t8
    /* E4508 800D5558 A4600000 */  sh         $zero, 0x0($v1)
    /* E450C 800D555C 93B90047 */  lbu        $t9, 0x47($sp)
    /* E4510 800D5560 A0790002 */  sb         $t9, 0x2($v1)
    /* E4514 800D5564 93AB004B */  lbu        $t3, 0x4B($sp)
    /* E4518 800D5568 A06B0003 */  sb         $t3, 0x3($v1)
    /* E451C 800D556C 93AC004F */  lbu        $t4, 0x4F($sp)
    /* E4520 800D5570 A06C0004 */  sb         $t4, 0x4($v1)
  .L800D5574_E4524:
    /* E4524 800D5574 8FBF001C */  lw         $ra, 0x1C($sp)
    /* E4528 800D5578 87A2002E */  lh         $v0, 0x2E($sp)
    /* E452C 800D557C 27BD0038 */  addiu      $sp, $sp, 0x38
    /* E4530 800D5580 03E00008 */  jr         $ra
    /* E4534 800D5584 00000000 */   nop
endlabel func_800D5424_E43D4
