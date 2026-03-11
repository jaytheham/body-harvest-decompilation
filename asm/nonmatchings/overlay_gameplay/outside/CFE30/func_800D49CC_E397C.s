nonmatching func_800D49CC_E397C, 0xAC

glabel func_800D49CC_E397C
    /* E397C 800D49CC 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* E3980 800D49D0 AFBF001C */  sw         $ra, 0x1C($sp)
    /* E3984 800D49D4 AFA40028 */  sw         $a0, 0x28($sp)
    /* E3988 800D49D8 AFA5002C */  sw         $a1, 0x2C($sp)
    /* E398C 800D49DC AFA60030 */  sw         $a2, 0x30($sp)
    /* E3990 800D49E0 A7A60032 */  sh         $a2, 0x32($sp)
    /* E3994 800D49E4 24050001 */  addiu      $a1, $zero, 0x1
    /* E3998 800D49E8 0C0305ED */  jal        func_800C17B4_D0764
    /* E399C 800D49EC 2404000F */   addiu     $a0, $zero, 0xF
    /* E39A0 800D49F0 00021C00 */  sll        $v1, $v0, 16
    /* E39A4 800D49F4 0003C403 */  sra        $t8, $v1, 16
    /* E39A8 800D49F8 2401FFFD */  addiu      $at, $zero, -0x3
    /* E39AC 800D49FC 03001825 */  or         $v1, $t8, $zero
    /* E39B0 800D4A00 87A4002A */  lh         $a0, 0x2A($sp)
    /* E39B4 800D4A04 87A5002E */  lh         $a1, 0x2E($sp)
    /* E39B8 800D4A08 10410016 */  beq        $v0, $at, .L800D4A64_E3A14
    /* E39BC 800D4A0C 87A60032 */   lh        $a2, 0x32($sp)
    /* E39C0 800D4A10 0018C8C0 */  sll        $t9, $t8, 3
    /* E39C4 800D4A14 0338C823 */  subu       $t9, $t9, $t8
    /* E39C8 800D4A18 3C088015 */  lui        $t0, %hi(D_80154318)
    /* E39CC 800D4A1C 25084318 */  addiu      $t0, $t0, %lo(D_80154318)
    /* E39D0 800D4A20 0019C880 */  sll        $t9, $t9, 2
    /* E39D4 800D4A24 03281021 */  addu       $v0, $t9, $t0
    /* E39D8 800D4A28 24090006 */  addiu      $t1, $zero, 0x6
    /* E39DC 800D4A2C 240A001E */  addiu      $t2, $zero, 0x1E
    /* E39E0 800D4A30 A4490002 */  sh         $t1, 0x2($v0)
    /* E39E4 800D4A34 A4440008 */  sh         $a0, 0x8($v0)
    /* E39E8 800D4A38 A445000A */  sh         $a1, 0xA($v0)
    /* E39EC 800D4A3C A446000C */  sh         $a2, 0xC($v0)
    /* E39F0 800D4A40 A444000E */  sh         $a0, 0xE($v0)
    /* E39F4 800D4A44 A4450010 */  sh         $a1, 0x10($v0)
    /* E39F8 800D4A48 A4460012 */  sh         $a2, 0x12($v0)
    /* E39FC 800D4A4C A0400014 */  sb         $zero, 0x14($v0)
    /* E3A00 800D4A50 AFAA0010 */  sw         $t2, 0x10($sp)
    /* E3A04 800D4A54 2407000D */  addiu      $a3, $zero, 0xD
    /* E3A08 800D4A58 0C0376D8 */  jal        func_800DDB60_ECB10
    /* E3A0C 800D4A5C A7B80022 */   sh        $t8, 0x22($sp)
    /* E3A10 800D4A60 87A30022 */  lh         $v1, 0x22($sp)
  .L800D4A64_E3A14:
    /* E3A14 800D4A64 8FBF001C */  lw         $ra, 0x1C($sp)
    /* E3A18 800D4A68 27BD0028 */  addiu      $sp, $sp, 0x28
    /* E3A1C 800D4A6C 00601025 */  or         $v0, $v1, $zero
    /* E3A20 800D4A70 03E00008 */  jr         $ra
    /* E3A24 800D4A74 00000000 */   nop
endlabel func_800D49CC_E397C
