nonmatching func_800EFFB4_FEF64, 0xE0

glabel func_800EFFB4_FEF64
    /* FEF64 800EFFB4 3C028004 */  lui        $v0, %hi(currentLevel)
    /* FEF68 800EFFB8 8C427F90 */  lw         $v0, %lo(currentLevel)($v0)
    /* FEF6C 800EFFBC 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* FEF70 800EFFC0 24010001 */  addiu      $at, $zero, 0x1
    /* FEF74 800EFFC4 10410006 */  beq        $v0, $at, .L800EFFE0_FEF90
    /* FEF78 800EFFC8 AFBF0014 */   sw        $ra, 0x14($sp)
    /* FEF7C 800EFFCC 24010002 */  addiu      $at, $zero, 0x2
    /* FEF80 800EFFD0 5041001C */  beql       $v0, $at, .L800F0044_FEFF4
    /* FEF84 800EFFD4 240EFFFF */   addiu     $t6, $zero, -0x1
    /* FEF88 800EFFD8 1000001A */  b          .L800F0044_FEFF4
    /* FEF8C 800EFFDC 240EFFFF */   addiu     $t6, $zero, -0x1
  .L800EFFE0_FEF90:
    /* FEF90 800EFFE0 24040046 */  addiu      $a0, $zero, 0x46
    /* FEF94 800EFFE4 0C047498 */  jal        func_8011D260_12C210
    /* FEF98 800EFFE8 2405FFDB */   addiu     $a1, $zero, -0x25
    /* FEF9C 800EFFEC 2401FFFF */  addiu      $at, $zero, -0x1
    /* FEFA0 800EFFF0 14410003 */  bne        $v0, $at, .L800F0000_FEFB0
    /* FEFA4 800EFFF4 3C048014 */   lui       $a0, %hi(D_801444F0)
    /* FEFA8 800EFFF8 0C00731B */  jal        osSyncPrintf
    /* FEFAC 800EFFFC 248444F0 */   addiu     $a0, $a0, %lo(D_801444F0)
  .L800F0000_FEFB0:
    /* FEFB0 800F0000 2404004A */  addiu      $a0, $zero, 0x4A
    /* FEFB4 800F0004 0C047498 */  jal        func_8011D260_12C210
    /* FEFB8 800F0008 2405FFF9 */   addiu     $a1, $zero, -0x7
    /* FEFBC 800F000C 2401FFFF */  addiu      $at, $zero, -0x1
    /* FEFC0 800F0010 14410003 */  bne        $v0, $at, .L800F0020_FEFD0
    /* FEFC4 800F0014 3C048014 */   lui       $a0, %hi(D_80144534)
    /* FEFC8 800F0018 0C00731B */  jal        osSyncPrintf
    /* FEFCC 800F001C 24844534 */   addiu     $a0, $a0, %lo(D_80144534)
  .L800F0020_FEFD0:
    /* FEFD0 800F0020 2404FFED */  addiu      $a0, $zero, -0x13
    /* FEFD4 800F0024 0C047498 */  jal        func_8011D260_12C210
    /* FEFD8 800F0028 2405FFE1 */   addiu     $a1, $zero, -0x1F
    /* FEFDC 800F002C 2401FFFF */  addiu      $at, $zero, -0x1
    /* FEFE0 800F0030 14410003 */  bne        $v0, $at, .L800F0040_FEFF0
    /* FEFE4 800F0034 3C048014 */   lui       $a0, %hi(D_8014457C)
    /* FEFE8 800F0038 0C00731B */  jal        osSyncPrintf
    /* FEFEC 800F003C 2484457C */   addiu     $a0, $a0, %lo(D_8014457C)
  .L800F0040_FEFF0:
    /* FEFF0 800F0040 240EFFFF */  addiu      $t6, $zero, -0x1
  .L800F0044_FEFF4:
    /* FEFF4 800F0044 3C018015 */  lui        $at, %hi(D_80157F68)
    /* FEFF8 800F0048 A42E7F68 */  sh         $t6, %lo(D_80157F68)($at)
    /* FEFFC 800F004C 3C018015 */  lui        $at, %hi(D_80157F70)
    /* FF000 800F0050 AC207F70 */  sw         $zero, %lo(D_80157F70)($at)
    /* FF004 800F0054 3C018015 */  lui        $at, %hi(D_80157F8C)
    /* FF008 800F0058 A4207F8C */  sh         $zero, %lo(D_80157F8C)($at)
    /* FF00C 800F005C 3C018015 */  lui        $at, %hi(D_80157F8E)
    /* FF010 800F0060 A4207F8E */  sh         $zero, %lo(D_80157F8E)($at)
    /* FF014 800F0064 3C018007 */  lui        $at, %hi(D_80068080)
    /* FF018 800F0068 AC208080 */  sw         $zero, %lo(D_80068080)($at)
    /* FF01C 800F006C 3C018005 */  lui        $at, %hi(D_8004DC60)
    /* FF020 800F0070 240F0025 */  addiu      $t7, $zero, 0x25
    /* FF024 800F0074 A42FDC60 */  sh         $t7, %lo(D_8004DC60)($at)
    /* FF028 800F0078 8FBF0014 */  lw         $ra, 0x14($sp)
    /* FF02C 800F007C 3C018015 */  lui        $at, %hi(D_80157FB4)
    /* FF030 800F0080 AC207FB4 */  sw         $zero, %lo(D_80157FB4)($at)
    /* FF034 800F0084 3C018015 */  lui        $at, %hi(D_80157F96)
    /* FF038 800F0088 A4207F96 */  sh         $zero, %lo(D_80157F96)($at)
    /* FF03C 800F008C 03E00008 */  jr         $ra
    /* FF040 800F0090 27BD0018 */   addiu     $sp, $sp, 0x18
endlabel func_800EFFB4_FEF64
