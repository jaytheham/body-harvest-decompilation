# Collision coordinate stores through a shared high address

`incorrect ASM` in `func_80126268_135218`

```asm
sh      s4,-0x630(at)
...
sh      s3,2(a0)
lh      t7,2(a0)
...
sh      s5,4(a0)
lh      t1,4(a0)
```

-> `code changed`

Set named `s16 *` pointers to `D_8015F9D0.unk2` and `.unk4` before the hit checks. Use those pointers for the stores and retain the record accesses for the readbacks. Reuse the two pre-loop delta slots with unions to preserve the `0xC8` frame. Keep the tentative record definition active so the assembler can share one high-address load across the three stores.

```c
savedDy.hitZ = &D_8015F9D0.unk4;
savedDx.hitY = &D_8015F9D0.unk2;

/* In each hit branch. */
*savedDx.hitY = yFixed >> 8;
*arg4 = D_8015F9D0.position[1];
*savedDy.hitZ = zFixed >> 8;
*arg5 = D_8015F9D0.position[2];
```

-> `correct ASM`

```asm
sh      s4,-0x630(at)
...
sh      s3,-0x62e(at)
lh      t7,2(a0)
...
sh      s5,-0x62c(at)
lh      t1,4(a0)
```
