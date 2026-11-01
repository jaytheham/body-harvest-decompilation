`guess_loadSavedGame` — incorrect ASM -> code changed -> correct ASM

```asm
bnel    s0,t1,loop
```
-> Keep array indexing for alias information, but compare addresses:
```c
} while (&D_80052A98[j] < &D_80052A98[6]);
```
->
```asm
sltu    at,s0,t1
bnezl   at,loop
```

```asm
sll     t7,t6,8
addu    t8,t3,t7
sh      t8,0(v1)
```
-> Narrow the shifted byte before the compound halfword store:
```c
D_80048026 += (u16)(D_800431C0[src + 2] << 8);
```
-> The redundant ANDI disappears after temporary allocation, advancing the temporary sequence:
```asm
sll     t8,t6,8
addu    t9,t3,t8
sh      t9,0(v1)
```

```asm
lui     v0,%hi(D_8004815E)
addiu   v0,v0,%lo(D_8004815E)
sh      t5,0(v0)
lh      t3,0(v0)
```
-> Access the contiguous inventory through its existing array for both writes and debug reads:
```c
D_80048140[14] = D_800431C0[src++];
D_80048140[16] = D_800431C0[src++];
D_80048140[17] = D_800431C0[src++];
D_80048140[15] = D_800431C0[src];
osSyncPrintf(format, D_80048140[14], D_80048140[16],
             D_80048140[17], D_80048140[15]);
```
-> The array base spans the earlier ammo loop and calls, so IDO rematerializes addresses:
```asm
lui     at,%hi(D_80048140 + 30)
sh      t5,%lo(D_80048140 + 30)(at)
lh      t3,%lo(D_80048140 + 30)(t3)
```

```asm
lui     s0,0x8005
lui     s2,0x8005
move    s3,zero
addiu   s2,s2,-0x7ec0
addiu   s0,s0,-0x7ec8
```
-> Keep the counter initialization, two address-only preheader blocks, and late array-index initializations on the same physical source line. The blocks lower the printed counter's allocation priority; initializing the array indices after them retains constant induction bases.
->
```asm
lui     s0,0x8005
lui     s2,0x8005
addiu   s2,s2,-0x7ec0
addiu   s0,s0,-0x7ec8
move    s3,zero
```
