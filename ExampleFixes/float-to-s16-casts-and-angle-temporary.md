# Float coordinate narrowing and angle temporary types

Matched `func_80136ECC_145E7C` in `src.us/overlay_gameplay/outside/145D70.c` with a zero diff and `build/bh.us.z64: OK`.

Use the same float delta locals in both sides of a camera-selection branch. Separate locals for each branch produced different floating-point register allocation and spill locations. Sharing the source delta pair and sharing the camera direction pair restored the target's floating-point registers and scheduling. Declaration order placed the source X delta at `sp+0x28` and the direction X delta at `sp+0x44`; unused intervening declarations preserve those slots.

The final signed coordinate difference requires `(s16)` conversions of the float coordinates, even though the destination is itself `s16`:

```c
direction = (s16)camera.unk14 - (s16)camera.unk8;
```

Replacing those conversions with `(s32)` produced the same instructions but different integer temporary registers. IDO eliminated redundant narrowing instructions while retaining the register-allocation effect of the conversions.

Store the angle function's `s16` result in an `s32` local, then narrow the complemented angle explicitly when subtracting:

```c
s32 angle;
angle = func_80003680_4280(x / length);
direction = (s16)(0x4000 - angle) - sourceAngle;
```

Using an `s16` angle local left the final integer registers mismatched. Removing the complement cast instead let IDO reassociate the subtraction into negation/addition and changed the instruction sequence. The `s32` local with the explicit `s16` complement matched both instructions and registers.
