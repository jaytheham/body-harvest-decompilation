nonmatching func_802D63E8_2B8818, 0xF4

glabel func_802D63E8_2B8818
    /* 2B8818 802D63E8 00047080 */  sll        $t6, $a0, 2
    /* 2B881C 802D63EC 01C47023 */  subu       $t6, $t6, $a0
    /* 2B8820 802D63F0 3C0F8005 */  lui        $t7, %hi(buildingInstances)
    /* 2B8824 802D63F4 25EF0AD8 */  addiu      $t7, $t7, %lo(buildingInstances)
    /* 2B8828 802D63F8 000E70C0 */  sll        $t6, $t6, 3
    /* 2B882C 802D63FC 01CF1021 */  addu       $v0, $t6, $t7
    /* 2B8830 802D6400 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 2B8834 802D6404 84580000 */  lh         $t8, 0x0($v0)
    /* 2B8838 802D6408 84590002 */  lh         $t9, 0x2($v0)
    /* 2B883C 802D640C 84480004 */  lh         $t0, 0x4($v0)
    /* 2B8840 802D6410 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 2B8844 802D6414 AFA5003C */  sw         $a1, 0x3C($sp)
    /* 2B8848 802D6418 AFB80034 */  sw         $t8, 0x34($sp)
    /* 2B884C 802D641C AFB90030 */  sw         $t9, 0x30($sp)
    /* 2B8850 802D6420 AFA8002C */  sw         $t0, 0x2C($sp)
    /* 2B8854 802D6424 84AA0000 */  lh         $t2, 0x0($a1)
    /* 2B8858 802D6428 8C440008 */  lw         $a0, 0x8($v0)
    /* 2B885C 802D642C 27A60028 */  addiu      $a2, $sp, 0x28
    /* 2B8860 802D6430 A7AA002A */  sh         $t2, 0x2A($sp)
    /* 2B8864 802D6434 84AB0004 */  lh         $t3, 0x4($a1)
    /* 2B8868 802D6438 308C0003 */  andi       $t4, $a0, 0x3
    /* 2B886C 802D643C 000C6C00 */  sll        $t5, $t4, 16
    /* 2B8870 802D6440 000D2403 */  sra        $a0, $t5, 16
    /* 2B8874 802D6444 27A5002A */  addiu      $a1, $sp, 0x2A
    /* 2B8878 802D6448 0C045955 */  jal        func_80116554_125504
    /* 2B887C 802D644C A7AB0028 */   sh        $t3, 0x28($sp)
    /* 2B8880 802D6450 0C000E38 */  jal        func_800038E0_44E0
    /* 2B8884 802D6454 00000000 */   nop
    /* 2B8888 802D6458 0C000E38 */  jal        func_800038E0_44E0
    /* 2B888C 802D645C A7A20024 */   sh        $v0, 0x24($sp)
    /* 2B8890 802D6460 97A70024 */  lhu        $a3, 0x24($sp)
    /* 2B8894 802D6464 24010032 */  addiu      $at, $zero, 0x32
    /* 2B8898 802D6468 87AF002A */  lh         $t7, 0x2A($sp)
    /* 2B889C 802D646C 00E1001A */  div        $zero, $a3, $at
    /* 2B88A0 802D6470 8FB80034 */  lw         $t8, 0x34($sp)
    /* 2B88A4 802D6474 8FAA003C */  lw         $t2, 0x3C($sp)
    /* 2B88A8 802D6478 8FAB0030 */  lw         $t3, 0x30($sp)
    /* 2B88AC 802D647C 01F82021 */  addu       $a0, $t7, $t8
    /* 2B88B0 802D6480 85490002 */  lh         $t1, 0x2($t2)
    /* 2B88B4 802D6484 8FAF002C */  lw         $t7, 0x2C($sp)
    /* 2B88B8 802D6488 87AE0028 */  lh         $t6, 0x28($sp)
    /* 2B88BC 802D648C 00004010 */  mfhi       $t0
    /* 2B88C0 802D6490 012B2821 */  addu       $a1, $t1, $t3
    /* 2B88C4 802D6494 250700C8 */  addiu      $a3, $t0, 0xC8
    /* 2B88C8 802D6498 01CF3021 */  addu       $a2, $t6, $t7
    /* 2B88CC 802D649C 0006C400 */  sll        $t8, $a2, 16
    /* 2B88D0 802D64A0 30EAFFFF */  andi       $t2, $a3, 0xFFFF
    /* 2B88D4 802D64A4 00056400 */  sll        $t4, $a1, 16
    /* 2B88D8 802D64A8 30490001 */  andi       $t1, $v0, 0x1
    /* 2B88DC 802D64AC 0004CC00 */  sll        $t9, $a0, 16
    /* 2B88E0 802D64B0 00192403 */  sra        $a0, $t9, 16
    /* 2B88E4 802D64B4 AFA90010 */  sw         $t1, 0x10($sp)
    /* 2B88E8 802D64B8 000C2C03 */  sra        $a1, $t4, 16
    /* 2B88EC 802D64BC 01403825 */  or         $a3, $t2, $zero
    /* 2B88F0 802D64C0 00183403 */  sra        $a2, $t8, 16
    /* 2B88F4 802D64C4 0C037C0E */  jal        func_800DF038_EDFE8
    /* 2B88F8 802D64C8 AFA00014 */   sw        $zero, 0x14($sp)
    /* 2B88FC 802D64CC 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 2B8900 802D64D0 27BD0038 */  addiu      $sp, $sp, 0x38
    /* 2B8904 802D64D4 03E00008 */  jr         $ra
    /* 2B8908 802D64D8 00000000 */   nop
endlabel func_802D63E8_2B8818
