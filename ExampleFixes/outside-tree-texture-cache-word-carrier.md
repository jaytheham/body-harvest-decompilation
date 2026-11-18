incorrect ASM (`func_8007764C_865FC`, texture cache):

```asm
move    a0,s4
beq     a0,v0,vertex_commands
...
lb      a0,0(s1)
```

-> code changed:

Keep a separate signed word type carrier. Observe the current object's type once in the first streaming scan, immediately before the existing `value = i`, and again after billboard culling, before computing the vertex address:

```c
s32 typeWord;
/* First streaming scan, after the chunk-byte normalization: */
typeWord = obj->unk0; if (typeWord) {} value = i;
/* Billboard pass, after culling: */
typeWord = obj->unk0; if (typeWord) {}
```

These checks emit no instructions. The trace gives the carrier total saving 220 across two occurrences, density 110, and color `a0`. The original mixed raw-byte/texture-cache word then receives `a1`. Retain the original model-pass endpoint priority check; omitting it independently changes the saved registers.

The additional word would enlarge the frame from `0x128` to `0x130`. Reuse the expired `end` pointer for the final camera matrix packet, replacing that one macro's private packet local:

```c
end = (Unk80259D90*)D_8005BB2C++; ((Gfx*)end)->words.w0 = 0x01020040; ((Gfx*)end)->words.w1 = K0_TO_PHYS(&D_80031160);
```

Keep these three packet statements on one physical line. `end` is assigned the pool bound afterward.

-> correct ASM (cache register and frame only; the function remains unmatched):

```asm
addiu   sp,sp,-0x128
...
move    a1,s4
beq     a1,v0,vertex_commands
...
lb      a1,0(s1)
```

Normal `tools/make.ps1` and the function diff verify the cache change and the original first 376 instructions. The remaining endpoint rematerialization and associated scheduling differences give score 585; the full ROM checksum still fails.