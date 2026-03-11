nonmatching func_8011C680_12B630, 0x28

glabel func_8011C680_12B630
    /* 12B630 8011C680 308E00FF */  andi       $t6, $a0, 0xFF
    /* 12B634 8011C684 000EC880 */  sll        $t9, $t6, 2
    /* 12B638 8011C688 032EC821 */  addu       $t9, $t9, $t6
    /* 12B63C 8011C68C 0019C900 */  sll        $t9, $t9, 4
    /* 12B640 8011C690 3C018005 */  lui        $at, %hi(D_800481D5)
    /* 12B644 8011C694 00390821 */  addu       $at, $at, $t9
    /* 12B648 8011C698 AFA40000 */  sw         $a0, 0x0($sp)
    /* 12B64C 8011C69C AFA50004 */  sw         $a1, 0x4($sp)
    /* 12B650 8011C6A0 03E00008 */  jr         $ra
    /* 12B654 8011C6A4 A02581D5 */   sb        $a1, %lo(D_800481D5)($at)
endlabel func_8011C680_12B630
