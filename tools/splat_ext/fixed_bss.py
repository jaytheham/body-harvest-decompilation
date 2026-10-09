"""Place reference C BSS at its original address, including IDO's anonymous statics."""
from src.splat.segtypes.common.bss import CommonSegBss
from src.splat.segtypes.linker_entry import LinkerEntry


class FixedBssEntry(LinkerEntry):
    def __init__(self, entry):
        self.__dict__.update(entry.__dict__)

    def emit_entry(self, linker_writer):
        address = self.segment.vram_start
        # Inside an output section, ld's location counter is section relative.
        linker_writer._writeln(f". = ABSOLUTE(0x{address:X});")
        super().emit_entry(linker_writer)


class N64SegFixed_bss(CommonSegBss):
    def should_scan(self):
        # C supplies the storage. Keep unmapped game BSS symbols absolute.
        return False

    def get_linker_entries(self):
        return [FixedBssEntry(entry) for entry in super().get_linker_entries()]
