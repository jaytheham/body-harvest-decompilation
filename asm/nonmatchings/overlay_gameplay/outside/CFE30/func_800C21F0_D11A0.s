nonmatching func_800C21F0_D11A0, 0x84

glabel func_800C21F0_D11A0
    /* D11A0 800C21F0 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* D11A4 800C21F4 AFBF001C */  sw         $ra, 0x1C($sp)
    /* D11A8 800C21F8 AFA40028 */  sw         $a0, 0x28($sp)
    /* D11AC 800C21FC AFA5002C */  sw         $a1, 0x2C($sp)
    /* D11B0 800C2200 AFA60030 */  sw         $a2, 0x30($sp)
    /* D11B4 800C2204 AFA70034 */  sw         $a3, 0x34($sp)
    /* D11B8 800C2208 0C030566 */  jal        func_800C1598_D0548
    /* D11BC 800C220C 00002025 */   or        $a0, $zero, $zero
    /* D11C0 800C2210 240100FB */  addiu      $at, $zero, 0xFB
    /* D11C4 800C2214 10410012 */  beq        $v0, $at, .L800C2260_D1210
    /* D11C8 800C2218 304700FF */   andi      $a3, $v0, 0xFF
    /* D11CC 800C221C 00077080 */  sll        $t6, $a3, 2
    /* D11D0 800C2220 01C77023 */  subu       $t6, $t6, $a3
    /* D11D4 800C2224 3C0F8015 */  lui        $t7, %hi(D_80154088)
    /* D11D8 800C2228 25EF4088 */  addiu      $t7, $t7, %lo(D_80154088)
    /* D11DC 800C222C 000E7080 */  sll        $t6, $t6, 2
    /* D11E0 800C2230 01CF1021 */  addu       $v0, $t6, $t7
    /* D11E4 800C2234 90580001 */  lbu        $t8, 0x1($v0)
    /* D11E8 800C2238 93A80037 */  lbu        $t0, 0x37($sp)
    /* D11EC 800C223C 87A4002A */  lh         $a0, 0x2A($sp)
    /* D11F0 800C2240 37190001 */  ori        $t9, $t8, 0x1
    /* D11F4 800C2244 A0590001 */  sb         $t9, 0x1($v0)
    /* D11F8 800C2248 87A5002E */  lh         $a1, 0x2E($sp)
    /* D11FC 800C224C 87A60032 */  lh         $a2, 0x32($sp)
    /* D1200 800C2250 A3A70027 */  sb         $a3, 0x27($sp)
    /* D1204 800C2254 0C0307B3 */  jal        func_800C1ECC_D0E7C
    /* D1208 800C2258 AFA80010 */   sw        $t0, 0x10($sp)
    /* D120C 800C225C 93A70027 */  lbu        $a3, 0x27($sp)
  .L800C2260_D1210:
    /* D1210 800C2260 8FBF001C */  lw         $ra, 0x1C($sp)
    /* D1214 800C2264 27BD0028 */  addiu      $sp, $sp, 0x28
    /* D1218 800C2268 00E01025 */  or         $v0, $a3, $zero
    /* D121C 800C226C 03E00008 */  jr         $ra
    /* D1220 800C2270 00000000 */   nop
endlabel func_800C21F0_D11A0
