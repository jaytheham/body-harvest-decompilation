`func_800FD510_10C4C0`: matching ASM used `lbu a1,0x35(...)` and `lh a0,0x1a(...)` through byte-pointer casts into larger fields
-> add union views exposing `Unk80052B2C.unk35` within `unk34` and `VehicleType.unk1A` within `unk18`, then read those members directly
-> identical `lbu a1,0x35(...)` and `lh a0,0x1a(...)` instructions without pointer arithmetic or extra shifts/conversions.
