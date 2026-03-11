nonmatching func_800A8C44_B7BF4, 0x1D4

glabel func_800A8C44_B7BF4
    /* B7BF4 800A8C44 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* B7BF8 800A8C48 AFBF0014 */  sw         $ra, 0x14($sp)
    /* B7BFC 800A8C4C AFA40020 */  sw         $a0, 0x20($sp)
    /* B7C00 800A8C50 AFA50024 */  sw         $a1, 0x24($sp)
    /* B7C04 800A8C54 0C000E38 */  jal        func_800038E0_44E0
    /* B7C08 800A8C58 AFA60028 */   sw        $a2, 0x28($sp)
    /* B7C0C 800A8C5C 24010064 */  addiu      $at, $zero, 0x64
    /* B7C10 800A8C60 0041001A */  div        $zero, $v0, $at
    /* B7C14 800A8C64 00007810 */  mfhi       $t7
    /* B7C18 800A8C68 A7AF001C */  sh         $t7, 0x1C($sp)
    /* B7C1C 800A8C6C 0C000E38 */  jal        func_800038E0_44E0
    /* B7C20 800A8C70 00000000 */   nop
    /* B7C24 800A8C74 87BF001C */  lh         $ra, 0x1C($sp)
    /* B7C28 800A8C78 00003025 */  or         $a2, $zero, $zero
    /* B7C2C 800A8C7C 00001825 */  or         $v1, $zero, $zero
    /* B7C30 800A8C80 2BE1001E */  slti       $at, $ra, 0x1E
    /* B7C34 800A8C84 10200047 */  beqz       $at, .L800A8DA4_B7D54
    /* B7C38 800A8C88 240D000A */   addiu     $t5, $zero, 0xA
    /* B7C3C 800A8C8C 24010007 */  addiu      $at, $zero, 0x7
    /* B7C40 800A8C90 0041001A */  div        $zero, $v0, $at
    /* B7C44 800A8C94 00003810 */  mfhi       $a3
    /* B7C48 800A8C98 30F800FF */  andi       $t8, $a3, 0xFF
    /* B7C4C 800A8C9C 3C098005 */  lui        $t1, %hi(weaponSlots)
    /* B7C50 800A8CA0 25298138 */  addiu      $t1, $t1, %lo(weaponSlots)
    /* B7C54 800A8CA4 03003825 */  or         $a3, $t8, $zero
    /* B7C58 800A8CA8 240C0004 */  addiu      $t4, $zero, 0x4
    /* B7C5C 800A8CAC 240B0005 */  addiu      $t3, $zero, 0x5
    /* B7C60 800A8CB0 240A0006 */  addiu      $t2, $zero, 0x6
    /* B7C64 800A8CB4 24080003 */  addiu      $t0, $zero, 0x3
  .L800A8CB8_B7C68:
    /* B7C68 800A8CB8 00671021 */  addu       $v0, $v1, $a3
    /* B7C6C 800A8CBC 304500FF */  andi       $a1, $v0, 0xFF
    /* B7C70 800A8CC0 28A10007 */  slti       $at, $a1, 0x7
    /* B7C74 800A8CC4 14200004 */  bnez       $at, .L800A8CD8_B7C88
    /* B7C78 800A8CC8 304400FF */   andi      $a0, $v0, 0xFF
    /* B7C7C 800A8CCC 24A4FFF9 */  addiu      $a0, $a1, -0x7
    /* B7C80 800A8CD0 309900FF */  andi       $t9, $a0, 0xFF
    /* B7C84 800A8CD4 03202025 */  or         $a0, $t9, $zero
  .L800A8CD8_B7C88:
    /* B7C88 800A8CD8 01247021 */  addu       $t6, $t1, $a0
    /* B7C8C 800A8CDC 91C20000 */  lbu        $v0, 0x0($t6)
    /* B7C90 800A8CE0 24C60001 */  addiu      $a2, $a2, 0x1
    /* B7C94 800A8CE4 30C300FF */  andi       $v1, $a2, 0xFF
    /* B7C98 800A8CE8 15020008 */  bne        $t0, $v0, .L800A8D0C_B7CBC
    /* B7C9C 800A8CEC 28610007 */   slti      $at, $v1, 0x7
    /* B7CA0 800A8CF0 87A40022 */  lh         $a0, 0x22($sp)
    /* B7CA4 800A8CF4 87A50026 */  lh         $a1, 0x26($sp)
    /* B7CA8 800A8CF8 87A6002A */  lh         $a2, 0x2A($sp)
    /* B7CAC 800A8CFC 0C02A29A */  jal        func_800A8A68_B7A18
    /* B7CB0 800A8D00 2407000B */   addiu     $a3, $zero, 0xB
    /* B7CB4 800A8D04 10000041 */  b          .L800A8E0C_B7DBC
    /* B7CB8 800A8D08 8FBF0014 */   lw        $ra, 0x14($sp)
  .L800A8D0C_B7CBC:
    /* B7CBC 800A8D0C 15420008 */  bne        $t2, $v0, .L800A8D30_B7CE0
    /* B7CC0 800A8D10 00000000 */   nop
    /* B7CC4 800A8D14 87A40022 */  lh         $a0, 0x22($sp)
    /* B7CC8 800A8D18 87A50026 */  lh         $a1, 0x26($sp)
    /* B7CCC 800A8D1C 87A6002A */  lh         $a2, 0x2A($sp)
    /* B7CD0 800A8D20 0C02A29A */  jal        func_800A8A68_B7A18
    /* B7CD4 800A8D24 2407000D */   addiu     $a3, $zero, 0xD
    /* B7CD8 800A8D28 10000038 */  b          .L800A8E0C_B7DBC
    /* B7CDC 800A8D2C 8FBF0014 */   lw        $ra, 0x14($sp)
  .L800A8D30_B7CE0:
    /* B7CE0 800A8D30 15620008 */  bne        $t3, $v0, .L800A8D54_B7D04
    /* B7CE4 800A8D34 00000000 */   nop
    /* B7CE8 800A8D38 87A40022 */  lh         $a0, 0x22($sp)
    /* B7CEC 800A8D3C 87A50026 */  lh         $a1, 0x26($sp)
    /* B7CF0 800A8D40 87A6002A */  lh         $a2, 0x2A($sp)
    /* B7CF4 800A8D44 0C02A29A */  jal        func_800A8A68_B7A18
    /* B7CF8 800A8D48 24070011 */   addiu     $a3, $zero, 0x11
    /* B7CFC 800A8D4C 1000002F */  b          .L800A8E0C_B7DBC
    /* B7D00 800A8D50 8FBF0014 */   lw        $ra, 0x14($sp)
  .L800A8D54_B7D04:
    /* B7D04 800A8D54 15820008 */  bne        $t4, $v0, .L800A8D78_B7D28
    /* B7D08 800A8D58 00000000 */   nop
    /* B7D0C 800A8D5C 87A40022 */  lh         $a0, 0x22($sp)
    /* B7D10 800A8D60 87A50026 */  lh         $a1, 0x26($sp)
    /* B7D14 800A8D64 87A6002A */  lh         $a2, 0x2A($sp)
    /* B7D18 800A8D68 0C02A29A */  jal        func_800A8A68_B7A18
    /* B7D1C 800A8D6C 24070001 */   addiu     $a3, $zero, 0x1
    /* B7D20 800A8D70 10000026 */  b          .L800A8E0C_B7DBC
    /* B7D24 800A8D74 8FBF0014 */   lw        $ra, 0x14($sp)
  .L800A8D78_B7D28:
    /* B7D28 800A8D78 15A20008 */  bne        $t5, $v0, .L800A8D9C_B7D4C
    /* B7D2C 800A8D7C 00000000 */   nop
    /* B7D30 800A8D80 87A40022 */  lh         $a0, 0x22($sp)
    /* B7D34 800A8D84 87A50026 */  lh         $a1, 0x26($sp)
    /* B7D38 800A8D88 87A6002A */  lh         $a2, 0x2A($sp)
    /* B7D3C 800A8D8C 0C02A29A */  jal        func_800A8A68_B7A18
    /* B7D40 800A8D90 2407000F */   addiu     $a3, $zero, 0xF
    /* B7D44 800A8D94 1000001D */  b          .L800A8E0C_B7DBC
    /* B7D48 800A8D98 8FBF0014 */   lw        $ra, 0x14($sp)
  .L800A8D9C_B7D4C:
    /* B7D4C 800A8D9C 1420FFC6 */  bnez       $at, .L800A8CB8_B7C68
    /* B7D50 800A8DA0 00603025 */   or        $a2, $v1, $zero
  .L800A8DA4_B7D54:
    /* B7D54 800A8DA4 2BE1004B */  slti       $at, $ra, 0x4B
    /* B7D58 800A8DA8 10200007 */  beqz       $at, .L800A8DC8_B7D78
    /* B7D5C 800A8DAC 87A40022 */   lh        $a0, 0x22($sp)
    /* B7D60 800A8DB0 87A50026 */  lh         $a1, 0x26($sp)
    /* B7D64 800A8DB4 87A6002A */  lh         $a2, 0x2A($sp)
    /* B7D68 800A8DB8 0C02A29A */  jal        func_800A8A68_B7A18
    /* B7D6C 800A8DBC 24070001 */   addiu     $a3, $zero, 0x1
    /* B7D70 800A8DC0 10000012 */  b          .L800A8E0C_B7DBC
    /* B7D74 800A8DC4 8FBF0014 */   lw        $ra, 0x14($sp)
  .L800A8DC8_B7D78:
    /* B7D78 800A8DC8 2BE10061 */  slti       $at, $ra, 0x61
    /* B7D7C 800A8DCC 10200007 */  beqz       $at, .L800A8DEC_B7D9C
    /* B7D80 800A8DD0 87A40022 */   lh        $a0, 0x22($sp)
    /* B7D84 800A8DD4 87A50026 */  lh         $a1, 0x26($sp)
    /* B7D88 800A8DD8 87A6002A */  lh         $a2, 0x2A($sp)
    /* B7D8C 800A8DDC 0C02A29A */  jal        func_800A8A68_B7A18
    /* B7D90 800A8DE0 24070010 */   addiu     $a3, $zero, 0x10
    /* B7D94 800A8DE4 10000009 */  b          .L800A8E0C_B7DBC
    /* B7D98 800A8DE8 8FBF0014 */   lw        $ra, 0x14($sp)
  .L800A8DEC_B7D9C:
    /* B7D9C 800A8DEC 2BE10061 */  slti       $at, $ra, 0x61
    /* B7DA0 800A8DF0 10200005 */  beqz       $at, .L800A8E08_B7DB8
    /* B7DA4 800A8DF4 87A40022 */   lh        $a0, 0x22($sp)
    /* B7DA8 800A8DF8 87A50026 */  lh         $a1, 0x26($sp)
    /* B7DAC 800A8DFC 87A6002A */  lh         $a2, 0x2A($sp)
    /* B7DB0 800A8E00 0C02A29A */  jal        func_800A8A68_B7A18
    /* B7DB4 800A8E04 2407000A */   addiu     $a3, $zero, 0xA
  .L800A8E08_B7DB8:
    /* B7DB8 800A8E08 8FBF0014 */  lw         $ra, 0x14($sp)
  .L800A8E0C_B7DBC:
    /* B7DBC 800A8E0C 27BD0020 */  addiu      $sp, $sp, 0x20
    /* B7DC0 800A8E10 03E00008 */  jr         $ra
    /* B7DC4 800A8E14 00000000 */   nop
endlabel func_800A8C44_B7BF4
