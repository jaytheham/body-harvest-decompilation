# Alien hit coordinate stores through a shared high address

```asm
# Selected stores at 0x13667C, 0x13668C, and 0x13669C in func_80126B80_135B30
sh      t6,0(s4)
sh      t7,2(s4)
sh      t8,-0x62c(at)
```

-> Give `D_8015F9D0` a tentative definition in the translation unit and
write its three coordinate fields directly. Keep the empty `if (1) {}`
after the X assignment. The tentative definition allows the three stores
to share a single high-address load.

->

```asm
sh      t6,-0x630(at)
sh      t7,-0x62e(at)
sh      t8,-0x62c(at)
```
