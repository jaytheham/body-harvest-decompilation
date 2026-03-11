nonmatching func_800D6ADC_E5A8C, 0x13C

glabel func_800D6ADC_E5A8C
    /* E5A8C 800D6ADC 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* E5A90 800D6AE0 3C0E8015 */  lui        $t6, %hi(D_80153AB0)
    /* E5A94 800D6AE4 91CE3AB0 */  lbu        $t6, %lo(D_80153AB0)($t6)
    /* E5A98 800D6AE8 24010001 */  addiu      $at, $zero, 0x1
    /* E5A9C 800D6AEC AFBF001C */  sw         $ra, 0x1C($sp)
    /* E5AA0 800D6AF0 AFA40028 */  sw         $a0, 0x28($sp)
    /* E5AA4 800D6AF4 AFA5002C */  sw         $a1, 0x2C($sp)
    /* E5AA8 800D6AF8 AFA60030 */  sw         $a2, 0x30($sp)
    /* E5AAC 800D6AFC 15C10006 */  bne        $t6, $at, .L800D6B18_E5AC8
    /* E5AB0 800D6B00 AFA70034 */   sw        $a3, 0x34($sp)
    /* E5AB4 800D6B04 3C048014 */  lui        $a0, %hi(D_801438DC)
    /* E5AB8 800D6B08 0C00731B */  jal        osSyncPrintf
    /* E5ABC 800D6B0C 248438DC */   addiu     $a0, $a0, %lo(D_801438DC)
    /* E5AC0 800D6B10 1000003E */  b          .L800D6C0C_E5BBC
    /* E5AC4 800D6B14 8FBF001C */   lw        $ra, 0x1C($sp)
  .L800D6B18_E5AC8:
    /* E5AC8 800D6B18 0C030535 */  jal        func_800C14D4_D0484
    /* E5ACC 800D6B1C 24040007 */   addiu     $a0, $zero, 0x7
    /* E5AD0 800D6B20 240100FB */  addiu      $at, $zero, 0xFB
    /* E5AD4 800D6B24 10410038 */  beq        $v0, $at, .L800D6C08_E5BB8
    /* E5AD8 800D6B28 304400FF */   andi      $a0, $v0, 0xFF
    /* E5ADC 800D6B2C 00002825 */  or         $a1, $zero, $zero
    /* E5AE0 800D6B30 0C0305ED */  jal        func_800C17B4_D0764
    /* E5AE4 800D6B34 A3A40027 */   sb        $a0, 0x27($sp)
    /* E5AE8 800D6B38 00021C00 */  sll        $v1, $v0, 16
    /* E5AEC 800D6B3C 00037C03 */  sra        $t7, $v1, 16
    /* E5AF0 800D6B40 2401FFFD */  addiu      $at, $zero, -0x3
    /* E5AF4 800D6B44 01E01825 */  or         $v1, $t7, $zero
    /* E5AF8 800D6B48 14410005 */  bne        $v0, $at, .L800D6B60_E5B10
    /* E5AFC 800D6B4C 93A40027 */   lbu       $a0, 0x27($sp)
    /* E5B00 800D6B50 0C0304E1 */  jal        func_800C1384_D0334
    /* E5B04 800D6B54 00000000 */   nop
    /* E5B08 800D6B58 1000002C */  b          .L800D6C0C_E5BBC
    /* E5B0C 800D6B5C 8FBF001C */   lw        $ra, 0x1C($sp)
  .L800D6B60_E5B10:
    /* E5B10 800D6B60 0003C8C0 */  sll        $t9, $v1, 3
    /* E5B14 800D6B64 0323C823 */  subu       $t9, $t9, $v1
    /* E5B18 800D6B68 3C088015 */  lui        $t0, %hi(D_80154318)
    /* E5B1C 800D6B6C 24180001 */  addiu      $t8, $zero, 0x1
    /* E5B20 800D6B70 3C018015 */  lui        $at, %hi(D_80153AB0)
    /* E5B24 800D6B74 25084318 */  addiu      $t0, $t0, %lo(D_80154318)
    /* E5B28 800D6B78 0019C880 */  sll        $t9, $t9, 2
    /* E5B2C 800D6B7C A0383AB0 */  sb         $t8, %lo(D_80153AB0)($at)
    /* E5B30 800D6B80 03281021 */  addu       $v0, $t9, $t0
    /* E5B34 800D6B84 87A90036 */  lh         $t1, 0x36($sp)
    /* E5B38 800D6B88 87AA002A */  lh         $t2, 0x2A($sp)
    /* E5B3C 800D6B8C 87AB002E */  lh         $t3, 0x2E($sp)
    /* E5B40 800D6B90 87AC0032 */  lh         $t4, 0x32($sp)
    /* E5B44 800D6B94 A040000E */  sb         $zero, 0xE($v0)
    /* E5B48 800D6B98 00002025 */  or         $a0, $zero, $zero
    /* E5B4C 800D6B9C A4490002 */  sh         $t1, 0x2($v0)
    /* E5B50 800D6BA0 A44A0008 */  sh         $t2, 0x8($v0)
    /* E5B54 800D6BA4 A44B000A */  sh         $t3, 0xA($v0)
    /* E5B58 800D6BA8 0C035AA1 */  jal        func_800D6A84_E5A34
    /* E5B5C 800D6BAC A44C000C */   sh        $t4, 0xC($v0)
    /* E5B60 800D6BB0 0C035AA1 */  jal        func_800D6A84_E5A34
    /* E5B64 800D6BB4 24040001 */   addiu     $a0, $zero, 0x1
    /* E5B68 800D6BB8 0C035AA1 */  jal        func_800D6A84_E5A34
    /* E5B6C 800D6BBC 24040002 */   addiu     $a0, $zero, 0x2
    /* E5B70 800D6BC0 0C035AA1 */  jal        func_800D6A84_E5A34
    /* E5B74 800D6BC4 24040003 */   addiu     $a0, $zero, 0x3
    /* E5B78 800D6BC8 0C035AA1 */  jal        func_800D6A84_E5A34
    /* E5B7C 800D6BCC 24040004 */   addiu     $a0, $zero, 0x4
    /* E5B80 800D6BD0 3C018014 */  lui        $at, %hi(D_80144020)
    /* E5B84 800D6BD4 C4244020 */  lwc1       $f4, %lo(D_80144020)($at)
    /* E5B88 800D6BD8 00002025 */  or         $a0, $zero, $zero
    /* E5B8C 800D6BDC 240500E8 */  addiu      $a1, $zero, 0xE8
    /* E5B90 800D6BE0 24060000 */  addiu      $a2, $zero, 0x0
    /* E5B94 800D6BE4 00003825 */  or         $a3, $zero, $zero
    /* E5B98 800D6BE8 0C00528F */  jal        func_80014A3C_1563C
    /* E5B9C 800D6BEC E7A40010 */   swc1      $f4, 0x10($sp)
    /* E5BA0 800D6BF0 3C014040 */  lui        $at, (0x40400000 >> 16)
    /* E5BA4 800D6BF4 44816000 */  mtc1       $at, $f12
    /* E5BA8 800D6BF8 24050001 */  addiu      $a1, $zero, 0x1
    /* E5BAC 800D6BFC 2406003C */  addiu      $a2, $zero, 0x3C
    /* E5BB0 800D6C00 0C04D742 */  jal        func_80135D08_144CB8
    /* E5BB4 800D6C04 24070001 */   addiu     $a3, $zero, 0x1
  .L800D6C08_E5BB8:
    /* E5BB8 800D6C08 8FBF001C */  lw         $ra, 0x1C($sp)
  .L800D6C0C_E5BBC:
    /* E5BBC 800D6C0C 27BD0028 */  addiu      $sp, $sp, 0x28
    /* E5BC0 800D6C10 03E00008 */  jr         $ra
    /* E5BC4 800D6C14 00000000 */   nop
endlabel func_800D6ADC_E5A8C
