nonmatching func_800C8C7C_D7C2C, 0x194

glabel func_800C8C7C_D7C2C
    /* D7C2C 800C8C7C 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* D7C30 800C8C80 87AE0032 */  lh         $t6, 0x32($sp)
    /* D7C34 800C8C84 2401FFFD */  addiu      $at, $zero, -0x3
    /* D7C38 800C8C88 AFBF001C */  sw         $ra, 0x1C($sp)
    /* D7C3C 800C8C8C AFB00018 */  sw         $s0, 0x18($sp)
    /* D7C40 800C8C90 AFA40020 */  sw         $a0, 0x20($sp)
    /* D7C44 800C8C94 AFA50024 */  sw         $a1, 0x24($sp)
    /* D7C48 800C8C98 AFA60028 */  sw         $a2, 0x28($sp)
    /* D7C4C 800C8C9C 15C10003 */  bne        $t6, $at, .L800C8CAC_D7C5C
    /* D7C50 800C8CA0 AFA7002C */   sw        $a3, 0x2C($sp)
    /* D7C54 800C8CA4 10000055 */  b          .L800C8DFC_D7DAC
    /* D7C58 800C8CA8 240200FB */   addiu     $v0, $zero, 0xFB
  .L800C8CAC_D7C5C:
    /* D7C5C 800C8CAC 0C030535 */  jal        func_800C14D4_D0484
    /* D7C60 800C8CB0 24040003 */   addiu     $a0, $zero, 0x3
    /* D7C64 800C8CB4 240100FB */  addiu      $at, $zero, 0xFB
    /* D7C68 800C8CB8 1041004F */  beq        $v0, $at, .L800C8DF8_D7DA8
    /* D7C6C 800C8CBC 305000FF */   andi      $s0, $v0, 0xFF
    /* D7C70 800C8CC0 320400FF */  andi       $a0, $s0, 0xFF
    /* D7C74 800C8CC4 0C0305ED */  jal        func_800C17B4_D0764
    /* D7C78 800C8CC8 00002825 */   or        $a1, $zero, $zero
    /* D7C7C 800C8CCC 2401FFFD */  addiu      $at, $zero, -0x3
    /* D7C80 800C8CD0 14410005 */  bne        $v0, $at, .L800C8CE8_D7C98
    /* D7C84 800C8CD4 87A70032 */   lh        $a3, 0x32($sp)
    /* D7C88 800C8CD8 0C0304E1 */  jal        func_800C1384_D0334
    /* D7C8C 800C8CDC 320400FF */   andi      $a0, $s0, 0xFF
    /* D7C90 800C8CE0 10000045 */  b          .L800C8DF8_D7DA8
    /* D7C94 800C8CE4 241000FB */   addiu     $s0, $zero, 0xFB
  .L800C8CE8_D7C98:
    /* D7C98 800C8CE8 2401FFF8 */  addiu      $at, $zero, -0x8
    /* D7C9C 800C8CEC 14E10012 */  bne        $a3, $at, .L800C8D38_D7CE8
    /* D7CA0 800C8CF0 2406001C */   addiu     $a2, $zero, 0x1C
    /* D7CA4 800C8CF4 00027C00 */  sll        $t7, $v0, 16
    /* D7CA8 800C8CF8 2406001C */  addiu      $a2, $zero, 0x1C
    /* D7CAC 800C8CFC 000FC403 */  sra        $t8, $t7, 16
    /* D7CB0 800C8D00 03060019 */  multu      $t8, $a2
    /* D7CB4 800C8D04 3C058015 */  lui        $a1, %hi(D_80154318)
    /* D7CB8 800C8D08 24A54318 */  addiu      $a1, $a1, %lo(D_80154318)
    /* D7CBC 800C8D0C 240400C8 */  addiu      $a0, $zero, 0xC8
    /* D7CC0 800C8D10 24070064 */  addiu      $a3, $zero, 0x64
    /* D7CC4 800C8D14 0000C812 */  mflo       $t9
    /* D7CC8 800C8D18 00B91821 */  addu       $v1, $a1, $t9
    /* D7CCC 800C8D1C A064000E */  sb         $a0, 0xE($v1)
    /* D7CD0 800C8D20 A064000F */  sb         $a0, 0xF($v1)
    /* D7CD4 800C8D24 A0640010 */  sb         $a0, 0x10($v1)
    /* D7CD8 800C8D28 A0670011 */  sb         $a3, 0x11($v1)
    /* D7CDC 800C8D2C A0670012 */  sb         $a3, 0x12($v1)
    /* D7CE0 800C8D30 10000024 */  b          .L800C8DC4_D7D74
    /* D7CE4 800C8D34 A0670013 */   sb        $a3, 0x13($v1)
  .L800C8D38_D7CE8:
    /* D7CE8 800C8D38 00024400 */  sll        $t0, $v0, 16
    /* D7CEC 800C8D3C 00084C03 */  sra        $t1, $t0, 16
    /* D7CF0 800C8D40 01260019 */  multu      $t1, $a2
    /* D7CF4 800C8D44 3C058015 */  lui        $a1, %hi(D_80154318)
    /* D7CF8 800C8D48 24A54318 */  addiu      $a1, $a1, %lo(D_80154318)
    /* D7CFC 800C8D4C 00005012 */  mflo       $t2
    /* D7D00 800C8D50 00AA1821 */  addu       $v1, $a1, $t2
    /* D7D04 800C8D54 00000000 */  nop
    /* D7D08 800C8D58 00E60019 */  multu      $a3, $a2
    /* D7D0C 800C8D5C 00005812 */  mflo       $t3
    /* D7D10 800C8D60 00AB2021 */  addu       $a0, $a1, $t3
    /* D7D14 800C8D64 908C000E */  lbu        $t4, 0xE($a0)
    /* D7D18 800C8D68 A06C000E */  sb         $t4, 0xE($v1)
    /* D7D1C 800C8D6C 908D000F */  lbu        $t5, 0xF($a0)
    /* D7D20 800C8D70 A06D000F */  sb         $t5, 0xF($v1)
    /* D7D24 800C8D74 908E0010 */  lbu        $t6, 0x10($a0)
    /* D7D28 800C8D78 A06E0010 */  sb         $t6, 0x10($v1)
    /* D7D2C 800C8D7C 848F0004 */  lh         $t7, 0x4($a0)
    /* D7D30 800C8D80 01E60019 */  multu      $t7, $a2
    /* D7D34 800C8D84 0000C012 */  mflo       $t8
    /* D7D38 800C8D88 00B8C821 */  addu       $t9, $a1, $t8
    /* D7D3C 800C8D8C 93280008 */  lbu        $t0, 0x8($t9)
    /* D7D40 800C8D90 A0680011 */  sb         $t0, 0x11($v1)
    /* D7D44 800C8D94 84890004 */  lh         $t1, 0x4($a0)
    /* D7D48 800C8D98 01260019 */  multu      $t1, $a2
    /* D7D4C 800C8D9C 00005012 */  mflo       $t2
    /* D7D50 800C8DA0 00AA5821 */  addu       $t3, $a1, $t2
    /* D7D54 800C8DA4 916C0009 */  lbu        $t4, 0x9($t3)
    /* D7D58 800C8DA8 A06C0012 */  sb         $t4, 0x12($v1)
    /* D7D5C 800C8DAC 848D0004 */  lh         $t5, 0x4($a0)
    /* D7D60 800C8DB0 01A60019 */  multu      $t5, $a2
    /* D7D64 800C8DB4 00007012 */  mflo       $t6
    /* D7D68 800C8DB8 00AE7821 */  addu       $t7, $a1, $t6
    /* D7D6C 800C8DBC 91F8000A */  lbu        $t8, 0xA($t7)
    /* D7D70 800C8DC0 A0780013 */  sb         $t8, 0x13($v1)
  .L800C8DC4_D7D74:
    /* D7D74 800C8DC4 87B90022 */  lh         $t9, 0x22($sp)
    /* D7D78 800C8DC8 87A80026 */  lh         $t0, 0x26($sp)
    /* D7D7C 800C8DCC 87A9002A */  lh         $t1, 0x2A($sp)
    /* D7D80 800C8DD0 00105880 */  sll        $t3, $s0, 2
    /* D7D84 800C8DD4 87AA002E */  lh         $t2, 0x2E($sp)
    /* D7D88 800C8DD8 01705823 */  subu       $t3, $t3, $s0
    /* D7D8C 800C8DDC 000B5880 */  sll        $t3, $t3, 2
    /* D7D90 800C8DE0 3C018015 */  lui        $at, %hi(D_8015408A)
    /* D7D94 800C8DE4 002B0821 */  addu       $at, $at, $t3
    /* D7D98 800C8DE8 A4790008 */  sh         $t9, 0x8($v1)
    /* D7D9C 800C8DEC A468000A */  sh         $t0, 0xA($v1)
    /* D7DA0 800C8DF0 A469000C */  sh         $t1, 0xC($v1)
    /* D7DA4 800C8DF4 A42A408A */  sh         $t2, %lo(D_8015408A)($at)
  .L800C8DF8_D7DA8:
    /* D7DA8 800C8DF8 02001025 */  or         $v0, $s0, $zero
  .L800C8DFC_D7DAC:
    /* D7DAC 800C8DFC 8FBF001C */  lw         $ra, 0x1C($sp)
    /* D7DB0 800C8E00 8FB00018 */  lw         $s0, 0x18($sp)
    /* D7DB4 800C8E04 27BD0020 */  addiu      $sp, $sp, 0x20
    /* D7DB8 800C8E08 03E00008 */  jr         $ra
    /* D7DBC 800C8E0C 00000000 */   nop
endlabel func_800C8C7C_D7C2C
