# Audio function-private statics and BSS placement

Both `func_80013720_14320` and `func_80013818_14418` in
`src/common/core/12C80.c` match with function-local static state.

## Replace a write alias with the original storage scope

Declare `D_80033C88_34888` as `static u8`, initialized to zero, inside
`func_80013720_14320`. Read its remainder into the signed-byte index, increment
the counter, then print and select the track. This emits separate fused
`lbu`/`sb` address loads, with the format-address `lui` preceding the store-address
`lui`. The `_W` linker alias and both external byte declarations are unnecessary.

File-scope `static` does not reproduce this behavior: IDO shares a materialized
address, adding `addiu` and changing scheduling. Array, struct, and pointer-cast
access variants also retain that shared address. Check function-private storage
before adding read/write aliases for a counter used by only one function.

Likewise, move `D_80033C94_34894`, initialized to -1, into
`func_80013818_14418` as a local static short. IDO then forwards its decrement,
merges the store across the positive/nonpositive paths, and uses `v0` for the
subsequent -1 and 1 stores. An external or file-static short instead reloads the
stored value and allocates the constants differently.

IDO emits these private initializers in source data order. Keep the definitions
of `D_80033C8C_3488C` and `D_80033C90_34890` after the first function, and
`D_80033C98_34898` through `D_80033CBC_348BC` after the second. Otherwise the
private counters land at the wrong offsets even when their instructions match.

## Anchor the anonymous BSS counter

The available-sounds short `D_8006AB14` must also be function-private. Its
anonymous section relocation cannot be placed by the existing absolute linker
symbol of the same name. Add a `.fixed_bss` entry for `core/12C80` at
`0x8006AB10`, and declare an unused static word before the short to reserve the
preceding sound-player slot. The private count then occupies offset 4,
`0x8006AB14`.

Defining the external `D_8006AB10` through a header macro does not reserve the
first slot: IDO allocates that file-scope BSS definition after the private short.
Use the explicit private reservation, whose declaration emits no instructions.
Regenerate the linker with a complete code-symbol scan; an `ld`-only Splat run
can omit assembly-referenced symbols from `undefined_syms_auto.txt`. Apply the
normal Windows extraction path normalization to generated RSP `.incbin` paths.

## Preserve comparison and literal types

Use `-1U` for the four music-timer comparisons and the sound-allocation failure
comparison. Equality against a promoted signed short still recognizes -1, but
IDO uses repeated `$at` immediates instead of keeping signed -1 in `$s2` across
calls. This restores the target 0x30-byte frame.

Keep the coordinate divisions spelled `/ 4`. Changing them to `/ 4.0f` causes
IDO to replace `div.s` with multiplication by 0.25 and changes scheduling.
Removing the explicit signed-byte cast on the fade-helper argument is neutral;
the declared parameter type supplies the same narrowing.

Validation: both function diff scores are 0, and the standard
`tools/make.ps1` full-ROM comparison reports `build/bh.us.z64: OK`.
