### Compound bit-flag sequence with two stores (set/clear pattern)

When the original assembly does a load, OR into a register, STORE (intermediate), AND the register, STORE again use |= followed by &= rather than a named temp variable.

IDO 5.3 with a named temp:
`c
s32 temp = ptr->field | 0x80;
ptr->field = temp;           // << IDO eliminates this (dead store)
ptr->field = temp & ~0x100;
`
IDO 5.3 with |= / &=:
`c
ptr->field |= 0x80;          // store 1 emitted
ptr->field &= ~0x100;        // AND uses the register value, no reload; store 2 emitted
`
IDO 5.3 is smart enough to _not_ reload from memory for the &= even though it just stored, so the assembly matches: one load, two stores.
