# Mission predicate return type and generated table placement

`func_800081D4_8DD4` in `src.us/core/53F0.c` matches with a native `int`
return type in both its definition and `include/functions.us.h`.

## Short-circuit building flags

Use the existing `BuildingInstance.statusFlags` field directly:

```c
case 0xB5:
    return (buildingInstances[arg0[1]].statusFlags & 0x10) == 0x10;
case 0xB1:
    return (buildingInstances[arg0[1]].statusFlags & 0x10) != 0x10 ||
           (buildingInstances[arg0[1]].statusFlags & 1) != 1;
```

The explicit comparisons against the flag values produce the target XOR and
unsigned boolean instructions. The equivalent `== 0` comparisons do not.
A named copy of the packed word changes the load and shift registers.

The project's `s32` is `long`, whereas comparison and logical-OR results are
native `int`. Returning through `s32` creates an extra result copy and a different
shared branch. Changing only a local result variable is insufficient. Changing
the function return type removes the copy, reproduces every instruction and
register, and leaves only the jump-table address difference. This is another
instance of `boolean-short-circuit-native-int-return.md`.

The matched distance helper `func_80007D44_8944` receives a byte operand pointer,
not an integer. Updating its declaration and definition to `u8 *` removes the
callers' integer casts. `&arg0[3]` supplies its second operand without raw pointer
arithmetic. Both helper and predicate assembly remain exact.

## Following constants

Delete `jtbl_80037388_37F88` when enabling the switch. IDO emits ordinary named
constants before generated switch tables, so leaving the two projection floats
in C moves the generated table from 0x80037388 to 0x80037390.

`53F0_projection_late_rodata.s` uses the asm processor's `.late_rodata` section
for these two floats, followed by an unchanged copy of the skipped
`func_80008CA8_98A8` reference assembly. Its pragma replaces that renderer's
ordinary reference pragma; the reference files under `asm/` remain untouched.
This emits the float constants after the generated table without changing the
skipped function's instructions. The data-symbol declarations remain in
`include/variables.us.h`.

When eventually enabling the skipped renderer, remove this support pragma and
let its C literals emit the constants at that position.

Validation: full ROM `build/bh.us.z64: OK` and function diff score 0, covering
both generated table contents and the instruction stream.
