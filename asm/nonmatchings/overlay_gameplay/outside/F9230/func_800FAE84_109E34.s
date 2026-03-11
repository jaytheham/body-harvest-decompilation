nonmatching func_800FAE84_109E34, 0xF0

glabel func_800FAE84_109E34
    /* 109E34 800FAE84 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 109E38 800FAE88 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 109E3C 800FAE8C 908E001A */  lbu        $t6, 0x1A($a0)
    /* 109E40 800FAE90 3C188025 */  lui        $t8, %hi(vehicleSpecs)
    /* 109E44 800FAE94 27187A00 */  addiu      $t8, $t8, %lo(vehicleSpecs)
    /* 109E48 800FAE98 000E78C0 */  sll        $t7, $t6, 3
    /* 109E4C 800FAE9C 01EE7823 */  subu       $t7, $t7, $t6
    /* 109E50 800FAEA0 000F7900 */  sll        $t7, $t7, 4
    /* 109E54 800FAEA4 2419FFFE */  addiu      $t9, $zero, -0x2
    /* 109E58 800FAEA8 01F81021 */  addu       $v0, $t7, $t8
    /* 109E5C 800FAEAC A4800000 */  sh         $zero, 0x0($a0)
    /* 109E60 800FAEB0 A4800002 */  sh         $zero, 0x2($a0)
    /* 109E64 800FAEB4 A4800004 */  sh         $zero, 0x4($a0)
    /* 109E68 800FAEB8 A480000E */  sh         $zero, 0xE($a0)
    /* 109E6C 800FAEBC A4800010 */  sh         $zero, 0x10($a0)
    /* 109E70 800FAEC0 A4800012 */  sh         $zero, 0x12($a0)
    /* 109E74 800FAEC4 A4800006 */  sh         $zero, 0x6($a0)
    /* 109E78 800FAEC8 A4800008 */  sh         $zero, 0x8($a0)
    /* 109E7C 800FAECC A480000A */  sh         $zero, 0xA($a0)
    /* 109E80 800FAED0 A499000C */  sh         $t9, 0xC($a0)
    /* 109E84 800FAED4 A4800022 */  sh         $zero, 0x22($a0)
    /* 109E88 800FAED8 A4800024 */  sh         $zero, 0x24($a0)
    /* 109E8C 800FAEDC A4800026 */  sh         $zero, 0x26($a0)
    /* 109E90 800FAEE0 8C48004C */  lw         $t0, 0x4C($v0)
    /* 109E94 800FAEE4 44800000 */  mtc1       $zero, $f0
    /* 109E98 800FAEE8 240A00FA */  addiu      $t2, $zero, 0xFA
    /* 109E9C 800FAEEC A4880020 */  sh         $t0, 0x20($a0)
    /* 109EA0 800FAEF0 9449003A */  lhu        $t1, 0x3A($v0)
    /* 109EA4 800FAEF4 A4800014 */  sh         $zero, 0x14($a0)
    /* 109EA8 800FAEF8 A4800016 */  sh         $zero, 0x16($a0)
    /* 109EAC 800FAEFC A4800018 */  sh         $zero, 0x18($a0)
    /* 109EB0 800FAF00 A4800028 */  sh         $zero, 0x28($a0)
    /* 109EB4 800FAF04 A480002A */  sh         $zero, 0x2A($a0)
    /* 109EB8 800FAF08 A48A002E */  sh         $t2, 0x2E($a0)
    /* 109EBC 800FAF0C A480001E */  sh         $zero, 0x1E($a0)
    /* 109EC0 800FAF10 E4800030 */  swc1       $f0, 0x30($a0)
    /* 109EC4 800FAF14 E4800034 */  swc1       $f0, 0x34($a0)
    /* 109EC8 800FAF18 E4800038 */  swc1       $f0, 0x38($a0)
    /* 109ECC 800FAF1C A489001C */  sh         $t1, 0x1C($a0)
    /* 109ED0 800FAF20 904B0061 */  lbu        $t3, 0x61($v0)
    /* 109ED4 800FAF24 908D0046 */  lbu        $t5, 0x46($a0)
    /* 109ED8 800FAF28 A4800040 */  sh         $zero, 0x40($a0)
    /* 109EDC 800FAF2C 000B6200 */  sll        $t4, $t3, 8
    /* 109EE0 800FAF30 31AEFFC0 */  andi       $t6, $t5, 0xFFC0
    /* 109EE4 800FAF34 A48C003C */  sh         $t4, 0x3C($a0)
    /* 109EE8 800FAF38 A4800042 */  sh         $zero, 0x42($a0)
    /* 109EEC 800FAF3C A08E0046 */  sb         $t6, 0x46($a0)
    /* 109EF0 800FAF40 E480004C */  swc1       $f0, 0x4C($a0)
    /* 109EF4 800FAF44 E4800050 */  swc1       $f0, 0x50($a0)
    /* 109EF8 800FAF48 E4800054 */  swc1       $f0, 0x54($a0)
    /* 109EFC 800FAF4C 0C03EB98 */  jal        func_800FAE60_109E10
    /* 109F00 800FAF50 E4800058 */   swc1      $f0, 0x58($a0)
    /* 109F04 800FAF54 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 109F08 800FAF58 44800000 */  mtc1       $zero, $f0
    /* 109F0C 800FAF5C 00027880 */  sll        $t7, $v0, 2
    /* 109F10 800FAF60 3C018016 */  lui        $at, %hi(D_80158C58)
    /* 109F14 800FAF64 002F0821 */  addu       $at, $at, $t7
    /* 109F18 800FAF68 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 109F1C 800FAF6C 03E00008 */  jr         $ra
    /* 109F20 800FAF70 E4208C58 */   swc1      $f0, %lo(D_80158C58)($at)
endlabel func_800FAE84_109E34
