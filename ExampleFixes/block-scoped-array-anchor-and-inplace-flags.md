# Block-scoped arrays plus unused stack anchor for IDO matching

When a function has two arrays used only inside a conditional branch, declaring
them at function scope can place them several words too high. Declaring the
`s16[3]` array before the `s32[3]` array inside the branch lets IDO place the
word array at the lower target offset and the short array above it.

An otherwise unused top-level `s32` declaration can preserve a four-byte local
slot without emitting code. This is useful when removing a named temporary
changes the block-array offsets.

For a flag update, the in-place form:

```c
alien->unk20 |= ALIEN_FLAG_UNKD;
if (alien->unk20 & ALIEN_FLAG_UNKF) {
    ...
}
```

can produce a different and exact register sequence from computing a named
temporary and assigning it back. In particular, it may recover IDO's copied
constant before a short-field decrement (`move` followed by `addiu`).
