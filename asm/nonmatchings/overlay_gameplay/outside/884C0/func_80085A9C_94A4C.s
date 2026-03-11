nonmatching func_80085A9C_94A4C, 0x78

glabel func_80085A9C_94A4C
    /* 94A4C 80085A9C 00047400 */  sll        $t6, $a0, 16
    /* 94A50 80085AA0 000E7C03 */  sra        $t7, $t6, 16
    /* 94A54 80085AA4 87AA0012 */  lh         $t2, 0x12($sp)
    /* 94A58 80085AA8 00AF1023 */  subu       $v0, $a1, $t7
    /* 94A5C 80085AAC 00024400 */  sll        $t0, $v0, 16
    /* 94A60 80085AB0 00081403 */  sra        $v0, $t0, 16
    /* 94A64 80085AB4 AFA40000 */  sw         $a0, 0x0($sp)
    /* 94A68 80085AB8 0142082A */  slt        $at, $t2, $v0
    /* 94A6C 80085ABC 01E02025 */  or         $a0, $t7, $zero
    /* 94A70 80085AC0 10200008 */  beqz       $at, .L80085AE4_94A94
    /* 94A74 80085AC4 AFA50004 */   sw        $a1, 0x4($sp)
    /* 94A78 80085AC8 01E6082A */  slt        $at, $t7, $a2
    /* 94A7C 80085ACC 50200006 */  beql       $at, $zero, .L80085AE8_94A98
    /* 94A80 80085AD0 87AD0012 */   lh        $t5, 0x12($sp)
    /* 94A84 80085AD4 01EA2021 */  addu       $a0, $t7, $t2
    /* 94A88 80085AD8 00045C00 */  sll        $t3, $a0, 16
    /* 94A8C 80085ADC 03E00008 */  jr         $ra
    /* 94A90 80085AE0 000B1403 */   sra       $v0, $t3, 16
  .L80085AE4_94A94:
    /* 94A94 80085AE4 87AD0012 */  lh         $t5, 0x12($sp)
  .L80085AE8_94A98:
    /* 94A98 80085AE8 000D7023 */  negu       $t6, $t5
    /* 94A9C 80085AEC 004E082A */  slt        $at, $v0, $t6
    /* 94AA0 80085AF0 10200006 */  beqz       $at, .L80085B0C_94ABC
    /* 94AA4 80085AF4 00E4082A */   slt       $at, $a3, $a0
    /* 94AA8 80085AF8 10200004 */  beqz       $at, .L80085B0C_94ABC
    /* 94AAC 80085AFC 00000000 */   nop
    /* 94AB0 80085B00 008D2023 */  subu       $a0, $a0, $t5
    /* 94AB4 80085B04 00047C00 */  sll        $t7, $a0, 16
    /* 94AB8 80085B08 000F2403 */  sra        $a0, $t7, 16
  .L80085B0C_94ABC:
    /* 94ABC 80085B0C 03E00008 */  jr         $ra
    /* 94AC0 80085B10 00801025 */   or        $v0, $a0, $zero
endlabel func_80085A9C_94A4C
