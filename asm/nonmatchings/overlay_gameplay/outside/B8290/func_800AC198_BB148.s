nonmatching func_800AC198_BB148, 0x164

glabel func_800AC198_BB148
    /* BB148 800AC198 308E00FF */  andi       $t6, $a0, 0xFF
    /* BB14C 800AC19C 000E7880 */  sll        $t7, $t6, 2
    /* BB150 800AC1A0 01EE7821 */  addu       $t7, $t7, $t6
    /* BB154 800AC1A4 3C188005 */  lui        $t8, %hi(alienInstances)
    /* BB158 800AC1A8 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* BB15C 800AC1AC 000F7900 */  sll        $t7, $t7, 4
    /* BB160 800AC1B0 01F81821 */  addu       $v1, $t7, $t8
    /* BB164 800AC1B4 8066003D */  lb         $a2, 0x3D($v1)
    /* BB168 800AC1B8 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* BB16C 800AC1BC 2401FFFF */  addiu      $at, $zero, -0x1
    /* BB170 800AC1C0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* BB174 800AC1C4 10C10049 */  beq        $a2, $at, .L800AC2EC_BB29C
    /* BB178 800AC1C8 AFA40040 */   sw        $a0, 0x40($sp)
    /* BB17C 800AC1CC 3C198004 */  lui        $t9, %hi(currentLevel)
    /* BB180 800AC1D0 8F397F90 */  lw         $t9, %lo(currentLevel)($t9)
    /* BB184 800AC1D4 00065900 */  sll        $t3, $a2, 4
    /* BB188 800AC1D8 3C0E8014 */  lui        $t6, %hi(D_80146688)
    /* BB18C 800AC1DC 00195240 */  sll        $t2, $t9, 9
    /* BB190 800AC1E0 014B6021 */  addu       $t4, $t2, $t3
    /* BB194 800AC1E4 258DFE00 */  addiu      $t5, $t4, -0x200
    /* BB198 800AC1E8 25CE6688 */  addiu      $t6, $t6, %lo(D_80146688)
    /* BB19C 800AC1EC 84780000 */  lh         $t8, 0x0($v1)
    /* BB1A0 800AC1F0 01AE4021 */  addu       $t0, $t5, $t6
    /* BB1A4 800AC1F4 810F0000 */  lb         $t7, 0x0($t0)
    /* BB1A8 800AC1F8 846B0004 */  lh         $t3, 0x4($v1)
    /* BB1AC 800AC1FC 0018CA03 */  sra        $t9, $t8, 8
    /* BB1B0 800AC200 01F91023 */  subu       $v0, $t7, $t9
    /* BB1B4 800AC204 810A0001 */  lb         $t2, 0x1($t0)
    /* BB1B8 800AC208 00022823 */  negu       $a1, $v0
    /* BB1BC 800AC20C 00A2082A */  slt        $at, $a1, $v0
    /* BB1C0 800AC210 000B6203 */  sra        $t4, $t3, 8
    /* BB1C4 800AC214 10200003 */  beqz       $at, .L800AC224_BB1D4
    /* BB1C8 800AC218 014C2023 */   subu      $a0, $t2, $t4
    /* BB1CC 800AC21C 10000002 */  b          .L800AC228_BB1D8
    /* BB1D0 800AC220 00404825 */   or        $t1, $v0, $zero
  .L800AC224_BB1D4:
    /* BB1D4 800AC224 00A04825 */  or         $t1, $a1, $zero
  .L800AC228_BB1D8:
    /* BB1D8 800AC228 00043023 */  negu       $a2, $a0
    /* BB1DC 800AC22C 00C4082A */  slt        $at, $a2, $a0
    /* BB1E0 800AC230 10200003 */  beqz       $at, .L800AC240_BB1F0
    /* BB1E4 800AC234 00C03825 */   or        $a3, $a2, $zero
    /* BB1E8 800AC238 10000001 */  b          .L800AC240_BB1F0
    /* BB1EC 800AC23C 00803825 */   or        $a3, $a0, $zero
  .L800AC240_BB1F0:
    /* BB1F0 800AC240 00E9082A */  slt        $at, $a3, $t1
    /* BB1F4 800AC244 10200007 */  beqz       $at, .L800AC264_BB214
    /* BB1F8 800AC248 00A2082A */   slt       $at, $a1, $v0
    /* BB1FC 800AC24C 10200003 */  beqz       $at, .L800AC25C_BB20C
    /* BB200 800AC250 00A02025 */   or        $a0, $a1, $zero
    /* BB204 800AC254 1000000A */  b          .L800AC280_BB230
    /* BB208 800AC258 810D0002 */   lb        $t5, 0x2($t0)
  .L800AC25C_BB20C:
    /* BB20C 800AC25C 10000007 */  b          .L800AC27C_BB22C
    /* BB210 800AC260 00801025 */   or        $v0, $a0, $zero
  .L800AC264_BB214:
    /* BB214 800AC264 00C4082A */  slt        $at, $a2, $a0
    /* BB218 800AC268 10200003 */  beqz       $at, .L800AC278_BB228
    /* BB21C 800AC26C 00C02825 */   or        $a1, $a2, $zero
    /* BB220 800AC270 10000001 */  b          .L800AC278_BB228
    /* BB224 800AC274 00802825 */   or        $a1, $a0, $zero
  .L800AC278_BB228:
    /* BB228 800AC278 00A01025 */  or         $v0, $a1, $zero
  .L800AC27C_BB22C:
    /* BB22C 800AC27C 810D0002 */  lb         $t5, 0x2($t0)
  .L800AC280_BB230:
    /* BB230 800AC280 01A2082A */  slt        $at, $t5, $v0
    /* BB234 800AC284 5020001A */  beql       $at, $zero, .L800AC2F0_BB2A0
    /* BB238 800AC288 8FBF0014 */   lw        $ra, 0x14($sp)
    /* BB23C 800AC28C 8C6E0020 */  lw         $t6, 0x20($v1)
    /* BB240 800AC290 2401FFBF */  addiu      $at, $zero, -0x41
    /* BB244 800AC294 35D81100 */  ori        $t8, $t6, 0x1100
    /* BB248 800AC298 AC780020 */  sw         $t8, 0x20($v1)
    /* BB24C 800AC29C 0301C824 */  and        $t9, $t8, $at
    /* BB250 800AC2A0 AC790020 */  sw         $t9, 0x20($v1)
    /* BB254 800AC2A4 810B0000 */  lb         $t3, 0x0($t0)
    /* BB258 800AC2A8 000B5200 */  sll        $t2, $t3, 8
    /* BB25C 800AC2AC A46A0014 */  sh         $t2, 0x14($v1)
    /* BB260 800AC2B0 810C0001 */  lb         $t4, 0x1($t0)
    /* BB264 800AC2B4 AFA30018 */  sw         $v1, 0x18($sp)
    /* BB268 800AC2B8 84640014 */  lh         $a0, 0x14($v1)
    /* BB26C 800AC2BC 000C6A00 */  sll        $t5, $t4, 8
    /* BB270 800AC2C0 A46D0018 */  sh         $t5, 0x18($v1)
    /* BB274 800AC2C4 0C02E134 */  jal        func_800B84D0_C7480
    /* BB278 800AC2C8 84650018 */   lh        $a1, 0x18($v1)
    /* BB27C 800AC2CC 8FA30018 */  lw         $v1, 0x18($sp)
    /* BB280 800AC2D0 00027203 */  sra        $t6, $v0, 8
    /* BB284 800AC2D4 25D80064 */  addiu      $t8, $t6, 0x64
    /* BB288 800AC2D8 240F00C8 */  addiu      $t7, $zero, 0xC8
    /* BB28C 800AC2DC 241900FF */  addiu      $t9, $zero, 0xFF
    /* BB290 800AC2E0 A4780016 */  sh         $t8, 0x16($v1)
    /* BB294 800AC2E4 A46F002C */  sh         $t7, 0x2C($v1)
    /* BB298 800AC2E8 A4790038 */  sh         $t9, 0x38($v1)
  .L800AC2EC_BB29C:
    /* BB29C 800AC2EC 8FBF0014 */  lw         $ra, 0x14($sp)
  .L800AC2F0_BB2A0:
    /* BB2A0 800AC2F0 27BD0040 */  addiu      $sp, $sp, 0x40
    /* BB2A4 800AC2F4 03E00008 */  jr         $ra
    /* BB2A8 800AC2F8 00000000 */   nop
endlabel func_800AC198_BB148
