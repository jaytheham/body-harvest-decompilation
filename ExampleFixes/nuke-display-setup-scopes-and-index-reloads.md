# Nuke renderer scope and pointer lifetimes

`incorrect ASM`: With texture setup directly in the culling branch, IDO keeps the effect index in a saved register and narrows it to a halfword at each model draw.

```asm
sll     a0,s1,0x10
sra     t8,a0,0x10
move    a0,t8
jal     func_800D702C_E5FDC
```

-> `code changed`: Return when the cull test fails, keep the effect index as an `s16`, and enclose the five graphics setup macros in six nested `if (1)` scopes. Close those scopes before the five model calls.

-> `correct ASM`: The first draw reloads the index in its delay slot. The later draws reload the same halfword before calling.

```asm
jal     func_800D702C_E5FDC
lh      a0,0x8e(sp)
lh      a0,0x8e(sp)
jal     func_800D702C_E5FDC
li      a1,1
```

`incorrect ASM`: Reading the shadow coordinates and phase through the parent entry keeps that entry in `a0` while IDO calculates the payload address in `v1`. Reading those fields through the payload fixes the registers at this site, with an intermediate `0x88` frame and a swapped index and parent in the cull setup.

```asm
lw      a0,0x2c(sp)
...
addiu   v1,a0,8
...
lbu     v0,0xe(a0)
```

-> `code changed`: Form the typed `NukeEffectState` pointer before preparing the shadow and use it for the coordinates and both age tests. Keep the empty payload tests at the definition, the no-shadow path, and after the flash. Keep two empty parent tests after `sqrtf` and `if (index * 0) {}` after the flash. These checks affect IDO's live ranges without emitting instructions.

-> `correct ASM`: IDO uses a `0x90` frame. It reloads the parent from `sp+0x2c` into `v1`, loads the phase, and advances the pointer in place. The shadow and flash calls spill the payload at `sp+0x28`.

```asm
lw      v1,0x2c(sp)
...
lbu     v0,0xe(v1)
li      a2,0x200
addiu   v1,v1,8
...
sw      v1,0x28(sp)
```

`incorrect ASM`: A separately named unclamped alpha can occupy `v1` in IDO's allocator and put the payload spills in `t0`.

-> `code changed`: Write the signed alpha clamp as `alpha = (0xFF - (alpha * 2) < 0) ? 0 : (0xFF - (alpha * 2));`.

-> `correct ASM`: The payload stays in `v1` through the shadow calls, distance calculation, and flash. Both complete ROM checksums match.
