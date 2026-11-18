## incorrect ASM

In `func_8009F130_AE0E0`, IDO placed the deferred menu selection ahead of the health display's private statics in the same translation unit.

```mips
lui     t7,0x8015
lw      t7,-0x960(t7)
```

->

## code changed

Keep `static s32 pendingSelection;` inside the menu function and split the source at `0xAE0E0`. Place the new object's BSS so the private static lands at `0x8014F6C8`. The preceding 0x24 bytes belong to a weak scanner palette declaration used to retain IDO's address reuse. The linker resolves palette accesses to the original initialized definition.

->

## correct ASM

```mips
lui     t7,0x8015
lw      t7,-0x938(t7)
```
