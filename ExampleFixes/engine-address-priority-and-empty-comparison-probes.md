# Address-cache priority in IDO 5.3

Verified in the fully matched `func_801052E8_114298`. The engine register order
depends on the relative priorities of the gear, delay, ratio pointer, and two
global addresses.

An empty test of the ratio pointer alone, such as `if (gears != NULL) { }`,
does not change the generated code or register order. Separate empty comparisons
against global addresses do affect the allocation:

```c
if (gears != &D_8004DCC4) { }
if (gears != &D_8004DCC0) { }
```

These statements disappear from the final instruction stream but change the
allocator's reference and span counts before cleanup. A chain joined with `&&`
leaves additional branches. A single bitwise expression folds too early to
change the allocation.

The allocator's divisor is compressed: `raw < 3 ? raw : 2 + ((raw - 2) >> 2)`,
where raw combines occurrences and spanning blocks. Read counts cross discrete
thresholds, so use a no-force optimizer trace rather than assuming a smooth
relationship between the number of reads and register order.

The final source uses four comparisons against DCC4 and fourteen against DCC0
immediately after the first engine RPM assignment. This gives the ratio pointer
v0, DCC4 address v1, DCC0 address a0, gear a1, and delay a3. Reducing the tested
counts to four/thirteen or five/thirteen breaks the match. The initial exact
candidate needed eight/sixteen; minimizing it removed six empty comparisons.

This allocation fix must be combined with the upshift update shape described
in `self-update-remainder-and-store-scheduling.md`. A local `gear++` obtains the
target t6 temporary, while the correctly preserved delay update avoids consuming
an extra scratch register and preserves the later case-3/case-4 register queue.

The official full ROM build reports `build/bh.us.z64: OK`; these comparisons
add no runtime instructions.
