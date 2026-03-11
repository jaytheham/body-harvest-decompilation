nonmatching func_802DA4CC_2BC8FC, 0x300

glabel func_802DA4CC_2BC8FC
    /* 2BC8FC 802DA4CC 308E00FF */  andi       $t6, $a0, 0xFF
    /* 2BC900 802DA4D0 000E7880 */  sll        $t7, $t6, 2
    /* 2BC904 802DA4D4 01EE7821 */  addu       $t7, $t7, $t6
    /* 2BC908 802DA4D8 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 2BC90C 802DA4DC 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 2BC910 802DA4E0 000F7900 */  sll        $t7, $t7, 4
    /* 2BC914 802DA4E4 01F81821 */  addu       $v1, $t7, $t8
    /* 2BC918 802DA4E8 8479000C */  lh         $t9, 0xC($v1)
    /* 2BC91C 802DA4EC 3C058015 */  lui        $a1, %hi(D_8014DD50)
    /* 2BC920 802DA4F0 24A5DD50 */  addiu      $a1, $a1, %lo(D_8014DD50)
    /* 2BC924 802DA4F4 00194900 */  sll        $t1, $t9, 4
    /* 2BC928 802DA4F8 00A95021 */  addu       $t2, $a1, $t1
    /* 2BC92C 802DA4FC 8146000C */  lb         $a2, 0xC($t2)
    /* 2BC930 802DA500 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 2BC934 802DA504 AFA40040 */  sw         $a0, 0x40($sp)
    /* 2BC938 802DA508 00065900 */  sll        $t3, $a2, 4
    /* 2BC93C 802DA50C 00AB6021 */  addu       $t4, $a1, $t3
    /* 2BC940 802DA510 8187000D */  lb         $a3, 0xD($t4)
    /* 2BC944 802DA514 01C02025 */  or         $a0, $t6, $zero
    /* 2BC948 802DA518 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2BC94C 802DA51C 00076900 */  sll        $t5, $a3, 4
    /* 2BC950 802DA520 00AD1021 */  addu       $v0, $a1, $t5
    /* 2BC954 802DA524 8048000D */  lb         $t0, 0xD($v0)
    /* 2BC958 802DA528 804E000C */  lb         $t6, 0xC($v0)
    /* 2BC95C 802DA52C 00087900 */  sll        $t7, $t0, 4
    /* 2BC960 802DA530 00AFC021 */  addu       $t8, $a1, $t7
    /* 2BC964 802DA534 8319000C */  lb         $t9, 0xC($t8)
    /* 2BC968 802DA538 A3A40043 */  sb         $a0, 0x43($sp)
    /* 2BC96C 802DA53C AFA3001C */  sw         $v1, 0x1C($sp)
    /* 2BC970 802DA540 A7AE0026 */  sh         $t6, 0x26($sp)
    /* 2BC974 802DA544 0C020193 */  jal        func_8008064C_8F5FC
    /* 2BC978 802DA548 A7B90022 */   sh        $t9, 0x22($sp)
    /* 2BC97C 802DA54C 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* 2BC980 802DA550 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* 2BC984 802DA554 93A40043 */  lbu        $a0, 0x43($sp)
    /* 2BC988 802DA558 84450000 */  lh         $a1, 0x0($v0)
    /* 2BC98C 802DA55C 0C020295 */  jal        func_80080A54_8FA04
    /* 2BC990 802DA560 84460004 */   lh        $a2, 0x4($v0)
    /* 2BC994 802DA564 8FA3001C */  lw         $v1, 0x1C($sp)
    /* 2BC998 802DA568 8C660020 */  lw         $a2, 0x20($v1)
    /* 2BC99C 802DA56C 84690000 */  lh         $t1, 0x0($v1)
    /* 2BC9A0 802DA570 846A0014 */  lh         $t2, 0x14($v1)
    /* 2BC9A4 802DA574 846B0004 */  lh         $t3, 0x4($v1)
    /* 2BC9A8 802DA578 846C0018 */  lh         $t4, 0x18($v1)
    /* 2BC9AC 802DA57C 30CD1000 */  andi       $t5, $a2, 0x1000
    /* 2BC9B0 802DA580 012A2023 */  subu       $a0, $t1, $t2
    /* 2BC9B4 802DA584 11A0002B */  beqz       $t5, .L802DA634_2BCA64
    /* 2BC9B8 802DA588 016C2823 */   subu      $a1, $t3, $t4
    /* 2BC9BC 802DA58C 00840019 */  multu      $a0, $a0
    /* 2BC9C0 802DA590 846E002C */  lh         $t6, 0x2C($v1)
    /* 2BC9C4 802DA594 3C01802E */  lui        $at, %hi(D_802E3040)
    /* 2BC9C8 802DA598 25CFFFFF */  addiu      $t7, $t6, -0x1
    /* 2BC9CC 802DA59C A46F002C */  sh         $t7, 0x2C($v1)
    /* 2BC9D0 802DA5A0 D4243040 */  ldc1       $f4, %lo(D_802E3040)($at)
    /* 2BC9D4 802DA5A4 93A40043 */  lbu        $a0, 0x43($sp)
    /* 2BC9D8 802DA5A8 0000C012 */  mflo       $t8
    /* 2BC9DC 802DA5AC 00000000 */  nop
    /* 2BC9E0 802DA5B0 00000000 */  nop
    /* 2BC9E4 802DA5B4 00A50019 */  multu      $a1, $a1
    /* 2BC9E8 802DA5B8 24051000 */  addiu      $a1, $zero, 0x1000
    /* 2BC9EC 802DA5BC 0000C812 */  mflo       $t9
    /* 2BC9F0 802DA5C0 03193821 */  addu       $a3, $t8, $t9
    /* 2BC9F4 802DA5C4 44873000 */  mtc1       $a3, $f6
    /* 2BC9F8 802DA5C8 00000000 */  nop
    /* 2BC9FC 802DA5CC 46803221 */  cvt.d.w    $f8, $f6
    /* 2BCA00 802DA5D0 4628203C */  c.lt.d     $f4, $f8
    /* 2BCA04 802DA5D4 00000000 */  nop
    /* 2BCA08 802DA5D8 45030008 */  bc1tl      .L802DA5FC_2BCA2C
    /* 2BCA0C 802DA5DC 8C690020 */   lw        $t1, 0x20($v1)
    /* 2BCA10 802DA5E0 AFA3001C */  sw         $v1, 0x1C($sp)
    /* 2BCA14 802DA5E4 0C0213FA */  jal        func_80084FE8_93F98
    /* 2BCA18 802DA5E8 AFA70018 */   sw        $a3, 0x18($sp)
    /* 2BCA1C 802DA5EC 8FA3001C */  lw         $v1, 0x1C($sp)
    /* 2BCA20 802DA5F0 14400006 */  bnez       $v0, .L802DA60C_2BCA3C
    /* 2BCA24 802DA5F4 8FA70018 */   lw        $a3, 0x18($sp)
    /* 2BCA28 802DA5F8 8C690020 */  lw         $t1, 0x20($v1)
  .L802DA5FC_2BCA2C:
    /* 2BCA2C 802DA5FC 2401EFFF */  addiu      $at, $zero, -0x1001
    /* 2BCA30 802DA600 01215024 */  and        $t2, $t1, $at
    /* 2BCA34 802DA604 1000003D */  b          .L802DA6FC_2BCB2C
    /* 2BCA38 802DA608 AC6A0020 */   sw        $t2, 0x20($v1)
  .L802DA60C_2BCA3C:
    /* 2BCA3C 802DA60C 846B002C */  lh         $t3, 0x2C($v1)
    /* 2BCA40 802DA610 3C010001 */  lui        $at, (0x10000 >> 16)
    /* 2BCA44 802DA614 5560003A */  bnel       $t3, $zero, .L802DA700_2BCB30
    /* 2BCA48 802DA618 8C6D0020 */   lw        $t5, 0x20($v1)
    /* 2BCA4C 802DA61C 8C6C0020 */  lw         $t4, 0x20($v1)
    /* 2BCA50 802DA620 240E0032 */  addiu      $t6, $zero, 0x32
    /* 2BCA54 802DA624 A46E002C */  sh         $t6, 0x2C($v1)
    /* 2BCA58 802DA628 01816826 */  xor        $t5, $t4, $at
    /* 2BCA5C 802DA62C 10000033 */  b          .L802DA6FC_2BCB2C
    /* 2BCA60 802DA630 AC6D0020 */   sw        $t5, 0x20($v1)
  .L802DA634_2BCA64:
    /* 2BCA64 802DA634 00840019 */  multu      $a0, $a0
    /* 2BCA68 802DA638 3C010005 */  lui        $at, (0x57E41 >> 16)
    /* 2BCA6C 802DA63C 34217E41 */  ori        $at, $at, (0x57E41 & 0xFFFF)
    /* 2BCA70 802DA640 34CA0100 */  ori        $t2, $a2, 0x100
    /* 2BCA74 802DA644 00007812 */  mflo       $t7
    /* 2BCA78 802DA648 00000000 */  nop
    /* 2BCA7C 802DA64C 00000000 */  nop
    /* 2BCA80 802DA650 00A50019 */  multu      $a1, $a1
    /* 2BCA84 802DA654 0000C012 */  mflo       $t8
    /* 2BCA88 802DA658 01F83821 */  addu       $a3, $t7, $t8
    /* 2BCA8C 802DA65C 00E1082A */  slt        $at, $a3, $at
    /* 2BCA90 802DA660 50200008 */  beql       $at, $zero, .L802DA684_2BCAB4
    /* 2BCA94 802DA664 2401E7BF */   addiu     $at, $zero, -0x1841
    /* 2BCA98 802DA668 90790047 */  lbu        $t9, 0x47($v1)
    /* 2BCA9C 802DA66C 3C010003 */  lui        $at, (0x31705 >> 16)
    /* 2BCAA0 802DA670 34211705 */  ori        $at, $at, (0x31705 & 0xFFFF)
    /* 2BCAA4 802DA674 33290001 */  andi       $t1, $t9, 0x1
    /* 2BCAA8 802DA678 11200006 */  beqz       $t1, .L802DA694_2BCAC4
    /* 2BCAAC 802DA67C 00E1082A */   slt       $at, $a3, $at
    /* 2BCAB0 802DA680 2401E7BF */  addiu      $at, $zero, -0x1841
  .L802DA684_2BCAB4:
    /* 2BCAB4 802DA684 AC6A0020 */  sw         $t2, 0x20($v1)
    /* 2BCAB8 802DA688 01416024 */  and        $t4, $t2, $at
    /* 2BCABC 802DA68C 1000001B */  b          .L802DA6FC_2BCB2C
    /* 2BCAC0 802DA690 AC6C0020 */   sw        $t4, 0x20($v1)
  .L802DA694_2BCAC4:
    /* 2BCAC4 802DA694 14200013 */  bnez       $at, .L802DA6E4_2BCB14
    /* 2BCAC8 802DA698 93A40043 */   lbu       $a0, 0x43($sp)
    /* 2BCACC 802DA69C 24051000 */  addiu      $a1, $zero, 0x1000
    /* 2BCAD0 802DA6A0 AFA3001C */  sw         $v1, 0x1C($sp)
    /* 2BCAD4 802DA6A4 0C0213FA */  jal        func_80084FE8_93F98
    /* 2BCAD8 802DA6A8 AFA70018 */   sw        $a3, 0x18($sp)
    /* 2BCADC 802DA6AC 8FA3001C */  lw         $v1, 0x1C($sp)
    /* 2BCAE0 802DA6B0 1040000C */  beqz       $v0, .L802DA6E4_2BCB14
    /* 2BCAE4 802DA6B4 8FA70018 */   lw        $a3, 0x18($sp)
    /* 2BCAE8 802DA6B8 8C6D0020 */  lw         $t5, 0x20($v1)
    /* 2BCAEC 802DA6BC 3C010004 */  lui        $at, (0x41800 >> 16)
    /* 2BCAF0 802DA6C0 34211800 */  ori        $at, $at, (0x41800 & 0xFFFF)
    /* 2BCAF4 802DA6C4 01A17025 */  or         $t6, $t5, $at
    /* 2BCAF8 802DA6C8 2401FEBF */  addiu      $at, $zero, -0x141
    /* 2BCAFC 802DA6CC AC6E0020 */  sw         $t6, 0x20($v1)
    /* 2BCB00 802DA6D0 01C1C024 */  and        $t8, $t6, $at
    /* 2BCB04 802DA6D4 24190032 */  addiu      $t9, $zero, 0x32
    /* 2BCB08 802DA6D8 AC780020 */  sw         $t8, 0x20($v1)
    /* 2BCB0C 802DA6DC 10000007 */  b          .L802DA6FC_2BCB2C
    /* 2BCB10 802DA6E0 A479002C */   sh        $t9, 0x2C($v1)
  .L802DA6E4_2BCB14:
    /* 2BCB14 802DA6E4 8C690020 */  lw         $t1, 0x20($v1)
    /* 2BCB18 802DA6E8 2401E7FF */  addiu      $at, $zero, -0x1801
    /* 2BCB1C 802DA6EC 352A0140 */  ori        $t2, $t1, 0x140
    /* 2BCB20 802DA6F0 AC6A0020 */  sw         $t2, 0x20($v1)
    /* 2BCB24 802DA6F4 01416024 */  and        $t4, $t2, $at
    /* 2BCB28 802DA6F8 AC6C0020 */  sw         $t4, 0x20($v1)
  .L802DA6FC_2BCB2C:
    /* 2BCB2C 802DA6FC 8C6D0020 */  lw         $t5, 0x20($v1)
  .L802DA700_2BCB30:
    /* 2BCB30 802DA700 93A40043 */  lbu        $a0, 0x43($sp)
    /* 2BCB34 802DA704 24051000 */  addiu      $a1, $zero, 0x1000
    /* 2BCB38 802DA708 31AE8000 */  andi       $t6, $t5, 0x8000
    /* 2BCB3C 802DA70C 55C00019 */  bnel       $t6, $zero, .L802DA774_2BCBA4
    /* 2BCB40 802DA710 8C660020 */   lw        $a2, 0x20($v1)
    /* 2BCB44 802DA714 AFA3001C */  sw         $v1, 0x1C($sp)
    /* 2BCB48 802DA718 0C0213FA */  jal        func_80084FE8_93F98
    /* 2BCB4C 802DA71C AFA70018 */   sw        $a3, 0x18($sp)
    /* 2BCB50 802DA720 8FA3001C */  lw         $v1, 0x1C($sp)
    /* 2BCB54 802DA724 10400012 */  beqz       $v0, .L802DA770_2BCBA0
    /* 2BCB58 802DA728 8FA70018 */   lw        $a3, 0x18($sp)
    /* 2BCB5C 802DA72C 3C01000A */  lui        $at, (0xAFC80 >> 16)
    /* 2BCB60 802DA730 3421FC80 */  ori        $at, $at, (0xAFC80 & 0xFFFF)
    /* 2BCB64 802DA734 00E1082A */  slt        $at, $a3, $at
    /* 2BCB68 802DA738 1020000D */  beqz       $at, .L802DA770_2BCBA0
    /* 2BCB6C 802DA73C 93A40043 */   lbu       $a0, 0x43($sp)
    /* 2BCB70 802DA740 00002825 */  or         $a1, $zero, $zero
    /* 2BCB74 802DA744 24060014 */  addiu      $a2, $zero, 0x14
    /* 2BCB78 802DA748 0C021C73 */  jal        func_800871CC_9617C
    /* 2BCB7C 802DA74C AFA3001C */   sw        $v1, 0x1C($sp)
    /* 2BCB80 802DA750 10400007 */  beqz       $v0, .L802DA770_2BCBA0
    /* 2BCB84 802DA754 8FA3001C */   lw        $v1, 0x1C($sp)
    /* 2BCB88 802DA758 8C6F0020 */  lw         $t7, 0x20($v1)
    /* 2BCB8C 802DA75C 24190014 */  addiu      $t9, $zero, 0x14
    /* 2BCB90 802DA760 A060004B */  sb         $zero, 0x4B($v1)
    /* 2BCB94 802DA764 35F88000 */  ori        $t8, $t7, 0x8000
    /* 2BCB98 802DA768 AC780020 */  sw         $t8, 0x20($v1)
    /* 2BCB9C 802DA76C A479001E */  sh         $t9, 0x1E($v1)
  .L802DA770_2BCBA0:
    /* 2BCBA0 802DA770 8C660020 */  lw         $a2, 0x20($v1)
  .L802DA774_2BCBA4:
    /* 2BCBA4 802DA774 93A40043 */  lbu        $a0, 0x43($sp)
    /* 2BCBA8 802DA778 3C07802E */  lui        $a3, %hi(D_802E1EE0)
    /* 2BCBAC 802DA77C 30C98000 */  andi       $t1, $a2, 0x8000
    /* 2BCBB0 802DA780 1120000A */  beqz       $t1, .L802DA7AC_2BCBDC
    /* 2BCBB4 802DA784 00065140 */   sll       $t2, $a2, 5
    /* 2BCBB8 802DA788 05410003 */  bgez       $t2, .L802DA798_2BCBC8
    /* 2BCBBC 802DA78C 24060002 */   addiu     $a2, $zero, 0x2
    /* 2BCBC0 802DA790 10000002 */  b          .L802DA79C_2BCBCC
    /* 2BCBC4 802DA794 87A50022 */   lh        $a1, 0x22($sp)
  .L802DA798_2BCBC8:
    /* 2BCBC8 802DA798 87A50026 */  lh         $a1, 0x26($sp)
  .L802DA79C_2BCBCC:
    /* 2BCBCC 802DA79C 24E71EE0 */  addiu      $a3, $a3, %lo(D_802E1EE0)
    /* 2BCBD0 802DA7A0 0C028F40 */  jal        func_800A3D00_B2CB0
    /* 2BCBD4 802DA7A4 AFA3001C */   sw        $v1, 0x1C($sp)
    /* 2BCBD8 802DA7A8 8FA3001C */  lw         $v1, 0x1C($sp)
  .L802DA7AC_2BCBDC:
    /* 2BCBDC 802DA7AC 8462001E */  lh         $v0, 0x1E($v1)
    /* 2BCBE0 802DA7B0 10400002 */  beqz       $v0, .L802DA7BC_2BCBEC
    /* 2BCBE4 802DA7B4 244BFFFF */   addiu     $t3, $v0, -0x1
    /* 2BCBE8 802DA7B8 A46B001E */  sh         $t3, 0x1E($v1)
  .L802DA7BC_2BCBEC:
    /* 2BCBEC 802DA7BC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 2BCBF0 802DA7C0 27BD0040 */  addiu      $sp, $sp, 0x40
    /* 2BCBF4 802DA7C4 03E00008 */  jr         $ra
    /* 2BCBF8 802DA7C8 00000000 */   nop
endlabel func_802DA4CC_2BC8FC
