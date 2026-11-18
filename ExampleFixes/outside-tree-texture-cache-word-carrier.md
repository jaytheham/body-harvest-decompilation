incorrect ASM (`func_8007764C_865FC`, texture-cache carrier and frame):

```asm
addiu   sp,sp,-0x130
...
move    a0,s4
beq     a0,v0,vertex_commands
```

-> code changed:

Keep a separate signed word type carrier. Observe the current object's type in the first streaming scan, immediately before the existing `value = i`, and after billboard culling:

```c
s32 typeWord;
/* First streaming scan, after chunk-byte normalization: */
typeWord = obj->unk0; if (typeWord) {} value = i;
/* Billboard pass, after culling: */
typeWord = obj->unk0; if (typeWord) {}
```

The checks emit no instructions. Compiler diagnostics give this memory-defined carrier total saving 220 across two occurrences, density 110, and color `a0`. The original mixed raw-byte/texture-cache word receives `a1`.

Use a typed `Gfx* phasePacket` in the first local slot for the first camera matrix command, replacing the macro's private packet local. Keep the command's three statements on one physical line:

```c
phasePacket = D_8005BB2C++; phasePacket->words.w0 = 0x01020040; phasePacket->words.w1 = K0_TO_PHYS(&D_80031160);
```

Retain this pointer through the model pass and the state-command bridge as shown in `outside-tree-render-address-priority.md`. The final camera matrix command uses the normal `gSPMatrix` macro. There is no separate endpoint local.

-> correct ASM:

```asm
addiu   sp,sp,-0x128
...
move    a1,s4
beq     a1,v0,vertex_commands
...
lb      a1,0(s1)
```

The complete function has diff score 0, and normal `tools/make.ps1` reports `build/bh.us.z64: OK`.
