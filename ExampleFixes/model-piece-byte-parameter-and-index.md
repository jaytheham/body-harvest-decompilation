incorrect ASM: In `func_800D702C_E5FDC`, a word piece parameter omitted `sw $a1,0x74($sp)`. A byte parameter with a signed-word index local retained that store but omitted the target `move $a1,$t8`.

code changed: Declare both the piece parameter and its cached index as `u8`, retaining `arg1 = (u8)arg1; temp_t8 = arg1;`. Update the shared function declaration to `void func_800D702C_E5FDC(s16 arg0, u8 arg1);`.

correct ASM: The initial sequence retains `andi $t8,$a1,0xff`, `sw $a1,0x74($sp)`, and `move $a1,$t8`. All 150 target opcode counts are present. This documents the recovered argument sequence; the whole function still has register and scheduling differences.
