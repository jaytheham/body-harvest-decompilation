# Incorrect ASM

`func_800AA340_B92F0` emitted `andi a0,v0,0xff` instead of the target `move a0,v0` after allocating a byte particle ID. Its explosion radius load occupied the `jal` delay slot instead of preceding the coordinate loads. The full diff was 697.

# Code changed

Declare a word-argument view of the existing byte setter. Emit its weak alias only when the existing `OUTSIDE_CFE30_BSS` owner macro is defined; the implementation and canonical byte prototype remain intact. Call this view with the allocator's already normalized byte ID. For the phase-80 explosion, read only the first coordinate as `alienInstances[arg0].unk0`; retain the cached pointer for the other coordinates.

# Correct ASM

The first setter uses `move a0,v0`. The explosion uses `lhu a3,0xb04(s7)` before the three coordinate loads and spills its cached instance pointer in the `jal` delay slot. Every other instruction, register, and stack home matches except the two-instruction volume constant load, which remains scheduled earlier than the target. The full diff is 120. US and EU full checksums pass with the assembly fallback retained.
