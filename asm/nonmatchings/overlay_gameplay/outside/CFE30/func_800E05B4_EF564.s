nonmatching func_800E05B4_EF564, 0x1B0

glabel func_800E05B4_EF564
    /* EF564 800E05B4 27BDFFA8 */  addiu      $sp, $sp, -0x58
    /* EF568 800E05B8 3C0F8003 */  lui        $t7, %hi(D_80031420)
    /* EF56C 800E05BC 8DEF1420 */  lw         $t7, %lo(D_80031420)($t7)
    /* EF570 800E05C0 AFB00040 */  sw         $s0, 0x40($sp)
    /* EF574 800E05C4 00078400 */  sll        $s0, $a3, 16
    /* EF578 800E05C8 00107403 */  sra        $t6, $s0, 16
    /* EF57C 800E05CC 24010003 */  addiu      $at, $zero, 0x3
    /* EF580 800E05D0 31F80003 */  andi       $t8, $t7, 0x3
    /* EF584 800E05D4 01C08025 */  or         $s0, $t6, $zero
    /* EF588 800E05D8 AFBF0044 */  sw         $ra, 0x44($sp)
    /* EF58C 800E05DC AFA40058 */  sw         $a0, 0x58($sp)
    /* EF590 800E05E0 AFA5005C */  sw         $a1, 0x5C($sp)
    /* EF594 800E05E4 AFA60060 */  sw         $a2, 0x60($sp)
    /* EF598 800E05E8 17010059 */  bne        $t8, $at, .L800E0750_EF700
    /* EF59C 800E05EC AFA70064 */   sw        $a3, 0x64($sp)
    /* EF5A0 800E05F0 06010003 */  bgez       $s0, .L800E0600_EF5B0
    /* EF5A4 800E05F4 0010C903 */   sra       $t9, $s0, 4
    /* EF5A8 800E05F8 2601000F */  addiu      $at, $s0, 0xF
    /* EF5AC 800E05FC 0001C903 */  sra        $t9, $at, 4
  .L800E0600_EF5B0:
    /* EF5B0 800E0600 00194400 */  sll        $t0, $t9, 16
    /* EF5B4 800E0604 00088403 */  sra        $s0, $t0, 16
    /* EF5B8 800E0608 5E000003 */  bgtzl      $s0, .L800E0618_EF5C8
    /* EF5BC 800E060C 2A010010 */   slti      $at, $s0, 0x10
    /* EF5C0 800E0610 24100001 */  addiu      $s0, $zero, 0x1
    /* EF5C4 800E0614 2A010010 */  slti       $at, $s0, 0x10
  .L800E0618_EF5C8:
    /* EF5C8 800E0618 14200002 */  bnez       $at, .L800E0624_EF5D4
    /* EF5CC 800E061C 00000000 */   nop
    /* EF5D0 800E0620 2410000F */  addiu      $s0, $zero, 0xF
  .L800E0624_EF5D4:
    /* EF5D4 800E0624 0C000E38 */  jal        func_800038E0_44E0
    /* EF5D8 800E0628 00000000 */   nop
    /* EF5DC 800E062C 0C000E38 */  jal        func_800038E0_44E0
    /* EF5E0 800E0630 A7A2004E */   sh        $v0, 0x4E($sp)
    /* EF5E4 800E0634 0C000E38 */  jal        func_800038E0_44E0
    /* EF5E8 800E0638 A7A20050 */   sh        $v0, 0x50($sp)
    /* EF5EC 800E063C 0C000E38 */  jal        func_800038E0_44E0
    /* EF5F0 800E0640 A7A20052 */   sh        $v0, 0x52($sp)
    /* EF5F4 800E0644 97AA004E */  lhu        $t2, 0x4E($sp)
    /* EF5F8 800E0648 24030078 */  addiu      $v1, $zero, 0x78
    /* EF5FC 800E064C 97AE0050 */  lhu        $t6, 0x50($sp)
    /* EF600 800E0650 0143001A */  div        $zero, $t2, $v1
    /* EF604 800E0654 00003810 */  mfhi       $a3
    /* EF608 800E0658 97A90052 */  lhu        $t1, 0x52($sp)
    /* EF60C 800E065C 24E7FFC4 */  addiu      $a3, $a3, -0x3C
    /* EF610 800E0660 01C3001A */  div        $zero, $t6, $v1
    /* EF614 800E0664 00007810 */  mfhi       $t7
    /* EF618 800E0668 00075E00 */  sll        $t3, $a3, 24
    /* EF61C 800E066C 000B6603 */  sra        $t4, $t3, 24
    /* EF620 800E0670 0130001A */  div        $zero, $t1, $s0
    /* EF624 800E0674 25F8FFC4 */  addiu      $t8, $t7, -0x3C
    /* EF628 800E0678 01803825 */  or         $a3, $t4, $zero
    /* EF62C 800E067C 240D007F */  addiu      $t5, $zero, 0x7F
    /* EF630 800E0680 AFAD0010 */  sw         $t5, 0x10($sp)
    /* EF634 800E0684 AFB80014 */  sw         $t8, 0x14($sp)
    /* EF638 800E0688 241800FF */  addiu      $t8, $zero, 0xFF
    /* EF63C 800E068C 240F0014 */  addiu      $t7, $zero, 0x14
    /* EF640 800E0690 2619000F */  addiu      $t9, $s0, 0xF
    /* EF644 800E0694 24080004 */  addiu      $t0, $zero, 0x4
    /* EF648 800E0698 AFA8001C */  sw         $t0, 0x1C($sp)
    /* EF64C 800E069C AFB90018 */  sw         $t9, 0x18($sp)
    /* EF650 800E06A0 AFAF0030 */  sw         $t7, 0x30($sp)
    /* EF654 800E06A4 AFB80034 */  sw         $t8, 0x34($sp)
    /* EF658 800E06A8 87A4005A */  lh         $a0, 0x5A($sp)
    /* EF65C 800E06AC 87A5005E */  lh         $a1, 0x5E($sp)
    /* EF660 800E06B0 87A60062 */  lh         $a2, 0x62($sp)
    /* EF664 800E06B4 14600002 */  bnez       $v1, .L800E06C0_EF670
    /* EF668 800E06B8 00000000 */   nop
    /* EF66C 800E06BC 0007000D */  break      7
  .L800E06C0_EF670:
    /* EF670 800E06C0 2401FFFF */  addiu      $at, $zero, -0x1
    /* EF674 800E06C4 14610004 */  bne        $v1, $at, .L800E06D8_EF688
    /* EF678 800E06C8 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* EF67C 800E06CC 15410002 */  bne        $t2, $at, .L800E06D8_EF688
    /* EF680 800E06D0 00000000 */   nop
    /* EF684 800E06D4 0006000D */  break      6
  .L800E06D8_EF688:
    /* EF688 800E06D8 00005010 */  mfhi       $t2
    /* EF68C 800E06DC 01505821 */  addu       $t3, $t2, $s0
    /* EF690 800E06E0 14600002 */  bnez       $v1, .L800E06EC_EF69C
    /* EF694 800E06E4 00000000 */   nop
    /* EF698 800E06E8 0007000D */  break      7
  .L800E06EC_EF69C:
    /* EF69C 800E06EC 2401FFFF */  addiu      $at, $zero, -0x1
    /* EF6A0 800E06F0 14610004 */  bne        $v1, $at, .L800E0704_EF6B4
    /* EF6A4 800E06F4 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* EF6A8 800E06F8 15C10002 */  bne        $t6, $at, .L800E0704_EF6B4
    /* EF6AC 800E06FC 00000000 */   nop
    /* EF6B0 800E0700 0006000D */  break      6
  .L800E0704_EF6B4:
    /* EF6B4 800E0704 240E00C8 */  addiu      $t6, $zero, 0xC8
    /* EF6B8 800E0708 16000002 */  bnez       $s0, .L800E0714_EF6C4
    /* EF6BC 800E070C 00000000 */   nop
    /* EF6C0 800E0710 0007000D */  break      7
  .L800E0714_EF6C4:
    /* EF6C4 800E0714 2401FFFF */  addiu      $at, $zero, -0x1
    /* EF6C8 800E0718 16010004 */  bne        $s0, $at, .L800E072C_EF6DC
    /* EF6CC 800E071C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* EF6D0 800E0720 15210002 */  bne        $t1, $at, .L800E072C_EF6DC
    /* EF6D4 800E0724 00000000 */   nop
    /* EF6D8 800E0728 0006000D */  break      6
  .L800E072C_EF6DC:
    /* EF6DC 800E072C 2401005A */  addiu      $at, $zero, 0x5A
    /* EF6E0 800E0730 0041001A */  div        $zero, $v0, $at
    /* EF6E4 800E0734 00006010 */  mfhi       $t4
    /* EF6E8 800E0738 258D0028 */  addiu      $t5, $t4, 0x28
    /* EF6EC 800E073C AFAD0024 */  sw         $t5, 0x24($sp)
    /* EF6F0 800E0740 AFAE0028 */  sw         $t6, 0x28($sp)
    /* EF6F4 800E0744 AFAB0020 */  sw         $t3, 0x20($sp)
    /* EF6F8 800E0748 0C03297B */  jal        func_800CA5EC_D959C
    /* EF6FC 800E074C AFA0002C */   sw        $zero, 0x2C($sp)
  .L800E0750_EF700:
    /* EF700 800E0750 8FBF0044 */  lw         $ra, 0x44($sp)
    /* EF704 800E0754 8FB00040 */  lw         $s0, 0x40($sp)
    /* EF708 800E0758 27BD0058 */  addiu      $sp, $sp, 0x58
    /* EF70C 800E075C 03E00008 */  jr         $ra
    /* EF710 800E0760 00000000 */   nop
endlabel func_800E05B4_EF564
