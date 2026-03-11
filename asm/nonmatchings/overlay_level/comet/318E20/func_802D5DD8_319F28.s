nonmatching func_802D5DD8_319F28, 0x14C

glabel func_802D5DD8_319F28
    /* 319F28 802D5DD8 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 319F2C 802D5DDC 3C0F802E */  lui        $t7, %hi(D_802E4F68)
    /* 319F30 802D5DE0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 319F34 802D5DE4 25EF4F68 */  addiu      $t7, $t7, %lo(D_802E4F68)
    /* 319F38 802D5DE8 99E10002 */  lwr        $at, 0x2($t7)
    /* 319F3C 802D5DEC 3C068015 */  lui        $a2, %hi(D_80157F8C)
    /* 319F40 802D5DF0 27AE0024 */  addiu      $t6, $sp, 0x24
    /* 319F44 802D5DF4 24C67F8C */  addiu      $a2, $a2, %lo(D_80157F8C)
    /* 319F48 802D5DF8 B9C10002 */  swr        $at, 0x2($t6)
    /* 319F4C 802D5DFC 84C40000 */  lh         $a0, 0x0($a2)
    /* 319F50 802D5E00 3C0A802E */  lui        $t2, %hi(D_802E4F6C)
    /* 319F54 802D5E04 8D4A4F6C */  lw         $t2, %lo(D_802E4F6C)($t2)
    /* 319F58 802D5E08 00801025 */  or         $v0, $a0, $zero
    /* 319F5C 802D5E0C 10800009 */  beqz       $a0, .L802D5E34_319F84
    /* 319F60 802D5E10 AFAA0020 */   sw        $t2, 0x20($sp)
    /* 319F64 802D5E14 24040001 */  addiu      $a0, $zero, 0x1
    /* 319F68 802D5E18 10440014 */  beq        $v0, $a0, .L802D5E6C_319FBC
    /* 319F6C 802D5E1C 3C088015 */   lui       $t0, %hi(D_80157F8E)
    /* 319F70 802D5E20 24010002 */  addiu      $at, $zero, 0x2
    /* 319F74 802D5E24 10410030 */  beq        $v0, $at, .L802D5EE8_31A038
    /* 319F78 802D5E28 3C0A8004 */   lui       $t2, %hi(currentLevel)
    /* 319F7C 802D5E2C 10000039 */  b          .L802D5F14_31A064
    /* 319F80 802D5E30 00001025 */   or        $v0, $zero, $zero
  .L802D5E34_319F84:
    /* 319F84 802D5E34 3C088015 */  lui        $t0, %hi(D_80157F8E)
    /* 319F88 802D5E38 240B03E8 */  addiu      $t3, $zero, 0x3E8
    /* 319F8C 802D5E3C 3C018003 */  lui        $at, %hi(D_800313FC)
    /* 319F90 802D5E40 25087F8E */  addiu      $t0, $t0, %lo(D_80157F8E)
    /* 319F94 802D5E44 A42B13FC */  sh         $t3, %lo(D_800313FC)($at)
    /* 319F98 802D5E48 85030000 */  lh         $v1, 0x0($t0)
    /* 319F9C 802D5E4C 248D0001 */  addiu      $t5, $a0, 0x1
    /* 319FA0 802D5E50 28620047 */  slti       $v0, $v1, 0x47
    /* 319FA4 802D5E54 246C0001 */  addiu      $t4, $v1, 0x1
    /* 319FA8 802D5E58 1440002D */  bnez       $v0, .L802D5F10_31A060
    /* 319FAC 802D5E5C A50C0000 */   sh        $t4, 0x0($t0)
    /* 319FB0 802D5E60 A5000000 */  sh         $zero, 0x0($t0)
    /* 319FB4 802D5E64 1000002A */  b          .L802D5F10_31A060
    /* 319FB8 802D5E68 A4CD0000 */   sh        $t5, 0x0($a2)
  .L802D5E6C_319FBC:
    /* 319FBC 802D5E6C 25087F8E */  addiu      $t0, $t0, %lo(D_80157F8E)
    /* 319FC0 802D5E70 85030000 */  lh         $v1, 0x0($t0)
    /* 319FC4 802D5E74 2405C43C */  addiu      $a1, $zero, -0x3BC4
    /* 319FC8 802D5E78 54830013 */  bnel       $a0, $v1, .L802D5EC8_31A018
    /* 319FCC 802D5E7C 28620079 */   slti      $v0, $v1, 0x79
    /* 319FD0 802D5E80 0C02E134 */  jal        func_800B84D0_C7480
    /* 319FD4 802D5E84 24041000 */   addiu     $a0, $zero, 0x1000
    /* 319FD8 802D5E88 00022A03 */  sra        $a1, $v0, 8
    /* 319FDC 802D5E8C 0005CC00 */  sll        $t9, $a1, 16
    /* 319FE0 802D5E90 00192C03 */  sra        $a1, $t9, 16
    /* 319FE4 802D5E94 24041000 */  addiu      $a0, $zero, 0x1000
    /* 319FE8 802D5E98 2406C43C */  addiu      $a2, $zero, -0x3BC4
    /* 319FEC 802D5E9C 0C035AB7 */  jal        func_800D6ADC_E5A8C
    /* 319FF0 802D5EA0 2407000C */   addiu     $a3, $zero, 0xC
    /* 319FF4 802D5EA4 3C04802E */  lui        $a0, %hi(D_802E7C36)
    /* 319FF8 802D5EA8 0C0B53B9 */  jal        func_802D4EE4_319034
    /* 319FFC 802D5EAC 84847C36 */   lh        $a0, %lo(D_802E7C36)($a0)
    /* 31A000 802D5EB0 3C088015 */  lui        $t0, %hi(D_80157F8E)
    /* 31A004 802D5EB4 25087F8E */  addiu      $t0, $t0, %lo(D_80157F8E)
    /* 31A008 802D5EB8 3C068015 */  lui        $a2, %hi(D_80157F8C)
    /* 31A00C 802D5EBC 24C67F8C */  addiu      $a2, $a2, %lo(D_80157F8C)
    /* 31A010 802D5EC0 85030000 */  lh         $v1, 0x0($t0)
    /* 31A014 802D5EC4 28620079 */  slti       $v0, $v1, 0x79
  .L802D5EC8_31A018:
    /* 31A018 802D5EC8 246E0001 */  addiu      $t6, $v1, 0x1
    /* 31A01C 802D5ECC 14400010 */  bnez       $v0, .L802D5F10_31A060
    /* 31A020 802D5ED0 A50E0000 */   sh        $t6, 0x0($t0)
    /* 31A024 802D5ED4 84CF0000 */  lh         $t7, 0x0($a2)
    /* 31A028 802D5ED8 A5000000 */  sh         $zero, 0x0($t0)
    /* 31A02C 802D5EDC 25E90001 */  addiu      $t1, $t7, 0x1
    /* 31A030 802D5EE0 1000000B */  b          .L802D5F10_31A060
    /* 31A034 802D5EE4 A4C90000 */   sh        $t1, 0x0($a2)
  .L802D5EE8_31A038:
    /* 31A038 802D5EE8 8D4A7F90 */  lw         $t2, %lo(currentLevel)($t2)
    /* 31A03C 802D5EEC 3C198003 */  lui        $t9, %hi(D_80031636)
    /* 31A040 802D5EF0 3C018003 */  lui        $at, %hi(D_800313FC)
    /* 31A044 802D5EF4 254CFFFF */  addiu      $t4, $t2, -0x1
    /* 31A048 802D5EF8 000C6880 */  sll        $t5, $t4, 2
    /* 31A04C 802D5EFC 032DC821 */  addu       $t9, $t9, $t5
    /* 31A050 802D5F00 87391636 */  lh         $t9, %lo(D_80031636)($t9)
    /* 31A054 802D5F04 24020001 */  addiu      $v0, $zero, 0x1
    /* 31A058 802D5F08 10000002 */  b          .L802D5F14_31A064
    /* 31A05C 802D5F0C A43913FC */   sh        $t9, %lo(D_800313FC)($at)
  .L802D5F10_31A060:
    /* 31A060 802D5F10 00001025 */  or         $v0, $zero, $zero
  .L802D5F14_31A064:
    /* 31A064 802D5F14 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 31A068 802D5F18 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 31A06C 802D5F1C 03E00008 */  jr         $ra
    /* 31A070 802D5F20 00000000 */   nop
endlabel func_802D5DD8_319F28
