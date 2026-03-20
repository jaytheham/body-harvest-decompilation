### Assignment reorderings

`a->x = X; a->y = Y;` may be reordered as `a->y = Y; a->x = X;` if `X`/`a`/`Y`/`b` involve large computations. However, the computations, stack restores and register allocation of `X`/`Y` are still done in original order.

Similarly, the compiler can reorder stores to disjoint globals. This can be used to observe whether a temporary variable was used for an address -- alias analysis does not look at variable values.

If `x` and `y` are stack variables and `X`/`Y` don't involve function calls or branches, the assignment order is generally irrelevant -- the emission order instead depends on when they are used.

### Order of commutative operations

`a + b` and `b + a` tend to generate the same code, and similar for ==, !=, ^, &, |. The order used is not currently known; it seems to depend on at least whether a and b include array indexing, and type casts can also matter (even casting a variable to its own type). Maybe it depends on when a and b were created, and on their complexity? Speculation: this normalization might be done to make deduplication passes more powerful.
