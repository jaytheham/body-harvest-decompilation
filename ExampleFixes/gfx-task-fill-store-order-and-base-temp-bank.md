# Long straight-line global-struct fill: the residual is the base-address temp bank

Observed on `func_8000F478_10078` (`core/FD80.c`, 76 instructions, no matched twin): an OS gfx
task fill - `osWritebackDCacheAll()`, ~21 stores into `arg0->list.t.*` and the `BhGfxTask`
tail, then `osSendMesg(osScGetCmdQ(&D_800680A0), arg0, 1)`.

The committed `#ifdef NON_MATCHING` body is structurally correct: `ins_diff -noregs` reports
target 76 vs ours 74 (delta **-2**), every opcode present, no missing/extra logic. Re-measured
unwrapped: **1620** (marker `CURRENT(1605)`, roughly honest).

Two divergences make up the score:

1. **The base-address temp bank.** Both builds materialise `&D_8005BB20` into a temp and read it
   twice (`lw t6,0(base)` / `lw t9,0(base)` - the reload after the first `sw` is IDO refusing to
   CSE a global load across a store). The target allocates that temp to **`$v0`**
   (`lui v0,0x8006; addiu v0,v0,-0x44e0`); ours allocates it to **`$a2`**. Every later row of the
   register band is shifted from there.
2. **Store order.** The target's physical store order is
   `0x40, 0x10, 0x14, 0x28, 0x2C, 0x44, 0x1C, 0x20, 0x24, 0x18, [tail]`; ours is
   `0x40, 0x44, 0x1C, 0x10, 0x2C, 0x14, 0x28, 0x24, 0x20, 0x18, [tail]` - i.e. ours flushes the
   two computed `u32` fields (`data_size<<3`, `ucode_boot_size`) before the constant fields,
   the target after them.

**Measured levers, all worse:**

| lever | result |
|---|---|
| Reorder the C so `type`/`flags`/`ucode_data`/`ucode_data_size` are assigned *before* `data_size`/`ucode_boot_size` (matching the target's store order) | **1970** (from 1620) |
| Delete the `BhGfxTask *new_var = arg0;` copy alias, use `arg0` throughout | **2405** |

The alias is *required*: IDO keeps the task pointer live differently with `new_var`, and removing
it re-banks a whole set of temps. The store-order reorder is real but is not the whole score, and
reordering alone overshoots - so this is the `func_80000730_1330` / `func_8000A3DC_AFDC` family
(identical opcodes, one register-bank/priority difference), not a statement-shape question.

Parked at **1620**. Do not re-tread the store-order reorder or the alias removal; a further attempt
should attack the **base-address temp bank** (why IDO spends `$v0` here and `$a2` there) or start
from the m2c transcript, which was not generated this run.
