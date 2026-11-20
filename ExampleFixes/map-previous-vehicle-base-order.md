Incorrect ASM in func_8009811C_A70CC. The inline vehicle accesses caused IDO to finish the array-base address after starting the index calculation.

    lui     t7,0x8005
    sll     t9,t8,0x2
    addiu   t7,t7,-0x2330

-> Code changed. Initialize the vehicle pointer directly from the retained vehicle index, then use its fields for the draw arguments.

    scratch.vehicle = &vehicleInstances[D_8013D52C_14C4DC];

-> Correct ASM order. The array-base address now finishes before the index shift, as it does in the target.

    lui     t8,0x8005
    addiu   t8,t8,-0x2330
    sll     t7,t9,0x2

The temporary registers still differ. This change fixes the order of the three instructions.