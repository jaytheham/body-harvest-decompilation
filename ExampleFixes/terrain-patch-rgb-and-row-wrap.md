`incorrect ASM`: In `func_800B5090_C4040`, the shading branches reload the row coordinate from the stack and use it as a color pointer. Advancing the copied row index at the outer loop latch also makes IDO copy and spill the row index twice before the inner loop.

-> `code changed`: Assign the center tile's `color` array to the RGB pointer before the shade test. Advance the original byte cursor with `cursor = (cursor + 1) % 0x13` and keep the promoted row index for neighboring tile lookups.

-> `correct ASM`: The RGB base is the center tile plus two bytes, and the shade branch reads all three center-tile color channels through that pointer. The outer loop keeps one cached row value for the neighbor lookups and row advance. The compiled function has the same 917 instruction slots and branch destinations as the ROM. Register assignments and stack offsets still differed at this stage.

`incorrect ASM`: The initial ring-column assignment casts the signed ring byte to `u64` before storing it as a byte. IDO emits `lbu t9,0x964(v0)` for the following map-X load and `sll t8,v0,4` for the first row-address calculation.

-> `code changed`: Assign the ring byte directly with `col = (D_8014F899 = D_80151DD8.ringX);`. The destination types still convert it to the stored byte.

-> `correct ASM`: The same instructions use the original `lbu t5,0x964(v0)` and `sll t9,v0,4` register assignments. This restores 20 words across the entry and row setup while preserving the instruction sequence and branch destinations.

`incorrect ASM`: With the ordinary cached row pointer, the east branch reads the row into `a0` and computes the first vertex address with `addu a2,a0,v0`. The north-neighbor and shade calculations also get different registers or schedules.

-> `code changed`: Obtain the center tile's RGB array address immediately after selecting that tile. Keep the east index signed and keep a discarded use of the cached row after the terrain lookup, with `if ((u32)ringRow[0] * 0) {}`.

-> `correct ASM`: IDO emits `lw t6,0x90(sp)`, `addu a2,t6,v0` and `addu t1,t6,t8`, which reuse the original row register across the branch and compute both original column offsets. The discarded row use changes the allocation without producing instructions.

`incorrect ASM`: The promoted row index is stored at `0x78(sp)` and the Y-parity value at `0x74(sp)`. The original slots are `0x80(sp)` and `0x70(sp)`.

-> `code changed`: Use the original word argument as the scratch variable, assign the row index before the shade pointer, and compute Y parity after selecting the center tile. The per-row parity expression remains loop invariant.

-> `correct ASM`: The row index and its reloads use `0x80(sp)`. The shade pointer uses `0x7C(sp)`, and the Y-parity store and reloads use `0x70(sp)`. IDO still schedules the parity computation before the inner loop.

`incorrect ASM`: IDO puts scroll Y in `a2` and the initial row in `a1`. The incoming argument save follows the ring-column address setup.

-> `code changed`: Read scroll X before scroll Y. Retain the zero product in `col = (u8)(D_8014F899 = D_80151DD8.ringX + scrollY * 0)`.

-> `correct ASM`: IDO emits the argument save at ROM `0xC405C`, loads scroll Y into `a1` and loads the initial row into `a2`. The zero product emits no arithmetic.

`incorrect ASM`: The positive Y threshold and raw Y coordinate use `0x68(sp)` and `0x64(sp)`, respectively.

-> `code changed`: Expose the positive X threshold in the existing hue X temporary, then compute the base Y coordinate, then expose the positive Y threshold in the existing X position temporary. Both threshold assignments are replaced before their destinations are read.

-> `correct ASM`: The X threshold, raw Y coordinate and Y threshold occupy `0x6C(sp)`, `0x68(sp)` and `0x64(sp)`, respectively. The register assignments and branch targets remain the same.

`incorrect ASM`: Computing X parity directly from `mapX` leaves the sign-extended Y coordinate at `0x54(sp)`. Narrowing the parity result into a byte can move Y to `0x50(sp)` but adds an `andi` in the parity block.

-> `code changed`: Copy `mapX` into a byte local at the end of each shading branch. Compute all three X parity tests from the promoted copy with `parityMapX % 2`.

-> `correct ASM`: IDO retains the original signed-remainder instructions and puts the signed Y store and both reloads at `0x50(sp)` in the original `0xD8` frame. The remaining instructions keep their original registers, addresses and branch destinations.
