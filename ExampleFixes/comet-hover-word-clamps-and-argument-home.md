## Incorrect ASM

In `func_802D8B18_31CC68`, short height intermediates truncated sums before their comparisons. Updating the short pitch field before clamping produced an extra `sh`/`lh` pair. Reusing the ordinary timer expression removed the second timer load and addition in the rising-height branch.

After correcting the arithmetic, a named word sine argument still cached the phase byte in `v0` and used a separate final shift destination:

```asm
lbu     v0,0x26(s0)
sll     t4,v0,2
...
sll     t5,t4,2
jal     sins
andi    a0,t5,0xffff
```

The automatic word cache for the byte actor parameter was stored at `sp+0x3c`, rather than the target's `sp+0x44`.

## Code changed

Keep the base height, comparison limit, and desired height as three signed words before the five-short chain array. Keep terrain height and output coordinates in their original word homes. Clamp a word pitch result before writing the short field. Compute the `height + 5` limit directly in its comparison and store, rather than assigning it to the earlier limit local.

Recompute the desired height only in the rising branch's `else`, reading the timer through a volatile short view so IDO cannot reuse the previous sum:

```c
if (alienInstances[arg0].unk2 < var_v1) {
    if (var_v1 < alienInstances[arg0].unk2 + 5) {
        alienInstances[arg0].unk2 = var_v1;
    } else {
        alienInstances[arg0].unk2 = alienInstances[arg0].unk2 + 5;
        var_v1 = *(volatile s16 *)&alienInstances[arg0].unk2C + val;
    }
}
```

Inline each sine argument with an unsigned-short cast:

```c
sins((u16)(alienInstances[arg0].unk26 * 0x13D4))
sins((u16)(alienInstances[arg0].unk26 * 0xC9E))
```

Capture `arg0` in a named word `actor` at source offset `-60`, use it for the word-parameter calls, and retain `if (&actor) {}` at the end. The address reference makes IDO use that named home instead of an automatic conversion cache. Retain the unused padding word after it: removing that word changes the final frame allocation. Use `alienTypes[typeIndex].unk3A` for the unsigned health cap and unsigned frame-counter remainder for the target `divu`.

## Correct ASM

The rising-height branch reloads the timer and recomputes the sum only on its slow path:

```asm
beqzl   at,slow
lh      t2,0x2c(s0)
sh      v1,2(s0)
b       joined
lh      v0,2(s0)
slow:
sh      a1,2(s0)
lh      v0,2(s0)
addu    v1,t2,a0
joined:
slt     at,v1,v0
```

The phase byte uses the call register and the multiply's final shift stays destructive:

```asm
lbu     a0,0x26(s0)
sll     t4,a0,2
...
sll     t4,t4,2
jal     sins
andi    a0,t4,0xffff
```

The frame is `0x80`, the chain starts at `sp+0x68`, terrain height spills at `sp+0x5c`, and the initial call retains the actor in its named home:

```asm
jal     func_80137468_146418
sw      a0,0x44(sp)
```
