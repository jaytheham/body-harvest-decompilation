### Removing a redundant global buffer alias can fix a shared command register

In `func_80081058_51508`, all instructions matched except the shared `G_LINE3D` opcode: IDO used `t4`, while the target used `t5`. The source introduced `Vtx **buffer = &D_8005BB34` and used `*buffer` for the vertex command and buffer increment.

Removing this alias and accessing `D_8005BB34` directly produced the target register without changing the vertex stores or graphics macros:

```c
vtx = D_8005BB34;
/* Initialize the six vertices through vtx. */
gSPVertex(D_8005BB2C++, OS_PHYSICAL_TO_K0(D_8005BB34), 10, 0);
D_8005BB34 += 6;
```

The final ROM comparison passed. Moving all constant color stores ahead of the other vertex stores made the result worse; the original per-vertex source order already let IDO group those stores correctly. Before adding artificial register pressure for a shared graphics constant, remove redundant aliases of global buffer pointers.
