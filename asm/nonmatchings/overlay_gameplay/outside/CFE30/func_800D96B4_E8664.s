nonmatching func_800D96B4_E8664, 0x50

glabel func_800D96B4_E8664
    /* E8664 800D96B4 00047400 */  sll        $t6, $a0, 16
    /* E8668 800D96B8 000E7C03 */  sra        $t7, $t6, 16
    /* E866C 800D96BC 2409001C */  addiu      $t1, $zero, 0x1C
    /* E8670 800D96C0 01E90019 */  multu      $t7, $t1
    /* E8674 800D96C4 3C088015 */  lui        $t0, %hi(D_80154318)
    /* E8678 800D96C8 25084318 */  addiu      $t0, $t0, %lo(D_80154318)
    /* E867C 800D96CC AFA40000 */  sw         $a0, 0x0($sp)
    /* E8680 800D96D0 AFA50004 */  sw         $a1, 0x4($sp)
    /* E8684 800D96D4 AFA60008 */  sw         $a2, 0x8($sp)
    /* E8688 800D96D8 AFA7000C */  sw         $a3, 0xC($sp)
    /* E868C 800D96DC 00007012 */  mflo       $t6
    /* E8690 800D96E0 010E7821 */  addu       $t7, $t0, $t6
    /* E8694 800D96E4 85E20004 */  lh         $v0, 0x4($t7)
    /* E8698 800D96E8 00490019 */  multu      $v0, $t1
    /* E869C 800D96EC 0000C012 */  mflo       $t8
    /* E86A0 800D96F0 01181821 */  addu       $v1, $t0, $t8
    /* E86A4 800D96F4 A4650008 */  sh         $a1, 0x8($v1)
    /* E86A8 800D96F8 A466000A */  sh         $a2, 0xA($v1)
    /* E86AC 800D96FC 03E00008 */  jr         $ra
    /* E86B0 800D9700 A467000C */   sh        $a3, 0xC($v1)
endlabel func_800D96B4_E8664
