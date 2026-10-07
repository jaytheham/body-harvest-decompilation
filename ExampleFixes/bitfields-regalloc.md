### Bitfields

In `func_800C1288_D0238`, clearing a flag byte and then assigning `8` generated `addiu` and shifted subsequent temporary registers. Using `flags |= 8` after the clear generated the target `ori` and restored the exact register sequence. The full ROM verified the match.

```c=
struct A {
    u8 x;
}
struct A glob;
...
glob.x |= 8;
```

and

```c=
struct A {
    u8 a : 4;
    u8 b : 1;
}
struct A glob;
...
glob.b = 1;
```

generate the same code, except the latter allocates more registers (without using them).

Bitfields are allocated top-down, so in the above set of bitfields `a` would correspond to `x & 0xf0`, and `b` to `x & 0x8`.

Conditions like `if (glob.singleBitField)` are sometimes (but not always) emitted as:

- load 32 bits (regardless of the underlying type of `singleBitField`)
- shift left until the bit is in the sign bit
- branch on the sign bit (i.e. `bgt zero, x`)

`if (value & power of two)` can also emit this kind of pattern.

The underlying type of the bitfield cannot easily be determined from the asm (IDO can emit lw even for u8-based bitfields, or lbu for u32 ones, depending on which bits it needs), however, it can sometimes have an impact on regalloc.


## Narrowing a multiplied call argument

In `func_800DA7CC_E977C`, passing `(u8)(D_80154318[arg0].unkC * 3)` matched the target's reused multiplication temporary and final `andi` in the call delay slot. The equivalent expression with `& 0xFF` introduced a second multiplication-result temporary and shifted subsequent register allocation. Loading a named value first instead allocated the input to v0 rather than a1. Keep the field access inline and express the byte conversion as a u8 cast when the target exhibits this pattern. Full ROM checksum verified OK.
