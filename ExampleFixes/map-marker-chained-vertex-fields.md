Incorrect ASM: with explicit store/load scalar temporaries, the static translation used `lh t7; lh t6; negu t9` instead of `lh t9; lh t7; negu t6`, and the matrix cursor address used `a3` instead of `t0`.

Code changed: assign the static vector X coordinate before its negative Y coordinate and zero Z coordinate. Replace all three explicit vertex store/load groups with right-to-left assignment chains: `vtx0->ob[2] = vtx1->ob[2] = vtx2->ob[2] = vtx3->ob[2] = 0`, `vtx0->tc[0] = vtx2->tc[0] = vtx2->tc[1] = vtx3->tc[1] = 0`, and `vtx0->tc[1] = vtx3->tc[0] = vtx1->tc[0] = vtx1->tc[1] = 0x800`. Remove the unused scalar temporary. The three chains must be changed together; partial changes alter register allocation elsewhere.

Correct ASM: the static block uses `lh t9; lh t7; negu t6`, and the matrix cursor uses `lui t0; addiu t0,t0,...; lw ...,0(t0); ...; sw ...,0(t0)`. `func_800966EC_A569C` matches completely (310 instructions); US and EU ROM comparisons both pass.
