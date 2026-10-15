# Direct bound read preserves the interpolation product

`func_80014508_15108` matched its integer instructions but differed in float
registers after replacing external constant aliases with literals. The literal
divisors are needed so IDO emits the constant pool after the generated switch
table, rather than placing explicit constant arrays before it.

This two-step interpolation still let IDO fold the product into the addition:

```c
maxPitch = settings[level - 1][vehicle].maxPitch;
minPitch = settings[level - 1][vehicle].minPitch;
pitch = (maxPitch - minPitch) * ((f32)input / pitchScale);
pitch += minPitch;
```

The target uses `$f14` for both the product and the final sum. The candidate used
a scratch register for the product, shifted subsequent scratch registers, and
assigned the main pitch variable to `$f16`.

Read the lower bound directly in the product, while retaining the cached lower
bound for the addition:

```c
maxPitch = settings[level - 1][vehicle].maxPitch;
minPitch = settings[level - 1][vehicle].minPitch;
pitch = (maxPitch - settings[level - 1][vehicle].minPitch)
    * ((f32)input / pitchScale);
pitch += minPitch;
```

IDO shares the actual load, so this adds no memory instruction. The source form
changes optimization and register allocation enough to retain the product in
`$f14` and match every subsequent float register. Apply it to both interpolation
cases. Reading both bounds directly changes their load order; using one combined
sum expression also fails to preserve the intermediate product.

Keep all table accesses, including earlier sound-ID guards, rooted at the same
`settings[level - 1][vehicle]` expression. This also resolves the previous-row
pointer workaround described in the companion note.

`const f32 pitchScale = 9753.0f` remains a named automatic constant. The first
distance expression remains inline; reusing the pitch temporary for squared
distance was unnecessary once the interpolation was corrected.

Removed the switch-table placeholder and the following constant placeholders,
and converted the neighboring sound function's constant aliases to literals so
the compiler owns the complete pool sequence. Verified a zero function diff and
`build/bh.us.z64: OK`, with the entire ROM byte-identical to the original.
