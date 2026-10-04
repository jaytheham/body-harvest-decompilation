# Narrow helper return type controls caller conversions

`func_802E4CB4_328E04` matched after changing `func_802DFF04_324054` from `s32` to `s16` in its definition and declaration. The helper returns a signed byte table field, so its own assembly is unchanged. IDO now trusts the narrow result when using it as an array index, while still emitting the target signed conversion for the later call argument. With an `s32` declaration, a short local adds an early sign extension before indexing; using a word local instead changes scheduling and stack homes.

Check both the helper and previously matched callers: in this case the full ROM checksum remained exact.