Incorrect ASM:
```asm
# IDO emits buildingPropertyData in .data when a const u32 initializer
# contains (u32)func_8011EB40_12DAF0. Its expected .rodata slot disappears.
.data
buildingPropertyData:
    # ...
    .word func_8011EB40_12DAF0
```

-> Code changed:
```c
/* Keep numeric initializers in this packed const table. */
const u32 buildingPropertyData[] = {
    /* ... */
    OVERLAY_PTR(0x8011EB40),
    /* ... */
};
/* Writable tables can use (u32)func_800FEB04_10DAB4 instead of
 * OVERLAY_PTR(0x800FEB04); function pointer tables can reference
 * func_80076820_857D0 directly. Linker relocations select US/EU addresses. */
```

-> Correct ASM:
```asm
.section .rodata
buildingPropertyData:
    # ...
    .word 0x8011EB40  # US; OVERLAY_PTR supplies 0x8011EB70 for EU
```
