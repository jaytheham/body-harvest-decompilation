nonmatching func_800CE040_DCFF0, 0xC0

glabel func_800CE040_DCFF0
    /* DCFF0 800CE040 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* DCFF4 800CE044 AFBF0014 */  sw         $ra, 0x14($sp)
    /* DCFF8 800CE048 AFA40028 */  sw         $a0, 0x28($sp)
    /* DCFFC 800CE04C AFA5002C */  sw         $a1, 0x2C($sp)
    /* DD000 800CE050 AFA60030 */  sw         $a2, 0x30($sp)
    /* DD004 800CE054 AFA70034 */  sw         $a3, 0x34($sp)
    /* DD008 800CE058 0C030566 */  jal        func_800C1598_D0548
    /* DD00C 800CE05C 24040009 */   addiu     $a0, $zero, 0x9
    /* DD010 800CE060 240100FB */  addiu      $at, $zero, 0xFB
    /* DD014 800CE064 10410021 */  beq        $v0, $at, .L800CE0EC_DD09C
    /* DD018 800CE068 304500FF */   andi      $a1, $v0, 0xFF
    /* DD01C 800CE06C 30A400FF */  andi       $a0, $a1, 0xFF
    /* DD020 800CE070 0C030634 */  jal        func_800C18D0_D0880
    /* DD024 800CE074 A3A5001F */   sb        $a1, 0x1F($sp)
    /* DD028 800CE078 2401FFFD */  addiu      $at, $zero, -0x3
    /* DD02C 800CE07C 14410009 */  bne        $v0, $at, .L800CE0A4_DD054
    /* DD030 800CE080 93A5001F */   lbu       $a1, 0x1F($sp)
    /* DD034 800CE084 3C048014 */  lui        $a0, %hi(D_80143720)
    /* DD038 800CE088 24843720 */  addiu      $a0, $a0, %lo(D_80143720)
    /* DD03C 800CE08C 0C00731B */  jal        osSyncPrintf
    /* DD040 800CE090 A3A5001F */   sb        $a1, 0x1F($sp)
    /* DD044 800CE094 0C0304E1 */  jal        func_800C1384_D0334
    /* DD048 800CE098 93A4001F */   lbu       $a0, 0x1F($sp)
    /* DD04C 800CE09C 10000014 */  b          .L800CE0F0_DD0A0
    /* DD050 800CE0A0 240200FB */   addiu     $v0, $zero, 0xFB
  .L800CE0A4_DD054:
    /* DD054 800CE0A4 000270C0 */  sll        $t6, $v0, 3
    /* DD058 800CE0A8 01C27023 */  subu       $t6, $t6, $v0
    /* DD05C 800CE0AC 3C0F8015 */  lui        $t7, %hi(D_80154318)
    /* DD060 800CE0B0 25EF4318 */  addiu      $t7, $t7, %lo(D_80154318)
    /* DD064 800CE0B4 000E7080 */  sll        $t6, $t6, 2
    /* DD068 800CE0B8 01CF1821 */  addu       $v1, $t6, $t7
    /* DD06C 800CE0BC 87B8002A */  lh         $t8, 0x2A($sp)
    /* DD070 800CE0C0 87B9002E */  lh         $t9, 0x2E($sp)
    /* DD074 800CE0C4 87A80032 */  lh         $t0, 0x32($sp)
    /* DD078 800CE0C8 87A90036 */  lh         $t1, 0x36($sp)
    /* DD07C 800CE0CC 87AA003A */  lh         $t2, 0x3A($sp)
    /* DD080 800CE0D0 87AB003E */  lh         $t3, 0x3E($sp)
    /* DD084 800CE0D4 A4780008 */  sh         $t8, 0x8($v1)
    /* DD088 800CE0D8 A479000A */  sh         $t9, 0xA($v1)
    /* DD08C 800CE0DC A468000C */  sh         $t0, 0xC($v1)
    /* DD090 800CE0E0 A469000E */  sh         $t1, 0xE($v1)
    /* DD094 800CE0E4 A46A0010 */  sh         $t2, 0x10($v1)
    /* DD098 800CE0E8 A46B0012 */  sh         $t3, 0x12($v1)
  .L800CE0EC_DD09C:
    /* DD09C 800CE0EC 00A01025 */  or         $v0, $a1, $zero
  .L800CE0F0_DD0A0:
    /* DD0A0 800CE0F0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* DD0A4 800CE0F4 27BD0028 */  addiu      $sp, $sp, 0x28
    /* DD0A8 800CE0F8 03E00008 */  jr         $ra
    /* DD0AC 800CE0FC 00000000 */   nop
endlabel func_800CE040_DCFF0
