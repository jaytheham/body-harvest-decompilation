nonmatching func_800C7924_D68D4, 0x4F4

glabel func_800C7924_D68D4
    /* D68D4 800C7924 27BDFFA8 */  addiu      $sp, $sp, -0x58
    /* D68D8 800C7928 3C0F8015 */  lui        $t7, %hi(D_80154214)
    /* D68DC 800C792C 91EF4214 */  lbu        $t7, %lo(D_80154214)($t7)
    /* D68E0 800C7930 AFB00020 */  sw         $s0, 0x20($sp)
    /* D68E4 800C7934 00078400 */  sll        $s0, $a3, 16
    /* D68E8 800C7938 00107403 */  sra        $t6, $s0, 16
    /* D68EC 800C793C 29E10023 */  slti       $at, $t7, 0x23
    /* D68F0 800C7940 01C08025 */  or         $s0, $t6, $zero
    /* D68F4 800C7944 AFBF0024 */  sw         $ra, 0x24($sp)
    /* D68F8 800C7948 AFA40058 */  sw         $a0, 0x58($sp)
    /* D68FC 800C794C AFA5005C */  sw         $a1, 0x5C($sp)
    /* D6900 800C7950 AFA60060 */  sw         $a2, 0x60($sp)
    /* D6904 800C7954 14200003 */  bnez       $at, .L800C7964_D6914
    /* D6908 800C7958 AFA70064 */   sw        $a3, 0x64($sp)
    /* D690C 800C795C 10000129 */  b          .L800C7E04_D6DB4
    /* D6910 800C7960 2402FFFD */   addiu     $v0, $zero, -0x3
  .L800C7964_D6914:
    /* D6914 800C7964 87B8006A */  lh         $t8, 0x6A($sp)
    /* D6918 800C7968 2401FFFD */  addiu      $at, $zero, -0x3
    /* D691C 800C796C 24040002 */  addiu      $a0, $zero, 0x2
    /* D6920 800C7970 17010006 */  bne        $t8, $at, .L800C798C_D693C
    /* D6924 800C7974 00000000 */   nop
    /* D6928 800C7978 3C048014 */  lui        $a0, %hi(D_801435A4)
    /* D692C 800C797C 0C00731B */  jal        osSyncPrintf
    /* D6930 800C7980 248435A4 */   addiu     $a0, $a0, %lo(D_801435A4)
    /* D6934 800C7984 1000011F */  b          .L800C7E04_D6DB4
    /* D6938 800C7988 2402FFFD */   addiu     $v0, $zero, -0x3
  .L800C798C_D693C:
    /* D693C 800C798C 0C03063F */  jal        func_800C18FC_D08AC
    /* D6940 800C7990 24050001 */   addiu     $a1, $zero, 0x1
    /* D6944 800C7994 2401FFFD */  addiu      $at, $zero, -0x3
    /* D6948 800C7998 10410119 */  beq        $v0, $at, .L800C7E00_D6DB0
    /* D694C 800C799C A7A2003C */   sh        $v0, 0x3C($sp)
    /* D6950 800C79A0 87B9003C */  lh         $t9, 0x3C($sp)
    /* D6954 800C79A4 2406001C */  addiu      $a2, $zero, 0x1C
    /* D6958 800C79A8 3C058015 */  lui        $a1, %hi(D_80154318)
    /* D695C 800C79AC 03260019 */  multu      $t9, $a2
    /* D6960 800C79B0 24A54318 */  addiu      $a1, $a1, %lo(D_80154318)
    /* D6964 800C79B4 87AC005A */  lh         $t4, 0x5A($sp)
    /* D6968 800C79B8 87AD005E */  lh         $t5, 0x5E($sp)
    /* D696C 800C79BC 87AE0062 */  lh         $t6, 0x62($sp)
    /* D6970 800C79C0 00105880 */  sll        $t3, $s0, 2
    /* D6974 800C79C4 00004012 */  mflo       $t0
    /* D6978 800C79C8 00A81821 */  addu       $v1, $a1, $t0
    /* D697C 800C79CC 84620004 */  lh         $v0, 0x4($v1)
    /* D6980 800C79D0 AFA30034 */  sw         $v1, 0x34($sp)
    /* D6984 800C79D4 00460019 */  multu      $v0, $a2
    /* D6988 800C79D8 00004812 */  mflo       $t1
    /* D698C 800C79DC 00A92021 */  addu       $a0, $a1, $t1
    /* D6990 800C79E0 848A0004 */  lh         $t2, 0x4($a0)
    /* D6994 800C79E4 A46B0002 */  sh         $t3, 0x2($v1)
    /* D6998 800C79E8 AFA40030 */  sw         $a0, 0x30($sp)
    /* D699C 800C79EC A46C0008 */  sh         $t4, 0x8($v1)
    /* D69A0 800C79F0 A46D000A */  sh         $t5, 0xA($v1)
    /* D69A4 800C79F4 A46E000C */  sh         $t6, 0xC($v1)
    /* D69A8 800C79F8 0C000E38 */  jal        func_800038E0_44E0
    /* D69AC 800C79FC A7AA0038 */   sh        $t2, 0x38($sp)
    /* D69B0 800C7A00 24010050 */  addiu      $at, $zero, 0x50
    /* D69B4 800C7A04 0041001A */  div        $zero, $v0, $at
    /* D69B8 800C7A08 8FA30034 */  lw         $v1, 0x34($sp)
    /* D69BC 800C7A0C 00007810 */  mfhi       $t7
    /* D69C0 800C7A10 25F80014 */  addiu      $t8, $t7, 0x14
    /* D69C4 800C7A14 24700008 */  addiu      $s0, $v1, 0x8
    /* D69C8 800C7A18 0C000E38 */  jal        func_800038E0_44E0
    /* D69CC 800C7A1C A2180006 */   sb        $t8, 0x6($s0)
    /* D69D0 800C7A20 24010050 */  addiu      $at, $zero, 0x50
    /* D69D4 800C7A24 0041001A */  div        $zero, $v0, $at
    /* D69D8 800C7A28 0000C810 */  mfhi       $t9
    /* D69DC 800C7A2C 27280014 */  addiu      $t0, $t9, 0x14
    /* D69E0 800C7A30 0C000E38 */  jal        func_800038E0_44E0
    /* D69E4 800C7A34 A2080007 */   sb        $t0, 0x7($s0)
    /* D69E8 800C7A38 24010050 */  addiu      $at, $zero, 0x50
    /* D69EC 800C7A3C 0041001A */  div        $zero, $v0, $at
    /* D69F0 800C7A40 00004810 */  mfhi       $t1
    /* D69F4 800C7A44 252A0014 */  addiu      $t2, $t1, 0x14
    /* D69F8 800C7A48 A20A0008 */  sb         $t2, 0x8($s0)
    /* D69FC 800C7A4C 8FAC0030 */  lw         $t4, 0x30($sp)
    /* D6A00 800C7A50 8FAB0070 */  lw         $t3, 0x70($sp)
    /* D6A04 800C7A54 0C000E38 */  jal        func_800038E0_44E0
    /* D6A08 800C7A58 AD8B0008 */   sw        $t3, 0x8($t4)
    /* D6A0C 800C7A5C 24010006 */  addiu      $at, $zero, 0x6
    /* D6A10 800C7A60 0041001A */  div        $zero, $v0, $at
    /* D6A14 800C7A64 00006810 */  mfhi       $t5
    /* D6A18 800C7A68 97AE006E */  lhu        $t6, 0x6E($sp)
    /* D6A1C 800C7A6C 24010007 */  addiu      $at, $zero, 0x7
    /* D6A20 800C7A70 01C1001A */  div        $zero, $t6, $at
    /* D6A24 800C7A74 00007812 */  mflo       $t7
    /* D6A28 800C7A78 01AFC021 */  addu       $t8, $t5, $t7
    /* D6A2C 800C7A7C 2719FFFD */  addiu      $t9, $t8, -0x3
    /* D6A30 800C7A80 0C000E38 */  jal        func_800038E0_44E0
    /* D6A34 800C7A84 A7B9006E */   sh        $t9, 0x6E($sp)
    /* D6A38 800C7A88 24010014 */  addiu      $at, $zero, 0x14
    /* D6A3C 800C7A8C 0041001A */  div        $zero, $v0, $at
    /* D6A40 800C7A90 00004010 */  mfhi       $t0
    /* D6A44 800C7A94 2509FFF6 */  addiu      $t1, $t0, -0xA
    /* D6A48 800C7A98 44892000 */  mtc1       $t1, $f4
    /* D6A4C 800C7A9C 00000000 */  nop
    /* D6A50 800C7AA0 468021A0 */  cvt.s.w    $f6, $f4
    /* D6A54 800C7AA4 0C000E38 */  jal        func_800038E0_44E0
    /* D6A58 800C7AA8 E7A60040 */   swc1      $f6, 0x40($sp)
    /* D6A5C 800C7AAC 24010006 */  addiu      $at, $zero, 0x6
    /* D6A60 800C7AB0 0041001A */  div        $zero, $v0, $at
    /* D6A64 800C7AB4 00005010 */  mfhi       $t2
    /* D6A68 800C7AB8 254B0006 */  addiu      $t3, $t2, 0x6
    /* D6A6C 800C7ABC 0560000C */  bltz       $t3, .L800C7AF0_D6AA0
    /* D6A70 800C7AC0 00000000 */   nop
    /* D6A74 800C7AC4 0C000E38 */  jal        func_800038E0_44E0
    /* D6A78 800C7AC8 00000000 */   nop
    /* D6A7C 800C7ACC 24010006 */  addiu      $at, $zero, 0x6
    /* D6A80 800C7AD0 0041001A */  div        $zero, $v0, $at
    /* D6A84 800C7AD4 00006010 */  mfhi       $t4
    /* D6A88 800C7AD8 258E0006 */  addiu      $t6, $t4, 0x6
    /* D6A8C 800C7ADC 448E4000 */  mtc1       $t6, $f8
    /* D6A90 800C7AE0 00000000 */  nop
    /* D6A94 800C7AE4 468042A0 */  cvt.s.w    $f10, $f8
    /* D6A98 800C7AE8 1000000C */  b          .L800C7B1C_D6ACC
    /* D6A9C 800C7AEC E7AA0044 */   swc1      $f10, 0x44($sp)
  .L800C7AF0_D6AA0:
    /* D6AA0 800C7AF0 0C000E38 */  jal        func_800038E0_44E0
    /* D6AA4 800C7AF4 00000000 */   nop
    /* D6AA8 800C7AF8 24010006 */  addiu      $at, $zero, 0x6
    /* D6AAC 800C7AFC 0041001A */  div        $zero, $v0, $at
    /* D6AB0 800C7B00 00006810 */  mfhi       $t5
    /* D6AB4 800C7B04 240FFFFA */  addiu      $t7, $zero, -0x6
    /* D6AB8 800C7B08 01EDC023 */  subu       $t8, $t7, $t5
    /* D6ABC 800C7B0C 44988000 */  mtc1       $t8, $f16
    /* D6AC0 800C7B10 00000000 */  nop
    /* D6AC4 800C7B14 468084A0 */  cvt.s.w    $f18, $f16
    /* D6AC8 800C7B18 E7B20044 */  swc1       $f18, 0x44($sp)
  .L800C7B1C_D6ACC:
    /* D6ACC 800C7B1C 0C000E38 */  jal        func_800038E0_44E0
    /* D6AD0 800C7B20 00000000 */   nop
    /* D6AD4 800C7B24 24010014 */  addiu      $at, $zero, 0x14
    /* D6AD8 800C7B28 0041001A */  div        $zero, $v0, $at
    /* D6ADC 800C7B2C 0000C810 */  mfhi       $t9
    /* D6AE0 800C7B30 2728FFF6 */  addiu      $t0, $t9, -0xA
    /* D6AE4 800C7B34 44882000 */  mtc1       $t0, $f4
    /* D6AE8 800C7B38 8FA90070 */  lw         $t1, 0x70($sp)
    /* D6AEC 800C7B3C 3C0A0503 */  lui        $t2, %hi(D_502D390)
    /* D6AF0 800C7B40 468020A0 */  cvt.s.w    $f2, $f4
    /* D6AF4 800C7B44 254AD390 */  addiu      $t2, $t2, %lo(D_502D390)
    /* D6AF8 800C7B48 27A40040 */  addiu      $a0, $sp, 0x40
    /* D6AFC 800C7B4C 152A000B */  bne        $t1, $t2, .L800C7B7C_D6B2C
    /* D6B00 800C7B50 E7A20048 */   swc1      $f2, 0x48($sp)
    /* D6B04 800C7B54 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* D6B08 800C7B58 44810000 */  mtc1       $at, $f0
    /* D6B0C 800C7B5C C7A60040 */  lwc1       $f6, 0x40($sp)
    /* D6B10 800C7B60 C7AA0044 */  lwc1       $f10, 0x44($sp)
    /* D6B14 800C7B64 46001083 */  div.s      $f2, $f2, $f0
    /* D6B18 800C7B68 46003203 */  div.s      $f8, $f6, $f0
    /* D6B1C 800C7B6C E7A20048 */  swc1       $f2, 0x48($sp)
    /* D6B20 800C7B70 46005403 */  div.s      $f16, $f10, $f0
    /* D6B24 800C7B74 E7A80040 */  swc1       $f8, 0x40($sp)
    /* D6B28 800C7B78 E7B00044 */  swc1       $f16, 0x44($sp)
  .L800C7B7C_D6B2C:
    /* D6B2C 800C7B7C 0C030409 */  jal        func_800C1024_CFFD4
    /* D6B30 800C7B80 00802825 */   or        $a1, $a0, $zero
    /* D6B34 800C7B84 87AB0038 */  lh         $t3, 0x38($sp)
    /* D6B38 800C7B88 97AD006E */  lhu        $t5, 0x6E($sp)
    /* D6B3C 800C7B8C 3C0F8015 */  lui        $t7, %hi(D_80154318)
    /* D6B40 800C7B90 000B60C0 */  sll        $t4, $t3, 3
    /* D6B44 800C7B94 018B6023 */  subu       $t4, $t4, $t3
    /* D6B48 800C7B98 448D9000 */  mtc1       $t5, $f18
    /* D6B4C 800C7B9C 000C6080 */  sll        $t4, $t4, 2
    /* D6B50 800C7BA0 258E0008 */  addiu      $t6, $t4, 0x8
    /* D6B54 800C7BA4 25EF4318 */  addiu      $t7, $t7, %lo(D_80154318)
    /* D6B58 800C7BA8 01CF1021 */  addu       $v0, $t6, $t7
    /* D6B5C 800C7BAC 05A10005 */  bgez       $t5, .L800C7BC4_D6B74
    /* D6B60 800C7BB0 46809020 */   cvt.s.w   $f0, $f18
    /* D6B64 800C7BB4 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* D6B68 800C7BB8 44812000 */  mtc1       $at, $f4
    /* D6B6C 800C7BBC 00000000 */  nop
    /* D6B70 800C7BC0 46040000 */  add.s      $f0, $f0, $f4
  .L800C7BC4_D6B74:
    /* D6B74 800C7BC4 C7A60040 */  lwc1       $f6, 0x40($sp)
    /* D6B78 800C7BC8 46060202 */  mul.s      $f8, $f0, $f6
    /* D6B7C 800C7BCC 4600428D */  trunc.w.s  $f10, $f8
    /* D6B80 800C7BD0 44095000 */  mfc1       $t1, $f10
    /* D6B84 800C7BD4 00000000 */  nop
    /* D6B88 800C7BD8 A0490000 */  sb         $t1, 0x0($v0)
    /* D6B8C 800C7BDC C7B00044 */  lwc1       $f16, 0x44($sp)
    /* D6B90 800C7BE0 46100482 */  mul.s      $f18, $f0, $f16
    /* D6B94 800C7BE4 4600910D */  trunc.w.s  $f4, $f18
    /* D6B98 800C7BE8 44032000 */  mfc1       $v1, $f4
    /* D6B9C 800C7BEC 00000000 */  nop
    /* D6BA0 800C7BF0 00035C00 */  sll        $t3, $v1, 16
    /* D6BA4 800C7BF4 000B6403 */  sra        $t4, $t3, 16
    /* D6BA8 800C7BF8 05800003 */  bltz       $t4, .L800C7C08_D6BB8
    /* D6BAC 800C7BFC 01801825 */   or        $v1, $t4, $zero
    /* D6BB0 800C7C00 10000003 */  b          .L800C7C10_D6BC0
    /* D6BB4 800C7C04 A04C0001 */   sb        $t4, 0x1($v0)
  .L800C7C08_D6BB8:
    /* D6BB8 800C7C08 00037023 */  negu       $t6, $v1
    /* D6BBC 800C7C0C A04E0001 */  sb         $t6, 0x1($v0)
  .L800C7C10_D6BC0:
    /* D6BC0 800C7C10 C7A60048 */  lwc1       $f6, 0x48($sp)
    /* D6BC4 800C7C14 46060202 */  mul.s      $f8, $f0, $f6
    /* D6BC8 800C7C18 4600428D */  trunc.w.s  $f10, $f8
    /* D6BCC 800C7C1C 44195000 */  mfc1       $t9, $f10
    /* D6BD0 800C7C20 00000000 */  nop
    /* D6BD4 800C7C24 A0590002 */  sb         $t9, 0x2($v0)
    /* D6BD8 800C7C28 0C000E38 */  jal        func_800038E0_44E0
    /* D6BDC 800C7C2C AFA20034 */   sw        $v0, 0x34($sp)
    /* D6BE0 800C7C30 240100FF */  addiu      $at, $zero, 0xFF
    /* D6BE4 800C7C34 0041001A */  div        $zero, $v0, $at
    /* D6BE8 800C7C38 8FA90034 */  lw         $t1, 0x34($sp)
    /* D6BEC 800C7C3C 00004010 */  mfhi       $t0
    /* D6BF0 800C7C40 0C000E38 */  jal        func_800038E0_44E0
    /* D6BF4 800C7C44 A1280003 */   sb        $t0, 0x3($t1)
    /* D6BF8 800C7C48 240100FF */  addiu      $at, $zero, 0xFF
    /* D6BFC 800C7C4C 0041001A */  div        $zero, $v0, $at
    /* D6C00 800C7C50 8FAB0034 */  lw         $t3, 0x34($sp)
    /* D6C04 800C7C54 00005010 */  mfhi       $t2
    /* D6C08 800C7C58 0C000E38 */  jal        func_800038E0_44E0
    /* D6C0C 800C7C5C A16A0004 */   sb        $t2, 0x4($t3)
    /* D6C10 800C7C60 240100FF */  addiu      $at, $zero, 0xFF
    /* D6C14 800C7C64 0041001A */  div        $zero, $v0, $at
    /* D6C18 800C7C68 8FAE0034 */  lw         $t6, 0x34($sp)
    /* D6C1C 800C7C6C 00006010 */  mfhi       $t4
    /* D6C20 800C7C70 0C000E38 */  jal        func_800038E0_44E0
    /* D6C24 800C7C74 A1CC0005 */   sb        $t4, 0x5($t6)
    /* D6C28 800C7C78 24010014 */  addiu      $at, $zero, 0x14
    /* D6C2C 800C7C7C 0041001A */  div        $zero, $v0, $at
    /* D6C30 800C7C80 8FB80034 */  lw         $t8, 0x34($sp)
    /* D6C34 800C7C84 00007810 */  mfhi       $t7
    /* D6C38 800C7C88 25EDFFF6 */  addiu      $t5, $t7, -0xA
    /* D6C3C 800C7C8C 0C000E38 */  jal        func_800038E0_44E0
    /* D6C40 800C7C90 A30D0006 */   sb        $t5, 0x6($t8)
    /* D6C44 800C7C94 24010014 */  addiu      $at, $zero, 0x14
    /* D6C48 800C7C98 0041001A */  div        $zero, $v0, $at
    /* D6C4C 800C7C9C 8FA90034 */  lw         $t1, 0x34($sp)
    /* D6C50 800C7CA0 0000C810 */  mfhi       $t9
    /* D6C54 800C7CA4 2728FFF6 */  addiu      $t0, $t9, -0xA
    /* D6C58 800C7CA8 0C000E38 */  jal        func_800038E0_44E0
    /* D6C5C 800C7CAC A1280007 */   sb        $t0, 0x7($t1)
    /* D6C60 800C7CB0 24010014 */  addiu      $at, $zero, 0x14
    /* D6C64 800C7CB4 0041001A */  div        $zero, $v0, $at
    /* D6C68 800C7CB8 8FAC0034 */  lw         $t4, 0x34($sp)
    /* D6C6C 800C7CBC 00005010 */  mfhi       $t2
    /* D6C70 800C7CC0 254BFFF6 */  addiu      $t3, $t2, -0xA
    /* D6C74 800C7CC4 A18B0008 */  sb         $t3, 0x8($t4)
    /* D6C78 800C7CC8 93A30077 */  lbu        $v1, 0x77($sp)
    /* D6C7C 800C7CCC 24010003 */  addiu      $at, $zero, 0x3
    /* D6C80 800C7CD0 14600003 */  bnez       $v1, .L800C7CE0_D6C90
    /* D6C84 800C7CD4 00000000 */   nop
    /* D6C88 800C7CD8 10000007 */  b          .L800C7CF8_D6CA8
    /* D6C8C 800C7CDC A200000B */   sb        $zero, 0xB($s0)
  .L800C7CE0_D6C90:
    /* D6C90 800C7CE0 14610004 */  bne        $v1, $at, .L800C7CF4_D6CA4
    /* D6C94 800C7CE4 240F0008 */   addiu     $t7, $zero, 0x8
    /* D6C98 800C7CE8 240E0010 */  addiu      $t6, $zero, 0x10
    /* D6C9C 800C7CEC 10000002 */  b          .L800C7CF8_D6CA8
    /* D6CA0 800C7CF0 A20E000B */   sb        $t6, 0xB($s0)
  .L800C7CF4_D6CA4:
    /* D6CA4 800C7CF4 A20F000B */  sb         $t7, 0xB($s0)
  .L800C7CF8_D6CA8:
    /* D6CA8 800C7CF8 0C000E38 */  jal        func_800038E0_44E0
    /* D6CAC 800C7CFC AFA30030 */   sw        $v1, 0x30($sp)
    /* D6CB0 800C7D00 24010064 */  addiu      $at, $zero, 0x64
    /* D6CB4 800C7D04 0041001A */  div        $zero, $v0, $at
    /* D6CB8 800C7D08 00006810 */  mfhi       $t5
    /* D6CBC 800C7D0C 31B800FF */  andi       $t8, $t5, 0xFF
    /* D6CC0 800C7D10 2B010028 */  slti       $at, $t8, 0x28
    /* D6CC4 800C7D14 14200003 */  bnez       $at, .L800C7D24_D6CD4
    /* D6CC8 800C7D18 8FA30030 */   lw        $v1, 0x30($sp)
    /* D6CCC 800C7D1C 10600004 */  beqz       $v1, .L800C7D30_D6CE0
    /* D6CD0 800C7D20 00000000 */   nop
  .L800C7D24_D6CD4:
    /* D6CD4 800C7D24 9219000B */  lbu        $t9, 0xB($s0)
    /* D6CD8 800C7D28 37280001 */  ori        $t0, $t9, 0x1
    /* D6CDC 800C7D2C A208000B */  sb         $t0, 0xB($s0)
  .L800C7D30_D6CE0:
    /* D6CE0 800C7D30 10600014 */  beqz       $v1, .L800C7D84_D6D34
    /* D6CE4 800C7D34 87A2006A */   lh        $v0, 0x6A($sp)
    /* D6CE8 800C7D38 2401FFF7 */  addiu      $at, $zero, -0x9
    /* D6CEC 800C7D3C 1041002A */  beq        $v0, $at, .L800C7DE8_D6D98
    /* D6CF0 800C7D40 87A4005A */   lh        $a0, 0x5A($sp)
    /* D6CF4 800C7D44 87A5005E */  lh         $a1, 0x5E($sp)
    /* D6CF8 800C7D48 87A60062 */  lh         $a2, 0x62($sp)
    /* D6CFC 800C7D4C 87A7003C */  lh         $a3, 0x3C($sp)
    /* D6D00 800C7D50 AFA20010 */  sw         $v0, 0x10($sp)
    /* D6D04 800C7D54 0C03231F */  jal        func_800C8C7C_D7C2C
    /* D6D08 800C7D58 AFA30030 */   sw        $v1, 0x30($sp)
    /* D6D0C 800C7D5C 8FA30030 */  lw         $v1, 0x30($sp)
    /* D6D10 800C7D60 304900FF */  andi       $t1, $v0, 0xFF
    /* D6D14 800C7D64 240100FB */  addiu      $at, $zero, 0xFB
    /* D6D18 800C7D68 11210004 */  beq        $t1, $at, .L800C7D7C_D6D2C
    /* D6D1C 800C7D6C A2020009 */   sb        $v0, 0x9($s0)
    /* D6D20 800C7D70 920A000B */  lbu        $t2, 0xB($s0)
    /* D6D24 800C7D74 354B0004 */  ori        $t3, $t2, 0x4
    /* D6D28 800C7D78 A20B000B */  sb         $t3, 0xB($s0)
  .L800C7D7C_D6D2C:
    /* D6D2C 800C7D7C 1000001A */  b          .L800C7DE8_D6D98
    /* D6D30 800C7D80 A200000A */   sb        $zero, 0xA($s0)
  .L800C7D84_D6D34:
    /* D6D34 800C7D84 0C000E38 */  jal        func_800038E0_44E0
    /* D6D38 800C7D88 AFA30030 */   sw        $v1, 0x30($sp)
    /* D6D3C 800C7D8C 24010064 */  addiu      $at, $zero, 0x64
    /* D6D40 800C7D90 0041001A */  div        $zero, $v0, $at
    /* D6D44 800C7D94 00006010 */  mfhi       $t4
    /* D6D48 800C7D98 29810029 */  slti       $at, $t4, 0x29
    /* D6D4C 800C7D9C 14200012 */  bnez       $at, .L800C7DE8_D6D98
    /* D6D50 800C7DA0 8FA30030 */   lw        $v1, 0x30($sp)
    /* D6D54 800C7DA4 87AE006A */  lh         $t6, 0x6A($sp)
    /* D6D58 800C7DA8 87A4005A */  lh         $a0, 0x5A($sp)
    /* D6D5C 800C7DAC 87A5005E */  lh         $a1, 0x5E($sp)
    /* D6D60 800C7DB0 87A60062 */  lh         $a2, 0x62($sp)
    /* D6D64 800C7DB4 87A7003C */  lh         $a3, 0x3C($sp)
    /* D6D68 800C7DB8 AFA30030 */  sw         $v1, 0x30($sp)
    /* D6D6C 800C7DBC 0C03231F */  jal        func_800C8C7C_D7C2C
    /* D6D70 800C7DC0 AFAE0010 */   sw        $t6, 0x10($sp)
    /* D6D74 800C7DC4 8FA30030 */  lw         $v1, 0x30($sp)
    /* D6D78 800C7DC8 304F00FF */  andi       $t7, $v0, 0xFF
    /* D6D7C 800C7DCC 240100FC */  addiu      $at, $zero, 0xFC
    /* D6D80 800C7DD0 11E10004 */  beq        $t7, $at, .L800C7DE4_D6D94
    /* D6D84 800C7DD4 A2020009 */   sb        $v0, 0x9($s0)
    /* D6D88 800C7DD8 920D000B */  lbu        $t5, 0xB($s0)
    /* D6D8C 800C7DDC 35B80004 */  ori        $t8, $t5, 0x4
    /* D6D90 800C7DE0 A218000B */  sb         $t8, 0xB($s0)
  .L800C7DE4_D6D94:
    /* D6D94 800C7DE4 A200000A */  sb         $zero, 0xA($s0)
  .L800C7DE8_D6D98:
    /* D6D98 800C7DE8 24010002 */  addiu      $at, $zero, 0x2
    /* D6D9C 800C7DEC 54610005 */  bnel       $v1, $at, .L800C7E04_D6DB4
    /* D6DA0 800C7DF0 87A2003C */   lh        $v0, 0x3C($sp)
    /* D6DA4 800C7DF4 9219000B */  lbu        $t9, 0xB($s0)
    /* D6DA8 800C7DF8 37280080 */  ori        $t0, $t9, 0x80
    /* D6DAC 800C7DFC A208000B */  sb         $t0, 0xB($s0)
  .L800C7E00_D6DB0:
    /* D6DB0 800C7E00 87A2003C */  lh         $v0, 0x3C($sp)
  .L800C7E04_D6DB4:
    /* D6DB4 800C7E04 8FBF0024 */  lw         $ra, 0x24($sp)
    /* D6DB8 800C7E08 8FB00020 */  lw         $s0, 0x20($sp)
    /* D6DBC 800C7E0C 27BD0058 */  addiu      $sp, $sp, 0x58
    /* D6DC0 800C7E10 03E00008 */  jr         $ra
    /* D6DC4 800C7E14 00000000 */   nop
endlabel func_800C7924_D68D4
