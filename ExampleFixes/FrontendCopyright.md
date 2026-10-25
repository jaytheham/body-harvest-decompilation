Incorrect ASM: sharing the US copyright screen unchanged emits an extra `drawText` call for row 7 in PAL.

-> Code changed: map the common messages to their PAL addresses and compile the row-7 call only outside `VERSION_EU`.

-> Correct ASM: PAL draws rows 0 through 6 followed by row 9, retaining the original saved message pointers and `0x48` stack frame. Both complete ROMs match.
