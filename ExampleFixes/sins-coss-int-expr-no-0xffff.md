### `sins`/`coss` with int expressions: omit `& 0xFFFF` to match target pattern

When calling `sins`/`coss` with an integer expression like `D_80047950 + 0x4000`, write it WITHOUT `& 0xFFFF`:
```c
D_80031404 = sins(D_80047950 + 0x4000) / 32768.0;
```
NOT `sins((D_80047950 + 0x4000) & 0xFFFF)` — the explicit `& 0xFFFF` puts the `andi` in the branch delay slot and uses one fewer instruction (wrong pattern). Without it, IDO 5.3 -O2 generates the 4-instruction pattern: `addiu a0, a0, offset; andi t2, a0, 0xffff; jal sins; move a0, t2`.
