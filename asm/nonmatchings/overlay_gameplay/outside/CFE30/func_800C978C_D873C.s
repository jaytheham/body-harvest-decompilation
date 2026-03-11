nonmatching func_800C978C_D873C, 0xA24

glabel func_800C978C_D873C
    /* D873C 800C978C 27BDFEF0 */  addiu      $sp, $sp, -0x110
    /* D8740 800C9790 AFB20030 */  sw         $s2, 0x30($sp)
    /* D8744 800C9794 3C128006 */  lui        $s2, %hi(D_8005BB2C)
    /* D8748 800C9798 2652BB2C */  addiu      $s2, $s2, %lo(D_8005BB2C)
    /* D874C 800C979C 8E420000 */  lw         $v0, 0x0($s2)
    /* D8750 800C97A0 AFBF004C */  sw         $ra, 0x4C($sp)
    /* D8754 800C97A4 3C1F8015 */  lui        $ra, %hi(D_80154222)
    /* D8758 800C97A8 AFB00028 */  sw         $s0, 0x28($sp)
    /* D875C 800C97AC 87FF4222 */  lh         $ra, %lo(D_80154222)($ra)
    /* D8760 800C97B0 244E0008 */  addiu      $t6, $v0, 0x8
    /* D8764 800C97B4 AFBE0048 */  sw         $fp, 0x48($sp)
    /* D8768 800C97B8 AFB70044 */  sw         $s7, 0x44($sp)
    /* D876C 800C97BC AFB60040 */  sw         $s6, 0x40($sp)
    /* D8770 800C97C0 AFB5003C */  sw         $s5, 0x3C($sp)
    /* D8774 800C97C4 AFB40038 */  sw         $s4, 0x38($sp)
    /* D8778 800C97C8 AFB30034 */  sw         $s3, 0x34($sp)
    /* D877C 800C97CC AFB1002C */  sw         $s1, 0x2C($sp)
    /* D8780 800C97D0 F7B40020 */  sdc1       $f20, 0x20($sp)
    /* D8784 800C97D4 AE4E0000 */  sw         $t6, 0x0($s2)
    /* D8788 800C97D8 3C10E700 */  lui        $s0, (0xE7000000 >> 16)
    /* D878C 800C97DC AC500000 */  sw         $s0, 0x0($v0)
    /* D8790 800C97E0 AC400004 */  sw         $zero, 0x4($v0)
    /* D8794 800C97E4 8E420000 */  lw         $v0, 0x0($s2)
    /* D8798 800C97E8 3C18B600 */  lui        $t8, (0xB6000000 >> 16)
    /* D879C 800C97EC 2419FFFF */  addiu      $t9, $zero, -0x1
    /* D87A0 800C97F0 244F0008 */  addiu      $t7, $v0, 0x8
    /* D87A4 800C97F4 AE4F0000 */  sw         $t7, 0x0($s2)
    /* D87A8 800C97F8 AC590004 */  sw         $t9, 0x4($v0)
    /* D87AC 800C97FC AC580000 */  sw         $t8, 0x0($v0)
    /* D87B0 800C9800 8E420000 */  lw         $v0, 0x0($s2)
    /* D87B4 800C9804 24180004 */  addiu      $t8, $zero, 0x4
    /* D87B8 800C9808 3C0FB700 */  lui        $t7, (0xB7000000 >> 16)
    /* D87BC 800C980C 244E0008 */  addiu      $t6, $v0, 0x8
    /* D87C0 800C9810 AE4E0000 */  sw         $t6, 0x0($s2)
    /* D87C4 800C9814 AC580004 */  sw         $t8, 0x4($v0)
    /* D87C8 800C9818 AC4F0000 */  sw         $t7, 0x0($v0)
    /* D87CC 800C981C 8E420000 */  lw         $v0, 0x0($s2)
    /* D87D0 800C9820 3C0EBA00 */  lui        $t6, (0xBA001402 >> 16)
    /* D87D4 800C9824 35CE1402 */  ori        $t6, $t6, (0xBA001402 & 0xFFFF)
    /* D87D8 800C9828 24590008 */  addiu      $t9, $v0, 0x8
    /* D87DC 800C982C AE590000 */  sw         $t9, 0x0($s2)
    /* D87E0 800C9830 AC400004 */  sw         $zero, 0x4($v0)
    /* D87E4 800C9834 AC4E0000 */  sw         $t6, 0x0($v0)
    /* D87E8 800C9838 8E420000 */  lw         $v0, 0x0($s2)
    /* D87EC 800C983C 3C198000 */  lui        $t9, (0x80008000 >> 16)
    /* D87F0 800C9840 3C18BB00 */  lui        $t8, (0xBB000001 >> 16)
    /* D87F4 800C9844 244F0008 */  addiu      $t7, $v0, 0x8
    /* D87F8 800C9848 AE4F0000 */  sw         $t7, 0x0($s2)
    /* D87FC 800C984C 37180001 */  ori        $t8, $t8, (0xBB000001 & 0xFFFF)
    /* D8800 800C9850 37398000 */  ori        $t9, $t9, (0x80008000 & 0xFFFF)
    /* D8804 800C9854 AC590004 */  sw         $t9, 0x4($v0)
    /* D8808 800C9858 AC580000 */  sw         $t8, 0x0($v0)
    /* D880C 800C985C 8E420000 */  lw         $v0, 0x0($s2)
    /* D8810 800C9860 3C0FBA00 */  lui        $t7, (0xBA000C02 >> 16)
    /* D8814 800C9864 35EF0C02 */  ori        $t7, $t7, (0xBA000C02 & 0xFFFF)
    /* D8818 800C9868 244E0008 */  addiu      $t6, $v0, 0x8
    /* D881C 800C986C AE4E0000 */  sw         $t6, 0x0($s2)
    /* D8820 800C9870 24182000 */  addiu      $t8, $zero, 0x2000
    /* D8824 800C9874 AC580004 */  sw         $t8, 0x4($v0)
    /* D8828 800C9878 AC4F0000 */  sw         $t7, 0x0($v0)
    /* D882C 800C987C 8E420000 */  lw         $v0, 0x0($s2)
    /* D8830 800C9880 3C0EBA00 */  lui        $t6, (0xBA000602 >> 16)
    /* D8834 800C9884 35CE0602 */  ori        $t6, $t6, (0xBA000602 & 0xFFFF)
    /* D8838 800C9888 24590008 */  addiu      $t9, $v0, 0x8
    /* D883C 800C988C AE590000 */  sw         $t9, 0x0($s2)
    /* D8840 800C9890 AC400004 */  sw         $zero, 0x4($v0)
    /* D8844 800C9894 AC4E0000 */  sw         $t6, 0x0($v0)
    /* D8848 800C9898 8E420000 */  lw         $v0, 0x0($s2)
    /* D884C 800C989C 3C18BA00 */  lui        $t8, (0xBA001301 >> 16)
    /* D8850 800C98A0 37181301 */  ori        $t8, $t8, (0xBA001301 & 0xFFFF)
    /* D8854 800C98A4 244F0008 */  addiu      $t7, $v0, 0x8
    /* D8858 800C98A8 AE4F0000 */  sw         $t7, 0x0($s2)
    /* D885C 800C98AC 3C190008 */  lui        $t9, (0x80000 >> 16)
    /* D8860 800C98B0 AC590004 */  sw         $t9, 0x4($v0)
    /* D8864 800C98B4 AC580000 */  sw         $t8, 0x0($v0)
    /* D8868 800C98B8 8E420000 */  lw         $v0, 0x0($s2)
    /* D886C 800C98BC 3C0FBA00 */  lui        $t7, (0xBA000E02 >> 16)
    /* D8870 800C98C0 35EF0E02 */  ori        $t7, $t7, (0xBA000E02 & 0xFFFF)
    /* D8874 800C98C4 244E0008 */  addiu      $t6, $v0, 0x8
    /* D8878 800C98C8 AE4E0000 */  sw         $t6, 0x0($s2)
    /* D887C 800C98CC AC400004 */  sw         $zero, 0x4($v0)
    /* D8880 800C98D0 AC4F0000 */  sw         $t7, 0x0($v0)
    /* D8884 800C98D4 8E420000 */  lw         $v0, 0x0($s2)
    /* D8888 800C98D8 3C0EFF32 */  lui        $t6, (0xFF327F3F >> 16)
    /* D888C 800C98DC 3C19FCFF */  lui        $t9, (0xFCFF99FF >> 16)
    /* D8890 800C98E0 24580008 */  addiu      $t8, $v0, 0x8
    /* D8894 800C98E4 AE580000 */  sw         $t8, 0x0($s2)
    /* D8898 800C98E8 373999FF */  ori        $t9, $t9, (0xFCFF99FF & 0xFFFF)
    /* D889C 800C98EC 35CE7F3F */  ori        $t6, $t6, (0xFF327F3F & 0xFFFF)
    /* D88A0 800C98F0 AC4E0004 */  sw         $t6, 0x4($v0)
    /* D88A4 800C98F4 AC590000 */  sw         $t9, 0x0($v0)
    /* D88A8 800C98F8 8E420000 */  lw         $v0, 0x0($s2)
    /* D88AC 800C98FC 3C190101 */  lui        $t9, %hi(D_100E080)
    /* D88B0 800C9900 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* D88B4 800C9904 244F0008 */  addiu      $t7, $v0, 0x8
    /* D88B8 800C9908 AE4F0000 */  sw         $t7, 0x0($s2)
    /* D88BC 800C990C 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* D88C0 800C9910 2739E080 */  addiu      $t9, $t9, %lo(D_100E080)
    /* D88C4 800C9914 03217024 */  and        $t6, $t9, $at
    /* D88C8 800C9918 3C18FD90 */  lui        $t8, (0xFD900000 >> 16)
    /* D88CC 800C991C AC580000 */  sw         $t8, 0x0($v0)
    /* D88D0 800C9920 AC4E0004 */  sw         $t6, 0x4($v0)
    /* D88D4 800C9924 8E420000 */  lw         $v0, 0x0($s2)
    /* D88D8 800C9928 3C190708 */  lui        $t9, (0x7080200 >> 16)
    /* D88DC 800C992C 37390200 */  ori        $t9, $t9, (0x7080200 & 0xFFFF)
    /* D88E0 800C9930 244F0008 */  addiu      $t7, $v0, 0x8
    /* D88E4 800C9934 AE4F0000 */  sw         $t7, 0x0($s2)
    /* D88E8 800C9938 3C18F590 */  lui        $t8, (0xF5900000 >> 16)
    /* D88EC 800C993C AC580000 */  sw         $t8, 0x0($v0)
    /* D88F0 800C9940 AC590004 */  sw         $t9, 0x4($v0)
    /* D88F4 800C9944 8E420000 */  lw         $v0, 0x0($s2)
    /* D88F8 800C9948 3C0FE600 */  lui        $t7, (0xE6000000 >> 16)
    /* D88FC 800C994C 3C19F300 */  lui        $t9, (0xF3000000 >> 16)
    /* D8900 800C9950 244E0008 */  addiu      $t6, $v0, 0x8
    /* D8904 800C9954 AE4E0000 */  sw         $t6, 0x0($s2)
    /* D8908 800C9958 AC400004 */  sw         $zero, 0x4($v0)
    /* D890C 800C995C AC4F0000 */  sw         $t7, 0x0($v0)
    /* D8910 800C9960 8E420000 */  lw         $v0, 0x0($s2)
    /* D8914 800C9964 3C0E070F */  lui        $t6, (0x70FF400 >> 16)
    /* D8918 800C9968 35CEF400 */  ori        $t6, $t6, (0x70FF400 & 0xFFFF)
    /* D891C 800C996C 24580008 */  addiu      $t8, $v0, 0x8
    /* D8920 800C9970 AE580000 */  sw         $t8, 0x0($s2)
    /* D8924 800C9974 AC4E0004 */  sw         $t6, 0x4($v0)
    /* D8928 800C9978 AC590000 */  sw         $t9, 0x0($v0)
    /* D892C 800C997C 8E420000 */  lw         $v0, 0x0($s2)
    /* D8930 800C9980 3C19F580 */  lui        $t9, (0xF5800400 >> 16)
    /* D8934 800C9984 3C0E0008 */  lui        $t6, (0x80200 >> 16)
    /* D8938 800C9988 244F0008 */  addiu      $t7, $v0, 0x8
    /* D893C 800C998C AE4F0000 */  sw         $t7, 0x0($s2)
    /* D8940 800C9990 AC400004 */  sw         $zero, 0x4($v0)
    /* D8944 800C9994 AC500000 */  sw         $s0, 0x0($v0)
    /* D8948 800C9998 8E420000 */  lw         $v0, 0x0($s2)
    /* D894C 800C999C 35CE0200 */  ori        $t6, $t6, (0x80200 & 0xFFFF)
    /* D8950 800C99A0 37390400 */  ori        $t9, $t9, (0xF5800400 & 0xFFFF)
    /* D8954 800C99A4 24580008 */  addiu      $t8, $v0, 0x8
    /* D8958 800C99A8 AE580000 */  sw         $t8, 0x0($s2)
    /* D895C 800C99AC AC4E0004 */  sw         $t6, 0x4($v0)
    /* D8960 800C99B0 AC590000 */  sw         $t9, 0x0($v0)
    /* D8964 800C99B4 8E420000 */  lw         $v0, 0x0($s2)
    /* D8968 800C99B8 3C190007 */  lui        $t9, (0x7C07C >> 16)
    /* D896C 800C99BC 3739C07C */  ori        $t9, $t9, (0x7C07C & 0xFFFF)
    /* D8970 800C99C0 244F0008 */  addiu      $t7, $v0, 0x8
    /* D8974 800C99C4 AE4F0000 */  sw         $t7, 0x0($s2)
    /* D8978 800C99C8 3C18F200 */  lui        $t8, (0xF2000000 >> 16)
    /* D897C 800C99CC AC580000 */  sw         $t8, 0x0($v0)
    /* D8980 800C99D0 AC590004 */  sw         $t9, 0x4($v0)
    /* D8984 800C99D4 8E420000 */  lw         $v0, 0x0($s2)
    /* D8988 800C99D8 3C0F8015 */  lui        $t7, %hi(D_80156ED9)
    /* D898C 800C99DC 24010002 */  addiu      $at, $zero, 0x2
    /* D8990 800C99E0 244E0008 */  addiu      $t6, $v0, 0x8
    /* D8994 800C99E4 AE4E0000 */  sw         $t6, 0x0($s2)
    /* D8998 800C99E8 AC400004 */  sw         $zero, 0x4($v0)
    /* D899C 800C99EC AC500000 */  sw         $s0, 0x0($v0)
    /* D89A0 800C99F0 91EF6ED9 */  lbu        $t7, %lo(D_80156ED9)($t7)
    /* D89A4 800C99F4 00001825 */  or         $v1, $zero, $zero
    /* D89A8 800C99F8 11E101C6 */  beq        $t7, $at, .L800CA114_D90C4
    /* D89AC 800C99FC 2401FFFA */   addiu     $at, $zero, -0x6
    /* D89B0 800C9A00 13E101C4 */  beq        $ra, $at, .L800CA114_D90C4
    /* D89B4 800C9A04 2401FFFB */   addiu     $at, $zero, -0x5
    /* D89B8 800C9A08 13E101C2 */  beq        $ra, $at, .L800CA114_D90C4
    /* D89BC 800C9A0C 3C108006 */   lui       $s0, %hi(D_8005BB34)
    /* D89C0 800C9A10 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* D89C4 800C9A14 4481A000 */  mtc1       $at, $f20
    /* D89C8 800C9A18 A7BF010E */  sh         $ra, 0x10E($sp)
    /* D89CC 800C9A1C 2610BB34 */  addiu      $s0, $s0, %lo(D_8005BB34)
    /* D89D0 800C9A20 24050001 */  addiu      $a1, $zero, 0x1
  .L800C9A24_D89D4:
    /* D89D4 800C9A24 3C028015 */  lui        $v0, %hi(D_80156ED9)
    /* D89D8 800C9A28 90426ED9 */  lbu        $v0, %lo(D_80156ED9)($v0)
    /* D89DC 800C9A2C 14A20003 */  bne        $a1, $v0, .L800C9A3C_D89EC
    /* D89E0 800C9A30 00000000 */   nop
    /* D89E4 800C9A34 10600003 */  beqz       $v1, .L800C9A44_D89F4
    /* D89E8 800C9A38 AFA30054 */   sw        $v1, 0x54($sp)
  .L800C9A3C_D89EC:
    /* D89EC 800C9A3C 144001A3 */  bnez       $v0, .L800CA0CC_D907C
    /* D89F0 800C9A40 AFA30054 */   sw        $v1, 0x54($sp)
  .L800C9A44_D89F4:
    /* D89F4 800C9A44 87B8010E */  lh         $t8, 0x10E($sp)
    /* D89F8 800C9A48 3C0E8015 */  lui        $t6, %hi(D_80154318)
    /* D89FC 800C9A4C 25CE4318 */  addiu      $t6, $t6, %lo(D_80154318)
    /* D8A00 800C9A50 0018C8C0 */  sll        $t9, $t8, 3
    /* D8A04 800C9A54 0338C823 */  subu       $t9, $t9, $t8
    /* D8A08 800C9A58 0019C880 */  sll        $t9, $t9, 2
    /* D8A0C 800C9A5C 032E9821 */  addu       $s3, $t9, $t6
    /* D8A10 800C9A60 26710008 */  addiu      $s1, $s3, 0x8
    /* D8A14 800C9A64 86240000 */  lh         $a0, 0x0($s1)
    /* D8A18 800C9A68 0C01C0EC */  jal        func_800703B0_7F360
    /* D8A1C 800C9A6C 86250004 */   lh        $a1, 0x4($s1)
    /* D8A20 800C9A70 10400196 */  beqz       $v0, .L800CA0CC_D907C
    /* D8A24 800C9A74 3C018004 */   lui       $at, %hi(D_80047954)
    /* D8A28 800C9A78 C4247954 */  lwc1       $f4, %lo(D_80047954)($at)
    /* D8A2C 800C9A7C 3C018004 */  lui        $at, %hi(D_8004795C)
    /* D8A30 800C9A80 C42A795C */  lwc1       $f10, %lo(D_8004795C)($at)
    /* D8A34 800C9A84 46142182 */  mul.s      $f6, $f4, $f20
    /* D8A38 800C9A88 24194000 */  addiu      $t9, $zero, 0x4000
    /* D8A3C 800C9A8C 86240000 */  lh         $a0, 0x0($s1)
    /* D8A40 800C9A90 46145402 */  mul.s      $f16, $f10, $f20
    /* D8A44 800C9A94 86250004 */  lh         $a1, 0x4($s1)
    /* D8A48 800C9A98 96660002 */  lhu        $a2, 0x2($s3)
    /* D8A4C 800C9A9C 4600320D */  trunc.w.s  $f8, $f6
    /* D8A50 800C9AA0 4600848D */  trunc.w.s  $f18, $f16
    /* D8A54 800C9AA4 44074000 */  mfc1       $a3, $f8
    /* D8A58 800C9AA8 00000000 */  nop
    /* D8A5C 800C9AAC 0007C400 */  sll        $t8, $a3, 16
    /* D8A60 800C9AB0 00183C03 */  sra        $a3, $t8, 16
    /* D8A64 800C9AB4 3C188004 */  lui        $t8, %hi(D_80047950)
    /* D8A68 800C9AB8 87187950 */  lh         $t8, %lo(D_80047950)($t8)
    /* D8A6C 800C9ABC 440F9000 */  mfc1       $t7, $f18
    /* D8A70 800C9AC0 03387023 */  subu       $t6, $t9, $t8
    /* D8A74 800C9AC4 AFAE0014 */  sw         $t6, 0x14($sp)
    /* D8A78 800C9AC8 0C02E4EB */  jal        func_800B93AC_C835C
    /* D8A7C 800C9ACC AFAF0010 */   sw        $t7, 0x10($sp)
    /* D8A80 800C9AD0 5040017F */  beql       $v0, $zero, .L800CA0D0_D9080
    /* D8A84 800C9AD4 87AE010E */   lh        $t6, 0x10E($sp)
    /* D8A88 800C9AD8 922F000C */  lbu        $t7, 0xC($s1)
    /* D8A8C 800C9ADC 24010001 */  addiu      $at, $zero, 0x1
    /* D8A90 800C9AE0 55E1001E */  bnel       $t7, $at, .L800C9B5C_D8B0C
    /* D8A94 800C9AE4 8E420000 */   lw        $v0, 0x0($s2)
    /* D8A98 800C9AE8 8E420000 */  lw         $v0, 0x0($s2)
    /* D8A9C 800C9AEC 3C07E700 */  lui        $a3, (0xE7000000 >> 16)
    /* D8AA0 800C9AF0 3C0EB700 */  lui        $t6, (0xB7000000 >> 16)
    /* D8AA4 800C9AF4 24590008 */  addiu      $t9, $v0, 0x8
    /* D8AA8 800C9AF8 AE590000 */  sw         $t9, 0x0($s2)
    /* D8AAC 800C9AFC AC400004 */  sw         $zero, 0x4($v0)
    /* D8AB0 800C9B00 AC470000 */  sw         $a3, 0x0($v0)
    /* D8AB4 800C9B04 8E420000 */  lw         $v0, 0x0($s2)
    /* D8AB8 800C9B08 240F0001 */  addiu      $t7, $zero, 0x1
    /* D8ABC 800C9B0C 24580008 */  addiu      $t8, $v0, 0x8
    /* D8AC0 800C9B10 AE580000 */  sw         $t8, 0x0($s2)
    /* D8AC4 800C9B14 AC4F0004 */  sw         $t7, 0x4($v0)
    /* D8AC8 800C9B18 AC4E0000 */  sw         $t6, 0x0($v0)
    /* D8ACC 800C9B1C 8E420000 */  lw         $v0, 0x0($s2)
    /* D8AD0 800C9B20 3C0E0050 */  lui        $t6, (0x504A50 >> 16)
    /* D8AD4 800C9B24 3C18B900 */  lui        $t8, (0xB900031D >> 16)
    /* D8AD8 800C9B28 24590008 */  addiu      $t9, $v0, 0x8
    /* D8ADC 800C9B2C AE590000 */  sw         $t9, 0x0($s2)
    /* D8AE0 800C9B30 3718031D */  ori        $t8, $t8, (0xB900031D & 0xFFFF)
    /* D8AE4 800C9B34 35CE4A50 */  ori        $t6, $t6, (0x504A50 & 0xFFFF)
    /* D8AE8 800C9B38 AC4E0004 */  sw         $t6, 0x4($v0)
    /* D8AEC 800C9B3C AC580000 */  sw         $t8, 0x0($v0)
    /* D8AF0 800C9B40 8E420000 */  lw         $v0, 0x0($s2)
    /* D8AF4 800C9B44 244F0008 */  addiu      $t7, $v0, 0x8
    /* D8AF8 800C9B48 AE4F0000 */  sw         $t7, 0x0($s2)
    /* D8AFC 800C9B4C AC400004 */  sw         $zero, 0x4($v0)
    /* D8B00 800C9B50 1000001C */  b          .L800C9BC4_D8B74
    /* D8B04 800C9B54 AC470000 */   sw        $a3, 0x0($v0)
    /* D8B08 800C9B58 8E420000 */  lw         $v0, 0x0($s2)
  .L800C9B5C_D8B0C:
    /* D8B0C 800C9B5C 3C07E700 */  lui        $a3, (0xE7000000 >> 16)
    /* D8B10 800C9B60 3C0EB600 */  lui        $t6, (0xB6000000 >> 16)
    /* D8B14 800C9B64 24590008 */  addiu      $t9, $v0, 0x8
    /* D8B18 800C9B68 AE590000 */  sw         $t9, 0x0($s2)
    /* D8B1C 800C9B6C AC400004 */  sw         $zero, 0x4($v0)
    /* D8B20 800C9B70 AC470000 */  sw         $a3, 0x0($v0)
    /* D8B24 800C9B74 8E420000 */  lw         $v0, 0x0($s2)
    /* D8B28 800C9B78 240F0001 */  addiu      $t7, $zero, 0x1
    /* D8B2C 800C9B7C 24580008 */  addiu      $t8, $v0, 0x8
    /* D8B30 800C9B80 AE580000 */  sw         $t8, 0x0($s2)
    /* D8B34 800C9B84 AC4F0004 */  sw         $t7, 0x4($v0)
    /* D8B38 800C9B88 AC4E0000 */  sw         $t6, 0x0($v0)
    /* D8B3C 800C9B8C 8E420000 */  lw         $v0, 0x0($s2)
    /* D8B40 800C9B90 3C0E0050 */  lui        $t6, (0x504240 >> 16)
    /* D8B44 800C9B94 3C18B900 */  lui        $t8, (0xB900031D >> 16)
    /* D8B48 800C9B98 24590008 */  addiu      $t9, $v0, 0x8
    /* D8B4C 800C9B9C AE590000 */  sw         $t9, 0x0($s2)
    /* D8B50 800C9BA0 3718031D */  ori        $t8, $t8, (0xB900031D & 0xFFFF)
    /* D8B54 800C9BA4 35CE4240 */  ori        $t6, $t6, (0x504240 & 0xFFFF)
    /* D8B58 800C9BA8 AC4E0004 */  sw         $t6, 0x4($v0)
    /* D8B5C 800C9BAC AC580000 */  sw         $t8, 0x0($v0)
    /* D8B60 800C9BB0 8E420000 */  lw         $v0, 0x0($s2)
    /* D8B64 800C9BB4 244F0008 */  addiu      $t7, $v0, 0x8
    /* D8B68 800C9BB8 AE4F0000 */  sw         $t7, 0x0($s2)
    /* D8B6C 800C9BBC AC400004 */  sw         $zero, 0x4($v0)
    /* D8B70 800C9BC0 AC470000 */  sw         $a3, 0x0($v0)
  .L800C9BC4_D8B74:
    /* D8B74 800C9BC4 86620002 */  lh         $v0, 0x2($s3)
    /* D8B78 800C9BC8 86230000 */  lh         $v1, 0x0($s1)
    /* D8B7C 800C9BCC 86240004 */  lh         $a0, 0x4($s1)
    /* D8B80 800C9BD0 24010001 */  addiu      $at, $zero, 0x1
    /* D8B84 800C9BD4 00432821 */  addu       $a1, $v0, $v1
    /* D8B88 800C9BD8 0005AC00 */  sll        $s5, $a1, 16
    /* D8B8C 800C9BDC 00824023 */  subu       $t0, $a0, $v0
    /* D8B90 800C9BE0 0015CC03 */  sra        $t9, $s5, 16
    /* D8B94 800C9BE4 00623823 */  subu       $a3, $v1, $v0
    /* D8B98 800C9BE8 0320A825 */  or         $s5, $t9, $zero
    /* D8B9C 800C9BEC A7A700F0 */  sh         $a3, 0xF0($sp)
    /* D8BA0 800C9BF0 A7A800F4 */  sh         $t0, 0xF4($sp)
    /* D8BA4 800C9BF4 A7A500E8 */  sh         $a1, 0xE8($sp)
    /* D8BA8 800C9BF8 A7A800EC */  sh         $t0, 0xEC($sp)
    /* D8BAC 800C9BFC 00443021 */  addu       $a2, $v0, $a0
    /* D8BB0 800C9C00 9239000C */  lbu        $t9, 0xC($s1)
    /* D8BB4 800C9C04 0006B400 */  sll        $s6, $a2, 16
    /* D8BB8 800C9C08 0007BC00 */  sll        $s7, $a3, 16
    /* D8BBC 800C9C0C 0006F400 */  sll        $fp, $a2, 16
    /* D8BC0 800C9C10 0016C403 */  sra        $t8, $s6, 16
    /* D8BC4 800C9C14 00177403 */  sra        $t6, $s7, 16
    /* D8BC8 800C9C18 001E7C03 */  sra        $t7, $fp, 16
    /* D8BCC 800C9C1C 0300B025 */  or         $s6, $t8, $zero
    /* D8BD0 800C9C20 01C0B825 */  or         $s7, $t6, $zero
    /* D8BD4 800C9C24 1721000E */  bne        $t9, $at, .L800C9C60_D8C10
    /* D8BD8 800C9C28 01E0F025 */   or        $fp, $t7, $zero
    /* D8BDC 800C9C2C 3C028022 */  lui        $v0, %hi(D_80222A70)
    /* D8BE0 800C9C30 8C422A70 */  lw         $v0, %lo(D_80222A70)($v0)
    /* D8BE4 800C9C34 00029C00 */  sll        $s3, $v0, 16
    /* D8BE8 800C9C38 0002A400 */  sll        $s4, $v0, 16
    /* D8BEC 800C9C3C 00022C00 */  sll        $a1, $v0, 16
    /* D8BF0 800C9C40 0013C403 */  sra        $t8, $s3, 16
    /* D8BF4 800C9C44 00147403 */  sra        $t6, $s4, 16
    /* D8BF8 800C9C48 00057C03 */  sra        $t7, $a1, 16
    /* D8BFC 800C9C4C 03009825 */  or         $s3, $t8, $zero
    /* D8C00 800C9C50 01C0A025 */  or         $s4, $t6, $zero
    /* D8C04 800C9C54 01E02825 */  or         $a1, $t7, $zero
    /* D8C08 800C9C58 10000024 */  b          .L800C9CEC_D8C9C
    /* D8C0C 800C9C5C A7A20102 */   sh        $v0, 0x102($sp)
  .L800C9C60_D8C10:
    /* D8C10 800C9C60 00152400 */  sll        $a0, $s5, 16
    /* D8C14 800C9C64 00162C00 */  sll        $a1, $s6, 16
    /* D8C18 800C9C68 0005C403 */  sra        $t8, $a1, 16
    /* D8C1C 800C9C6C 0004CC03 */  sra        $t9, $a0, 16
    /* D8C20 800C9C70 03202025 */  or         $a0, $t9, $zero
    /* D8C24 800C9C74 0C02E134 */  jal        func_800B84D0_C7480
    /* D8C28 800C9C78 03002825 */   or        $a1, $t8, $zero
    /* D8C2C 800C9C7C 00027203 */  sra        $t6, $v0, 8
    /* D8C30 800C9C80 00172400 */  sll        $a0, $s7, 16
    /* D8C34 800C9C84 001E2C00 */  sll        $a1, $fp, 16
    /* D8C38 800C9C88 25CF0001 */  addiu      $t7, $t6, 0x1
    /* D8C3C 800C9C8C 0005C403 */  sra        $t8, $a1, 16
    /* D8C40 800C9C90 0004CC03 */  sra        $t9, $a0, 16
    /* D8C44 800C9C94 A7AF0102 */  sh         $t7, 0x102($sp)
    /* D8C48 800C9C98 03202025 */  or         $a0, $t9, $zero
    /* D8C4C 800C9C9C 0C02E134 */  jal        func_800B84D0_C7480
    /* D8C50 800C9CA0 03002825 */   or        $a1, $t8, $zero
    /* D8C54 800C9CA4 00029A03 */  sra        $s3, $v0, 8
    /* D8C58 800C9CA8 26730001 */  addiu      $s3, $s3, 0x1
    /* D8C5C 800C9CAC 00137400 */  sll        $t6, $s3, 16
    /* D8C60 800C9CB0 000E9C03 */  sra        $s3, $t6, 16
    /* D8C64 800C9CB4 87A400F0 */  lh         $a0, 0xF0($sp)
    /* D8C68 800C9CB8 0C02E134 */  jal        func_800B84D0_C7480
    /* D8C6C 800C9CBC 87A500F4 */   lh        $a1, 0xF4($sp)
    /* D8C70 800C9CC0 0002A203 */  sra        $s4, $v0, 8
    /* D8C74 800C9CC4 26940001 */  addiu      $s4, $s4, 0x1
    /* D8C78 800C9CC8 0014CC00 */  sll        $t9, $s4, 16
    /* D8C7C 800C9CCC 0019A403 */  sra        $s4, $t9, 16
    /* D8C80 800C9CD0 87A400E8 */  lh         $a0, 0xE8($sp)
    /* D8C84 800C9CD4 0C02E134 */  jal        func_800B84D0_C7480
    /* D8C88 800C9CD8 87A500EC */   lh        $a1, 0xEC($sp)
    /* D8C8C 800C9CDC 00022A03 */  sra        $a1, $v0, 8
    /* D8C90 800C9CE0 24A50001 */  addiu      $a1, $a1, 0x1
    /* D8C94 800C9CE4 00057400 */  sll        $t6, $a1, 16
    /* D8C98 800C9CE8 000E2C03 */  sra        $a1, $t6, 16
  .L800C9CEC_D8C9C:
    /* D8C9C 800C9CEC 44952000 */  mtc1       $s5, $f4
    /* D8CA0 800C9CF0 8E0E0000 */  lw         $t6, 0x0($s0)
    /* D8CA4 800C9CF4 24020800 */  addiu      $v0, $zero, 0x800
    /* D8CA8 800C9CF8 468021A0 */  cvt.s.w    $f6, $f4
    /* D8CAC 800C9CFC 44962000 */  mtc1       $s6, $f4
    /* D8CB0 800C9D00 24070400 */  addiu      $a3, $zero, 0x400
    /* D8CB4 800C9D04 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* D8CB8 800C9D08 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* D8CBC 800C9D0C 4600320D */  trunc.w.s  $f8, $f6
    /* D8CC0 800C9D10 468021A0 */  cvt.s.w    $f6, $f4
    /* D8CC4 800C9D14 44184000 */  mfc1       $t8, $f8
    /* D8CC8 800C9D18 44932000 */  mtc1       $s3, $f4
    /* D8CCC 800C9D1C A5D80000 */  sh         $t8, 0x0($t6)
    /* D8CD0 800C9D20 87AF0102 */  lh         $t7, 0x102($sp)
    /* D8CD4 800C9D24 4600320D */  trunc.w.s  $f8, $f6
    /* D8CD8 800C9D28 8E0E0000 */  lw         $t6, 0x0($s0)
    /* D8CDC 800C9D2C 448F5000 */  mtc1       $t7, $f10
    /* D8CE0 800C9D30 468021A0 */  cvt.s.w    $f6, $f4
    /* D8CE4 800C9D34 44194000 */  mfc1       $t9, $f8
    /* D8CE8 800C9D38 46805420 */  cvt.s.w    $f16, $f10
    /* D8CEC 800C9D3C 44975000 */  mtc1       $s7, $f10
    /* D8CF0 800C9D40 4600320D */  trunc.w.s  $f8, $f6
    /* D8CF4 800C9D44 4600848D */  trunc.w.s  $f18, $f16
    /* D8CF8 800C9D48 46805420 */  cvt.s.w    $f16, $f10
    /* D8CFC 800C9D4C 44189000 */  mfc1       $t8, $f18
    /* D8D00 800C9D50 449E5000 */  mtc1       $fp, $f10
    /* D8D04 800C9D54 A5D80002 */  sh         $t8, 0x2($t6)
    /* D8D08 800C9D58 8E180000 */  lw         $t8, 0x0($s0)
    /* D8D0C 800C9D5C 4600848D */  trunc.w.s  $f18, $f16
    /* D8D10 800C9D60 A7190004 */  sh         $t9, 0x4($t8)
    /* D8D14 800C9D64 8E0E0000 */  lw         $t6, 0x0($s0)
    /* D8D18 800C9D68 46805420 */  cvt.s.w    $f16, $f10
    /* D8D1C 800C9D6C 44945000 */  mtc1       $s4, $f10
    /* D8D20 800C9D70 A5C00006 */  sh         $zero, 0x6($t6)
    /* D8D24 800C9D74 8E0F0000 */  lw         $t7, 0x0($s0)
    /* D8D28 800C9D78 A5E00008 */  sh         $zero, 0x8($t7)
    /* D8D2C 800C9D7C 8E190000 */  lw         $t9, 0x0($s0)
    /* D8D30 800C9D80 A720000A */  sh         $zero, 0xA($t9)
    /* D8D34 800C9D84 8E0E0000 */  lw         $t6, 0x0($s0)
    /* D8D38 800C9D88 92380006 */  lbu        $t8, 0x6($s1)
    /* D8D3C 800C9D8C A1D8000C */  sb         $t8, 0xC($t6)
    /* D8D40 800C9D90 8E190000 */  lw         $t9, 0x0($s0)
    /* D8D44 800C9D94 922F0007 */  lbu        $t7, 0x7($s1)
    /* D8D48 800C9D98 A32F000D */  sb         $t7, 0xD($t9)
    /* D8D4C 800C9D9C 8E0E0000 */  lw         $t6, 0x0($s0)
    /* D8D50 800C9DA0 92380008 */  lbu        $t8, 0x8($s1)
    /* D8D54 800C9DA4 A1D8000E */  sb         $t8, 0xE($t6)
    /* D8D58 800C9DA8 8E190000 */  lw         $t9, 0x0($s0)
    /* D8D5C 800C9DAC 922F000A */  lbu        $t7, 0xA($s1)
    /* D8D60 800C9DB0 A32F000F */  sb         $t7, 0xF($t9)
    /* D8D64 800C9DB4 8E180000 */  lw         $t8, 0x0($s0)
    /* D8D68 800C9DB8 44199000 */  mfc1       $t9, $f18
    /* D8D6C 800C9DBC 4600848D */  trunc.w.s  $f18, $f16
    /* D8D70 800C9DC0 270E0010 */  addiu      $t6, $t8, 0x10
    /* D8D74 800C9DC4 AE0E0000 */  sw         $t6, 0x0($s0)
    /* D8D78 800C9DC8 A5D90000 */  sh         $t9, 0x0($t6)
    /* D8D7C 800C9DCC 8E190000 */  lw         $t9, 0x0($s0)
    /* D8D80 800C9DD0 440F4000 */  mfc1       $t7, $f8
    /* D8D84 800C9DD4 440E9000 */  mfc1       $t6, $f18
    /* D8D88 800C9DD8 46805420 */  cvt.s.w    $f16, $f10
    /* D8D8C 800C9DDC A72F0002 */  sh         $t7, 0x2($t9)
    /* D8D90 800C9DE0 8E0F0000 */  lw         $t7, 0x0($s0)
    /* D8D94 800C9DE4 A5EE0004 */  sh         $t6, 0x4($t7)
    /* D8D98 800C9DE8 8E190000 */  lw         $t9, 0x0($s0)
    /* D8D9C 800C9DEC 4600848D */  trunc.w.s  $f18, $f16
    /* D8DA0 800C9DF0 A7200006 */  sh         $zero, 0x6($t9)
    /* D8DA4 800C9DF4 8E180000 */  lw         $t8, 0x0($s0)
    /* D8DA8 800C9DF8 A7020008 */  sh         $v0, 0x8($t8)
    /* D8DAC 800C9DFC 8E0E0000 */  lw         $t6, 0x0($s0)
    /* D8DB0 800C9E00 A5C0000A */  sh         $zero, 0xA($t6)
    /* D8DB4 800C9E04 8E190000 */  lw         $t9, 0x0($s0)
    /* D8DB8 800C9E08 922F0006 */  lbu        $t7, 0x6($s1)
    /* D8DBC 800C9E0C A32F000C */  sb         $t7, 0xC($t9)
    /* D8DC0 800C9E10 8E0E0000 */  lw         $t6, 0x0($s0)
    /* D8DC4 800C9E14 92380007 */  lbu        $t8, 0x7($s1)
    /* D8DC8 800C9E18 A1D8000D */  sb         $t8, 0xD($t6)
    /* D8DCC 800C9E1C 8E190000 */  lw         $t9, 0x0($s0)
    /* D8DD0 800C9E20 922F0008 */  lbu        $t7, 0x8($s1)
    /* D8DD4 800C9E24 A32F000E */  sb         $t7, 0xE($t9)
    /* D8DD8 800C9E28 8E0E0000 */  lw         $t6, 0x0($s0)
    /* D8DDC 800C9E2C 9238000A */  lbu        $t8, 0xA($s1)
    /* D8DE0 800C9E30 A1D8000F */  sb         $t8, 0xF($t6)
    /* D8DE4 800C9E34 87B800F0 */  lh         $t8, 0xF0($sp)
    /* D8DE8 800C9E38 8E0F0000 */  lw         $t7, 0x0($s0)
    /* D8DEC 800C9E3C 440E9000 */  mfc1       $t6, $f18
    /* D8DF0 800C9E40 44982000 */  mtc1       $t8, $f4
    /* D8DF4 800C9E44 25F90010 */  addiu      $t9, $t7, 0x10
    /* D8DF8 800C9E48 AE190000 */  sw         $t9, 0x0($s0)
    /* D8DFC 800C9E4C 468021A0 */  cvt.s.w    $f6, $f4
    /* D8E00 800C9E50 4600320D */  trunc.w.s  $f8, $f6
    /* D8E04 800C9E54 440F4000 */  mfc1       $t7, $f8
    /* D8E08 800C9E58 00000000 */  nop
    /* D8E0C 800C9E5C A72F0000 */  sh         $t7, 0x0($t9)
    /* D8E10 800C9E60 8E0F0000 */  lw         $t7, 0x0($s0)
    /* D8E14 800C9E64 A5EE0002 */  sh         $t6, 0x2($t7)
    /* D8E18 800C9E68 87B900F4 */  lh         $t9, 0xF4($sp)
    /* D8E1C 800C9E6C 8E0F0000 */  lw         $t7, 0x0($s0)
    /* D8E20 800C9E70 44992000 */  mtc1       $t9, $f4
    /* D8E24 800C9E74 00000000 */  nop
    /* D8E28 800C9E78 468021A0 */  cvt.s.w    $f6, $f4
    /* D8E2C 800C9E7C 44852000 */  mtc1       $a1, $f4
    /* D8E30 800C9E80 4600320D */  trunc.w.s  $f8, $f6
    /* D8E34 800C9E84 468021A0 */  cvt.s.w    $f6, $f4
    /* D8E38 800C9E88 440E4000 */  mfc1       $t6, $f8
    /* D8E3C 800C9E8C 00000000 */  nop
    /* D8E40 800C9E90 A5EE0004 */  sh         $t6, 0x4($t7)
    /* D8E44 800C9E94 8E190000 */  lw         $t9, 0x0($s0)
    /* D8E48 800C9E98 4600320D */  trunc.w.s  $f8, $f6
    /* D8E4C 800C9E9C A7200006 */  sh         $zero, 0x6($t9)
    /* D8E50 800C9EA0 8E180000 */  lw         $t8, 0x0($s0)
    /* D8E54 800C9EA4 A7020008 */  sh         $v0, 0x8($t8)
    /* D8E58 800C9EA8 8E0E0000 */  lw         $t6, 0x0($s0)
    /* D8E5C 800C9EAC A5C2000A */  sh         $v0, 0xA($t6)
    /* D8E60 800C9EB0 8E190000 */  lw         $t9, 0x0($s0)
    /* D8E64 800C9EB4 922F0006 */  lbu        $t7, 0x6($s1)
    /* D8E68 800C9EB8 A32F000C */  sb         $t7, 0xC($t9)
    /* D8E6C 800C9EBC 8E0E0000 */  lw         $t6, 0x0($s0)
    /* D8E70 800C9EC0 92380007 */  lbu        $t8, 0x7($s1)
    /* D8E74 800C9EC4 A1D8000D */  sb         $t8, 0xD($t6)
    /* D8E78 800C9EC8 8E190000 */  lw         $t9, 0x0($s0)
    /* D8E7C 800C9ECC 922F0008 */  lbu        $t7, 0x8($s1)
    /* D8E80 800C9ED0 A32F000E */  sb         $t7, 0xE($t9)
    /* D8E84 800C9ED4 8E0E0000 */  lw         $t6, 0x0($s0)
    /* D8E88 800C9ED8 9238000A */  lbu        $t8, 0xA($s1)
    /* D8E8C 800C9EDC A1D8000F */  sb         $t8, 0xF($t6)
    /* D8E90 800C9EE0 87B800E8 */  lh         $t8, 0xE8($sp)
    /* D8E94 800C9EE4 8E0F0000 */  lw         $t7, 0x0($s0)
    /* D8E98 800C9EE8 440E4000 */  mfc1       $t6, $f8
    /* D8E9C 800C9EEC 44985000 */  mtc1       $t8, $f10
    /* D8EA0 800C9EF0 25F90010 */  addiu      $t9, $t7, 0x10
    /* D8EA4 800C9EF4 AE190000 */  sw         $t9, 0x0($s0)
    /* D8EA8 800C9EF8 46805420 */  cvt.s.w    $f16, $f10
    /* D8EAC 800C9EFC 4600848D */  trunc.w.s  $f18, $f16
    /* D8EB0 800C9F00 440F9000 */  mfc1       $t7, $f18
    /* D8EB4 800C9F04 00000000 */  nop
    /* D8EB8 800C9F08 A72F0000 */  sh         $t7, 0x0($t9)
    /* D8EBC 800C9F0C 8E0F0000 */  lw         $t7, 0x0($s0)
    /* D8EC0 800C9F10 A5EE0002 */  sh         $t6, 0x2($t7)
    /* D8EC4 800C9F14 87B900EC */  lh         $t9, 0xEC($sp)
    /* D8EC8 800C9F18 8E0F0000 */  lw         $t7, 0x0($s0)
    /* D8ECC 800C9F1C 44995000 */  mtc1       $t9, $f10
    /* D8ED0 800C9F20 00000000 */  nop
    /* D8ED4 800C9F24 46805420 */  cvt.s.w    $f16, $f10
    /* D8ED8 800C9F28 4600848D */  trunc.w.s  $f18, $f16
    /* D8EDC 800C9F2C 440E9000 */  mfc1       $t6, $f18
    /* D8EE0 800C9F30 00000000 */  nop
    /* D8EE4 800C9F34 A5EE0004 */  sh         $t6, 0x4($t7)
    /* D8EE8 800C9F38 8E190000 */  lw         $t9, 0x0($s0)
    /* D8EEC 800C9F3C 240E0800 */  addiu      $t6, $zero, 0x800
    /* D8EF0 800C9F40 A7200006 */  sh         $zero, 0x6($t9)
    /* D8EF4 800C9F44 8E180000 */  lw         $t8, 0x0($s0)
    /* D8EF8 800C9F48 A7000008 */  sh         $zero, 0x8($t8)
    /* D8EFC 800C9F4C 8E0F0000 */  lw         $t7, 0x0($s0)
    /* D8F00 800C9F50 A5EE000A */  sh         $t6, 0xA($t7)
    /* D8F04 800C9F54 8E180000 */  lw         $t8, 0x0($s0)
    /* D8F08 800C9F58 92390006 */  lbu        $t9, 0x6($s1)
    /* D8F0C 800C9F5C A319000C */  sb         $t9, 0xC($t8)
    /* D8F10 800C9F60 8E0F0000 */  lw         $t7, 0x0($s0)
    /* D8F14 800C9F64 922E0007 */  lbu        $t6, 0x7($s1)
    /* D8F18 800C9F68 A1EE000D */  sb         $t6, 0xD($t7)
    /* D8F1C 800C9F6C 8E180000 */  lw         $t8, 0x0($s0)
    /* D8F20 800C9F70 92390008 */  lbu        $t9, 0x8($s1)
    /* D8F24 800C9F74 A319000E */  sb         $t9, 0xE($t8)
    /* D8F28 800C9F78 8E0F0000 */  lw         $t7, 0x0($s0)
    /* D8F2C 800C9F7C 922E000A */  lbu        $t6, 0xA($s1)
    /* D8F30 800C9F80 A1EE000F */  sb         $t6, 0xF($t7)
    /* D8F34 800C9F84 8E190000 */  lw         $t9, 0x0($s0)
    /* D8F38 800C9F88 27380010 */  addiu      $t8, $t9, 0x10
    /* D8F3C 800C9F8C AE180000 */  sw         $t8, 0x0($s0)
    /* D8F40 800C9F90 862E0000 */  lh         $t6, 0x0($s1)
    /* D8F44 800C9F94 448E2000 */  mtc1       $t6, $f4
    /* D8F48 800C9F98 00000000 */  nop
    /* D8F4C 800C9F9C 468021A0 */  cvt.s.w    $f6, $f4
    /* D8F50 800C9FA0 4600320D */  trunc.w.s  $f8, $f6
    /* D8F54 800C9FA4 44194000 */  mfc1       $t9, $f8
    /* D8F58 800C9FA8 00000000 */  nop
    /* D8F5C 800C9FAC A7190000 */  sh         $t9, 0x0($t8)
    /* D8F60 800C9FB0 862E0002 */  lh         $t6, 0x2($s1)
    /* D8F64 800C9FB4 8E180000 */  lw         $t8, 0x0($s0)
    /* D8F68 800C9FB8 448E5000 */  mtc1       $t6, $f10
    /* D8F6C 800C9FBC 00000000 */  nop
    /* D8F70 800C9FC0 46805420 */  cvt.s.w    $f16, $f10
    /* D8F74 800C9FC4 4600848D */  trunc.w.s  $f18, $f16
    /* D8F78 800C9FC8 44199000 */  mfc1       $t9, $f18
    /* D8F7C 800C9FCC 00000000 */  nop
    /* D8F80 800C9FD0 A7190002 */  sh         $t9, 0x2($t8)
    /* D8F84 800C9FD4 862E0004 */  lh         $t6, 0x4($s1)
    /* D8F88 800C9FD8 8E180000 */  lw         $t8, 0x0($s0)
    /* D8F8C 800C9FDC 448E2000 */  mtc1       $t6, $f4
    /* D8F90 800C9FE0 00000000 */  nop
    /* D8F94 800C9FE4 468021A0 */  cvt.s.w    $f6, $f4
    /* D8F98 800C9FE8 4600320D */  trunc.w.s  $f8, $f6
    /* D8F9C 800C9FEC 44194000 */  mfc1       $t9, $f8
    /* D8FA0 800C9FF0 00000000 */  nop
    /* D8FA4 800C9FF4 A7190004 */  sh         $t9, 0x4($t8)
    /* D8FA8 800C9FF8 8E0E0000 */  lw         $t6, 0x0($s0)
    /* D8FAC 800C9FFC A5C00006 */  sh         $zero, 0x6($t6)
    /* D8FB0 800CA000 8E0F0000 */  lw         $t7, 0x0($s0)
    /* D8FB4 800CA004 A5E70008 */  sh         $a3, 0x8($t7)
    /* D8FB8 800CA008 8E190000 */  lw         $t9, 0x0($s0)
    /* D8FBC 800CA00C A727000A */  sh         $a3, 0xA($t9)
    /* D8FC0 800CA010 8E0E0000 */  lw         $t6, 0x0($s0)
    /* D8FC4 800CA014 92380006 */  lbu        $t8, 0x6($s1)
    /* D8FC8 800CA018 A1D8000C */  sb         $t8, 0xC($t6)
    /* D8FCC 800CA01C 8E190000 */  lw         $t9, 0x0($s0)
    /* D8FD0 800CA020 922F0007 */  lbu        $t7, 0x7($s1)
    /* D8FD4 800CA024 A32F000D */  sb         $t7, 0xD($t9)
    /* D8FD8 800CA028 8E0E0000 */  lw         $t6, 0x0($s0)
    /* D8FDC 800CA02C 92380008 */  lbu        $t8, 0x8($s1)
    /* D8FE0 800CA030 A1D8000E */  sb         $t8, 0xE($t6)
    /* D8FE4 800CA034 8E190000 */  lw         $t9, 0x0($s0)
    /* D8FE8 800CA038 922F000A */  lbu        $t7, 0xA($s1)
    /* D8FEC 800CA03C A32F000F */  sb         $t7, 0xF($t9)
    /* D8FF0 800CA040 8E180000 */  lw         $t8, 0x0($s0)
    /* D8FF4 800CA044 8E420000 */  lw         $v0, 0x0($s2)
    /* D8FF8 800CA048 3C190400 */  lui        $t9, (0x400144F >> 16)
    /* D8FFC 800CA04C 270E0010 */  addiu      $t6, $t8, 0x10
    /* D9000 800CA050 244F0008 */  addiu      $t7, $v0, 0x8
    /* D9004 800CA054 AE0E0000 */  sw         $t6, 0x0($s0)
    /* D9008 800CA058 AE4F0000 */  sw         $t7, 0x0($s2)
    /* D900C 800CA05C 3739144F */  ori        $t9, $t9, (0x400144F & 0xFFFF)
    /* D9010 800CA060 AC590000 */  sw         $t9, 0x0($v0)
    /* D9014 800CA064 8E180000 */  lw         $t8, 0x0($s0)
    /* D9018 800CA068 270EFFB0 */  addiu      $t6, $t8, -0x50
    /* D901C 800CA06C 01C17824 */  and        $t7, $t6, $at
    /* D9020 800CA070 AC4F0004 */  sw         $t7, 0x4($v0)
    /* D9024 800CA074 8E420000 */  lw         $v0, 0x0($s2)
    /* D9028 800CA078 3C18B100 */  lui        $t8, (0xB1000208 >> 16)
    /* D902C 800CA07C 37180208 */  ori        $t8, $t8, (0xB1000208 & 0xFFFF)
    /* D9030 800CA080 24590008 */  addiu      $t9, $v0, 0x8
    /* D9034 800CA084 AE590000 */  sw         $t9, 0x0($s2)
    /* D9038 800CA088 240E0806 */  addiu      $t6, $zero, 0x806
    /* D903C 800CA08C AC4E0004 */  sw         $t6, 0x4($v0)
    /* D9040 800CA090 AC580000 */  sw         $t8, 0x0($v0)
    /* D9044 800CA094 8E420000 */  lw         $v0, 0x0($s2)
    /* D9048 800CA098 3C180008 */  lui        $t8, (0x80406 >> 16)
    /* D904C 800CA09C 3C19B104 */  lui        $t9, (0xB1040802 >> 16)
    /* D9050 800CA0A0 244F0008 */  addiu      $t7, $v0, 0x8
    /* D9054 800CA0A4 AE4F0000 */  sw         $t7, 0x0($s2)
    /* D9058 800CA0A8 37390802 */  ori        $t9, $t9, (0xB1040802 & 0xFFFF)
    /* D905C 800CA0AC 37180406 */  ori        $t8, $t8, (0x80406 & 0xFFFF)
    /* D9060 800CA0B0 3C0E8015 */  lui        $t6, %hi(D_80156EDA)
    /* D9064 800CA0B4 AC580004 */  sw         $t8, 0x4($v0)
    /* D9068 800CA0B8 AC590000 */  sw         $t9, 0x0($v0)
    /* D906C 800CA0BC 85CE6EDA */  lh         $t6, %lo(D_80156EDA)($t6)
    /* D9070 800CA0C0 3C018015 */  lui        $at, %hi(D_80156EDA)
    /* D9074 800CA0C4 25CF0005 */  addiu      $t7, $t6, 0x5
    /* D9078 800CA0C8 A42F6EDA */  sh         $t7, %lo(D_80156EDA)($at)
  .L800CA0CC_D907C:
    /* D907C 800CA0CC 87AE010E */  lh         $t6, 0x10E($sp)
  .L800CA0D0_D9080:
    /* D9080 800CA0D0 8FB90054 */  lw         $t9, 0x54($sp)
    /* D9084 800CA0D4 24050001 */  addiu      $a1, $zero, 0x1
    /* D9088 800CA0D8 000E78C0 */  sll        $t7, $t6, 3
    /* D908C 800CA0DC 01EE7823 */  subu       $t7, $t7, $t6
    /* D9090 800CA0E0 00B91823 */  subu       $v1, $a1, $t9
    /* D9094 800CA0E4 3C198015 */  lui        $t9, %hi(D_8015431C)
    /* D9098 800CA0E8 000F7880 */  sll        $t7, $t7, 2
    /* D909C 800CA0EC 032FC821 */  addu       $t9, $t9, $t7
    /* D90A0 800CA0F0 8739431C */  lh         $t9, %lo(D_8015431C)($t9)
    /* D90A4 800CA0F4 307800FF */  andi       $t8, $v1, 0xFF
    /* D90A8 800CA0F8 2401FFFA */  addiu      $at, $zero, -0x6
    /* D90AC 800CA0FC 03001825 */  or         $v1, $t8, $zero
    /* D90B0 800CA100 13210004 */  beq        $t9, $at, .L800CA114_D90C4
    /* D90B4 800CA104 A7B9010E */   sh        $t9, 0x10E($sp)
    /* D90B8 800CA108 2401FFFB */  addiu      $at, $zero, -0x5
    /* D90BC 800CA10C 1721FE45 */  bne        $t9, $at, .L800C9A24_D89D4
    /* D90C0 800CA110 00000000 */   nop
  .L800CA114_D90C4:
    /* D90C4 800CA114 8E420000 */  lw         $v0, 0x0($s2)
    /* D90C8 800CA118 3C10E700 */  lui        $s0, (0xE7000000 >> 16)
    /* D90CC 800CA11C 3C0FBA00 */  lui        $t7, (0xBA001402 >> 16)
    /* D90D0 800CA120 24580008 */  addiu      $t8, $v0, 0x8
    /* D90D4 800CA124 AE580000 */  sw         $t8, 0x0($s2)
    /* D90D8 800CA128 AC400004 */  sw         $zero, 0x4($v0)
    /* D90DC 800CA12C AC500000 */  sw         $s0, 0x0($v0)
    /* D90E0 800CA130 8E420000 */  lw         $v0, 0x0($s2)
    /* D90E4 800CA134 35EF1402 */  ori        $t7, $t7, (0xBA001402 & 0xFFFF)
    /* D90E8 800CA138 3C190010 */  lui        $t9, (0x100000 >> 16)
    /* D90EC 800CA13C 244E0008 */  addiu      $t6, $v0, 0x8
    /* D90F0 800CA140 AE4E0000 */  sw         $t6, 0x0($s2)
    /* D90F4 800CA144 AC590004 */  sw         $t9, 0x4($v0)
    /* D90F8 800CA148 AC4F0000 */  sw         $t7, 0x0($v0)
    /* D90FC 800CA14C 8E420000 */  lw         $v0, 0x0($s2)
    /* D9100 800CA150 3C0F0001 */  lui        $t7, (0x10000 >> 16)
    /* D9104 800CA154 3C0EB700 */  lui        $t6, (0xB7000000 >> 16)
    /* D9108 800CA158 24580008 */  addiu      $t8, $v0, 0x8
    /* D910C 800CA15C AE580000 */  sw         $t8, 0x0($s2)
    /* D9110 800CA160 AC4F0004 */  sw         $t7, 0x4($v0)
    /* D9114 800CA164 AC4E0000 */  sw         $t6, 0x0($v0)
    /* D9118 800CA168 8E420000 */  lw         $v0, 0x0($s2)
    /* D911C 800CA16C 24590008 */  addiu      $t9, $v0, 0x8
    /* D9120 800CA170 AE590000 */  sw         $t9, 0x0($s2)
    /* D9124 800CA174 AC400004 */  sw         $zero, 0x4($v0)
    /* D9128 800CA178 AC500000 */  sw         $s0, 0x0($v0)
    /* D912C 800CA17C 8FBF004C */  lw         $ra, 0x4C($sp)
    /* D9130 800CA180 8FBE0048 */  lw         $fp, 0x48($sp)
    /* D9134 800CA184 8FB70044 */  lw         $s7, 0x44($sp)
    /* D9138 800CA188 8FB60040 */  lw         $s6, 0x40($sp)
    /* D913C 800CA18C 8FB5003C */  lw         $s5, 0x3C($sp)
    /* D9140 800CA190 8FB40038 */  lw         $s4, 0x38($sp)
    /* D9144 800CA194 8FB30034 */  lw         $s3, 0x34($sp)
    /* D9148 800CA198 8FB20030 */  lw         $s2, 0x30($sp)
    /* D914C 800CA19C 8FB1002C */  lw         $s1, 0x2C($sp)
    /* D9150 800CA1A0 8FB00028 */  lw         $s0, 0x28($sp)
    /* D9154 800CA1A4 D7B40020 */  ldc1       $f20, 0x20($sp)
    /* D9158 800CA1A8 03E00008 */  jr         $ra
    /* D915C 800CA1AC 27BD0110 */   addiu     $sp, $sp, 0x110
endlabel func_800C978C_D873C
