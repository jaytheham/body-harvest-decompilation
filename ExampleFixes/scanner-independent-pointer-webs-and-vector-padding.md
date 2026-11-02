# Separate player/vehicle webs and fill vector-alignment gaps

`func_800A03FC_AF3AC`, `src.us/overlay_gameplay/outside/AAA70.c`.

Incorrect ASM: the vehicle loop used `lui/lw v1` for the global player and `addu v0` for the selected vehicle, while the target used player `v0` / vehicle `v1`. Reusing one pointer local for the alien loop's player and the vehicle loop's array element joined their allocation web. Adding an independent pointer without rearranging declarations increased the frame from `0x180` to `0x188` and shifted all three vector homes by eight.

-> Code changed: use separate `firstPlayer`, `player`, and `vehicle` pointers. Scope the clear-loop count inside its block. Keep the vehicle-loop player address priority with a discarded condition that sums comparisons with `NULL`, `&D_80052A8C`, and `&D_80068084`, then compares `player == vehicle`. UOPT traces show the original combined vehicle web had save `26.666666` over three reference nodes, versus player save `20` over two. The discarded condition lets the independent player web take `v0`; no checks survive. Keep the existing four byte masks on later alien-type call accesses to separate their argument web from the initial type test. Declare `mapX` before the first six-byte vector, put the timer/matrix-color halfwords after the first/second vectors, and use a halfword loop index. CFE reserves the vectors at offsets `-16/-24/-32`; putting `mapX` into the preceding two-byte alignment gap also removes a later pointer-alignment gap, reducing total automatic storage by four bytes.

-> Correct ASM:
```asm
lui v0,0x8005
lw v0,0x2b34(v0)
...
addu v1,t8,t9
beq v0,v1,skip_vehicle
```
The clear loop retains its target `v1` counter and `v0` old-count value. The first alien type test uses `v0`, all later call operands and scratch registers match, the frame is `0x180`, and the three vector addresses are `sp+0x170`, `sp+0x168`, and `sp+0x160`. Full US and EU ROM checksums both pass.
