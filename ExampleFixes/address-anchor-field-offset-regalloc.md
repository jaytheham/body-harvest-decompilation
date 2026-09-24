### Address-anchored array indexing can change IDO temporary allocation

For a byte buffer access with a dynamic record index and a fixed field offset,
these equivalent forms can produce different temporary registers under IDO 5.3:

```c
value = data[recordIndex + FIELD_OFFSET];
value = (&data[recordIndex])[FIELD_OFFSET];
```

In `func_800705E0_1586A0`, the direct form assigned the loaded global buffer
base to `t3` and the stack-held record index to `t9`. The target used `t9` for
the buffer base and `t3` for the index. Anchoring the fixed field access on
`&data[recordIndex]` produced that target ordering and lowered the function's
diff score from 80 to 60 without changing the instruction structure.

This can help when an assembly mismatch is only temporary-register allocation
around `base + index + constant`. Keep the simpler direct form when it already
matches, and verify the complete function because the change can affect later
temporary allocation too.
