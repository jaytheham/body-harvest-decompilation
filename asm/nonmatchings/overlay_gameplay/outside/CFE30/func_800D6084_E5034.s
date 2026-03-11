nonmatching func_800D6084_E5034, 0xBC

glabel func_800D6084_E5034
    /* E5034 800D6084 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* E5038 800D6088 308E00FF */  andi       $t6, $a0, 0xFF
    /* E503C 800D608C AFA40018 */  sw         $a0, 0x18($sp)
    /* E5040 800D6090 29C1001E */  slti       $at, $t6, 0x1E
    /* E5044 800D6094 01C02025 */  or         $a0, $t6, $zero
    /* E5048 800D6098 AFBF0014 */  sw         $ra, 0x14($sp)
    /* E504C 800D609C AFA5001C */  sw         $a1, 0x1C($sp)
    /* E5050 800D60A0 AFA60020 */  sw         $a2, 0x20($sp)
    /* E5054 800D60A4 10200022 */  beqz       $at, .L800D6130_E50E0
    /* E5058 800D60A8 AFA70024 */   sw        $a3, 0x24($sp)
    /* E505C 800D60AC 000E7880 */  sll        $t7, $t6, 2
    /* E5060 800D60B0 01EE7823 */  subu       $t7, $t7, $t6
    /* E5064 800D60B4 000F7880 */  sll        $t7, $t7, 2
    /* E5068 800D60B8 3C188015 */  lui        $t8, %hi(D_80154088)
    /* E506C 800D60BC 030FC021 */  addu       $t8, $t8, $t7
    /* E5070 800D60C0 93184088 */  lbu        $t8, %lo(D_80154088)($t8)
    /* E5074 800D60C4 24010006 */  addiu      $at, $zero, 0x6
    /* E5078 800D60C8 5701001A */  bnel       $t8, $at, .L800D6134_E50E4
    /* E507C 800D60CC 8FBF0014 */   lw        $ra, 0x14($sp)
    /* E5080 800D60D0 0C0305ED */  jal        func_800C17B4_D0764
    /* E5084 800D60D4 00002825 */   or        $a1, $zero, $zero
    /* E5088 800D60D8 2401FFFD */  addiu      $at, $zero, -0x3
    /* E508C 800D60DC 10410014 */  beq        $v0, $at, .L800D6130_E50E0
    /* E5090 800D60E0 0002C8C0 */   sll       $t9, $v0, 3
    /* E5094 800D60E4 0322C823 */  subu       $t9, $t9, $v0
    /* E5098 800D60E8 3C088015 */  lui        $t0, %hi(D_80154318)
    /* E509C 800D60EC 25084318 */  addiu      $t0, $t0, %lo(D_80154318)
    /* E50A0 800D60F0 0019C880 */  sll        $t9, $t9, 2
    /* E50A4 800D60F4 03281821 */  addu       $v1, $t9, $t0
    /* E50A8 800D60F8 87A9001E */  lh         $t1, 0x1E($sp)
    /* E50AC 800D60FC 87AA0022 */  lh         $t2, 0x22($sp)
    /* E50B0 800D6100 87AB0026 */  lh         $t3, 0x26($sp)
    /* E50B4 800D6104 93AC002B */  lbu        $t4, 0x2B($sp)
    /* E50B8 800D6108 93AD002F */  lbu        $t5, 0x2F($sp)
    /* E50BC 800D610C 93AE0033 */  lbu        $t6, 0x33($sp)
    /* E50C0 800D6110 240F00C8 */  addiu      $t7, $zero, 0xC8
    /* E50C4 800D6114 A06F0011 */  sb         $t7, 0x11($v1)
    /* E50C8 800D6118 A4690008 */  sh         $t1, 0x8($v1)
    /* E50CC 800D611C A46A000A */  sh         $t2, 0xA($v1)
    /* E50D0 800D6120 A46B000C */  sh         $t3, 0xC($v1)
    /* E50D4 800D6124 A06C000E */  sb         $t4, 0xE($v1)
    /* E50D8 800D6128 A06D000F */  sb         $t5, 0xF($v1)
    /* E50DC 800D612C A06E0010 */  sb         $t6, 0x10($v1)
  .L800D6130_E50E0:
    /* E50E0 800D6130 8FBF0014 */  lw         $ra, 0x14($sp)
  .L800D6134_E50E4:
    /* E50E4 800D6134 27BD0018 */  addiu      $sp, $sp, 0x18
    /* E50E8 800D6138 03E00008 */  jr         $ra
    /* E50EC 800D613C 00000000 */   nop
endlabel func_800D6084_E5034
