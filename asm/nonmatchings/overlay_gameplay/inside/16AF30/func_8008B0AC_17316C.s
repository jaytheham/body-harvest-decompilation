nonmatching func_8008B0AC_17316C, 0xFC

glabel func_8008B0AC_17316C
    /* 17316C 8008B0AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 173170 8008B0B0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 173174 8008B0B4 0C022967 */  jal        func_8008A59C_17265C
    /* 173178 8008B0B8 00000000 */   nop
    /* 17317C 8008B0BC 3C058010 */  lui        $a1, %hi(D_800FB6F8)
    /* 173180 8008B0C0 24A5B6F8 */  addiu      $a1, $a1, %lo(D_800FB6F8)
    /* 173184 8008B0C4 00001025 */  or         $v0, $zero, $zero
    /* 173188 8008B0C8 240400FA */  addiu      $a0, $zero, 0xFA
    /* 17318C 8008B0CC 2403000C */  addiu      $v1, $zero, 0xC
  .L8008B0D0_173190:
    /* 173190 8008B0D0 00430019 */  multu      $v0, $v1
    /* 173194 8008B0D4 24420001 */  addiu      $v0, $v0, 0x1
    /* 173198 8008B0D8 305800FF */  andi       $t8, $v0, 0xFF
    /* 17319C 8008B0DC 2B01000F */  slti       $at, $t8, 0xF
    /* 1731A0 8008B0E0 03001025 */  or         $v0, $t8, $zero
    /* 1731A4 8008B0E4 00007012 */  mflo       $t6
    /* 1731A8 8008B0E8 00AE7821 */  addu       $t7, $a1, $t6
    /* 1731AC 8008B0EC 1420FFF8 */  bnez       $at, .L8008B0D0_173190
    /* 1731B0 8008B0F0 A1E40000 */   sb        $a0, 0x0($t7)
    /* 1731B4 8008B0F4 3C038010 */  lui        $v1, %hi(D_800FB7B0)
    /* 1731B8 8008B0F8 2463B7B0 */  addiu      $v1, $v1, %lo(D_800FB7B0)
    /* 1731BC 8008B0FC 00001025 */  or         $v0, $zero, $zero
    /* 1731C0 8008B100 24040016 */  addiu      $a0, $zero, 0x16
  .L8008B104_1731C4:
    /* 1731C4 8008B104 00440019 */  multu      $v0, $a0
    /* 1731C8 8008B108 24420001 */  addiu      $v0, $v0, 0x1
    /* 1731CC 8008B10C 3049FFFF */  andi       $t1, $v0, 0xFFFF
    /* 1731D0 8008B110 292100C8 */  slti       $at, $t1, 0xC8
    /* 1731D4 8008B114 01201025 */  or         $v0, $t1, $zero
    /* 1731D8 8008B118 0000C812 */  mflo       $t9
    /* 1731DC 8008B11C 00794021 */  addu       $t0, $v1, $t9
    /* 1731E0 8008B120 1420FFF8 */  bnez       $at, .L8008B104_1731C4
    /* 1731E4 8008B124 A1000000 */   sb        $zero, 0x0($t0)
    /* 1731E8 8008B128 3C018010 */  lui        $at, %hi(D_800FC8E2)
    /* 1731EC 8008B12C A420C8E2 */  sh         $zero, %lo(D_800FC8E2)($at)
    /* 1731F0 8008B130 3C018010 */  lui        $at, %hi(D_800FC8E0)
    /* 1731F4 8008B134 A420C8E0 */  sh         $zero, %lo(D_800FC8E0)($at)
    /* 1731F8 8008B138 2402FFFA */  addiu      $v0, $zero, -0x6
    /* 1731FC 8008B13C 24030004 */  addiu      $v1, $zero, 0x4
    /* 173200 8008B140 240A0003 */  addiu      $t2, $zero, 0x3
    /* 173204 8008B144 240B0005 */  addiu      $t3, $zero, 0x5
    /* 173208 8008B148 240C0006 */  addiu      $t4, $zero, 0x6
    /* 17320C 8008B14C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 173210 8008B150 A0AA00A8 */  sb         $t2, 0xA8($a1)
    /* 173214 8008B154 A0A000AC */  sb         $zero, 0xAC($a1)
    /* 173218 8008B158 A4A200AE */  sh         $v0, 0xAE($a1)
    /* 17321C 8008B15C A4A200B0 */  sh         $v0, 0xB0($a1)
    /* 173220 8008B160 A0A3009C */  sb         $v1, 0x9C($a1)
    /* 173224 8008B164 A0A000A0 */  sb         $zero, 0xA0($a1)
    /* 173228 8008B168 A4A200A2 */  sh         $v0, 0xA2($a1)
    /* 17322C 8008B16C A4A200A4 */  sh         $v0, 0xA4($a1)
    /* 173230 8008B170 A0AB0090 */  sb         $t3, 0x90($a1)
    /* 173234 8008B174 A0A00094 */  sb         $zero, 0x94($a1)
    /* 173238 8008B178 A4A20096 */  sh         $v0, 0x96($a1)
    /* 17323C 8008B17C A4A20098 */  sh         $v0, 0x98($a1)
    /* 173240 8008B180 A0AC0084 */  sb         $t4, 0x84($a1)
    /* 173244 8008B184 A0A00088 */  sb         $zero, 0x88($a1)
    /* 173248 8008B188 A4A2008A */  sh         $v0, 0x8A($a1)
    /* 17324C 8008B18C A4A2008C */  sh         $v0, 0x8C($a1)
    /* 173250 8008B190 3C018010 */  lui        $at, %hi(D_800FB7AD)
    /* 173254 8008B194 A020B7AD */  sb         $zero, %lo(D_800FB7AD)($at)
    /* 173258 8008B198 3C018010 */  lui        $at, %hi(D_800FB7AC)
    /* 17325C 8008B19C A023B7AC */  sb         $v1, %lo(D_800FB7AC)($at)
    /* 173260 8008B1A0 03E00008 */  jr         $ra
    /* 173264 8008B1A4 27BD0018 */   addiu     $sp, $sp, 0x18
endlabel func_8008B0AC_17316C
