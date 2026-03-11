nonmatching func_800899F0_59EA0, 0xC4

glabel func_800899F0_59EA0
    /* 59EA0 800899F0 3C0E800E */  lui        $t6, %hi(D_800DE818)
    /* 59EA4 800899F4 91CEE818 */  lbu        $t6, %lo(D_800DE818)($t6)
    /* 59EA8 800899F8 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 59EAC 800899FC AFBF0014 */  sw         $ra, 0x14($sp)
    /* 59EB0 80089A00 29C10041 */  slti       $at, $t6, 0x41
    /* 59EB4 80089A04 AFA40018 */  sw         $a0, 0x18($sp)
    /* 59EB8 80089A08 AFA5001C */  sw         $a1, 0x1C($sp)
    /* 59EBC 80089A0C AFA60020 */  sw         $a2, 0x20($sp)
    /* 59EC0 80089A10 10200024 */  beqz       $at, .L80089AA4_59F54
    /* 59EC4 80089A14 AFA70024 */   sw        $a3, 0x24($sp)
    /* 59EC8 80089A18 0C020EDF */  jal        func_80083B7C_5402C
    /* 59ECC 80089A1C 24040093 */   addiu     $a0, $zero, 0x93
    /* 59ED0 80089A20 2401FFFD */  addiu      $at, $zero, -0x3
    /* 59ED4 80089A24 1041001F */  beq        $v0, $at, .L80089AA4_59F54
    /* 59ED8 80089A28 000278C0 */   sll       $t7, $v0, 3
    /* 59EDC 80089A2C 01E27823 */  subu       $t7, $t7, $v0
    /* 59EE0 80089A30 3C18800E */  lui        $t8, %hi(D_800DE840)
    /* 59EE4 80089A34 2718E840 */  addiu      $t8, $t8, %lo(D_800DE840)
    /* 59EE8 80089A38 000F7880 */  sll        $t7, $t7, 2
    /* 59EEC 80089A3C 01F81821 */  addu       $v1, $t7, $t8
    /* 59EF0 80089A40 97A40022 */  lhu        $a0, 0x22($sp)
    /* 59EF4 80089A44 87B9001A */  lh         $t9, 0x1A($sp)
    /* 59EF8 80089A48 87A8001E */  lh         $t0, 0x1E($sp)
    /* 59EFC 80089A4C 93A90033 */  lbu        $t1, 0x33($sp)
    /* 59F00 80089A50 93AA0027 */  lbu        $t2, 0x27($sp)
    /* 59F04 80089A54 93AB002B */  lbu        $t3, 0x2B($sp)
    /* 59F08 80089A58 93AC002F */  lbu        $t4, 0x2F($sp)
    /* 59F0C 80089A5C A460000A */  sh         $zero, 0xA($v1)
    /* 59F10 80089A60 A0600011 */  sb         $zero, 0x11($v1)
    /* 59F14 80089A64 A4640002 */  sh         $a0, 0x2($v1)
    /* 59F18 80089A68 A4790008 */  sh         $t9, 0x8($v1)
    /* 59F1C 80089A6C A468000C */  sh         $t0, 0xC($v1)
    /* 59F20 80089A70 A0690012 */  sb         $t1, 0x12($v1)
    /* 59F24 80089A74 A06A000E */  sb         $t2, 0xE($v1)
    /* 59F28 80089A78 A06B000F */  sb         $t3, 0xF($v1)
    /* 59F2C 80089A7C A06C0010 */  sb         $t4, 0x10($v1)
    /* 59F30 80089A80 04810003 */  bgez       $a0, .L80089A90_59F40
    /* 59F34 80089A84 00046843 */   sra       $t5, $a0, 1
    /* 59F38 80089A88 24810001 */  addiu      $at, $a0, 0x1
    /* 59F3C 80089A8C 00016843 */  sra        $t5, $at, 1
  .L80089A90_59F40:
    /* 59F40 80089A90 31AE00FF */  andi       $t6, $t5, 0xFF
    /* 59F44 80089A94 15C00003 */  bnez       $t6, .L80089AA4_59F54
    /* 59F48 80089A98 A06D0013 */   sb        $t5, 0x13($v1)
    /* 59F4C 80089A9C 240F0001 */  addiu      $t7, $zero, 0x1
    /* 59F50 80089AA0 A06F0013 */  sb         $t7, 0x13($v1)
  .L80089AA4_59F54:
    /* 59F54 80089AA4 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 59F58 80089AA8 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 59F5C 80089AAC 03E00008 */  jr         $ra
    /* 59F60 80089AB0 00000000 */   nop
endlabel func_800899F0_59EA0
