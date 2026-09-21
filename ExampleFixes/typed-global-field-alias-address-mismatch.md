### Use the target global alias when a typed struct field emits the wrong address

If a typed struct field produces the correct store operation but targets a different
global address than the target assembly, the symbol may be an alias whose current
struct declaration does not describe the original layout at that address.

Declare the target address as its own external variable and assign that variable
directly in the matching function. This preserves the existing struct layout for
other functions while producing the required symbol and relocation:

```c
extern s32 D_80256DEC;

D_80256DEC = 0x6F;
```

This fixed `func_802D53BC_254AFC`, where `alienTypes[0x11].unk54` generated a
store at `D_80256DBC` but the target used `D_80256DEC`.
