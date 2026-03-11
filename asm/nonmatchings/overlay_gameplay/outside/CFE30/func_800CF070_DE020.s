nonmatching func_800CF070_DE020, 0x104

glabel func_800CF070_DE020
    /* DE020 800CF070 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* DE024 800CF074 AFB00014 */  sw         $s0, 0x14($sp)
    /* DE028 800CF078 3C108015 */  lui        $s0, %hi(D_8015425E)
    /* DE02C 800CF07C 8610425E */  lh         $s0, %lo(D_8015425E)($s0)
    /* DE030 800CF080 AFB40024 */  sw         $s4, 0x24($sp)
    /* DE034 800CF084 2414FFFB */  addiu      $s4, $zero, -0x5
    /* DE038 800CF088 AFBF002C */  sw         $ra, 0x2C($sp)
    /* DE03C 800CF08C AFB50028 */  sw         $s5, 0x28($sp)
    /* DE040 800CF090 AFB30020 */  sw         $s3, 0x20($sp)
    /* DE044 800CF094 AFB2001C */  sw         $s2, 0x1C($sp)
    /* DE048 800CF098 12140003 */  beq        $s0, $s4, .L800CF0A8_DE058
    /* DE04C 800CF09C AFB10018 */   sw        $s1, 0x18($sp)
    /* DE050 800CF0A0 2415FFFA */  addiu      $s5, $zero, -0x6
    /* DE054 800CF0A4 16150005 */  bne        $s0, $s5, .L800CF0BC_DE06C
  .L800CF0A8_DE058:
    /* DE058 800CF0A8 24040008 */   addiu     $a0, $zero, 0x8
    /* DE05C 800CF0AC 0C030506 */  jal        func_800C1418_D03C8
    /* DE060 800CF0B0 24050001 */   addiu     $a1, $zero, 0x1
    /* DE064 800CF0B4 10000027 */  b          .L800CF154_DE104
    /* DE068 800CF0B8 8FBF002C */   lw        $ra, 0x2C($sp)
  .L800CF0BC_DE06C:
    /* DE06C 800CF0BC 52140025 */  beql       $s0, $s4, .L800CF154_DE104
    /* DE070 800CF0C0 8FBF002C */   lw        $ra, 0x2C($sp)
    /* DE074 800CF0C4 12150022 */  beq        $s0, $s5, .L800CF150_DE100
    /* DE078 800CF0C8 2413001C */   addiu     $s3, $zero, 0x1C
    /* DE07C 800CF0CC 3C128015 */  lui        $s2, %hi(D_80154318)
    /* DE080 800CF0D0 26524318 */  addiu      $s2, $s2, %lo(D_80154318)
  .L800CF0D4_DE084:
    /* DE084 800CF0D4 02130019 */  multu      $s0, $s3
    /* DE088 800CF0D8 00102400 */  sll        $a0, $s0, 16
    /* DE08C 800CF0DC 0004C403 */  sra        $t8, $a0, 16
    /* DE090 800CF0E0 03002025 */  or         $a0, $t8, $zero
    /* DE094 800CF0E4 24050008 */  addiu      $a1, $zero, 0x8
    /* DE098 800CF0E8 24060001 */  addiu      $a2, $zero, 0x1
    /* DE09C 800CF0EC 00007012 */  mflo       $t6
    /* DE0A0 800CF0F0 024E1821 */  addu       $v1, $s2, $t6
    /* DE0A4 800CF0F4 906F0014 */  lbu        $t7, 0x14($v1)
    /* DE0A8 800CF0F8 24620008 */  addiu      $v0, $v1, 0x8
    /* DE0AC 800CF0FC 29E10008 */  slti       $at, $t7, 0x8
    /* DE0B0 800CF100 50200008 */  beql       $at, $zero, .L800CF124_DE0D4
    /* DE0B4 800CF104 9048000C */   lbu       $t0, 0xC($v0)
    /* DE0B8 800CF108 0C030693 */  jal        func_800C1A4C_D09FC
    /* DE0BC 800CF10C 84710004 */   lh        $s1, 0x4($v1)
    /* DE0C0 800CF110 00118400 */  sll        $s0, $s1, 16
    /* DE0C4 800CF114 0010CC03 */  sra        $t9, $s0, 16
    /* DE0C8 800CF118 10000009 */  b          .L800CF140_DE0F0
    /* DE0CC 800CF11C 03208025 */   or        $s0, $t9, $zero
    /* DE0D0 800CF120 9048000C */  lbu        $t0, 0xC($v0)
  .L800CF124_DE0D4:
    /* DE0D4 800CF124 844A0002 */  lh         $t2, 0x2($v0)
    /* DE0D8 800CF128 904B000B */  lbu        $t3, 0xB($v0)
    /* DE0DC 800CF12C 2509FFFC */  addiu      $t1, $t0, -0x4
    /* DE0E0 800CF130 A049000C */  sb         $t1, 0xC($v0)
    /* DE0E4 800CF134 014B6021 */  addu       $t4, $t2, $t3
    /* DE0E8 800CF138 A44C0002 */  sh         $t4, 0x2($v0)
    /* DE0EC 800CF13C 84700004 */  lh         $s0, 0x4($v1)
  .L800CF140_DE0F0:
    /* DE0F0 800CF140 52140004 */  beql       $s0, $s4, .L800CF154_DE104
    /* DE0F4 800CF144 8FBF002C */   lw        $ra, 0x2C($sp)
    /* DE0F8 800CF148 1615FFE2 */  bne        $s0, $s5, .L800CF0D4_DE084
    /* DE0FC 800CF14C 00000000 */   nop
  .L800CF150_DE100:
    /* DE100 800CF150 8FBF002C */  lw         $ra, 0x2C($sp)
  .L800CF154_DE104:
    /* DE104 800CF154 8FB00014 */  lw         $s0, 0x14($sp)
    /* DE108 800CF158 8FB10018 */  lw         $s1, 0x18($sp)
    /* DE10C 800CF15C 8FB2001C */  lw         $s2, 0x1C($sp)
    /* DE110 800CF160 8FB30020 */  lw         $s3, 0x20($sp)
    /* DE114 800CF164 8FB40024 */  lw         $s4, 0x24($sp)
    /* DE118 800CF168 8FB50028 */  lw         $s5, 0x28($sp)
    /* DE11C 800CF16C 03E00008 */  jr         $ra
    /* DE120 800CF170 27BD0030 */   addiu     $sp, $sp, 0x30
endlabel func_800CF070_DE020
