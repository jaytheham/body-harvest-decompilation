# Comet promoted angle negation

## Incorrect ASM

In `func_802DB9FC_31FB4C`, writing `0x4000 - (heading() - base)` makes IDO reassociate the subtraction:

```asm
subu t2,v1,v0
addiu t1,t2,0x4000
```

Casting the result to `s16` also introduces narrowing shifts absent from the target.

## Code changed

Keep the comparison and result as promoted integers and express the negative candidate as:

```c
-(func_80003824_4424((f32)dx, (f32)dz) - sp5E - 0x4000)
```

Likewise express the initial base angle as:

```c
sp5E = -((u16)unkPtr->unk6 - inst->unk6 + 0x4000);
```

## Correct ASM

The comparison candidate now preserves the target subtraction order:

```asm
li t3,0x4000
subu t2,v0,v1
subu t5,t3,t2
```

The initial base angle similarly uses a loaded `-0x4000` followed by two subtractions. No narrowing shifts are emitted for the full-width comparison or result.
