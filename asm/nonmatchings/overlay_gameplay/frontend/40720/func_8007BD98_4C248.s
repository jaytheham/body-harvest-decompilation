nonmatching func_8007BD98_4C248, 0x128

glabel func_8007BD98_4C248
    /* 4C248 8007BD98 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 4C24C 8007BD9C AFBF002C */  sw         $ra, 0x2C($sp)
    /* 4C250 8007BDA0 AFB50028 */  sw         $s5, 0x28($sp)
    /* 4C254 8007BDA4 AFB40024 */  sw         $s4, 0x24($sp)
    /* 4C258 8007BDA8 AFB30020 */  sw         $s3, 0x20($sp)
    /* 4C25C 8007BDAC AFB2001C */  sw         $s2, 0x1C($sp)
    /* 4C260 8007BDB0 AFB10018 */  sw         $s1, 0x18($sp)
    /* 4C264 8007BDB4 AFB00014 */  sw         $s0, 0x14($sp)
    /* 4C268 8007BDB8 0C01E468 */  jal        func_800791A0_49650
    /* 4C26C 8007BDBC 24040001 */   addiu     $a0, $zero, 0x1
    /* 4C270 8007BDC0 3C108006 */  lui        $s0, %hi(D_8005BB2C)
    /* 4C274 8007BDC4 2610BB2C */  addiu      $s0, $s0, %lo(D_8005BB2C)
    /* 4C278 8007BDC8 8E020000 */  lw         $v0, 0x0($s0)
    /* 4C27C 8007BDCC 3C14E900 */  lui        $s4, (0xE9000000 >> 16)
    /* 4C280 8007BDD0 3C15B800 */  lui        $s5, (0xB8000000 >> 16)
    /* 4C284 8007BDD4 244E0008 */  addiu      $t6, $v0, 0x8
    /* 4C288 8007BDD8 AE0E0000 */  sw         $t6, 0x0($s0)
    /* 4C28C 8007BDDC AC400004 */  sw         $zero, 0x4($v0)
    /* 4C290 8007BDE0 AC540000 */  sw         $s4, 0x0($v0)
    /* 4C294 8007BDE4 8E020000 */  lw         $v0, 0x0($s0)
    /* 4C298 8007BDE8 244F0008 */  addiu      $t7, $v0, 0x8
    /* 4C29C 8007BDEC AE0F0000 */  sw         $t7, 0x0($s0)
    /* 4C2A0 8007BDF0 AC400004 */  sw         $zero, 0x4($v0)
    /* 4C2A4 8007BDF4 0C001417 */  jal        func_8000505C_5C5C
    /* 4C2A8 8007BDF8 AC550000 */   sw        $s5, 0x0($v0)
    /* 4C2AC 8007BDFC 3C13800B */  lui        $s3, %hi(D_800AE028)
    /* 4C2B0 8007BE00 3C12800B */  lui        $s2, %hi(D_800AE004)
    /* 4C2B4 8007BE04 3C11800B */  lui        $s1, %hi(D_800AE000)
    /* 4C2B8 8007BE08 2631E000 */  addiu      $s1, $s1, %lo(D_800AE000)
    /* 4C2BC 8007BE0C 2652E004 */  addiu      $s2, $s2, %lo(D_800AE004)
    /* 4C2C0 8007BE10 2673E028 */  addiu      $s3, $s3, %lo(D_800AE028)
  .L8007BE14_4C2C4:
    /* 4C2C4 8007BE14 0C01E468 */  jal        func_800791A0_49650
    /* 4C2C8 8007BE18 00002025 */   or        $a0, $zero, $zero
    /* 4C2CC 8007BE1C 02202025 */  or         $a0, $s1, $zero
    /* 4C2D0 8007BE20 240500FA */  addiu      $a1, $zero, 0xFA
    /* 4C2D4 8007BE24 240600C8 */  addiu      $a2, $zero, 0xC8
    /* 4C2D8 8007BE28 0C002929 */  jal        drawText
    /* 4C2DC 8007BE2C 240700C8 */   addiu     $a3, $zero, 0xC8
    /* 4C2E0 8007BE30 02402025 */  or         $a0, $s2, $zero
    /* 4C2E4 8007BE34 24050080 */  addiu      $a1, $zero, 0x80
    /* 4C2E8 8007BE38 0C002929 */  jal        drawText
    /* 4C2EC 8007BE3C 24060004 */   addiu     $a2, $zero, 0x4
    /* 4C2F0 8007BE40 02602025 */  or         $a0, $s3, $zero
    /* 4C2F4 8007BE44 24050080 */  addiu      $a1, $zero, 0x80
    /* 4C2F8 8007BE48 0C002929 */  jal        drawText
    /* 4C2FC 8007BE4C 24060005 */   addiu     $a2, $zero, 0x5
    /* 4C300 8007BE50 0C002C11 */  jal        func_8000B044_BC44
    /* 4C304 8007BE54 00000000 */   nop
    /* 4C308 8007BE58 0C0016E1 */  jal        func_80005B84_6784
    /* 4C30C 8007BE5C 00000000 */   nop
    /* 4C310 8007BE60 8E020000 */  lw         $v0, 0x0($s0)
    /* 4C314 8007BE64 24580008 */  addiu      $t8, $v0, 0x8
    /* 4C318 8007BE68 AE180000 */  sw         $t8, 0x0($s0)
    /* 4C31C 8007BE6C AC400004 */  sw         $zero, 0x4($v0)
    /* 4C320 8007BE70 AC540000 */  sw         $s4, 0x0($v0)
    /* 4C324 8007BE74 8E020000 */  lw         $v0, 0x0($s0)
    /* 4C328 8007BE78 24590008 */  addiu      $t9, $v0, 0x8
    /* 4C32C 8007BE7C AE190000 */  sw         $t9, 0x0($s0)
    /* 4C330 8007BE80 AC400004 */  sw         $zero, 0x4($v0)
    /* 4C334 8007BE84 0C001417 */  jal        func_8000505C_5C5C
    /* 4C338 8007BE88 AC550000 */   sw        $s5, 0x0($v0)
    /* 4C33C 8007BE8C 0C0016CC */  jal        func_80005B30_6730
    /* 4C340 8007BE90 00000000 */   nop
    /* 4C344 8007BE94 1040FFDF */  beqz       $v0, .L8007BE14_4C2C4
    /* 4C348 8007BE98 00000000 */   nop
    /* 4C34C 8007BE9C 8FBF002C */  lw         $ra, 0x2C($sp)
    /* 4C350 8007BEA0 8FB00014 */  lw         $s0, 0x14($sp)
    /* 4C354 8007BEA4 8FB10018 */  lw         $s1, 0x18($sp)
    /* 4C358 8007BEA8 8FB2001C */  lw         $s2, 0x1C($sp)
    /* 4C35C 8007BEAC 8FB30020 */  lw         $s3, 0x20($sp)
    /* 4C360 8007BEB0 8FB40024 */  lw         $s4, 0x24($sp)
    /* 4C364 8007BEB4 8FB50028 */  lw         $s5, 0x28($sp)
    /* 4C368 8007BEB8 03E00008 */  jr         $ra
    /* 4C36C 8007BEBC 27BD0030 */   addiu     $sp, $sp, 0x30
endlabel func_8007BD98_4C248
