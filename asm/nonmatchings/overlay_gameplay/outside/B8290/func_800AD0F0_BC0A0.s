nonmatching func_800AD0F0_BC0A0, 0x150

glabel func_800AD0F0_BC0A0
    /* BC0A0 800AD0F0 308E00FF */  andi       $t6, $a0, 0xFF
    /* BC0A4 800AD0F4 000E7880 */  sll        $t7, $t6, 2
    /* BC0A8 800AD0F8 01EE7821 */  addu       $t7, $t7, $t6
    /* BC0AC 800AD0FC 3C188005 */  lui        $t8, %hi(alienInstances)
    /* BC0B0 800AD100 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* BC0B4 800AD104 000F7900 */  sll        $t7, $t7, 4
    /* BC0B8 800AD108 01F81821 */  addu       $v1, $t7, $t8
    /* BC0BC 800AD10C 84660000 */  lh         $a2, 0x0($v1)
    /* BC0C0 800AD110 84650004 */  lh         $a1, 0x4($v1)
    /* BC0C4 800AD114 8C680020 */  lw         $t0, 0x20($v1)
    /* BC0C8 800AD118 30C700FF */  andi       $a3, $a2, 0xFF
    /* BC0CC 800AD11C 30A200FF */  andi       $v0, $a1, 0xFF
    /* BC0D0 800AD120 2442FF80 */  addiu      $v0, $v0, -0x80
    /* BC0D4 800AD124 24E7FF80 */  addiu      $a3, $a3, -0x80
    /* BC0D8 800AD128 2401EFFF */  addiu      $at, $zero, -0x1001
    /* BC0DC 800AD12C 00077400 */  sll        $t6, $a3, 16
    /* BC0E0 800AD130 00026400 */  sll        $t4, $v0, 16
    /* BC0E4 800AD134 35090100 */  ori        $t1, $t0, 0x100
    /* BC0E8 800AD138 01215824 */  and        $t3, $t1, $at
    /* BC0EC 800AD13C 000C6C03 */  sra        $t5, $t4, 16
    /* BC0F0 800AD140 000E7C03 */  sra        $t7, $t6, 16
    /* BC0F4 800AD144 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* BC0F8 800AD148 241900FF */  addiu      $t9, $zero, 0xFF
    /* BC0FC 800AD14C AC690020 */  sw         $t1, 0x20($v1)
    /* BC100 800AD150 01AF082A */  slt        $at, $t5, $t7
    /* BC104 800AD154 AFBF0014 */  sw         $ra, 0x14($sp)
    /* BC108 800AD158 AFA40028 */  sw         $a0, 0x28($sp)
    /* BC10C 800AD15C A4790038 */  sh         $t9, 0x38($v1)
    /* BC110 800AD160 AC6B0020 */  sw         $t3, 0x20($v1)
    /* BC114 800AD164 A4600048 */  sh         $zero, 0x48($v1)
    /* BC118 800AD168 01E03825 */  or         $a3, $t7, $zero
    /* BC11C 800AD16C 1020000D */  beqz       $at, .L800AD1A4_BC154
    /* BC120 800AD170 01A01025 */   or        $v0, $t5, $zero
    /* BC124 800AD174 000DC023 */  negu       $t8, $t5
    /* BC128 800AD178 030F082A */  slt        $at, $t8, $t7
    /* BC12C 800AD17C 50200006 */  beql       $at, $zero, .L800AD198_BC148
    /* BC130 800AD180 24A5FF00 */   addiu     $a1, $a1, -0x100
    /* BC134 800AD184 24C60100 */  addiu      $a2, $a2, 0x100
    /* BC138 800AD188 0006CC00 */  sll        $t9, $a2, 16
    /* BC13C 800AD18C 10000010 */  b          .L800AD1D0_BC180
    /* BC140 800AD190 00193403 */   sra       $a2, $t9, 16
    /* BC144 800AD194 24A5FF00 */  addiu      $a1, $a1, -0x100
  .L800AD198_BC148:
    /* BC148 800AD198 00054C00 */  sll        $t1, $a1, 16
    /* BC14C 800AD19C 1000000C */  b          .L800AD1D0_BC180
    /* BC150 800AD1A0 00092C03 */   sra       $a1, $t1, 16
  .L800AD1A4_BC154:
    /* BC154 800AD1A4 00025823 */  negu       $t3, $v0
    /* BC158 800AD1A8 0167082A */  slt        $at, $t3, $a3
    /* BC15C 800AD1AC 50200006 */  beql       $at, $zero, .L800AD1C8_BC178
    /* BC160 800AD1B0 24C6FF00 */   addiu     $a2, $a2, -0x100
    /* BC164 800AD1B4 24A50100 */  addiu      $a1, $a1, 0x100
    /* BC168 800AD1B8 00056400 */  sll        $t4, $a1, 16
    /* BC16C 800AD1BC 10000004 */  b          .L800AD1D0_BC180
    /* BC170 800AD1C0 000C2C03 */   sra       $a1, $t4, 16
    /* BC174 800AD1C4 24C6FF00 */  addiu      $a2, $a2, -0x100
  .L800AD1C8_BC178:
    /* BC178 800AD1C8 00067400 */  sll        $t6, $a2, 16
    /* BC17C 800AD1CC 000E3403 */  sra        $a2, $t6, 16
  .L800AD1D0_BC180:
    /* BC180 800AD1D0 0006C203 */  sra        $t8, $a2, 8
    /* BC184 800AD1D4 00055203 */  sra        $t2, $a1, 8
    /* BC188 800AD1D8 0018CA00 */  sll        $t9, $t8, 8
    /* BC18C 800AD1DC 000A5A00 */  sll        $t3, $t2, 8
    /* BC190 800AD1E0 27290080 */  addiu      $t1, $t9, 0x80
    /* BC194 800AD1E4 25650080 */  addiu      $a1, $t3, 0x80
    /* BC198 800AD1E8 00056400 */  sll        $t4, $a1, 16
    /* BC19C 800AD1EC 00092400 */  sll        $a0, $t1, 16
    /* BC1A0 800AD1F0 000C2C03 */  sra        $a1, $t4, 16
    /* BC1A4 800AD1F4 00047403 */  sra        $t6, $a0, 16
    /* BC1A8 800AD1F8 A4690014 */  sh         $t1, 0x14($v1)
    /* BC1AC 800AD1FC A4650018 */  sh         $a1, 0x18($v1)
    /* BC1B0 800AD200 01C02025 */  or         $a0, $t6, $zero
    /* BC1B4 800AD204 0C02E134 */  jal        func_800B84D0_C7480
    /* BC1B8 800AD208 AFA3001C */   sw        $v1, 0x1C($sp)
    /* BC1BC 800AD20C 8FA3001C */  lw         $v1, 0x1C($sp)
    /* BC1C0 800AD210 00027A03 */  sra        $t7, $v0, 8
    /* BC1C4 800AD214 24080040 */  addiu      $t0, $zero, 0x40
    /* BC1C8 800AD218 8C780020 */  lw         $t8, 0x20($v1)
    /* BC1CC 800AD21C A46F0016 */  sh         $t7, 0x16($v1)
    /* BC1D0 800AD220 33190600 */  andi       $t9, $t8, 0x600
    /* BC1D4 800AD224 53200003 */  beql       $t9, $zero, .L800AD234_BC1E4
    /* BC1D8 800AD228 8FBF0014 */   lw        $ra, 0x14($sp)
    /* BC1DC 800AD22C A4680048 */  sh         $t0, 0x48($v1)
    /* BC1E0 800AD230 8FBF0014 */  lw         $ra, 0x14($sp)
  .L800AD234_BC1E4:
    /* BC1E4 800AD234 27BD0028 */  addiu      $sp, $sp, 0x28
    /* BC1E8 800AD238 03E00008 */  jr         $ra
    /* BC1EC 800AD23C 00000000 */   nop
endlabel func_800AD0F0_BC0A0
