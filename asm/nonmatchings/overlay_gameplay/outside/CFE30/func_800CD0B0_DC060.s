nonmatching func_800CD0B0_DC060, 0x148

glabel func_800CD0B0_DC060
    /* DC060 800CD0B0 308E00FF */  andi       $t6, $a0, 0xFF
    /* DC064 800CD0B4 000E7880 */  sll        $t7, $t6, 2
    /* DC068 800CD0B8 01EE7823 */  subu       $t7, $t7, $t6
    /* DC06C 800CD0BC 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* DC070 800CD0C0 000F7880 */  sll        $t7, $t7, 2
    /* DC074 800CD0C4 3C188015 */  lui        $t8, %hi(D_8015408E)
    /* DC078 800CD0C8 030FC021 */  addu       $t8, $t8, $t7
    /* DC07C 800CD0CC 8718408E */  lh         $t8, %lo(D_8015408E)($t8)
    /* DC080 800CD0D0 AFBF001C */  sw         $ra, 0x1C($sp)
    /* DC084 800CD0D4 AFA40030 */  sw         $a0, 0x30($sp)
    /* DC088 800CD0D8 01C02025 */  or         $a0, $t6, $zero
    /* DC08C 800CD0DC AFB10018 */  sw         $s1, 0x18($sp)
    /* DC090 800CD0E0 AFB00014 */  sw         $s0, 0x14($sp)
    /* DC094 800CD0E4 00002825 */  or         $a1, $zero, $zero
    /* DC098 800CD0E8 0C0305ED */  jal        func_800C17B4_D0764
    /* DC09C 800CD0EC A7B8002E */   sh        $t8, 0x2E($sp)
    /* DC0A0 800CD0F0 00023400 */  sll        $a2, $v0, 16
    /* DC0A4 800CD0F4 2401FFFD */  addiu      $at, $zero, -0x3
    /* DC0A8 800CD0F8 1041003A */  beq        $v0, $at, .L800CD1E4_DC194
    /* DC0AC 800CD0FC 0006CC03 */   sra       $t9, $a2, 16
    /* DC0B0 800CD100 0C000E38 */  jal        func_800038E0_44E0
    /* DC0B4 800CD104 A7B90026 */   sh        $t9, 0x26($sp)
    /* DC0B8 800CD108 87A60026 */  lh         $a2, 0x26($sp)
    /* DC0BC 800CD10C 2407001C */  addiu      $a3, $zero, 0x1C
    /* DC0C0 800CD110 24010028 */  addiu      $at, $zero, 0x28
    /* DC0C4 800CD114 00C70019 */  multu      $a2, $a3
    /* DC0C8 800CD118 3C058015 */  lui        $a1, %hi(D_80154318)
    /* DC0CC 800CD11C 24A54318 */  addiu      $a1, $a1, %lo(D_80154318)
    /* DC0D0 800CD120 240400FF */  addiu      $a0, $zero, 0xFF
    /* DC0D4 800CD124 00001812 */  mflo       $v1
    /* DC0D8 800CD128 00A35021 */  addu       $t2, $a1, $v1
    /* DC0DC 800CD12C 00A38021 */  addu       $s0, $a1, $v1
    /* DC0E0 800CD130 0041001A */  div        $zero, $v0, $at
    /* DC0E4 800CD134 00004010 */  mfhi       $t0
    /* DC0E8 800CD138 25090014 */  addiu      $t1, $t0, 0x14
    /* DC0EC 800CD13C A5490002 */  sh         $t1, 0x2($t2)
    /* DC0F0 800CD140 A204000E */  sb         $a0, 0xE($s0)
    /* DC0F4 800CD144 A204000F */  sb         $a0, 0xF($s0)
    /* DC0F8 800CD148 A2040010 */  sb         $a0, 0x10($s0)
    /* DC0FC 800CD14C A2040011 */  sb         $a0, 0x11($s0)
    /* DC100 800CD150 87AB002E */  lh         $t3, 0x2E($sp)
    /* DC104 800CD154 26100008 */  addiu      $s0, $s0, 0x8
    /* DC108 800CD158 01670019 */  multu      $t3, $a3
    /* DC10C 800CD15C 00006012 */  mflo       $t4
    /* DC110 800CD160 00AC8821 */  addu       $s1, $a1, $t4
    /* DC114 800CD164 862D0008 */  lh         $t5, 0x8($s1)
    /* DC118 800CD168 26310008 */  addiu      $s1, $s1, 0x8
    /* DC11C 800CD16C A60D0000 */  sh         $t5, 0x0($s0)
    /* DC120 800CD170 862E0002 */  lh         $t6, 0x2($s1)
    /* DC124 800CD174 A60E0002 */  sh         $t6, 0x2($s0)
    /* DC128 800CD178 862F0004 */  lh         $t7, 0x4($s1)
    /* DC12C 800CD17C 0C000E38 */  jal        func_800038E0_44E0
    /* DC130 800CD180 A60F0004 */   sh        $t7, 0x4($s0)
    /* DC134 800CD184 24010006 */  addiu      $at, $zero, 0x6
    /* DC138 800CD188 0041001A */  div        $zero, $v0, $at
    /* DC13C 800CD18C 82390006 */  lb         $t9, 0x6($s1)
    /* DC140 800CD190 0000C010 */  mfhi       $t8
    /* DC144 800CD194 03194021 */  addu       $t0, $t8, $t9
    /* DC148 800CD198 2509FFFD */  addiu      $t1, $t0, -0x3
    /* DC14C 800CD19C 0C000E38 */  jal        func_800038E0_44E0
    /* DC150 800CD1A0 A209000A */   sb        $t1, 0xA($s0)
    /* DC154 800CD1A4 24010006 */  addiu      $at, $zero, 0x6
    /* DC158 800CD1A8 0041001A */  div        $zero, $v0, $at
    /* DC15C 800CD1AC 822B0007 */  lb         $t3, 0x7($s1)
    /* DC160 800CD1B0 00005010 */  mfhi       $t2
    /* DC164 800CD1B4 014B6021 */  addu       $t4, $t2, $t3
    /* DC168 800CD1B8 258DFFFD */  addiu      $t5, $t4, -0x3
    /* DC16C 800CD1BC 0C000E38 */  jal        func_800038E0_44E0
    /* DC170 800CD1C0 A20D000B */   sb        $t5, 0xB($s0)
    /* DC174 800CD1C4 24010006 */  addiu      $at, $zero, 0x6
    /* DC178 800CD1C8 0041001A */  div        $zero, $v0, $at
    /* DC17C 800CD1CC 822F0008 */  lb         $t7, 0x8($s1)
    /* DC180 800CD1D0 00007010 */  mfhi       $t6
    /* DC184 800CD1D4 A200000D */  sb         $zero, 0xD($s0)
    /* DC188 800CD1D8 01CFC021 */  addu       $t8, $t6, $t7
    /* DC18C 800CD1DC 2719FFFD */  addiu      $t9, $t8, -0x3
    /* DC190 800CD1E0 A219000C */  sb         $t9, 0xC($s0)
  .L800CD1E4_DC194:
    /* DC194 800CD1E4 8FBF001C */  lw         $ra, 0x1C($sp)
    /* DC198 800CD1E8 8FB00014 */  lw         $s0, 0x14($sp)
    /* DC19C 800CD1EC 8FB10018 */  lw         $s1, 0x18($sp)
    /* DC1A0 800CD1F0 03E00008 */  jr         $ra
    /* DC1A4 800CD1F4 27BD0030 */   addiu     $sp, $sp, 0x30
endlabel func_800CD0B0_DC060
