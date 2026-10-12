# Camera display-list locals determine the trig stack slot

`func_80097E1C_A6DCC` matched all instructions except four accesses to its
signed trig temporary: the target used `sp+0x46`, while the SDK graphics
macros placed it at `sp+0x64`. Both versions had a `0x68` stack frame.

Declare the perspective normalization halfword, seven separate `Gfx *`
command pointers, then the signed trig halfword. Initialize each command
pointer when its command is emitted and write its `words` fields directly.
This preserves the SDK command encoding while placing the trig halfword at
`sp+0x46` and normalization at `sp+0x66`. An array of command pointers has
the correct stack slots but introduces pointer spills and does not match.
Wrapping the trig temporary in a nested scope does not change its slot.

The two view commands multiply the look-at matrix into the projection
matrix. Advance the matrix buffer after the second view command. The final
two commands load `D_80031160` into modelview; they do not consume another
matrix-buffer entry. The normalization command encodes the address of its
halfword, as shown by the target's `addiu` and word store.

Verified with the normal `tools/make.ps1` build (`build/bh.us.z64: OK`) and
an exact function diff.
