# Comet joint index array and static base

`func_802DA6D4_31E824`:

- A volatile union index with a derived node pointer produces reordered detach-call argument loads and an early return-address save -> use `s16 joint[2]`, store the child index in `joint[0]`, and access coordinates through `D_8014DD50[joint[0]]` -> the target `sh`/`lh` at `sp+0x8C` remains, the flag load precedes the return-address save, and every detach argument is scheduled correctly.
- A second ordinary `s16 index` restores static-array scheduling but emits an extra `sh` at `sp+0x86`, delaying the `0x1F40` constant -> index the static array directly with `joint[0]`, without a second scalar copy -> no extra store and the constant is hoisted to the target slot.
- Using a persistent actor pointer changes effect-coordinate scheduling -> use direct `alienInstances[arg0]` accesses, with a pointer scoped only to the random-coordinate sampling block -> target coordinate operand order, argument stores, and temporary registers.
- A conflicting word-parameter declaration prevents the byte-parameter body from compiling -> declare the function with `u8 arg0` in `include/functions.us.h` and remove the local `s32` declaration -> target byte normalization and parameter-home instructions, with the US ROM checksum passing.
