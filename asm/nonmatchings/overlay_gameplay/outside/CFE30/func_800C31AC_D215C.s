nonmatching func_800C31AC_D215C, 0xDC

glabel func_800C31AC_D215C
    /* D215C 800C31AC 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* D2160 800C31B0 30EB00FF */  andi       $t3, $a3, 0xFF
    /* D2164 800C31B4 AFA40020 */  sw         $a0, 0x20($sp)
    /* D2168 800C31B8 AFA50024 */  sw         $a1, 0x24($sp)
    /* D216C 800C31BC AFA60028 */  sw         $a2, 0x28($sp)
    /* D2170 800C31C0 00047400 */  sll        $t6, $a0, 16
    /* D2174 800C31C4 0005C400 */  sll        $t8, $a1, 16
    /* D2178 800C31C8 00064C00 */  sll        $t1, $a2, 16
    /* D217C 800C31CC 2961001E */  slti       $at, $t3, 0x1E
    /* D2180 800C31D0 00093403 */  sra        $a2, $t1, 16
    /* D2184 800C31D4 00182C03 */  sra        $a1, $t8, 16
    /* D2188 800C31D8 000E2403 */  sra        $a0, $t6, 16
    /* D218C 800C31DC AFBF001C */  sw         $ra, 0x1C($sp)
    /* D2190 800C31E0 10200019 */  beqz       $at, .L800C3248_D21F8
    /* D2194 800C31E4 AFA7002C */   sw        $a3, 0x2C($sp)
    /* D2198 800C31E8 000B6080 */  sll        $t4, $t3, 2
    /* D219C 800C31EC 018B6023 */  subu       $t4, $t4, $t3
    /* D21A0 800C31F0 3C0D8015 */  lui        $t5, %hi(D_80154088)
    /* D21A4 800C31F4 25AD4088 */  addiu      $t5, $t5, %lo(D_80154088)
    /* D21A8 800C31F8 000C6080 */  sll        $t4, $t4, 2
    /* D21AC 800C31FC 018D1821 */  addu       $v1, $t4, $t5
    /* D21B0 800C3200 90620000 */  lbu        $v0, 0x0($v1)
    /* D21B4 800C3204 24010001 */  addiu      $at, $zero, 0x1
    /* D21B8 800C3208 1441000F */  bne        $v0, $at, .L800C3248_D21F8
    /* D21BC 800C320C 240100FA */   addiu     $at, $zero, 0xFA
    /* D21C0 800C3210 1041000D */  beq        $v0, $at, .L800C3248_D21F8
    /* D21C4 800C3214 00000000 */   nop
    /* D21C8 800C3218 846E000A */  lh         $t6, 0xA($v1)
    /* D21CC 800C321C 3C188015 */  lui        $t8, %hi(D_80154318)
    /* D21D0 800C3220 27184318 */  addiu      $t8, $t8, %lo(D_80154318)
    /* D21D4 800C3224 000E78C0 */  sll        $t7, $t6, 3
    /* D21D8 800C3228 01EE7823 */  subu       $t7, $t7, $t6
    /* D21DC 800C322C 000F7880 */  sll        $t7, $t7, 2
    /* D21E0 800C3230 01F84021 */  addu       $t0, $t7, $t8
    /* D21E4 800C3234 91190000 */  lbu        $t9, 0x0($t0)
    /* D21E8 800C3238 25020008 */  addiu      $v0, $t0, 0x8
    /* D21EC 800C323C 33290001 */  andi       $t1, $t9, 0x1
    /* D21F0 800C3240 55200007 */  bnel       $t1, $zero, .L800C3260_D2210
    /* D21F4 800C3244 A4440000 */   sh        $a0, 0x0($v0)
  .L800C3248_D21F8:
    /* D21F8 800C3248 3C048014 */  lui        $a0, %hi(D_80143430)
    /* D21FC 800C324C 0C00731B */  jal        osSyncPrintf
    /* D2200 800C3250 24843430 */   addiu     $a0, $a0, %lo(D_80143430)
    /* D2204 800C3254 10000009 */  b          .L800C327C_D222C
    /* D2208 800C3258 8FBF001C */   lw        $ra, 0x1C($sp)
    /* D220C 800C325C A4440000 */  sh         $a0, 0x0($v0)
  .L800C3260_D2210:
    /* D2210 800C3260 A4450002 */  sh         $a1, 0x2($v0)
    /* D2214 800C3264 A4460004 */  sh         $a2, 0x4($v0)
    /* D2218 800C3268 846A000A */  lh         $t2, 0xA($v1)
    /* D221C 800C326C 00003825 */  or         $a3, $zero, $zero
    /* D2220 800C3270 0C04DCDA */  jal        func_80137368_146318
    /* D2224 800C3274 AFAA0010 */   sw        $t2, 0x10($sp)
    /* D2228 800C3278 8FBF001C */  lw         $ra, 0x1C($sp)
  .L800C327C_D222C:
    /* D222C 800C327C 27BD0020 */  addiu      $sp, $sp, 0x20
    /* D2230 800C3280 03E00008 */  jr         $ra
    /* D2234 800C3284 00000000 */   nop
endlabel func_800C31AC_D215C
