incorrect ASM (`func_802DD668_2BFA98`, cached player pointer):

```asm
sw      t8,0x24(sp)      # target type-pointer home is 0x20
...
lw      t7,0x24(sp)
```

-> code changed:

```c
/* Read the player directly instead of retaining a VehicleInstance * cache. */
if (D_80052B34->unk1A != 0 && alienInstances[arg0].unk12 > 0) {
    /* ... */
}
```

Direct player reads create an additional optimizer value lifetime. Retain
the local padding: removing the pointer declaration's four bytes as well
changes the source local reservation. Three distinct empty vehicle-type
tests are also required here; reducing their count from three to two
changes register allocation.

-> correct ASM:

```asm
sw      t8,0x20(sp)
...
lw      t7,0x20(sp)
```

incorrect ASM (direct player reads, speed writes through a cached type pointer):

```asm
lui     a0,0x8005
...
sh      t8,0x40(t9)
lw      a0,0x2b34(a0)   # extra reload after the type-field write
lh      v0,0(a0)
```

-> code changed:

```c
if (D_80052B34->unk1A == 0 && playerDistance < 0x5DC) {
    alienTypes[typeIndex].unk40 = 0x200;
} else {
    alienTypes[typeIndex].unk40 = 0x480;
}
```

Use the array directly for these two stores. IDO retains the cached
type-address instruction sequence but no longer reloads the global player
pointer after the store. The other type-pointer accesses remain unchanged.

-> correct ASM:

```asm
lw      t9,0x20(sp)
...
sh      t8,0x40(t9)
lh      v0,0(a0)
```

incorrect ASM (externally visible attack timer):

```asm
lui     v0,0x802e
addiu   v0,v0,0x278c
lh      v1,0(v0)
```

-> code changed:

```c
void func_802DD668_2BFA98(u8 arg0) {
    static s16 attackTimer = -1;
    /* ... */
}
```

Move the following initialized data definitions below the function so the
private static still occupies the original data position, immediately
before `D_802E2790_2C4BC0`.

-> correct ASM:

```asm
lui     v0,0x802e
lh      v0,0x278c(v0)
```
