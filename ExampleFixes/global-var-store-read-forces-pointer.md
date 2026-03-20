### Global variable write-then-read forces pointer precomputation

When global variables are STORED then READ BACK in computations like:
```c
D_801493C0 = temp_t7;           // store
// ... other stores ...
D_801493B0 = D_801493C0 << 8;   // read-back
```
IDO pre-allocates a pointer register (e.g. a1=&D_801493C0) because it needs to READ BACK via pointer later. This adds 2 instructions (`lui + addiu`) for the pointer precomputation but removes 1 instruction from the store (uses `sw t7, 0(a1)` instead of `lui at; sw t7, -0x...(at)`).

The number of pointer setups added (net +1 per variable that needs pointer) determines the function's instruction count. If the target's function size requires having specific variables read via pointer, change direct register-value shifts to global-variable reads.

**Important**: Only do this if the compiler performs "store forwarding" optimization (uses the register value for the read, not an actual memory reload). If IDO reloads from memory, it adds an extra `lw` instruction making the function too long. IDO applies store forwarding when the register holding the value is NOT clobbered between store and read-back.
