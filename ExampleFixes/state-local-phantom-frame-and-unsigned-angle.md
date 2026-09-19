### State local phantom frame and unsigned angle field

When a function's instruction structure matches but the frame is 8 bytes too
large, a named state local may be reserving a phantom home slot. Access the
state array directly at each comparison instead of caching it in a local.

For signed division by four, use C's `/ 4` expression when IDO is expected to
emit the signed shift-correction sequence. Explicit shift branches can change
the scheduler and introduce extra temporaries.

If a `0x8000` halfword must assemble as `ori ..., 0x8000` rather than
`addiu ..., -0x8000`, model that field as `u16` in the struct definition.
