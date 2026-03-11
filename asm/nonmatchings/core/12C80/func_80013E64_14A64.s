nonmatching func_80013E64_14A64, 0x100

glabel func_80013E64_14A64
    /* 14A64 80013E64 3C0F8007 */  lui        $t7, %hi(D_8006AB88)
    /* 14A68 80013E68 8DEFAB88 */  lw         $t7, %lo(D_8006AB88)($t7)
    /* 14A6C 80013E6C 00042E00 */  sll        $a1, $a0, 24
    /* 14A70 80013E70 00057603 */  sra        $t6, $a1, 24
    /* 14A74 80013E74 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 14A78 80013E78 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 14A7C 80013E7C AFA40020 */  sw         $a0, 0x20($sp)
    /* 14A80 80013E80 11E00034 */  beqz       $t7, .L80013F54_14B54
    /* 14A84 80013E84 01C02825 */   or        $a1, $t6, $zero
    /* 14A88 80013E88 05C00003 */  bltz       $t6, .L80013E98_14A98
    /* 14A8C 80013E8C 29C10004 */   slti      $at, $t6, 0x4
    /* 14A90 80013E90 14200005 */  bnez       $at, .L80013EA8_14AA8
    /* 14A94 80013E94 00051080 */   sll       $v0, $a1, 2
  .L80013E98_14A98:
    /* 14A98 80013E98 0C005667 */  jal        func_8001599C_1659C
    /* 14A9C 80013E9C 00000000 */   nop
    /* 14AA0 80013EA0 1000002D */  b          .L80013F58_14B58
    /* 14AA4 80013EA4 8FBF0014 */   lw        $ra, 0x14($sp)
  .L80013EA8_14AA8:
    /* 14AA8 80013EA8 3C048007 */  lui        $a0, %hi(D_8006AB18)
    /* 14AAC 80013EAC 00822021 */  addu       $a0, $a0, $v0
    /* 14AB0 80013EB0 8C84AB18 */  lw         $a0, %lo(D_8006AB18)($a0)
    /* 14AB4 80013EB4 8C98002C */  lw         $t8, 0x2C($a0)
    /* 14AB8 80013EB8 57000008 */  bnel       $t8, $zero, .L80013EDC_14ADC
    /* 14ABC 80013EBC AFA2001C */   sw        $v0, 0x1C($sp)
    /* 14AC0 80013EC0 00052600 */  sll        $a0, $a1, 24
    /* 14AC4 80013EC4 0004CE03 */  sra        $t9, $a0, 24
    /* 14AC8 80013EC8 0C005AAF */  jal        func_80016ABC_176BC
    /* 14ACC 80013ECC 03202025 */   or        $a0, $t9, $zero
    /* 14AD0 80013ED0 10000021 */  b          .L80013F58_14B58
    /* 14AD4 80013ED4 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 14AD8 80013ED8 AFA2001C */  sw         $v0, 0x1C($sp)
  .L80013EDC_14ADC:
    /* 14ADC 80013EDC 0C0088A8 */  jal        alSeqpStop
    /* 14AE0 80013EE0 A3A50023 */   sb        $a1, 0x23($sp)
    /* 14AE4 80013EE4 83A50023 */  lb         $a1, 0x23($sp)
    /* 14AE8 80013EE8 3C018003 */  lui        $at, %hi(D_80031CD0)
    /* 14AEC 80013EEC 8FA2001C */  lw         $v0, 0x1C($sp)
    /* 14AF0 80013EF0 2403FFFF */  addiu      $v1, $zero, -0x1
    /* 14AF4 80013EF4 00250821 */  addu       $at, $at, $a1
    /* 14AF8 80013EF8 A0231CD0 */  sb         $v1, %lo(D_80031CD0)($at)
    /* 14AFC 80013EFC 3C018003 */  lui        $at, %hi(D_80031CE4)
    /* 14B00 80013F00 00220821 */  addu       $at, $at, $v0
    /* 14B04 80013F04 AC201CE4 */  sw         $zero, %lo(D_80031CE4)($at)
    /* 14B08 80013F08 3C018003 */  lui        $at, %hi(D_80031D1C)
    /* 14B0C 80013F0C 00250821 */  addu       $at, $at, $a1
    /* 14B10 80013F10 A0231D1C */  sb         $v1, %lo(D_80031D1C)($at)
    /* 14B14 80013F14 3C018003 */  lui        $at, %hi(D_80031D28)
    /* 14B18 80013F18 00250821 */  addu       $at, $at, $a1
    /* 14B1C 80013F1C 44800000 */  mtc1       $zero, $f0
    /* 14B20 80013F20 A0201D28 */  sb         $zero, %lo(D_80031D28)($at)
    /* 14B24 80013F24 3C018003 */  lui        $at, %hi(D_80031D2C)
    /* 14B28 80013F28 00220821 */  addu       $at, $at, $v0
    /* 14B2C 80013F2C E4201D2C */  swc1       $f0, %lo(D_80031D2C)($at)
    /* 14B30 80013F30 3C018003 */  lui        $at, %hi(D_80031D34)
    /* 14B34 80013F34 00220821 */  addu       $at, $at, $v0
    /* 14B38 80013F38 E4201D34 */  swc1       $f0, %lo(D_80031D34)($at)
    /* 14B3C 80013F3C 3C018003 */  lui        $at, %hi(D_80031D3C)
    /* 14B40 80013F40 00220821 */  addu       $at, $at, $v0
    /* 14B44 80013F44 E4201D3C */  swc1       $f0, %lo(D_80031D3C)($at)
    /* 14B48 80013F48 3C018003 */  lui        $at, %hi(D_80031D44)
    /* 14B4C 80013F4C 00220821 */  addu       $at, $at, $v0
    /* 14B50 80013F50 E4201D44 */  swc1       $f0, %lo(D_80031D44)($at)
  .L80013F54_14B54:
    /* 14B54 80013F54 8FBF0014 */  lw         $ra, 0x14($sp)
  .L80013F58_14B58:
    /* 14B58 80013F58 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 14B5C 80013F5C 03E00008 */  jr         $ra
    /* 14B60 80013F60 00000000 */   nop
endlabel func_80013E64_14A64
