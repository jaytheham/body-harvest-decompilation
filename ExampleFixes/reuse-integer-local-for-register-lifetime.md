# Reuse an integer local across separate phases

In `func_80109370_118320`, an integer local first holds vehicle flags and later holds the short angular velocity at offset 0x16. Reusing that local for the later field load assigns it v0 and moves the other integer locals and cached type pointer into the target registers. Leaving the field access inline instead gives the cached short a2 and moves the type pointer to a3.

The independent rotation stores also need their source order preserved: update offset 0xA before offset 0x6. With the reused local, this reproduces both temporary registers and store scheduling. Removing unnecessary floating point locals before this change had already made the floating point arithmetic match.
