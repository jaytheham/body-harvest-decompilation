### Incorrect ASM

In `func_8008B594_173654`, a file-scope animation byte requires a retained
counter address and a second `lbu` after the display-list writes. Caching it
in a C local instead puts the frame in `v1` and shares the increment/reset
store address in `a1`. A separate active-flag reset also emits independent
`lui; lbu %lo` and `lui; sb %lo` accesses.

### Code changed

Move the zero-initialized animation byte into the rendering function as
`static u8 D_800A26A4_18A764 = 0`, and access it directly for texture indexing,
increment, and reset. Move the following eight-byte data pad after the
function to preserve initializer order, and remove the counter's external
declaration. Consume the active flag in the condition:

```c
if (D_800A26A0_18A760 && (D_800A26A0_18A760 = 0, 1)) {
    /* Render the requested flare. */
}
```

Replace the explicit `const f64` placeholder with the inline `1.2` literal.

### Correct ASM

The flag uses `lui v0; addiu v0; lbu t6,0(v0)` and, after the branch,
`sb zero,0(v0)`. The frame is loaded once into `t5` before the first
display-list command and remains cached through the texture load. Its update
uses `addiu t5,t5,1; andi t6,t5,0xff`, with independent folded stores for
increment and reset. The literal restores `cvt.s.w f6,f4; ldc1 f10; cvt.d.s
f8,f6; mul.d f16,f8,f10`. The stack frame remains `0xa8`, the function diff
has no differences, and the full US ROM build reports `build/bh.us.z64: OK`.
