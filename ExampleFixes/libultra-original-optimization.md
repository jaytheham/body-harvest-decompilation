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
