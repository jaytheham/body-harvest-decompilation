nonmatching func_800D9AD4_E8A84, 0x40

glabel func_800D9AD4_E8A84
    /* E8A84 800D9AD4 00047400 */  sll        $t6, $a0, 16
    /* E8A88 800D9AD8 000E7C03 */  sra        $t7, $t6, 16
    /* E8A8C 800D9ADC 2406001C */  addiu      $a2, $zero, 0x1C
    /* E8A90 800D9AE0 01E60019 */  multu      $t7, $a2
    /* E8A94 800D9AE4 3C038015 */  lui        $v1, %hi(D_80154318)
    /* E8A98 800D9AE8 24634318 */  addiu      $v1, $v1, %lo(D_80154318)
    /* E8A9C 800D9AEC AFA40000 */  sw         $a0, 0x0($sp)
    /* E8AA0 800D9AF0 AFA50004 */  sw         $a1, 0x4($sp)
    /* E8AA4 800D9AF4 0000C812 */  mflo       $t9
    /* E8AA8 800D9AF8 00794021 */  addu       $t0, $v1, $t9
    /* E8AAC 800D9AFC 85020004 */  lh         $v0, 0x4($t0)
    /* E8AB0 800D9B00 00460019 */  multu      $v0, $a2
    /* E8AB4 800D9B04 00004812 */  mflo       $t1
    /* E8AB8 800D9B08 00695021 */  addu       $t2, $v1, $t1
    /* E8ABC 800D9B0C 03E00008 */  jr         $ra
    /* E8AC0 800D9B10 A1450014 */   sb        $a1, 0x14($t2)
endlabel func_800D9AD4_E8A84
