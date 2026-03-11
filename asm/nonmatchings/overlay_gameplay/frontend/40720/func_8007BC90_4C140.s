nonmatching func_8007BC90_4C140, 0x108

glabel func_8007BC90_4C140
    /* 4C140 8007BC90 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 4C144 8007BC94 AFBF002C */  sw         $ra, 0x2C($sp)
    /* 4C148 8007BC98 AFB40028 */  sw         $s4, 0x28($sp)
    /* 4C14C 8007BC9C AFB30024 */  sw         $s3, 0x24($sp)
    /* 4C150 8007BCA0 AFB20020 */  sw         $s2, 0x20($sp)
    /* 4C154 8007BCA4 AFB1001C */  sw         $s1, 0x1C($sp)
    /* 4C158 8007BCA8 AFB00018 */  sw         $s0, 0x18($sp)
    /* 4C15C 8007BCAC 0C01E468 */  jal        func_800791A0_49650
    /* 4C160 8007BCB0 24040001 */   addiu     $a0, $zero, 0x1
    /* 4C164 8007BCB4 3C108006 */  lui        $s0, %hi(D_8005BB2C)
    /* 4C168 8007BCB8 2610BB2C */  addiu      $s0, $s0, %lo(D_8005BB2C)
    /* 4C16C 8007BCBC 8E020000 */  lw         $v0, 0x0($s0)
    /* 4C170 8007BCC0 3C13E900 */  lui        $s3, (0xE9000000 >> 16)
    /* 4C174 8007BCC4 3C14B800 */  lui        $s4, (0xB8000000 >> 16)
    /* 4C178 8007BCC8 244E0008 */  addiu      $t6, $v0, 0x8
    /* 4C17C 8007BCCC AE0E0000 */  sw         $t6, 0x0($s0)
    /* 4C180 8007BCD0 AC400004 */  sw         $zero, 0x4($v0)
    /* 4C184 8007BCD4 AC530000 */  sw         $s3, 0x0($v0)
    /* 4C188 8007BCD8 8E020000 */  lw         $v0, 0x0($s0)
    /* 4C18C 8007BCDC 244F0008 */  addiu      $t7, $v0, 0x8
    /* 4C190 8007BCE0 AE0F0000 */  sw         $t7, 0x0($s0)
    /* 4C194 8007BCE4 AC400004 */  sw         $zero, 0x4($v0)
    /* 4C198 8007BCE8 0C001417 */  jal        func_8000505C_5C5C
    /* 4C19C 8007BCEC AC540000 */   sw        $s4, 0x0($v0)
    /* 4C1A0 8007BCF0 3C12800B */  lui        $s2, %hi(D_800ADFE0)
    /* 4C1A4 8007BCF4 3C11800B */  lui        $s1, %hi(D_800ADFDC)
    /* 4C1A8 8007BCF8 2631DFDC */  addiu      $s1, $s1, %lo(D_800ADFDC)
    /* 4C1AC 8007BCFC 2652DFE0 */  addiu      $s2, $s2, %lo(D_800ADFE0)
  .L8007BD00_4C1B0:
    /* 4C1B0 8007BD00 0C01E468 */  jal        func_800791A0_49650
    /* 4C1B4 8007BD04 00002025 */   or        $a0, $zero, $zero
    /* 4C1B8 8007BD08 02202025 */  or         $a0, $s1, $zero
    /* 4C1BC 8007BD0C 240500FA */  addiu      $a1, $zero, 0xFA
    /* 4C1C0 8007BD10 240600C8 */  addiu      $a2, $zero, 0xC8
    /* 4C1C4 8007BD14 0C002929 */  jal        drawText
    /* 4C1C8 8007BD18 240700C8 */   addiu     $a3, $zero, 0xC8
    /* 4C1CC 8007BD1C 02402025 */  or         $a0, $s2, $zero
    /* 4C1D0 8007BD20 24050080 */  addiu      $a1, $zero, 0x80
    /* 4C1D4 8007BD24 0C002929 */  jal        drawText
    /* 4C1D8 8007BD28 24060005 */   addiu     $a2, $zero, 0x5
    /* 4C1DC 8007BD2C 0C002C11 */  jal        func_8000B044_BC44
    /* 4C1E0 8007BD30 00000000 */   nop
    /* 4C1E4 8007BD34 0C0016E1 */  jal        func_80005B84_6784
    /* 4C1E8 8007BD38 00000000 */   nop
    /* 4C1EC 8007BD3C 8E020000 */  lw         $v0, 0x0($s0)
    /* 4C1F0 8007BD40 24580008 */  addiu      $t8, $v0, 0x8
    /* 4C1F4 8007BD44 AE180000 */  sw         $t8, 0x0($s0)
    /* 4C1F8 8007BD48 AC400004 */  sw         $zero, 0x4($v0)
    /* 4C1FC 8007BD4C AC530000 */  sw         $s3, 0x0($v0)
    /* 4C200 8007BD50 8E020000 */  lw         $v0, 0x0($s0)
    /* 4C204 8007BD54 24590008 */  addiu      $t9, $v0, 0x8
    /* 4C208 8007BD58 AE190000 */  sw         $t9, 0x0($s0)
    /* 4C20C 8007BD5C AC400004 */  sw         $zero, 0x4($v0)
    /* 4C210 8007BD60 0C001417 */  jal        func_8000505C_5C5C
    /* 4C214 8007BD64 AC540000 */   sw        $s4, 0x0($v0)
    /* 4C218 8007BD68 0C0016CC */  jal        func_80005B30_6730
    /* 4C21C 8007BD6C 00000000 */   nop
    /* 4C220 8007BD70 1040FFE3 */  beqz       $v0, .L8007BD00_4C1B0
    /* 4C224 8007BD74 00000000 */   nop
    /* 4C228 8007BD78 8FBF002C */  lw         $ra, 0x2C($sp)
    /* 4C22C 8007BD7C 8FB00018 */  lw         $s0, 0x18($sp)
    /* 4C230 8007BD80 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 4C234 8007BD84 8FB20020 */  lw         $s2, 0x20($sp)
    /* 4C238 8007BD88 8FB30024 */  lw         $s3, 0x24($sp)
    /* 4C23C 8007BD8C 8FB40028 */  lw         $s4, 0x28($sp)
    /* 4C240 8007BD90 03E00008 */  jr         $ra
    /* 4C244 8007BD94 27BD0030 */   addiu     $sp, $sp, 0x30
endlabel func_8007BC90_4C140
