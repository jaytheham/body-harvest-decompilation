incorrect ASM: func_8007568C_15D74C interleaved base and offset transform initialization, producing the correct number of scale loads but different rotation and position store scheduling.

-> code changed: Initialize rotation[0..2], position[0..2] and scale[0..2] in groups, then initialize rotation[3..5], position[3..5] and scale[3..5] in groups. For the first culling call, capture the camera Z conversion in a word local and pass it through a value-preserving signed 64-bit promotion followed by word truncation.

-> correct ASM: The complete transform initialization instruction order matches the target, retaining the 0x138-byte frame and 0xEAC-byte body. The conversion emits no extra instructions and restores the heading conversion registers, improving the native diff score from 3866 to 1032. Culling scheduling and some register differences remain; the function retains its NON_MATCHING fallback.
