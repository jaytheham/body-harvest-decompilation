nonmatching func_8008F9E4_9E994, 0x294

glabel func_8008F9E4_9E994
    /* 9E994 8008F9E4 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 9E998 8008F9E8 AFB00018 */  sw         $s0, 0x18($sp)
    /* 9E99C 8008F9EC 309000FF */  andi       $s0, $a0, 0xFF
    /* 9E9A0 8008F9F0 00107080 */  sll        $t6, $s0, 2
    /* 9E9A4 8008F9F4 01D07021 */  addu       $t6, $t6, $s0
    /* 9E9A8 8008F9F8 3C0F8005 */  lui        $t7, %hi(alienInstances)
    /* 9E9AC 8008F9FC 25EF8198 */  addiu      $t7, $t7, %lo(alienInstances)
    /* 9E9B0 8008FA00 000E7100 */  sll        $t6, $t6, 4
    /* 9E9B4 8008FA04 01CF1821 */  addu       $v1, $t6, $t7
    /* 9E9B8 8008FA08 84780000 */  lh         $t8, 0x0($v1)
    /* 9E9BC 8008FA0C 846B002E */  lh         $t3, 0x2E($v1)
    /* 9E9C0 8008FA10 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 9E9C4 8008FA14 0018CA03 */  sra        $t9, $t8, 8
    /* 9E9C8 8008FA18 000B6203 */  sra        $t4, $t3, 8
    /* 9E9CC 8008FA1C AFA40040 */  sw         $a0, 0x40($sp)
    /* 9E9D0 8008FA20 172C0007 */  bne        $t9, $t4, .L8008FA40_9E9F0
    /* 9E9D4 8008FA24 00002825 */   or        $a1, $zero, $zero
    /* 9E9D8 8008FA28 846D0004 */  lh         $t5, 0x4($v1)
    /* 9E9DC 8008FA2C 846F0032 */  lh         $t7, 0x32($v1)
    /* 9E9E0 8008FA30 000D7203 */  sra        $t6, $t5, 8
    /* 9E9E4 8008FA34 000FC203 */  sra        $t8, $t7, 8
    /* 9E9E8 8008FA38 51D80003 */  beql       $t6, $t8, .L8008FA48_9E9F8
    /* 9E9EC 8008FA3C 320400FF */   andi      $a0, $s0, 0xFF
  .L8008FA40_9E9F0:
    /* 9E9F0 8008FA40 24050001 */  addiu      $a1, $zero, 0x1
    /* 9E9F4 8008FA44 320400FF */  andi       $a0, $s0, 0xFF
  .L8008FA48_9E9F8:
    /* 9E9F8 8008FA48 AFA30020 */  sw         $v1, 0x20($sp)
    /* 9E9FC 8008FA4C 0C023C2F */  jal        func_8008F0BC_9E06C
    /* 9EA00 8008FA50 AFA5002C */   sw        $a1, 0x2C($sp)
    /* 9EA04 8008FA54 8FA30020 */  lw         $v1, 0x20($sp)
    /* 9EA08 8008FA58 8FA5002C */  lw         $a1, 0x2C($sp)
    /* 9EA0C 8008FA5C 3C188025 */  lui        $t8, %hi(D_802566D8)
    /* 9EA10 8008FA60 8C680020 */  lw         $t0, 0x20($v1)
    /* 9EA14 8008FA64 310B1000 */  andi       $t3, $t0, 0x1000
    /* 9EA18 8008FA68 5160003C */  beql       $t3, $zero, .L8008FB5C_9EB0C
    /* 9EA1C 8008FA6C 906F001A */   lbu       $t7, 0x1A($v1)
    /* 9EA20 8008FA70 8479000C */  lh         $t9, 0xC($v1)
    /* 9EA24 8008FA74 3C028015 */  lui        $v0, %hi(D_8014DD50)
    /* 9EA28 8008FA78 2442DD50 */  addiu      $v0, $v0, %lo(D_8014DD50)
    /* 9EA2C 8008FA7C 00196100 */  sll        $t4, $t9, 4
    /* 9EA30 8008FA80 004C6821 */  addu       $t5, $v0, $t4
    /* 9EA34 8008FA84 81A4000C */  lb         $a0, 0xC($t5)
    /* 9EA38 8008FA88 8469000A */  lh         $t1, 0xA($v1)
    /* 9EA3C 8008FA8C 00047900 */  sll        $t7, $a0, 4
    /* 9EA40 8008FA90 004F7021 */  addu       $t6, $v0, $t7
    /* 9EA44 8008FA94 81C5000D */  lb         $a1, 0xD($t6)
    /* 9EA48 8008FA98 00095400 */  sll        $t2, $t1, 16
    /* 9EA4C 8008FA9C 320400FF */  andi       $a0, $s0, 0xFF
    /* 9EA50 8008FAA0 0005C100 */  sll        $t8, $a1, 4
    /* 9EA54 8008FAA4 00585821 */  addu       $t3, $v0, $t8
    /* 9EA58 8008FAA8 8166000D */  lb         $a2, 0xD($t3)
    /* 9EA5C 8008FAAC 000AC403 */  sra        $t8, $t2, 16
    /* 9EA60 8008FAB0 03005025 */  or         $t2, $t8, $zero
    /* 9EA64 8008FAB4 0006C900 */  sll        $t9, $a2, 4
    /* 9EA68 8008FAB8 00596021 */  addu       $t4, $v0, $t9
    /* 9EA6C 8008FABC 8187000D */  lb         $a3, 0xD($t4)
    /* 9EA70 8008FAC0 00085900 */  sll        $t3, $t0, 4
    /* 9EA74 8008FAC4 2419012C */  addiu      $t9, $zero, 0x12C
    /* 9EA78 8008FAC8 00076900 */  sll        $t5, $a3, 4
    /* 9EA7C 8008FACC 004D7821 */  addu       $t7, $v0, $t5
    /* 9EA80 8008FAD0 81EE000D */  lb         $t6, 0xD($t7)
    /* 9EA84 8008FAD4 0149082A */  slt        $at, $t2, $t1
    /* 9EA88 8008FAD8 05610003 */  bgez       $t3, .L8008FAE8_9EA98
    /* 9EA8C 8008FADC A7AE0036 */   sh        $t6, 0x36($sp)
    /* 9EA90 8008FAE0 1000000B */  b          .L8008FB10_9EAC0
    /* 9EA94 8008FAE4 AFB90024 */   sw        $t9, 0x24($sp)
  .L8008FAE8_9EA98:
    /* 9EA98 8008FAE8 906C001A */  lbu        $t4, 0x1A($v1)
    /* 9EA9C 8008FAEC 3C0F8025 */  lui        $t7, %hi(D_802566D8)
    /* 9EAA0 8008FAF0 000C6880 */  sll        $t5, $t4, 2
    /* 9EAA4 8008FAF4 01AC6823 */  subu       $t5, $t5, $t4
    /* 9EAA8 8008FAF8 000D6880 */  sll        $t5, $t5, 2
    /* 9EAAC 8008FAFC 01AC6821 */  addu       $t5, $t5, $t4
    /* 9EAB0 8008FB00 000D68C0 */  sll        $t5, $t5, 3
    /* 9EAB4 8008FB04 01ED7821 */  addu       $t7, $t7, $t5
    /* 9EAB8 8008FB08 85EF66D8 */  lh         $t7, %lo(D_802566D8)($t7)
    /* 9EABC 8008FB0C AFAF0024 */  sw         $t7, 0x24($sp)
  .L8008FB10_9EAC0:
    /* 9EAC0 8008FB10 10200005 */  beqz       $at, .L8008FB28_9EAD8
    /* 9EAC4 8008FB14 310B8000 */   andi      $t3, $t0, 0x8000
    /* 9EAC8 8008FB18 906E0047 */  lbu        $t6, 0x47($v1)
    /* 9EACC 8008FB1C 31D80001 */  andi       $t8, $t6, 0x1
    /* 9EAD0 8008FB20 53000009 */  beql       $t8, $zero, .L8008FB48_9EAF8
    /* 9EAD4 8008FB24 87A50036 */   lh        $a1, 0x36($sp)
  .L8008FB28_9EAD8:
    /* 9EAD8 8008FB28 15600006 */  bnez       $t3, .L8008FB44_9EAF4
    /* 9EADC 8008FB2C 35198000 */   ori       $t9, $t0, 0x8000
    /* 9EAE0 8008FB30 2401EFFF */  addiu      $at, $zero, -0x1001
    /* 9EAE4 8008FB34 AC790020 */  sw         $t9, 0x20($v1)
    /* 9EAE8 8008FB38 03216824 */  and        $t5, $t9, $at
    /* 9EAEC 8008FB3C AC6D0020 */  sw         $t5, 0x20($v1)
    /* 9EAF0 8008FB40 A0600036 */  sb         $zero, 0x36($v1)
  .L8008FB44_9EAF4:
    /* 9EAF4 8008FB44 87A50036 */  lh         $a1, 0x36($sp)
  .L8008FB48_9EAF8:
    /* 9EAF8 8008FB48 0C023E35 */  jal        func_8008F8D4_9E884
    /* 9EAFC 8008FB4C AFA30020 */   sw        $v1, 0x20($sp)
    /* 9EB00 8008FB50 10000024 */  b          .L8008FBE4_9EB94
    /* 9EB04 8008FB54 8FA30020 */   lw        $v1, 0x20($sp)
    /* 9EB08 8008FB58 906F001A */  lbu        $t7, 0x1A($v1)
  .L8008FB5C_9EB0C:
    /* 9EB0C 8008FB5C 3C010800 */  lui        $at, (0x8004000 >> 16)
    /* 9EB10 8008FB60 34214000 */  ori        $at, $at, (0x8004000 & 0xFFFF)
    /* 9EB14 8008FB64 000F7080 */  sll        $t6, $t7, 2
    /* 9EB18 8008FB68 01CF7023 */  subu       $t6, $t6, $t7
    /* 9EB1C 8008FB6C 000E7080 */  sll        $t6, $t6, 2
    /* 9EB20 8008FB70 01CF7021 */  addu       $t6, $t6, $t7
    /* 9EB24 8008FB74 000E70C0 */  sll        $t6, $t6, 3
    /* 9EB28 8008FB78 030EC021 */  addu       $t8, $t8, $t6
    /* 9EB2C 8008FB7C 871866D8 */  lh         $t8, %lo(D_802566D8)($t8)
    /* 9EB30 8008FB80 01015824 */  and        $t3, $t0, $at
    /* 9EB34 8008FB84 11600010 */  beqz       $t3, .L8008FBC8_9EB78
    /* 9EB38 8008FB88 AFB80024 */   sw        $t8, 0x24($sp)
    /* 9EB3C 8008FB8C 8462001E */  lh         $v0, 0x1E($v1)
    /* 9EB40 8008FB90 320400FF */  andi       $a0, $s0, 0xFF
    /* 9EB44 8008FB94 24050400 */  addiu      $a1, $zero, 0x400
    /* 9EB48 8008FB98 10400003 */  beqz       $v0, .L8008FBA8_9EB58
    /* 9EB4C 8008FB9C 2459FFFF */   addiu     $t9, $v0, -0x1
    /* 9EB50 8008FBA0 10000010 */  b          .L8008FBE4_9EB94
    /* 9EB54 8008FBA4 A479001E */   sh        $t9, 0x1E($v1)
  .L8008FBA8_9EB58:
    /* 9EB58 8008FBA8 0C021437 */  jal        func_800850DC_9408C
    /* 9EB5C 8008FBAC AFA30020 */   sw        $v1, 0x20($sp)
    /* 9EB60 8008FBB0 1040000C */  beqz       $v0, .L8008FBE4_9EB94
    /* 9EB64 8008FBB4 8FA30020 */   lw        $v1, 0x20($sp)
    /* 9EB68 8008FBB8 8C6C0020 */  lw         $t4, 0x20($v1)
    /* 9EB6C 8008FBBC 358D1000 */  ori        $t5, $t4, 0x1000
    /* 9EB70 8008FBC0 10000008 */  b          .L8008FBE4_9EB94
    /* 9EB74 8008FBC4 AC6D0020 */   sw        $t5, 0x20($v1)
  .L8008FBC8_9EB78:
    /* 9EB78 8008FBC8 10A00006 */  beqz       $a1, .L8008FBE4_9EB94
    /* 9EB7C 8008FBCC 310F2800 */   andi      $t7, $t0, 0x2800
    /* 9EB80 8008FBD0 15E00004 */  bnez       $t7, .L8008FBE4_9EB94
    /* 9EB84 8008FBD4 320400FF */   andi      $a0, $s0, 0xFF
    /* 9EB88 8008FBD8 0C023DB0 */  jal        func_8008F6C0_9E670
    /* 9EB8C 8008FBDC AFA30020 */   sw        $v1, 0x20($sp)
    /* 9EB90 8008FBE0 8FA30020 */  lw         $v1, 0x20($sp)
  .L8008FBE4_9EB94:
    /* 9EB94 8008FBE4 320400FF */  andi       $a0, $s0, 0xFF
    /* 9EB98 8008FBE8 24650008 */  addiu      $a1, $v1, 0x8
    /* 9EB9C 8008FBEC 0C02023C */  jal        func_800808F0_8F8A0
    /* 9EBA0 8008FBF0 AFA30020 */   sw        $v1, 0x20($sp)
    /* 9EBA4 8008FBF4 8FA30020 */  lw         $v1, 0x20($sp)
    /* 9EBA8 8008FBF8 3C018014 */  lui        $at, %hi(D_80141EF0)
    /* 9EBAC 8008FBFC D4281EF0 */  ldc1       $f8, %lo(D_80141EF0)($at)
    /* 9EBB0 8008FC00 846E0008 */  lh         $t6, 0x8($v1)
    /* 9EBB4 8008FC04 8479000E */  lh         $t9, 0xE($v1)
    /* 9EBB8 8008FC08 320400FF */  andi       $a0, $s0, 0xFF
    /* 9EBBC 8008FC0C 448E2000 */  mtc1       $t6, $f4
    /* 9EBC0 8008FC10 8FA50024 */  lw         $a1, 0x24($sp)
    /* 9EBC4 8008FC14 24060002 */  addiu      $a2, $zero, 0x2
    /* 9EBC8 8008FC18 468021A1 */  cvt.d.w    $f6, $f4
    /* 9EBCC 8008FC1C 46283282 */  mul.d      $f10, $f6, $f8
    /* 9EBD0 8008FC20 4620540D */  trunc.w.d  $f16, $f10
    /* 9EBD4 8008FC24 440B8000 */  mfc1       $t3, $f16
    /* 9EBD8 8008FC28 00000000 */  nop
    /* 9EBDC 8008FC2C A46B0008 */  sh         $t3, 0x8($v1)
    /* 9EBE0 8008FC30 846C0008 */  lh         $t4, 0x8($v1)
    /* 9EBE4 8008FC34 05810003 */  bgez       $t4, .L8008FC44_9EBF4
    /* 9EBE8 8008FC38 000C68C3 */   sra       $t5, $t4, 3
    /* 9EBEC 8008FC3C 25810007 */  addiu      $at, $t4, 0x7
    /* 9EBF0 8008FC40 000168C3 */  sra        $t5, $at, 3
  .L8008FC44_9EBF4:
    /* 9EBF4 8008FC44 032D7821 */  addu       $t7, $t9, $t5
    /* 9EBF8 8008FC48 0C023949 */  jal        func_8008E524_9D4D4
    /* 9EBFC 8008FC4C A46F000E */   sh        $t7, 0xE($v1)
    /* 9EC00 8008FC50 320400FF */  andi       $a0, $s0, 0xFF
    /* 9EC04 8008FC54 0C023A5E */  jal        func_8008E978_9D928
    /* 9EC08 8008FC58 00402825 */   or        $a1, $v0, $zero
    /* 9EC0C 8008FC5C 0C023BC7 */  jal        func_8008EF1C_9DECC
    /* 9EC10 8008FC60 320400FF */   andi      $a0, $s0, 0xFF
    /* 9EC14 8008FC64 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 9EC18 8008FC68 8FB00018 */  lw         $s0, 0x18($sp)
    /* 9EC1C 8008FC6C 27BD0040 */  addiu      $sp, $sp, 0x40
    /* 9EC20 8008FC70 03E00008 */  jr         $ra
    /* 9EC24 8008FC74 00000000 */   nop
endlabel func_8008F9E4_9E994
