# Indexed texture rectangle loops

Matched `func_800E32C4_F2274` with IDO 5.3 `-O2 -mips2 -32`.

Use an indexed `for` loop and the standard `gSPTextureRectangle` macro when the target keeps the element pointer and loop counter increments until after the first packet word store. An explicit incrementing element pointer moved both increments earlier. Direct array indexing fixed those increments, but a `do` loop still swapped the array-base initialization and counter initialization around the initial `blez`. A `for (i = 0; i < count; i++)` loop fixed that final scheduling difference.

The native macro also schedules the display-list pointer store one instruction later than manually writing the first packet and calling the two half-word macros outside its scope. Keep the complete macro expansion together.

Assigning the height shift in every scale-selection branch, including the first branch, retains the target redundant constant loads. Initializing the height shift before the branches caused IDO to remove those loads and changed register allocation.

Validation: function diff score 0 and `build/bh.us.z64: OK`.

## Constant scaling and negative texture frames

`func_800E2ED4_F1E84` also matches with an indexed `for` loop. Use `((coordinate >> 4) + 16) << 2` when the target adds 16 before shifting: multiplication by four lets IDO distribute the multiplication, shifting first and adding 64.

For the 128-byte texture frame array, `frames[0 - index]` produces the target negative address sequence and redundant pipe-sync constant load. `frames[-index]` generates a different temporary and removes that constant load, shifting the temporary register bank throughout the following setup commands. These expressions have the same intended signed index; their frontend forms affect IDO code generation. The data is declared as a two-dimensional byte array to keep frame access typed.

Validation: second renderer diff score 0 and ROM checksum OK.
