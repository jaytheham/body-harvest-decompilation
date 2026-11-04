incorrect ASM: func_8007568C_15D74C interleaved base and offset transform initialization, producing the correct number of scale loads but different rotation and position store scheduling.

-> code changed: Initialize rotation[0..2], position[0..2] and scale[0..2] in groups, then initialize rotation[3..5], position[3..5] and scale[3..5] in groups. For the first culling call, capture the camera Z conversion in a word local and pass it through a value-preserving signed 64-bit promotion followed by word truncation.

-> correct ASM: The complete transform initialization instruction order matches the target, retaining the 0x138-byte frame and 0xEAC-byte body. The conversion emits no extra instructions and restores the heading conversion registers, improving the native diff score from 3866 to 1032. Culling scheduling and some register differences remain; the function retains its NON_MATCHING fallback.

incorrect ASM: func_80074FF0_15D0B0 had interleaved base rotation and position assignments, followed by all six scale assignments. Several transform initialization loads and stores were out of order despite the correct frame and instruction count.

-> code changed: Group rotation[0..2], position[0..2] and scale[0..2], then group rotation[3..5], position[3..5] and scale[3..5], using the same base/offset grouping as the room renderer.

-> correct ASM: Every instruction is structurally identical across the 0x69C-byte function, including the transform initialization. The frame remains 0x108 bytes, and every ROM byte outside the function matches. The native score falls from 1266 to 40; two cache-register choices and the order of two independent LI 256 instructions remain, so the NON_MATCHING fallback is retained.
