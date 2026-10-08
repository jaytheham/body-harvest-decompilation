# Nested postdecrement loop temporary allocation

In frontend func_80076FE0_47490, four do/while loops copied the correct framebuffer words but allocated the shared postdecrement-result temporary to the wrong register. Using j = 10; while (j--) for the second loop, while retaining do/while for the other three loops, allocated that temporary to a0 and the counters to a2, a1, a3, and t0 exactly as in the target.

Changing all loops to the same form was unnecessary. Test each nested loop independently when the instruction sequence already matches. Explicit array accesses (dst[0] = src[0], followed by advancing each pointer with &array[1]) preserved the exact copy instructions. A typed function declaration also preserved the full ROM checksum.

Verified with diff score 0 and uild/bh.us.z64: OK.
