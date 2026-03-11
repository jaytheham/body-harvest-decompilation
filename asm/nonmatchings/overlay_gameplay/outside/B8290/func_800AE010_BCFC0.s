nonmatching func_800AE010_BCFC0, 0x180

glabel func_800AE010_BCFC0
    /* BCFC0 800AE010 308E00FF */  andi       $t6, $a0, 0xFF
    /* BCFC4 800AE014 000E7880 */  sll        $t7, $t6, 2
    /* BCFC8 800AE018 3C058005 */  lui        $a1, %hi(D_80052B34)
    /* BCFCC 800AE01C 8CA52B34 */  lw         $a1, %lo(D_80052B34)($a1)
    /* BCFD0 800AE020 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* BCFD4 800AE024 01EE7821 */  addu       $t7, $t7, $t6
    /* BCFD8 800AE028 3C188005 */  lui        $t8, %hi(alienInstances)
    /* BCFDC 800AE02C 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* BCFE0 800AE030 000F7900 */  sll        $t7, $t7, 4
    /* BCFE4 800AE034 AFBF0014 */  sw         $ra, 0x14($sp)
    /* BCFE8 800AE038 AFA40030 */  sw         $a0, 0x30($sp)
    /* BCFEC 800AE03C 01F81021 */  addu       $v0, $t7, $t8
    /* BCFF0 800AE040 84590000 */  lh         $t9, 0x0($v0)
    /* BCFF4 800AE044 84A90000 */  lh         $t1, 0x0($a1)
    /* BCFF8 800AE048 844C0004 */  lh         $t4, 0x4($v0)
    /* BCFFC 800AE04C 84AD0004 */  lh         $t5, 0x4($a1)
    /* BD000 800AE050 03291823 */  subu       $v1, $t9, $t1
    /* BD004 800AE054 00035400 */  sll        $t2, $v1, 16
    /* BD008 800AE058 000A5C03 */  sra        $t3, $t2, 16
    /* BD00C 800AE05C 01C02025 */  or         $a0, $t6, $zero
    /* BD010 800AE060 000B3823 */  negu       $a3, $t3
    /* BD014 800AE064 018D3023 */  subu       $a2, $t4, $t5
    /* BD018 800AE068 00067400 */  sll        $t6, $a2, 16
    /* BD01C 800AE06C 00EB082A */  slt        $at, $a3, $t3
    /* BD020 800AE070 10200003 */  beqz       $at, .L800AE080_BD030
    /* BD024 800AE074 000E3403 */   sra       $a2, $t6, 16
    /* BD028 800AE078 10000002 */  b          .L800AE084_BD034
    /* BD02C 800AE07C 01604025 */   or        $t0, $t3, $zero
  .L800AE080_BD030:
    /* BD030 800AE080 00E04025 */  or         $t0, $a3, $zero
  .L800AE084_BD034:
    /* BD034 800AE084 00061823 */  negu       $v1, $a2
    /* BD038 800AE088 0066082A */  slt        $at, $v1, $a2
    /* BD03C 800AE08C 10200003 */  beqz       $at, .L800AE09C_BD04C
    /* BD040 800AE090 2445000E */   addiu     $a1, $v0, 0xE
    /* BD044 800AE094 10000002 */  b          .L800AE0A0_BD050
    /* BD048 800AE098 00C03825 */   or        $a3, $a2, $zero
  .L800AE09C_BD04C:
    /* BD04C 800AE09C 00603825 */  or         $a3, $v1, $zero
  .L800AE0A0_BD050:
    /* BD050 800AE0A0 AFA2001C */  sw         $v0, 0x1C($sp)
    /* BD054 800AE0A4 AFA70024 */  sw         $a3, 0x24($sp)
    /* BD058 800AE0A8 0C02023C */  jal        func_800808F0_8F8A0
    /* BD05C 800AE0AC AFA80020 */   sw        $t0, 0x20($sp)
    /* BD060 800AE0B0 8FA70024 */  lw         $a3, 0x24($sp)
    /* BD064 800AE0B4 8FA80020 */  lw         $t0, 0x20($sp)
    /* BD068 800AE0B8 8FA2001C */  lw         $v0, 0x1C($sp)
    /* BD06C 800AE0BC 3C058005 */  lui        $a1, %hi(D_80052B34)
    /* BD070 800AE0C0 00E82021 */  addu       $a0, $a3, $t0
    /* BD074 800AE0C4 0004C400 */  sll        $t8, $a0, 16
    /* BD078 800AE0C8 00182403 */  sra        $a0, $t8, 16
    /* BD07C 800AE0CC 28810190 */  slti       $at, $a0, 0x190
    /* BD080 800AE0D0 50200023 */  beql       $at, $zero, .L800AE160_BD110
    /* BD084 800AE0D4 84430012 */   lh        $v1, 0x12($v0)
    /* BD088 800AE0D8 8CA52B34 */  lw         $a1, %lo(D_80052B34)($a1)
    /* BD08C 800AE0DC 84430012 */  lh         $v1, 0x12($v0)
    /* BD090 800AE0E0 240E01C0 */  addiu      $t6, $zero, 0x1C0
    /* BD094 800AE0E4 84A90000 */  lh         $t1, 0x0($a1)
    /* BD098 800AE0E8 28610140 */  slti       $at, $v1, 0x140
    /* BD09C 800AE0EC 246B0020 */  addiu      $t3, $v1, 0x20
    /* BD0A0 800AE0F0 A4490014 */  sh         $t1, 0x14($v0)
    /* BD0A4 800AE0F4 84AA0004 */  lh         $t2, 0x4($a1)
    /* BD0A8 800AE0F8 10200002 */  beqz       $at, .L800AE104_BD0B4
    /* BD0AC 800AE0FC A44A0018 */   sh        $t2, 0x18($v0)
    /* BD0B0 800AE100 A44B0012 */  sh         $t3, 0x12($v0)
  .L800AE104_BD0B4:
    /* BD0B4 800AE104 8C4C0020 */  lw         $t4, 0x20($v0)
    /* BD0B8 800AE108 28810096 */  slti       $at, $a0, 0x96
    /* BD0BC 800AE10C 358D0060 */  ori        $t5, $t4, 0x60
    /* BD0C0 800AE110 1020001B */  beqz       $at, .L800AE180_BD130
    /* BD0C4 800AE114 AC4D0020 */   sw        $t5, 0x20($v0)
    /* BD0C8 800AE118 28810028 */  slti       $at, $a0, 0x28
    /* BD0CC 800AE11C 10200018 */  beqz       $at, .L800AE180_BD130
    /* BD0D0 800AE120 A44E0012 */   sh        $t6, 0x12($v0)
    /* BD0D4 800AE124 84AF0000 */  lh         $t7, 0x0($a1)
    /* BD0D8 800AE128 240C0280 */  addiu      $t4, $zero, 0x280
    /* BD0DC 800AE12C 31F80001 */  andi       $t8, $t7, 0x1
    /* BD0E0 800AE130 57000006 */  bnel       $t8, $zero, .L800AE14C_BD0FC
    /* BD0E4 800AE134 844A000E */   lh        $t2, 0xE($v0)
    /* BD0E8 800AE138 8459000E */  lh         $t9, 0xE($v0)
    /* BD0EC 800AE13C 27290222 */  addiu      $t1, $t9, 0x222
    /* BD0F0 800AE140 10000004 */  b          .L800AE154_BD104
    /* BD0F4 800AE144 A449000E */   sh        $t1, 0xE($v0)
    /* BD0F8 800AE148 844A000E */  lh         $t2, 0xE($v0)
  .L800AE14C_BD0FC:
    /* BD0FC 800AE14C 254BFDDE */  addiu      $t3, $t2, -0x222
    /* BD100 800AE150 A44B000E */  sh         $t3, 0xE($v0)
  .L800AE154_BD104:
    /* BD104 800AE154 1000000A */  b          .L800AE180_BD130
    /* BD108 800AE158 A44C0012 */   sh        $t4, 0x12($v0)
    /* BD10C 800AE15C 84430012 */  lh         $v1, 0x12($v0)
  .L800AE160_BD110:
    /* BD110 800AE160 18600003 */  blez       $v1, .L800AE170_BD120
    /* BD114 800AE164 246DFFF8 */   addiu     $t5, $v1, -0x8
    /* BD118 800AE168 10000005 */  b          .L800AE180_BD130
    /* BD11C 800AE16C A44D0012 */   sh        $t5, 0x12($v0)
  .L800AE170_BD120:
    /* BD120 800AE170 8C4E0020 */  lw         $t6, 0x20($v0)
    /* BD124 800AE174 2401FF9F */  addiu      $at, $zero, -0x61
    /* BD128 800AE178 01C17824 */  and        $t7, $t6, $at
    /* BD12C 800AE17C AC4F0020 */  sw         $t7, 0x20($v0)
  .L800AE180_BD130:
    /* BD130 800AE180 8FBF0014 */  lw         $ra, 0x14($sp)
    /* BD134 800AE184 27BD0030 */  addiu      $sp, $sp, 0x30
    /* BD138 800AE188 03E00008 */  jr         $ra
    /* BD13C 800AE18C 00000000 */   nop
endlabel func_800AE010_BCFC0
