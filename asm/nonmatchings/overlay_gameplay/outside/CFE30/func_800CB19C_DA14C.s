nonmatching func_800CB19C_DA14C, 0xA0

glabel func_800CB19C_DA14C
    /* DA14C 800CB19C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* DA150 800CB1A0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* DA154 800CB1A4 AFA40018 */  sw         $a0, 0x18($sp)
    /* DA158 800CB1A8 AFA5001C */  sw         $a1, 0x1C($sp)
    /* DA15C 800CB1AC AFA60020 */  sw         $a2, 0x20($sp)
    /* DA160 800CB1B0 AFA70024 */  sw         $a3, 0x24($sp)
    /* DA164 800CB1B4 24050001 */  addiu      $a1, $zero, 0x1
    /* DA168 800CB1B8 0C0305ED */  jal        func_800C17B4_D0764
    /* DA16C 800CB1BC 24040004 */   addiu     $a0, $zero, 0x4
    /* DA170 800CB1C0 00022C00 */  sll        $a1, $v0, 16
    /* DA174 800CB1C4 00057403 */  sra        $t6, $a1, 16
    /* DA178 800CB1C8 2401FFFD */  addiu      $at, $zero, -0x3
    /* DA17C 800CB1CC 10410016 */  beq        $v0, $at, .L800CB228_DA1D8
    /* DA180 800CB1D0 01C02825 */   or        $a1, $t6, $zero
    /* DA184 800CB1D4 000278C0 */  sll        $t7, $v0, 3
    /* DA188 800CB1D8 01E27823 */  subu       $t7, $t7, $v0
    /* DA18C 800CB1DC 3C188015 */  lui        $t8, %hi(D_80154318)
    /* DA190 800CB1E0 27184318 */  addiu      $t8, $t8, %lo(D_80154318)
    /* DA194 800CB1E4 000F7880 */  sll        $t7, $t7, 2
    /* DA198 800CB1E8 01F81821 */  addu       $v1, $t7, $t8
    /* DA19C 800CB1EC 240400FF */  addiu      $a0, $zero, 0xFF
    /* DA1A0 800CB1F0 87B9001A */  lh         $t9, 0x1A($sp)
    /* DA1A4 800CB1F4 87A8001E */  lh         $t0, 0x1E($sp)
    /* DA1A8 800CB1F8 87A90022 */  lh         $t1, 0x22($sp)
    /* DA1AC 800CB1FC 93AA0027 */  lbu        $t2, 0x27($sp)
    /* DA1B0 800CB200 A064000E */  sb         $a0, 0xE($v1)
    /* DA1B4 800CB204 A064000F */  sb         $a0, 0xF($v1)
    /* DA1B8 800CB208 A0640010 */  sb         $a0, 0x10($v1)
    /* DA1BC 800CB20C A0640011 */  sb         $a0, 0x11($v1)
    /* DA1C0 800CB210 A0600012 */  sb         $zero, 0x12($v1)
    /* DA1C4 800CB214 A0600014 */  sb         $zero, 0x14($v1)
    /* DA1C8 800CB218 A4790008 */  sh         $t9, 0x8($v1)
    /* DA1CC 800CB21C A468000A */  sh         $t0, 0xA($v1)
    /* DA1D0 800CB220 A469000C */  sh         $t1, 0xC($v1)
    /* DA1D4 800CB224 A06A0013 */  sb         $t2, 0x13($v1)
  .L800CB228_DA1D8:
    /* DA1D8 800CB228 8FBF0014 */  lw         $ra, 0x14($sp)
    /* DA1DC 800CB22C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* DA1E0 800CB230 00A01025 */  or         $v0, $a1, $zero
    /* DA1E4 800CB234 03E00008 */  jr         $ra
    /* DA1E8 800CB238 00000000 */   nop
endlabel func_800CB19C_DA14C
