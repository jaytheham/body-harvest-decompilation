# Player renderer: private timer and scale value forwarding

`func_800EF14C_FE0FC` in `src.us/overlay_gameplay/outside/F9230.c` matches the US ROM with IDO 5.3 `-O2 -mips2 -32`.

The scale table and render settings are initialized automatic locals; the effect timer is a function-local `static u16`. Replacing that timer with an exported global changes alias analysis: IDO keeps its address in a register and reloads it after decrementing. A private static timer instead produces the target `lhu v1`, unchanged-value `sh v1`, conditional decrement, `andi v0, v1, 0xffff`, and final `sh v0`. Preserve the explicit self-assignment before the gameplay-mode test.

The uniform scale must first be assigned to Z and copied once through the chained X/Y assignment:

```c
scale[2] = value;
scale[0] = scale[1] = scale[2];
```

IDO then stores Y, X, Z using one temporary. Computing Y first delays its store until after the copies. Reading Z separately for X and Y promotes the scale value into `v0`, shifting register allocation through the remaining function. Three independent constant assignments can also emit three `li` instructions.

Use typed position/rotation vectors but retain the scale as a signed-halfword array. Compute the fixed-point root translation before assigning the three root angles; this allocates the conversion temporary before the angle temporaries and reproduces their instruction order. Two `if (1)` phase scopes prevent extra saved-register global-address caching. The resulting stack frame is exactly 0xB8 bytes.

Validation: `tools/make.ps1` reports `build/bh.us.z64: OK`; the function assembly diff is empty.
