`incorrect ASM`: Enabling `func_80079330_1613F0` and removing its jump-table placeholder leaves the generated table load at 0x800A4B84 instead of 0x800A4B78. The explicit later double and float occupy the generated table's target slot.

-> `code changed`: Remove the table placeholder and the later 180.0/0.4f placeholders. Use the literals directly in `func_8007A168_162228` and `func_8007AE40_162F00`, so IDO emits them after the generated table in function order.

-> `correct ASM`: The selector loads its table from 0x800A4B78, followed by the generated double at 0x800A4B90 and float at 0x800A4B98. The selector and both later functions retain exact assembly, and the full US ROM checksum passes.
