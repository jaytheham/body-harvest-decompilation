nonmatching func_8000D71C_E31C, 0x1C0

glabel func_8000D71C_E31C
    /* E31C 8000D71C 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* E320 8000D720 AFB1002C */  sw         $s1, 0x2C($sp)
    /* E324 8000D724 8FB10058 */  lw         $s1, 0x58($sp)
    /* E328 8000D728 AFB40038 */  sw         $s4, 0x38($sp)
    /* E32C 8000D72C 3C1400FF */  lui        $s4, (0xFFFFFF >> 16)
    /* E330 8000D730 3694FFFF */  ori        $s4, $s4, (0xFFFFFF & 0xFFFF)
    /* E334 8000D734 3C0F008F */  lui        $t7, %hi(D_8F4960)
    /* E338 8000D738 AFB60040 */  sw         $s6, 0x40($sp)
    /* E33C 8000D73C AFB30034 */  sw         $s3, 0x34($sp)
    /* E340 8000D740 AFB20030 */  sw         $s2, 0x30($sp)
    /* E344 8000D744 AFB00028 */  sw         $s0, 0x28($sp)
    /* E348 8000D748 25EF4960 */  addiu      $t7, $t7, %lo(D_8F4960)
    /* E34C 8000D74C 02347024 */  and        $t6, $s1, $s4
    /* E350 8000D750 00809025 */  or         $s2, $a0, $zero
    /* E354 8000D754 00A09825 */  or         $s3, $a1, $zero
    /* E358 8000D758 00C0B025 */  or         $s6, $a2, $zero
    /* E35C 8000D75C AFBF0044 */  sw         $ra, 0x44($sp)
    /* E360 8000D760 AFB5003C */  sw         $s5, 0x3C($sp)
    /* E364 8000D764 F7B40020 */  sdc1       $f20, 0x20($sp)
    /* E368 8000D768 01CF8021 */  addu       $s0, $t6, $t7
    /* E36C 8000D76C 00E0A825 */  or         $s5, $a3, $zero
    /* E370 8000D770 02002825 */  or         $a1, $s0, $zero
    /* E374 8000D774 24060048 */  addiu      $a2, $zero, 0x48
    /* E378 8000D778 24840008 */  addiu      $a0, $a0, 0x8
    /* E37C 8000D77C 0C00407C */  jal        func_800101F0_10DF0
    /* E380 8000D780 AC910E48 */   sw        $s1, 0xE48($a0)
    /* E384 8000D784 8E580008 */  lw         $t8, 0x8($s2)
    /* E388 8000D788 2411000E */  addiu      $s1, $zero, 0xE
    /* E38C 8000D78C 26440050 */  addiu      $a0, $s2, 0x50
    /* E390 8000D790 03110019 */  multu      $t8, $s1
    /* E394 8000D794 26050048 */  addiu      $a1, $s0, 0x48
    /* E398 8000D798 00003012 */  mflo       $a2
    /* E39C 8000D79C 0C00407C */  jal        func_800101F0_10DF0
    /* E3A0 8000D7A0 00000000 */   nop
    /* E3A4 8000D7A4 8FA2005C */  lw         $v0, 0x5C($sp)
    /* E3A8 8000D7A8 3C08008F */  lui        $t0, %hi(D_8F4960)
    /* E3AC 8000D7AC 25084960 */  addiu      $t0, $t0, %lo(D_8F4960)
    /* E3B0 8000D7B0 0054C824 */  and        $t9, $v0, $s4
    /* E3B4 8000D7B4 03288021 */  addu       $s0, $t9, $t0
    /* E3B8 8000D7B8 02002825 */  or         $a1, $s0, $zero
    /* E3BC 8000D7BC 26640008 */  addiu      $a0, $s3, 0x8
    /* E3C0 8000D7C0 24060048 */  addiu      $a2, $zero, 0x48
    /* E3C4 8000D7C4 0C00407C */  jal        func_800101F0_10DF0
    /* E3C8 8000D7C8 AE620E50 */   sw        $v0, 0xE50($s3)
    /* E3CC 8000D7CC 8E690008 */  lw         $t1, 0x8($s3)
    /* E3D0 8000D7D0 26640050 */  addiu      $a0, $s3, 0x50
    /* E3D4 8000D7D4 26050048 */  addiu      $a1, $s0, 0x48
    /* E3D8 8000D7D8 01310019 */  multu      $t1, $s1
    /* E3DC 8000D7DC 00003012 */  mflo       $a2
    /* E3E0 8000D7E0 0C00407C */  jal        func_800101F0_10DF0
    /* E3E4 8000D7E4 00000000 */   nop
    /* E3E8 8000D7E8 12A00030 */  beqz       $s5, .L8000D8AC_E4AC
    /* E3EC 8000D7EC 00008825 */   or        $s1, $zero, $zero
    /* E3F0 8000D7F0 C7B40060 */  lwc1       $f20, 0x60($sp)
    /* E3F4 8000D7F4 8FB40064 */  lw         $s4, 0x64($sp)
  .L8000D7F8_E3F8:
    /* E3F8 8000D7F8 00115180 */  sll        $t2, $s1, 6
    /* E3FC 8000D7FC 01568021 */  addu       $s0, $t2, $s6
    /* E400 8000D800 00115880 */  sll        $t3, $s1, 2
    /* E404 8000D804 AE000018 */  sw         $zero, 0x18($s0)
    /* E408 8000D808 024B6021 */  addu       $t4, $s2, $t3
    /* E40C 8000D80C 958D000E */  lhu        $t5, 0xE($t4)
    /* E410 8000D810 02003025 */  or         $a2, $s0, $zero
    /* E414 8000D814 02402025 */  or         $a0, $s2, $zero
    /* E418 8000D818 AE0D0014 */  sw         $t5, 0x14($s0)
    /* E41C 8000D81C E7B40010 */  swc1       $f20, 0x10($sp)
    /* E420 8000D820 02602825 */  or         $a1, $s3, $zero
    /* E424 8000D824 0C003562 */  jal        func_8000D588_E188
    /* E428 8000D828 322700FF */   andi      $a3, $s1, 0xFF
    /* E42C 8000D82C 1280001B */  beqz       $s4, .L8000D89C_E49C
    /* E430 8000D830 02402025 */   or        $a0, $s2, $zero
    /* E434 8000D834 86190024 */  lh         $t9, 0x24($s0)
    /* E438 8000D838 86080026 */  lh         $t0, 0x26($s0)
    /* E43C 8000D83C 86090028 */  lh         $t1, 0x28($s0)
    /* E440 8000D840 44992000 */  mtc1       $t9, $f4
    /* E444 8000D844 44884000 */  mtc1       $t0, $f8
    /* E448 8000D848 44898000 */  mtc1       $t1, $f16
    /* E44C 8000D84C 468021A0 */  cvt.s.w    $f6, $f4
    /* E450 8000D850 8E0A0018 */  lw         $t2, 0x18($s0)
    /* E454 8000D854 860E002A */  lh         $t6, 0x2A($s0)
    /* E458 8000D858 860F002C */  lh         $t7, 0x2C($s0)
    /* E45C 8000D85C 8618002E */  lh         $t8, 0x2E($s0)
    /* E460 8000D860 468042A0 */  cvt.s.w    $f10, $f8
    /* E464 8000D864 254B0001 */  addiu      $t3, $t2, 0x1
    /* E468 8000D868 E6060008 */  swc1       $f6, 0x8($s0)
    /* E46C 8000D86C AE0B0018 */  sw         $t3, 0x18($s0)
    /* E470 8000D870 A60E0000 */  sh         $t6, 0x0($s0)
    /* E474 8000D874 468084A0 */  cvt.s.w    $f18, $f16
    /* E478 8000D878 E60A000C */  swc1       $f10, 0xC($s0)
    /* E47C 8000D87C A60F0002 */  sh         $t7, 0x2($s0)
    /* E480 8000D880 A6180004 */  sh         $t8, 0x4($s0)
    /* E484 8000D884 02602825 */  or         $a1, $s3, $zero
    /* E488 8000D888 02003025 */  or         $a2, $s0, $zero
    /* E48C 8000D88C E6120010 */  swc1       $f18, 0x10($s0)
    /* E490 8000D890 E7B40010 */  swc1       $f20, 0x10($sp)
    /* E494 8000D894 0C003562 */  jal        func_8000D588_E188
    /* E498 8000D898 322700FF */   andi      $a3, $s1, 0xFF
  .L8000D89C_E49C:
    /* E49C 8000D89C 26310001 */  addiu      $s1, $s1, 0x1
    /* E4A0 8000D8A0 322C00FF */  andi       $t4, $s1, 0xFF
    /* E4A4 8000D8A4 16ACFFD4 */  bne        $s5, $t4, .L8000D7F8_E3F8
    /* E4A8 8000D8A8 01808825 */   or        $s1, $t4, $zero
  .L8000D8AC_E4AC:
    /* E4AC 8000D8AC 8FBF0044 */  lw         $ra, 0x44($sp)
    /* E4B0 8000D8B0 8FA20058 */  lw         $v0, 0x58($sp)
    /* E4B4 8000D8B4 D7B40020 */  ldc1       $f20, 0x20($sp)
    /* E4B8 8000D8B8 8FB00028 */  lw         $s0, 0x28($sp)
    /* E4BC 8000D8BC 8FB1002C */  lw         $s1, 0x2C($sp)
    /* E4C0 8000D8C0 8FB20030 */  lw         $s2, 0x30($sp)
    /* E4C4 8000D8C4 8FB30034 */  lw         $s3, 0x34($sp)
    /* E4C8 8000D8C8 8FB40038 */  lw         $s4, 0x38($sp)
    /* E4CC 8000D8CC 8FB5003C */  lw         $s5, 0x3C($sp)
    /* E4D0 8000D8D0 8FB60040 */  lw         $s6, 0x40($sp)
    /* E4D4 8000D8D4 03E00008 */  jr         $ra
    /* E4D8 8000D8D8 27BD0048 */   addiu     $sp, $sp, 0x48
endlabel func_8000D71C_E31C
