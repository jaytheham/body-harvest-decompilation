nonmatching func_800D3C88_E2C38, 0xB8

glabel func_800D3C88_E2C38
    /* E2C38 800D3C88 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* E2C3C 800D3C8C AFBF001C */  sw         $ra, 0x1C($sp)
    /* E2C40 800D3C90 AFA40028 */  sw         $a0, 0x28($sp)
    /* E2C44 800D3C94 AFA5002C */  sw         $a1, 0x2C($sp)
    /* E2C48 800D3C98 AFA60030 */  sw         $a2, 0x30($sp)
    /* E2C4C 800D3C9C AFA70034 */  sw         $a3, 0x34($sp)
    /* E2C50 800D3CA0 24050001 */  addiu      $a1, $zero, 0x1
    /* E2C54 800D3CA4 0C0305ED */  jal        func_800C17B4_D0764
    /* E2C58 800D3CA8 2404000E */   addiu     $a0, $zero, 0xE
    /* E2C5C 800D3CAC 00021C00 */  sll        $v1, $v0, 16
    /* E2C60 800D3CB0 00037403 */  sra        $t6, $v1, 16
    /* E2C64 800D3CB4 2401FFFD */  addiu      $at, $zero, -0x3
    /* E2C68 800D3CB8 01C01825 */  or         $v1, $t6, $zero
    /* E2C6C 800D3CBC 87A4002A */  lh         $a0, 0x2A($sp)
    /* E2C70 800D3CC0 87A5002E */  lh         $a1, 0x2E($sp)
    /* E2C74 800D3CC4 10410019 */  beq        $v0, $at, .L800D3D2C_E2CDC
    /* E2C78 800D3CC8 87A60032 */   lh        $a2, 0x32($sp)
    /* E2C7C 800D3CCC 000E78C0 */  sll        $t7, $t6, 3
    /* E2C80 800D3CD0 01EE7823 */  subu       $t7, $t7, $t6
    /* E2C84 800D3CD4 3C188015 */  lui        $t8, %hi(D_80154318)
    /* E2C88 800D3CD8 27184318 */  addiu      $t8, $t8, %lo(D_80154318)
    /* E2C8C 800D3CDC 000F7880 */  sll        $t7, $t7, 2
    /* E2C90 800D3CE0 01F81021 */  addu       $v0, $t7, $t8
    /* E2C94 800D3CE4 87A80036 */  lh         $t0, 0x36($sp)
    /* E2C98 800D3CE8 87A9003A */  lh         $t1, 0x3A($sp)
    /* E2C9C 800D3CEC 87AA003E */  lh         $t2, 0x3E($sp)
    /* E2CA0 800D3CF0 24190006 */  addiu      $t9, $zero, 0x6
    /* E2CA4 800D3CF4 240B0019 */  addiu      $t3, $zero, 0x19
    /* E2CA8 800D3CF8 A4590002 */  sh         $t9, 0x2($v0)
    /* E2CAC 800D3CFC A4440008 */  sh         $a0, 0x8($v0)
    /* E2CB0 800D3D00 A445000A */  sh         $a1, 0xA($v0)
    /* E2CB4 800D3D04 A446000C */  sh         $a2, 0xC($v0)
    /* E2CB8 800D3D08 A0400014 */  sb         $zero, 0x14($v0)
    /* E2CBC 800D3D0C AFAB0010 */  sw         $t3, 0x10($sp)
    /* E2CC0 800D3D10 2407000D */  addiu      $a3, $zero, 0xD
    /* E2CC4 800D3D14 A7AE0022 */  sh         $t6, 0x22($sp)
    /* E2CC8 800D3D18 A448000E */  sh         $t0, 0xE($v0)
    /* E2CCC 800D3D1C A4490010 */  sh         $t1, 0x10($v0)
    /* E2CD0 800D3D20 0C0376D8 */  jal        func_800DDB60_ECB10
    /* E2CD4 800D3D24 A44A0012 */   sh        $t2, 0x12($v0)
    /* E2CD8 800D3D28 87A30022 */  lh         $v1, 0x22($sp)
  .L800D3D2C_E2CDC:
    /* E2CDC 800D3D2C 8FBF001C */  lw         $ra, 0x1C($sp)
    /* E2CE0 800D3D30 27BD0028 */  addiu      $sp, $sp, 0x28
    /* E2CE4 800D3D34 00601025 */  or         $v0, $v1, $zero
    /* E2CE8 800D3D38 03E00008 */  jr         $ra
    /* E2CEC 800D3D3C 00000000 */   nop
endlabel func_800D3C88_E2C38
