```asm
# func_8007D69C_16575C: final table case falls through without its branch;
# later explicit constants also displace all generated jump tables.
lw      t7,0x4D78(at)
# final case
lui     a0,0x800A
addiu   a0,a0,0x75C
```
->
```c
/* Replace the goto ladder with a level switch. For Siberia and America,
   assign the fallback only in an explicit inner default. For Greece,
   keep both the initial fallback and its explicit inner default. */
searchTable = D_800A0784_188844;
switch (D_800E6A2C) {
    /* cases 0 through 3 */
    case 4: searchTable = D_800A075C_18881C; break;
    default: searchTable = D_800A0784_188844; break;
}
/* Compare the vehicle yaw first to retain the target temporary cycle. */
if ((arg0->unkE & 0xFFFF) != (D_800E6A30 & 0xFFFF)) {
    /* ... */
}
/* Delete the three jump-table placeholders. Inline the next matched
   helper's 180.0 literal, and attach the following unmatched function's
   four double placeholders as .late_rodata on its GLOBAL_ASM pragma. */
```
->
```asm
lw      t7,0x4D50(at)
# final case
lui     a0,0x800A
b       .L8007D96C_165A2C
 addiu  a0,a0,0x75C
```
