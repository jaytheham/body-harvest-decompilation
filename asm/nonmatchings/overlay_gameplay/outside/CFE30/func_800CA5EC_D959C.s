nonmatching func_800CA5EC_D959C, 0x25C

glabel func_800CA5EC_D959C
    /* D959C 800CA5EC 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* D95A0 800CA5F0 3C0E8015 */  lui        $t6, %hi(D_80156ED9)
    /* D95A4 800CA5F4 91CE6ED9 */  lbu        $t6, %lo(D_80156ED9)($t6)
    /* D95A8 800CA5F8 24010002 */  addiu      $at, $zero, 0x2
    /* D95AC 800CA5FC AFBF001C */  sw         $ra, 0x1C($sp)
    /* D95B0 800CA600 AFA40040 */  sw         $a0, 0x40($sp)
    /* D95B4 800CA604 AFA50044 */  sw         $a1, 0x44($sp)
    /* D95B8 800CA608 AFA60048 */  sw         $a2, 0x48($sp)
    /* D95BC 800CA60C 15C10003 */  bne        $t6, $at, .L800CA61C_D95CC
    /* D95C0 800CA610 AFA7004C */   sw        $a3, 0x4C($sp)
    /* D95C4 800CA614 10000088 */  b          .L800CA838_D97E8
    /* D95C8 800CA618 240200FB */   addiu     $v0, $zero, 0xFB
  .L800CA61C_D95CC:
    /* D95CC 800CA61C 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* D95D0 800CA620 44810000 */  mtc1       $at, $f0
    /* D95D4 800CA624 3C018004 */  lui        $at, %hi(D_80047954)
    /* D95D8 800CA628 C4247954 */  lwc1       $f4, %lo(D_80047954)($at)
    /* D95DC 800CA62C 3C018004 */  lui        $at, %hi(D_8004795C)
    /* D95E0 800CA630 C42A795C */  lwc1       $f10, %lo(D_8004795C)($at)
    /* D95E4 800CA634 46002182 */  mul.s      $f6, $f4, $f0
    /* D95E8 800CA638 24194000 */  addiu      $t9, $zero, 0x4000
    /* D95EC 800CA63C 87A40042 */  lh         $a0, 0x42($sp)
    /* D95F0 800CA640 46005402 */  mul.s      $f16, $f10, $f0
    /* D95F4 800CA644 87A5004A */  lh         $a1, 0x4A($sp)
    /* D95F8 800CA648 24060200 */  addiu      $a2, $zero, 0x200
    /* D95FC 800CA64C 4600320D */  trunc.w.s  $f8, $f6
    /* D9600 800CA650 4600848D */  trunc.w.s  $f18, $f16
    /* D9604 800CA654 44074000 */  mfc1       $a3, $f8
    /* D9608 800CA658 00000000 */  nop
    /* D960C 800CA65C 0007C400 */  sll        $t8, $a3, 16
    /* D9610 800CA660 00183C03 */  sra        $a3, $t8, 16
    /* D9614 800CA664 3C188004 */  lui        $t8, %hi(D_80047950)
    /* D9618 800CA668 87187950 */  lh         $t8, %lo(D_80047950)($t8)
    /* D961C 800CA66C 440F9000 */  mfc1       $t7, $f18
    /* D9620 800CA670 03387023 */  subu       $t6, $t9, $t8
    /* D9624 800CA674 AFAE0014 */  sw         $t6, 0x14($sp)
    /* D9628 800CA678 0C02E4EB */  jal        func_800B93AC_C835C
    /* D962C 800CA67C AFAF0010 */   sw        $t7, 0x10($sp)
    /* D9630 800CA680 14400003 */  bnez       $v0, .L800CA690_D9640
    /* D9634 800CA684 00000000 */   nop
    /* D9638 800CA688 1000006B */  b          .L800CA838_D97E8
    /* D963C 800CA68C 240200FB */   addiu     $v0, $zero, 0xFB
  .L800CA690_D9640:
    /* D9640 800CA690 0C030535 */  jal        func_800C14D4_D0484
    /* D9644 800CA694 24040004 */   addiu     $a0, $zero, 0x4
    /* D9648 800CA698 240100FB */  addiu      $at, $zero, 0xFB
    /* D964C 800CA69C 10410065 */  beq        $v0, $at, .L800CA834_D97E4
    /* D9650 800CA6A0 A3A20025 */   sb        $v0, 0x25($sp)
    /* D9654 800CA6A4 304400FF */  andi       $a0, $v0, 0xFF
    /* D9658 800CA6A8 0C030675 */  jal        func_800C19D4_D0984
    /* D965C 800CA6AC 00002825 */   or        $a1, $zero, $zero
    /* D9660 800CA6B0 2401FFFD */  addiu      $at, $zero, -0x3
    /* D9664 800CA6B4 14410008 */  bne        $v0, $at, .L800CA6D8_D9688
    /* D9668 800CA6B8 93A9006B */   lbu       $t1, 0x6B($sp)
    /* D966C 800CA6BC 3C048014 */  lui        $a0, %hi(D_801435F8)
    /* D9670 800CA6C0 0C00731B */  jal        osSyncPrintf
    /* D9674 800CA6C4 248435F8 */   addiu     $a0, $a0, %lo(D_801435F8)
    /* D9678 800CA6C8 0C0304E1 */  jal        func_800C1384_D0334
    /* D967C 800CA6CC 93A40025 */   lbu       $a0, 0x25($sp)
    /* D9680 800CA6D0 10000059 */  b          .L800CA838_D97E8
    /* D9684 800CA6D4 240200FB */   addiu     $v0, $zero, 0xFB
  .L800CA6D8_D9688:
    /* D9688 800CA6D8 00027C00 */  sll        $t7, $v0, 16
    /* D968C 800CA6DC 240B001C */  addiu      $t3, $zero, 0x1C
    /* D9690 800CA6E0 000FCC03 */  sra        $t9, $t7, 16
    /* D9694 800CA6E4 032B0019 */  multu      $t9, $t3
    /* D9698 800CA6E8 3C0A8015 */  lui        $t2, %hi(D_80154318)
    /* D969C 800CA6EC 254A4318 */  addiu      $t2, $t2, %lo(D_80154318)
    /* D96A0 800CA6F0 93AE0025 */  lbu        $t6, 0x25($sp)
    /* D96A4 800CA6F4 3C198015 */  lui        $t9, %hi(D_80154088)
    /* D96A8 800CA6F8 27394088 */  addiu      $t9, $t9, %lo(D_80154088)
    /* D96AC 800CA6FC 000E7880 */  sll        $t7, $t6, 2
    /* D96B0 800CA700 01EE7823 */  subu       $t7, $t7, $t6
    /* D96B4 800CA704 000F7880 */  sll        $t7, $t7, 2
    /* D96B8 800CA708 01F92021 */  addu       $a0, $t7, $t9
    /* D96BC 800CA70C 0000C012 */  mflo       $t8
    /* D96C0 800CA710 01581821 */  addu       $v1, $t2, $t8
    /* D96C4 800CA714 84680004 */  lh         $t0, 0x4($v1)
    /* D96C8 800CA718 90980001 */  lbu        $t8, 0x1($a0)
    /* D96CC 800CA71C 97AE005E */  lhu        $t6, 0x5E($sp)
    /* D96D0 800CA720 010B0019 */  multu      $t0, $t3
    /* D96D4 800CA724 87AF0042 */  lh         $t7, 0x42($sp)
    /* D96D8 800CA728 A0980001 */  sb         $t8, 0x1($a0)
    /* D96DC 800CA72C 87B90046 */  lh         $t9, 0x46($sp)
    /* D96E0 800CA730 87B8004A */  lh         $t8, 0x4A($sp)
    /* D96E4 800CA734 A46E0002 */  sh         $t6, 0x2($v1)
    /* D96E8 800CA738 A46F0008 */  sh         $t7, 0x8($v1)
    /* D96EC 800CA73C 83AF004F */  lb         $t7, 0x4F($sp)
    /* D96F0 800CA740 A479000A */  sh         $t9, 0xA($v1)
    /* D96F4 800CA744 A478000C */  sh         $t8, 0xC($v1)
    /* D96F8 800CA748 00007012 */  mflo       $t6
    /* D96FC 800CA74C 014E3821 */  addu       $a3, $t2, $t6
    /* D9700 800CA750 83B90053 */  lb         $t9, 0x53($sp)
    /* D9704 800CA754 83B80057 */  lb         $t8, 0x57($sp)
    /* D9708 800CA758 93AE005B */  lbu        $t6, 0x5B($sp)
    /* D970C 800CA75C A0EF0008 */  sb         $t7, 0x8($a3)
    /* D9710 800CA760 93AF0067 */  lbu        $t7, 0x67($sp)
    /* D9714 800CA764 2526FF88 */  addiu      $a2, $t1, -0x78
    /* D9718 800CA768 A0F90009 */  sb         $t9, 0x9($a3)
    /* D971C 800CA76C A0F8000A */  sb         $t8, 0xA($a3)
    /* D9720 800CA770 A0EE000B */  sb         $t6, 0xB($a3)
    /* D9724 800CA774 A0EF000C */  sb         $t7, 0xC($a3)
    /* D9728 800CA778 93AC006F */  lbu        $t4, 0x6F($sp)
    /* D972C 800CA77C 93AD0073 */  lbu        $t5, 0x73($sp)
    /* D9730 800CA780 00062C00 */  sll        $a1, $a2, 16
    /* D9734 800CA784 0006C400 */  sll        $t8, $a2, 16
    /* D9738 800CA788 0005CC03 */  sra        $t9, $a1, 16
    /* D973C 800CA78C 00187403 */  sra        $t6, $t8, 16
    /* D9740 800CA790 A069000E */  sb         $t1, 0xE($v1)
    /* D9744 800CA794 A0600014 */  sb         $zero, 0x14($v1)
    /* D9748 800CA798 03202825 */  or         $a1, $t9, $zero
    /* D974C 800CA79C A06C000F */  sb         $t4, 0xF($v1)
    /* D9750 800CA7A0 05C10002 */  bgez       $t6, .L800CA7AC_D975C
    /* D9754 800CA7A4 A06D0010 */   sb        $t5, 0x10($v1)
    /* D9758 800CA7A8 00002825 */  or         $a1, $zero, $zero
  .L800CA7AC_D975C:
    /* D975C 800CA7AC 24640008 */  addiu      $a0, $v1, 0x8
    /* D9760 800CA7B0 2582FF88 */  addiu      $v0, $t4, -0x78
    /* D9764 800CA7B4 A0850009 */  sb         $a1, 0x9($a0)
    /* D9768 800CA7B8 00022C00 */  sll        $a1, $v0, 16
    /* D976C 800CA7BC 0002CC00 */  sll        $t9, $v0, 16
    /* D9770 800CA7C0 00057C03 */  sra        $t7, $a1, 16
    /* D9774 800CA7C4 0019C403 */  sra        $t8, $t9, 16
    /* D9778 800CA7C8 07010002 */  bgez       $t8, .L800CA7D4_D9784
    /* D977C 800CA7CC 01E02825 */   or        $a1, $t7, $zero
    /* D9780 800CA7D0 00002825 */  or         $a1, $zero, $zero
  .L800CA7D4_D9784:
    /* D9784 800CA7D4 25A2FF88 */  addiu      $v0, $t5, -0x78
    /* D9788 800CA7D8 A085000A */  sb         $a1, 0xA($a0)
    /* D978C 800CA7DC 00022C00 */  sll        $a1, $v0, 16
    /* D9790 800CA7E0 00027C00 */  sll        $t7, $v0, 16
    /* D9794 800CA7E4 00057403 */  sra        $t6, $a1, 16
    /* D9798 800CA7E8 000FCC03 */  sra        $t9, $t7, 16
    /* D979C 800CA7EC 07210002 */  bgez       $t9, .L800CA7F8_D97A8
    /* D97A0 800CA7F0 01C02825 */   or        $a1, $t6, $zero
    /* D97A4 800CA7F4 00002825 */  or         $a1, $zero, $zero
  .L800CA7F8_D97A8:
    /* D97A8 800CA7F8 93A30063 */  lbu        $v1, 0x63($sp)
    /* D97AC 800CA7FC A085000B */  sb         $a1, 0xB($a0)
    /* D97B0 800CA800 93B80077 */  lbu        $t8, 0x77($sp)
    /* D97B4 800CA804 24E20008 */  addiu      $v0, $a3, 0x8
    /* D97B8 800CA808 28610097 */  slti       $at, $v1, 0x97
    /* D97BC 800CA80C 00603025 */  or         $a2, $v1, $zero
    /* D97C0 800CA810 14200003 */  bnez       $at, .L800CA820_D97D0
    /* D97C4 800CA814 A0580008 */   sb        $t8, 0x8($v0)
    /* D97C8 800CA818 10000004 */  b          .L800CA82C_D97DC
    /* D97CC 800CA81C 24030096 */   addiu     $v1, $zero, 0x96
  .L800CA820_D97D0:
    /* D97D0 800CA820 54C00003 */  bnel       $a2, $zero, .L800CA830_D97E0
    /* D97D4 800CA824 A0430005 */   sb        $v1, 0x5($v0)
    /* D97D8 800CA828 24030001 */  addiu      $v1, $zero, 0x1
  .L800CA82C_D97DC:
    /* D97DC 800CA82C A0430005 */  sb         $v1, 0x5($v0)
  .L800CA830_D97E0:
    /* D97E0 800CA830 A4400006 */  sh         $zero, 0x6($v0)
  .L800CA834_D97E4:
    /* D97E4 800CA834 93A20025 */  lbu        $v0, 0x25($sp)
  .L800CA838_D97E8:
    /* D97E8 800CA838 8FBF001C */  lw         $ra, 0x1C($sp)
    /* D97EC 800CA83C 27BD0040 */  addiu      $sp, $sp, 0x40
    /* D97F0 800CA840 03E00008 */  jr         $ra
    /* D97F4 800CA844 00000000 */   nop
endlabel func_800CA5EC_D959C
