# Interior event tables contain level triplets

`func_8007A6DC_16279C` indexes three building IDs per level. Flat indexing (`currentLevel * 3 + i - 3`) expands a multiply by three and a separate stride-two operation, consuming an extra temporary register. A union preserving the flat initializer and exposing `s16 byLevel[7][3]` generates one stride-six multiplication from `byLevel[currentLevel - 1][i]`. IDO folds the row subtraction into the target -6 load offset, and the full function matches.

Keep the independent event-bit multiplier unsigned (`u32 three = 3`) to retain the in-loop multu. Full ROM checksum and function score 0 verified.

The same layout matches `func_8007A634_1626F4`. The visit markers use the same row/column indexing and a direct `currentLevel * 3 + i + 0x1D` bit index. Because row addressing now multiplies by six, the bit-index multiplication by three stays independent without hand-expanded shifts or scalar temporaries. This also matched `func_8007A818_1628D8`.
