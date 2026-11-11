`incorrect ASM`: In `func_80126B80_135B30`, writing the alien hit coordinates through the global name creates a second base register. IDO then prepares the weak-point helper's last two arguments after computing the table-entry address.

-> `code changed`: Write the alien coordinates through the existing hit-record pointer, which already points at the same object.

-> `correct ASM`: IDO prepares the Y and Z output addresses in `t5` and `t6` before computing the table-entry address. The three halfword argument loads and the outgoing stack stores use the target order, including the Z pointer store in the call delay slot. The coordinate stores still differ in their base register.
