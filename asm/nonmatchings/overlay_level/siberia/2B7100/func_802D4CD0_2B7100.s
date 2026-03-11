nonmatching func_802D4CD0_2B7100, 0xFC

glabel func_802D4CD0_2B7100
    /* 2B7100 802D4CD0 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 2B7104 802D4CD4 AFA5001C */  sw         $a1, 0x1C($sp)
    /* 2B7108 802D4CD8 28810014 */  slti       $at, $a0, 0x14
    /* 2B710C 802D4CDC 00802825 */  or         $a1, $a0, $zero
    /* 2B7110 802D4CE0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2B7114 802D4CE4 10200009 */  beqz       $at, .L802D4D0C_2B713C
    /* 2B7118 802D4CE8 AFA40018 */   sw        $a0, 0x18($sp)
    /* 2B711C 802D4CEC 00047080 */  sll        $t6, $a0, 2
    /* 2B7120 802D4CF0 3C19802E */  lui        $t9, %hi(D_802E0DF0)
    /* 2B7124 802D4CF4 032EC821 */  addu       $t9, $t9, $t6
    /* 2B7128 802D4CF8 8F390DF0 */  lw         $t9, %lo(D_802E0DF0)($t9)
    /* 2B712C 802D4CFC 0320F809 */  jalr       $t9
    /* 2B7130 802D4D00 00000000 */   nop
    /* 2B7134 802D4D04 1000002E */  b          .L802D4DC0_2B71F0
    /* 2B7138 802D4D08 8FBF0014 */   lw        $ra, 0x14($sp)
  .L802D4D0C_2B713C:
    /* 2B713C 802D4D0C 24010014 */  addiu      $at, $zero, 0x14
    /* 2B7140 802D4D10 10A10014 */  beq        $a1, $at, .L802D4D64_2B7194
    /* 2B7144 802D4D14 3C04800F */   lui       $a0, %hi(func_800F1134_1000E4)
    /* 2B7148 802D4D18 24010015 */  addiu      $at, $zero, 0x15
    /* 2B714C 802D4D1C 10A10017 */  beq        $a1, $at, .L802D4D7C_2B71AC
    /* 2B7150 802D4D20 3C04800F */   lui       $a0, %hi(func_800F1DDC_100D8C)
    /* 2B7154 802D4D24 2401001E */  addiu      $at, $zero, 0x1E
    /* 2B7158 802D4D28 10A10008 */  beq        $a1, $at, .L802D4D4C_2B717C
    /* 2B715C 802D4D2C 3C04802D */   lui       $a0, %hi(func_802D7398_2B97C8)
    /* 2B7160 802D4D30 24010044 */  addiu      $at, $zero, 0x44
    /* 2B7164 802D4D34 10A1001B */  beq        $a1, $at, .L802D4DA4_2B71D4
    /* 2B7168 802D4D38 24010045 */   addiu     $at, $zero, 0x45
    /* 2B716C 802D4D3C 10A10015 */  beq        $a1, $at, .L802D4D94_2B71C4
    /* 2B7170 802D4D40 3C04802E */   lui       $a0, %hi(D_802E2E90)
    /* 2B7174 802D4D44 1000001B */  b          .L802D4DB4_2B71E4
    /* 2B7178 802D4D48 00000000 */   nop
  .L802D4D4C_2B717C:
    /* 2B717C 802D4D4C 24847398 */  addiu      $a0, $a0, %lo(func_802D7398_2B97C8)
    /* 2B7180 802D4D50 2405001E */  addiu      $a1, $zero, 0x1E
    /* 2B7184 802D4D54 0C03BFAD */  jal        func_800EFEB4_FEE64
    /* 2B7188 802D4D58 00003025 */   or        $a2, $zero, $zero
    /* 2B718C 802D4D5C 10000018 */  b          .L802D4DC0_2B71F0
    /* 2B7190 802D4D60 8FBF0014 */   lw        $ra, 0x14($sp)
  .L802D4D64_2B7194:
    /* 2B7194 802D4D64 24841134 */  addiu      $a0, $a0, %lo(func_800F1134_1000E4)
    /* 2B7198 802D4D68 2405001A */  addiu      $a1, $zero, 0x1A
    /* 2B719C 802D4D6C 0C03BFAD */  jal        func_800EFEB4_FEE64
    /* 2B71A0 802D4D70 00003025 */   or        $a2, $zero, $zero
    /* 2B71A4 802D4D74 10000012 */  b          .L802D4DC0_2B71F0
    /* 2B71A8 802D4D78 8FBF0014 */   lw        $ra, 0x14($sp)
  .L802D4D7C_2B71AC:
    /* 2B71AC 802D4D7C 24841DDC */  addiu      $a0, $a0, %lo(func_800F1DDC_100D8C)
    /* 2B71B0 802D4D80 24050015 */  addiu      $a1, $zero, 0x15
    /* 2B71B4 802D4D84 0C03BFAD */  jal        func_800EFEB4_FEE64
    /* 2B71B8 802D4D88 24060001 */   addiu     $a2, $zero, 0x1
    /* 2B71BC 802D4D8C 1000000C */  b          .L802D4DC0_2B71F0
    /* 2B71C0 802D4D90 8FBF0014 */   lw        $ra, 0x14($sp)
  .L802D4D94_2B71C4:
    /* 2B71C4 802D4D94 0C0B5373 */  jal        func_802D4DCC_2B71FC
    /* 2B71C8 802D4D98 00000000 */   nop
    /* 2B71CC 802D4D9C 10000008 */  b          .L802D4DC0_2B71F0
    /* 2B71D0 802D4DA0 8FBF0014 */   lw        $ra, 0x14($sp)
  .L802D4DA4_2B71D4:
    /* 2B71D4 802D4DA4 0C001DA4 */  jal        func_80007690_8290
    /* 2B71D8 802D4DA8 00000000 */   nop
    /* 2B71DC 802D4DAC 10000004 */  b          .L802D4DC0_2B71F0
    /* 2B71E0 802D4DB0 8FBF0014 */   lw        $ra, 0x14($sp)
  .L802D4DB4_2B71E4:
    /* 2B71E4 802D4DB4 0C00731B */  jal        osSyncPrintf
    /* 2B71E8 802D4DB8 24842E90 */   addiu     $a0, $a0, %lo(D_802E2E90)
    /* 2B71EC 802D4DBC 8FBF0014 */  lw         $ra, 0x14($sp)
  .L802D4DC0_2B71F0:
    /* 2B71F0 802D4DC0 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 2B71F4 802D4DC4 03E00008 */  jr         $ra
    /* 2B71F8 802D4DC8 00000000 */   nop
endlabel func_802D4CD0_2B7100
