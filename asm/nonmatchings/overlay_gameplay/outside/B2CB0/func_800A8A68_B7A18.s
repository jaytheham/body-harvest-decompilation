nonmatching func_800A8A68_B7A18, 0x1DC

glabel func_800A8A68_B7A18
    /* B7A18 800A8A68 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* B7A1C 800A8A6C AFBF001C */  sw         $ra, 0x1C($sp)
    /* B7A20 800A8A70 AFB00018 */  sw         $s0, 0x18($sp)
    /* B7A24 800A8A74 AFA40020 */  sw         $a0, 0x20($sp)
    /* B7A28 800A8A78 AFA50024 */  sw         $a1, 0x24($sp)
    /* B7A2C 800A8A7C AFA60028 */  sw         $a2, 0x28($sp)
    /* B7A30 800A8A80 0C029684 */  jal        func_800A5A10_B49C0
    /* B7A34 800A8A84 AFA7002C */   sw        $a3, 0x2C($sp)
    /* B7A38 800A8A88 14400006 */  bnez       $v0, .L800A8AA4_B7A54
    /* B7A3C 800A8A8C 00408025 */   or        $s0, $v0, $zero
    /* B7A40 800A8A90 8FAE002C */  lw         $t6, 0x2C($sp)
    /* B7A44 800A8A94 24010009 */  addiu      $at, $zero, 0x9
    /* B7A48 800A8A98 3C108015 */  lui        $s0, %hi(D_8014F6D0)
    /* B7A4C 800A8A9C 15C10064 */  bne        $t6, $at, .L800A8C30_B7BE0
    /* B7A50 800A8AA0 2610F6D0 */   addiu     $s0, $s0, %lo(D_8014F6D0)
  .L800A8AA4_B7A54:
    /* B7A54 800A8AA4 8FAF002C */  lw         $t7, 0x2C($sp)
    /* B7A58 800A8AA8 87A40022 */  lh         $a0, 0x22($sp)
    /* B7A5C 800A8AAC 24010009 */  addiu      $at, $zero, 0x9
    /* B7A60 800A8AB0 11E10015 */  beq        $t7, $at, .L800A8B08_B7AB8
    /* B7A64 800A8AB4 0004C083 */   sra       $t8, $a0, 2
    /* B7A68 800A8AB8 87A50026 */  lh         $a1, 0x26($sp)
    /* B7A6C 800A8ABC 87A6002A */  lh         $a2, 0x2A($sp)
    /* B7A70 800A8AC0 0018CC00 */  sll        $t9, $t8, 16
    /* B7A74 800A8AC4 00054883 */  sra        $t1, $a1, 2
    /* B7A78 800A8AC8 00066083 */  sra        $t4, $a2, 2
    /* B7A7C 800A8ACC 000C6C00 */  sll        $t5, $t4, 16
    /* B7A80 800A8AD0 00095400 */  sll        $t2, $t1, 16
    /* B7A84 800A8AD4 000A2C03 */  sra        $a1, $t2, 16
    /* B7A88 800A8AD8 000D3403 */  sra        $a2, $t5, 16
    /* B7A8C 800A8ADC 00192403 */  sra        $a0, $t9, 16
    /* B7A90 800A8AE0 0C032C67 */  jal        func_800CB19C_DA14C
    /* B7A94 800A8AE4 93A7002F */   lbu       $a3, 0x2F($sp)
    /* B7A98 800A8AE8 A6020010 */  sh         $v0, 0x10($s0)
    /* B7A9C 800A8AEC 860F0010 */  lh         $t7, 0x10($s0)
    /* B7AA0 800A8AF0 2401FFFD */  addiu      $at, $zero, -0x3
    /* B7AA4 800A8AF4 2418FFFF */  addiu      $t8, $zero, -0x1
    /* B7AA8 800A8AF8 15E10003 */  bne        $t7, $at, .L800A8B08_B7AB8
    /* B7AAC 800A8AFC 00000000 */   nop
    /* B7AB0 800A8B00 1000004B */  b          .L800A8C30_B7BE0
    /* B7AB4 800A8B04 A618000C */   sh        $t8, 0xC($s0)
  .L800A8B08_B7AB8:
    /* B7AB8 800A8B08 3C198022 */  lui        $t9, %hi(D_80222A70)
    /* B7ABC 800A8B0C 87A20026 */  lh         $v0, 0x26($sp)
    /* B7AC0 800A8B10 8F392A70 */  lw         $t9, %lo(D_80222A70)($t9)
    /* B7AC4 800A8B14 2408FFFE */  addiu      $t0, $zero, -0x2
    /* B7AC8 800A8B18 0059082A */  slt        $at, $v0, $t9
    /* B7ACC 800A8B1C 10200004 */  beqz       $at, .L800A8B30_B7AE0
    /* B7AD0 800A8B20 00000000 */   nop
    /* B7AD4 800A8B24 A6020002 */  sh         $v0, 0x2($s0)
    /* B7AD8 800A8B28 10000014 */  b          .L800A8B7C_B7B2C
    /* B7ADC 800A8B2C A6080008 */   sh        $t0, 0x8($s0)
  .L800A8B30_B7AE0:
    /* B7AE0 800A8B30 0C000E38 */  jal        func_800038E0_44E0
    /* B7AE4 800A8B34 00000000 */   nop
    /* B7AE8 800A8B38 87A90026 */  lh         $t1, 0x26($sp)
    /* B7AEC 800A8B3C 04410004 */  bgez       $v0, .L800A8B50_B7B00
    /* B7AF0 800A8B40 304A007F */   andi      $t2, $v0, 0x7F
    /* B7AF4 800A8B44 11400002 */  beqz       $t2, .L800A8B50_B7B00
    /* B7AF8 800A8B48 00000000 */   nop
    /* B7AFC 800A8B4C 254AFF80 */  addiu      $t2, $t2, -0x80
  .L800A8B50_B7B00:
    /* B7B00 800A8B50 012A5823 */  subu       $t3, $t1, $t2
    /* B7B04 800A8B54 256C0040 */  addiu      $t4, $t3, 0x40
    /* B7B08 800A8B58 0C000E38 */  jal        func_800038E0_44E0
    /* B7B0C 800A8B5C A60C0002 */   sh        $t4, 0x2($s0)
    /* B7B10 800A8B60 04410004 */  bgez       $v0, .L800A8B74_B7B24
    /* B7B14 800A8B64 304D000F */   andi      $t5, $v0, 0xF
    /* B7B18 800A8B68 11A00002 */  beqz       $t5, .L800A8B74_B7B24
    /* B7B1C 800A8B6C 00000000 */   nop
    /* B7B20 800A8B70 25ADFFF0 */  addiu      $t5, $t5, -0x10
  .L800A8B74_B7B24:
    /* B7B24 800A8B74 25AE0014 */  addiu      $t6, $t5, 0x14
    /* B7B28 800A8B78 A60E0008 */  sh         $t6, 0x8($s0)
  .L800A8B7C_B7B2C:
    /* B7B2C 800A8B7C 0C000E38 */  jal        func_800038E0_44E0
    /* B7B30 800A8B80 00000000 */   nop
    /* B7B34 800A8B84 87AF0022 */  lh         $t7, 0x22($sp)
    /* B7B38 800A8B88 04410004 */  bgez       $v0, .L800A8B9C_B7B4C
    /* B7B3C 800A8B8C 3058007F */   andi      $t8, $v0, 0x7F
    /* B7B40 800A8B90 13000002 */  beqz       $t8, .L800A8B9C_B7B4C
    /* B7B44 800A8B94 00000000 */   nop
    /* B7B48 800A8B98 2718FF80 */  addiu      $t8, $t8, -0x80
  .L800A8B9C_B7B4C:
    /* B7B4C 800A8B9C 01F8C823 */  subu       $t9, $t7, $t8
    /* B7B50 800A8BA0 27280040 */  addiu      $t0, $t9, 0x40
    /* B7B54 800A8BA4 0C000E38 */  jal        func_800038E0_44E0
    /* B7B58 800A8BA8 A6080000 */   sh        $t0, 0x0($s0)
    /* B7B5C 800A8BAC 87A9002A */  lh         $t1, 0x2A($sp)
    /* B7B60 800A8BB0 04410004 */  bgez       $v0, .L800A8BC4_B7B74
    /* B7B64 800A8BB4 304A007F */   andi      $t2, $v0, 0x7F
    /* B7B68 800A8BB8 11400002 */  beqz       $t2, .L800A8BC4_B7B74
    /* B7B6C 800A8BBC 00000000 */   nop
    /* B7B70 800A8BC0 254AFF80 */  addiu      $t2, $t2, -0x80
  .L800A8BC4_B7B74:
    /* B7B74 800A8BC4 012A5823 */  subu       $t3, $t1, $t2
    /* B7B78 800A8BC8 256C0040 */  addiu      $t4, $t3, 0x40
    /* B7B7C 800A8BCC 0C000E38 */  jal        func_800038E0_44E0
    /* B7B80 800A8BD0 A60C0004 */   sh        $t4, 0x4($s0)
    /* B7B84 800A8BD4 04410004 */  bgez       $v0, .L800A8BE8_B7B98
    /* B7B88 800A8BD8 304D003F */   andi      $t5, $v0, 0x3F
    /* B7B8C 800A8BDC 11A00002 */  beqz       $t5, .L800A8BE8_B7B98
    /* B7B90 800A8BE0 00000000 */   nop
    /* B7B94 800A8BE4 25ADFFC0 */  addiu      $t5, $t5, -0x40
  .L800A8BE8_B7B98:
    /* B7B98 800A8BE8 240E0020 */  addiu      $t6, $zero, 0x20
    /* B7B9C 800A8BEC 01CD7823 */  subu       $t7, $t6, $t5
    /* B7BA0 800A8BF0 0C000E38 */  jal        func_800038E0_44E0
    /* B7BA4 800A8BF4 A60F0006 */   sh        $t7, 0x6($s0)
    /* B7BA8 800A8BF8 04410004 */  bgez       $v0, .L800A8C0C_B7BBC
    /* B7BAC 800A8BFC 3058003F */   andi      $t8, $v0, 0x3F
    /* B7BB0 800A8C00 13000002 */  beqz       $t8, .L800A8C0C_B7BBC
    /* B7BB4 800A8C04 00000000 */   nop
    /* B7BB8 800A8C08 2718FFC0 */  addiu      $t8, $t8, -0x40
  .L800A8C0C_B7BBC:
    /* B7BBC 800A8C0C 24190020 */  addiu      $t9, $zero, 0x20
    /* B7BC0 800A8C10 03384023 */  subu       $t0, $t9, $t8
    /* B7BC4 800A8C14 A608000A */  sh         $t0, 0xA($s0)
    /* B7BC8 800A8C18 8FA9002C */  lw         $t1, 0x2C($sp)
    /* B7BCC 800A8C1C 0C000E38 */  jal        func_800038E0_44E0
    /* B7BD0 800A8C20 A609000C */   sh        $t1, 0xC($s0)
    /* B7BD4 800A8C24 304A007F */  andi       $t2, $v0, 0x7F
    /* B7BD8 800A8C28 254B01F4 */  addiu      $t3, $t2, 0x1F4
    /* B7BDC 800A8C2C A60B000E */  sh         $t3, 0xE($s0)
  .L800A8C30_B7BE0:
    /* B7BE0 800A8C30 8FBF001C */  lw         $ra, 0x1C($sp)
    /* B7BE4 800A8C34 8FB00018 */  lw         $s0, 0x18($sp)
    /* B7BE8 800A8C38 27BD0020 */  addiu      $sp, $sp, 0x20
    /* B7BEC 800A8C3C 03E00008 */  jr         $ra
    /* B7BF0 800A8C40 00000000 */   nop
endlabel func_800A8A68_B7A18
