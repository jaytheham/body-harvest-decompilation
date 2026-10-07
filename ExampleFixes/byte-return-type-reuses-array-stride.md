# Byte return type preserves cached array strides

`func_800E0D28_EFCD8` searches an effect array using a `u8` loop index, then
allocates an effect and indexes the same array with the returned ID. The
target reuses a cached 12-byte stride for both accesses.

With an `s32` result and an `s32` allocator declaration, direct array access
after allocation produces shifts and subtraction instead of `multu`. It
also changes which registers hold the effect array base, stride, and one.

The allocator `func_800CA5EC_D959C` returns a `u8` effect ID or the byte
sentinel 0xFB. Correct its declaration and definition to return `u8`, and
declare the checker result `u8` too. IDO then uses the cached stride without
adding a byte mask, and all registers match. This permits typed array access
in place of the old explicit byte-pointer multiplication.

Verified the whole ROM checksum OK, including existing compiled callers,
and a zero function diff.
