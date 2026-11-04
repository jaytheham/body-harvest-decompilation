# Function-local flash counter and a separate read view

`func_800C0678_CF628` remains `NON_MATCHING`; these changes fix its counter instruction placement.

## Incorrect ASM

The file-scope byte lets IDO cache its address and hoist a common byte read before the state comparison:

```asm
addiu   a2,a2,-0x2500
lbu     v0,0(a2)
bne     state,limit,other_arm
```

## Code changed

```c
static u8 flashCount = 0;
/* ... */
if ((remaining == 7) && (flashCount > 0U)) {
    flashCount--;
}
/* ... */
if (var_a1 == remaining + 7) {
    if (flashCount != 0) {
        /* Restart the flash. */
    }
} else if (D_8013DB00_14CAB0 != 0) {
    /* Independently test the random restart. */
}
```

Keep the local static in the original initialized-data slot by moving the following DB04/DB08 definitions after the callback. The two version symbol files give its read view a shared symbolic address:

```ld
D_8013DB00_14CAB0 = D_8013DB04_14CAB4 - 0x4;
```

The assembly fallback defines the original global byte in the wrapper's `#else` arm. Its floating literals live in a support assembly file attached to the same `GLOBAL_ASM` block, so enabling C removes the fallback byte and literals together.

## Correct ASM

The decrement uses direct symbol addressing, and each state arm has its own byte read:

```asm
lbu     t9,-0x2500(t9)
lui     at,0x8014
beqz    t9,done
addiu   t2,t9,-1
sb      t2,-0x2500(at)
/* ... */
bne     state,limit,other_arm
lui     other,0x8014
lbu     count,-0x2500(count)
/* ... */
other_arm:
lbu     other,-0x2500(other)
```
