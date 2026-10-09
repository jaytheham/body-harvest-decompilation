# Alien type nested byte masks

Matched `func_80085690_94640` with IDO 5.3 -O2 -mips2 -32.

Indexing `alienTypes[alien->typeIndex]` generated the correct instructions but used temporaries two registers earlier than the target after the cooldown check. Using `alienTypes[alien->typeIndex & 0xFF & 0xFF]` preserved two eliminated mask temporaries in IDO register numbering. Both masks optimize away because typeIndex is u8. The complete ROM verified `build/bh.us.z64: OK`.
