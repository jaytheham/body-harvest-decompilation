nonmatching func_800FC434_10B3E4, 0x134

glabel func_800FC434_10B3E4
    /* 10B3E4 800FC434 3C098006 */  lui        $t1, %hi(D_8005BB34)
    /* 10B3E8 800FC438 2529BB34 */  addiu      $t1, $t1, %lo(D_8005BB34)
    /* 10B3EC 800FC43C 8D220000 */  lw         $v0, 0x0($t1)
    /* 10B3F0 800FC440 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 10B3F4 800FC444 AFA50024 */  sw         $a1, 0x24($sp)
    /* 10B3F8 800FC448 00A0C025 */  or         $t8, $a1, $zero
    /* 10B3FC 800FC44C 03002825 */  or         $a1, $t8, $zero
    /* 10B400 800FC450 24430010 */  addiu      $v1, $v0, 0x10
    /* 10B404 800FC454 00E0C025 */  or         $t8, $a3, $zero
    /* 10B408 800FC458 AFA7002C */  sw         $a3, 0x2C($sp)
    /* 10B40C 800FC45C 24680010 */  addiu      $t0, $v1, 0x10
    /* 10B410 800FC460 87AB003A */  lh         $t3, 0x3A($sp)
    /* 10B414 800FC464 03003825 */  or         $a3, $t8, $zero
    /* 10B418 800FC468 AD230000 */  sw         $v1, 0x0($t1)
    /* 10B41C 800FC46C AD280000 */  sw         $t0, 0x0($t1)
    /* 10B420 800FC470 25180010 */  addiu      $t8, $t0, 0x10
    /* 10B424 800FC474 AFA40020 */  sw         $a0, 0x20($sp)
    /* 10B428 800FC478 AFA60028 */  sw         $a2, 0x28($sp)
    /* 10B42C 800FC47C AD380000 */  sw         $t8, 0x0($t1)
    /* 10B430 800FC480 A10B000C */  sb         $t3, 0xC($t0)
    /* 10B434 800FC484 A06B000C */  sb         $t3, 0xC($v1)
    /* 10B438 800FC488 A04B000C */  sb         $t3, 0xC($v0)
    /* 10B43C 800FC48C 87AC003E */  lh         $t4, 0x3E($sp)
    /* 10B440 800FC490 00807025 */  or         $t6, $a0, $zero
    /* 10B444 800FC494 01C02025 */  or         $a0, $t6, $zero
    /* 10B448 800FC498 A10C000D */  sb         $t4, 0xD($t0)
    /* 10B44C 800FC49C A06C000D */  sb         $t4, 0xD($v1)
    /* 10B450 800FC4A0 A04C000D */  sb         $t4, 0xD($v0)
    /* 10B454 800FC4A4 87AD0042 */  lh         $t5, 0x42($sp)
    /* 10B458 800FC4A8 00C07025 */  or         $t6, $a2, $zero
    /* 10B45C 800FC4AC 01C03025 */  or         $a2, $t6, $zero
    /* 10B460 800FC4B0 A10D000E */  sb         $t5, 0xE($t0)
    /* 10B464 800FC4B4 A06D000E */  sb         $t5, 0xE($v1)
    /* 10B468 800FC4B8 A04D000E */  sb         $t5, 0xE($v0)
    /* 10B46C 800FC4BC 87B90046 */  lh         $t9, 0x46($sp)
    /* 10B470 800FC4C0 24F8FFCE */  addiu      $t8, $a3, -0x32
    /* 10B474 800FC4C4 3C0D8006 */  lui        $t5, %hi(D_8005BB2C)
    /* 10B478 800FC4C8 AFB90004 */  sw         $t9, 0x4($sp)
    /* 10B47C 800FC4CC A119000F */  sb         $t9, 0xF($t0)
    /* 10B480 800FC4D0 8FAE0004 */  lw         $t6, 0x4($sp)
    /* 10B484 800FC4D4 24F90032 */  addiu      $t9, $a3, 0x32
    /* 10B488 800FC4D8 25ADBB2C */  addiu      $t5, $t5, %lo(D_8005BB2C)
    /* 10B48C 800FC4DC A06E000F */  sb         $t6, 0xF($v1)
    /* 10B490 800FC4E0 8FAF0004 */  lw         $t7, 0x4($sp)
    /* 10B494 800FC4E4 A4440000 */  sh         $a0, 0x0($v0)
    /* 10B498 800FC4E8 A4450002 */  sh         $a1, 0x2($v0)
    /* 10B49C 800FC4EC A04F000F */  sb         $t7, 0xF($v0)
    /* 10B4A0 800FC4F0 87A50036 */  lh         $a1, 0x36($sp)
    /* 10B4A4 800FC4F4 87A40032 */  lh         $a0, 0x32($sp)
    /* 10B4A8 800FC4F8 A4460004 */  sh         $a2, 0x4($v0)
    /* 10B4AC 800FC4FC A4780000 */  sh         $t8, 0x0($v1)
    /* 10B4B0 800FC500 A4650004 */  sh         $a1, 0x4($v1)
    /* 10B4B4 800FC504 A4640002 */  sh         $a0, 0x2($v1)
    /* 10B4B8 800FC508 A5190000 */  sh         $t9, 0x0($t0)
    /* 10B4BC 800FC50C A5050004 */  sh         $a1, 0x4($t0)
    /* 10B4C0 800FC510 A5040002 */  sh         $a0, 0x2($t0)
    /* 10B4C4 800FC514 8DAB0000 */  lw         $t3, 0x0($t5)
    /* 10B4C8 800FC518 3C0F0400 */  lui        $t7, (0x4000C2F >> 16)
    /* 10B4CC 800FC51C 35EF0C2F */  ori        $t7, $t7, (0x4000C2F & 0xFFFF)
    /* 10B4D0 800FC520 256E0008 */  addiu      $t6, $t3, 0x8
    /* 10B4D4 800FC524 ADAE0000 */  sw         $t6, 0x0($t5)
    /* 10B4D8 800FC528 AD6F0000 */  sw         $t7, 0x0($t3)
    /* 10B4DC 800FC52C 8D380000 */  lw         $t8, 0x0($t1)
    /* 10B4E0 800FC530 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 10B4E4 800FC534 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 10B4E8 800FC538 2719FFD0 */  addiu      $t9, $t8, -0x30
    /* 10B4EC 800FC53C 03217024 */  and        $t6, $t9, $at
    /* 10B4F0 800FC540 AD6E0004 */  sw         $t6, 0x4($t3)
    /* 10B4F4 800FC544 8DAB0000 */  lw         $t3, 0x0($t5)
    /* 10B4F8 800FC548 24190204 */  addiu      $t9, $zero, 0x204
    /* 10B4FC 800FC54C 3C18BF00 */  lui        $t8, (0xBF000000 >> 16)
    /* 10B500 800FC550 256F0008 */  addiu      $t7, $t3, 0x8
    /* 10B504 800FC554 ADAF0000 */  sw         $t7, 0x0($t5)
    /* 10B508 800FC558 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 10B50C 800FC55C AD790004 */  sw         $t9, 0x4($t3)
    /* 10B510 800FC560 03E00008 */  jr         $ra
    /* 10B514 800FC564 AD780000 */   sw        $t8, 0x0($t3)
endlabel func_800FC434_10B3E4
