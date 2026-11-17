`incorrect ASM`: In `func_80131858_140808`, separate source lines for the two Y-bound calculations in each rectangle arm schedule the lower-bound mask before the upper-bound move in the stationary arm. In the swaying arm, the lower-bound shift precedes the upper-bound mask.

-> `code changed`: Put the lower- and upper-bound assignments on the same logical source line in each arm. A backslash newline keeps the calculations readable and gives IDO the same logical line.

-> `correct ASM`: The stationary arm moves the masked upper bound into `t0` before masking the lower bound into `a3`. The swaying arm also masks the upper bound before shifting the lower bound. The function still has other allocation and scheduling differences.
