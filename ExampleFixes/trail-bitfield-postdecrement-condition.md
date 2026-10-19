## Incorrect ASM

In `func_8012B26C_13A21C`, manually reading `unk1E`, shifting out the counter, storing the decremented value, and testing the saved counter emitted a direct `bnez` without the target Boolean temporary.

```asm
srl   v1,v0,2
...
bnez  v1,done
sh    t3,0x1e(a0)
```

## Code changed

Use the existing unsigned fourteen-bit `trailCount` field and test its post-decrement directly:

```c
if (queueEntry->trailCount-- == 0) {
    queueEntry->trailActive = 0;
    queueEntry->trailEnded = 0;
    D_8015F9E8--;
}
```

## Correct ASM

The field update retains the low two flag bits. IDO materializes the old-count test in the same temporary used by the surrounding loop conditions:

```asm
srl   v1,v0,2
addiu t9,v1,-1
sll   t1,t9,2
andi  t2,v0,3
or    t4,t1,t2
sltiu s0,v1,1
beqz  s0,done
sh    t4,0x1e(a0)
```
