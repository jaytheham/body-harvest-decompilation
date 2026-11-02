# Separate byte-load argument webs without shifting temporary registers

`func_800A03FC_AF3AC` in `src.us/overlay_gameplay/outside/AAA70.c`.

Incorrect ASM:
```asm
lbu a0,0x1a(s2)
slti at,a0,3
bnel s4,a0,skip
```

Code changed: retain direct `alien->typeIndex` access in the initial range test, but mask the later call-argument accesses and the following equality test with `alien->typeIndex & 0xFF & 0xFF & 0xFF & 0xFF`. Leave the final flag/type exclusion test unmasked. The masks separate IDO's initial expression web from its argument-register web. Four redundant masks also preserve UGEN's scratch-register cycle; one or three masks left later temporary registers displaced even though no mask instruction survived.

Correct ASM:
```asm
lbu v0,0x1a(s2)
slti at,v0,3
bnel s4,v0,skip
```
