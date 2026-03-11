nonmatching func_8007A8AC_16296C, 0x594

glabel func_8007A8AC_16296C
    /* 16296C 8007A8AC 3C06800E */  lui        $a2, %hi(D_800E662C)
    /* 162970 8007A8B0 8CC6662C */  lw         $a2, %lo(D_800E662C)($a2)
    /* 162974 8007A8B4 3C0F800E */  lui        $t7, %hi(D_800E66A8)
    /* 162978 8007A8B8 25EF66A8 */  addiu      $t7, $t7, %lo(D_800E66A8)
    /* 16297C 8007A8BC 00067080 */  sll        $t6, $a2, 2
    /* 162980 8007A8C0 01C67023 */  subu       $t6, $t6, $a2
    /* 162984 8007A8C4 000E7100 */  sll        $t6, $t6, 4
    /* 162988 8007A8C8 01CF2821 */  addu       $a1, $t6, $t7
    /* 16298C 8007A8CC 90A20000 */  lbu        $v0, 0x0($a1)
    /* 162990 8007A8D0 3C18800E */  lui        $t8, %hi(D_800E65BC)
    /* 162994 8007A8D4 8F1865BC */  lw         $t8, %lo(D_800E65BC)($t8)
    /* 162998 8007A8D8 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 16299C 8007A8DC 0002C8C0 */  sll        $t9, $v0, 3
    /* 1629A0 8007A8E0 0322C821 */  addu       $t9, $t9, $v0
    /* 1629A4 8007A8E4 0019C8C0 */  sll        $t9, $t9, 3
    /* 1629A8 8007A8E8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1629AC 8007A8EC AFA40040 */  sw         $a0, 0x40($sp)
    /* 1629B0 8007A8F0 AFA00034 */  sw         $zero, 0x34($sp)
    /* 1629B4 8007A8F4 03193821 */  addu       $a3, $t8, $t9
    /* 1629B8 8007A8F8 8CE30040 */  lw         $v1, 0x40($a3)
    /* 1629BC 8007A8FC 30680008 */  andi       $t0, $v1, 0x8
    /* 1629C0 8007A900 51000045 */  beql       $t0, $zero, .L8007AA18_162AD8
    /* 1629C4 8007A904 90A3002C */   lbu       $v1, 0x2C($a1)
    /* 1629C8 8007A908 90A9002E */  lbu        $t1, 0x2E($a1)
    /* 1629CC 8007A90C 306B0080 */  andi       $t3, $v1, 0x80
    /* 1629D0 8007A910 312A0001 */  andi       $t2, $t1, 0x1
    /* 1629D4 8007A914 51400018 */  beql       $t2, $zero, .L8007A978_162A38
    /* 1629D8 8007A918 306A0080 */   andi      $t2, $v1, 0x80
    /* 1629DC 8007A91C 11600006 */  beqz       $t3, .L8007A938_1629F8
    /* 1629E0 8007A920 3C02800E */   lui       $v0, %hi(D_800E6614)
    /* 1629E4 8007A924 24426614 */  addiu      $v0, $v0, %lo(D_800E6614)
    /* 1629E8 8007A928 8C4C0000 */  lw         $t4, 0x0($v0)
    /* 1629EC 8007A92C 258D0001 */  addiu      $t5, $t4, 0x1
    /* 1629F0 8007A930 10000006 */  b          .L8007A94C_162A0C
    /* 1629F4 8007A934 AC4D0000 */   sw        $t5, 0x0($v0)
  .L8007A938_1629F8:
    /* 1629F8 8007A938 3C02800E */  lui        $v0, %hi(D_800E65FC)
    /* 1629FC 8007A93C 244265FC */  addiu      $v0, $v0, %lo(D_800E65FC)
    /* 162A00 8007A940 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 162A04 8007A944 25CF0001 */  addiu      $t7, $t6, 0x1
    /* 162A08 8007A948 AC4F0000 */  sw         $t7, 0x0($v0)
  .L8007A94C_162A0C:
    /* 162A0C 8007A94C 8CF80040 */  lw         $t8, 0x40($a3)
    /* 162A10 8007A950 3C02800E */  lui        $v0, %hi(D_800E6604)
    /* 162A14 8007A954 24426604 */  addiu      $v0, $v0, %lo(D_800E6604)
    /* 162A18 8007A958 33190040 */  andi       $t9, $t8, 0x40
    /* 162A1C 8007A95C 1320001E */  beqz       $t9, .L8007A9D8_162A98
    /* 162A20 8007A960 00000000 */   nop
    /* 162A24 8007A964 8C480000 */  lw         $t0, 0x0($v0)
    /* 162A28 8007A968 25090001 */  addiu      $t1, $t0, 0x1
    /* 162A2C 8007A96C 1000001A */  b          .L8007A9D8_162A98
    /* 162A30 8007A970 AC490000 */   sw        $t1, 0x0($v0)
    /* 162A34 8007A974 306A0080 */  andi       $t2, $v1, 0x80
  .L8007A978_162A38:
    /* 162A38 8007A978 11400006 */  beqz       $t2, .L8007A994_162A54
    /* 162A3C 8007A97C 3C02800E */   lui       $v0, %hi(D_800E6614)
    /* 162A40 8007A980 24426614 */  addiu      $v0, $v0, %lo(D_800E6614)
    /* 162A44 8007A984 8C4B0000 */  lw         $t3, 0x0($v0)
    /* 162A48 8007A988 256CFFFF */  addiu      $t4, $t3, -0x1
    /* 162A4C 8007A98C 10000006 */  b          .L8007A9A8_162A68
    /* 162A50 8007A990 AC4C0000 */   sw        $t4, 0x0($v0)
  .L8007A994_162A54:
    /* 162A54 8007A994 3C02800E */  lui        $v0, %hi(D_800E65FC)
    /* 162A58 8007A998 244265FC */  addiu      $v0, $v0, %lo(D_800E65FC)
    /* 162A5C 8007A99C 8C4D0000 */  lw         $t5, 0x0($v0)
    /* 162A60 8007A9A0 25AEFFFF */  addiu      $t6, $t5, -0x1
    /* 162A64 8007A9A4 AC4E0000 */  sw         $t6, 0x0($v0)
  .L8007A9A8_162A68:
    /* 162A68 8007A9A8 8CEF0040 */  lw         $t7, 0x40($a3)
    /* 162A6C 8007A9AC 3C02800E */  lui        $v0, %hi(D_800E6604)
    /* 162A70 8007A9B0 24426604 */  addiu      $v0, $v0, %lo(D_800E6604)
    /* 162A74 8007A9B4 31F80040 */  andi       $t8, $t7, 0x40
    /* 162A78 8007A9B8 13000007 */  beqz       $t8, .L8007A9D8_162A98
    /* 162A7C 8007A9BC 00000000 */   nop
    /* 162A80 8007A9C0 8C590000 */  lw         $t9, 0x0($v0)
    /* 162A84 8007A9C4 3C01800E */  lui        $at, %hi(D_800E6608)
    /* 162A88 8007A9C8 2728FFFF */  addiu      $t0, $t9, -0x1
    /* 162A8C 8007A9CC 15000002 */  bnez       $t0, .L8007A9D8_162A98
    /* 162A90 8007A9D0 AC480000 */   sw        $t0, 0x0($v0)
    /* 162A94 8007A9D4 AC206608 */  sw         $zero, %lo(D_800E6608)($at)
  .L8007A9D8_162A98:
    /* 162A98 8007A9D8 3C0A800E */  lui        $t2, %hi(D_800E6628)
    /* 162A9C 8007A9DC 8D4A6628 */  lw         $t2, %lo(D_800E6628)($t2)
    /* 162AA0 8007A9E0 24010001 */  addiu      $at, $zero, 0x1
    /* 162AA4 8007A9E4 5541000C */  bnel       $t2, $at, .L8007AA18_162AD8
    /* 162AA8 8007A9E8 90A3002C */   lbu       $v1, 0x2C($a1)
    /* 162AAC 8007A9EC 0C01C4C1 */  jal        func_80071304_1593C4
    /* 162AB0 8007A9F0 00000000 */   nop
    /* 162AB4 8007A9F4 3C06800E */  lui        $a2, %hi(D_800E662C)
    /* 162AB8 8007A9F8 8CC6662C */  lw         $a2, %lo(D_800E662C)($a2)
    /* 162ABC 8007A9FC 3C0C800E */  lui        $t4, %hi(D_800E66A8)
    /* 162AC0 8007AA00 258C66A8 */  addiu      $t4, $t4, %lo(D_800E66A8)
    /* 162AC4 8007AA04 00065880 */  sll        $t3, $a2, 2
    /* 162AC8 8007AA08 01665823 */  subu       $t3, $t3, $a2
    /* 162ACC 8007AA0C 000B5900 */  sll        $t3, $t3, 4
    /* 162AD0 8007AA10 016C2821 */  addu       $a1, $t3, $t4
    /* 162AD4 8007AA14 90A3002C */  lbu        $v1, 0x2C($a1)
  .L8007AA18_162AD8:
    /* 162AD8 8007AA18 24010001 */  addiu      $at, $zero, 0x1
    /* 162ADC 8007AA1C 30620003 */  andi       $v0, $v1, 0x3
    /* 162AE0 8007AA20 104100AC */  beq        $v0, $at, .L8007ACD4_162D94
    /* 162AE4 8007AA24 24010002 */   addiu     $at, $zero, 0x2
    /* 162AE8 8007AA28 10410007 */  beq        $v0, $at, .L8007AA48_162B08
    /* 162AEC 8007AA2C 24010003 */   addiu     $at, $zero, 0x3
    /* 162AF0 8007AA30 544100F4 */  bnel       $v0, $at, .L8007AE04_162EC4
    /* 162AF4 8007AA34 8FAD0040 */   lw        $t5, 0x40($sp)
    /* 162AF8 8007AA38 0C01ECBC */  jal        func_8007B2F0_1633B0
    /* 162AFC 8007AA3C 00C02025 */   or        $a0, $a2, $zero
    /* 162B00 8007AA40 100000EF */  b          .L8007AE00_162EC0
    /* 162B04 8007AA44 AFA20040 */   sw        $v0, 0x40($sp)
  .L8007AA48_162B08:
    /* 162B08 8007AA48 90AD002E */  lbu        $t5, 0x2E($a1)
    /* 162B0C 8007AA4C 306400FC */  andi       $a0, $v1, 0xFC
    /* 162B10 8007AA50 3C188005 */  lui        $t8, %hi(buildingInteriorToLoadId)
    /* 162B14 8007AA54 31AE0001 */  andi       $t6, $t5, 0x1
    /* 162B18 8007AA58 51C000EA */  beql       $t6, $zero, .L8007AE04_162EC4
    /* 162B1C 8007AA5C 8FAD0040 */   lw        $t5, 0x40($sp)
    /* 162B20 8007AA60 8F182548 */  lw         $t8, %lo(buildingInteriorToLoadId)($t8)
    /* 162B24 8007AA64 3C088004 */  lui        $t0, %hi(D_80047970)
    /* 162B28 8007AA68 24090001 */  addiu      $t1, $zero, 0x1
    /* 162B2C 8007AA6C 0018C840 */  sll        $t9, $t8, 1
    /* 162B30 8007AA70 01194021 */  addu       $t0, $t0, $t9
    /* 162B34 8007AA74 85087970 */  lh         $t0, %lo(D_80047970)($t0)
    /* 162B38 8007AA78 00C95004 */  sllv       $t2, $t1, $a2
    /* 162B3C 8007AA7C 00047883 */  sra        $t7, $a0, 2
    /* 162B40 8007AA80 010A5824 */  and        $t3, $t0, $t2
    /* 162B44 8007AA84 156000DE */  bnez       $t3, .L8007AE00_162EC0
    /* 162B48 8007AA88 01E02025 */   or        $a0, $t7, $zero
    /* 162B4C 8007AA8C 0C01E98D */  jal        func_8007A634_1626F4
    /* 162B50 8007AA90 AFAF003C */   sw        $t7, 0x3C($sp)
    /* 162B54 8007AA94 544000DB */  bnel       $v0, $zero, .L8007AE04_162EC4
    /* 162B58 8007AA98 8FAD0040 */   lw        $t5, 0x40($sp)
    /* 162B5C 8007AA9C 0C01E9B7 */  jal        func_8007A6DC_16279C
    /* 162B60 8007AAA0 8FA4003C */   lw        $a0, 0x3C($sp)
    /* 162B64 8007AAA4 144000D6 */  bnez       $v0, .L8007AE00_162EC0
    /* 162B68 8007AAA8 3C04800A */   lui       $a0, %hi(D_800A4958)
    /* 162B6C 8007AAAC 3C06800E */  lui        $a2, %hi(D_800E662C)
    /* 162B70 8007AAB0 8CC6662C */  lw         $a2, %lo(D_800E662C)($a2)
    /* 162B74 8007AAB4 24844958 */  addiu      $a0, $a0, %lo(D_800A4958)
    /* 162B78 8007AAB8 0C00731B */  jal        osSyncPrintf
    /* 162B7C 8007AABC 8FA5003C */   lw        $a1, 0x3C($sp)
    /* 162B80 8007AAC0 3C04800A */  lui        $a0, %hi(D_800A4978)
    /* 162B84 8007AAC4 3C058005 */  lui        $a1, %hi(D_80048026)
    /* 162B88 8007AAC8 84A58026 */  lh         $a1, %lo(D_80048026)($a1)
    /* 162B8C 8007AACC 0C00731B */  jal        osSyncPrintf
    /* 162B90 8007AAD0 24844978 */   addiu     $a0, $a0, %lo(D_800A4978)
    /* 162B94 8007AAD4 3C04800A */  lui        $a0, %hi(D_800A498C)
    /* 162B98 8007AAD8 3C058005 */  lui        $a1, %hi(buildingInteriorToLoadId)
    /* 162B9C 8007AADC 8CA52548 */  lw         $a1, %lo(buildingInteriorToLoadId)($a1)
    /* 162BA0 8007AAE0 0C00731B */  jal        osSyncPrintf
    /* 162BA4 8007AAE4 2484498C */   addiu     $a0, $a0, %lo(D_800A498C)
    /* 162BA8 8007AAE8 0C01E9E1 */  jal        func_8007A784_162844
    /* 162BAC 8007AAEC 8FA4003C */   lw        $a0, 0x3C($sp)
    /* 162BB0 8007AAF0 0C01EA06 */  jal        func_8007A818_1628D8
    /* 162BB4 8007AAF4 8FA4003C */   lw        $a0, 0x3C($sp)
    /* 162BB8 8007AAF8 3C0C8004 */  lui        $t4, %hi(currentLevel)
    /* 162BBC 8007AAFC 8D8C7F90 */  lw         $t4, %lo(currentLevel)($t4)
    /* 162BC0 8007AB00 8FA7003C */  lw         $a3, 0x3C($sp)
    /* 162BC4 8007AB04 24010002 */  addiu      $at, $zero, 0x2
    /* 162BC8 8007AB08 1581000B */  bne        $t4, $at, .L8007AB38_162BF8
    /* 162BCC 8007AB0C 00076880 */   sll       $t5, $a3, 2
    /* 162BD0 8007AB10 01A76823 */  subu       $t5, $t5, $a3
    /* 162BD4 8007AB14 3C0E8009 */  lui        $t6, %hi(D_8008DED0)
    /* 162BD8 8007AB18 25CEDED0 */  addiu      $t6, $t6, %lo(D_8008DED0)
    /* 162BDC 8007AB1C 000D6880 */  sll        $t5, $t5, 2
    /* 162BE0 8007AB20 01AE1021 */  addu       $v0, $t5, $t6
    /* 162BE4 8007AB24 8C580000 */  lw         $t8, 0x0($v0)
    /* 162BE8 8007AB28 3C0F0F02 */  lui        $t7, %hi(D_F019540)
    /* 162BEC 8007AB2C 25EF9540 */  addiu      $t7, $t7, %lo(D_F019540)
    /* 162BF0 8007AB30 51F80014 */  beql       $t7, $t8, .L8007AB84_162C44
    /* 162BF4 8007AB34 904B0004 */   lbu       $t3, 0x4($v0)
  .L8007AB38_162BF8:
    /* 162BF8 8007AB38 8FA7003C */  lw         $a3, 0x3C($sp)
    /* 162BFC 8007AB3C 3C03800E */  lui        $v1, %hi(D_800E65A8)
    /* 162C00 8007AB40 246365A8 */  addiu      $v1, $v1, %lo(D_800E65A8)
    /* 162C04 8007AB44 8C790000 */  lw         $t9, 0x0($v1)
    /* 162C08 8007AB48 00074080 */  sll        $t0, $a3, 2
    /* 162C0C 8007AB4C 3C0A8009 */  lui        $t2, %hi(D_8008DED0)
    /* 162C10 8007AB50 01074023 */  subu       $t0, $t0, $a3
    /* 162C14 8007AB54 00084080 */  sll        $t0, $t0, 2
    /* 162C18 8007AB58 254ADED0 */  addiu      $t2, $t2, %lo(D_8008DED0)
    /* 162C1C 8007AB5C 37290010 */  ori        $t1, $t9, 0x10
    /* 162C20 8007AB60 AC690000 */  sw         $t1, 0x0($v1)
    /* 162C24 8007AB64 010A1021 */  addu       $v0, $t0, $t2
    /* 162C28 8007AB68 3C04800E */  lui        $a0, %hi(D_800E662C)
    /* 162C2C 8007AB6C 8C84662C */  lw         $a0, %lo(D_800E662C)($a0)
    /* 162C30 8007AB70 0C01EC78 */  jal        func_8007B1E0_1632A0
    /* 162C34 8007AB74 AFA2002C */   sw        $v0, 0x2C($sp)
    /* 162C38 8007AB78 8FA2002C */  lw         $v0, 0x2C($sp)
    /* 162C3C 8007AB7C 8FA7003C */  lw         $a3, 0x3C($sp)
    /* 162C40 8007AB80 904B0004 */  lbu        $t3, 0x4($v0)
  .L8007AB84_162C44:
    /* 162C44 8007AB84 24030001 */  addiu      $v1, $zero, 0x1
    /* 162C48 8007AB88 3C0C8005 */  lui        $t4, %hi(buildingInteriorToLoadId)
    /* 162C4C 8007AB8C 146B000C */  bne        $v1, $t3, .L8007ABC0_162C80
    /* 162C50 8007AB90 3C0E8004 */   lui       $t6, %hi(D_80047970)
    /* 162C54 8007AB94 8D8C2548 */  lw         $t4, %lo(buildingInteriorToLoadId)($t4)
    /* 162C58 8007AB98 25CE7970 */  addiu      $t6, $t6, %lo(D_80047970)
    /* 162C5C 8007AB9C 3C18800E */  lui        $t8, %hi(D_800E662C)
    /* 162C60 8007ABA0 000C6840 */  sll        $t5, $t4, 1
    /* 162C64 8007ABA4 8F18662C */  lw         $t8, %lo(D_800E662C)($t8)
    /* 162C68 8007ABA8 01AE1021 */  addu       $v0, $t5, $t6
    /* 162C6C 8007ABAC 844F0000 */  lh         $t7, 0x0($v0)
    /* 162C70 8007ABB0 24190001 */  addiu      $t9, $zero, 0x1
    /* 162C74 8007ABB4 03194804 */  sllv       $t1, $t9, $t8
    /* 162C78 8007ABB8 01E94025 */  or         $t0, $t7, $t1
    /* 162C7C 8007ABBC A4480000 */  sh         $t0, 0x0($v0)
  .L8007ABC0_162C80:
    /* 162C80 8007ABC0 14E3001F */  bne        $a3, $v1, .L8007AC40_162D00
    /* 162C84 8007ABC4 AFA30034 */   sw        $v1, 0x34($sp)
    /* 162C88 8007ABC8 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 162C8C 8007ABCC 24842B34 */  addiu      $a0, $a0, %lo(D_80052B34)
    /* 162C90 8007ABD0 8C820000 */  lw         $v0, 0x0($a0)
    /* 162C94 8007ABD4 24060070 */  addiu      $a2, $zero, 0x70
    /* 162C98 8007ABD8 3C058025 */  lui        $a1, %hi(vehicleSpecs)
    /* 162C9C 8007ABDC 904B001A */  lbu        $t3, 0x1A($v0)
    /* 162CA0 8007ABE0 24A57A00 */  addiu      $a1, $a1, %lo(vehicleSpecs)
    /* 162CA4 8007ABE4 844A001C */  lh         $t2, 0x1C($v0)
    /* 162CA8 8007ABE8 01660019 */  multu      $t3, $a2
    /* 162CAC 8007ABEC 00006012 */  mflo       $t4
    /* 162CB0 8007ABF0 00AC6821 */  addu       $t5, $a1, $t4
    /* 162CB4 8007ABF4 95AE003A */  lhu        $t6, 0x3A($t5)
    /* 162CB8 8007ABF8 05C10003 */  bgez       $t6, .L8007AC08_162CC8
    /* 162CBC 8007ABFC 000EC883 */   sra       $t9, $t6, 2
    /* 162CC0 8007AC00 25C10003 */  addiu      $at, $t6, 0x3
    /* 162CC4 8007AC04 0001C883 */  sra        $t9, $at, 2
  .L8007AC08_162CC8:
    /* 162CC8 8007AC08 0159C021 */  addu       $t8, $t2, $t9
    /* 162CCC 8007AC0C A458001C */  sh         $t8, 0x1C($v0)
    /* 162CD0 8007AC10 8C820000 */  lw         $v0, 0x0($a0)
    /* 162CD4 8007AC14 904F001A */  lbu        $t7, 0x1A($v0)
    /* 162CD8 8007AC18 844B001C */  lh         $t3, 0x1C($v0)
    /* 162CDC 8007AC1C 01E60019 */  multu      $t7, $a2
    /* 162CE0 8007AC20 00004812 */  mflo       $t1
    /* 162CE4 8007AC24 00A94021 */  addu       $t0, $a1, $t1
    /* 162CE8 8007AC28 9503003A */  lhu        $v1, 0x3A($t0)
    /* 162CEC 8007AC2C 006B082A */  slt        $at, $v1, $t3
    /* 162CF0 8007AC30 10200024 */  beqz       $at, .L8007ACC4_162D84
    /* 162CF4 8007AC34 00000000 */   nop
    /* 162CF8 8007AC38 10000022 */  b          .L8007ACC4_162D84
    /* 162CFC 8007AC3C A443001C */   sh        $v1, 0x1C($v0)
  .L8007AC40_162D00:
    /* 162D00 8007AC40 24010010 */  addiu      $at, $zero, 0x10
    /* 162D04 8007AC44 14E10018 */  bne        $a3, $at, .L8007ACA8_162D68
    /* 162D08 8007AC48 3C048005 */   lui       $a0, %hi(D_80052B34)
    /* 162D0C 8007AC4C 24842B34 */  addiu      $a0, $a0, %lo(D_80052B34)
    /* 162D10 8007AC50 8C820000 */  lw         $v0, 0x0($a0)
    /* 162D14 8007AC54 24060070 */  addiu      $a2, $zero, 0x70
    /* 162D18 8007AC58 3C058025 */  lui        $a1, %hi(vehicleSpecs)
    /* 162D1C 8007AC5C 904C001A */  lbu        $t4, 0x1A($v0)
    /* 162D20 8007AC60 24A57A00 */  addiu      $a1, $a1, %lo(vehicleSpecs)
    /* 162D24 8007AC64 01860019 */  multu      $t4, $a2
    /* 162D28 8007AC68 00006812 */  mflo       $t5
    /* 162D2C 8007AC6C 00AD7021 */  addu       $t6, $a1, $t5
    /* 162D30 8007AC70 95CA003A */  lhu        $t2, 0x3A($t6)
    /* 162D34 8007AC74 A44A001C */  sh         $t2, 0x1C($v0)
    /* 162D38 8007AC78 8C820000 */  lw         $v0, 0x0($a0)
    /* 162D3C 8007AC7C 9059001A */  lbu        $t9, 0x1A($v0)
    /* 162D40 8007AC80 8449001C */  lh         $t1, 0x1C($v0)
    /* 162D44 8007AC84 03260019 */  multu      $t9, $a2
    /* 162D48 8007AC88 0000C012 */  mflo       $t8
    /* 162D4C 8007AC8C 00B87821 */  addu       $t7, $a1, $t8
    /* 162D50 8007AC90 95E3003A */  lhu        $v1, 0x3A($t7)
    /* 162D54 8007AC94 0069082A */  slt        $at, $v1, $t1
    /* 162D58 8007AC98 1020000A */  beqz       $at, .L8007ACC4_162D84
    /* 162D5C 8007AC9C 00000000 */   nop
    /* 162D60 8007ACA0 10000008 */  b          .L8007ACC4_162D84
    /* 162D64 8007ACA4 A443001C */   sh        $v1, 0x1C($v0)
  .L8007ACA8_162D68:
    /* 162D68 8007ACA8 0C002311 */  jal        func_80008C44_9844
    /* 162D6C 8007ACAC 00E02025 */   or        $a0, $a3, $zero
    /* 162D70 8007ACB0 3C04800A */  lui        $a0, %hi(D_800A49A0)
    /* 162D74 8007ACB4 248449A0 */  addiu      $a0, $a0, %lo(D_800A49A0)
    /* 162D78 8007ACB8 0C00731B */  jal        osSyncPrintf
    /* 162D7C 8007ACBC 8FA5003C */   lw        $a1, 0x3C($sp)
    /* 162D80 8007ACC0 8FA7003C */  lw         $a3, 0x3C($sp)
  .L8007ACC4_162D84:
    /* 162D84 8007ACC4 0C023711 */  jal        func_8008DC44_175D04
    /* 162D88 8007ACC8 00E02025 */   or        $a0, $a3, $zero
    /* 162D8C 8007ACCC 1000004D */  b          .L8007AE04_162EC4
    /* 162D90 8007ACD0 8FAD0040 */   lw        $t5, 0x40($sp)
  .L8007ACD4_162D94:
    /* 162D94 8007ACD4 90A8002E */  lbu        $t0, 0x2E($a1)
    /* 162D98 8007ACD8 306700FC */  andi       $a3, $v1, 0xFC
    /* 162D9C 8007ACDC 00072883 */  sra        $a1, $a3, 2
    /* 162DA0 8007ACE0 310B0001 */  andi       $t3, $t0, 0x1
    /* 162DA4 8007ACE4 11600046 */  beqz       $t3, .L8007AE00_162EC0
    /* 162DA8 8007ACE8 3C0D8005 */   lui       $t5, %hi(buildingInteriorToLoadId)
    /* 162DAC 8007ACEC 8DAD2548 */  lw         $t5, %lo(buildingInteriorToLoadId)($t5)
    /* 162DB0 8007ACF0 3C0A8004 */  lui        $t2, %hi(D_80047970)
    /* 162DB4 8007ACF4 254A7970 */  addiu      $t2, $t2, %lo(D_80047970)
    /* 162DB8 8007ACF8 000D7040 */  sll        $t6, $t5, 1
    /* 162DBC 8007ACFC 01CA1021 */  addu       $v0, $t6, $t2
    /* 162DC0 8007AD00 84590000 */  lh         $t9, 0x0($v0)
    /* 162DC4 8007AD04 24180001 */  addiu      $t8, $zero, 0x1
    /* 162DC8 8007AD08 00D87804 */  sllv       $t7, $t8, $a2
    /* 162DCC 8007AD0C 000527C3 */  sra        $a0, $a1, 31
    /* 162DD0 8007AD10 032F4825 */  or         $t1, $t9, $t7
    /* 162DD4 8007AD14 A4490000 */  sh         $t1, 0x0($v0)
    /* 162DD8 8007AD18 AFA40018 */  sw         $a0, 0x18($sp)
    /* 162DDC 8007AD1C AFA5001C */  sw         $a1, 0x1C($sp)
    /* 162DE0 8007AD20 0C001C9B */  jal        func_8000726C_7E6C
    /* 162DE4 8007AD24 AFA5003C */   sw        $a1, 0x3C($sp)
    /* 162DE8 8007AD28 14400035 */  bnez       $v0, .L8007AE00_162EC0
    /* 162DEC 8007AD2C 8FA40018 */   lw        $a0, 0x18($sp)
    /* 162DF0 8007AD30 0C001CB3 */  jal        func_800072CC_7ECC
    /* 162DF4 8007AD34 8FA5001C */   lw        $a1, 0x1C($sp)
    /* 162DF8 8007AD38 8FAB003C */  lw         $t3, 0x3C($sp)
    /* 162DFC 8007AD3C 3C028004 */  lui        $v0, %hi(currentLevel)
    /* 162E00 8007AD40 2961000B */  slti       $at, $t3, 0xB
    /* 162E04 8007AD44 10200023 */  beqz       $at, .L8007ADD4_162E94
    /* 162E08 8007AD48 00000000 */   nop
    /* 162E0C 8007AD4C 8C427F90 */  lw         $v0, %lo(currentLevel)($v0)
    /* 162E10 8007AD50 000B6880 */  sll        $t5, $t3, 2
    /* 162E14 8007AD54 3C0A8009 */  lui        $t2, %hi(D_8008DFA0)
    /* 162E18 8007AD58 00026080 */  sll        $t4, $v0, 2
    /* 162E1C 8007AD5C 01826023 */  subu       $t4, $t4, $v0
    /* 162E20 8007AD60 000C6080 */  sll        $t4, $t4, 2
    /* 162E24 8007AD64 01826023 */  subu       $t4, $t4, $v0
    /* 162E28 8007AD68 000C6080 */  sll        $t4, $t4, 2
    /* 162E2C 8007AD6C 018D7021 */  addu       $t6, $t4, $t5
    /* 162E30 8007AD70 014E5021 */  addu       $t2, $t2, $t6
    /* 162E34 8007AD74 8D4ADFA0 */  lw         $t2, %lo(D_8008DFA0)($t2)
    /* 162E38 8007AD78 3C03800E */  lui        $v1, %hi(D_800E65A8)
    /* 162E3C 8007AD7C 246365A8 */  addiu      $v1, $v1, %lo(D_800E65A8)
    /* 162E40 8007AD80 1140000A */  beqz       $t2, .L8007ADAC_162E6C
    /* 162E44 8007AD84 24180001 */   addiu     $t8, $zero, 0x1
    /* 162E48 8007AD88 8C790000 */  lw         $t9, 0x0($v1)
    /* 162E4C 8007AD8C 3C04800E */  lui        $a0, %hi(D_800E662C)
    /* 162E50 8007AD90 AFB80034 */  sw         $t8, 0x34($sp)
    /* 162E54 8007AD94 372F0010 */  ori        $t7, $t9, 0x10
    /* 162E58 8007AD98 AC6F0000 */  sw         $t7, 0x0($v1)
    /* 162E5C 8007AD9C 0C01EC78 */  jal        func_8007B1E0_1632A0
    /* 162E60 8007ADA0 8C84662C */   lw        $a0, %lo(D_800E662C)($a0)
    /* 162E64 8007ADA4 3C028004 */  lui        $v0, %hi(currentLevel)
    /* 162E68 8007ADA8 8C427F90 */  lw         $v0, %lo(currentLevel)($v0)
  .L8007ADAC_162E6C:
    /* 162E6C 8007ADAC 24010001 */  addiu      $at, $zero, 0x1
    /* 162E70 8007ADB0 14410004 */  bne        $v0, $at, .L8007ADC4_162E84
    /* 162E74 8007ADB4 8FA8003C */   lw        $t0, 0x3C($sp)
    /* 162E78 8007ADB8 24010009 */  addiu      $at, $zero, 0x9
    /* 162E7C 8007ADBC 51010011 */  beql       $t0, $at, .L8007AE04_162EC4
    /* 162E80 8007ADC0 8FAD0040 */   lw        $t5, 0x40($sp)
  .L8007ADC4_162E84:
    /* 162E84 8007ADC4 0C02373D */  jal        func_8008DCF4_175DB4
    /* 162E88 8007ADC8 8FA4003C */   lw        $a0, 0x3C($sp)
    /* 162E8C 8007ADCC 1000000D */  b          .L8007AE04_162EC4
    /* 162E90 8007ADD0 8FAD0040 */   lw        $t5, 0x40($sp)
  .L8007ADD4_162E94:
    /* 162E94 8007ADD4 0C00211E */  jal        func_80008478_9078
    /* 162E98 8007ADD8 00000000 */   nop
    /* 162E9C 8007ADDC 10400008 */  beqz       $v0, .L8007AE00_162EC0
    /* 162EA0 8007ADE0 3C03800E */   lui       $v1, %hi(D_800E65A8)
    /* 162EA4 8007ADE4 246365A8 */  addiu      $v1, $v1, %lo(D_800E65A8)
    /* 162EA8 8007ADE8 8C690000 */  lw         $t1, 0x0($v1)
    /* 162EAC 8007ADEC 240C0001 */  addiu      $t4, $zero, 0x1
    /* 162EB0 8007ADF0 3C01800E */  lui        $at, %hi(D_800E65B8)
    /* 162EB4 8007ADF4 352B0100 */  ori        $t3, $t1, 0x100
    /* 162EB8 8007ADF8 AC6B0000 */  sw         $t3, 0x0($v1)
    /* 162EBC 8007ADFC AC2C65B8 */  sw         $t4, %lo(D_800E65B8)($at)
  .L8007AE00_162EC0:
    /* 162EC0 8007AE00 8FAD0040 */  lw         $t5, 0x40($sp)
  .L8007AE04_162EC4:
    /* 162EC4 8007AE04 51A0000B */  beql       $t5, $zero, .L8007AE34_162EF4
    /* 162EC8 8007AE08 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 162ECC 8007AE0C 8FAE0034 */  lw         $t6, 0x34($sp)
    /* 162ED0 8007AE10 11C00005 */  beqz       $t6, .L8007AE28_162EE8
    /* 162ED4 8007AE14 00000000 */   nop
    /* 162ED8 8007AE18 0C0054F6 */  jal        func_800153D8_15FD8
    /* 162EDC 8007AE1C 240400C5 */   addiu     $a0, $zero, 0xC5
    /* 162EE0 8007AE20 10000004 */  b          .L8007AE34_162EF4
    /* 162EE4 8007AE24 8FBF0014 */   lw        $ra, 0x14($sp)
  .L8007AE28_162EE8:
    /* 162EE8 8007AE28 0C004DF8 */  jal        func_800137E0
    /* 162EEC 8007AE2C 00000000 */   nop
    /* 162EF0 8007AE30 8FBF0014 */  lw         $ra, 0x14($sp)
  .L8007AE34_162EF4:
    /* 162EF4 8007AE34 27BD0040 */  addiu      $sp, $sp, 0x40
    /* 162EF8 8007AE38 03E00008 */  jr         $ra
    /* 162EFC 8007AE3C 00000000 */   nop
endlabel func_8007A8AC_16296C
