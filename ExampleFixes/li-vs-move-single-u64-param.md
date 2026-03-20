### li vs move

```asm
li      a0,0
jal     func_800072CC_7ECC
li      a1,0xf
```

if the first value is being loaded with `move a0,zero` instead of `li` the called func may be expecting a single u64 param rather than two params.
