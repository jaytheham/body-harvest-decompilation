`incorrect ASM`: In `func_800E6A38_F59E8`, `vtx0 = D_8005BB34++; vtx0->v.ob[0] = baseX;` advances the global cursor before storing the first coordinate:

```asm
lw      vertex,0(cursor)
addiu   next,vertex,0x10
sw      next,0(cursor)
sh      baseX,0(vertex)
```

-> `code changed`: Capture the pointer directly, write the first coordinate through that pointer, then increment the global. Continue initializing through the captured pointer. No pointer alias chain or write through the global is needed.

```c
vtx0 = D_8005BB34; vtx0->v.ob[0] = baseX;
D_8005BB34++;
vtx0->v.ob[1] = baseY;
```

-> `correct ASM`: The first-coordinate store now precedes the global reload and increment, matching the target ordering at ROM 0xF5E8C–0xF5EA4. Register names below are normalized; the complete function remains unmatched.

```asm
lw      vertex,0(cursor)
sh      baseX,0(vertex)
lw      previous,0(cursor)
addiu   next,previous,0x10
sw      next,0(cursor)
```
