nonmatching func_802D5F6C_31A0BC, 0x14C

glabel func_802D5F6C_31A0BC
    /* 31A0BC 802D5F6C 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 31A0C0 802D5F70 3C0F802E */  lui        $t7, %hi(D_802E4F70)
    /* 31A0C4 802D5F74 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 31A0C8 802D5F78 25EF4F70 */  addiu      $t7, $t7, %lo(D_802E4F70)
    /* 31A0CC 802D5F7C 99E10002 */  lwr        $at, 0x2($t7)
    /* 31A0D0 802D5F80 3C068015 */  lui        $a2, %hi(D_80157F8C)
    /* 31A0D4 802D5F84 27AE0024 */  addiu      $t6, $sp, 0x24
    /* 31A0D8 802D5F88 24C67F8C */  addiu      $a2, $a2, %lo(D_80157F8C)
    /* 31A0DC 802D5F8C B9C10002 */  swr        $at, 0x2($t6)
    /* 31A0E0 802D5F90 84C40000 */  lh         $a0, 0x0($a2)
    /* 31A0E4 802D5F94 3C0A802E */  lui        $t2, %hi(D_802E4F74)
    /* 31A0E8 802D5F98 8D4A4F74 */  lw         $t2, %lo(D_802E4F74)($t2)
    /* 31A0EC 802D5F9C 00801025 */  or         $v0, $a0, $zero
    /* 31A0F0 802D5FA0 10800009 */  beqz       $a0, .L802D5FC8_31A118
    /* 31A0F4 802D5FA4 AFAA0020 */   sw        $t2, 0x20($sp)
    /* 31A0F8 802D5FA8 24040001 */  addiu      $a0, $zero, 0x1
    /* 31A0FC 802D5FAC 10440014 */  beq        $v0, $a0, .L802D6000_31A150
    /* 31A100 802D5FB0 3C088015 */   lui       $t0, %hi(D_80157F8E)
    /* 31A104 802D5FB4 24010002 */  addiu      $at, $zero, 0x2
    /* 31A108 802D5FB8 10410030 */  beq        $v0, $at, .L802D607C_31A1CC
    /* 31A10C 802D5FBC 3C0A8004 */   lui       $t2, %hi(currentLevel)
    /* 31A110 802D5FC0 10000039 */  b          .L802D60A8_31A1F8
    /* 31A114 802D5FC4 00001025 */   or        $v0, $zero, $zero
  .L802D5FC8_31A118:
    /* 31A118 802D5FC8 3C088015 */  lui        $t0, %hi(D_80157F8E)
    /* 31A11C 802D5FCC 240B03E8 */  addiu      $t3, $zero, 0x3E8
    /* 31A120 802D5FD0 3C018003 */  lui        $at, %hi(D_800313FC)
    /* 31A124 802D5FD4 25087F8E */  addiu      $t0, $t0, %lo(D_80157F8E)
    /* 31A128 802D5FD8 A42B13FC */  sh         $t3, %lo(D_800313FC)($at)
    /* 31A12C 802D5FDC 85030000 */  lh         $v1, 0x0($t0)
    /* 31A130 802D5FE0 248D0001 */  addiu      $t5, $a0, 0x1
    /* 31A134 802D5FE4 28620047 */  slti       $v0, $v1, 0x47
    /* 31A138 802D5FE8 246C0001 */  addiu      $t4, $v1, 0x1
    /* 31A13C 802D5FEC 1440002D */  bnez       $v0, .L802D60A4_31A1F4
    /* 31A140 802D5FF0 A50C0000 */   sh        $t4, 0x0($t0)
    /* 31A144 802D5FF4 A5000000 */  sh         $zero, 0x0($t0)
    /* 31A148 802D5FF8 1000002A */  b          .L802D60A4_31A1F4
    /* 31A14C 802D5FFC A4CD0000 */   sh        $t5, 0x0($a2)
  .L802D6000_31A150:
    /* 31A150 802D6000 25087F8E */  addiu      $t0, $t0, %lo(D_80157F8E)
    /* 31A154 802D6004 85030000 */  lh         $v1, 0x0($t0)
    /* 31A158 802D6008 24053840 */  addiu      $a1, $zero, 0x3840
    /* 31A15C 802D600C 54830013 */  bnel       $a0, $v1, .L802D605C_31A1AC
    /* 31A160 802D6010 28620079 */   slti      $v0, $v1, 0x79
    /* 31A164 802D6014 0C02E134 */  jal        func_800B84D0_C7480
    /* 31A168 802D6018 24041000 */   addiu     $a0, $zero, 0x1000
    /* 31A16C 802D601C 00022A03 */  sra        $a1, $v0, 8
    /* 31A170 802D6020 0005CC00 */  sll        $t9, $a1, 16
    /* 31A174 802D6024 00192C03 */  sra        $a1, $t9, 16
    /* 31A178 802D6028 24041000 */  addiu      $a0, $zero, 0x1000
    /* 31A17C 802D602C 24063840 */  addiu      $a2, $zero, 0x3840
    /* 31A180 802D6030 0C035AB7 */  jal        func_800D6ADC_E5A8C
    /* 31A184 802D6034 2407000C */   addiu     $a3, $zero, 0xC
    /* 31A188 802D6038 3C04802E */  lui        $a0, %hi(D_802E7C32)
    /* 31A18C 802D603C 0C0B53B9 */  jal        func_802D4EE4_319034
    /* 31A190 802D6040 84847C32 */   lh        $a0, %lo(D_802E7C32)($a0)
    /* 31A194 802D6044 3C088015 */  lui        $t0, %hi(D_80157F8E)
    /* 31A198 802D6048 25087F8E */  addiu      $t0, $t0, %lo(D_80157F8E)
    /* 31A19C 802D604C 3C068015 */  lui        $a2, %hi(D_80157F8C)
    /* 31A1A0 802D6050 24C67F8C */  addiu      $a2, $a2, %lo(D_80157F8C)
    /* 31A1A4 802D6054 85030000 */  lh         $v1, 0x0($t0)
    /* 31A1A8 802D6058 28620079 */  slti       $v0, $v1, 0x79
  .L802D605C_31A1AC:
    /* 31A1AC 802D605C 246E0001 */  addiu      $t6, $v1, 0x1
    /* 31A1B0 802D6060 14400010 */  bnez       $v0, .L802D60A4_31A1F4
    /* 31A1B4 802D6064 A50E0000 */   sh        $t6, 0x0($t0)
    /* 31A1B8 802D6068 84CF0000 */  lh         $t7, 0x0($a2)
    /* 31A1BC 802D606C A5000000 */  sh         $zero, 0x0($t0)
    /* 31A1C0 802D6070 25E90001 */  addiu      $t1, $t7, 0x1
    /* 31A1C4 802D6074 1000000B */  b          .L802D60A4_31A1F4
    /* 31A1C8 802D6078 A4C90000 */   sh        $t1, 0x0($a2)
  .L802D607C_31A1CC:
    /* 31A1CC 802D607C 8D4A7F90 */  lw         $t2, %lo(currentLevel)($t2)
    /* 31A1D0 802D6080 3C198003 */  lui        $t9, %hi(D_80031636)
    /* 31A1D4 802D6084 3C018003 */  lui        $at, %hi(D_800313FC)
    /* 31A1D8 802D6088 254CFFFF */  addiu      $t4, $t2, -0x1
    /* 31A1DC 802D608C 000C6880 */  sll        $t5, $t4, 2
    /* 31A1E0 802D6090 032DC821 */  addu       $t9, $t9, $t5
    /* 31A1E4 802D6094 87391636 */  lh         $t9, %lo(D_80031636)($t9)
    /* 31A1E8 802D6098 24020001 */  addiu      $v0, $zero, 0x1
    /* 31A1EC 802D609C 10000002 */  b          .L802D60A8_31A1F8
    /* 31A1F0 802D60A0 A43913FC */   sh        $t9, %lo(D_800313FC)($at)
  .L802D60A4_31A1F4:
    /* 31A1F4 802D60A4 00001025 */  or         $v0, $zero, $zero
  .L802D60A8_31A1F8:
    /* 31A1F8 802D60A8 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 31A1FC 802D60AC 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 31A200 802D60B0 03E00008 */  jr         $ra
    /* 31A204 802D60B4 00000000 */   nop
endlabel func_802D5F6C_31A0BC
