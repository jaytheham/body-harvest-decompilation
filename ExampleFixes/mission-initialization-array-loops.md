# Mission initialization loops and assignment chains

`func_80074204_831B4` matched after replacing guarded do/while counting with `i = count; while (i--)`. Every descending record loop can use the actual typed array index; IDO generates the target backward pointer walks, including moving the flag-record pointer before its final store. The forward byte clear uses an ordinary byte cursor over the dialogue buffer.

The count reset is one seven-element chain: `D_80149B28 = D_80149B2C = D_80149B30 = D_80149B34 = D_80149B38 = D_80149B40 = D_80149B44 = 0`. Its six intermediate lvalues generate address temporaries in v0 through a3; the outermost store uses at. Making the final count reset a separate statement loses one address temporary and shifts register allocation.

The completion reset ends with `D_80149B48 = D_8004D14C = D_8014D17C`, keeping the intermediate word destination address in a temporary. The final signed sentinel uses `(s8)a1`, where a1 is the byte sentinel 0xFF used by the earlier initialization loops. This folds to a separate -1 immediate; writing a second literal -1 instead shares the first -1 constant across the entire reset block and changes its register allocation. Full ROM OK verified.
