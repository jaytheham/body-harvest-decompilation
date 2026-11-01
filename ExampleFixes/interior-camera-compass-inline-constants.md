`func_800811DC_16929C`:

```asm
# Incorrect after inlining the compass constants: base computation sinks into each branch.
beqz a1,smallDirections
sra a0,t6,16
# Later conversion uses f12 and adds a redundant mov.s into f0.
cvt.s.d f12,f4
mov.s f0,f12
```

-> Replace the five external late-data constants with their inline double literals in the owning functions. Retain an empty `if (base) {}` immediately after `base = arg0 / 182.04444444444445;`, and use `base = angle = base + 22.5;` in the second branch, matching the existing chained assignment in the first branch.

->

```asm
# Correct: common base remains before the branch, and both branches define angle in f0.
div.d f10,f6,f8
beqz a1,smallDirections
cvt.s.d f2,f10
# ...
cvt.s.d f0,f4
c.lt.s f0,f6
nop
```

All five doubles retain their original addresses and bytes. This eliminates the temporary supplemental assembly-data files; both full US/EU ROM checks pass.