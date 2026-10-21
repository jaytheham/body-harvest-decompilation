`incorrect ASM`: In `func_8010D4EC_11C49C`, the initial query X uses `$f2` and the main slope uses `$f12`. The target uses `$f12` for query X and `$f2` for the slope, giving ten register-only instruction differences.

-> `code changed`: Re-read the one-element slope array before computing the intercept:

```c
slopeMain[0] = (z0 - arg1) / (x0 - arg0);
slopeMain[0] = slopeMain[0];
interceptMain = arg1 - (slopeMain[0] * arg0);
```

-> `correct ASM`: IDO removes the redundant source assignment without adding instructions. Query X uses `$f12`, followed by `div.s $f2,$f4,$f6`, `mul.s $f8,$f2,$f20`, and `swc1 $f2,0xE4($sp)`. All ten initial register differences disappear. The full function still has pointer/camera spill offsets to match.
