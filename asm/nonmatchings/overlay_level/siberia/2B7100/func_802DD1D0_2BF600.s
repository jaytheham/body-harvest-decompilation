nonmatching func_802DD1D0_2BF600, 0x70

glabel func_802DD1D0_2BF600
    /* 2BF600 802DD1D0 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 2BF604 802DD1D4 AFA5002C */  sw         $a1, 0x2C($sp)
    /* 2BF608 802DD1D8 87AE002E */  lh         $t6, 0x2E($sp)
    /* 2BF60C 802DD1DC 3C0F802E */  lui        $t7, %hi(D_802E2788)
    /* 2BF610 802DD1E0 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 2BF614 802DD1E4 AFA40028 */  sw         $a0, 0x28($sp)
    /* 2BF618 802DD1E8 25EF2788 */  addiu      $t7, $t7, %lo(D_802E2788)
    /* 2BF61C 802DD1EC AFAF0010 */  sw         $t7, 0x10($sp)
    /* 2BF620 802DD1F0 93A4002B */  lbu        $a0, 0x2B($sp)
    /* 2BF624 802DD1F4 24050001 */  addiu      $a1, $zero, 0x1
    /* 2BF628 802DD1F8 27A70024 */  addiu      $a3, $sp, 0x24
    /* 2BF62C 802DD1FC 24060002 */  addiu      $a2, $zero, 0x2
    /* 2BF630 802DD200 0C0207C6 */  jal        func_80081F18_90EC8
    /* 2BF634 802DD204 A7AE0024 */   sh        $t6, 0x24($sp)
    /* 2BF638 802DD208 305800FF */  andi       $t8, $v0, 0xFF
    /* 2BF63C 802DD20C 24010001 */  addiu      $at, $zero, 0x1
    /* 2BF640 802DD210 17010007 */  bne        $t8, $at, .L802DD230_2BF660
    /* 2BF644 802DD214 93B9002B */   lbu       $t9, 0x2B($sp)
    /* 2BF648 802DD218 00194080 */  sll        $t0, $t9, 2
    /* 2BF64C 802DD21C 01194021 */  addu       $t0, $t0, $t9
    /* 2BF650 802DD220 00084100 */  sll        $t0, $t0, 4
    /* 2BF654 802DD224 3C018005 */  lui        $at, %hi(D_800481CE)
    /* 2BF658 802DD228 00280821 */  addu       $at, $at, $t0
    /* 2BF65C 802DD22C A02081CE */  sb         $zero, %lo(D_800481CE)($at)
  .L802DD230_2BF660:
    /* 2BF660 802DD230 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 2BF664 802DD234 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 2BF668 802DD238 03E00008 */  jr         $ra
    /* 2BF66C 802DD23C 00000000 */   nop
endlabel func_802DD1D0_2BF600
