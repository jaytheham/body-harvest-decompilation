# Direct node fields and packed index locals

Java `func_802DDA64_1F6774` matches with a 0x78 frame and pointer spills
at sp+0x48, sp+0x44, and sp+0x3C. The function diff is zero and the full
ROM checksum passes.

Keep the parent instance pointer first, then three s32 world-coordinate
outputs, followed by a signed byte first-node index and two signed short
node indices. The s16 input vector and s32 transformed vector follow them.
The first node roots in the model belonging to arg1, not arg0; the parent
instance comes from arg0's parent ID.

Do not cache the shared pitch expression in a word local. Assign the same
expression to each model part's field. IDO deduplicates the calculation,
keeping a single result in v0 for both stores. Likewise, update the first
part's unsigned angle field directly and read it directly for the rollover
comparison. For the other part, compare the signed promoted subtraction
against zero and repeat that subtraction in the nonnegative assignment.
IDO shares the subtraction without a named delta variable.

These direct expressions eliminate the separate rotation word and angle
short. Placing the actual node indices before the buffers gives a 40-byte
frontend local reservation. The optimizer then reserves its pointer and
field-load spill slots through 68 bytes, producing the required frame and
homes. Keeping the extra scalar caches instead gave a 45-byte frontend
reservation and a 0x80 frame, despite an otherwise matching instruction
sequence. A named actor pointer could replace the rotation word and match
all instructions/registers, but left three pointer spill homes four bytes
low; removing that pointer and moving the real index locals into its place
resolved them without padding or pointer casts.

Model transforms write three s32 outputs. Pass their narrowed values to
the world transform and keep its three s32 position outputs separate;
these are not aliased pairs of shorts. Only the input vector is s16[3].

A matching rollover comparison can be found in
`func_8011CC40_12BBF0`: updating an unsigned short field and comparing its
new value yields an increment, mask, signed comparison, and delayed short
store. Search the four instructions beginning at ROM 0x12BCF8.
