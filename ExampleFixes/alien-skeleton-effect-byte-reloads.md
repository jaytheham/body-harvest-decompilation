### Alien skeleton effect calls: packed signed-byte reloads

When IDO needs the byte-sized effect arguments again after a call, passing
explicit `(s8)` casts of the existing word temporaries can produce the target
`lb` reloads from packed spill slots. Adding separate byte locals can change
the frame layout and emit unwanted stores.

For this pattern, reuse the existing angle word temporary for the signed
angle input before calculating the sine result:

```c
sp5C = alienInstances[arg0].unk6;
sp60 = (((f32)coss(sp5C) / 32768.0) * 6.0);
sp5C = (((f32)sins(sp5C) / 32768.0) * 6.0);
```

For commutative coordinate sums, operand order can determine temporary
register allocation. Reversing the two terms may be required even though it
does not change the C result.
