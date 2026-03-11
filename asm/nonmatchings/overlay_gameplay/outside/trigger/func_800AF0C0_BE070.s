nonmatching func_800AF0C0_BE070, 0x138

glabel func_800AF0C0_BE070
    /* BE070 800AF0C0 3C0F8004 */  lui        $t7, %hi(currentLevel)
    /* BE074 800AF0C4 8DEF7F90 */  lw         $t7, %lo(currentLevel)($t7)
    /* BE078 800AF0C8 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* BE07C 800AF0CC AFA60030 */  sw         $a2, 0x30($sp)
    /* BE080 800AF0D0 30CE00FF */  andi       $t6, $a2, 0xFF
    /* BE084 800AF0D4 24010003 */  addiu      $at, $zero, 0x3
    /* BE088 800AF0D8 01C03025 */  or         $a2, $t6, $zero
    /* BE08C 800AF0DC AFBF0024 */  sw         $ra, 0x24($sp)
    /* BE090 800AF0E0 AFA40028 */  sw         $a0, 0x28($sp)
    /* BE094 800AF0E4 15E10006 */  bne        $t7, $at, .L800AF100_BE0B0
    /* BE098 800AF0E8 AFA5002C */   sw        $a1, 0x2C($sp)
    /* BE09C 800AF0EC 24010009 */  addiu      $at, $zero, 0x9
    /* BE0A0 800AF0F0 11C1003D */  beq        $t6, $at, .L800AF1E8_BE198
    /* BE0A4 800AF0F4 24010008 */   addiu     $at, $zero, 0x8
    /* BE0A8 800AF0F8 51C1003C */  beql       $t6, $at, .L800AF1EC_BE19C
    /* BE0AC 800AF0FC 8FBF0024 */   lw        $ra, 0x24($sp)
  .L800AF100_BE0B0:
    /* BE0B0 800AF100 87A4002A */  lh         $a0, 0x2A($sp)
    /* BE0B4 800AF104 87A5002E */  lh         $a1, 0x2E($sp)
    /* BE0B8 800AF108 0C02E134 */  jal        func_800B84D0_C7480
    /* BE0BC 800AF10C A3A60033 */   sb        $a2, 0x33($sp)
    /* BE0C0 800AF110 93A60033 */  lbu        $a2, 0x33($sp)
    /* BE0C4 800AF114 3C088025 */  lui        $t0, %hi(alienSpecs)
    /* BE0C8 800AF118 25086680 */  addiu      $t0, $t0, %lo(alienSpecs)
    /* BE0CC 800AF11C 0006C880 */  sll        $t9, $a2, 2
    /* BE0D0 800AF120 0326C823 */  subu       $t9, $t9, $a2
    /* BE0D4 800AF124 0019C880 */  sll        $t9, $t9, 2
    /* BE0D8 800AF128 0326C821 */  addu       $t9, $t9, $a2
    /* BE0DC 800AF12C 0019C8C0 */  sll        $t9, $t9, 3
    /* BE0E0 800AF130 03281821 */  addu       $v1, $t9, $t0
    /* BE0E4 800AF134 8C690054 */  lw         $t1, 0x54($v1)
    /* BE0E8 800AF138 04410003 */  bgez       $v0, .L800AF148_BE0F8
    /* BE0EC 800AF13C 00022203 */   sra       $a0, $v0, 8
    /* BE0F0 800AF140 244100FF */  addiu      $at, $v0, 0xFF
    /* BE0F4 800AF144 00012203 */  sra        $a0, $at, 8
  .L800AF148_BE0F8:
    /* BE0F8 800AF148 00042C00 */  sll        $a1, $a0, 16
    /* BE0FC 800AF14C 0005C403 */  sra        $t8, $a1, 16
    /* BE100 800AF150 312A0081 */  andi       $t2, $t1, 0x81
    /* BE104 800AF154 1140000B */  beqz       $t2, .L800AF184_BE134
    /* BE108 800AF158 03002825 */   or        $a1, $t8, $zero
    /* BE10C 800AF15C 3C028022 */  lui        $v0, %hi(D_80222A70)
    /* BE110 800AF160 8C422A70 */  lw         $v0, %lo(D_80222A70)($v0)
    /* BE114 800AF164 00045C00 */  sll        $t3, $a0, 16
    /* BE118 800AF168 000B6403 */  sra        $t4, $t3, 16
    /* BE11C 800AF16C 0182082A */  slt        $at, $t4, $v0
    /* BE120 800AF170 50200005 */  beql       $at, $zero, .L800AF188_BE138
    /* BE124 800AF174 8479000C */   lh        $t9, 0xC($v1)
    /* BE128 800AF178 00022C00 */  sll        $a1, $v0, 16
    /* BE12C 800AF17C 00056C03 */  sra        $t5, $a1, 16
    /* BE130 800AF180 01A02825 */  or         $a1, $t5, $zero
  .L800AF184_BE134:
    /* BE134 800AF184 8479000C */  lh         $t9, 0xC($v1)
  .L800AF188_BE138:
    /* BE138 800AF188 3C013FF8 */  lui        $at, (0x3FF80000 >> 16)
    /* BE13C 800AF18C 44814800 */  mtc1       $at, $f9
    /* BE140 800AF190 44992000 */  mtc1       $t9, $f4
    /* BE144 800AF194 44804000 */  mtc1       $zero, $f8
    /* BE148 800AF198 846E0058 */  lh         $t6, 0x58($v1)
    /* BE14C 800AF19C 468021A1 */  cvt.d.w    $f6, $f4
    /* BE150 800AF1A0 240B00A0 */  addiu      $t3, $zero, 0xA0
    /* BE154 800AF1A4 00AE2821 */  addu       $a1, $a1, $t6
    /* BE158 800AF1A8 00057C00 */  sll        $t7, $a1, 16
    /* BE15C 800AF1AC 240C00FF */  addiu      $t4, $zero, 0xFF
    /* BE160 800AF1B0 46283282 */  mul.d      $f10, $f6, $f8
    /* BE164 800AF1B4 000F2C03 */  sra        $a1, $t7, 16
    /* BE168 800AF1B8 AFAC0014 */  sw         $t4, 0x14($sp)
    /* BE16C 800AF1BC AFAB0010 */  sw         $t3, 0x10($sp)
    /* BE170 800AF1C0 87A4002A */  lh         $a0, 0x2A($sp)
    /* BE174 800AF1C4 87A6002E */  lh         $a2, 0x2E($sp)
    /* BE178 800AF1C8 AFA00018 */  sw         $zero, 0x18($sp)
    /* BE17C 800AF1CC AFA0001C */  sw         $zero, 0x1C($sp)
    /* BE180 800AF1D0 4620540D */  trunc.w.d  $f16, $f10
    /* BE184 800AF1D4 44078000 */  mfc1       $a3, $f16
    /* BE188 800AF1D8 00000000 */  nop
    /* BE18C 800AF1DC 00074C00 */  sll        $t1, $a3, 16
    /* BE190 800AF1E0 0C033E03 */  jal        func_800CF80C_DE7BC
    /* BE194 800AF1E4 00093C03 */   sra       $a3, $t1, 16
  .L800AF1E8_BE198:
    /* BE198 800AF1E8 8FBF0024 */  lw         $ra, 0x24($sp)
  .L800AF1EC_BE19C:
    /* BE19C 800AF1EC 27BD0028 */  addiu      $sp, $sp, 0x28
    /* BE1A0 800AF1F0 03E00008 */  jr         $ra
    /* BE1A4 800AF1F4 00000000 */   nop
endlabel func_800AF0C0_BE070
