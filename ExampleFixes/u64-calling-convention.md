### u64 parameter passing convention in IDO 5.3 on MIPS

When passing a `u64` argument to a function, IDO 5.3 uses the **$a0 = high 32 bits, $a1 = low 32 bits** convention (most significant word first).

**Example**: Calling `func_8000726C_7E6C(u64)` with value 1:
```c
func_8000726C_7E6C(1);
// Generates: li a0, 0; jal func; li a1, 1
// u64 value = ($a0 << 32) | $a1 = 0x0000000000000001
```

Calling with `0`: 
```c
func_8000726C_7E6C(0);
// Generates: li a0, 0; jal func; li a1, 0
// u64 value = 0
```

**Key insight**: For small values (< 2^32), `func_8000726C_7E6C(N)` generates `$a0=0, $a1=N`, which passes the u64 value N. This is because small values fit in the lower 32 bits, so the upper 32 bits ($a0) are 0.

**For reference in `func_802D7980_1F0690`**:
- `func_8000726C_7E6C(1)` → checks bit 1 (target had `li a0, 0; li a1, 1`)
- `func_8000726C_7E6C(0x21)` → checks bit 0x21 (target had `li a0, 0; li a1, 0x21`)

Previously the function used `func_8000726C_7E6C(0)` for both calls, which was functionally correct (both check bit 0) but produced different assembly (`li a1, 0` instead of `li a1, 1`/`li a1, 0x21`).
