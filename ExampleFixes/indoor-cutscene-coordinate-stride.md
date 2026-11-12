`incorrect ASM`: The indoor cutscene setup in `func_8007DDA0_165E60` calculates the coordinate offset with `sll 2; subu; sll 2` (12 bytes per point).
-> `code changed`: View the cutscene coordinates as an array of three signed halfwords per point and keep the separately indexed word arrays for headings and animation IDs.
-> `correct ASM`: The coordinate lookup uses `sll 2; subu; sll 1` (6 bytes per point), followed by halfword loads at offsets 0, 2, and 4. The enclosing function remains unmatched.


## Startup frame register

**Incorrect ASM**

```asm
lui     t1,0x800a
lw      t1,0x904(t1)
```

**Code changed**

Bind the player-position destination with `initialVehicle = (VehicleInstance *)(u32)&D_800E6A78` immediately before the three coordinate stores. Write the coordinates through that pointer.

**Correct ASM**

```asm
lui     t2,0x800a
lw      t2,0x904(t2)
```

This reproduces the frame load's register and improves the startup block by four instruction words. The route stride and other registers still differ.


## Fade counter load registers

**Incorrect ASM**

```asm
lui     t9,0x800a
lw      t9,0x910(t9)
```

**Code changed**

Bind the startup player-position pointer with `initialVehicle = (VehicleInstance *)(u64)&D_800E6A78`. This compiles identically to binding it through `u32` and then assigning it back through `u64` on a separate line. IDO changes its temporary register allocation, and the assembler eliminates the extra conversion instructions.

**Correct ASM**

```asm
lui     t6,0x800a
lw      t6,0x910(t6)
```

The fade counter load uses the target register. The subsequent increment and other register assignments still differ.
