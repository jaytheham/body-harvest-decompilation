nonmatching func_800B4050_C3000, 0x10C

glabel func_800B4050_C3000
    /* C3000 800B4050 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* C3004 800B4054 AFA40020 */  sw         $a0, 0x20($sp)
    /* C3008 800B4058 AFA50024 */  sw         $a1, 0x24($sp)
    /* C300C 800B405C 3C018015 */  lui        $at, %hi(D_8014F8A0)
    /* C3010 800B4060 93AE0023 */  lbu        $t6, 0x23($sp)
    /* C3014 800B4064 93AF0027 */  lbu        $t7, 0x27($sp)
    /* C3018 800B4068 AFBF001C */  sw         $ra, 0x1C($sp)
    /* C301C 800B406C AC26F8A0 */  sw         $a2, %lo(D_8014F8A0)($at)
    /* C3020 800B4070 3C1F8015 */  lui        $ra, %hi(D_80151DD8)
    /* C3024 800B4074 27FF1DD8 */  addiu      $ra, $ra, %lo(D_80151DD8)
    /* C3028 800B4078 3C0C8015 */  lui        $t4, %hi(D_8014F89C)
    /* C302C 800B407C 3C0D8015 */  lui        $t5, %hi(D_8014F89D)
    /* C3030 800B4080 25ADF89D */  addiu      $t5, $t5, %lo(D_8014F89D)
    /* C3034 800B4084 258CF89C */  addiu      $t4, $t4, %lo(D_8014F89C)
    /* C3038 800B4088 AFB00018 */  sw         $s0, 0x18($sp)
    /* C303C 800B408C AFA7002C */  sw         $a3, 0x2C($sp)
    /* C3040 800B4090 31C800FF */  andi       $t0, $t6, 0xFF
    /* C3044 800B4094 31EA00FF */  andi       $t2, $t7, 0xFF
    /* C3048 800B4098 00C08025 */  or         $s0, $a2, $zero
    /* C304C 800B409C A3E80964 */  sb         $t0, 0x964($ra)
    /* C3050 800B40A0 A3EA0965 */  sb         $t2, 0x965($ra)
    /* C3054 800B40A4 24070006 */  addiu      $a3, $zero, 0x6
    /* C3058 800B40A8 00004825 */  or         $t1, $zero, $zero
    /* C305C 800B40AC 00001825 */  or         $v1, $zero, $zero
    /* C3060 800B40B0 A18E0000 */  sb         $t6, 0x0($t4)
    /* C3064 800B40B4 A1AF0000 */  sb         $t7, 0x0($t5)
  .L800B40B8_C3068:
    /* C3068 800B40B8 0009C900 */  sll        $t9, $t1, 4
    /* C306C 800B40BC 0329C823 */  subu       $t9, $t9, $t1
    /* C3070 800B40C0 01432821 */  addu       $a1, $t2, $v1
    /* C3074 800B40C4 0005C200 */  sll        $t8, $a1, 8
    /* C3078 800B40C8 0019C8C0 */  sll        $t9, $t9, 3
    /* C307C 800B40CC 03F93021 */  addu       $a2, $ra, $t9
    /* C3080 800B40D0 03002825 */  or         $a1, $t8, $zero
    /* C3084 800B40D4 00001025 */  or         $v0, $zero, $zero
    /* C3088 800B40D8 00002025 */  or         $a0, $zero, $zero
  .L800B40DC_C308C:
    /* C308C 800B40DC 00470019 */  multu      $v0, $a3
    /* C3090 800B40E0 01047021 */  addu       $t6, $t0, $a0
    /* C3094 800B40E4 01C51821 */  addu       $v1, $t6, $a1
    /* C3098 800B40E8 306FFFFF */  andi       $t7, $v1, 0xFFFF
    /* C309C 800B40EC 000FC040 */  sll        $t8, $t7, 1
    /* C30A0 800B40F0 24420001 */  addiu      $v0, $v0, 0x1
    /* C30A4 800B40F4 0218C821 */  addu       $t9, $s0, $t8
    /* C30A8 800B40F8 972E0000 */  lhu        $t6, 0x0($t9)
    /* C30AC 800B40FC 304400FF */  andi       $a0, $v0, 0xFF
    /* C30B0 800B4100 28810013 */  slti       $at, $a0, 0x13
    /* C30B4 800B4104 00007812 */  mflo       $t7
    /* C30B8 800B4108 00CFC021 */  addu       $t8, $a2, $t7
    /* C30BC 800B410C 00801025 */  or         $v0, $a0, $zero
    /* C30C0 800B4110 1420FFF2 */  bnez       $at, .L800B40DC_C308C
    /* C30C4 800B4114 A70E0000 */   sh        $t6, 0x0($t8)
    /* C30C8 800B4118 25290001 */  addiu      $t1, $t1, 0x1
    /* C30CC 800B411C 312300FF */  andi       $v1, $t1, 0xFF
    /* C30D0 800B4120 28610013 */  slti       $at, $v1, 0x13
    /* C30D4 800B4124 1420FFE4 */  bnez       $at, .L800B40B8_C3068
    /* C30D8 800B4128 00604825 */   or        $t1, $v1, $zero
    /* C30DC 800B412C A3E00960 */  sb         $zero, 0x960($ra)
    /* C30E0 800B4130 A3E00961 */  sb         $zero, 0x961($ra)
    /* C30E4 800B4134 93A40023 */  lbu        $a0, 0x23($sp)
    /* C30E8 800B4138 93A50027 */  lbu        $a1, 0x27($sp)
    /* C30EC 800B413C 02003025 */  or         $a2, $s0, $zero
    /* C30F0 800B4140 0C02CD17 */  jal        func_800B345C_C240C
    /* C30F4 800B4144 93A7002F */   lbu       $a3, 0x2F($sp)
    /* C30F8 800B4148 8FBF001C */  lw         $ra, 0x1C($sp)
    /* C30FC 800B414C 8FB00018 */  lw         $s0, 0x18($sp)
    /* C3100 800B4150 27BD0020 */  addiu      $sp, $sp, 0x20
    /* C3104 800B4154 03E00008 */  jr         $ra
    /* C3108 800B4158 00000000 */   nop
endlabel func_800B4050_C3000
