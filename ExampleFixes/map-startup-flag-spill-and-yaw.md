`incorrect ASM`

In `func_8009811C_A70CC`, caching the initial stage dimensions in a word local gave the map flags `v0`. This placed the camera yaw literal before the flag save and moved the next camera address after it.

```asm
li      a1,-0x4000
...
sw      v0,0x2e8(sp)
...
addu    v0,t6,t9
```

-> `code changed`

Read the typed stage dimensions directly in the positive-extent tests and in both `MIN` expressions. Read the stage X origin directly in the X displacement and target expressions.

-> `correct ASM`

The map flags stay in `a1` until the first camera iteration saves them. The next camera address uses `v0`, and the yaw literal reuses `a1` after the store.

```asm
addu    v0,t6,t9
...
sw      a1,0x2e8(sp)
...
li      a1,-0x4000
```
