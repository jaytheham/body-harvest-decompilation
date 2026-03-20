### Address-taken array reload: use a non-address-taken temp for the shared index

When an `s16 arr[2]` (passed to a function as a pointer) needs arr[0] to also serve as the index for computing arr[1], writing `arr[0] = x; arr[1] = D_arr[arr[0]].field;` causes IDO to **reload** arr[0] from memory for the second access — because the array is address-taken, IDO won't apply store-forwarding. This produces an extra `sh + lh` store-reload pair.

**Fix**: introduce a non-address-taken `s16 tempc` (declared last in the function), compute the index into it, then assign both:
```c
s16 tempc;
// ...
tempc = D_arr[inst->fieldA].fieldB;
arr[0] = tempc;
arr[1] = D_arr[tempc].fieldC;   // IDO uses tempc register directly, no reload
func_call(..., arr, ...);
```
Since `tempc` is a plain local (not address-taken), IDO keeps it in a register and uses it directly for the second D_arr indexing, avoiding the extra `sh + lh` pair. Declaring `tempc` last avoids disrupting the existing declared-variable stack layout (since IDO keeps it in a register at -O2 and only allocates the stack slot as a potential spill site below existing used slots).
