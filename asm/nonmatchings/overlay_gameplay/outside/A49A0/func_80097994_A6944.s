nonmatching func_80097994_A6944, 0x1E0

glabel func_80097994_A6944
    /* A6944 80097994 27BDFF98 */  addiu      $sp, $sp, -0x68
    /* A6948 80097998 AFB20020 */  sw         $s2, 0x20($sp)
    /* A694C 8009799C 3C128015 */  lui        $s2, %hi(D_80157600)
    /* A6950 800979A0 26527600 */  addiu      $s2, $s2, %lo(D_80157600)
    /* A6954 800979A4 AFBF0024 */  sw         $ra, 0x24($sp)
    /* A6958 800979A8 3C058014 */  lui        $a1, %hi(D_8013D1B0)
    /* A695C 800979AC AFB1001C */  sw         $s1, 0x1C($sp)
    /* A6960 800979B0 AFB00018 */  sw         $s0, 0x18($sp)
    /* A6964 800979B4 24A5D1B0 */  addiu      $a1, $a1, %lo(D_8013D1B0)
    /* A6968 800979B8 02402025 */  or         $a0, $s2, $zero
    /* A696C 800979BC 0C0031E4 */  jal        func_8000C790_D390
    /* A6970 800979C0 24060010 */   addiu     $a2, $zero, 0x10
    /* A6974 800979C4 3C014780 */  lui        $at, (0x47800000 >> 16)
    /* A6978 800979C8 44813000 */  mtc1       $at, $f6
    /* A697C 800979CC C644000C */  lwc1       $f4, 0xC($s2)
    /* A6980 800979D0 86580002 */  lh         $t8, 0x2($s2)
    /* A6984 800979D4 86480004 */  lh         $t0, 0x4($s2)
    /* A6988 800979D8 46062202 */  mul.s      $f8, $f4, $f6
    /* A698C 800979DC 864A0000 */  lh         $t2, 0x0($s2)
    /* A6990 800979E0 3C118006 */  lui        $s1, %hi(D_8005BB38)
    /* A6994 800979E4 2631BB38 */  addiu      $s1, $s1, %lo(D_8005BB38)
    /* A6998 800979E8 0018C8C0 */  sll        $t9, $t8, 3
    /* A699C 800979EC 000848C0 */  sll        $t1, $t0, 3
    /* A69A0 800979F0 000A58C0 */  sll        $t3, $t2, 3
    /* A69A4 800979F4 4600428D */  trunc.w.s  $f10, $f8
    /* A69A8 800979F8 AFA0005C */  sw         $zero, 0x5C($sp)
    /* A69AC 800979FC AFA00064 */  sw         $zero, 0x64($sp)
    /* A69B0 80097A00 A7B90054 */  sh         $t9, 0x54($sp)
    /* A69B4 80097A04 440F5000 */  mfc1       $t7, $f10
    /* A69B8 80097A08 A7A90056 */  sh         $t1, 0x56($sp)
    /* A69BC 80097A0C A7AB0058 */  sh         $t3, 0x58($sp)
    /* A69C0 80097A10 8E270000 */  lw         $a3, 0x0($s1)
    /* A69C4 80097A14 27A4005C */  addiu      $a0, $sp, 0x5C
    /* A69C8 80097A18 27A50054 */  addiu      $a1, $sp, 0x54
    /* A69CC 80097A1C 00003025 */  or         $a2, $zero, $zero
    /* A69D0 80097A20 0C003207 */  jal        func_8000C81C_D41C
    /* A69D4 80097A24 AFAF0060 */   sw        $t7, 0x60($sp)
    /* A69D8 80097A28 3C108006 */  lui        $s0, %hi(D_8005BB2C)
    /* A69DC 80097A2C 2610BB2C */  addiu      $s0, $s0, %lo(D_8005BB2C)
    /* A69E0 80097A30 8E030000 */  lw         $v1, 0x0($s0)
    /* A69E4 80097A34 3C0D0100 */  lui        $t5, (0x1000040 >> 16)
    /* A69E8 80097A38 35AD0040 */  ori        $t5, $t5, (0x1000040 & 0xFFFF)
    /* A69EC 80097A3C 246C0008 */  addiu      $t4, $v1, 0x8
    /* A69F0 80097A40 AE0C0000 */  sw         $t4, 0x0($s0)
    /* A69F4 80097A44 AC6D0000 */  sw         $t5, 0x0($v1)
    /* A69F8 80097A48 8E2E0000 */  lw         $t6, 0x0($s1)
    /* A69FC 80097A4C 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* A6A00 80097A50 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* A6A04 80097A54 01C17824 */  and        $t7, $t6, $at
    /* A6A08 80097A58 AC6F0004 */  sw         $t7, 0x4($v1)
    /* A6A0C 80097A5C 8E380000 */  lw         $t8, 0x0($s1)
    /* A6A10 80097A60 8E030000 */  lw         $v1, 0x0($s0)
    /* A6A14 80097A64 3C09BC00 */  lui        $t1, (0xBC001806 >> 16)
    /* A6A18 80097A68 27190040 */  addiu      $t9, $t8, 0x40
    /* A6A1C 80097A6C 24680008 */  addiu      $t0, $v1, 0x8
    /* A6A20 80097A70 AE390000 */  sw         $t9, 0x0($s1)
    /* A6A24 80097A74 AE080000 */  sw         $t0, 0x0($s0)
    /* A6A28 80097A78 35291806 */  ori        $t1, $t1, (0xBC001806 & 0xFFFF)
    /* A6A2C 80097A7C 3C040100 */  lui        $a0, %hi(D_1001B50)
    /* A6A30 80097A80 AC690000 */  sw         $t1, 0x0($v1)
    /* A6A34 80097A84 24841B50 */  addiu      $a0, $a0, %lo(D_1001B50)
    /* A6A38 80097A88 0C0047EB */  jal        func_80011FAC_12BAC
    /* A6A3C 80097A8C AFA30044 */   sw        $v1, 0x44($sp)
    /* A6A40 80097A90 8FA70044 */  lw         $a3, 0x44($sp)
    /* A6A44 80097A94 3C0BBC00 */  lui        $t3, (0xBC001C06 >> 16)
    /* A6A48 80097A98 356B1C06 */  ori        $t3, $t3, (0xBC001C06 & 0xFFFF)
    /* A6A4C 80097A9C ACE20004 */  sw         $v0, 0x4($a3)
    /* A6A50 80097AA0 8E030000 */  lw         $v1, 0x0($s0)
    /* A6A54 80097AA4 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* A6A58 80097AA8 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* A6A5C 80097AAC 246A0008 */  addiu      $t2, $v1, 0x8
    /* A6A60 80097AB0 AE0A0000 */  sw         $t2, 0x0($s0)
    /* A6A64 80097AB4 AC6B0000 */  sw         $t3, 0x0($v1)
    /* A6A68 80097AB8 8E2C0000 */  lw         $t4, 0x0($s1)
    /* A6A6C 80097ABC 02402025 */  or         $a0, $s2, $zero
    /* A6A70 80097AC0 24050010 */  addiu      $a1, $zero, 0x10
    /* A6A74 80097AC4 01816824 */  and        $t5, $t4, $at
    /* A6A78 80097AC8 0C00330F */  jal        func_8000CC3C_D83C
    /* A6A7C 80097ACC AC6D0004 */   sw        $t5, 0x4($v1)
    /* A6A80 80097AD0 8E270000 */  lw         $a3, 0x0($s1)
    /* A6A84 80097AD4 240E0100 */  addiu      $t6, $zero, 0x100
    /* A6A88 80097AD8 A7AE004E */  sh         $t6, 0x4E($sp)
    /* A6A8C 80097ADC 24EF0040 */  addiu      $t7, $a3, 0x40
    /* A6A90 80097AE0 A7AE004C */  sh         $t6, 0x4C($sp)
    /* A6A94 80097AE4 AE2F0000 */  sw         $t7, 0x0($s1)
    /* A6A98 80097AE8 A7AE0050 */  sh         $t6, 0x50($sp)
    /* A6A9C 80097AEC 00002025 */  or         $a0, $zero, $zero
    /* A6AA0 80097AF0 00002825 */  or         $a1, $zero, $zero
    /* A6AA4 80097AF4 0C000E74 */  jal        func_800039D0_45D0
    /* A6AA8 80097AF8 27A6004C */   addiu     $a2, $sp, 0x4C
    /* A6AAC 80097AFC 8E030000 */  lw         $v1, 0x0($s0)
    /* A6AB0 80097B00 3C080100 */  lui        $t0, %hi(D_10031E0)
    /* A6AB4 80097B04 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* A6AB8 80097B08 24780008 */  addiu      $t8, $v1, 0x8
    /* A6ABC 80097B0C AE180000 */  sw         $t8, 0x0($s0)
    /* A6AC0 80097B10 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* A6AC4 80097B14 250831E0 */  addiu      $t0, $t0, %lo(D_10031E0)
    /* A6AC8 80097B18 01014824 */  and        $t1, $t0, $at
    /* A6ACC 80097B1C 3C190600 */  lui        $t9, (0x6000000 >> 16)
    /* A6AD0 80097B20 AC790000 */  sw         $t9, 0x0($v1)
    /* A6AD4 80097B24 AC690004 */  sw         $t1, 0x4($v1)
    /* A6AD8 80097B28 8E030000 */  lw         $v1, 0x0($s0)
    /* A6ADC 80097B2C 3C0BE700 */  lui        $t3, (0xE7000000 >> 16)
    /* A6AE0 80097B30 3C0DBA00 */  lui        $t5, (0xBA000E02 >> 16)
    /* A6AE4 80097B34 246A0008 */  addiu      $t2, $v1, 0x8
    /* A6AE8 80097B38 AE0A0000 */  sw         $t2, 0x0($s0)
    /* A6AEC 80097B3C AC600004 */  sw         $zero, 0x4($v1)
    /* A6AF0 80097B40 AC6B0000 */  sw         $t3, 0x0($v1)
    /* A6AF4 80097B44 8E030000 */  lw         $v1, 0x0($s0)
    /* A6AF8 80097B48 35AD0E02 */  ori        $t5, $t5, (0xBA000E02 & 0xFFFF)
    /* A6AFC 80097B4C 246C0008 */  addiu      $t4, $v1, 0x8
    /* A6B00 80097B50 AE0C0000 */  sw         $t4, 0x0($s0)
    /* A6B04 80097B54 AC600004 */  sw         $zero, 0x4($v1)
    /* A6B08 80097B58 AC6D0000 */  sw         $t5, 0x0($v1)
    /* A6B0C 80097B5C 8FBF0024 */  lw         $ra, 0x24($sp)
    /* A6B10 80097B60 8FB20020 */  lw         $s2, 0x20($sp)
    /* A6B14 80097B64 8FB1001C */  lw         $s1, 0x1C($sp)
    /* A6B18 80097B68 8FB00018 */  lw         $s0, 0x18($sp)
    /* A6B1C 80097B6C 03E00008 */  jr         $ra
    /* A6B20 80097B70 27BD0068 */   addiu     $sp, $sp, 0x68
endlabel func_80097994_A6944
