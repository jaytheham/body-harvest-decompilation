`incorrect ASM`: In `func_80096BC4_A5B74`, discarded comparisons with `-1`, the typed `D_801475F0_1565A0` array address, `0x40`, and `0xFF` before graphics setup reserve the desired constant registers but pull the points address into the setup: `lui s6,0x8014` appears where the target has `li s3,0x1F`; the final setup packet is preceded by the points `addiu` and `li s5,-1`, instead of the palette and height loads.

-> `code changed`: Move the discarded comparison after the tile loop and before texture restoration. Keep two distinct XOR operands per constant in one bitwise-OR condition, including the actual pointer-to-row type for the points address:

```c
if (((selectedGroup ^ 1) == -1) |
    ((selectedGroup ^ 2) == -1) |
    ((ShieldWallPoint (*)[48])(selectedGroup ^ 1) == D_801475F0_1565A0) |
    ((ShieldWallPoint (*)[48])(selectedGroup ^ 2) == D_801475F0_1565A0) |
    ((selectedGroup ^ 1) == 0x40) |
    ((selectedGroup ^ 2) == 0x40) |
    ((selectedGroup ^ 1) == 0xFF) |
    ((selectedGroup ^ 2) == 0xFF)) {}
```

-> `correct ASM`: The setup regains `li s3,0x1F` at ROM `0xA5C10`, `li fp,0xFF` at `0xA5D04`, and `li s7,0x40` at `0xA5D08`. The points address returns to the loop preheader. The comparisons emit no instructions. The stock compiler and observation-only UOPT logger produce the identical object SHA256 `997816A54BE7B894002CB4381538C47E913804FC987FC23C8557E13D9F4B0FEF`. This fixes the cited setup region; the whole function remains unmatched.
