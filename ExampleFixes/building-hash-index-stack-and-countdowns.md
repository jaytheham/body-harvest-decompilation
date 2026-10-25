`incorrect ASM`: In `func_8011CDA4_12BD54`, the hash-table clear and building traversal share a word counter, forcing the first loop to load and store that counter on the stack. Deriving the instance pointer from the index inside the traversal also keeps a second pointer across calls and spills a building half-size.

-> `code changed`: Give the clear its own signed word counter and use `count = 6499; do { ... } while (count--);`. Initialize one instance pointer before the building loop, decrement it once at the bottom, and keep `i = 254; ... do { ... } while (i--);`. Put each initialization and its do-loop header on the same physical source line. Pass `(u8)i` to the insertion helper, replacing the draft's uninitialized byte. Use the existing `statusFlags` and `lowFlags` bitfields, including `inst->statusFlags |= 0x1000`.

-> `correct ASM`: The clear uses V1 and descending halfword/byte cursors with stores before pointer decrements. The instance cursor uses S4, the half-sizes fit in FP and S5, and the bitfield update emits the target shift/or/xor sequence without manual word arithmetic.

`incorrect ASM`: Declaring the building index after the pointer and four halfword locals produces a 0x50 frame with the index at sp+0x40. Moving it only after the clear counter puts it at sp+0x44 but enlarges the frame to 0x58. The special-type comparison also emits `bnel v0,t3` instead of `bnel t3,v0`.

-> `code changed`: Declare `s32 i` first in the function, before the pointer and halfwords. Its byte conversions cause IDO to access the low byte of its word home, so the declaration position matters even while the surrounding locals stay in registers. Write the special comparison as `inst->buildingType == D_8015EA28`.

-> `correct ASM`: The frame is 0x48, the index word occupies sp+0x44, insertion calls read its low byte at sp+0x47, and the branch is `bnel t3,v0`. Every instruction in the function matches.
