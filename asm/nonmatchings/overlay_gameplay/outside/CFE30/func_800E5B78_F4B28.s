nonmatching func_800E5B78_F4B28, 0x17C

glabel func_800E5B78_F4B28
    /* F4B28 800E5B78 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* F4B2C 800E5B7C 3C0D8015 */  lui        $t5, %hi(D_80152C96)
    /* F4B30 800E5B80 25AD2C96 */  addiu      $t5, $t5, %lo(D_80152C96)
    /* F4B34 800E5B84 AFB00004 */  sw         $s0, 0x4($sp)
    /* F4B38 800E5B88 85B00000 */  lh         $s0, 0x0($t5)
    /* F4B3C 800E5B8C AFB40014 */  sw         $s4, 0x14($sp)
    /* F4B40 800E5B90 AFB30010 */  sw         $s3, 0x10($sp)
    /* F4B44 800E5B94 AFB2000C */  sw         $s2, 0xC($sp)
    /* F4B48 800E5B98 AFB10008 */  sw         $s1, 0x8($sp)
    /* F4B4C 800E5B9C 1A00004E */  blez       $s0, .L800E5CD8_F4C88
    /* F4B50 800E5BA0 00002025 */   or        $a0, $zero, $zero
    /* F4B54 800E5BA4 3C0A8005 */  lui        $t2, %hi(buildingInstances)
    /* F4B58 800E5BA8 3C078005 */  lui        $a3, %hi(vehicleInstances)
    /* F4B5C 800E5BAC 3C028015 */  lui        $v0, %hi(D_80152CA0)
    /* F4B60 800E5BB0 24422CA0 */  addiu      $v0, $v0, %lo(D_80152CA0)
    /* F4B64 800E5BB4 24E7DCD0 */  addiu      $a3, $a3, %lo(vehicleInstances)
    /* F4B68 800E5BB8 254A0AD8 */  addiu      $t2, $t2, %lo(buildingInstances)
    /* F4B6C 800E5BBC 240CEFFF */  addiu      $t4, $zero, -0x1001
    /* F4B70 800E5BC0 240B0018 */  addiu      $t3, $zero, 0x18
    /* F4B74 800E5BC4 2409FF7F */  addiu      $t1, $zero, -0x81
    /* F4B78 800E5BC8 2408005C */  addiu      $t0, $zero, 0x5C
    /* F4B7C 800E5BCC 24060002 */  addiu      $a2, $zero, 0x2
    /* F4B80 800E5BD0 24050001 */  addiu      $a1, $zero, 0x1
    /* F4B84 800E5BD4 24030003 */  addiu      $v1, $zero, 0x3
  .L800E5BD8_F4B88:
    /* F4B88 800E5BD8 00830019 */  multu      $a0, $v1
    /* F4B8C 800E5BDC 00007012 */  mflo       $t6
    /* F4B90 800E5BE0 004E8821 */  addu       $s1, $v0, $t6
    /* F4B94 800E5BE4 92320002 */  lbu        $s2, 0x2($s1)
    /* F4B98 800E5BE8 12400004 */  beqz       $s2, .L800E5BFC_F4BAC
    /* F4B9C 800E5BEC 264FFFFF */   addiu     $t7, $s2, -0x1
    /* F4BA0 800E5BF0 A22F0002 */  sb         $t7, 0x2($s1)
    /* F4BA4 800E5BF4 85B00000 */  lh         $s0, 0x0($t5)
    /* F4BA8 800E5BF8 31F200FF */  andi       $s2, $t7, 0xFF
  .L800E5BFC_F4BAC:
    /* F4BAC 800E5BFC 54B20031 */  bnel       $a1, $s2, .L800E5CC4_F4C74
    /* F4BB0 800E5C00 24840001 */   addiu     $a0, $a0, 0x1
    /* F4BB4 800E5C04 92320001 */  lbu        $s2, 0x1($s1)
    /* F4BB8 800E5C08 14D20009 */  bne        $a2, $s2, .L800E5C30_F4BE0
    /* F4BBC 800E5C0C 00000000 */   nop
    /* F4BC0 800E5C10 92380000 */  lbu        $t8, 0x0($s1)
    /* F4BC4 800E5C14 03080019 */  multu      $t8, $t0
    /* F4BC8 800E5C18 0000C812 */  mflo       $t9
    /* F4BCC 800E5C1C 00F99021 */  addu       $s2, $a3, $t9
    /* F4BD0 800E5C20 964E0020 */  lhu        $t6, 0x20($s2)
    /* F4BD4 800E5C24 01C97824 */  and        $t7, $t6, $t1
    /* F4BD8 800E5C28 1000000E */  b          .L800E5C64_F4C14
    /* F4BDC 800E5C2C A64F0020 */   sh        $t7, 0x20($s2)
  .L800E5C30_F4BE0:
    /* F4BE0 800E5C30 54B2000D */  bnel       $a1, $s2, .L800E5C68_F4C18
    /* F4BE4 800E5C34 00048C00 */   sll       $s1, $a0, 16
    /* F4BE8 800E5C38 92380000 */  lbu        $t8, 0x0($s1)
    /* F4BEC 800E5C3C 030B0019 */  multu      $t8, $t3
    /* F4BF0 800E5C40 0000C812 */  mflo       $t9
    /* F4BF4 800E5C44 01599021 */  addu       $s2, $t2, $t9
    /* F4BF8 800E5C48 8E530008 */  lw         $s3, 0x8($s2)
    /* F4BFC 800E5C4C 0013A302 */  srl        $s4, $s3, 12
    /* F4C00 800E5C50 028C7024 */  and        $t6, $s4, $t4
    /* F4C04 800E5C54 01D47826 */  xor        $t7, $t6, $s4
    /* F4C08 800E5C58 000FC300 */  sll        $t8, $t7, 12
    /* F4C0C 800E5C5C 0313C826 */  xor        $t9, $t8, $s3
    /* F4C10 800E5C60 AE590008 */  sw         $t9, 0x8($s2)
  .L800E5C64_F4C14:
    /* F4C14 800E5C64 00048C00 */  sll        $s1, $a0, 16
  .L800E5C68_F4C18:
    /* F4C18 800E5C68 2612FFFF */  addiu      $s2, $s0, -0x1
    /* F4C1C 800E5C6C 0092082A */  slt        $at, $a0, $s2
    /* F4C20 800E5C70 00117403 */  sra        $t6, $s1, 16
    /* F4C24 800E5C74 10200010 */  beqz       $at, .L800E5CB8_F4C68
    /* F4C28 800E5C78 01C08825 */   or        $s1, $t6, $zero
  .L800E5C7C_F4C2C:
    /* F4C2C 800E5C7C 02230019 */  multu      $s1, $v1
    /* F4C30 800E5C80 26310001 */  addiu      $s1, $s1, 0x1
    /* F4C34 800E5C84 00117400 */  sll        $t6, $s1, 16
    /* F4C38 800E5C88 000E8C03 */  sra        $s1, $t6, 16
    /* F4C3C 800E5C8C 00007812 */  mflo       $t7
    /* F4C40 800E5C90 004F8021 */  addu       $s0, $v0, $t7
    /* F4C44 800E5C94 92010003 */  lbu        $at, 0x3($s0)
    /* F4C48 800E5C98 92190004 */  lbu        $t9, 0x4($s0)
    /* F4C4C 800E5C9C A2010000 */  sb         $at, 0x0($s0)
    /* F4C50 800E5CA0 92010005 */  lbu        $at, 0x5($s0)
    /* F4C54 800E5CA4 A2190001 */  sb         $t9, 0x1($s0)
    /* F4C58 800E5CA8 A2010002 */  sb         $at, 0x2($s0)
    /* F4C5C 800E5CAC 0232082A */  slt        $at, $s1, $s2
    /* F4C60 800E5CB0 1420FFF2 */  bnez       $at, .L800E5C7C_F4C2C
    /* F4C64 800E5CB4 00000000 */   nop
  .L800E5CB8_F4C68:
    /* F4C68 800E5CB8 A5B20000 */  sh         $s2, 0x0($t5)
    /* F4C6C 800E5CBC 85B00000 */  lh         $s0, 0x0($t5)
    /* F4C70 800E5CC0 24840001 */  addiu      $a0, $a0, 0x1
  .L800E5CC4_F4C74:
    /* F4C74 800E5CC4 0004C400 */  sll        $t8, $a0, 16
    /* F4C78 800E5CC8 00182403 */  sra        $a0, $t8, 16
    /* F4C7C 800E5CCC 0090082A */  slt        $at, $a0, $s0
    /* F4C80 800E5CD0 1420FFC1 */  bnez       $at, .L800E5BD8_F4B88
    /* F4C84 800E5CD4 00000000 */   nop
  .L800E5CD8_F4C88:
    /* F4C88 800E5CD8 8FB00004 */  lw         $s0, 0x4($sp)
    /* F4C8C 800E5CDC 8FB10008 */  lw         $s1, 0x8($sp)
    /* F4C90 800E5CE0 8FB2000C */  lw         $s2, 0xC($sp)
    /* F4C94 800E5CE4 8FB30010 */  lw         $s3, 0x10($sp)
    /* F4C98 800E5CE8 8FB40014 */  lw         $s4, 0x14($sp)
    /* F4C9C 800E5CEC 03E00008 */  jr         $ra
    /* F4CA0 800E5CF0 27BD0018 */   addiu     $sp, $sp, 0x18
endlabel func_800E5B78_F4B28
