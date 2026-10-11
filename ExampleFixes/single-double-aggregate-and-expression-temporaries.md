# Single-double aggregate constants and expression temporaries

During work on `func_801052E8_114298`, the steering coefficient at
`D_80144B78_153B28` was declared as a one-element `const f64` array.
Splitting the global steering read into a named float and then multiplying
preserved the instruction order, but selected different floating-point registers.
Using the combined expression with the array loaded the coefficient too early.

Changing the declaration to a scalar `const f64` made the combined expression
produce the exact target floating-point instruction sequence and registers.
However, IDO folded the scalar into a literal pool, removed the original data
object, and shifted subsequent data addresses.

The existing one-double aggregate type used by nearby matched constants solved
both problems:

```c
const ShadowGeometryConstant D_80144B78_153B28 = {0.1666666667};
/* ... */
speed = D_80158E5C * D_80144B78_153B28.value;
```

This preserves the original eight-byte object and its address while generating
the scalar-expression instruction schedule. The coefficient is approximately
one sixth; preserve the original decimal initializer exactly.

Separately, assigning the later force calculation to a different float local
from the steering calculation selected target `f0` instead of `f14`, without
changing the calculation or stack layout. Named temporaries can affect register
allocation beyond the expression in which they first appear.

These changes were verified with the normal full-ROM build and function diff.
The final complete function passes the normal full-ROM checksum with these
expression forms retained.
