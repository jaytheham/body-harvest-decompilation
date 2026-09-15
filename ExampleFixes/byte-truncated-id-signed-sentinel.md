# Byte-truncated ID with signed sentinel

When an allocator result is stored in a byte local, writing the assignment as
`id = (u8)allocator(...)` and testing `id == -1` can produce IDO's
`andi ..., 0xFF` followed by `addiu ..., -1`. The explicit cast matters; an
uncast assignment or a `0xFF` comparison may produce a different immediate or
register allocation.

For an indexed struct array, `&nodes[0] + index` can preserve base-first
`addu` operand order where `&nodes[index]` is commuted to index-first. Use this
only when the target instruction order requires it.
