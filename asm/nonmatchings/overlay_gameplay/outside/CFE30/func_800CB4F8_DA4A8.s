nonmatching func_800CB4F8_DA4A8, 0x824

glabel func_800CB4F8_DA4A8
    /* DA4A8 800CB4F8 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* DA4AC 800CB4FC 3C0E8015 */  lui        $t6, %hi(D_80156EDA)
    /* DA4B0 800CB500 85CE6EDA */  lh         $t6, %lo(D_80156EDA)($t6)
    /* DA4B4 800CB504 AFBF005C */  sw         $ra, 0x5C($sp)
    /* DA4B8 800CB508 AFBE0058 */  sw         $fp, 0x58($sp)
    /* DA4BC 800CB50C 29C1028B */  slti       $at, $t6, 0x28B
    /* DA4C0 800CB510 AFB70054 */  sw         $s7, 0x54($sp)
    /* DA4C4 800CB514 AFB60050 */  sw         $s6, 0x50($sp)
    /* DA4C8 800CB518 AFB5004C */  sw         $s5, 0x4C($sp)
    /* DA4CC 800CB51C AFB40048 */  sw         $s4, 0x48($sp)
    /* DA4D0 800CB520 AFB30044 */  sw         $s3, 0x44($sp)
    /* DA4D4 800CB524 AFB20040 */  sw         $s2, 0x40($sp)
    /* DA4D8 800CB528 AFB1003C */  sw         $s1, 0x3C($sp)
    /* DA4DC 800CB52C AFB00038 */  sw         $s0, 0x38($sp)
    /* DA4E0 800CB530 F7B80030 */  sdc1       $f24, 0x30($sp)
    /* DA4E4 800CB534 F7B60028 */  sdc1       $f22, 0x28($sp)
    /* DA4E8 800CB538 102001E9 */  beqz       $at, .L800CBCE0_DAC90
    /* DA4EC 800CB53C F7B40020 */   sdc1      $f20, 0x20($sp)
    /* DA4F0 800CB540 3C0F8015 */  lui        $t7, %hi(D_80156ED9)
    /* DA4F4 800CB544 91EF6ED9 */  lbu        $t7, %lo(D_80156ED9)($t7)
    /* DA4F8 800CB548 24010002 */  addiu      $at, $zero, 0x2
    /* DA4FC 800CB54C 24030020 */  addiu      $v1, $zero, 0x20
    /* DA500 800CB550 11E101E3 */  beq        $t7, $at, .L800CBCE0_DAC90
    /* DA504 800CB554 3C028015 */   lui       $v0, %hi(D_8015422E)
    /* DA508 800CB558 3C018015 */  lui        $at, %hi(D_80153BCD)
    /* DA50C 800CB55C A0233BCD */  sb         $v1, %lo(D_80153BCD)($at)
    /* DA510 800CB560 8442422E */  lh         $v0, %lo(D_8015422E)($v0)
    /* DA514 800CB564 3C018015 */  lui        $at, %hi(D_80153BCE)
    /* DA518 800CB568 A0233BCE */  sb         $v1, %lo(D_80153BCE)($at)
    /* DA51C 800CB56C 2401FFFB */  addiu      $at, $zero, -0x5
    /* DA520 800CB570 104101DB */  beq        $v0, $at, .L800CBCE0_DAC90
    /* DA524 800CB574 2401FFFA */   addiu     $at, $zero, -0x6
    /* DA528 800CB578 104101D9 */  beq        $v0, $at, .L800CBCE0_DAC90
    /* DA52C 800CB57C 3C1E0708 */   lui       $fp, (0x7080200 >> 16)
    /* DA530 800CB580 3C013FE0 */  lui        $at, (0x3FE00000 >> 16)
    /* DA534 800CB584 4481C800 */  mtc1       $at, $f25
    /* DA538 800CB588 3C018014 */  lui        $at, %hi(D_80143FF8)
    /* DA53C 800CB58C D4363FF8 */  ldc1       $f22, %lo(D_80143FF8)($at)
    /* DA540 800CB590 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* DA544 800CB594 3C171FFF */  lui        $s7, (0x1FFFFFFF >> 16)
    /* DA548 800CB598 3C118006 */  lui        $s1, %hi(D_8005BB2C)
    /* DA54C 800CB59C 4481A000 */  mtc1       $at, $f20
    /* DA550 800CB5A0 4480C000 */  mtc1       $zero, $f24
    /* DA554 800CB5A4 2631BB2C */  addiu      $s1, $s1, %lo(D_8005BB2C)
    /* DA558 800CB5A8 36F7FFFF */  ori        $s7, $s7, (0x1FFFFFFF & 0xFFFF)
    /* DA55C 800CB5AC 37DE0200 */  ori        $fp, $fp, (0x7080200 & 0xFFFF)
    /* DA560 800CB5B0 3C15E600 */  lui        $s5, (0xE6000000 >> 16)
    /* DA564 800CB5B4 3C13E700 */  lui        $s3, (0xE7000000 >> 16)
    /* DA568 800CB5B8 0002C0C0 */  sll        $t8, $v0, 3
  .L800CB5BC_DA56C:
    /* DA56C 800CB5BC 0302C023 */  subu       $t8, $t8, $v0
    /* DA570 800CB5C0 3C198015 */  lui        $t9, %hi(D_80154318)
    /* DA574 800CB5C4 27394318 */  addiu      $t9, $t9, %lo(D_80154318)
    /* DA578 800CB5C8 0018C080 */  sll        $t8, $t8, 2
    /* DA57C 800CB5CC 0319A021 */  addu       $s4, $t8, $t9
    /* DA580 800CB5D0 928C0014 */  lbu        $t4, 0x14($s4)
    /* DA584 800CB5D4 3C0D8005 */  lui        $t5, %hi(D_80052A8C)
    /* DA588 800CB5D8 1180000B */  beqz       $t4, .L800CB608_DA5B8
    /* DA58C 800CB5DC 00000000 */   nop
    /* DA590 800CB5E0 92820014 */  lbu        $v0, 0x14($s4)
    /* DA594 800CB5E4 8DAD2A8C */  lw         $t5, %lo(D_80052A8C)($t5)
    /* DA598 800CB5E8 00027040 */  sll        $t6, $v0, 1
    /* DA59C 800CB5EC 01AE001B */  divu       $zero, $t5, $t6
    /* DA5A0 800CB5F0 00007810 */  mfhi       $t7
    /* DA5A4 800CB5F4 01E2082B */  sltu       $at, $t7, $v0
    /* DA5A8 800CB5F8 15C00002 */  bnez       $t6, .L800CB604_DA5B4
    /* DA5AC 800CB5FC 00000000 */   nop
    /* DA5B0 800CB600 0007000D */  break      7
  .L800CB604_DA5B4:
    /* DA5B4 800CB604 142001B0 */  bnez       $at, .L800CBCC8_DAC78
  .L800CB608_DA5B8:
    /* DA5B8 800CB608 3C018004 */   lui       $at, %hi(D_80047954)
    /* DA5BC 800CB60C C4247954 */  lwc1       $f4, %lo(D_80047954)($at)
    /* DA5C0 800CB610 3C018004 */  lui        $at, %hi(D_8004795C)
    /* DA5C4 800CB614 C42A795C */  lwc1       $f10, %lo(D_8004795C)($at)
    /* DA5C8 800CB618 46142182 */  mul.s      $f6, $f4, $f20
    /* DA5CC 800CB61C 26920008 */  addiu      $s2, $s4, 0x8
    /* DA5D0 800CB620 86580000 */  lh         $t8, 0x0($s2)
    /* DA5D4 800CB624 46145402 */  mul.s      $f16, $f10, $f20
    /* DA5D8 800CB628 864D0004 */  lh         $t5, 0x4($s2)
    /* DA5DC 800CB62C 3C0F8004 */  lui        $t7, %hi(D_80047950)
    /* DA5E0 800CB630 0018CC80 */  sll        $t9, $t8, 18
    /* DA5E4 800CB634 85EF7950 */  lh         $t7, %lo(D_80047950)($t7)
    /* DA5E8 800CB638 00192403 */  sra        $a0, $t9, 16
    /* DA5EC 800CB63C 4600320D */  trunc.w.s  $f8, $f6
    /* DA5F0 800CB640 000D7480 */  sll        $t6, $t5, 18
    /* DA5F4 800CB644 000E2C03 */  sra        $a1, $t6, 16
    /* DA5F8 800CB648 4600848D */  trunc.w.s  $f18, $f16
    /* DA5FC 800CB64C 44074000 */  mfc1       $a3, $f8
    /* DA600 800CB650 24184000 */  addiu      $t8, $zero, 0x4000
    /* DA604 800CB654 96860002 */  lhu        $a2, 0x2($s4)
    /* DA608 800CB658 0007CC00 */  sll        $t9, $a3, 16
    /* DA60C 800CB65C 440E9000 */  mfc1       $t6, $f18
    /* DA610 800CB660 00193C03 */  sra        $a3, $t9, 16
    /* DA614 800CB664 030FC823 */  subu       $t9, $t8, $t7
    /* DA618 800CB668 AFB90014 */  sw         $t9, 0x14($sp)
    /* DA61C 800CB66C 0C02E4EB */  jal        func_800B93AC_C835C
    /* DA620 800CB670 AFAE0010 */   sw        $t6, 0x10($sp)
    /* DA624 800CB674 50400195 */  beql       $v0, $zero, .L800CBCCC_DAC7C
    /* DA628 800CB678 86820004 */   lh        $v0, 0x4($s4)
    /* DA62C 800CB67C 8E300000 */  lw         $s0, 0x0($s1)
    /* DA630 800CB680 3C0EFCFF */  lui        $t6, (0xFCFF99FF >> 16)
    /* DA634 800CB684 3C18FF32 */  lui        $t8, (0xFF327F3F >> 16)
    /* DA638 800CB688 260C0008 */  addiu      $t4, $s0, 0x8
    /* DA63C 800CB68C AE2C0000 */  sw         $t4, 0x0($s1)
    /* DA640 800CB690 AE000004 */  sw         $zero, 0x4($s0)
    /* DA644 800CB694 AE130000 */  sw         $s3, 0x0($s0)
    /* DA648 800CB698 8E300000 */  lw         $s0, 0x0($s1)
    /* DA64C 800CB69C 37187F3F */  ori        $t8, $t8, (0xFF327F3F & 0xFFFF)
    /* DA650 800CB6A0 35CE99FF */  ori        $t6, $t6, (0xFCFF99FF & 0xFFFF)
    /* DA654 800CB6A4 260D0008 */  addiu      $t5, $s0, 0x8
    /* DA658 800CB6A8 AE2D0000 */  sw         $t5, 0x0($s1)
    /* DA65C 800CB6AC AE180004 */  sw         $t8, 0x4($s0)
    /* DA660 800CB6B0 AE0E0000 */  sw         $t6, 0x0($s0)
    /* DA664 800CB6B4 8E300000 */  lw         $s0, 0x0($s1)
    /* DA668 800CB6B8 3C0D0101 */  lui        $t5, %hi(D_100DA00)
    /* DA66C 800CB6BC 25ADDA00 */  addiu      $t5, $t5, %lo(D_100DA00)
    /* DA670 800CB6C0 260F0008 */  addiu      $t7, $s0, 0x8
    /* DA674 800CB6C4 AE2F0000 */  sw         $t7, 0x0($s1)
    /* DA678 800CB6C8 AE000004 */  sw         $zero, 0x4($s0)
    /* DA67C 800CB6CC AE130000 */  sw         $s3, 0x0($s0)
    /* DA680 800CB6D0 8E300000 */  lw         $s0, 0x0($s1)
    /* DA684 800CB6D4 01B77024 */  and        $t6, $t5, $s7
    /* DA688 800CB6D8 3C0CFD90 */  lui        $t4, (0xFD900000 >> 16)
    /* DA68C 800CB6DC 26190008 */  addiu      $t9, $s0, 0x8
    /* DA690 800CB6E0 AE390000 */  sw         $t9, 0x0($s1)
    /* DA694 800CB6E4 AE0E0004 */  sw         $t6, 0x4($s0)
    /* DA698 800CB6E8 AE0C0000 */  sw         $t4, 0x0($s0)
    /* DA69C 800CB6EC 8E300000 */  lw         $s0, 0x0($s1)
    /* DA6A0 800CB6F0 3C0FF590 */  lui        $t7, (0xF5900000 >> 16)
    /* DA6A4 800CB6F4 3C0E070F */  lui        $t6, (0x70FF400 >> 16)
    /* DA6A8 800CB6F8 26180008 */  addiu      $t8, $s0, 0x8
    /* DA6AC 800CB6FC AE380000 */  sw         $t8, 0x0($s1)
    /* DA6B0 800CB700 AE1E0004 */  sw         $fp, 0x4($s0)
    /* DA6B4 800CB704 AE0F0000 */  sw         $t7, 0x0($s0)
    /* DA6B8 800CB708 8E300000 */  lw         $s0, 0x0($s1)
    /* DA6BC 800CB70C 35CEF400 */  ori        $t6, $t6, (0x70FF400 & 0xFFFF)
    /* DA6C0 800CB710 3C0DF300 */  lui        $t5, (0xF3000000 >> 16)
    /* DA6C4 800CB714 26190008 */  addiu      $t9, $s0, 0x8
    /* DA6C8 800CB718 AE390000 */  sw         $t9, 0x0($s1)
    /* DA6CC 800CB71C AE000004 */  sw         $zero, 0x4($s0)
    /* DA6D0 800CB720 AE150000 */  sw         $s5, 0x0($s0)
    /* DA6D4 800CB724 8E300000 */  lw         $s0, 0x0($s1)
    /* DA6D8 800CB728 3C19F580 */  lui        $t9, (0xF5800400 >> 16)
    /* DA6DC 800CB72C 37390400 */  ori        $t9, $t9, (0xF5800400 & 0xFFFF)
    /* DA6E0 800CB730 260C0008 */  addiu      $t4, $s0, 0x8
    /* DA6E4 800CB734 AE2C0000 */  sw         $t4, 0x0($s1)
    /* DA6E8 800CB738 AE0E0004 */  sw         $t6, 0x4($s0)
    /* DA6EC 800CB73C AE0D0000 */  sw         $t5, 0x0($s0)
    /* DA6F0 800CB740 8E300000 */  lw         $s0, 0x0($s1)
    /* DA6F4 800CB744 3C0C0008 */  lui        $t4, (0x80200 >> 16)
    /* DA6F8 800CB748 358C0200 */  ori        $t4, $t4, (0x80200 & 0xFFFF)
    /* DA6FC 800CB74C 26180008 */  addiu      $t8, $s0, 0x8
    /* DA700 800CB750 AE380000 */  sw         $t8, 0x0($s1)
    /* DA704 800CB754 AE000004 */  sw         $zero, 0x4($s0)
    /* DA708 800CB758 AE130000 */  sw         $s3, 0x0($s0)
    /* DA70C 800CB75C 8E300000 */  lw         $s0, 0x0($s1)
    /* DA710 800CB760 3C180007 */  lui        $t8, (0x7C07C >> 16)
    /* DA714 800CB764 3718C07C */  ori        $t8, $t8, (0x7C07C & 0xFFFF)
    /* DA718 800CB768 260F0008 */  addiu      $t7, $s0, 0x8
    /* DA71C 800CB76C AE2F0000 */  sw         $t7, 0x0($s1)
    /* DA720 800CB770 AE0C0004 */  sw         $t4, 0x4($s0)
    /* DA724 800CB774 AE190000 */  sw         $t9, 0x0($s0)
    /* DA728 800CB778 8E300000 */  lw         $s0, 0x0($s1)
    /* DA72C 800CB77C 3C0EF200 */  lui        $t6, (0xF2000000 >> 16)
    /* DA730 800CB780 3C018015 */  lui        $at, %hi(D_80153BB8)
    /* DA734 800CB784 260D0008 */  addiu      $t5, $s0, 0x8
    /* DA738 800CB788 AE2D0000 */  sw         $t5, 0x0($s1)
    /* DA73C 800CB78C AE180004 */  sw         $t8, 0x4($s0)
    /* DA740 800CB790 AE0E0000 */  sw         $t6, 0x0($s0)
    /* DA744 800CB794 8E300000 */  lw         $s0, 0x0($s1)
    /* DA748 800CB798 3C160101 */  lui        $s6, %hi(D_1010880)
    /* DA74C 800CB79C 26D60880 */  addiu      $s6, $s6, %lo(D_1010880)
    /* DA750 800CB7A0 260F0008 */  addiu      $t7, $s0, 0x8
    /* DA754 800CB7A4 AE2F0000 */  sw         $t7, 0x0($s1)
    /* DA758 800CB7A8 AE000004 */  sw         $zero, 0x4($s0)
    /* DA75C 800CB7AC AE130000 */  sw         $s3, 0x0($s0)
    /* DA760 800CB7B0 86590000 */  lh         $t9, 0x0($s2)
    /* DA764 800CB7B4 00196080 */  sll        $t4, $t9, 2
    /* DA768 800CB7B8 448C2000 */  mtc1       $t4, $f4
    /* DA76C 800CB7BC 00000000 */  nop
    /* DA770 800CB7C0 468021A0 */  cvt.s.w    $f6, $f4
    /* DA774 800CB7C4 E4263BB8 */  swc1       $f6, %lo(D_80153BB8)($at)
    /* DA778 800CB7C8 864F0004 */  lh         $t7, 0x4($s2)
    /* DA77C 800CB7CC 864D0000 */  lh         $t5, 0x0($s2)
    /* DA780 800CB7D0 000FCC80 */  sll        $t9, $t7, 18
    /* DA784 800CB7D4 000D7480 */  sll        $t6, $t5, 18
    /* DA788 800CB7D8 000E2403 */  sra        $a0, $t6, 16
    /* DA78C 800CB7DC 0C02E134 */  jal        func_800B84D0_C7480
    /* DA790 800CB7E0 00192C03 */   sra       $a1, $t9, 16
    /* DA794 800CB7E4 00026A03 */  sra        $t5, $v0, 8
    /* DA798 800CB7E8 25AE0002 */  addiu      $t6, $t5, 0x2
    /* DA79C 800CB7EC 448E4000 */  mtc1       $t6, $f8
    /* DA7A0 800CB7F0 3C018015 */  lui        $at, %hi(D_80153BBC)
    /* DA7A4 800CB7F4 3C198015 */  lui        $t9, %hi(D_80153B84)
    /* DA7A8 800CB7F8 468042A0 */  cvt.s.w    $f10, $f8
    /* DA7AC 800CB7FC 27393B84 */  addiu      $t9, $t9, %lo(D_80153B84)
    /* DA7B0 800CB800 240E0069 */  addiu      $t6, $zero, 0x69
    /* DA7B4 800CB804 E42A3BBC */  swc1       $f10, %lo(D_80153BBC)($at)
    /* DA7B8 800CB808 86580004 */  lh         $t8, 0x4($s2)
    /* DA7BC 800CB80C 3C018015 */  lui        $at, %hi(D_80153BC0)
    /* DA7C0 800CB810 00187880 */  sll        $t7, $t8, 2
    /* DA7C4 800CB814 448F8000 */  mtc1       $t7, $f16
    /* DA7C8 800CB818 00000000 */  nop
    /* DA7CC 800CB81C 468084A0 */  cvt.s.w    $f18, $f16
    /* DA7D0 800CB820 E4323BC0 */  swc1       $f18, %lo(D_80153BC0)($at)
    /* DA7D4 800CB824 3C018015 */  lui        $at, %hi(D_80153BC4)
    /* DA7D8 800CB828 AC393BC4 */  sw         $t9, %lo(D_80153BC4)($at)
    /* DA7DC 800CB82C 868C0002 */  lh         $t4, 0x2($s4)
    /* DA7E0 800CB830 3C018015 */  lui        $at, %hi(D_80153BC8)
    /* DA7E4 800CB834 000C6883 */  sra        $t5, $t4, 2
    /* DA7E8 800CB838 448D2000 */  mtc1       $t5, $f4
    /* DA7EC 800CB83C 00000000 */  nop
    /* DA7F0 800CB840 468021A0 */  cvt.s.w    $f6, $f4
    /* DA7F4 800CB844 E4263BC8 */  swc1       $f6, %lo(D_80153BC8)($at)
    /* DA7F8 800CB848 3C018015 */  lui        $at, %hi(D_80153BCC)
    /* DA7FC 800CB84C 0C036BF3 */  jal        func_800DAFCC_E9F7C
    /* DA800 800CB850 A02E3BCC */   sb        $t6, %lo(D_80153BCC)($at)
    /* DA804 800CB854 8E300000 */  lw         $s0, 0x0($s1)
    /* DA808 800CB858 3C0FFD90 */  lui        $t7, (0xFD900000 >> 16)
    /* DA80C 800CB85C 3C0D0101 */  lui        $t5, %hi(D_100BF00)
    /* DA810 800CB860 26180008 */  addiu      $t8, $s0, 0x8
    /* DA814 800CB864 AE380000 */  sw         $t8, 0x0($s1)
    /* DA818 800CB868 AE0F0000 */  sw         $t7, 0x0($s0)
    /* DA81C 800CB86C 9259000A */  lbu        $t9, 0xA($s2)
    /* DA820 800CB870 25ADBF00 */  addiu      $t5, $t5, %lo(D_100BF00)
    /* DA824 800CB874 3C018015 */  lui        $at, %hi(D_80153BB8)
    /* DA828 800CB878 00196240 */  sll        $t4, $t9, 9
    /* DA82C 800CB87C 018D7021 */  addu       $t6, $t4, $t5
    /* DA830 800CB880 01D7C024 */  and        $t8, $t6, $s7
    /* DA834 800CB884 AE180004 */  sw         $t8, 0x4($s0)
    /* DA838 800CB888 8E300000 */  lw         $s0, 0x0($s1)
    /* DA83C 800CB88C 3C19F590 */  lui        $t9, (0xF5900000 >> 16)
    /* DA840 800CB890 3C18070F */  lui        $t8, (0x70FF400 >> 16)
    /* DA844 800CB894 260F0008 */  addiu      $t7, $s0, 0x8
    /* DA848 800CB898 AE2F0000 */  sw         $t7, 0x0($s1)
    /* DA84C 800CB89C AE1E0004 */  sw         $fp, 0x4($s0)
    /* DA850 800CB8A0 AE190000 */  sw         $t9, 0x0($s0)
    /* DA854 800CB8A4 8E300000 */  lw         $s0, 0x0($s1)
    /* DA858 800CB8A8 3718F400 */  ori        $t8, $t8, (0x70FF400 & 0xFFFF)
    /* DA85C 800CB8AC 3C0EF300 */  lui        $t6, (0xF3000000 >> 16)
    /* DA860 800CB8B0 260C0008 */  addiu      $t4, $s0, 0x8
    /* DA864 800CB8B4 AE2C0000 */  sw         $t4, 0x0($s1)
    /* DA868 800CB8B8 AE000004 */  sw         $zero, 0x4($s0)
    /* DA86C 800CB8BC AE150000 */  sw         $s5, 0x0($s0)
    /* DA870 800CB8C0 8E300000 */  lw         $s0, 0x0($s1)
    /* DA874 800CB8C4 3C0CF580 */  lui        $t4, (0xF5800400 >> 16)
    /* DA878 800CB8C8 358C0400 */  ori        $t4, $t4, (0xF5800400 & 0xFFFF)
    /* DA87C 800CB8CC 260D0008 */  addiu      $t5, $s0, 0x8
    /* DA880 800CB8D0 AE2D0000 */  sw         $t5, 0x0($s1)
    /* DA884 800CB8D4 AE180004 */  sw         $t8, 0x4($s0)
    /* DA888 800CB8D8 AE0E0000 */  sw         $t6, 0x0($s0)
    /* DA88C 800CB8DC 8E300000 */  lw         $s0, 0x0($s1)
    /* DA890 800CB8E0 3C0D0008 */  lui        $t5, (0x80200 >> 16)
    /* DA894 800CB8E4 35AD0200 */  ori        $t5, $t5, (0x80200 & 0xFFFF)
    /* DA898 800CB8E8 260F0008 */  addiu      $t7, $s0, 0x8
    /* DA89C 800CB8EC AE2F0000 */  sw         $t7, 0x0($s1)
    /* DA8A0 800CB8F0 AE000004 */  sw         $zero, 0x4($s0)
    /* DA8A4 800CB8F4 AE130000 */  sw         $s3, 0x0($s0)
    /* DA8A8 800CB8F8 8E300000 */  lw         $s0, 0x0($s1)
    /* DA8AC 800CB8FC 3C0F0007 */  lui        $t7, (0x7C07C >> 16)
    /* DA8B0 800CB900 35EFC07C */  ori        $t7, $t7, (0x7C07C & 0xFFFF)
    /* DA8B4 800CB904 26190008 */  addiu      $t9, $s0, 0x8
    /* DA8B8 800CB908 AE390000 */  sw         $t9, 0x0($s1)
    /* DA8BC 800CB90C AE0D0004 */  sw         $t5, 0x4($s0)
    /* DA8C0 800CB910 AE0C0000 */  sw         $t4, 0x0($s0)
    /* DA8C4 800CB914 8E300000 */  lw         $s0, 0x0($s1)
    /* DA8C8 800CB918 3C18F200 */  lui        $t8, (0xF2000000 >> 16)
    /* DA8CC 800CB91C 260E0008 */  addiu      $t6, $s0, 0x8
    /* DA8D0 800CB920 AE2E0000 */  sw         $t6, 0x0($s1)
    /* DA8D4 800CB924 AE0F0004 */  sw         $t7, 0x4($s0)
    /* DA8D8 800CB928 AE180000 */  sw         $t8, 0x0($s0)
    /* DA8DC 800CB92C 8E300000 */  lw         $s0, 0x0($s1)
    /* DA8E0 800CB930 26190008 */  addiu      $t9, $s0, 0x8
    /* DA8E4 800CB934 AE390000 */  sw         $t9, 0x0($s1)
    /* DA8E8 800CB938 AE000004 */  sw         $zero, 0x4($s0)
    /* DA8EC 800CB93C AE130000 */  sw         $s3, 0x0($s0)
    /* DA8F0 800CB940 864C0000 */  lh         $t4, 0x0($s2)
    /* DA8F4 800CB944 000C6880 */  sll        $t5, $t4, 2
    /* DA8F8 800CB948 448D4000 */  mtc1       $t5, $f8
    /* DA8FC 800CB94C 00000000 */  nop
    /* DA900 800CB950 468042A0 */  cvt.s.w    $f10, $f8
    /* DA904 800CB954 E42A3BB8 */  swc1       $f10, %lo(D_80153BB8)($at)
    /* DA908 800CB958 92580009 */  lbu        $t8, 0x9($s2)
    /* DA90C 800CB95C 24010032 */  addiu      $at, $zero, 0x32
    /* DA910 800CB960 864E0002 */  lh         $t6, 0x2($s2)
    /* DA914 800CB964 0301001A */  div        $zero, $t8, $at
    /* DA918 800CB968 00007812 */  mflo       $t7
    /* DA91C 800CB96C 01CFC821 */  addu       $t9, $t6, $t7
    /* DA920 800CB970 00196080 */  sll        $t4, $t9, 2
    /* DA924 800CB974 448C8000 */  mtc1       $t4, $f16
    /* DA928 800CB978 3C018015 */  lui        $at, %hi(D_80153BBC)
    /* DA92C 800CB97C 3C19FF00 */  lui        $t9, (0xFF000000 >> 16)
    /* DA930 800CB980 468084A0 */  cvt.s.w    $f18, $f16
    /* DA934 800CB984 3C0FFA00 */  lui        $t7, (0xFA000000 >> 16)
    /* DA938 800CB988 264C0006 */  addiu      $t4, $s2, 0x6
    /* DA93C 800CB98C E4323BBC */  swc1       $f18, %lo(D_80153BBC)($at)
    /* DA940 800CB990 864D0004 */  lh         $t5, 0x4($s2)
    /* DA944 800CB994 3C018015 */  lui        $at, %hi(D_80153BC0)
    /* DA948 800CB998 000DC080 */  sll        $t8, $t5, 2
    /* DA94C 800CB99C 44982000 */  mtc1       $t8, $f4
    /* DA950 800CB9A0 241800FF */  addiu      $t8, $zero, 0xFF
    /* DA954 800CB9A4 468021A0 */  cvt.s.w    $f6, $f4
    /* DA958 800CB9A8 E4263BC0 */  swc1       $f6, %lo(D_80153BC0)($at)
    /* DA95C 800CB9AC 8E300000 */  lw         $s0, 0x0($s1)
    /* DA960 800CB9B0 3C018015 */  lui        $at, %hi(D_80153BC4)
    /* DA964 800CB9B4 260E0008 */  addiu      $t6, $s0, 0x8
    /* DA968 800CB9B8 AE2E0000 */  sw         $t6, 0x0($s1)
    /* DA96C 800CB9BC AE190004 */  sw         $t9, 0x4($s0)
    /* DA970 800CB9C0 AE0F0000 */  sw         $t7, 0x0($s0)
    /* DA974 800CB9C4 AC2C3BC4 */  sw         $t4, %lo(D_80153BC4)($at)
    /* DA978 800CB9C8 868D0002 */  lh         $t5, 0x2($s4)
    /* DA97C 800CB9CC 3C018015 */  lui        $at, %hi(D_80153BC8)
    /* DA980 800CB9D0 448D4000 */  mtc1       $t5, $f8
    /* DA984 800CB9D4 00000000 */  nop
    /* DA988 800CB9D8 468042A0 */  cvt.s.w    $f10, $f8
    /* DA98C 800CB9DC 46005421 */  cvt.d.s    $f16, $f10
    /* DA990 800CB9E0 46368482 */  mul.d      $f18, $f16, $f22
    /* DA994 800CB9E4 46209120 */  cvt.s.d    $f4, $f18
    /* DA998 800CB9E8 E4243BC8 */  swc1       $f4, %lo(D_80153BC8)($at)
    /* DA99C 800CB9EC 3C018015 */  lui        $at, %hi(D_80153BCC)
    /* DA9A0 800CB9F0 0C036CD4 */  jal        func_800DB350_EA300
    /* DA9A4 800CB9F4 A0383BCC */   sb        $t8, %lo(D_80153BCC)($at)
    /* DA9A8 800CB9F8 8E300000 */  lw         $s0, 0x0($s1)
    /* DA9AC 800CB9FC 3C19FCFF */  lui        $t9, (0xFCFFFFFF >> 16)
    /* DA9B0 800CBA00 3C0CFFFC */  lui        $t4, (0xFFFCF279 >> 16)
    /* DA9B4 800CBA04 260E0008 */  addiu      $t6, $s0, 0x8
    /* DA9B8 800CBA08 AE2E0000 */  sw         $t6, 0x0($s1)
    /* DA9BC 800CBA0C AE000004 */  sw         $zero, 0x4($s0)
    /* DA9C0 800CBA10 AE130000 */  sw         $s3, 0x0($s0)
    /* DA9C4 800CBA14 8E300000 */  lw         $s0, 0x0($s1)
    /* DA9C8 800CBA18 358CF279 */  ori        $t4, $t4, (0xFFFCF279 & 0xFFFF)
    /* DA9CC 800CBA1C 3739FFFF */  ori        $t9, $t9, (0xFCFFFFFF & 0xFFFF)
    /* DA9D0 800CBA20 260F0008 */  addiu      $t7, $s0, 0x8
    /* DA9D4 800CBA24 AE2F0000 */  sw         $t7, 0x0($s1)
    /* DA9D8 800CBA28 AE0C0004 */  sw         $t4, 0x4($s0)
    /* DA9DC 800CBA2C AE190000 */  sw         $t9, 0x0($s0)
    /* DA9E0 800CBA30 8E300000 */  lw         $s0, 0x0($s1)
    /* DA9E4 800CBA34 3C0EBA00 */  lui        $t6, (0xBA000E02 >> 16)
    /* DA9E8 800CBA38 35CE0E02 */  ori        $t6, $t6, (0xBA000E02 & 0xFFFF)
    /* DA9EC 800CBA3C 260D0008 */  addiu      $t5, $s0, 0x8
    /* DA9F0 800CBA40 AE2D0000 */  sw         $t5, 0x0($s1)
    /* DA9F4 800CBA44 AE000004 */  sw         $zero, 0x4($s0)
    /* DA9F8 800CBA48 AE130000 */  sw         $s3, 0x0($s0)
    /* DA9FC 800CBA4C 8E300000 */  lw         $s0, 0x0($s1)
    /* DAA00 800CBA50 340F8000 */  ori        $t7, $zero, 0x8000
    /* DAA04 800CBA54 3C0CFD10 */  lui        $t4, (0xFD100000 >> 16)
    /* DAA08 800CBA58 26180008 */  addiu      $t8, $s0, 0x8
    /* DAA0C 800CBA5C AE380000 */  sw         $t8, 0x0($s1)
    /* DAA10 800CBA60 AE0F0004 */  sw         $t7, 0x4($s0)
    /* DAA14 800CBA64 AE0E0000 */  sw         $t6, 0x0($s0)
    /* DAA18 800CBA68 8E300000 */  lw         $s0, 0x0($s1)
    /* DAA1C 800CBA6C 3C18E800 */  lui        $t8, (0xE8000000 >> 16)
    /* DAA20 800CBA70 3C0FF500 */  lui        $t7, (0xF5000100 >> 16)
    /* DAA24 800CBA74 26190008 */  addiu      $t9, $s0, 0x8
    /* DAA28 800CBA78 AE390000 */  sw         $t9, 0x0($s1)
    /* DAA2C 800CBA7C AE160004 */  sw         $s6, 0x4($s0)
    /* DAA30 800CBA80 AE0C0000 */  sw         $t4, 0x0($s0)
    /* DAA34 800CBA84 8E300000 */  lw         $s0, 0x0($s1)
    /* DAA38 800CBA88 3C190700 */  lui        $t9, (0x7000000 >> 16)
    /* DAA3C 800CBA8C 35EF0100 */  ori        $t7, $t7, (0xF5000100 & 0xFFFF)
    /* DAA40 800CBA90 260D0008 */  addiu      $t5, $s0, 0x8
    /* DAA44 800CBA94 AE2D0000 */  sw         $t5, 0x0($s1)
    /* DAA48 800CBA98 AE000004 */  sw         $zero, 0x4($s0)
    /* DAA4C 800CBA9C AE180000 */  sw         $t8, 0x0($s0)
    /* DAA50 800CBAA0 8E300000 */  lw         $s0, 0x0($s1)
    /* DAA54 800CBAA4 3C18F000 */  lui        $t8, (0xF0000000 >> 16)
    /* DAA58 800CBAA8 3C018015 */  lui        $at, %hi(D_80153BB8)
    /* DAA5C 800CBAAC 260E0008 */  addiu      $t6, $s0, 0x8
    /* DAA60 800CBAB0 AE2E0000 */  sw         $t6, 0x0($s1)
    /* DAA64 800CBAB4 AE190004 */  sw         $t9, 0x4($s0)
    /* DAA68 800CBAB8 AE0F0000 */  sw         $t7, 0x0($s0)
    /* DAA6C 800CBABC 8E300000 */  lw         $s0, 0x0($s1)
    /* DAA70 800CBAC0 3C0E073F */  lui        $t6, (0x73FC000 >> 16)
    /* DAA74 800CBAC4 35CEC000 */  ori        $t6, $t6, (0x73FC000 & 0xFFFF)
    /* DAA78 800CBAC8 260C0008 */  addiu      $t4, $s0, 0x8
    /* DAA7C 800CBACC AE2C0000 */  sw         $t4, 0x0($s1)
    /* DAA80 800CBAD0 AE000004 */  sw         $zero, 0x4($s0)
    /* DAA84 800CBAD4 AE150000 */  sw         $s5, 0x0($s0)
    /* DAA88 800CBAD8 8E300000 */  lw         $s0, 0x0($s1)
    /* DAA8C 800CBADC 3C0CFD50 */  lui        $t4, (0xFD500000 >> 16)
    /* DAA90 800CBAE0 260D0008 */  addiu      $t5, $s0, 0x8
    /* DAA94 800CBAE4 AE2D0000 */  sw         $t5, 0x0($s1)
    /* DAA98 800CBAE8 AE0E0004 */  sw         $t6, 0x4($s0)
    /* DAA9C 800CBAEC AE180000 */  sw         $t8, 0x0($s0)
    /* DAAA0 800CBAF0 8E300000 */  lw         $s0, 0x0($s1)
    /* DAAA4 800CBAF4 3C0E8014 */  lui        $t6, %hi(D_8013DC80)
    /* DAAA8 800CBAF8 260F0008 */  addiu      $t7, $s0, 0x8
    /* DAAAC 800CBAFC AE2F0000 */  sw         $t7, 0x0($s1)
    /* DAAB0 800CBB00 AE000004 */  sw         $zero, 0x4($s0)
    /* DAAB4 800CBB04 AE130000 */  sw         $s3, 0x0($s0)
    /* DAAB8 800CBB08 8E300000 */  lw         $s0, 0x0($s1)
    /* DAABC 800CBB0C 26190008 */  addiu      $t9, $s0, 0x8
    /* DAAC0 800CBB10 AE390000 */  sw         $t9, 0x0($s1)
    /* DAAC4 800CBB14 AE0C0000 */  sw         $t4, 0x0($s0)
    /* DAAC8 800CBB18 924D000B */  lbu        $t5, 0xB($s2)
    /* DAACC 800CBB1C 3C0CF550 */  lui        $t4, (0xF5500000 >> 16)
    /* DAAD0 800CBB20 000DC080 */  sll        $t8, $t5, 2
    /* DAAD4 800CBB24 01D87021 */  addu       $t6, $t6, $t8
    /* DAAD8 800CBB28 8DCEDC80 */  lw         $t6, %lo(D_8013DC80)($t6)
    /* DAADC 800CBB2C 01D77824 */  and        $t7, $t6, $s7
    /* DAAE0 800CBB30 AE0F0004 */  sw         $t7, 0x4($s0)
    /* DAAE4 800CBB34 8E300000 */  lw         $s0, 0x0($s1)
    /* DAAE8 800CBB38 3C0F071F */  lui        $t7, (0x71FF200 >> 16)
    /* DAAEC 800CBB3C 35EFF200 */  ori        $t7, $t7, (0x71FF200 & 0xFFFF)
    /* DAAF0 800CBB40 26190008 */  addiu      $t9, $s0, 0x8
    /* DAAF4 800CBB44 AE390000 */  sw         $t9, 0x0($s1)
    /* DAAF8 800CBB48 AE1E0004 */  sw         $fp, 0x4($s0)
    /* DAAFC 800CBB4C AE0C0000 */  sw         $t4, 0x0($s0)
    /* DAB00 800CBB50 8E300000 */  lw         $s0, 0x0($s1)
    /* DAB04 800CBB54 3C0EF300 */  lui        $t6, (0xF3000000 >> 16)
    /* DAB08 800CBB58 260D0008 */  addiu      $t5, $s0, 0x8
    /* DAB0C 800CBB5C AE2D0000 */  sw         $t5, 0x0($s1)
    /* DAB10 800CBB60 AE000004 */  sw         $zero, 0x4($s0)
    /* DAB14 800CBB64 AE150000 */  sw         $s5, 0x0($s0)
    /* DAB18 800CBB68 8E300000 */  lw         $s0, 0x0($s1)
    /* DAB1C 800CBB6C 3C0DF548 */  lui        $t5, (0xF5480800 >> 16)
    /* DAB20 800CBB70 35AD0800 */  ori        $t5, $t5, (0xF5480800 & 0xFFFF)
    /* DAB24 800CBB74 26180008 */  addiu      $t8, $s0, 0x8
    /* DAB28 800CBB78 AE380000 */  sw         $t8, 0x0($s1)
    /* DAB2C 800CBB7C AE0F0004 */  sw         $t7, 0x4($s0)
    /* DAB30 800CBB80 AE0E0000 */  sw         $t6, 0x0($s0)
    /* DAB34 800CBB84 8E300000 */  lw         $s0, 0x0($s1)
    /* DAB38 800CBB88 3C180008 */  lui        $t8, (0x80200 >> 16)
    /* DAB3C 800CBB8C 37180200 */  ori        $t8, $t8, (0x80200 & 0xFFFF)
    /* DAB40 800CBB90 26190008 */  addiu      $t9, $s0, 0x8
    /* DAB44 800CBB94 AE390000 */  sw         $t9, 0x0($s1)
    /* DAB48 800CBB98 AE000004 */  sw         $zero, 0x4($s0)
    /* DAB4C 800CBB9C AE130000 */  sw         $s3, 0x0($s0)
    /* DAB50 800CBBA0 8E300000 */  lw         $s0, 0x0($s1)
    /* DAB54 800CBBA4 3C190007 */  lui        $t9, (0x7C07C >> 16)
    /* DAB58 800CBBA8 3739C07C */  ori        $t9, $t9, (0x7C07C & 0xFFFF)
    /* DAB5C 800CBBAC 260C0008 */  addiu      $t4, $s0, 0x8
    /* DAB60 800CBBB0 AE2C0000 */  sw         $t4, 0x0($s1)
    /* DAB64 800CBBB4 AE180004 */  sw         $t8, 0x4($s0)
    /* DAB68 800CBBB8 AE0D0000 */  sw         $t5, 0x0($s0)
    /* DAB6C 800CBBBC 8E300000 */  lw         $s0, 0x0($s1)
    /* DAB70 800CBBC0 3C0FF200 */  lui        $t7, (0xF2000000 >> 16)
    /* DAB74 800CBBC4 260E0008 */  addiu      $t6, $s0, 0x8
    /* DAB78 800CBBC8 AE2E0000 */  sw         $t6, 0x0($s1)
    /* DAB7C 800CBBCC AE190004 */  sw         $t9, 0x4($s0)
    /* DAB80 800CBBD0 AE0F0000 */  sw         $t7, 0x0($s0)
    /* DAB84 800CBBD4 8E300000 */  lw         $s0, 0x0($s1)
    /* DAB88 800CBBD8 260C0008 */  addiu      $t4, $s0, 0x8
    /* DAB8C 800CBBDC AE2C0000 */  sw         $t4, 0x0($s1)
    /* DAB90 800CBBE0 AE000004 */  sw         $zero, 0x4($s0)
    /* DAB94 800CBBE4 AE130000 */  sw         $s3, 0x0($s0)
    /* DAB98 800CBBE8 864D0000 */  lh         $t5, 0x0($s2)
    /* DAB9C 800CBBEC 000DC080 */  sll        $t8, $t5, 2
    /* DABA0 800CBBF0 44983000 */  mtc1       $t8, $f6
    /* DABA4 800CBBF4 00000000 */  nop
    /* DABA8 800CBBF8 46803220 */  cvt.s.w    $f8, $f6
    /* DABAC 800CBBFC E4283BB8 */  swc1       $f8, %lo(D_80153BB8)($at)
    /* DABB0 800CBC00 924F0009 */  lbu        $t7, 0x9($s2)
    /* DABB4 800CBC04 24010032 */  addiu      $at, $zero, 0x32
    /* DABB8 800CBC08 864E0002 */  lh         $t6, 0x2($s2)
    /* DABBC 800CBC0C 01E1001A */  div        $zero, $t7, $at
    /* DABC0 800CBC10 0000C812 */  mflo       $t9
    /* DABC4 800CBC14 01D96021 */  addu       $t4, $t6, $t9
    /* DABC8 800CBC18 000C6880 */  sll        $t5, $t4, 2
    /* DABCC 800CBC1C 448D5000 */  mtc1       $t5, $f10
    /* DABD0 800CBC20 3C018015 */  lui        $at, %hi(D_80153BBC)
    /* DABD4 800CBC24 3C0E8015 */  lui        $t6, %hi(D_80153B84)
    /* DABD8 800CBC28 46805420 */  cvt.s.w    $f16, $f10
    /* DABDC 800CBC2C 25CE3B84 */  addiu      $t6, $t6, %lo(D_80153B84)
    /* DABE0 800CBC30 E4303BBC */  swc1       $f16, %lo(D_80153BBC)($at)
    /* DABE4 800CBC34 86580004 */  lh         $t8, 0x4($s2)
    /* DABE8 800CBC38 3C018015 */  lui        $at, %hi(D_80153BC0)
    /* DABEC 800CBC3C 00187880 */  sll        $t7, $t8, 2
    /* DABF0 800CBC40 448F9000 */  mtc1       $t7, $f18
    /* DABF4 800CBC44 00000000 */  nop
    /* DABF8 800CBC48 46809120 */  cvt.s.w    $f4, $f18
    /* DABFC 800CBC4C E4243BC0 */  swc1       $f4, %lo(D_80153BC0)($at)
    /* DAC00 800CBC50 3C018015 */  lui        $at, %hi(D_80153BC4)
    /* DAC04 800CBC54 AC2E3BC4 */  sw         $t6, %lo(D_80153BC4)($at)
    /* DAC08 800CBC58 86990002 */  lh         $t9, 0x2($s4)
    /* DAC0C 800CBC5C 3C018015 */  lui        $at, %hi(D_80153BC8)
    /* DAC10 800CBC60 44993000 */  mtc1       $t9, $f6
    /* DAC14 800CBC64 00000000 */  nop
    /* DAC18 800CBC68 46803220 */  cvt.s.w    $f8, $f6
    /* DAC1C 800CBC6C 460042A1 */  cvt.d.s    $f10, $f8
    /* DAC20 800CBC70 46385402 */  mul.d      $f16, $f10, $f24
    /* DAC24 800CBC74 462084A0 */  cvt.s.d    $f18, $f16
    /* DAC28 800CBC78 0C036CD4 */  jal        func_800DB350_EA300
    /* DAC2C 800CBC7C E4323BC8 */   swc1      $f18, %lo(D_80153BC8)($at)
    /* DAC30 800CBC80 8E300000 */  lw         $s0, 0x0($s1)
    /* DAC34 800CBC84 3C18BA00 */  lui        $t8, (0xBA000E02 >> 16)
    /* DAC38 800CBC88 3C048015 */  lui        $a0, %hi(D_80156EDA)
    /* DAC3C 800CBC8C 260C0008 */  addiu      $t4, $s0, 0x8
    /* DAC40 800CBC90 AE2C0000 */  sw         $t4, 0x0($s1)
    /* DAC44 800CBC94 AE000004 */  sw         $zero, 0x4($s0)
    /* DAC48 800CBC98 AE130000 */  sw         $s3, 0x0($s0)
    /* DAC4C 800CBC9C 8E300000 */  lw         $s0, 0x0($s1)
    /* DAC50 800CBCA0 37180E02 */  ori        $t8, $t8, (0xBA000E02 & 0xFFFF)
    /* DAC54 800CBCA4 24846EDA */  addiu      $a0, $a0, %lo(D_80156EDA)
    /* DAC58 800CBCA8 260D0008 */  addiu      $t5, $s0, 0x8
    /* DAC5C 800CBCAC AE2D0000 */  sw         $t5, 0x0($s1)
    /* DAC60 800CBCB0 AE000004 */  sw         $zero, 0x4($s0)
    /* DAC64 800CBCB4 AE180000 */  sw         $t8, 0x0($s0)
    /* DAC68 800CBCB8 848F0000 */  lh         $t7, 0x0($a0)
    /* DAC6C 800CBCBC 02001825 */  or         $v1, $s0, $zero
    /* DAC70 800CBCC0 25EE000C */  addiu      $t6, $t7, 0xC
    /* DAC74 800CBCC4 A48E0000 */  sh         $t6, 0x0($a0)
  .L800CBCC8_DAC78:
    /* DAC78 800CBCC8 86820004 */  lh         $v0, 0x4($s4)
  .L800CBCCC_DAC7C:
    /* DAC7C 800CBCCC 2401FFFB */  addiu      $at, $zero, -0x5
    /* DAC80 800CBCD0 10410003 */  beq        $v0, $at, .L800CBCE0_DAC90
    /* DAC84 800CBCD4 2401FFFA */   addiu     $at, $zero, -0x6
    /* DAC88 800CBCD8 5441FE38 */  bnel       $v0, $at, .L800CB5BC_DA56C
    /* DAC8C 800CBCDC 0002C0C0 */   sll       $t8, $v0, 3
  .L800CBCE0_DAC90:
    /* DAC90 800CBCE0 8FBF005C */  lw         $ra, 0x5C($sp)
    /* DAC94 800CBCE4 D7B40020 */  ldc1       $f20, 0x20($sp)
    /* DAC98 800CBCE8 D7B60028 */  ldc1       $f22, 0x28($sp)
    /* DAC9C 800CBCEC D7B80030 */  ldc1       $f24, 0x30($sp)
    /* DACA0 800CBCF0 8FB00038 */  lw         $s0, 0x38($sp)
    /* DACA4 800CBCF4 8FB1003C */  lw         $s1, 0x3C($sp)
    /* DACA8 800CBCF8 8FB20040 */  lw         $s2, 0x40($sp)
    /* DACAC 800CBCFC 8FB30044 */  lw         $s3, 0x44($sp)
    /* DACB0 800CBD00 8FB40048 */  lw         $s4, 0x48($sp)
    /* DACB4 800CBD04 8FB5004C */  lw         $s5, 0x4C($sp)
    /* DACB8 800CBD08 8FB60050 */  lw         $s6, 0x50($sp)
    /* DACBC 800CBD0C 8FB70054 */  lw         $s7, 0x54($sp)
    /* DACC0 800CBD10 8FBE0058 */  lw         $fp, 0x58($sp)
    /* DACC4 800CBD14 03E00008 */  jr         $ra
    /* DACC8 800CBD18 27BD0060 */   addiu     $sp, $sp, 0x60
endlabel func_800CB4F8_DA4A8
