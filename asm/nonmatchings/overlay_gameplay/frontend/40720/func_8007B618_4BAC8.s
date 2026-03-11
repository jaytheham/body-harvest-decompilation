nonmatching func_8007B618_4BAC8, 0x2E8

glabel func_8007B618_4BAC8
    /* 4BAC8 8007B618 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 4BACC 8007B61C AFBF0034 */  sw         $ra, 0x34($sp)
    /* 4BAD0 8007B620 AFB70030 */  sw         $s7, 0x30($sp)
    /* 4BAD4 8007B624 AFB6002C */  sw         $s6, 0x2C($sp)
    /* 4BAD8 8007B628 AFB00014 */  sw         $s0, 0x14($sp)
    /* 4BADC 8007B62C AFB50028 */  sw         $s5, 0x28($sp)
    /* 4BAE0 8007B630 AFB40024 */  sw         $s4, 0x24($sp)
    /* 4BAE4 8007B634 AFB30020 */  sw         $s3, 0x20($sp)
    /* 4BAE8 8007B638 AFB2001C */  sw         $s2, 0x1C($sp)
    /* 4BAEC 8007B63C AFB10018 */  sw         $s1, 0x18($sp)
    /* 4BAF0 8007B640 2416004F */  addiu      $s6, $zero, 0x4F
    /* 4BAF4 8007B644 00008025 */  or         $s0, $zero, $zero
    /* 4BAF8 8007B648 0000B825 */  or         $s7, $zero, $zero
    /* 4BAFC 8007B64C 0C01E468 */  jal        func_800791A0_49650
    /* 4BB00 8007B650 24040001 */   addiu     $a0, $zero, 0x1
    /* 4BB04 8007B654 3C128006 */  lui        $s2, %hi(D_8005BB2C)
    /* 4BB08 8007B658 2652BB2C */  addiu      $s2, $s2, %lo(D_8005BB2C)
    /* 4BB0C 8007B65C 8E420000 */  lw         $v0, 0x0($s2)
    /* 4BB10 8007B660 3C0FE900 */  lui        $t7, (0xE9000000 >> 16)
    /* 4BB14 8007B664 3C19B800 */  lui        $t9, (0xB8000000 >> 16)
    /* 4BB18 8007B668 244E0008 */  addiu      $t6, $v0, 0x8
    /* 4BB1C 8007B66C AE4E0000 */  sw         $t6, 0x0($s2)
    /* 4BB20 8007B670 AC400004 */  sw         $zero, 0x4($v0)
    /* 4BB24 8007B674 AC4F0000 */  sw         $t7, 0x0($v0)
    /* 4BB28 8007B678 8E420000 */  lw         $v0, 0x0($s2)
    /* 4BB2C 8007B67C 24580008 */  addiu      $t8, $v0, 0x8
    /* 4BB30 8007B680 AE580000 */  sw         $t8, 0x0($s2)
    /* 4BB34 8007B684 AC400004 */  sw         $zero, 0x4($v0)
    /* 4BB38 8007B688 0C001417 */  jal        func_8000505C_5C5C
    /* 4BB3C 8007B68C AC590000 */   sw        $t9, 0x0($v0)
    /* 4BB40 8007B690 00002025 */  or         $a0, $zero, $zero
    /* 4BB44 8007B694 0C000D61 */  jal        isButtonNewlyPressed
    /* 4BB48 8007B698 24051000 */   addiu     $a1, $zero, 0x1000
    /* 4BB4C 8007B69C 1040008D */  beqz       $v0, .L8007B8D4_4BD84
    /* 4BB50 8007B6A0 02008825 */   or        $s1, $s0, $zero
    /* 4BB54 8007B6A4 3C158004 */  lui        $s5, %hi(currentControllerStates)
    /* 4BB58 8007B6A8 26B57588 */  addiu      $s5, $s5, %lo(currentControllerStates)
    /* 4BB5C 8007B6AC 24140001 */  addiu      $s4, $zero, 0x1
    /* 4BB60 8007B6B0 93B3003E */  lbu        $s3, 0x3E($sp)
    /* 4BB64 8007B6B4 02802025 */  or         $a0, $s4, $zero
  .L8007B6B8_4BB68:
    /* 4BB68 8007B6B8 0C01E468 */  jal        func_800791A0_49650
    /* 4BB6C 8007B6BC 02608025 */   or        $s0, $s3, $zero
    /* 4BB70 8007B6C0 26130002 */  addiu      $s3, $s0, 0x2
    /* 4BB74 8007B6C4 06610004 */  bgez       $s3, .L8007B6D8_4BB88
    /* 4BB78 8007B6C8 3268003F */   andi      $t0, $s3, 0x3F
    /* 4BB7C 8007B6CC 11000002 */  beqz       $t0, .L8007B6D8_4BB88
    /* 4BB80 8007B6D0 00000000 */   nop
    /* 4BB84 8007B6D4 2508FFC0 */  addiu      $t0, $t0, -0x40
  .L8007B6D8_4BB88:
    /* 4BB88 8007B6D8 3C04800B */  lui        $a0, %hi(D_800ADE4C)
    /* 4BB8C 8007B6DC 311300FF */  andi       $s3, $t0, 0xFF
    /* 4BB90 8007B6E0 2484DE4C */  addiu      $a0, $a0, %lo(D_800ADE4C)
    /* 4BB94 8007B6E4 24050082 */  addiu      $a1, $zero, 0x82
    /* 4BB98 8007B6E8 240600F0 */  addiu      $a2, $zero, 0xF0
    /* 4BB9C 8007B6EC 0C002929 */  jal        drawText
    /* 4BBA0 8007B6F0 24070064 */   addiu     $a3, $zero, 0x64
    /* 4BBA4 8007B6F4 3C04800B */  lui        $a0, %hi(D_800ADE50)
    /* 4BBA8 8007B6F8 2484DE50 */  addiu      $a0, $a0, %lo(D_800ADE50)
    /* 4BBAC 8007B6FC 24050080 */  addiu      $a1, $zero, 0x80
    /* 4BBB0 8007B700 0C002929 */  jal        drawText
    /* 4BBB4 8007B704 00003025 */   or        $a2, $zero, $zero
    /* 4BBB8 8007B708 3C04800B */  lui        $a0, %hi(D_800ADE64)
    /* 4BBBC 8007B70C 2484DE64 */  addiu      $a0, $a0, %lo(D_800ADE64)
    /* 4BBC0 8007B710 24050064 */  addiu      $a1, $zero, 0x64
    /* 4BBC4 8007B714 240600B4 */  addiu      $a2, $zero, 0xB4
    /* 4BBC8 8007B718 0C002929 */  jal        drawText
    /* 4BBCC 8007B71C 2407003C */   addiu     $a3, $zero, 0x3C
    /* 4BBD0 8007B720 3C04800B */  lui        $a0, %hi(D_800ADE68)
    /* 4BBD4 8007B724 2484DE68 */  addiu      $a0, $a0, %lo(D_800ADE68)
    /* 4BBD8 8007B728 24050080 */  addiu      $a1, $zero, 0x80
    /* 4BBDC 8007B72C 0C002929 */  jal        drawText
    /* 4BBE0 8007B730 24060003 */   addiu     $a2, $zero, 0x3
    /* 4BBE4 8007B734 3C04800B */  lui        $a0, %hi(D_800ADE80)
    /* 4BBE8 8007B738 2484DE80 */  addiu      $a0, $a0, %lo(D_800ADE80)
    /* 4BBEC 8007B73C 24050080 */  addiu      $a1, $zero, 0x80
    /* 4BBF0 8007B740 0C002929 */  jal        drawText
    /* 4BBF4 8007B744 24060004 */   addiu     $a2, $zero, 0x4
    /* 4BBF8 8007B748 1691000A */  bne        $s4, $s1, .L8007B774_4BC24
    /* 4BBFC 8007B74C 3C04800B */   lui       $a0, %hi(D_800ADEA8)
    /* 4BC00 8007B750 3C04800B */  lui        $a0, %hi(D_800ADEA4)
    /* 4BC04 8007B754 00132840 */  sll        $a1, $s3, 1
    /* 4BC08 8007B758 24A5007F */  addiu      $a1, $a1, 0x7F
    /* 4BC0C 8007B75C 2484DEA4 */  addiu      $a0, $a0, %lo(D_800ADEA4)
    /* 4BC10 8007B760 24060032 */  addiu      $a2, $zero, 0x32
    /* 4BC14 8007B764 0C002929 */  jal        drawText
    /* 4BC18 8007B768 24070032 */   addiu     $a3, $zero, 0x32
    /* 4BC1C 8007B76C 10000006 */  b          .L8007B788_4BC38
    /* 4BC20 8007B770 00000000 */   nop
  .L8007B774_4BC24:
    /* 4BC24 8007B774 2484DEA8 */  addiu      $a0, $a0, %lo(D_800ADEA8)
    /* 4BC28 8007B778 2405005A */  addiu      $a1, $zero, 0x5A
    /* 4BC2C 8007B77C 2406005A */  addiu      $a2, $zero, 0x5A
    /* 4BC30 8007B780 0C002929 */  jal        drawText
    /* 4BC34 8007B784 24070032 */   addiu     $a3, $zero, 0x32
  .L8007B788_4BC38:
    /* 4BC38 8007B788 3C04800B */  lui        $a0, %hi(D_800ADEAC)
    /* 4BC3C 8007B78C 2484DEAC */  addiu      $a0, $a0, %lo(D_800ADEAC)
    /* 4BC40 8007B790 2405000A */  addiu      $a1, $zero, 0xA
    /* 4BC44 8007B794 0C002929 */  jal        drawText
    /* 4BC48 8007B798 24060007 */   addiu     $a2, $zero, 0x7
    /* 4BC4C 8007B79C 1620000A */  bnez       $s1, .L8007B7C8_4BC78
    /* 4BC50 8007B7A0 3C04800B */   lui       $a0, %hi(D_800ADEB8)
    /* 4BC54 8007B7A4 3C04800B */  lui        $a0, %hi(D_800ADEB4)
    /* 4BC58 8007B7A8 00132840 */  sll        $a1, $s3, 1
    /* 4BC5C 8007B7AC 24A5007F */  addiu      $a1, $a1, 0x7F
    /* 4BC60 8007B7B0 2484DEB4 */  addiu      $a0, $a0, %lo(D_800ADEB4)
    /* 4BC64 8007B7B4 24060032 */  addiu      $a2, $zero, 0x32
    /* 4BC68 8007B7B8 0C002929 */  jal        drawText
    /* 4BC6C 8007B7BC 24070032 */   addiu     $a3, $zero, 0x32
    /* 4BC70 8007B7C0 10000006 */  b          .L8007B7DC_4BC8C
    /* 4BC74 8007B7C4 00000000 */   nop
  .L8007B7C8_4BC78:
    /* 4BC78 8007B7C8 2484DEB8 */  addiu      $a0, $a0, %lo(D_800ADEB8)
    /* 4BC7C 8007B7CC 2405005A */  addiu      $a1, $zero, 0x5A
    /* 4BC80 8007B7D0 2406005A */  addiu      $a2, $zero, 0x5A
    /* 4BC84 8007B7D4 0C002929 */  jal        drawText
    /* 4BC88 8007B7D8 24070032 */   addiu     $a3, $zero, 0x32
  .L8007B7DC_4BC8C:
    /* 4BC8C 8007B7DC 3C04800B */  lui        $a0, %hi(D_800ADEBC)
    /* 4BC90 8007B7E0 2484DEBC */  addiu      $a0, $a0, %lo(D_800ADEBC)
    /* 4BC94 8007B7E4 2405001A */  addiu      $a1, $zero, 0x1A
    /* 4BC98 8007B7E8 0C002929 */  jal        drawText
    /* 4BC9C 8007B7EC 24060007 */   addiu     $a2, $zero, 0x7
    /* 4BCA0 8007B7F0 16200006 */  bnez       $s1, .L8007B80C_4BCBC
    /* 4BCA4 8007B7F4 00002025 */   or        $a0, $zero, $zero
    /* 4BCA8 8007B7F8 82AA0002 */  lb         $t2, 0x2($s5)
    /* 4BCAC 8007B7FC 2941FFF6 */  slti       $at, $t2, -0xA
    /* 4BCB0 8007B800 10200002 */  beqz       $at, .L8007B80C_4BCBC
    /* 4BCB4 8007B804 00000000 */   nop
    /* 4BCB8 8007B808 24110001 */  addiu      $s1, $zero, 0x1
  .L8007B80C_4BCBC:
    /* 4BCBC 8007B80C 16910006 */  bne        $s4, $s1, .L8007B828_4BCD8
    /* 4BCC0 8007B810 00000000 */   nop
    /* 4BCC4 8007B814 82AB0002 */  lb         $t3, 0x2($s5)
    /* 4BCC8 8007B818 2961000B */  slti       $at, $t3, 0xB
    /* 4BCCC 8007B81C 14200002 */  bnez       $at, .L8007B828_4BCD8
    /* 4BCD0 8007B820 00000000 */   nop
    /* 4BCD4 8007B824 00008825 */  or         $s1, $zero, $zero
  .L8007B828_4BCD8:
    /* 4BCD8 8007B828 0C000D61 */  jal        isButtonNewlyPressed
    /* 4BCDC 8007B82C 24051000 */   addiu     $a1, $zero, 0x1000
    /* 4BCE0 8007B830 14400002 */  bnez       $v0, .L8007B83C_4BCEC
    /* 4BCE4 8007B834 00002025 */   or        $a0, $zero, $zero
    /* 4BCE8 8007B838 24170001 */  addiu      $s7, $zero, 0x1
  .L8007B83C_4BCEC:
    /* 4BCEC 8007B83C 0C000D61 */  jal        isButtonNewlyPressed
    /* 4BCF0 8007B840 34059000 */   ori       $a1, $zero, 0x9000
    /* 4BCF4 8007B844 50400008 */  beql       $v0, $zero, .L8007B868_4BD18
    /* 4BCF8 8007B848 26D6FFFF */   addiu     $s6, $s6, -0x1
    /* 4BCFC 8007B84C 16970005 */  bne        $s4, $s7, .L8007B864_4BD14
    /* 4BD00 8007B850 00002025 */   or        $a0, $zero, $zero
    /* 4BD04 8007B854 00002825 */  or         $a1, $zero, $zero
    /* 4BD08 8007B858 00003025 */  or         $a2, $zero, $zero
    /* 4BD0C 8007B85C 0C0016BB */  jal        func_80005AEC_66EC
    /* 4BD10 8007B860 24070040 */   addiu     $a3, $zero, 0x40
  .L8007B864_4BD14:
    /* 4BD14 8007B864 26D6FFFF */  addiu      $s6, $s6, -0x1
  .L8007B868_4BD18:
    /* 4BD18 8007B868 32CCFFFF */  andi       $t4, $s6, 0xFFFF
    /* 4BD1C 8007B86C 0C002C11 */  jal        func_8000B044_BC44
    /* 4BD20 8007B870 0180B025 */   or        $s6, $t4, $zero
    /* 4BD24 8007B874 0C0016E1 */  jal        func_80005B84_6784
    /* 4BD28 8007B878 00000000 */   nop
    /* 4BD2C 8007B87C 8E420000 */  lw         $v0, 0x0($s2)
    /* 4BD30 8007B880 3C0EE900 */  lui        $t6, (0xE9000000 >> 16)
    /* 4BD34 8007B884 3C18B800 */  lui        $t8, (0xB8000000 >> 16)
    /* 4BD38 8007B888 244D0008 */  addiu      $t5, $v0, 0x8
    /* 4BD3C 8007B88C AE4D0000 */  sw         $t5, 0x0($s2)
    /* 4BD40 8007B890 AC400004 */  sw         $zero, 0x4($v0)
    /* 4BD44 8007B894 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 4BD48 8007B898 8E420000 */  lw         $v0, 0x0($s2)
    /* 4BD4C 8007B89C 244F0008 */  addiu      $t7, $v0, 0x8
    /* 4BD50 8007B8A0 AE4F0000 */  sw         $t7, 0x0($s2)
    /* 4BD54 8007B8A4 AC400004 */  sw         $zero, 0x4($v0)
    /* 4BD58 8007B8A8 0C001417 */  jal        func_8000505C_5C5C
    /* 4BD5C 8007B8AC AC580000 */   sw        $t8, 0x0($v0)
    /* 4BD60 8007B8B0 0C0016CC */  jal        func_80005B30_6730
    /* 4BD64 8007B8B4 00000000 */   nop
    /* 4BD68 8007B8B8 5040FF7F */  beql       $v0, $zero, .L8007B6B8_4BB68
    /* 4BD6C 8007B8BC 02802025 */   or        $a0, $s4, $zero
    /* 4BD70 8007B8C0 16910004 */  bne        $s4, $s1, .L8007B8D4_4BD84
    /* 4BD74 8007B8C4 A3B3003E */   sb        $s3, 0x3E($sp)
    /* 4BD78 8007B8C8 24190004 */  addiu      $t9, $zero, 0x4
    /* 4BD7C 8007B8CC 3C018004 */  lui        $at, %hi(D_800476A0)
    /* 4BD80 8007B8D0 A43976A0 */  sh         $t9, %lo(D_800476A0)($at)
  .L8007B8D4_4BD84:
    /* 4BD84 8007B8D4 8FBF0034 */  lw         $ra, 0x34($sp)
    /* 4BD88 8007B8D8 8FB00014 */  lw         $s0, 0x14($sp)
    /* 4BD8C 8007B8DC 8FB10018 */  lw         $s1, 0x18($sp)
    /* 4BD90 8007B8E0 8FB2001C */  lw         $s2, 0x1C($sp)
    /* 4BD94 8007B8E4 8FB30020 */  lw         $s3, 0x20($sp)
    /* 4BD98 8007B8E8 8FB40024 */  lw         $s4, 0x24($sp)
    /* 4BD9C 8007B8EC 8FB50028 */  lw         $s5, 0x28($sp)
    /* 4BDA0 8007B8F0 8FB6002C */  lw         $s6, 0x2C($sp)
    /* 4BDA4 8007B8F4 8FB70030 */  lw         $s7, 0x30($sp)
    /* 4BDA8 8007B8F8 03E00008 */  jr         $ra
    /* 4BDAC 8007B8FC 27BD0048 */   addiu     $sp, $sp, 0x48
endlabel func_8007B618_4BAC8
