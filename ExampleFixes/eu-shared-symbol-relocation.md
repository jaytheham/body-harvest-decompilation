# Region port: shared-C symbols bound to the wrong (NA) address

## Symptom

A region port (EU) builds to the **correct size** but dozens or thousands of
`.text` bytes differ. Every differing byte is a 32-bit **address operand**
(`lui`+`addiu`/`ori`/`lw`/`sw`) or a **pointer-table entry**, never an
instruction opcode. The operands usually differ by a constant delta (`+/-0x30`
for a segment that shifted between regions). Here the EU image moved a set of
shared symbols `+0x30` relative to NA, so the shared C emitted NA targets while
the EU ROM uses EU targets. ROM `0xFB53` was the first core difference; a lone
data word also differed at `0x32788`.

## Cause

Version-independent C in `src/common/` keeps NA symbol names
(`D_<vram>_<rom>`). When the target region places that symbol at a different
VRAM, the C reference silently binds to the **wrong** address. Two failure
modes:

1. The C *defines or references* a `D_<na_vram>_...` name whose EU placement has
   moved, so the reference resolves to the NA address.
2. An **asm auto-label** of the same name shadows the moved definition and binds
   the C to the address encoded in the NA name.

## How splat renames

Renames happen **by address** and are read **only** from
`symbol_addrs.<version>.txt` (`tools/splat/src/splat/util/options.py:400`, applied
in `symbols.py:310` and `symbols.py:477`). `undefined_syms.<version>.txt` is only
an `ld -T` input and can **never** rename anything.

- Pins are `eu_<name> = 0x<eu_vram>;`.
- `symbol_addrs.<version>.txt` (splat) accepts `//` comments;
  `undefined_syms.<version>.txt` (`ld -T`) accepts only `/* ... */`.

## The rule

Tag `eu_` any shared-C name the C **defines** OR **references** whose EU
placement differs from the address encoded in its NA name. Port NA
offset-aliases too. Interior labels need their own pins. `func_*` renames must be
avoided by the generator: splat names `GLOBAL_ASM` stub files after the symbol,
so do region-only function renames **by hand** and keep the C `GLOBAL_ASM`
pragma in sync: splat parses the pragma filename, and a stub whose name differs
from the splat symbol is misclassified as matched. A deliberate `EU_` (not `eu_`)
prefix on such a hand rename keeps it out of the generator's `^eu_` stripper
across pipeline re-runs.

## Verification

Rebuild **both** regions: NA must stay byte-exact (`build/bh.us.z64` ==
`baserom.us.z64`) and the port must become byte-exact (`build.eu/bh.eu.z64` ==
`baserom.eu.z64`). Diff the ROM bytes and confirm zero. DRAM address operands
(`%hi`/`%lo` of a global) are the tell.
