`incorrect ASM`: In `func_80080668_50B18`, discarded comparisons of the named position and timing locals after the angle interpolation split the optimizer's basic blocks. The first angle was stored, then unnecessarily reloaded before conversion back to game units:

```asm
swc1   $f4,0x5c(sp)
# interpolate the other two components
lwc1   $f10,0x5c(sp)
mul.s  $f6,$f10,$f24
```

-> `code changed`: Move the discarded comparisons of the named position and timing locals after the first angle has been converted and assigned to `channel->unk0`. The first interpolated angle is then consumed before those comparisons split the optimizer block. The remaining angle conversions retain their original order.

-> `correct ASM`: The stored first result stays cached through the other two interpolations, so its back-conversion uses that register directly:

```asm
swc1   $f4,0x5c(sp)
# interpolate the other two components; no reload from sp+0x5c
mul.s  $f6,$f4,$f24
```

This restores the target's 201-instruction structure; register allocation still requires separate matching.
