# Incorrect ASM

`func_800AA340_B92F0` matched every instruction except an explicit `1.2f` datum's load. Its `lui at,0x8014` / `lwc1 f22,0x2908(at)` pair was scheduled nine instructions early. An inline `1.2f` produced the exact instruction order but was pooled at `0x80142920`, after the human-AI string, instead of the target `0x80142908`.

# Code changed

Split the merged source at `func_800AB250_BA200` into `B8290_tail.c`, with the existing human-AI string in the tail unit. Add corresponding US/EU text and read-only-data boundaries and list the tail as shared overlay source. Keep the first `0.9` aggregate and let the death function generate its inline `1.2f`. Declare the two existing data tables now accessed across translation units. Regenerate linker scripts from the YAML files; the remaining carried-human assembly fallback follows the new source name.

# Correct ASM

The death-effect pool is `0.9` at `0x80142900`, `1.2f` at `0x80142908`, then the tail's string at `0x80142910`. The setup is `lui at,0x40e0` -> `mtc1 at,f27` -> `lui at,0x8014` -> `lwc1 f22,0x2908(at)`. All 964 death-function instructions match; US and EU full-ROM checksums both pass using linker scripts regenerated from the split YAML configuration.
