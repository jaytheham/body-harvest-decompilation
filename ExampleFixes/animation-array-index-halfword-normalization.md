# Animation parameter array normalization

In `func_802E1AE4_325C34`, assigning the skeleton root directly to a
`s16` parameter array and then indexing the child table through that element
produces the target sign normalization and stores the normalized register.
A separate `s16` local omitted the normalization; a word local with casts
normalized the index but stored the original return register.

Once instructions matched, removing the unused root local and using a word
local for the height sum placed the saved byte result at the target stack
offset. IDO reserves space for these declarations even when the values remain
in registers.
