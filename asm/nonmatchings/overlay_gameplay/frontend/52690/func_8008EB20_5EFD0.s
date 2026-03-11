nonmatching func_8008EB20_5EFD0, 0x224

glabel func_8008EB20_5EFD0
    /* 5EFD0 8008EB20 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* 5EFD4 8008EB24 AFBF003C */  sw         $ra, 0x3C($sp)
    /* 5EFD8 8008EB28 AFA7005C */  sw         $a3, 0x5C($sp)
    /* 5EFDC 8008EB2C AFB00038 */  sw         $s0, 0x38($sp)
    /* 5EFE0 8008EB30 AFA40050 */  sw         $a0, 0x50($sp)
    /* 5EFE4 8008EB34 AFA50054 */  sw         $a1, 0x54($sp)
    /* 5EFE8 8008EB38 AFA60058 */  sw         $a2, 0x58($sp)
    /* 5EFEC 8008EB3C 0C000E38 */  jal        func_800038E0_44E0
    /* 5EFF0 8008EB40 A7A7005E */   sh        $a3, 0x5E($sp)
    /* 5EFF4 8008EB44 97A7005E */  lhu        $a3, 0x5E($sp)
    /* 5EFF8 8008EB48 87A40052 */  lh         $a0, 0x52($sp)
    /* 5EFFC 8008EB4C 87A50056 */  lh         $a1, 0x56($sp)
    /* 5F000 8008EB50 28E1001E */  slti       $at, $a3, 0x1E
    /* 5F004 8008EB54 10200003 */  beqz       $at, .L8008EB64_5F014
    /* 5F008 8008EB58 00E08025 */   or        $s0, $a3, $zero
    /* 5F00C 8008EB5C 2407001E */  addiu      $a3, $zero, 0x1E
    /* 5F010 8008EB60 2410001E */  addiu      $s0, $zero, 0x1E
  .L8008EB64_5F014:
    /* 5F014 8008EB64 2A0103E9 */  slti       $at, $s0, 0x3E9
    /* 5F018 8008EB68 14200002 */  bnez       $at, .L8008EB74_5F024
    /* 5F01C 8008EB6C 87A6005A */   lh        $a2, 0x5A($sp)
    /* 5F020 8008EB70 240703E8 */  addiu      $a3, $zero, 0x3E8
  .L8008EB74_5F024:
    /* 5F024 8008EB74 8FAF0064 */  lw         $t7, 0x64($sp)
    /* 5F028 8008EB78 93B8006B */  lbu        $t8, 0x6B($sp)
    /* 5F02C 8008EB7C A7A7005E */  sh         $a3, 0x5E($sp)
    /* 5F030 8008EB80 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 5F034 8008EB84 0C021B16 */  jal        func_80086C58_57108
    /* 5F038 8008EB88 AFB80014 */   sw        $t8, 0x14($sp)
    /* 5F03C 8008EB8C 2401FFFD */  addiu      $at, $zero, -0x3
    /* 5F040 8008EB90 97A7005E */  lhu        $a3, 0x5E($sp)
    /* 5F044 8008EB94 10410066 */  beq        $v0, $at, .L8008ED30_5F1E0
    /* 5F048 8008EB98 A7A20046 */   sh        $v0, 0x46($sp)
    /* 5F04C 8008EB9C 28E10051 */  slti       $at, $a3, 0x51
    /* 5F050 8008EBA0 1420000D */  bnez       $at, .L8008EBD8_5F088
    /* 5F054 8008EBA4 00E08025 */   or        $s0, $a3, $zero
    /* 5F058 8008EBA8 2401000A */  addiu      $at, $zero, 0xA
    /* 5F05C 8008EBAC 00E1001A */  div        $zero, $a3, $at
    /* 5F060 8008EBB0 00003812 */  mflo       $a3
    /* 5F064 8008EBB4 24E70014 */  addiu      $a3, $a3, 0x14
    /* 5F068 8008EBB8 30F900FF */  andi       $t9, $a3, 0xFF
    /* 5F06C 8008EBBC 24080006 */  addiu      $t0, $zero, 0x6
    /* 5F070 8008EBC0 AFA80010 */  sw         $t0, 0x10($sp)
    /* 5F074 8008EBC4 03203825 */  or         $a3, $t9, $zero
    /* 5F078 8008EBC8 87A40052 */  lh         $a0, 0x52($sp)
    /* 5F07C 8008EBCC 87A50056 */  lh         $a1, 0x56($sp)
    /* 5F080 8008EBD0 0C023AAC */  jal        func_8008EAB0_5EF60
    /* 5F084 8008EBD4 87A6005A */   lh        $a2, 0x5A($sp)
  .L8008EBD8_5F088:
    /* 5F088 8008EBD8 001048C0 */  sll        $t1, $s0, 3
    /* 5F08C 8008EBDC AFA90010 */  sw         $t1, 0x10($sp)
    /* 5F090 8008EBE0 87A40052 */  lh         $a0, 0x52($sp)
    /* 5F094 8008EBE4 87A50056 */  lh         $a1, 0x56($sp)
    /* 5F098 8008EBE8 87A6005A */  lh         $a2, 0x5A($sp)
    /* 5F09C 8008EBEC 0C02370D */  jal        func_8008DC34_5E0E4
    /* 5F0A0 8008EBF0 24070006 */   addiu     $a3, $zero, 0x6
    /* 5F0A4 8008EBF4 304400FF */  andi       $a0, $v0, 0xFF
    /* 5F0A8 8008EBF8 0C023791 */  jal        func_8008DE44_5E2F4
    /* 5F0AC 8008EBFC 240500B4 */   addiu     $a1, $zero, 0xB4
    /* 5F0B0 8008EC00 00105080 */  sll        $t2, $s0, 2
    /* 5F0B4 8008EC04 01505023 */  subu       $t2, $t2, $s0
    /* 5F0B8 8008EC08 000A5040 */  sll        $t2, $t2, 1
    /* 5F0BC 8008EC0C AFAA0010 */  sw         $t2, 0x10($sp)
    /* 5F0C0 8008EC10 87A40052 */  lh         $a0, 0x52($sp)
    /* 5F0C4 8008EC14 87A50056 */  lh         $a1, 0x56($sp)
    /* 5F0C8 8008EC18 87A6005A */  lh         $a2, 0x5A($sp)
    /* 5F0CC 8008EC1C 0C02370D */  jal        func_8008DC34_5E0E4
    /* 5F0D0 8008EC20 24070006 */   addiu     $a3, $zero, 0x6
    /* 5F0D4 8008EC24 A3A2004C */  sb         $v0, 0x4C($sp)
    /* 5F0D8 8008EC28 304400FF */  andi       $a0, $v0, 0xFF
    /* 5F0DC 8008EC2C 0C023791 */  jal        func_8008DE44_5E2F4
    /* 5F0E0 8008EC30 2405006E */   addiu     $a1, $zero, 0x6E
    /* 5F0E4 8008EC34 93A4004C */  lbu        $a0, 0x4C($sp)
    /* 5F0E8 8008EC38 0C0237C2 */  jal        func_8008DF08_5E3B8
    /* 5F0EC 8008EC3C 24050001 */   addiu     $a1, $zero, 0x1
    /* 5F0F0 8008EC40 93A30063 */  lbu        $v1, 0x63($sp)
    /* 5F0F4 8008EC44 00001025 */  or         $v0, $zero, $zero
    /* 5F0F8 8008EC48 87A40052 */  lh         $a0, 0x52($sp)
    /* 5F0FC 8008EC4C 18600006 */  blez       $v1, .L8008EC68_5F118
    /* 5F100 8008EC50 87A50056 */   lh        $a1, 0x56($sp)
  .L8008EC54_5F104:
    /* 5F104 8008EC54 24420001 */  addiu      $v0, $v0, 0x1
    /* 5F108 8008EC58 304B00FF */  andi       $t3, $v0, 0xFF
    /* 5F10C 8008EC5C 0163082A */  slt        $at, $t3, $v1
    /* 5F110 8008EC60 1420FFFC */  bnez       $at, .L8008EC54_5F104
    /* 5F114 8008EC64 01601025 */   or        $v0, $t3, $zero
  .L8008EC68_5F118:
    /* 5F118 8008EC68 2A010096 */  slti       $at, $s0, 0x96
    /* 5F11C 8008EC6C 1020001B */  beqz       $at, .L8008ECDC_5F18C
    /* 5F120 8008EC70 87A6005A */   lh        $a2, 0x5A($sp)
    /* 5F124 8008EC74 00103C00 */  sll        $a3, $s0, 16
    /* 5F128 8008EC78 00076403 */  sra        $t4, $a3, 16
    /* 5F12C 8008EC7C 240E0001 */  addiu      $t6, $zero, 0x1
    /* 5F130 8008EC80 240F001E */  addiu      $t7, $zero, 0x1E
    /* 5F134 8008EC84 24180096 */  addiu      $t8, $zero, 0x96
    /* 5F138 8008EC88 24190032 */  addiu      $t9, $zero, 0x32
    /* 5F13C 8008EC8C 24080032 */  addiu      $t0, $zero, 0x32
    /* 5F140 8008EC90 24090032 */  addiu      $t1, $zero, 0x32
    /* 5F144 8008EC94 AFA90028 */  sw         $t1, 0x28($sp)
    /* 5F148 8008EC98 AFA80024 */  sw         $t0, 0x24($sp)
    /* 5F14C 8008EC9C AFB90020 */  sw         $t9, 0x20($sp)
    /* 5F150 8008ECA0 AFB8001C */  sw         $t8, 0x1C($sp)
    /* 5F154 8008ECA4 AFAF0018 */  sw         $t7, 0x18($sp)
    /* 5F158 8008ECA8 AFAE0014 */  sw         $t6, 0x14($sp)
    /* 5F15C 8008ECAC 01803825 */  or         $a3, $t4, $zero
    /* 5F160 8008ECB0 87A40052 */  lh         $a0, 0x52($sp)
    /* 5F164 8008ECB4 87A50056 */  lh         $a1, 0x56($sp)
    /* 5F168 8008ECB8 87A6005A */  lh         $a2, 0x5A($sp)
    /* 5F16C 8008ECBC 06010003 */  bgez       $s0, .L8008ECCC_5F17C
    /* 5F170 8008ECC0 00106903 */   sra       $t5, $s0, 4
    /* 5F174 8008ECC4 2601000F */  addiu      $at, $s0, 0xF
    /* 5F178 8008ECC8 00016903 */  sra        $t5, $at, 4
  .L8008ECCC_5F17C:
    /* 5F17C 8008ECCC 0C023A77 */  jal        func_8008E9DC_5EE8C
    /* 5F180 8008ECD0 AFAD0010 */   sw        $t5, 0x10($sp)
    /* 5F184 8008ECD4 10000017 */  b          .L8008ED34_5F1E4
    /* 5F188 8008ECD8 8FBF003C */   lw        $ra, 0x3C($sp)
  .L8008ECDC_5F18C:
    /* 5F18C 8008ECDC 00103C00 */  sll        $a3, $s0, 16
    /* 5F190 8008ECE0 00075403 */  sra        $t2, $a3, 16
    /* 5F194 8008ECE4 240C0001 */  addiu      $t4, $zero, 0x1
    /* 5F198 8008ECE8 240D003C */  addiu      $t5, $zero, 0x3C
    /* 5F19C 8008ECEC 240E0096 */  addiu      $t6, $zero, 0x96
    /* 5F1A0 8008ECF0 240F0032 */  addiu      $t7, $zero, 0x32
    /* 5F1A4 8008ECF4 24180032 */  addiu      $t8, $zero, 0x32
    /* 5F1A8 8008ECF8 24190032 */  addiu      $t9, $zero, 0x32
    /* 5F1AC 8008ECFC AFB90028 */  sw         $t9, 0x28($sp)
    /* 5F1B0 8008ED00 AFB80024 */  sw         $t8, 0x24($sp)
    /* 5F1B4 8008ED04 AFAF0020 */  sw         $t7, 0x20($sp)
    /* 5F1B8 8008ED08 AFAE001C */  sw         $t6, 0x1C($sp)
    /* 5F1BC 8008ED0C AFAD0018 */  sw         $t5, 0x18($sp)
    /* 5F1C0 8008ED10 AFAC0014 */  sw         $t4, 0x14($sp)
    /* 5F1C4 8008ED14 01403825 */  or         $a3, $t2, $zero
    /* 5F1C8 8008ED18 06010003 */  bgez       $s0, .L8008ED28_5F1D8
    /* 5F1CC 8008ED1C 00105903 */   sra       $t3, $s0, 4
    /* 5F1D0 8008ED20 2601000F */  addiu      $at, $s0, 0xF
    /* 5F1D4 8008ED24 00015903 */  sra        $t3, $at, 4
  .L8008ED28_5F1D8:
    /* 5F1D8 8008ED28 0C023A77 */  jal        func_8008E9DC_5EE8C
    /* 5F1DC 8008ED2C AFAB0010 */   sw        $t3, 0x10($sp)
  .L8008ED30_5F1E0:
    /* 5F1E0 8008ED30 8FBF003C */  lw         $ra, 0x3C($sp)
  .L8008ED34_5F1E4:
    /* 5F1E4 8008ED34 87A20046 */  lh         $v0, 0x46($sp)
    /* 5F1E8 8008ED38 8FB00038 */  lw         $s0, 0x38($sp)
    /* 5F1EC 8008ED3C 03E00008 */  jr         $ra
    /* 5F1F0 8008ED40 27BD0050 */   addiu     $sp, $sp, 0x50
endlabel func_8008EB20_5EFD0
