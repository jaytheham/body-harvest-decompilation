`incorrect ASM`: In `func_80017CA4_188A4`, `animationTick += 1` omits four apparently redundant `move a1,zero` instructions at timer resets. The timer occupies `a0`, the unsigned divisor ten occupies `a1`, and the remainder occupies `v0`.

-> `code changed`: Keep the timer as a private unsigned halfword and use the postfix update `animationTick++`. Test the timer remainders directly rather than introducing a named remainder local.

-> `correct ASM`: Reset paths retain `move a1,zero`; the timer uses `a1`, divisor ten uses `a0`, and the signed remainder uses `v1`. The complete dialogue control-flow instruction sequence matches.

`incorrect ASM`: Reusing the arrow X local for the discarded opening timing calculations makes arrow X use `v0` and arrow Y use `a0`. A word-sized arrow Y also shifts the rectangle's temporary-register cycle, despite identical opcodes.

-> `code changed`: Give the three discarded divisions a separate signed-halfword scratch. Assign each quotient to that scratch and retain its empty condition. Declare both arrow coordinates as signed halfwords and use left shifts for the coordinate scaling. Preserve a word reservation after the unsigned duration/random scratch.

-> `correct ASM`: The opening retains signed divisions by 40, 65, and 100 without quotient reads. Arrow X uses `t4`; arrow Y uses `v0`, with its narrowing absorbed by the rectangle masks. Duration spills at `sp+0xc4`, the portrait at `sp+0x20`, and the primitive-color packet at `sp+0x94`, all within the target `0xd0` frame.

`incorrect ASM`: External animation-state declarations keep a seed address cached or require separate write aliases. Moving the arrow phase without its neighboring data reservation changes data addresses. The shared EU implementation cannot resolve two US-named operands.

-> `code changed`: Define the existing dialogue key word and private mouth/timer/seed BSS together, anchored with `.fixed_bss` at US `0x8006c570` and EU `0x8006c5a0`. Make the arrow phase a function-local initialized word and retain the following data word's definition after this function. Pass the phase directly to `coss` for implicit halfword narrowing. Map `D_8004771A` to EU `0x8004774a` and `D_801FE810` to EU `0x801fe840`, as verified against the EU assembly.

-> `correct ASM`: Mouth state, timer, and seed occupy US `0x8006c574`, `0x8006c576`, and `0x8006c578`, with the regional shift in EU. The seed uses folded LUI/load and separate LUI/store instructions without extra aliases; the phase argument is an `lhu` at word offset two. US and EU ROM checksums pass.

`incorrect ASM`: The arrow texture setup omits a pipe-sync packet after the explicit tile sync, and a byte alpha cast adds a conversion-copy artifact.

-> `code changed`: Add `gDPPipeSync` between `gDPTileSync` and the 4-bit texture-load macro. Convert the double alpha expression to `u32`, letting `gDPSetPrimColor` apply the byte mask.

-> `correct ASM`: The target pipe/tile/pipe synchronization sequence and unsigned floating conversion match, including the final color-packing temporary registers.
