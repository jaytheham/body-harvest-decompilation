Direction in `v0`, buttons in `a0`, and early sound-volume setup (140-point diff in `func_80103E54_112E04`) -> place ten separate empty vehicle/latch-address comparisons inside the first rumble-latch branch before saving direction, and one after the save -> direction uses `a0`, buttons use `v0`, and `li a0,0x28` follows the direction store. Nine comparisons before the save, or omitting the comparison after it, breaks the match. These comparisons emit no instructions. Full US ROM checksum: OK.

Controller pointer saved at entry, with missing saves and reloads around calls -> copy the controller argument into a trailing pointer local after computing the vehicle-type pointer; reload button state separately in both acceleration branches -> `move a3,a1`, controller saves at `sp+0x3c`, and the button load in the acceleration branch's delay slot match.

Reversed double-add operands and a shifted floating-register sequence -> use compound assignments for the cosine/sine contributions to `unk30` and `unk38` -> target add operands and the subsequent floating-register sequence match.

Cached scalar-global addresses and eliminated direction stores -> use named scalar pointers for direction, direction timer, and acceleration; retain direct acceleration access for the final division and a direct direction store between the two pointer-based stores -> target folded global loads/stores and all three direction stores match.

Reversed stick-product operands and absolute-value registers -> capture the signed stick in a word local, calculate its absolute value, and multiply `absStick * stickX` -> `negu v1,v0`, absolute value in `a0`, and `multu a0,v0` match.
