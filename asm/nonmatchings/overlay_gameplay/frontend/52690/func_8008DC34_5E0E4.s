nonmatching func_8008DC34_5E0E4, 0x1BC

glabel func_8008DC34_5E0E4
    /* 5E0E4 8008DC34 3C0C800E */  lui        $t4, %hi(D_800E1D68)
    /* 5E0E8 8008DC38 258C1D68 */  addiu      $t4, $t4, %lo(D_800E1D68)
    /* 5E0EC 8008DC3C 918D0000 */  lbu        $t5, 0x0($t4)
    /* 5E0F0 8008DC40 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 5E0F4 8008DC44 AFA50024 */  sw         $a1, 0x24($sp)
    /* 5E0F8 8008DC48 AFA60028 */  sw         $a2, 0x28($sp)
    /* 5E0FC 8008DC4C 00057400 */  sll        $t6, $a1, 16
    /* 5E100 8008DC50 0006C400 */  sll        $t8, $a2, 16
    /* 5E104 8008DC54 29A10032 */  slti       $at, $t5, 0x32
    /* 5E108 8008DC58 00183403 */  sra        $a2, $t8, 16
    /* 5E10C 8008DC5C 000E2C03 */  sra        $a1, $t6, 16
    /* 5E110 8008DC60 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 5E114 8008DC64 AFA40020 */  sw         $a0, 0x20($sp)
    /* 5E118 8008DC68 14200003 */  bnez       $at, .L8008DC78_5E128
    /* 5E11C 8008DC6C AFA7002C */   sw        $a3, 0x2C($sp)
    /* 5E120 8008DC70 1000005B */  b          .L8008DDE0_5E290
    /* 5E124 8008DC74 240200FF */   addiu     $v0, $zero, 0xFF
  .L8008DC78_5E128:
    /* 5E128 8008DC78 3C08800E */  lui        $t0, %hi(D_800E1D69)
    /* 5E12C 8008DC7C 25081D69 */  addiu      $t0, $t0, %lo(D_800E1D69)
    /* 5E130 8008DC80 910E0000 */  lbu        $t6, 0x0($t0)
    /* 5E134 8008DC84 24090014 */  addiu      $t1, $zero, 0x14
    /* 5E138 8008DC88 87B80022 */  lh         $t8, 0x22($sp)
    /* 5E13C 8008DC8C 01C90019 */  multu      $t6, $t1
    /* 5E140 8008DC90 3C07800E */  lui        $a3, %hi(D_800E1980)
    /* 5E144 8008DC94 24E71980 */  addiu      $a3, $a3, %lo(D_800E1980)
    /* 5E148 8008DC98 93AE002F */  lbu        $t6, 0x2F($sp)
    /* 5E14C 8008DC9C 93B9002F */  lbu        $t9, 0x2F($sp)
    /* 5E150 8008DCA0 97AD0032 */  lhu        $t5, 0x32($sp)
    /* 5E154 8008DCA4 00007812 */  mflo       $t7
    /* 5E158 8008DCA8 00EF2021 */  addu       $a0, $a3, $t7
    /* 5E15C 8008DCAC A4980000 */  sh         $t8, 0x0($a0)
    /* 5E160 8008DCB0 3C18800B */  lui        $t8, %hi(D_800AA694)
    /* 5E164 8008DCB4 2718A694 */  addiu      $t8, $t8, %lo(D_800AA694)
    /* 5E168 8008DCB8 000E78C0 */  sll        $t7, $t6, 3
    /* 5E16C 8008DCBC 01F85021 */  addu       $t2, $t7, $t8
    /* 5E170 8008DCC0 A099000C */  sb         $t9, 0xC($a0)
    /* 5E174 8008DCC4 A48D000A */  sh         $t5, 0xA($a0)
    /* 5E178 8008DCC8 81590001 */  lb         $t9, 0x1($t2)
    /* 5E17C 8008DCCC 814D0002 */  lb         $t5, 0x2($t2)
    /* 5E180 8008DCD0 814E0003 */  lb         $t6, 0x3($t2)
    /* 5E184 8008DCD4 A4850002 */  sh         $a1, 0x2($a0)
    /* 5E188 8008DCD8 A4860004 */  sh         $a2, 0x4($a0)
    /* 5E18C 8008DCDC A080000F */  sb         $zero, 0xF($a0)
    /* 5E190 8008DCE0 AFAA0018 */  sw         $t2, 0x18($sp)
    /* 5E194 8008DCE4 A0990010 */  sb         $t9, 0x10($a0)
    /* 5E198 8008DCE8 A08D0011 */  sb         $t5, 0x11($a0)
    /* 5E19C 8008DCEC 0C000E38 */  jal        func_800038E0_44E0
    /* 5E1A0 8008DCF0 A08E0012 */   sb        $t6, 0x12($a0)
    /* 5E1A4 8008DCF4 3C08800E */  lui        $t0, %hi(D_800E1D69)
    /* 5E1A8 8008DCF8 25081D69 */  addiu      $t0, $t0, %lo(D_800E1D69)
    /* 5E1AC 8008DCFC 91050000 */  lbu        $a1, 0x0($t0)
    /* 5E1B0 8008DD00 24090014 */  addiu      $t1, $zero, 0x14
    /* 5E1B4 8008DD04 8FAA0018 */  lw         $t2, 0x18($sp)
    /* 5E1B8 8008DD08 00A90019 */  multu      $a1, $t1
    /* 5E1BC 8008DD0C 3C07800E */  lui        $a3, %hi(D_800E1980)
    /* 5E1C0 8008DD10 81580000 */  lb         $t8, 0x0($t2)
    /* 5E1C4 8008DD14 93AD002F */  lbu        $t5, 0x2F($sp)
    /* 5E1C8 8008DD18 24E71980 */  addiu      $a3, $a3, %lo(D_800E1980)
    /* 5E1CC 8008DD1C 3C0C800E */  lui        $t4, %hi(D_800E1D68)
    /* 5E1D0 8008DD20 000D7080 */  sll        $t6, $t5, 2
    /* 5E1D4 8008DD24 258C1D68 */  addiu      $t4, $t4, %lo(D_800E1D68)
    /* 5E1D8 8008DD28 30AB00FF */  andi       $t3, $a1, 0xFF
    /* 5E1DC 8008DD2C 30A300FF */  andi       $v1, $a1, 0xFF
    /* 5E1E0 8008DD30 00007812 */  mflo       $t7
    /* 5E1E4 8008DD34 00EF2021 */  addu       $a0, $a3, $t7
    /* 5E1E8 8008DD38 3C0F800B */  lui        $t7, %hi(D_800AA724)
    /* 5E1EC 8008DD3C 0058001A */  div        $zero, $v0, $t8
    /* 5E1F0 8008DD40 25EFA724 */  addiu      $t7, $t7, %lo(D_800AA724)
    /* 5E1F4 8008DD44 01CF3021 */  addu       $a2, $t6, $t7
    /* 5E1F8 8008DD48 17000002 */  bnez       $t8, .L8008DD54_5E204
    /* 5E1FC 8008DD4C 00000000 */   nop
    /* 5E200 8008DD50 0007000D */  break      7
  .L8008DD54_5E204:
    /* 5E204 8008DD54 2401FFFF */  addiu      $at, $zero, -0x1
    /* 5E208 8008DD58 17010004 */  bne        $t8, $at, .L8008DD6C_5E21C
    /* 5E20C 8008DD5C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 5E210 8008DD60 14410002 */  bne        $v0, $at, .L8008DD6C_5E21C
    /* 5E214 8008DD64 00000000 */   nop
    /* 5E218 8008DD68 0006000D */  break      6
  .L8008DD6C_5E21C:
    /* 5E21C 8008DD6C 0000C810 */  mfhi       $t9
    /* 5E220 8008DD70 A099000E */  sb         $t9, 0xE($a0)
    /* 5E224 8008DD74 90D80003 */  lbu        $t8, 0x3($a2)
    /* 5E228 8008DD78 90D90000 */  lbu        $t9, 0x0($a2)
    /* 5E22C 8008DD7C 90CD0001 */  lbu        $t5, 0x1($a2)
    /* 5E230 8008DD80 90CE0002 */  lbu        $t6, 0x2($a2)
    /* 5E234 8008DD84 28A10032 */  slti       $at, $a1, 0x32
    /* 5E238 8008DD88 A098000D */  sb         $t8, 0xD($a0)
    /* 5E23C 8008DD8C A0990006 */  sb         $t9, 0x6($a0)
    /* 5E240 8008DD90 A08D0007 */  sb         $t5, 0x7($a0)
    /* 5E244 8008DD94 1020000E */  beqz       $at, .L8008DDD0_5E280
    /* 5E248 8008DD98 A08E0008 */   sb        $t6, 0x8($a0)
  .L8008DD9C_5E24C:
    /* 5E24C 8008DD9C 00690019 */  multu      $v1, $t1
    /* 5E250 8008DDA0 00007812 */  mflo       $t7
    /* 5E254 8008DDA4 00EFC021 */  addu       $t8, $a3, $t7
    /* 5E258 8008DDA8 8719000A */  lh         $t9, 0xA($t8)
    /* 5E25C 8008DDAC 57200004 */  bnel       $t9, $zero, .L8008DDC0_5E270
    /* 5E260 8008DDB0 24630001 */   addiu     $v1, $v1, 0x1
    /* 5E264 8008DDB4 A1030000 */  sb         $v1, 0x0($t0)
    /* 5E268 8008DDB8 24030032 */  addiu      $v1, $zero, 0x32
    /* 5E26C 8008DDBC 24630001 */  addiu      $v1, $v1, 0x1
  .L8008DDC0_5E270:
    /* 5E270 8008DDC0 306D00FF */  andi       $t5, $v1, 0xFF
    /* 5E274 8008DDC4 29A10032 */  slti       $at, $t5, 0x32
    /* 5E278 8008DDC8 1420FFF4 */  bnez       $at, .L8008DD9C_5E24C
    /* 5E27C 8008DDCC 01A01825 */   or        $v1, $t5, $zero
  .L8008DDD0_5E280:
    /* 5E280 8008DDD0 918E0000 */  lbu        $t6, 0x0($t4)
    /* 5E284 8008DDD4 01601025 */  or         $v0, $t3, $zero
    /* 5E288 8008DDD8 25CF0001 */  addiu      $t7, $t6, 0x1
    /* 5E28C 8008DDDC A18F0000 */  sb         $t7, 0x0($t4)
  .L8008DDE0_5E290:
    /* 5E290 8008DDE0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 5E294 8008DDE4 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 5E298 8008DDE8 03E00008 */  jr         $ra
    /* 5E29C 8008DDEC 00000000 */   nop
endlabel func_8008DC34_5E0E4
