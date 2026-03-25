### Named s32 temp vs direct struct access for v0/v1 CSE allocation

When a function loads two struct fields, uses each of them twice (once in a computation, once in a later check/store), and both fields are anonymous CSE candidates, IDO at -O2 assigns:

- **With named `s32 temp_v0 = arg0->fieldA; s32 temp_v1 = arg0->fieldB;`**: IDO allocates temp_v0 → v1, temp_v1 → a1 (shifted one tier higher than expected).
- **With direct access `arg0->fieldA` and `arg0->fieldB` inline**: IDO's CSE assigns fieldA → v0 (first free) and fieldB → v1 (second free), matching the target.

The rule from ExampleFixes/direct-struct-direct-vs-local-for-register-alloc applies here: use **direct struct access** (no explicit local variable) when the target shows the first reused field in v0. The named variable shifts the allocation by one register.

Pattern (func_80108CA8_117C58): two s16 struct fields (unk22, unk16) are each accessed twice. Target has `lh v0, 0x22(a0)` / `lh v1, 0x16(a0)`.

```c
// Wrong (named temps → v1/a1, score 90):
s32 temp_v0 = arg0->unk22;
s32 temp_v1 = arg0->unk16;
arg0->unk6 = arg0->unk6 + temp_v0 + temp_v1;
arg0->unk16 = temp_v1 >> 1;
...
if (temp_v0 >= 0x7D1) { arg0->unk22 = 0x7D0; }

// Correct (direct access → v0/v1, score 0):
arg0->unk6 = arg0->unk6 + arg0->unk22 + arg0->unk16;
arg0->unk16 = arg0->unk16 >> 1;
...
if (arg0->unk22 >= 0x7D1) { arg0->unk22 = 0x7D0; }
```

Also note: `s16` typed temps cause `sll/sra` sign-extension (score ~1170). Use `s32` if you need named temps to avoid that, but prefer direct access for correct v0/v1 allocation.
