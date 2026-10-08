# Indexed texture rectangle loops

Matched `func_800E32C4_F2274` with IDO 5.3 `-O2 -mips2 -32`.

Use an indexed `for` loop and the standard `gSPTextureRectangle` macro when the target keeps the element pointer and loop counter increments until after the first packet word store. An explicit incrementing element pointer moved both increments earlier. Direct array indexing fixed those increments, but a `do` loop still swapped the array-base initialization and counter initialization around the initial `blez`. A `for (i = 0; i < count; i++)` loop fixed that final scheduling difference.

The native macro also schedules the display-list pointer store one instruction later than manually writing the first packet and calling the two half-word macros outside its scope. Keep the complete macro expansion together.

Assigning the height shift in every scale-selection branch, including the first branch, retains the target redundant constant loads. Initializing the height shift before the branches caused IDO to remove those loads and changed register allocation.

Validation: function diff score 0 and `build/bh.us.z64: OK`.
