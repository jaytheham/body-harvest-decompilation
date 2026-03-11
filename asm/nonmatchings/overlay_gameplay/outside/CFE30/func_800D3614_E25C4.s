nonmatching func_800D3614_E25C4, 0xD8

glabel func_800D3614_E25C4
    /* E25C4 800D3614 3C078015 */  lui        $a3, %hi(D_80154282)
    /* E25C8 800D3618 84E74282 */  lh         $a3, %lo(D_80154282)($a3)
    /* E25CC 800D361C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* E25D0 800D3620 2406FFFB */  addiu      $a2, $zero, -0x5
    /* E25D4 800D3624 AFBF0014 */  sw         $ra, 0x14($sp)
    /* E25D8 800D3628 10E6002C */  beq        $a3, $a2, .L800D36DC_E268C
    /* E25DC 800D362C AFA40018 */   sw        $a0, 0x18($sp)
    /* E25E0 800D3630 2408FFFA */  addiu      $t0, $zero, -0x6
    /* E25E4 800D3634 10E80029 */  beq        $a3, $t0, .L800D36DC_E268C
    /* E25E8 800D3638 93A5001B */   lbu       $a1, 0x1B($sp)
    /* E25EC 800D363C 3C038015 */  lui        $v1, %hi(D_80154318)
    /* E25F0 800D3640 24634318 */  addiu      $v1, $v1, %lo(D_80154318)
    /* E25F4 800D3644 2404001C */  addiu      $a0, $zero, 0x1C
  .L800D3648_E25F8:
    /* E25F8 800D3648 00E40019 */  multu      $a3, $a0
    /* E25FC 800D364C 00007012 */  mflo       $t6
    /* E2600 800D3650 006E1021 */  addu       $v0, $v1, $t6
    /* E2604 800D3654 844F0010 */  lh         $t7, 0x10($v0)
    /* E2608 800D3658 54AF0018 */  bnel       $a1, $t7, .L800D36BC_E266C
    /* E260C 800D365C 84470004 */   lh        $a3, 0x4($v0)
    /* E2610 800D3660 00072400 */  sll        $a0, $a3, 16
    /* E2614 800D3664 0004C403 */  sra        $t8, $a0, 16
    /* E2618 800D3668 03002025 */  or         $a0, $t8, $zero
    /* E261C 800D366C 2405000B */  addiu      $a1, $zero, 0xB
    /* E2620 800D3670 0C030789 */  jal        func_800C1E24_D0DD4
    /* E2624 800D3674 24060001 */   addiu     $a2, $zero, 0x1
    /* E2628 800D3678 93B9001B */  lbu        $t9, 0x1B($sp)
    /* E262C 800D367C 3C0A8005 */  lui        $t2, %hi(buildingInstances)
    /* E2630 800D3680 254A0AD8 */  addiu      $t2, $t2, %lo(buildingInstances)
    /* E2634 800D3684 00194880 */  sll        $t1, $t9, 2
    /* E2638 800D3688 01394823 */  subu       $t1, $t1, $t9
    /* E263C 800D368C 000948C0 */  sll        $t1, $t1, 3
    /* E2640 800D3690 012A1021 */  addu       $v0, $t1, $t2
    /* E2644 800D3694 8C430008 */  lw         $v1, 0x8($v0)
    /* E2648 800D3698 2401FFEF */  addiu      $at, $zero, -0x11
    /* E264C 800D369C 00032302 */  srl        $a0, $v1, 12
    /* E2650 800D36A0 00815824 */  and        $t3, $a0, $at
    /* E2654 800D36A4 01646026 */  xor        $t4, $t3, $a0
    /* E2658 800D36A8 000C6B00 */  sll        $t5, $t4, 12
    /* E265C 800D36AC 01A37026 */  xor        $t6, $t5, $v1
    /* E2660 800D36B0 1000000A */  b          .L800D36DC_E268C
    /* E2664 800D36B4 AC4E0008 */   sw        $t6, 0x8($v0)
    /* E2668 800D36B8 84470004 */  lh         $a3, 0x4($v0)
  .L800D36BC_E266C:
    /* E266C 800D36BC 00E40019 */  multu      $a3, $a0
    /* E2670 800D36C0 00007812 */  mflo       $t7
    /* E2674 800D36C4 006FC021 */  addu       $t8, $v1, $t7
    /* E2678 800D36C8 87070004 */  lh         $a3, 0x4($t8)
    /* E267C 800D36CC 50E60004 */  beql       $a3, $a2, .L800D36E0_E2690
    /* E2680 800D36D0 8FBF0014 */   lw        $ra, 0x14($sp)
    /* E2684 800D36D4 14E8FFDC */  bne        $a3, $t0, .L800D3648_E25F8
    /* E2688 800D36D8 00000000 */   nop
  .L800D36DC_E268C:
    /* E268C 800D36DC 8FBF0014 */  lw         $ra, 0x14($sp)
  .L800D36E0_E2690:
    /* E2690 800D36E0 27BD0018 */  addiu      $sp, $sp, 0x18
    /* E2694 800D36E4 03E00008 */  jr         $ra
    /* E2698 800D36E8 00000000 */   nop
endlabel func_800D3614_E25C4
