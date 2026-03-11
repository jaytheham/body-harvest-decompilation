nonmatching func_800D9704_E86B4, 0x50

glabel func_800D9704_E86B4
    /* E86B4 800D9704 00047400 */  sll        $t6, $a0, 16
    /* E86B8 800D9708 000E7C03 */  sra        $t7, $t6, 16
    /* E86BC 800D970C 2409001C */  addiu      $t1, $zero, 0x1C
    /* E86C0 800D9710 01E90019 */  multu      $t7, $t1
    /* E86C4 800D9714 3C088015 */  lui        $t0, %hi(D_80154318)
    /* E86C8 800D9718 25084318 */  addiu      $t0, $t0, %lo(D_80154318)
    /* E86CC 800D971C AFA40000 */  sw         $a0, 0x0($sp)
    /* E86D0 800D9720 AFA50004 */  sw         $a1, 0x4($sp)
    /* E86D4 800D9724 AFA60008 */  sw         $a2, 0x8($sp)
    /* E86D8 800D9728 AFA7000C */  sw         $a3, 0xC($sp)
    /* E86DC 800D972C 00007012 */  mflo       $t6
    /* E86E0 800D9730 010E7821 */  addu       $t7, $t0, $t6
    /* E86E4 800D9734 85E20004 */  lh         $v0, 0x4($t7)
    /* E86E8 800D9738 00490019 */  multu      $v0, $t1
    /* E86EC 800D973C 0000C012 */  mflo       $t8
    /* E86F0 800D9740 01181821 */  addu       $v1, $t0, $t8
    /* E86F4 800D9744 A465000E */  sh         $a1, 0xE($v1)
    /* E86F8 800D9748 A4660010 */  sh         $a2, 0x10($v1)
    /* E86FC 800D974C 03E00008 */  jr         $ra
    /* E8700 800D9750 A4670012 */   sh        $a3, 0x12($v1)
endlabel func_800D9704_E86B4
