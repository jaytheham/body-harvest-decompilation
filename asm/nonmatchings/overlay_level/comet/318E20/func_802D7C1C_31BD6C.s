nonmatching func_802D7C1C_31BD6C, 0x260

glabel func_802D7C1C_31BD6C
    /* 31BD6C 802D7C1C 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* 31BD70 802D7C20 AFA40060 */  sw         $a0, 0x60($sp)
    /* 31BD74 802D7C24 93AE0063 */  lbu        $t6, 0x63($sp)
    /* 31BD78 802D7C28 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 31BD7C 802D7C2C 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 31BD80 802D7C30 000E7880 */  sll        $t7, $t6, 2
    /* 31BD84 802D7C34 01EE7821 */  addu       $t7, $t7, $t6
    /* 31BD88 802D7C38 000F7900 */  sll        $t7, $t7, 4
    /* 31BD8C 802D7C3C 01F81821 */  addu       $v1, $t7, $t8
    /* 31BD90 802D7C40 8479000C */  lh         $t9, 0xC($v1)
    /* 31BD94 802D7C44 3C058015 */  lui        $a1, %hi(D_8014DD50)
    /* 31BD98 802D7C48 8C6C0020 */  lw         $t4, 0x20($v1)
    /* 31BD9C 802D7C4C 24A5DD50 */  addiu      $a1, $a1, %lo(D_8014DD50)
    /* 31BDA0 802D7C50 00194900 */  sll        $t1, $t9, 4
    /* 31BDA4 802D7C54 00A95021 */  addu       $t2, $a1, $t1
    /* 31BDA8 802D7C58 814B000C */  lb         $t3, 0xC($t2)
    /* 31BDAC 802D7C5C 000C6AC0 */  sll        $t5, $t4, 11
    /* 31BDB0 802D7C60 AFBF003C */  sw         $ra, 0x3C($sp)
    /* 31BDB4 802D7C64 05A0001E */  bltz       $t5, .L802D7CE0_31BE30
    /* 31BDB8 802D7C68 A7AB005E */   sh        $t3, 0x5E($sp)
    /* 31BDBC 802D7C6C 9079001A */  lbu        $t9, 0x1A($v1)
    /* 31BDC0 802D7C70 240E002D */  addiu      $t6, $zero, 0x2D
    /* 31BDC4 802D7C74 3C078025 */  lui        $a3, %hi(D_8025668C)
    /* 31BDC8 802D7C78 00194880 */  sll        $t1, $t9, 2
    /* 31BDCC 802D7C7C 01394823 */  subu       $t1, $t1, $t9
    /* 31BDD0 802D7C80 00094880 */  sll        $t1, $t1, 2
    /* 31BDD4 802D7C84 01394821 */  addu       $t1, $t1, $t9
    /* 31BDD8 802D7C88 000948C0 */  sll        $t1, $t1, 3
    /* 31BDDC 802D7C8C A46E002C */  sh         $t6, 0x2C($v1)
    /* 31BDE0 802D7C90 00E93821 */  addu       $a3, $a3, $t1
    /* 31BDE4 802D7C94 84E7668C */  lh         $a3, %lo(D_8025668C)($a3)
    /* 31BDE8 802D7C98 84650002 */  lh         $a1, 0x2($v1)
    /* 31BDEC 802D7C9C 240E00FF */  addiu      $t6, $zero, 0xFF
    /* 31BDF0 802D7CA0 00075080 */  sll        $t2, $a3, 2
    /* 31BDF4 802D7CA4 24A50064 */  addiu      $a1, $a1, 0x64
    /* 31BDF8 802D7CA8 00057C00 */  sll        $t7, $a1, 16
    /* 31BDFC 802D7CAC 240C00FF */  addiu      $t4, $zero, 0xFF
    /* 31BE00 802D7CB0 240D00FF */  addiu      $t5, $zero, 0xFF
    /* 31BE04 802D7CB4 01475021 */  addu       $t2, $t2, $a3
    /* 31BE08 802D7CB8 3147FFFF */  andi       $a3, $t2, 0xFFFF
    /* 31BE0C 802D7CBC AFAD0014 */  sw         $t5, 0x14($sp)
    /* 31BE10 802D7CC0 AFAC0010 */  sw         $t4, 0x10($sp)
    /* 31BE14 802D7CC4 000F2C03 */  sra        $a1, $t7, 16
    /* 31BE18 802D7CC8 AFAE0018 */  sw         $t6, 0x18($sp)
    /* 31BE1C 802D7CCC 84640000 */  lh         $a0, 0x0($v1)
    /* 31BE20 802D7CD0 0C03416A */  jal        func_800D05A8_DF558
    /* 31BE24 802D7CD4 84660004 */   lh        $a2, 0x4($v1)
    /* 31BE28 802D7CD8 10000065 */  b          .L802D7E70_31BFC0
    /* 31BE2C 802D7CDC 8FBF003C */   lw        $ra, 0x3C($sp)
  .L802D7CE0_31BE30:
    /* 31BE30 802D7CE0 87AF005E */  lh         $t7, 0x5E($sp)
    /* 31BE34 802D7CE4 3C0C8003 */  lui        $t4, %hi(D_80031420)
    /* 31BE38 802D7CE8 000FC100 */  sll        $t8, $t7, 4
    /* 31BE3C 802D7CEC 00B84021 */  addu       $t0, $a1, $t8
    /* 31BE40 802D7CF0 85020002 */  lh         $v0, 0x2($t0)
    /* 31BE44 802D7CF4 2841FFCA */  slti       $at, $v0, -0x36
    /* 31BE48 802D7CF8 54200007 */  bnel       $at, $zero, .L802D7D18_31BE68
    /* 31BE4C 802D7CFC 8464002C */   lh        $a0, 0x2C($v1)
    /* 31BE50 802D7D00 8479002C */  lh         $t9, 0x2C($v1)
    /* 31BE54 802D7D04 00194840 */  sll        $t1, $t9, 1
    /* 31BE58 802D7D08 00495021 */  addu       $t2, $v0, $t1
    /* 31BE5C 802D7D0C 254BFFA6 */  addiu      $t3, $t2, -0x5A
    /* 31BE60 802D7D10 A50B0002 */  sh         $t3, 0x2($t0)
    /* 31BE64 802D7D14 8464002C */  lh         $a0, 0x2C($v1)
  .L802D7D18_31BE68:
    /* 31BE68 802D7D18 24010028 */  addiu      $at, $zero, 0x28
    /* 31BE6C 802D7D1C 5481002B */  bnel       $a0, $at, .L802D7DCC_31BF1C
    /* 31BE70 802D7D20 24010001 */   addiu     $at, $zero, 0x1
    /* 31BE74 802D7D24 8D8C1420 */  lw         $t4, %lo(D_80031420)($t4)
    /* 31BE78 802D7D28 318D0003 */  andi       $t5, $t4, 0x3
    /* 31BE7C 802D7D2C 51A00027 */  beql       $t5, $zero, .L802D7DCC_31BF1C
    /* 31BE80 802D7D30 24010001 */   addiu     $at, $zero, 0x1
    /* 31BE84 802D7D34 AFA30044 */  sw         $v1, 0x44($sp)
    /* 31BE88 802D7D38 0C000E38 */  jal        func_800038E0_44E0
    /* 31BE8C 802D7D3C AFA80040 */   sw        $t0, 0x40($sp)
    /* 31BE90 802D7D40 24010050 */  addiu      $at, $zero, 0x50
    /* 31BE94 802D7D44 0041001A */  div        $zero, $v0, $at
    /* 31BE98 802D7D48 8FA30044 */  lw         $v1, 0x44($sp)
    /* 31BE9C 802D7D4C 24180001 */  addiu      $t8, $zero, 0x1
    /* 31BEA0 802D7D50 AFB80010 */  sw         $t8, 0x10($sp)
    /* 31BEA4 802D7D54 84650002 */  lh         $a1, 0x2($v1)
    /* 31BEA8 802D7D58 00006010 */  mfhi       $t4
    /* 31BEAC 802D7D5C 240D00B4 */  addiu      $t5, $zero, 0xB4
    /* 31BEB0 802D7D60 24A50046 */  addiu      $a1, $a1, 0x46
    /* 31BEB4 802D7D64 00057400 */  sll        $t6, $a1, 16
    /* 31BEB8 802D7D68 000E2C03 */  sra        $a1, $t6, 16
    /* 31BEBC 802D7D6C 01AC7023 */  subu       $t6, $t5, $t4
    /* 31BEC0 802D7D70 241800FF */  addiu      $t8, $zero, 0xFF
    /* 31BEC4 802D7D74 24190046 */  addiu      $t9, $zero, 0x46
    /* 31BEC8 802D7D78 2409000A */  addiu      $t1, $zero, 0xA
    /* 31BECC 802D7D7C 240A000C */  addiu      $t2, $zero, 0xC
    /* 31BED0 802D7D80 240B0080 */  addiu      $t3, $zero, 0x80
    /* 31BED4 802D7D84 240F0032 */  addiu      $t7, $zero, 0x32
    /* 31BED8 802D7D88 AFAF0030 */  sw         $t7, 0x30($sp)
    /* 31BEDC 802D7D8C AFAB0024 */  sw         $t3, 0x24($sp)
    /* 31BEE0 802D7D90 AFAA0020 */  sw         $t2, 0x20($sp)
    /* 31BEE4 802D7D94 AFA9001C */  sw         $t1, 0x1C($sp)
    /* 31BEE8 802D7D98 AFB90018 */  sw         $t9, 0x18($sp)
    /* 31BEEC 802D7D9C AFB80034 */  sw         $t8, 0x34($sp)
    /* 31BEF0 802D7DA0 AFAE002C */  sw         $t6, 0x2C($sp)
    /* 31BEF4 802D7DA4 00003825 */  or         $a3, $zero, $zero
    /* 31BEF8 802D7DA8 AFA00014 */  sw         $zero, 0x14($sp)
    /* 31BEFC 802D7DAC AFA00028 */  sw         $zero, 0x28($sp)
    /* 31BF00 802D7DB0 84640000 */  lh         $a0, 0x0($v1)
    /* 31BF04 802D7DB4 0C03297B */  jal        func_800CA5EC_D959C
    /* 31BF08 802D7DB8 84660004 */   lh        $a2, 0x4($v1)
    /* 31BF0C 802D7DBC 8FA30044 */  lw         $v1, 0x44($sp)
    /* 31BF10 802D7DC0 8FA80040 */  lw         $t0, 0x40($sp)
    /* 31BF14 802D7DC4 8464002C */  lh         $a0, 0x2C($v1)
    /* 31BF18 802D7DC8 24010001 */  addiu      $at, $zero, 0x1
  .L802D7DCC_31BF1C:
    /* 31BF1C 802D7DCC 14810027 */  bne        $a0, $at, .L802D7E6C_31BFBC
    /* 31BF20 802D7DD0 3C078025 */   lui       $a3, %hi(D_8025668C)
    /* 31BF24 802D7DD4 906A001A */  lbu        $t2, 0x1A($v1)
    /* 31BF28 802D7DD8 84650002 */  lh         $a1, 0x2($v1)
    /* 31BF2C 802D7DDC 240E00FF */  addiu      $t6, $zero, 0xFF
    /* 31BF30 802D7DE0 000A5880 */  sll        $t3, $t2, 2
    /* 31BF34 802D7DE4 016A5823 */  subu       $t3, $t3, $t2
    /* 31BF38 802D7DE8 000B5880 */  sll        $t3, $t3, 2
    /* 31BF3C 802D7DEC 016A5821 */  addu       $t3, $t3, $t2
    /* 31BF40 802D7DF0 000B58C0 */  sll        $t3, $t3, 3
    /* 31BF44 802D7DF4 00EB3821 */  addu       $a3, $a3, $t3
    /* 31BF48 802D7DF8 84E7668C */  lh         $a3, %lo(D_8025668C)($a3)
    /* 31BF4C 802D7DFC 24A50064 */  addiu      $a1, $a1, 0x64
    /* 31BF50 802D7E00 0005CC00 */  sll        $t9, $a1, 16
    /* 31BF54 802D7E04 00076880 */  sll        $t5, $a3, 2
    /* 31BF58 802D7E08 01A76821 */  addu       $t5, $t5, $a3
    /* 31BF5C 802D7E0C 000D6840 */  sll        $t5, $t5, 1
    /* 31BF60 802D7E10 240F00FF */  addiu      $t7, $zero, 0xFF
    /* 31BF64 802D7E14 241800FF */  addiu      $t8, $zero, 0xFF
    /* 31BF68 802D7E18 AFB80018 */  sw         $t8, 0x18($sp)
    /* 31BF6C 802D7E1C AFAF0014 */  sw         $t7, 0x14($sp)
    /* 31BF70 802D7E20 31A7FFFF */  andi       $a3, $t5, 0xFFFF
    /* 31BF74 802D7E24 00192C03 */  sra        $a1, $t9, 16
    /* 31BF78 802D7E28 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 31BF7C 802D7E2C 84640000 */  lh         $a0, 0x0($v1)
    /* 31BF80 802D7E30 84660004 */  lh         $a2, 0x4($v1)
    /* 31BF84 802D7E34 0C03416A */  jal        func_800D05A8_DF558
    /* 31BF88 802D7E38 AFA80040 */   sw        $t0, 0x40($sp)
    /* 31BF8C 802D7E3C 8FA80040 */  lw         $t0, 0x40($sp)
    /* 31BF90 802D7E40 2409001E */  addiu      $t1, $zero, 0x1E
    /* 31BF94 802D7E44 AFA90018 */  sw         $t1, 0x18($sp)
    /* 31BF98 802D7E48 85190004 */  lh         $t9, 0x4($t0)
    /* 31BF9C 802D7E4C 93A40063 */  lbu        $a0, 0x63($sp)
    /* 31BFA0 802D7E50 87A5005E */  lh         $a1, 0x5E($sp)
    /* 31BFA4 802D7E54 AFA00014 */  sw         $zero, 0x14($sp)
    /* 31BFA8 802D7E58 AFA0001C */  sw         $zero, 0x1C($sp)
    /* 31BFAC 802D7E5C 85060000 */  lh         $a2, 0x0($t0)
    /* 31BFB0 802D7E60 85070002 */  lh         $a3, 0x2($t0)
    /* 31BFB4 802D7E64 0C022390 */  jal        func_80088E40_97DF0
    /* 31BFB8 802D7E68 AFB90010 */   sw        $t9, 0x10($sp)
  .L802D7E6C_31BFBC:
    /* 31BFBC 802D7E6C 8FBF003C */  lw         $ra, 0x3C($sp)
  .L802D7E70_31BFC0:
    /* 31BFC0 802D7E70 27BD0060 */  addiu      $sp, $sp, 0x60
    /* 31BFC4 802D7E74 03E00008 */  jr         $ra
    /* 31BFC8 802D7E78 00000000 */   nop
endlabel func_802D7C1C_31BD6C
