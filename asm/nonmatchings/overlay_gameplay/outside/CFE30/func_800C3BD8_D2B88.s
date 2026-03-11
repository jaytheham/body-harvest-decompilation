nonmatching func_800C3BD8_D2B88, 0x1B0

glabel func_800C3BD8_D2B88
    /* D2B88 800C3BD8 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* D2B8C 800C3BDC AFBF0014 */  sw         $ra, 0x14($sp)
    /* D2B90 800C3BE0 AFA40018 */  sw         $a0, 0x18($sp)
    /* D2B94 800C3BE4 AFA5001C */  sw         $a1, 0x1C($sp)
    /* D2B98 800C3BE8 AFA60020 */  sw         $a2, 0x20($sp)
    /* D2B9C 800C3BEC AFA70024 */  sw         $a3, 0x24($sp)
    /* D2BA0 800C3BF0 24050001 */  addiu      $a1, $zero, 0x1
    /* D2BA4 800C3BF4 0C030675 */  jal        func_800C19D4_D0984
    /* D2BA8 800C3BF8 2404000C */   addiu     $a0, $zero, 0xC
    /* D2BAC 800C3BFC 00025C00 */  sll        $t3, $v0, 16
    /* D2BB0 800C3C00 000B7403 */  sra        $t6, $t3, 16
    /* D2BB4 800C3C04 2401FFFD */  addiu      $at, $zero, -0x3
    /* D2BB8 800C3C08 01C05825 */  or         $t3, $t6, $zero
    /* D2BBC 800C3C0C 10410059 */  beq        $v0, $at, .L800C3D74_D2D24
    /* D2BC0 800C3C10 97A60026 */   lhu       $a2, 0x26($sp)
    /* D2BC4 800C3C14 2405001C */  addiu      $a1, $zero, 0x1C
    /* D2BC8 800C3C18 00450019 */  multu      $v0, $a1
    /* D2BCC 800C3C1C 3C048015 */  lui        $a0, %hi(D_80154318)
    /* D2BD0 800C3C20 24844318 */  addiu      $a0, $a0, %lo(D_80154318)
    /* D2BD4 800C3C24 87B8001A */  lh         $t8, 0x1A($sp)
    /* D2BD8 800C3C28 87B9001E */  lh         $t9, 0x1E($sp)
    /* D2BDC 800C3C2C 87AE0022 */  lh         $t6, 0x22($sp)
    /* D2BE0 800C3C30 93AC002F */  lbu        $t4, 0x2F($sp)
    /* D2BE4 800C3C34 93AD0033 */  lbu        $t5, 0x33($sp)
    /* D2BE8 800C3C38 93BF0037 */  lbu        $ra, 0x37($sp)
    /* D2BEC 800C3C3C 28C10010 */  slti       $at, $a2, 0x10
    /* D2BF0 800C3C40 00007812 */  mflo       $t7
    /* D2BF4 800C3C44 008F3821 */  addu       $a3, $a0, $t7
    /* D2BF8 800C3C48 84E30004 */  lh         $v1, 0x4($a3)
    /* D2BFC 800C3C4C A4F80008 */  sh         $t8, 0x8($a3)
    /* D2C00 800C3C50 A4F9000A */  sh         $t9, 0xA($a3)
    /* D2C04 800C3C54 00650019 */  multu      $v1, $a1
    /* D2C08 800C3C58 A4EE000C */  sh         $t6, 0xC($a3)
    /* D2C0C 800C3C5C 00C04025 */  or         $t0, $a2, $zero
    /* D2C10 800C3C60 24190008 */  addiu      $t9, $zero, 0x8
    /* D2C14 800C3C64 01802825 */  or         $a1, $t4, $zero
    /* D2C18 800C3C68 00007812 */  mflo       $t7
    /* D2C1C 800C3C6C 008F4821 */  addu       $t1, $a0, $t7
    /* D2C20 800C3C70 A120000C */  sb         $zero, 0xC($t1)
    /* D2C24 800C3C74 A0EC000E */  sb         $t4, 0xE($a3)
    /* D2C28 800C3C78 A0ED000F */  sb         $t5, 0xF($a3)
    /* D2C2C 800C3C7C A0FF0010 */  sb         $ra, 0x10($a3)
    /* D2C30 800C3C80 10200002 */  beqz       $at, .L800C3C8C_D2C3C
    /* D2C34 800C3C84 97AA002A */   lhu       $t2, 0x2A($sp)
    /* D2C38 800C3C88 24080010 */  addiu      $t0, $zero, 0x10
  .L800C3C8C_D2C3C:
    /* D2C3C 800C3C8C 29410012 */  slti       $at, $t2, 0x12
    /* D2C40 800C3C90 10200003 */  beqz       $at, .L800C3CA0_D2C50
    /* D2C44 800C3C94 01401825 */   or        $v1, $t2, $zero
    /* D2C48 800C3C98 240A0012 */  addiu      $t2, $zero, 0x12
    /* D2C4C 800C3C9C 24030012 */  addiu      $v1, $zero, 0x12
  .L800C3CA0_D2C50:
    /* D2C50 800C3CA0 3401FFFF */  ori        $at, $zero, 0xFFFF
    /* D2C54 800C3CA4 14610003 */  bne        $v1, $at, .L800C3CB4_D2C64
    /* D2C58 800C3CA8 00000000 */   nop
    /* D2C5C 800C3CAC 10000006 */  b          .L800C3CC8_D2C78
    /* D2C60 800C3CB0 A4E80002 */   sh        $t0, 0x2($a3)
  .L800C3CB4_D2C64:
    /* D2C64 800C3CB4 05010003 */  bgez       $t0, .L800C3CC4_D2C74
    /* D2C68 800C3CB8 0008C0C3 */   sra       $t8, $t0, 3
    /* D2C6C 800C3CBC 25010007 */  addiu      $at, $t0, 0x7
    /* D2C70 800C3CC0 0001C0C3 */  sra        $t8, $at, 3
  .L800C3CC4_D2C74:
    /* D2C74 800C3CC4 A4F80002 */  sh         $t8, 0x2($a3)
  .L800C3CC8_D2C78:
    /* D2C78 800C3CC8 25230008 */  addiu      $v1, $t1, 0x8
    /* D2C7C 800C3CCC A4680002 */  sh         $t0, 0x2($v1)
    /* D2C80 800C3CD0 A46A0000 */  sh         $t2, 0x0($v1)
    /* D2C84 800C3CD4 A0790005 */  sb         $t9, 0x5($v1)
    /* D2C88 800C3CD8 04A10003 */  bgez       $a1, .L800C3CE8_D2C98
    /* D2C8C 800C3CDC 00057043 */   sra       $t6, $a1, 1
    /* D2C90 800C3CE0 24A10001 */  addiu      $at, $a1, 0x1
    /* D2C94 800C3CE4 00017043 */  sra        $t6, $at, 1
  .L800C3CE8_D2C98:
    /* D2C98 800C3CE8 31CF00FF */  andi       $t7, $t6, 0xFF
    /* D2C9C 800C3CEC 01E53021 */  addu       $a2, $t7, $a1
    /* D2CA0 800C3CF0 30D8FFFF */  andi       $t8, $a2, 0xFFFF
    /* D2CA4 800C3CF4 2B010100 */  slti       $at, $t8, 0x100
    /* D2CA8 800C3CF8 14200002 */  bnez       $at, .L800C3D04_D2CB4
    /* D2CAC 800C3CFC 30C4FFFF */   andi      $a0, $a2, 0xFFFF
    /* D2CB0 800C3D00 240400FF */  addiu      $a0, $zero, 0xFF
  .L800C3D04_D2CB4:
    /* D2CB4 800C3D04 01A01825 */  or         $v1, $t5, $zero
    /* D2CB8 800C3D08 24E60008 */  addiu      $a2, $a3, 0x8
    /* D2CBC 800C3D0C A0C40009 */  sb         $a0, 0x9($a2)
    /* D2CC0 800C3D10 04610003 */  bgez       $v1, .L800C3D20_D2CD0
    /* D2CC4 800C3D14 0003C843 */   sra       $t9, $v1, 1
    /* D2CC8 800C3D18 24610001 */  addiu      $at, $v1, 0x1
    /* D2CCC 800C3D1C 0001C843 */  sra        $t9, $at, 1
  .L800C3D20_D2CD0:
    /* D2CD0 800C3D20 332E00FF */  andi       $t6, $t9, 0xFF
    /* D2CD4 800C3D24 01C32821 */  addu       $a1, $t6, $v1
    /* D2CD8 800C3D28 30AFFFFF */  andi       $t7, $a1, 0xFFFF
    /* D2CDC 800C3D2C 29E10100 */  slti       $at, $t7, 0x100
    /* D2CE0 800C3D30 14200002 */  bnez       $at, .L800C3D3C_D2CEC
    /* D2CE4 800C3D34 30A4FFFF */   andi      $a0, $a1, 0xFFFF
    /* D2CE8 800C3D38 240400FF */  addiu      $a0, $zero, 0xFF
  .L800C3D3C_D2CEC:
    /* D2CEC 800C3D3C 03E01825 */  or         $v1, $ra, $zero
    /* D2CF0 800C3D40 A0C4000A */  sb         $a0, 0xA($a2)
    /* D2CF4 800C3D44 04610003 */  bgez       $v1, .L800C3D54_D2D04
    /* D2CF8 800C3D48 0003C043 */   sra       $t8, $v1, 1
    /* D2CFC 800C3D4C 24610001 */  addiu      $at, $v1, 0x1
    /* D2D00 800C3D50 0001C043 */  sra        $t8, $at, 1
  .L800C3D54_D2D04:
    /* D2D04 800C3D54 331900FF */  andi       $t9, $t8, 0xFF
    /* D2D08 800C3D58 03232821 */  addu       $a1, $t9, $v1
    /* D2D0C 800C3D5C 30AEFFFF */  andi       $t6, $a1, 0xFFFF
    /* D2D10 800C3D60 29C10100 */  slti       $at, $t6, 0x100
    /* D2D14 800C3D64 14200002 */  bnez       $at, .L800C3D70_D2D20
    /* D2D18 800C3D68 30A4FFFF */   andi      $a0, $a1, 0xFFFF
    /* D2D1C 800C3D6C 240400FF */  addiu      $a0, $zero, 0xFF
  .L800C3D70_D2D20:
    /* D2D20 800C3D70 A0C4000B */  sb         $a0, 0xB($a2)
  .L800C3D74_D2D24:
    /* D2D24 800C3D74 8FBF0014 */  lw         $ra, 0x14($sp)
    /* D2D28 800C3D78 27BD0018 */  addiu      $sp, $sp, 0x18
    /* D2D2C 800C3D7C 01601025 */  or         $v0, $t3, $zero
    /* D2D30 800C3D80 03E00008 */  jr         $ra
    /* D2D34 800C3D84 00000000 */   nop
endlabel func_800C3BD8_D2B88
