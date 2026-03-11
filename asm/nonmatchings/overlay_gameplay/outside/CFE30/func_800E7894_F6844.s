nonmatching func_800E7894_F6844, 0x200

glabel func_800E7894_F6844
    /* F6844 800E7894 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* F6848 800E7898 AFBF0014 */  sw         $ra, 0x14($sp)
    /* F684C 800E789C AFA40020 */  sw         $a0, 0x20($sp)
    /* F6850 800E78A0 AFA50024 */  sw         $a1, 0x24($sp)
    /* F6854 800E78A4 0C039D98 */  jal        func_800E7660_F6610
    /* F6858 800E78A8 AFA60028 */   sw        $a2, 0x28($sp)
    /* F685C 800E78AC 3C048006 */  lui        $a0, %hi(D_8005BB2C)
    /* F6860 800E78B0 2484BB2C */  addiu      $a0, $a0, %lo(D_8005BB2C)
    /* F6864 800E78B4 8C830000 */  lw         $v1, 0x0($a0)
    /* F6868 800E78B8 3C0FFCFF */  lui        $t7, (0xFCFF99FF >> 16)
    /* F686C 800E78BC 3C18FF32 */  lui        $t8, (0xFF327F3F >> 16)
    /* F6870 800E78C0 246E0008 */  addiu      $t6, $v1, 0x8
    /* F6874 800E78C4 AC8E0000 */  sw         $t6, 0x0($a0)
    /* F6878 800E78C8 37187F3F */  ori        $t8, $t8, (0xFF327F3F & 0xFFFF)
    /* F687C 800E78CC 35EF99FF */  ori        $t7, $t7, (0xFCFF99FF & 0xFFFF)
    /* F6880 800E78D0 AC6F0000 */  sw         $t7, 0x0($v1)
    /* F6884 800E78D4 AC780004 */  sw         $t8, 0x4($v1)
    /* F6888 800E78D8 8C830000 */  lw         $v1, 0x0($a0)
    /* F688C 800E78DC 3C0EFD90 */  lui        $t6, (0xFD900000 >> 16)
    /* F6890 800E78E0 24790008 */  addiu      $t9, $v1, 0x8
    /* F6894 800E78E4 AC990000 */  sw         $t9, 0x0($a0)
    /* F6898 800E78E8 AC6E0000 */  sw         $t6, 0x0($v1)
    /* F689C 800E78EC 0C000E38 */  jal        func_800038E0_44E0
    /* F68A0 800E78F0 AFA30018 */   sw        $v1, 0x18($sp)
    /* F68A4 800E78F4 3C190101 */  lui        $t9, %hi(D_100C700)
    /* F68A8 800E78F8 8FAD0018 */  lw         $t5, 0x18($sp)
    /* F68AC 800E78FC 2739C700 */  addiu      $t9, $t9, %lo(D_100C700)
    /* F68B0 800E7900 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* F68B4 800E7904 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* F68B8 800E7908 3C048006 */  lui        $a0, %hi(D_8005BB2C)
    /* F68BC 800E790C 2484BB2C */  addiu      $a0, $a0, %lo(D_8005BB2C)
    /* F68C0 800E7910 3C1FE700 */  lui        $ra, (0xE7000000 >> 16)
    /* F68C4 800E7914 3C0C8015 */  lui        $t4, %hi(D_80153BB8)
    /* F68C8 800E7918 258C3BB8 */  addiu      $t4, $t4, %lo(D_80153BB8)
    /* F68CC 800E791C 04410004 */  bgez       $v0, .L800E7930_F68E0
    /* F68D0 800E7920 304F0007 */   andi      $t7, $v0, 0x7
    /* F68D4 800E7924 11E00002 */  beqz       $t7, .L800E7930_F68E0
    /* F68D8 800E7928 00000000 */   nop
    /* F68DC 800E792C 25EFFFF8 */  addiu      $t7, $t7, -0x8
  .L800E7930_F68E0:
    /* F68E0 800E7930 000FC240 */  sll        $t8, $t7, 9
    /* F68E4 800E7934 03197021 */  addu       $t6, $t8, $t9
    /* F68E8 800E7938 01C17824 */  and        $t7, $t6, $at
    /* F68EC 800E793C ADAF0004 */  sw         $t7, 0x4($t5)
    /* F68F0 800E7940 8C830000 */  lw         $v1, 0x0($a0)
    /* F68F4 800E7944 3C0E0708 */  lui        $t6, (0x7080200 >> 16)
    /* F68F8 800E7948 35CE0200 */  ori        $t6, $t6, (0x7080200 & 0xFFFF)
    /* F68FC 800E794C 24780008 */  addiu      $t8, $v1, 0x8
    /* F6900 800E7950 AC980000 */  sw         $t8, 0x0($a0)
    /* F6904 800E7954 3C19F590 */  lui        $t9, (0xF5900000 >> 16)
    /* F6908 800E7958 AC790000 */  sw         $t9, 0x0($v1)
    /* F690C 800E795C AC6E0004 */  sw         $t6, 0x4($v1)
    /* F6910 800E7960 8C830000 */  lw         $v1, 0x0($a0)
    /* F6914 800E7964 3C18E600 */  lui        $t8, (0xE6000000 >> 16)
    /* F6918 800E7968 3C0EF300 */  lui        $t6, (0xF3000000 >> 16)
    /* F691C 800E796C 246F0008 */  addiu      $t7, $v1, 0x8
    /* F6920 800E7970 AC8F0000 */  sw         $t7, 0x0($a0)
    /* F6924 800E7974 AC600004 */  sw         $zero, 0x4($v1)
    /* F6928 800E7978 AC780000 */  sw         $t8, 0x0($v1)
    /* F692C 800E797C 8C830000 */  lw         $v1, 0x0($a0)
    /* F6930 800E7980 3C0F070F */  lui        $t7, (0x70FF400 >> 16)
    /* F6934 800E7984 35EFF400 */  ori        $t7, $t7, (0x70FF400 & 0xFFFF)
    /* F6938 800E7988 24790008 */  addiu      $t9, $v1, 0x8
    /* F693C 800E798C AC990000 */  sw         $t9, 0x0($a0)
    /* F6940 800E7990 AC6F0004 */  sw         $t7, 0x4($v1)
    /* F6944 800E7994 AC6E0000 */  sw         $t6, 0x0($v1)
    /* F6948 800E7998 8C830000 */  lw         $v1, 0x0($a0)
    /* F694C 800E799C 3C0EF580 */  lui        $t6, (0xF5800400 >> 16)
    /* F6950 800E79A0 3C0F0008 */  lui        $t7, (0x80200 >> 16)
    /* F6954 800E79A4 24780008 */  addiu      $t8, $v1, 0x8
    /* F6958 800E79A8 AC980000 */  sw         $t8, 0x0($a0)
    /* F695C 800E79AC AC600004 */  sw         $zero, 0x4($v1)
    /* F6960 800E79B0 AC7F0000 */  sw         $ra, 0x0($v1)
    /* F6964 800E79B4 8C830000 */  lw         $v1, 0x0($a0)
    /* F6968 800E79B8 35EF0200 */  ori        $t7, $t7, (0x80200 & 0xFFFF)
    /* F696C 800E79BC 35CE0400 */  ori        $t6, $t6, (0xF5800400 & 0xFFFF)
    /* F6970 800E79C0 24790008 */  addiu      $t9, $v1, 0x8
    /* F6974 800E79C4 AC990000 */  sw         $t9, 0x0($a0)
    /* F6978 800E79C8 AC6F0004 */  sw         $t7, 0x4($v1)
    /* F697C 800E79CC AC6E0000 */  sw         $t6, 0x0($v1)
    /* F6980 800E79D0 8C830000 */  lw         $v1, 0x0($a0)
    /* F6984 800E79D4 3C0E0007 */  lui        $t6, (0x7C07C >> 16)
    /* F6988 800E79D8 35CEC07C */  ori        $t6, $t6, (0x7C07C & 0xFFFF)
    /* F698C 800E79DC 24780008 */  addiu      $t8, $v1, 0x8
    /* F6990 800E79E0 AC980000 */  sw         $t8, 0x0($a0)
    /* F6994 800E79E4 3C19F200 */  lui        $t9, (0xF2000000 >> 16)
    /* F6998 800E79E8 AC790000 */  sw         $t9, 0x0($v1)
    /* F699C 800E79EC AC6E0004 */  sw         $t6, 0x4($v1)
    /* F69A0 800E79F0 8C830000 */  lw         $v1, 0x0($a0)
    /* F69A4 800E79F4 24180020 */  addiu      $t8, $zero, 0x20
    /* F69A8 800E79F8 3C018015 */  lui        $at, %hi(D_80153BCD)
    /* F69AC 800E79FC 246F0008 */  addiu      $t7, $v1, 0x8
    /* F69B0 800E7A00 AC8F0000 */  sw         $t7, 0x0($a0)
    /* F69B4 800E7A04 AC600004 */  sw         $zero, 0x4($v1)
    /* F69B8 800E7A08 AC7F0000 */  sw         $ra, 0x0($v1)
    /* F69BC 800E7A0C A0383BCD */  sb         $t8, %lo(D_80153BCD)($at)
    /* F69C0 800E7A10 87AE0022 */  lh         $t6, 0x22($sp)
    /* F69C4 800E7A14 87AF0026 */  lh         $t7, 0x26($sp)
    /* F69C8 800E7A18 87B8002A */  lh         $t8, 0x2A($sp)
    /* F69CC 800E7A1C 448E2000 */  mtc1       $t6, $f4
    /* F69D0 800E7A20 448F4000 */  mtc1       $t7, $f8
    /* F69D4 800E7A24 44988000 */  mtc1       $t8, $f16
    /* F69D8 800E7A28 468021A0 */  cvt.s.w    $f6, $f4
    /* F69DC 800E7A2C 3C018015 */  lui        $at, %hi(D_80153BCE)
    /* F69E0 800E7A30 24190020 */  addiu      $t9, $zero, 0x20
    /* F69E4 800E7A34 A0393BCE */  sb         $t9, %lo(D_80153BCE)($at)
    /* F69E8 800E7A38 3C198015 */  lui        $t9, %hi(D_80153B80)
    /* F69EC 800E7A3C 468042A0 */  cvt.s.w    $f10, $f8
    /* F69F0 800E7A40 E5860000 */  swc1       $f6, 0x0($t4)
    /* F69F4 800E7A44 27393B80 */  addiu      $t9, $t9, %lo(D_80153B80)
    /* F69F8 800E7A48 3C018015 */  lui        $at, %hi(D_80153BC4)
    /* F69FC 800E7A4C 240E00FF */  addiu      $t6, $zero, 0xFF
    /* F6A00 800E7A50 468084A0 */  cvt.s.w    $f18, $f16
    /* F6A04 800E7A54 E58A0004 */  swc1       $f10, 0x4($t4)
    /* F6A08 800E7A58 E5920008 */  swc1       $f18, 0x8($t4)
    /* F6A0C 800E7A5C AC393BC4 */  sw         $t9, %lo(D_80153BC4)($at)
    /* F6A10 800E7A60 3C0142C8 */  lui        $at, (0x42C80000 >> 16)
    /* F6A14 800E7A64 44812000 */  mtc1       $at, $f4
    /* F6A18 800E7A68 3C018015 */  lui        $at, %hi(D_80153BC8)
    /* F6A1C 800E7A6C E4243BC8 */  swc1       $f4, %lo(D_80153BC8)($at)
    /* F6A20 800E7A70 3C018015 */  lui        $at, %hi(D_80153BCC)
    /* F6A24 800E7A74 0C036CD4 */  jal        func_800DB350_EA300
    /* F6A28 800E7A78 A02E3BCC */   sb        $t6, %lo(D_80153BCC)($at)
    /* F6A2C 800E7A7C 0C039DED */  jal        func_800E77B4_F6764
    /* F6A30 800E7A80 00000000 */   nop
    /* F6A34 800E7A84 8FBF0014 */  lw         $ra, 0x14($sp)
    /* F6A38 800E7A88 27BD0020 */  addiu      $sp, $sp, 0x20
    /* F6A3C 800E7A8C 03E00008 */  jr         $ra
    /* F6A40 800E7A90 00000000 */   nop
endlabel func_800E7894_F6844
    /* F6A44 800E7A94 00000000 */  nop
    /* F6A48 800E7A98 00000000 */  nop
    /* F6A4C 800E7A9C 00000000 */  nop
