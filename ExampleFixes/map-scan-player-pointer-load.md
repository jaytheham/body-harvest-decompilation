Incorrect ASM in func_8009811C_A70CC. The player pointer read used t1 where the target used a temporary register. A volatile cast of the linker symbol moved it into the temporary sequence and added a low-half address instruction.

    lui     t6,0x8005
    addiu   t6,t6,0x2b34
    lw      t9,0(t6)

-> Code changed. Use a typed absolute read for the active vehicle slot in the map scan. Give the expression the address from each version's symbol map.

    #if defined(VERSION_US)
    #define D_80052B34_MapScan (*(VehicleInstance *volatile *)0x80052B34)
    #elif defined(VERSION_EU)
    #define D_80052B34_MapScan (*(VehicleInstance *volatile *)0x80052B64)
    #endif

-> Correct ASM shape. IDO folds the low half into the load displacement and restores temporary-register use.

    lui     t6,0x8005
    lw      t9,0x2b34(t6)

The PAL build uses displacement 0x2b64. The target uses t9 as the base register. This change removes the extra address instruction and improves downstream register allocation.