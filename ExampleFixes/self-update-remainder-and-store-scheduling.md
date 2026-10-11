# A late remainder simplification preserves a local update register

Verified with IDO 5.3 -O2 in the fully matched `func_801052E8_114298`.
The upshift needs `addiu t6,a1,1`, a halfword gear store, and `li a3,10`
followed by a halfword delay store. A literal delay store chooses a scratch
register, and advances the temporary-register queue used by later switch cases.

Updating `gear++` and then storing gear produces the required t6. An ordinary
`delay = 10; Next = delay;` does not preserve the delay register: IDO propagates
the constant and removes the separate local assignment as a dead value.

This source form keeps the delay in its existing update chain:

```c
gear++;
D_801409EC_Next = gear;
D_801409F0_Next = delay = (delay % 1) + 10;
```

The remainder is mathematically zero. IDO lowers it late enough to preserve
the local's register identity, then emits only `li a3,10`; there is no divide,
remainder, or additional arithmetic instruction. Earlier-folding alternatives
such as `delay - delay` and `delay ^ delay` do not preserve that identity.

Putting the local update inside the global assignment is also necessary.
Separating the assignments emits `li a3,10` before the global address's `lui`.
The chained assignment permits the target order, `lui at` followed by `li a3`.

The final full ROM build reports `build/bh.us.z64: OK`, with zero differing
bytes. No forced-register compiler settings are retained.
