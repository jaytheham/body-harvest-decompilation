nonmatching func_800BC5DC_CB58C, 0x184

glabel func_800BC5DC_CB58C
    /* CB58C 800BC5DC 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* CB590 800BC5E0 AFA40038 */  sw         $a0, 0x38($sp)
    /* CB594 800BC5E4 87AE003A */  lh         $t6, 0x3A($sp)
    /* CB598 800BC5E8 3C188005 */  lui        $t8, %hi(alienInstances)
    /* CB59C 800BC5EC 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* CB5A0 800BC5F0 000E7880 */  sll        $t7, $t6, 2
    /* CB5A4 800BC5F4 01EE7821 */  addu       $t7, $t7, $t6
    /* CB5A8 800BC5F8 000F7900 */  sll        $t7, $t7, 4
    /* CB5AC 800BC5FC 01F81821 */  addu       $v1, $t7, $t8
    /* CB5B0 800BC600 846A0004 */  lh         $t2, 0x4($v1)
    /* CB5B4 800BC604 84790000 */  lh         $t9, 0x0($v1)
    /* CB5B8 800BC608 3C028015 */  lui        $v0, %hi(D_8014F8A0)
    /* CB5BC 800BC60C A7AA0034 */  sh         $t2, 0x34($sp)
    /* CB5C0 800BC610 87A50034 */  lh         $a1, 0x34($sp)
    /* CB5C4 800BC614 A7B90036 */  sh         $t9, 0x36($sp)
    /* CB5C8 800BC618 87A70036 */  lh         $a3, 0x36($sp)
    /* CB5CC 800BC61C 00055A03 */  sra        $t3, $a1, 8
    /* CB5D0 800BC620 25650080 */  addiu      $a1, $t3, 0x80
    /* CB5D4 800BC624 00077203 */  sra        $t6, $a3, 8
    /* CB5D8 800BC628 8C42F8A0 */  lw         $v0, %lo(D_8014F8A0)($v0)
    /* CB5DC 800BC62C 25C70080 */  addiu      $a3, $t6, 0x80
    /* CB5E0 800BC630 00056400 */  sll        $t4, $a1, 16
    /* CB5E4 800BC634 000C2C03 */  sra        $a1, $t4, 16
    /* CB5E8 800BC638 00077C00 */  sll        $t7, $a3, 16
    /* CB5EC 800BC63C 000F3C03 */  sra        $a3, $t7, 16
    /* CB5F0 800BC640 0005CA40 */  sll        $t9, $a1, 9
    /* CB5F4 800BC644 00075840 */  sll        $t3, $a3, 1
    /* CB5F8 800BC648 00595021 */  addu       $t2, $v0, $t9
    /* CB5FC 800BC64C AFBF001C */  sw         $ra, 0x1C($sp)
    /* CB600 800BC650 014B4021 */  addu       $t0, $t2, $t3
    /* CB604 800BC654 95060000 */  lhu        $a2, 0x0($t0)
    /* CB608 800BC658 00001025 */  or         $v0, $zero, $zero
    /* CB60C 800BC65C 00064D80 */  sll        $t1, $a2, 22
    /* CB610 800BC660 00096702 */  srl        $t4, $t1, 28
    /* CB614 800BC664 29810008 */  slti       $at, $t4, 0x8
    /* CB618 800BC668 14200039 */  bnez       $at, .L800BC750_CB700
    /* CB61C 800BC66C 2981000D */   slti      $at, $t4, 0xD
    /* CB620 800BC670 10200037 */  beqz       $at, .L800BC750_CB700
    /* CB624 800BC674 3C198022 */   lui       $t9, %hi(D_8021EA30)
    /* CB628 800BC678 04A10003 */  bgez       $a1, .L800BC688_CB638
    /* CB62C 800BC67C 00056883 */   sra       $t5, $a1, 2
    /* CB630 800BC680 24A10003 */  addiu      $at, $a1, 0x3
    /* CB634 800BC684 00016883 */  sra        $t5, $at, 2
  .L800BC688_CB638:
    /* CB638 800BC688 000D7180 */  sll        $t6, $t5, 6
    /* CB63C 800BC68C 04E10003 */  bgez       $a3, .L800BC69C_CB64C
    /* CB640 800BC690 00077883 */   sra       $t7, $a3, 2
    /* CB644 800BC694 24E10003 */  addiu      $at, $a3, 0x3
    /* CB648 800BC698 00017883 */  sra        $t7, $at, 2
  .L800BC69C_CB64C:
    /* CB64C 800BC69C 01CFC021 */  addu       $t8, $t6, $t7
    /* CB650 800BC6A0 0338C821 */  addu       $t9, $t9, $t8
    /* CB654 800BC6A4 9339EA30 */  lbu        $t9, %lo(D_8021EA30)($t9)
    /* CB658 800BC6A8 24010007 */  addiu      $at, $zero, 0x7
    /* CB65C 800BC6AC 00065BC2 */  srl        $t3, $a2, 15
    /* CB660 800BC6B0 332A000F */  andi       $t2, $t9, 0xF
    /* CB664 800BC6B4 15410026 */  bne        $t2, $at, .L800BC750_CB700
    /* CB668 800BC6B8 24010001 */   addiu     $at, $zero, 0x1
    /* CB66C 800BC6BC 11610024 */  beq        $t3, $at, .L800BC750_CB700
    /* CB670 800BC6C0 30CCFC3F */   andi      $t4, $a2, 0xFC3F
    /* CB674 800BC6C4 358D0380 */  ori        $t5, $t4, 0x380
    /* CB678 800BC6C8 A50D0000 */  sh         $t5, 0x0($t0)
    /* CB67C 800BC6CC AFA30020 */  sw         $v1, 0x20($sp)
    /* CB680 800BC6D0 87A50034 */  lh         $a1, 0x34($sp)
    /* CB684 800BC6D4 0C02E134 */  jal        func_800B84D0_C7480
    /* CB688 800BC6D8 87A40036 */   lh        $a0, 0x36($sp)
    /* CB68C 800BC6DC 00022A03 */  sra        $a1, $v0, 8
    /* CB690 800BC6E0 24A5000A */  addiu      $a1, $a1, 0xA
    /* CB694 800BC6E4 00057400 */  sll        $t6, $a1, 16
    /* CB698 800BC6E8 000E2C03 */  sra        $a1, $t6, 16
    /* CB69C 800BC6EC 87A40036 */  lh         $a0, 0x36($sp)
    /* CB6A0 800BC6F0 87A60034 */  lh         $a2, 0x34($sp)
    /* CB6A4 800BC6F4 24070078 */  addiu      $a3, $zero, 0x78
    /* CB6A8 800BC6F8 AFA00010 */  sw         $zero, 0x10($sp)
    /* CB6AC 800BC6FC 0C037C0E */  jal        func_800DF038_EDFE8
    /* CB6B0 800BC700 AFA00014 */   sw        $zero, 0x14($sp)
    /* CB6B4 800BC704 8FA30020 */  lw         $v1, 0x20($sp)
    /* CB6B8 800BC708 3C078025 */  lui        $a3, %hi(D_8025668C)
    /* CB6BC 800BC70C AFA00010 */  sw         $zero, 0x10($sp)
    /* CB6C0 800BC710 9078001A */  lbu        $t8, 0x1A($v1)
    /* CB6C4 800BC714 84640000 */  lh         $a0, 0x0($v1)
    /* CB6C8 800BC718 84650002 */  lh         $a1, 0x2($v1)
    /* CB6CC 800BC71C 0018C880 */  sll        $t9, $t8, 2
    /* CB6D0 800BC720 0338C823 */  subu       $t9, $t9, $t8
    /* CB6D4 800BC724 0019C880 */  sll        $t9, $t9, 2
    /* CB6D8 800BC728 0338C821 */  addu       $t9, $t9, $t8
    /* CB6DC 800BC72C 0019C8C0 */  sll        $t9, $t9, 3
    /* CB6E0 800BC730 00F93821 */  addu       $a3, $a3, $t9
    /* CB6E4 800BC734 94E7668C */  lhu        $a3, %lo(D_8025668C)($a3)
    /* CB6E8 800BC738 0C037E12 */  jal        func_800DF848_EE7F8
    /* CB6EC 800BC73C 84660004 */   lh        $a2, 0x4($v1)
    /* CB6F0 800BC740 0C01E644 */  jal        func_80079910_888C0
    /* CB6F4 800BC744 87A4003A */   lh        $a0, 0x3A($sp)
    /* CB6F8 800BC748 10000001 */  b          .L800BC750_CB700
    /* CB6FC 800BC74C 24020001 */   addiu     $v0, $zero, 0x1
  .L800BC750_CB700:
    /* CB700 800BC750 8FBF001C */  lw         $ra, 0x1C($sp)
    /* CB704 800BC754 27BD0038 */  addiu      $sp, $sp, 0x38
    /* CB708 800BC758 03E00008 */  jr         $ra
    /* CB70C 800BC75C 00000000 */   nop
endlabel func_800BC5DC_CB58C
