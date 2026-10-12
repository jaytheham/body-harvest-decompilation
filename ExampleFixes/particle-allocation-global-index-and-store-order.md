# Particle allocation: global index reloads and store ordering

`func_800DDB60_ECB10` matches with three signed-short coordinates, a `u8`
particle kind, a `u16` size, and a `u8` return. The target reads kind and size
from their byte and halfword argument homes. The corrected declaration also
preserves all existing callers: the complete ROM checksum passes.

Index `D_80156EF0[D_80157531]` directly for initialization, phase selection, and
color stores. A named entry pointer and a slot captured before the random call
created extra spills and retained the earlier index. The target reloads the
global free-slot byte after that call. Capture `slot = D_80157531` after phase
selection and before scanning for the next empty slot.

Treat the eight-byte configuration rows as `EffectParticleConfig` and the
four-byte color rows as `EffectParticleColor`. Their typed array views preserve
the signed configuration loads and eliminate manual row-stride arithmetic.
The backing arrays and matched consumers retain their existing layout.

Write the coordinate stores in X, Y, Z order, followed by the kind store in C.
IDO schedules the kind store before all three coordinate stores, as the target
requires. Writing kind first in C instead hoisted the Z load/store ahead of it
and changed the argument-load registers. This illustrates why source order
must be checked against generated instruction order.

`Search-AsmPattern.ps1 -Offset 0xECB98 -Count 5` found the matched frontend
`func_80085EA8_56358`; its direct indexed stores were a useful reference. Broader
searches of the initialization and color blocks returned no matches.

Validation after header and comment cleanup: function diff score 0 and
`build/bh.us.z64: OK`.
