Incorrect ASM. Addressing the stage availability field with a flattened level-times-25 index lets IDO finish the level calculation before the stage calculation. A literal multiply by 25 can also lower through a subtract.

    sll     t9,t6,2
    subu    t6,t6,t8
    ...

-> Code changed. Keep the five-halfword record stride and the five-record level stride distinct. Spell the first scale as shift plus add. Spell the second through an unsigned word and convert back to the signed halfword index before adding the stage term.

    temp_v1 = (currentLevel << 2) + currentLevel;
    offset = (s32)(((u32)temp_v1 << 2) + (u32)temp_v1) + stageIndex * 5 - bias;

-> Correct ASM order at all three availability checks. The stage shift and addition now fit between the final level shift and level addition. The temporary register operands can still differ.

    sll     t9,t6,2
    sll     t8,t7,2
    addu    t8,t8,t7
    addu    t9,t9,t6
