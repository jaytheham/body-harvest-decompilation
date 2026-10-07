# Renderer global assignment order

Matched `func_800CD7FC_DC7AC` with IDO 5.3 -O2.

An escaped entry pointer made coordinate loads occur separately across global stores. Direct array accesses permitted the compiler to schedule the three coordinate loads together. Read the initial effect index through `D_8015408E[arg0].unk0`, then assign its linked index separately: the intermediate value occupies the target saved register.

The final loop assigns globals in this order: position x, y, z; color pointer; size; alpha; draw call; polygon count; next index. The compiler schedules the color pointer and alpha stores between the floating point coordinate stores. Putting the color pointer after size preserved the instruction sequence but swapped the saved registers for those globals and the temporary registers for their values. Putting it before y and z disrupted load scheduling.

Explicit integer coordinate temporaries produced the same instruction sequence but used v0/v1/a0 instead of t7/t8/t9. The direct array expressions avoided those named temporaries and matched the registers too. A while loop matched the bottom sentinel checks; an if/do loop duplicated an epilogue load.

The same global assignment order matched unc_800C4CB8_D3C68. Removing three named coordinate temporaries also freed v0 for the linked index, matching its initial global load and loop multiplication. Use ntry.payload[10] and [11] for the bytes at entry offsets 0x12 and 0x13 rather than casting the whole entry to a byte pointer. Its existing if/do loop already matched and was retained.
