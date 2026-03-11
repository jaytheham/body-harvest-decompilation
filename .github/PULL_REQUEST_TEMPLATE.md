## Summary

<!-- Brief description of what was reclaimed or changed -->

## Functions reclaimed

<!-- List each function with instruction count and any notable patterns -->

| Function | Zone | Instrs |
|---|---|---|
| `func_...` | `zone/FILE` | N |

## Checklist

- [ ] `make build/<zone>/<file>.c.o NON_MATCHING=1` passes cleanly
- [ ] Byte-identical to ROM (asm-differ or objdump comparison)
- [ ] Changes limited to intended zone file(s) and necessary header additions
- [ ] New externs added to `include/variables.us.h` / `include/structs.us.h` as needed
- [ ] No unrelated changes (tools, unrelated zones, formatting)
