# Original libultra optimization flags

The older libultra build does not use the game's global `-O2` setting.
`reference/ultralib/makefiles/ido.mk` specifies `-O1` for OS and I/O
sources in versions D through I, and `-O3` for audio, graphics, libc,
scheduler, and SP sources. Preserve per-file flags in both build systems.

For `osAiSetFrequency`, copying `src/io/aisetfreq.c` from the reference
with its pre-J AI-control write and compiling at `-O1` gives a full ROM
SHA1 match. At `-O2`, the compiler removes the stack frame, hoists register
addresses, changes the float conversion sequence, and uses branch-likely
instructions. These differences are compiler settings, not incorrect C.

## Arithmetic helpers and archive padding

`ll.c` requires `-O1 -mips3 -32`, even though most libc sources use
`-O3`. IDO omits the O32 ELF flag for these objects; run the existing
`tools/set_o32abi_bit.py` before GNU linking, as for the archive.

The `parameters.s` text section is 0x60 bytes of zero padding, not an
`osSetParameters` implementation. Keep this reference assembly section
when replacing archive inputs with C, or everything after it moves.

## Older SDK packet and math behavior

The ROM mixes 2.0G and 2.0I implementations. `sources.json` records the
reference file, version and flags for each converted section. Later
reference fixes sometimes apply unconditionally, so version selection
alone is insufficient:

- Older controller and EEPROM code clears all 16 PIF words, including
  the command/status word, before setting its next command.
- Older EEPROM routines support 4K only, check `address > 64`, and use
  the dynamic `osClockRate` in `OS_USEC_TO_CYCLES`.
- The AI boundary workaround checks `((buf + size) & 0x3FFF) == 0x2000`.
- The older motor initialization performs one bank selection/verification;
  motor start/stop compare the response CRC with 0xEB/0 without a newer
  initialization flag.
- Graphics fixed-point conversion divides by 65536; reflection clamping
  uses double constants (`128.0`, `127.0`), rather than float constants.
- `seqplayer.c` uses IDO's default unsigned `char`, as in the reference
  makefile. A signed-char override changes its spilled note-kill flag load.

## Private BSS placement

At `-O3`, IDO emits stores to anonymous BSS for local static conversion
constants such as the graphics `dtor`. An absolute named-symbol alias
cannot move an anonymous section relocation. Preserve the reference C
and place the input BSS instead.

The `.fixed_bss` YAML entry for `libultra/rotate` anchors the library's
following BSS inputs at 0x8006CA50. Their original order and alignment also
place the VI/PI manager storage and the align/rotateRPY constants correctly.
A second anchor places `piacs` at 0x8006F0A0, preserving the 0x100-byte gap
for the cartridge/disk PI handles whose text is absent from this ROM.
`tools/splat_ext/fixed_bss.py` emits an absolute location-counter assignment
inside the NOLOAD output section. It skips disassembly because C supplies
this storage and the remaining game BSS is represented by absolute symbols.

Keep flags synchronized between the native Windows build and GNU Make by
running `tools/generate_libultra_flags.py` after editing `sources.json`.
Use `tools/compare_libultra.py --structural` to ignore linked symbol
addresses while matching instructions; the unmasked comparison and final
`tools/make.ps1` ROM SHA1 check remain the definitive validation.
