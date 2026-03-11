nonmatching func_8008C7B0_9B760, 0x108

glabel func_8008C7B0_9B760
    /* 9B760 8008C7B0 308E00FF */  andi       $t6, $a0, 0xFF
    /* 9B764 8008C7B4 000E7880 */  sll        $t7, $t6, 2
    /* 9B768 8008C7B8 01EE7821 */  addu       $t7, $t7, $t6
    /* 9B76C 8008C7BC 000F7900 */  sll        $t7, $t7, 4
    /* 9B770 8008C7C0 3C188005 */  lui        $t8, %hi(D_800481A4)
    /* 9B774 8008C7C4 030FC021 */  addu       $t8, $t8, $t7
    /* 9B778 8008C7C8 871881A4 */  lh         $t8, %lo(D_800481A4)($t8)
    /* 9B77C 8008C7CC 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 9B780 8008C7D0 AFA40040 */  sw         $a0, 0x40($sp)
    /* 9B784 8008C7D4 3C028015 */  lui        $v0, %hi(D_8014DD50)
    /* 9B788 8008C7D8 2442DD50 */  addiu      $v0, $v0, %lo(D_8014DD50)
    /* 9B78C 8008C7DC 01C02025 */  or         $a0, $t6, $zero
    /* 9B790 8008C7E0 0018C900 */  sll        $t9, $t8, 4
    /* 9B794 8008C7E4 00597021 */  addu       $t6, $v0, $t9
    /* 9B798 8008C7E8 81CB000C */  lb         $t3, 0xC($t6)
    /* 9B79C 8008C7EC AFBF001C */  sw         $ra, 0x1C($sp)
    /* 9B7A0 8008C7F0 27A70028 */  addiu      $a3, $sp, 0x28
    /* 9B7A4 8008C7F4 000B7900 */  sll        $t7, $t3, 4
    /* 9B7A8 8008C7F8 004F1821 */  addu       $v1, $v0, $t7
    /* 9B7AC 8008C7FC 806C000D */  lb         $t4, 0xD($v1)
    /* 9B7B0 8008C800 8078000C */  lb         $t8, 0xC($v1)
    /* 9B7B4 8008C804 2405000C */  addiu      $a1, $zero, 0xC
    /* 9B7B8 8008C808 000CC900 */  sll        $t9, $t4, 4
    /* 9B7BC 8008C80C 00594021 */  addu       $t0, $v0, $t9
    /* 9B7C0 8008C810 810D000C */  lb         $t5, 0xC($t0)
    /* 9B7C4 8008C814 A7B8002A */  sh         $t8, 0x2A($sp)
    /* 9B7C8 8008C818 24060001 */  addiu      $a2, $zero, 0x1
    /* 9B7CC 8008C81C 000D7100 */  sll        $t6, $t5, 4
    /* 9B7D0 8008C820 004E4821 */  addu       $t1, $v0, $t6
    /* 9B7D4 8008C824 812F000C */  lb         $t7, 0xC($t1)
    /* 9B7D8 8008C828 813F000D */  lb         $ra, 0xD($t1)
    /* 9B7DC 8008C82C A7AF0030 */  sh         $t7, 0x30($sp)
    /* 9B7E0 8008C830 810F000D */  lb         $t7, 0xD($t0)
    /* 9B7E4 8008C834 001FC100 */  sll        $t8, $ra, 4
    /* 9B7E8 8008C838 0058C821 */  addu       $t9, $v0, $t8
    /* 9B7EC 8008C83C 832E000C */  lb         $t6, 0xC($t9)
    /* 9B7F0 8008C840 A7AF0036 */  sh         $t7, 0x36($sp)
    /* 9B7F4 8008C844 87B80036 */  lh         $t8, 0x36($sp)
    /* 9B7F8 8008C848 A7AE0034 */  sh         $t6, 0x34($sp)
    /* 9B7FC 8008C84C 0018C900 */  sll        $t9, $t8, 4
    /* 9B800 8008C850 00597021 */  addu       $t6, $v0, $t9
    /* 9B804 8008C854 81CF000C */  lb         $t7, 0xC($t6)
    /* 9B808 8008C858 000FC100 */  sll        $t8, $t7, 4
    /* 9B80C 8008C85C 00585021 */  addu       $t2, $v0, $t8
    /* 9B810 8008C860 814E000D */  lb         $t6, 0xD($t2)
    /* 9B814 8008C864 A7AF0038 */  sh         $t7, 0x38($sp)
    /* 9B818 8008C868 8159000C */  lb         $t9, 0xC($t2)
    /* 9B81C 8008C86C A7AE003C */  sh         $t6, 0x3C($sp)
    /* 9B820 8008C870 87AF003C */  lh         $t7, 0x3C($sp)
    /* 9B824 8008C874 A7B9003A */  sh         $t9, 0x3A($sp)
    /* 9B828 8008C878 000FC100 */  sll        $t8, $t7, 4
    /* 9B82C 8008C87C 0058C821 */  addu       $t9, $v0, $t8
    /* 9B830 8008C880 832E000C */  lb         $t6, 0xC($t9)
    /* 9B834 8008C884 3C0F8014 */  lui        $t7, %hi(D_8013C514)
    /* 9B838 8008C888 25EFC514 */  addiu      $t7, $t7, %lo(D_8013C514)
    /* 9B83C 8008C88C A7BF0032 */  sh         $ra, 0x32($sp)
    /* 9B840 8008C890 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 9B844 8008C894 A7AB0028 */  sh         $t3, 0x28($sp)
    /* 9B848 8008C898 A7AC002C */  sh         $t4, 0x2C($sp)
    /* 9B84C 8008C89C A7AD002E */  sh         $t5, 0x2E($sp)
    /* 9B850 8008C8A0 0C0207C6 */  jal        func_80081F18_90EC8
    /* 9B854 8008C8A4 A7AE003E */   sh        $t6, 0x3E($sp)
    /* 9B858 8008C8A8 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 9B85C 8008C8AC 27BD0040 */  addiu      $sp, $sp, 0x40
    /* 9B860 8008C8B0 03E00008 */  jr         $ra
    /* 9B864 8008C8B4 00000000 */   nop
endlabel func_8008C7B0_9B760
