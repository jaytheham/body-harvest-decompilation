# Empty switch cases and a literal between generated tables

America `func_802D4E70_2545B0` has nine table entries. Cases 0 and 8 do nothing; cases 1 through 7 perform the mission checks. The earlier C shifted the active labels down by one while its placeholder table retained the correct mapping. Remove that placeholder and correct the labels before relying on a C-generated table. Keep the handler bodies in their target instruction order.

The target places this table at `0x802E0D54`, a double `45.0` at `0x802E0D78`, and the Vision Quest switch table at `0x802E0D80`. An ordinary file-scope constant definition is emitted before generated tables, so keeping the named double placeholder moves the tables.

Use the literal `45.0` in the already-matched vehicle-speed check `func_802D51B8_2548F8`, whose source position is between the two switch functions. IDO emits its double between the generated tables and preserves that function's instructions and floating registers. The later constants remain in the separate America rodata unit.

Validation: the new mission function and the vehicle-speed check both have diff score 0; `tools/make.ps1` reports `build/bh.us.z64: OK`, verifying the table contents and every ROM byte.
