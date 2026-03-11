nonmatching func_800D0DE4_DFD94, 0x178

glabel func_800D0DE4_DFD94
    /* DFD94 800D0DE4 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* DFD98 800D0DE8 44810000 */  mtc1       $at, $f0
    /* DFD9C 800D0DEC 3C018004 */  lui        $at, %hi(D_80047954)
    /* DFDA0 800D0DF0 C4247954 */  lwc1       $f4, %lo(D_80047954)($at)
    /* DFDA4 800D0DF4 3C018004 */  lui        $at, %hi(D_8004795C)
    /* DFDA8 800D0DF8 C42A795C */  lwc1       $f10, %lo(D_8004795C)($at)
    /* DFDAC 800D0DFC 46002182 */  mul.s      $f6, $f4, $f0
    /* DFDB0 800D0E00 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* DFDB4 800D0E04 AFA7004C */  sw         $a3, 0x4C($sp)
    /* DFDB8 800D0E08 46005402 */  mul.s      $f16, $f10, $f0
    /* DFDBC 800D0E0C 97A8004E */  lhu        $t0, 0x4E($sp)
    /* DFDC0 800D0E10 3C0B8004 */  lui        $t3, %hi(D_80047950)
    /* DFDC4 800D0E14 856B7950 */  lh         $t3, %lo(D_80047950)($t3)
    /* DFDC8 800D0E18 AFA60048 */  sw         $a2, 0x48($sp)
    /* DFDCC 800D0E1C 240C4000 */  addiu      $t4, $zero, 0x4000
    /* DFDD0 800D0E20 4600320D */  trunc.w.s  $f8, $f6
    /* DFDD4 800D0E24 00083040 */  sll        $a2, $t0, 1
    /* DFDD8 800D0E28 AFBF001C */  sw         $ra, 0x1C($sp)
    /* DFDDC 800D0E2C 4600848D */  trunc.w.s  $f18, $f16
    /* DFDE0 800D0E30 44074000 */  mfc1       $a3, $f8
    /* DFDE4 800D0E34 AFA40040 */  sw         $a0, 0x40($sp)
    /* DFDE8 800D0E38 AFA50044 */  sw         $a1, 0x44($sp)
    /* DFDEC 800D0E3C 440A9000 */  mfc1       $t2, $f18
    /* DFDF0 800D0E40 30CEFFFF */  andi       $t6, $a2, 0xFFFF
    /* DFDF4 800D0E44 018B6823 */  subu       $t5, $t4, $t3
    /* DFDF8 800D0E48 0007C400 */  sll        $t8, $a3, 16
    /* DFDFC 800D0E4C 00183C03 */  sra        $a3, $t8, 16
    /* DFE00 800D0E50 AFAD0014 */  sw         $t5, 0x14($sp)
    /* DFE04 800D0E54 01C03025 */  or         $a2, $t6, $zero
    /* DFE08 800D0E58 87A5004A */  lh         $a1, 0x4A($sp)
    /* DFE0C 800D0E5C 87A40042 */  lh         $a0, 0x42($sp)
    /* DFE10 800D0E60 AFA80024 */  sw         $t0, 0x24($sp)
    /* DFE14 800D0E64 0C02E4EB */  jal        func_800B93AC_C835C
    /* DFE18 800D0E68 AFAA0010 */   sw        $t2, 0x10($sp)
    /* DFE1C 800D0E6C 10400036 */  beqz       $v0, .L800D0F48_DFEF8
    /* DFE20 800D0E70 8FA80024 */   lw        $t0, 0x24($sp)
    /* DFE24 800D0E74 24040007 */  addiu      $a0, $zero, 0x7
    /* DFE28 800D0E78 24050001 */  addiu      $a1, $zero, 0x1
    /* DFE2C 800D0E7C 0C0305ED */  jal        func_800C17B4_D0764
    /* DFE30 800D0E80 AFA80024 */   sw        $t0, 0x24($sp)
    /* DFE34 800D0E84 2401FFFD */  addiu      $at, $zero, -0x3
    /* DFE38 800D0E88 8FA80024 */  lw         $t0, 0x24($sp)
    /* DFE3C 800D0E8C 1041002C */  beq        $v0, $at, .L800D0F40_DFEF0
    /* DFE40 800D0E90 A7A2002E */   sh        $v0, 0x2E($sp)
    /* DFE44 800D0E94 87AE002E */  lh         $t6, 0x2E($sp)
    /* DFE48 800D0E98 3C188015 */  lui        $t8, %hi(D_80154318)
    /* DFE4C 800D0E9C 27184318 */  addiu      $t8, $t8, %lo(D_80154318)
    /* DFE50 800D0EA0 000E78C0 */  sll        $t7, $t6, 3
    /* DFE54 800D0EA4 01EE7823 */  subu       $t7, $t7, $t6
    /* DFE58 800D0EA8 000F7880 */  sll        $t7, $t7, 2
    /* DFE5C 800D0EAC 01F81821 */  addu       $v1, $t7, $t8
    /* DFE60 800D0EB0 87A40042 */  lh         $a0, 0x42($sp)
    /* DFE64 800D0EB4 87A50046 */  lh         $a1, 0x46($sp)
    /* DFE68 800D0EB8 87A6004A */  lh         $a2, 0x4A($sp)
    /* DFE6C 800D0EBC 93B90053 */  lbu        $t9, 0x53($sp)
    /* DFE70 800D0EC0 93A90057 */  lbu        $t1, 0x57($sp)
    /* DFE74 800D0EC4 93AA005B */  lbu        $t2, 0x5B($sp)
    /* DFE78 800D0EC8 240200FF */  addiu      $v0, $zero, 0xFF
    /* DFE7C 800D0ECC A4680002 */  sh         $t0, 0x2($v1)
    /* DFE80 800D0ED0 A0620012 */  sb         $v0, 0x12($v1)
    /* DFE84 800D0ED4 A0620011 */  sb         $v0, 0x11($v1)
    /* DFE88 800D0ED8 AFA30020 */  sw         $v1, 0x20($sp)
    /* DFE8C 800D0EDC 24070009 */  addiu      $a3, $zero, 0x9
    /* DFE90 800D0EE0 A4640008 */  sh         $a0, 0x8($v1)
    /* DFE94 800D0EE4 A465000A */  sh         $a1, 0xA($v1)
    /* DFE98 800D0EE8 A466000C */  sh         $a2, 0xC($v1)
    /* DFE9C 800D0EEC A079000E */  sb         $t9, 0xE($v1)
    /* DFEA0 800D0EF0 A069000F */  sb         $t1, 0xF($v1)
    /* DFEA4 800D0EF4 A06A0010 */  sb         $t2, 0x10($v1)
    /* DFEA8 800D0EF8 05010003 */  bgez       $t0, .L800D0F08_DFEB8
    /* DFEAC 800D0EFC 00086043 */   sra       $t4, $t0, 1
    /* DFEB0 800D0F00 25010001 */  addiu      $at, $t0, 0x1
    /* DFEB4 800D0F04 00016043 */  sra        $t4, $at, 1
  .L800D0F08_DFEB8:
    /* DFEB8 800D0F08 0C0376D8 */  jal        func_800DDB60_ECB10
    /* DFEBC 800D0F0C AFAC0010 */   sw        $t4, 0x10($sp)
    /* DFEC0 800D0F10 8FA30020 */  lw         $v1, 0x20($sp)
    /* DFEC4 800D0F14 304400FF */  andi       $a0, $v0, 0xFF
    /* DFEC8 800D0F18 00002825 */  or         $a1, $zero, $zero
    /* DFECC 800D0F1C 24670008 */  addiu      $a3, $v1, 0x8
    /* DFED0 800D0F20 A0E2000B */  sb         $v0, 0xB($a3)
    /* DFED4 800D0F24 AFA70024 */  sw         $a3, 0x24($sp)
    /* DFED8 800D0F28 0C0377A4 */  jal        func_800DDE90_ECE40
    /* DFEDC 800D0F2C 00003025 */   or        $a2, $zero, $zero
    /* DFEE0 800D0F30 8FA70024 */  lw         $a3, 0x24($sp)
    /* DFEE4 800D0F34 00002825 */  or         $a1, $zero, $zero
    /* DFEE8 800D0F38 0C037795 */  jal        func_800DDE54_ECE04
    /* DFEEC 800D0F3C 90E4000B */   lbu       $a0, 0xB($a3)
  .L800D0F40_DFEF0:
    /* DFEF0 800D0F40 10000002 */  b          .L800D0F4C_DFEFC
    /* DFEF4 800D0F44 87A2002E */   lh        $v0, 0x2E($sp)
  .L800D0F48_DFEF8:
    /* DFEF8 800D0F48 2402FFFD */  addiu      $v0, $zero, -0x3
  .L800D0F4C_DFEFC:
    /* DFEFC 800D0F4C 8FBF001C */  lw         $ra, 0x1C($sp)
    /* DFF00 800D0F50 27BD0040 */  addiu      $sp, $sp, 0x40
    /* DFF04 800D0F54 03E00008 */  jr         $ra
    /* DFF08 800D0F58 00000000 */   nop
endlabel func_800D0DE4_DFD94
