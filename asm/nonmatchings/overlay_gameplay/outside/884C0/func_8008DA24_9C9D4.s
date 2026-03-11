nonmatching func_8008DA24_9C9D4, 0x4D0

glabel func_8008DA24_9C9D4
    /* 9C9D4 8008DA24 27BDFF78 */  addiu      $sp, $sp, -0x88
    /* 9C9D8 8008DA28 AFB00040 */  sw         $s0, 0x40($sp)
    /* 9C9DC 8008DA2C 309000FF */  andi       $s0, $a0, 0xFF
    /* 9C9E0 8008DA30 24090050 */  addiu      $t1, $zero, 0x50
    /* 9C9E4 8008DA34 02090019 */  multu      $s0, $t1
    /* 9C9E8 8008DA38 3C088005 */  lui        $t0, %hi(alienInstances)
    /* 9C9EC 8008DA3C 25088198 */  addiu      $t0, $t0, %lo(alienInstances)
    /* 9C9F0 8008DA40 AFB20048 */  sw         $s2, 0x48($sp)
    /* 9C9F4 8008DA44 AFBF004C */  sw         $ra, 0x4C($sp)
    /* 9C9F8 8008DA48 AFB10044 */  sw         $s1, 0x44($sp)
    /* 9C9FC 8008DA4C AFA40088 */  sw         $a0, 0x88($sp)
    /* 9CA00 8008DA50 00007012 */  mflo       $t6
    /* 9CA04 8008DA54 010E9021 */  addu       $s2, $t0, $t6
    /* 9CA08 8008DA58 864F0048 */  lh         $t7, 0x48($s2)
    /* 9CA0C 8008DA5C 92420025 */  lbu        $v0, 0x25($s2)
    /* 9CA10 8008DA60 11E00021 */  beqz       $t7, .L8008DAE8_9CA98
    /* 9CA14 8008DA64 00000000 */   nop
    /* 9CA18 8008DA68 00490019 */  multu      $v0, $t1
    /* 9CA1C 8008DA6C 27B90078 */  addiu      $t9, $sp, 0x78
    /* 9CA20 8008DA70 27AA0074 */  addiu      $t2, $sp, 0x74
    /* 9CA24 8008DA74 27AB0070 */  addiu      $t3, $sp, 0x70
    /* 9CA28 8008DA78 AFAB0018 */  sw         $t3, 0x18($sp)
    /* 9CA2C 8008DA7C AFAA0014 */  sw         $t2, 0x14($sp)
    /* 9CA30 8008DA80 AFB90010 */  sw         $t9, 0x10($sp)
    /* 9CA34 8008DA84 00002825 */  or         $a1, $zero, $zero
    /* 9CA38 8008DA88 00003025 */  or         $a2, $zero, $zero
    /* 9CA3C 8008DA8C 2407FFCE */  addiu      $a3, $zero, -0x32
    /* 9CA40 8008DA90 0000C012 */  mflo       $t8
    /* 9CA44 8008DA94 01182021 */  addu       $a0, $t0, $t8
    /* 9CA48 8008DA98 0C04A10A */  jal        func_80128428_1373D8
    /* 9CA4C 8008DA9C 00000000 */   nop
    /* 9CA50 8008DAA0 864C002C */  lh         $t4, 0x2C($s2)
    /* 9CA54 8008DAA4 3C0F8025 */  lui        $t7, %hi(D_802567A1)
    /* 9CA58 8008DAA8 241904B0 */  addiu      $t9, $zero, 0x4B0
    /* 9CA5C 8008DAAC 258DFFFF */  addiu      $t5, $t4, -0x1
    /* 9CA60 8008DAB0 A64D002C */  sh         $t5, 0x2C($s2)
    /* 9CA64 8008DAB4 864E002C */  lh         $t6, 0x2C($s2)
    /* 9CA68 8008DAB8 55C00105 */  bnel       $t6, $zero, .L8008DED0_9CE80
    /* 9CA6C 8008DABC 8FAE0078 */   lw        $t6, 0x78($sp)
    /* 9CA70 8008DAC0 91EF67A1 */  lbu        $t7, %lo(D_802567A1)($t7)
    /* 9CA74 8008DAC4 8E4B0020 */  lw         $t3, 0x20($s2)
    /* 9CA78 8008DAC8 2401BFFF */  addiu      $at, $zero, -0x4001
    /* 9CA7C 8008DACC 000FC080 */  sll        $t8, $t7, 2
    /* 9CA80 8008DAD0 030FC021 */  addu       $t8, $t8, $t7
    /* 9CA84 8008DAD4 03385023 */  subu       $t2, $t9, $t8
    /* 9CA88 8008DAD8 01616024 */  and        $t4, $t3, $at
    /* 9CA8C 8008DADC A64A002C */  sh         $t2, 0x2C($s2)
    /* 9CA90 8008DAE0 100000FA */  b          .L8008DECC_9CE7C
    /* 9CA94 8008DAE4 AE4C0020 */   sw        $t4, 0x20($s2)
  .L8008DAE8_9CA98:
    /* 9CA98 8008DAE8 00490019 */  multu      $v0, $t1
    /* 9CA9C 8008DAEC 27AE0070 */  addiu      $t6, $sp, 0x70
    /* 9CAA0 8008DAF0 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 9CAA4 8008DAF4 00002825 */  or         $a1, $zero, $zero
    /* 9CAA8 8008DAF8 27A60078 */  addiu      $a2, $sp, 0x78
    /* 9CAAC 8008DAFC 27A70074 */  addiu      $a3, $sp, 0x74
    /* 9CAB0 8008DB00 A3A20083 */  sb         $v0, 0x83($sp)
    /* 9CAB4 8008DB04 00006812 */  mflo       $t5
    /* 9CAB8 8008DB08 010D8821 */  addu       $s1, $t0, $t5
    /* 9CABC 8008DB0C 0C04A141 */  jal        func_80128504_1374B4
    /* 9CAC0 8008DB10 02202025 */   or        $a0, $s1, $zero
    /* 9CAC4 8008DB14 864F002C */  lh         $t7, 0x2C($s2)
    /* 9CAC8 8008DB18 3C028005 */  lui        $v0, %hi(D_80048180)
    /* 9CACC 8008DB1C 3C088005 */  lui        $t0, %hi(alienInstances)
    /* 9CAD0 8008DB20 25F90001 */  addiu      $t9, $t7, 0x1
    /* 9CAD4 8008DB24 A659002C */  sh         $t9, 0x2C($s2)
    /* 9CAD8 8008DB28 8C428180 */  lw         $v0, %lo(D_80048180)($v0)
    /* 9CADC 8008DB2C 25088198 */  addiu      $t0, $t0, %lo(alienInstances)
    /* 9CAE0 8008DB30 93A60083 */  lbu        $a2, 0x83($sp)
    /* 9CAE4 8008DB34 10400016 */  beqz       $v0, .L8008DB90_9CB40
    /* 9CAE8 8008DB38 24090050 */   addiu     $t1, $zero, 0x50
    /* 9CAEC 8008DB3C 3C188005 */  lui        $t8, %hi(D_80048184)
    /* 9CAF0 8008DB40 8F188184 */  lw         $t8, %lo(D_80048184)($t8)
    /* 9CAF4 8008DB44 57100013 */  bnel       $t8, $s0, .L8008DB94_9CB44
    /* 9CAF8 8008DB48 864E002C */   lh        $t6, 0x2C($s2)
    /* 9CAFC 8008DB4C 864A002C */  lh         $t2, 0x2C($s2)
    /* 9CB00 8008DB50 2403000F */  addiu      $v1, $zero, 0xF
    /* 9CB04 8008DB54 006A5823 */  subu       $t3, $v1, $t2
    /* 9CB08 8008DB58 000B6180 */  sll        $t4, $t3, 6
    /* 9CB0C 8008DB5C 0183001A */  div        $zero, $t4, $v1
    /* 9CB10 8008DB60 14600002 */  bnez       $v1, .L8008DB6C_9CB1C
    /* 9CB14 8008DB64 00000000 */   nop
    /* 9CB18 8008DB68 0007000D */  break      7
  .L8008DB6C_9CB1C:
    /* 9CB1C 8008DB6C 2401FFFF */  addiu      $at, $zero, -0x1
    /* 9CB20 8008DB70 14610004 */  bne        $v1, $at, .L8008DB84_9CB34
    /* 9CB24 8008DB74 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 9CB28 8008DB78 15810002 */  bne        $t4, $at, .L8008DB84_9CB34
    /* 9CB2C 8008DB7C 00000000 */   nop
    /* 9CB30 8008DB80 0006000D */  break      6
  .L8008DB84_9CB34:
    /* 9CB34 8008DB84 00006812 */  mflo       $t5
    /* 9CB38 8008DB88 3C018015 */  lui        $at, %hi(D_80157A3C)
    /* 9CB3C 8008DB8C A42D7A3C */  sh         $t5, %lo(D_80157A3C)($at)
  .L8008DB90_9CB40:
    /* 9CB40 8008DB90 864E002C */  lh         $t6, 0x2C($s2)
  .L8008DB94_9CB44:
    /* 9CB44 8008DB94 29C10010 */  slti       $at, $t6, 0x10
    /* 9CB48 8008DB98 50200006 */  beql       $at, $zero, .L8008DBB4_9CB64
    /* 9CB4C 8008DB9C 92380025 */   lbu       $t8, 0x25($s1)
    /* 9CB50 8008DBA0 8E4F0020 */  lw         $t7, 0x20($s2)
    /* 9CB54 8008DBA4 31F90600 */  andi       $t9, $t7, 0x600
    /* 9CB58 8008DBA8 572000C9 */  bnel       $t9, $zero, .L8008DED0_9CE80
    /* 9CB5C 8008DBAC 8FAE0078 */   lw        $t6, 0x78($sp)
    /* 9CB60 8008DBB0 92380025 */  lbu        $t8, 0x25($s1)
  .L8008DBB4_9CB64:
    /* 9CB64 8008DBB4 922C0026 */  lbu        $t4, 0x26($s1)
    /* 9CB68 8008DBB8 AFB00058 */  sw         $s0, 0x58($sp)
    /* 9CB6C 8008DBBC 03090019 */  multu      $t8, $t1
    /* 9CB70 8008DBC0 258D0001 */  addiu      $t5, $t4, 0x1
    /* 9CB74 8008DBC4 A22D0026 */  sb         $t5, 0x26($s1)
    /* 9CB78 8008DBC8 8E4E0020 */  lw         $t6, 0x20($s2)
    /* 9CB7C 8008DBCC 31CF2000 */  andi       $t7, $t6, 0x2000
    /* 9CB80 8008DBD0 00005012 */  mflo       $t2
    /* 9CB84 8008DBD4 010A5821 */  addu       $t3, $t0, $t2
    /* 9CB88 8008DBD8 11E000AC */  beqz       $t7, .L8008DE8C_9CE3C
    /* 9CB8C 8008DBDC AFAB0084 */   sw        $t3, 0x84($sp)
    /* 9CB90 8008DBE0 10400015 */  beqz       $v0, .L8008DC38_9CBE8
    /* 9CB94 8008DBE4 92430024 */   lbu       $v1, 0x24($s2)
    /* 9CB98 8008DBE8 3C198005 */  lui        $t9, %hi(D_80048184)
    /* 9CB9C 8008DBEC 8F398184 */  lw         $t9, %lo(D_80048184)($t9)
    /* 9CBA0 8008DBF0 3C018015 */  lui        $at, %hi(D_80157A3C)
    /* 9CBA4 8008DBF4 2404003C */  addiu      $a0, $zero, 0x3C
    /* 9CBA8 8008DBF8 1730000F */  bne        $t9, $s0, .L8008DC38_9CBE8
    /* 9CBAC 8008DBFC 00002825 */   or        $a1, $zero, $zero
    /* 9CBB0 8008DC00 A4207A3C */  sh         $zero, %lo(D_80157A3C)($at)
    /* 9CBB4 8008DC04 0C001B6B */  jal        func_80006DAC_79AC
    /* 9CBB8 8008DC08 A3A3006F */   sb        $v1, 0x6F($sp)
    /* 9CBBC 8008DC0C 93A3006F */  lbu        $v1, 0x6F($sp)
    /* 9CBC0 8008DC10 93A60083 */  lbu        $a2, 0x83($sp)
    /* 9CBC4 8008DC14 3C0B8005 */  lui        $t3, %hi(alienInstances)
    /* 9CBC8 8008DC18 00035080 */  sll        $t2, $v1, 2
    /* 9CBCC 8008DC1C 01435021 */  addu       $t2, $t2, $v1
    /* 9CBD0 8008DC20 000A5100 */  sll        $t2, $t2, 4
    /* 9CBD4 8008DC24 256B8198 */  addiu      $t3, $t3, %lo(alienInstances)
    /* 9CBD8 8008DC28 3C018005 */  lui        $at, %hi(D_80048184)
    /* 9CBDC 8008DC2C 014B8021 */  addu       $s0, $t2, $t3
    /* 9CBE0 8008DC30 10000082 */  b          .L8008DE3C_9CDEC
    /* 9CBE4 8008DC34 AC268184 */   sw        $a2, %lo(D_80048184)($at)
  .L8008DC38_9CBE8:
    /* 9CBE8 8008DC38 00690019 */  multu      $v1, $t1
    /* 9CBEC 8008DC3C 3C01FFFF */  lui        $at, (0xFFFF7FFF >> 16)
    /* 9CBF0 8008DC40 240F001E */  addiu      $t7, $zero, 0x1E
    /* 9CBF4 8008DC44 00006012 */  mflo       $t4
    /* 9CBF8 8008DC48 010C8021 */  addu       $s0, $t0, $t4
    /* 9CBFC 8008DC4C 8E0D0020 */  lw         $t5, 0x20($s0)
    /* 9CC00 8008DC50 000D72C0 */  sll        $t6, $t5, 11
    /* 9CC04 8008DC54 05C30063 */  bgezl      $t6, .L8008DDE4_9CD94
    /* 9CC08 8008DC58 8FAE0084 */   lw        $t6, 0x84($sp)
    /* 9CC0C 8008DC5C 8E2F0020 */  lw         $t7, 0x20($s1)
    /* 9CC10 8008DC60 34217FFF */  ori        $at, $at, (0xFFFF7FFF & 0xFFFF)
    /* 9CC14 8008DC64 00602025 */  or         $a0, $v1, $zero
    /* 9CC18 8008DC68 01E1C824 */  and        $t9, $t7, $at
    /* 9CC1C 8008DC6C 0C01E644 */  jal        func_80079910_888C0
    /* 9CC20 8008DC70 AE390020 */   sw        $t9, 0x20($s1)
    /* 9CC24 8008DC74 3C0A8005 */  lui        $t2, %hi(D_80048168)
    /* 9CC28 8008DC78 914A8168 */  lbu        $t2, %lo(D_80048168)($t2)
    /* 9CC2C 8008DC7C 92380024 */  lbu        $t8, 0x24($s1)
    /* 9CC30 8008DC80 93A60083 */  lbu        $a2, 0x83($sp)
    /* 9CC34 8008DC84 8FA20084 */  lw         $v0, 0x84($sp)
    /* 9CC38 8008DC88 030A082A */  slt        $at, $t8, $t2
    /* 9CC3C 8008DC8C 5420000B */  bnel       $at, $zero, .L8008DCBC_9CC6C
    /* 9CC40 8008DC90 92020024 */   lbu       $v0, 0x24($s0)
    /* 9CC44 8008DC94 8C4B0020 */  lw         $t3, 0x20($v0)
    /* 9CC48 8008DC98 30C400FF */  andi       $a0, $a2, 0xFF
    /* 9CC4C 8008DC9C 356C8000 */  ori        $t4, $t3, 0x8000
    /* 9CC50 8008DCA0 AC4C0020 */  sw         $t4, 0x20($v0)
    /* 9CC54 8008DCA4 358E6000 */  ori        $t6, $t4, 0x6000
    /* 9CC58 8008DCA8 0C021EAB */  jal        func_80087AAC_96A5C
    /* 9CC5C 8008DCAC AC4E0020 */   sw        $t6, 0x20($v0)
    /* 9CC60 8008DCB0 240F0004 */  addiu      $t7, $zero, 0x4
    /* 9CC64 8008DCB4 A22F0026 */  sb         $t7, 0x26($s1)
    /* 9CC68 8008DCB8 92020024 */  lbu        $v0, 0x24($s0)
  .L8008DCBC_9CC6C:
    /* 9CC6C 8008DCBC 24010001 */  addiu      $at, $zero, 0x1
    /* 9CC70 8008DCC0 10410003 */  beq        $v0, $at, .L8008DCD0_9CC80
    /* 9CC74 8008DCC4 2401001D */   addiu     $at, $zero, 0x1D
    /* 9CC78 8008DCC8 1441003F */  bne        $v0, $at, .L8008DDC8_9CD78
    /* 9CC7C 8008DCCC 240700C8 */   addiu     $a3, $zero, 0xC8
  .L8008DCD0_9CC80:
    /* 9CC80 8008DCD0 0C000E38 */  jal        func_800038E0_44E0
    /* 9CC84 8008DCD4 00000000 */   nop
    /* 9CC88 8008DCD8 0C000E38 */  jal        func_800038E0_44E0
    /* 9CC8C 8008DCDC A7A20068 */   sh        $v0, 0x68($sp)
    /* 9CC90 8008DCE0 0C000E38 */  jal        func_800038E0_44E0
    /* 9CC94 8008DCE4 A7A2006A */   sh        $v0, 0x6A($sp)
    /* 9CC98 8008DCE8 24030078 */  addiu      $v1, $zero, 0x78
    /* 9CC9C 8008DCEC 97B90068 */  lhu        $t9, 0x68($sp)
    /* 9CCA0 8008DCF0 97AC006A */  lhu        $t4, 0x6A($sp)
    /* 9CCA4 8008DCF4 240B007F */  addiu      $t3, $zero, 0x7F
    /* 9CCA8 8008DCF8 0323001A */  div        $zero, $t9, $v1
    /* 9CCAC 8008DCFC 00003810 */  mfhi       $a3
    /* 9CCB0 8008DD00 24E7FFC4 */  addiu      $a3, $a3, -0x3C
    /* 9CCB4 8008DD04 0007C600 */  sll        $t8, $a3, 24
    /* 9CCB8 8008DD08 0183001A */  div        $zero, $t4, $v1
    /* 9CCBC 8008DD0C 00006810 */  mfhi       $t5
    /* 9CCC0 8008DD10 00185603 */  sra        $t2, $t8, 24
    /* 9CCC4 8008DD14 01403825 */  or         $a3, $t2, $zero
    /* 9CCC8 8008DD18 25AEFFC4 */  addiu      $t6, $t5, -0x3C
    /* 9CCCC 8008DD1C AFAB0010 */  sw         $t3, 0x10($sp)
    /* 9CCD0 8008DD20 240D00FF */  addiu      $t5, $zero, 0xFF
    /* 9CCD4 8008DD24 24180014 */  addiu      $t8, $zero, 0x14
    /* 9CCD8 8008DD28 240F001E */  addiu      $t7, $zero, 0x1E
    /* 9CCDC 8008DD2C AFAF0018 */  sw         $t7, 0x18($sp)
    /* 9CCE0 8008DD30 AFB80020 */  sw         $t8, 0x20($sp)
    /* 9CCE4 8008DD34 AFAD0034 */  sw         $t5, 0x34($sp)
    /* 9CCE8 8008DD38 AFAE0014 */  sw         $t6, 0x14($sp)
    /* 9CCEC 8008DD3C 86040000 */  lh         $a0, 0x0($s0)
    /* 9CCF0 8008DD40 86050002 */  lh         $a1, 0x2($s0)
    /* 9CCF4 8008DD44 86060004 */  lh         $a2, 0x4($s0)
    /* 9CCF8 8008DD48 14600002 */  bnez       $v1, .L8008DD54_9CD04
    /* 9CCFC 8008DD4C 00000000 */   nop
    /* 9CD00 8008DD50 0007000D */  break      7
  .L8008DD54_9CD04:
    /* 9CD04 8008DD54 2401FFFF */  addiu      $at, $zero, -0x1
    /* 9CD08 8008DD58 14610004 */  bne        $v1, $at, .L8008DD6C_9CD1C
    /* 9CD0C 8008DD5C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 9CD10 8008DD60 17210002 */  bne        $t9, $at, .L8008DD6C_9CD1C
    /* 9CD14 8008DD64 00000000 */   nop
    /* 9CD18 8008DD68 0006000D */  break      6
  .L8008DD6C_9CD1C:
    /* 9CD1C 8008DD6C 24190004 */  addiu      $t9, $zero, 0x4
    /* 9CD20 8008DD70 14600002 */  bnez       $v1, .L8008DD7C_9CD2C
    /* 9CD24 8008DD74 00000000 */   nop
    /* 9CD28 8008DD78 0007000D */  break      7
  .L8008DD7C_9CD2C:
    /* 9CD2C 8008DD7C 2401FFFF */  addiu      $at, $zero, -0x1
    /* 9CD30 8008DD80 14610004 */  bne        $v1, $at, .L8008DD94_9CD44
    /* 9CD34 8008DD84 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 9CD38 8008DD88 15810002 */  bne        $t4, $at, .L8008DD94_9CD44
    /* 9CD3C 8008DD8C 00000000 */   nop
    /* 9CD40 8008DD90 0006000D */  break      6
  .L8008DD94_9CD44:
    /* 9CD44 8008DD94 2401005A */  addiu      $at, $zero, 0x5A
    /* 9CD48 8008DD98 0041001A */  div        $zero, $v0, $at
    /* 9CD4C 8008DD9C 00005010 */  mfhi       $t2
    /* 9CD50 8008DDA0 254B0028 */  addiu      $t3, $t2, 0x28
    /* 9CD54 8008DDA4 240C00FF */  addiu      $t4, $zero, 0xFF
    /* 9CD58 8008DDA8 AFAC002C */  sw         $t4, 0x2C($sp)
    /* 9CD5C 8008DDAC AFAB0024 */  sw         $t3, 0x24($sp)
    /* 9CD60 8008DDB0 AFB9001C */  sw         $t9, 0x1C($sp)
    /* 9CD64 8008DDB4 AFA00028 */  sw         $zero, 0x28($sp)
    /* 9CD68 8008DDB8 0C03297B */  jal        func_800CA5EC_D959C
    /* 9CD6C 8008DDBC AFA00030 */   sw        $zero, 0x30($sp)
    /* 9CD70 8008DDC0 1000001F */  b          .L8008DE40_9CDF0
    /* 9CD74 8008DDC4 92390024 */   lbu       $t9, 0x24($s1)
  .L8008DDC8_9CD78:
    /* 9CD78 8008DDC8 86040000 */  lh         $a0, 0x0($s0)
    /* 9CD7C 8008DDCC 86050002 */  lh         $a1, 0x2($s0)
    /* 9CD80 8008DDD0 0C03816D */  jal        func_800E05B4_EF564
    /* 9CD84 8008DDD4 86060004 */   lh        $a2, 0x4($s0)
    /* 9CD88 8008DDD8 10000019 */  b          .L8008DE40_9CDF0
    /* 9CD8C 8008DDDC 92390024 */   lbu       $t9, 0x24($s1)
    /* 9CD90 8008DDE0 8FAE0084 */  lw         $t6, 0x84($sp)
  .L8008DDE4_9CD94:
    /* 9CD94 8008DDE4 00C02025 */  or         $a0, $a2, $zero
    /* 9CD98 8008DDE8 24050002 */  addiu      $a1, $zero, 0x2
    /* 9CD9C 8008DDEC A1C3001B */  sb         $v1, 0x1B($t6)
    /* 9CDA0 8008DDF0 A2200036 */  sb         $zero, 0x36($s1)
    /* 9CDA4 8008DDF4 A2060025 */  sb         $a2, 0x25($s0)
    /* 9CDA8 8008DDF8 A60F002C */  sh         $t7, 0x2C($s0)
    /* 9CDAC 8008DDFC 0C04DD1A */  jal        func_80137468_146418
    /* 9CDB0 8008DE00 A3A3006F */   sb        $v1, 0x6F($sp)
    /* 9CDB4 8008DE04 92020024 */  lbu        $v0, 0x24($s0)
    /* 9CDB8 8008DE08 93A3006F */  lbu        $v1, 0x6F($sp)
    /* 9CDBC 8008DE0C 24010014 */  addiu      $at, $zero, 0x14
    /* 9CDC0 8008DE10 10410004 */  beq        $v0, $at, .L8008DE24_9CDD4
    /* 9CDC4 8008DE14 00602025 */   or        $a0, $v1, $zero
    /* 9CDC8 8008DE18 24010004 */  addiu      $at, $zero, 0x4
    /* 9CDCC 8008DE1C 14410005 */  bne        $v0, $at, .L8008DE34_9CDE4
    /* 9CDD0 8008DE20 24050263 */   addiu     $a1, $zero, 0x263
  .L8008DE24_9CDD4:
    /* 9CDD4 8008DE24 0C04DD1A */  jal        func_80137468_146418
    /* 9CDD8 8008DE28 24050274 */   addiu     $a1, $zero, 0x274
    /* 9CDDC 8008DE2C 10000004 */  b          .L8008DE40_9CDF0
    /* 9CDE0 8008DE30 92390024 */   lbu       $t9, 0x24($s1)
  .L8008DE34_9CDE4:
    /* 9CDE4 8008DE34 0C04DD1A */  jal        func_80137468_146418
    /* 9CDE8 8008DE38 00602025 */   or        $a0, $v1, $zero
  .L8008DE3C_9CDEC:
    /* 9CDEC 8008DE3C 92390024 */  lbu        $t9, 0x24($s1)
  .L8008DE40_9CDF0:
    /* 9CDF0 8008DE40 A620003A */  sh         $zero, 0x3A($s1)
    /* 9CDF4 8008DE44 27380001 */  addiu      $t8, $t9, 0x1
    /* 9CDF8 8008DE48 A2380024 */  sb         $t8, 0x24($s1)
    /* 9CDFC 8008DE4C 8E0A0020 */  lw         $t2, 0x20($s0)
    /* 9CE00 8008DE50 000A5AC0 */  sll        $t3, $t2, 11
    /* 9CE04 8008DE54 05620013 */  bltzl      $t3, .L8008DEA4_9CE54
    /* 9CE08 8008DE58 8FAA0084 */   lw        $t2, 0x84($sp)
    /* 9CE0C 8008DE5C 920C0024 */  lbu        $t4, 0x24($s0)
    /* 9CE10 8008DE60 24010004 */  addiu      $at, $zero, 0x4
    /* 9CE14 8008DE64 3C028005 */  lui        $v0, %hi(D_8004816C)
    /* 9CE18 8008DE68 15810004 */  bne        $t4, $at, .L8008DE7C_9CE2C
    /* 9CE1C 8008DE6C 2442816C */   addiu     $v0, $v0, %lo(D_8004816C)
    /* 9CE20 8008DE70 844D0000 */  lh         $t5, 0x0($v0)
    /* 9CE24 8008DE74 25AEFFFF */  addiu      $t6, $t5, -0x1
    /* 9CE28 8008DE78 A44E0000 */  sh         $t6, 0x0($v0)
  .L8008DE7C_9CE2C:
    /* 9CE2C 8008DE7C 0C02B870 */  jal        func_800AE1C0_BD170
    /* 9CE30 8008DE80 00000000 */   nop
    /* 9CE34 8008DE84 10000007 */  b          .L8008DEA4_9CE54
    /* 9CE38 8008DE88 8FAA0084 */   lw        $t2, 0x84($sp)
  .L8008DE8C_9CE3C:
    /* 9CE3C 8008DE8C 8E2F0020 */  lw         $t7, 0x20($s1)
    /* 9CE40 8008DE90 3C01FFFF */  lui        $at, (0xFFFF7FFF >> 16)
    /* 9CE44 8008DE94 34217FFF */  ori        $at, $at, (0xFFFF7FFF & 0xFFFF)
    /* 9CE48 8008DE98 01E1C824 */  and        $t9, $t7, $at
    /* 9CE4C 8008DE9C AE390020 */  sw         $t9, 0x20($s1)
    /* 9CE50 8008DEA0 8FAA0084 */  lw         $t2, 0x84($sp)
  .L8008DEA4_9CE54:
    /* 9CE54 8008DEA4 2401EFFF */  addiu      $at, $zero, -0x1001
    /* 9CE58 8008DEA8 241800FF */  addiu      $t8, $zero, 0xFF
    /* 9CE5C 8008DEAC 8D4B0020 */  lw         $t3, 0x20($t2)
    /* 9CE60 8008DEB0 240D0032 */  addiu      $t5, $zero, 0x32
    /* 9CE64 8008DEB4 A158001E */  sb         $t8, 0x1E($t2)
    /* 9CE68 8008DEB8 01616024 */  and        $t4, $t3, $at
    /* 9CE6C 8008DEBC AD4C0020 */  sw         $t4, 0x20($t2)
    /* 9CE70 8008DEC0 A62D002C */  sh         $t5, 0x2C($s1)
    /* 9CE74 8008DEC4 0C01E644 */  jal        func_80079910_888C0
    /* 9CE78 8008DEC8 8FA40058 */   lw        $a0, 0x58($sp)
  .L8008DECC_9CE7C:
    /* 9CE7C 8008DECC 8FAE0078 */  lw         $t6, 0x78($sp)
  .L8008DED0_9CE80:
    /* 9CE80 8008DED0 8FAF0070 */  lw         $t7, 0x70($sp)
    /* 9CE84 8008DED4 8FBF004C */  lw         $ra, 0x4C($sp)
    /* 9CE88 8008DED8 A64E0000 */  sh         $t6, 0x0($s2)
    /* 9CE8C 8008DEDC A64F0004 */  sh         $t7, 0x4($s2)
    /* 9CE90 8008DEE0 8FB20048 */  lw         $s2, 0x48($sp)
    /* 9CE94 8008DEE4 8FB00040 */  lw         $s0, 0x40($sp)
    /* 9CE98 8008DEE8 8FB10044 */  lw         $s1, 0x44($sp)
    /* 9CE9C 8008DEEC 03E00008 */  jr         $ra
    /* 9CEA0 8008DEF0 27BD0088 */   addiu     $sp, $sp, 0x88
endlabel func_8008DA24_9C9D4
