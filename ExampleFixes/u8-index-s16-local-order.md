### `u8` index + `s16` local: declare index FIRST to put spec_val at lowest stack slot

When a function has two local variables — a `u8` (or small integer) index variable and a `s16` value — and the target places the `s16` at the LOWEST available stack slot (e.g., sp+0x1c), declare the `u8` index variable FIRST and the `s16` value SECOND. IDO always allocates the LAST declared variable at the lowest available address, so the `s16` ends up at sp+0x1c:

```c
u8 specIdx;    // declared first → gets higher slot (e.g. sp+0x1e, phantom)
s16 spec_val;  // declared last  → gets lowest slot (sp+0x1c) ← matches target
specIdx = alienInstances[arg0].specIndex;
spec_val = alienSpecs[specIdx].unk40;
```

If you declare them in the reverse order (`s16 spec_val` first, `u8 specIdx` second), the phantom for `specIdx` takes sp+0x1c and `spec_val` is pushed to sp+0x1e.

The named `u8 specIdx` is necessary to force `lbu $v0` (IDO assigns `v0` to the first named local load), which then allows v0 to be used as a *constant* in the multiply chain (e.g., `sll t9, v0, 2; subu t9, t9, v0; ...`), displacing other temps to the correct registers. Inlining the index access (removing the named variable) breaks the `lbu $v0` and shifts all subsequent multiply registers.

### Java animation callback example

func_802DAFD0_1F3CE0 needs a named u8 typeIndex before forming the alien type pointer. Inlining the field load shifts subsequent register allocation. Adding the local fixed allocation but increased the frame from 0x50 to 0x58; reducing existing unused padding from three words to one restored all stack offsets. D_8014DD5C[arg1].unk0 supplies the signed skeleton child byte. The full ROM build reported OK.
