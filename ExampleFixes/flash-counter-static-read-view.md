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

## Incorrect ASM

The flash state occupied v0/v1 and its brightness occupied a0, rather than target a1/v1. The post-terrain timer reload used v1; forcing a fresh read alone displaced the delta and counter-address caches from t0/t1 to t1/t0 and inserted an extra timer reload before the increment. The final -1 sentinel also used a temporary register.

## Code changed

Expose a void-return, signed-halfword second-argument weak view of the existing terrain helper in functions.us.h. Emit the weak alias only from its defining BF9C0 translation unit. In the first terrain call, reuse the dead state workspace with `(var_a1 = D_8014F89D)` directly inside that second argument. The supplied value is an unsigned byte, so its incoming register bits are unchanged. The helper stores incoming a1 to sp+0xBC at ROM 0xC24AC but never reads that home; it reads the global terrain row instead. Both callback call sites discard v0. Keep the canonical helper declaration and implementation intact, and retain the canonical u8 fourth argument in the view.

Read the timer after this call through a volatile s16 array view, then use that captured `remaining` in `D_8013D9C0_14C970[0] = remaining + 8`. No call or timer write occurs between the sample and this increment. Set the final all-bits sentinel with `var_a1 |= -1`, preserving the state workspace across the reset.

## Correct ASM

The first 128 instructions match exactly, including a1 state and v1 brightness. The first terrain call has the target LUI/LBU argument order. The sampled timer uses `lh v0,0(t1)` and its restart uses `addiu t5,v0,8; sh t5,0(t1)` without a second load; the delta and address caches remain t0/t1. The final sentinel uses `li a1,-1; sh a1,lo(at)`. The enabled comparison score is 550 with the target 0x40 frame and instruction count; this function remains NON_MATCHING because later temporary registers and the final independent LUI order still differ.
