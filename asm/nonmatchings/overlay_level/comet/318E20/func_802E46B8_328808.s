nonmatching func_802E46B8_328808, 0xBC

glabel func_802E46B8_328808
    /* 328808 802E46B8 308700FF */  andi       $a3, $a0, 0xFF
    /* 32880C 802E46BC 240B0050 */  addiu      $t3, $zero, 0x50
    /* 328810 802E46C0 00EB0019 */  multu      $a3, $t3
    /* 328814 802E46C4 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 328818 802E46C8 3C0A8005 */  lui        $t2, %hi(alienInstances)
    /* 32881C 802E46CC 254A8198 */  addiu      $t2, $t2, %lo(alienInstances)
    /* 328820 802E46D0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 328824 802E46D4 AFA40020 */  sw         $a0, 0x20($sp)
    /* 328828 802E46D8 AFA60028 */  sw         $a2, 0x28($sp)
    /* 32882C 802E46DC AFA50024 */  sw         $a1, 0x24($sp)
    /* 328830 802E46E0 93A4002B */  lbu        $a0, 0x2B($sp)
    /* 328834 802E46E4 00007012 */  mflo       $t6
    /* 328838 802E46E8 014E7821 */  addu       $t7, $t2, $t6
    /* 32883C 802E46EC 91E90025 */  lbu        $t1, 0x25($t7)
    /* 328840 802E46F0 0C01E55B */  jal        func_8007956C_8851C
    /* 328844 802E46F4 A3A9001E */   sb        $t1, 0x1E($sp)
    /* 328848 802E46F8 240B0050 */  addiu      $t3, $zero, 0x50
    /* 32884C 802E46FC 304500FF */  andi       $a1, $v0, 0xFF
    /* 328850 802E4700 00AB0019 */  multu      $a1, $t3
    /* 328854 802E4704 93A9001E */  lbu        $t1, 0x1E($sp)
    /* 328858 802E4708 3C0A8005 */  lui        $t2, %hi(alienInstances)
    /* 32885C 802E470C 254A8198 */  addiu      $t2, $t2, %lo(alienInstances)
    /* 328860 802E4710 8FAC0024 */  lw         $t4, 0x24($sp)
    /* 328864 802E4714 3C018014 */  lui        $at, %hi(D_80140AB0)
    /* 328868 802E4718 3C04802E */  lui        $a0, %hi(D_802E7AE4)
    /* 32886C 802E471C 24847AE4 */  addiu      $a0, $a0, %lo(D_802E7AE4)
    /* 328870 802E4720 0000C012 */  mflo       $t8
    /* 328874 802E4724 01583821 */  addu       $a3, $t2, $t8
    /* 328878 802E4728 A0E90025 */  sb         $t1, 0x25($a3)
    /* 32887C 802E472C 012B0019 */  multu      $t1, $t3
    /* 328880 802E4730 0000C812 */  mflo       $t9
    /* 328884 802E4734 01596821 */  addu       $t5, $t2, $t9
    /* 328888 802E4738 91AE0025 */  lbu        $t6, 0x25($t5)
    /* 32888C 802E473C 000CC880 */  sll        $t9, $t4, 2
    /* 328890 802E4740 00390821 */  addu       $at, $at, $t9
    /* 328894 802E4744 01CB0019 */  multu      $t6, $t3
    /* 328898 802E4748 00007812 */  mflo       $t7
    /* 32889C 802E474C 014F4021 */  addu       $t0, $t2, $t7
    /* 3288A0 802E4750 010CC021 */  addu       $t8, $t0, $t4
    /* 3288A4 802E4754 A302FFFF */  sb         $v0, -0x1($t8)
    /* 3288A8 802E4758 AC270AB0 */  sw         $a3, %lo(D_80140AB0)($at)
    /* 3288AC 802E475C 0C00731B */  jal        osSyncPrintf
    /* 3288B0 802E4760 8FA60028 */   lw        $a2, 0x28($sp)
    /* 3288B4 802E4764 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 3288B8 802E4768 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 3288BC 802E476C 03E00008 */  jr         $ra
    /* 3288C0 802E4770 00000000 */   nop
endlabel func_802E46B8_328808
