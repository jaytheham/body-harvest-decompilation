`incorrect ASM`: In `func_800FA018_108FC8`, IDO keeps the vehicle parameter in `s0`, enlarging the frame from `0x58` to `0x60`. Exposing its parameter home removes that saved register, but the first three terrain queries reload the pointer into scratch registers instead of `v1`. The final maxima also lack the second reads of the two inner heights.

-> `code changed`: Declare the type pointer, nine output halfwords, and two float offsets in that order. Retain `if (&arg0 == NULL) {}` before the type lookup to expose the parameter home. In the first three terrain-query argument pairs, use typed accesses `arg0[arg0->unk1A * 0].unk0` and `.unk4`; the fourth pair uses ordinary pointer members. The zero-scaled field read emits no instructions but retains the pointer expression through IDO copy propagation. Declare the two inner heights volatile, pass their ordinary halfword views to the output helper, and use ordinary views for the selected values:

```c
if (h2 >= h0) {
    h0 = *(s16 *)&h2;
}
if (h3 >= h1) {
    h1 = *(s16 *)&h3;
}
```

-> `correct ASM`: The frame is `0x58`; the type pointer is at `sp+0x54`, the nine halfwords occupy `sp+0x52` through `sp+0x42`, and float offsets use `sp+0x3C` and `sp+0x38`. The first three pointer reloads use `v1`; the fourth uses `t4`. The final maxima retain `lh t0,0x48(sp)` and `lh t3,0x46(sp)` before their comparisons and branches. All 253 instructions match, and `tools/make.ps1` verifies the full US ROM checksum.
