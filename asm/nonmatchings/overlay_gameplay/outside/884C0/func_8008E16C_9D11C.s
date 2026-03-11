nonmatching func_8008E16C_9D11C, 0xD0

glabel func_8008E16C_9D11C
    /* 9D11C 8008E16C 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 9D120 8008E170 AFB00018 */  sw         $s0, 0x18($sp)
    /* 9D124 8008E174 309000FF */  andi       $s0, $a0, 0xFF
    /* 9D128 8008E178 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 9D12C 8008E17C AFA40030 */  sw         $a0, 0x30($sp)
    /* 9D130 8008E180 0C0237BD */  jal        func_8008DEF4_9CEA4
    /* 9D134 8008E184 320400FF */   andi      $a0, $s0, 0xFF
    /* 9D138 8008E188 02002025 */  or         $a0, $s0, $zero
    /* 9D13C 8008E18C 2405000B */  addiu      $a1, $zero, 0xB
    /* 9D140 8008E190 0C04DD1A */  jal        func_80137468_146418
    /* 9D144 8008E194 AFB00028 */   sw        $s0, 0x28($sp)
    /* 9D148 8008E198 3C0E8005 */  lui        $t6, %hi(D_80048184)
    /* 9D14C 8008E19C 8DCE8184 */  lw         $t6, %lo(D_80048184)($t6)
    /* 9D150 8008E1A0 8FAF0028 */  lw         $t7, 0x28($sp)
    /* 9D154 8008E1A4 55CF0005 */  bnel       $t6, $t7, .L8008E1BC_9D16C
    /* 9D158 8008E1A8 0010C080 */   sll       $t8, $s0, 2
    /* 9D15C 8008E1AC 0C023438 */  jal        func_8008D0E0_9C090
    /* 9D160 8008E1B0 320400FF */   andi      $a0, $s0, 0xFF
    /* 9D164 8008E1B4 1440001C */  bnez       $v0, .L8008E228_9D1D8
    /* 9D168 8008E1B8 0010C080 */   sll       $t8, $s0, 2
  .L8008E1BC_9D16C:
    /* 9D16C 8008E1BC 0310C021 */  addu       $t8, $t8, $s0
    /* 9D170 8008E1C0 3C198005 */  lui        $t9, %hi(alienInstances)
    /* 9D174 8008E1C4 27398198 */  addiu      $t9, $t9, %lo(alienInstances)
    /* 9D178 8008E1C8 0018C100 */  sll        $t8, $t8, 4
    /* 9D17C 8008E1CC 03191821 */  addu       $v1, $t8, $t9
    /* 9D180 8008E1D0 8C680020 */  lw         $t0, 0x20($v1)
    /* 9D184 8008E1D4 2465000E */  addiu      $a1, $v1, 0xE
    /* 9D188 8008E1D8 320400FF */  andi       $a0, $s0, 0xFF
    /* 9D18C 8008E1DC 00084840 */  sll        $t1, $t0, 1
    /* 9D190 8008E1E0 05200004 */  bltz       $t1, .L8008E1F4_9D1A4
    /* 9D194 8008E1E4 00000000 */   nop
    /* 9D198 8008E1E8 0C02023C */  jal        func_800808F0_8F8A0
    /* 9D19C 8008E1EC AFA30024 */   sw        $v1, 0x24($sp)
    /* 9D1A0 8008E1F0 8FA30024 */  lw         $v1, 0x24($sp)
  .L8008E1F4_9D1A4:
    /* 9D1A4 8008E1F4 3C0A8005 */  lui        $t2, %hi(D_80052A8C)
    /* 9D1A8 8008E1F8 8D4A2A8C */  lw         $t2, %lo(D_80052A8C)($t2)
    /* 9D1AC 8008E1FC 8FAC0028 */  lw         $t4, 0x28($sp)
    /* 9D1B0 8008E200 314B001F */  andi       $t3, $t2, 0x1F
    /* 9D1B4 8008E204 318D001F */  andi       $t5, $t4, 0x1F
    /* 9D1B8 8008E208 556D0008 */  bnel       $t3, $t5, .L8008E22C_9D1DC
    /* 9D1BC 8008E20C 8FBF001C */   lw        $ra, 0x1C($sp)
    /* 9D1C0 8008E210 8C6E0020 */  lw         $t6, 0x20($v1)
    /* 9D1C4 8008E214 31CF2000 */  andi       $t7, $t6, 0x2000
    /* 9D1C8 8008E218 55E00004 */  bnel       $t7, $zero, .L8008E22C_9D1DC
    /* 9D1CC 8008E21C 8FBF001C */   lw        $ra, 0x1C($sp)
    /* 9D1D0 8008E220 0C023528 */  jal        func_8008D4A0_9C450
    /* 9D1D4 8008E224 02002025 */   or        $a0, $s0, $zero
  .L8008E228_9D1D8:
    /* 9D1D8 8008E228 8FBF001C */  lw         $ra, 0x1C($sp)
  .L8008E22C_9D1DC:
    /* 9D1DC 8008E22C 8FB00018 */  lw         $s0, 0x18($sp)
    /* 9D1E0 8008E230 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 9D1E4 8008E234 03E00008 */  jr         $ra
    /* 9D1E8 8008E238 00000000 */   nop
endlabel func_8008E16C_9D11C
