`incorrect ASM`: Enabling `func_802D9B08_2BBF38` and deleting its placeholder jump table leaves all instructions matching except `lw t5,0x3028(at)`, where the target uses `lw t5,0x300c(at)`.

-> `code changed`: Replace the four subsequent scalar constant arrays with their inline literals (`540000.0`, `0.9`, and two `0.1f` uses), and remove their unused extern declarations. Moving the array definitions below the switch function alone does not change their emitted order.

-> `correct ASM`: The compiler emits the switch table at `0x802E300C`, followed by the four constants at their original addresses. The switch uses `lw t5,0x300c(at)`, its complete function diff is clean, and the full US ROM checksum passes.
