import sys
import tempfile
import unittest
from pathlib import Path
from unittest.mock import patch

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / "splat/src"))

from splat.segtypes.common.c import CommonSegC
from splat.util import options
from splat.util.compiler import IDO


class GlobalAsmExtraction(unittest.TestCase):
    def test_single_and_multiple_file_pragmas(self):
        source = '''
#pragma GLOBAL_ASM("asm.eu/nonmatchings/a-b/single.s")
#pragma GLOBAL_ASM("asm/nonmatchings/function.s", "src.us/late_rodata.s")
#pragma GLOBAL_ASM (
    "asm/nonmatchings/another.s",
    "src.us/another_rodata.s", "src.us/third.s"
)
// #pragma GLOBAL_ASM("ignored.s")
/* #pragma GLOBAL_ASM("also_ignored.s", "ignored_rodata.s") */
'''
        expected = {"single", "function", "late_rodata", "another", "another_rodata", "third"}
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "source.c"
            path.write_text(source, encoding="utf-8")
            with patch.object(options, "opts", create=True) as opts:
                opts.compiler = IDO
                self.assertEqual(CommonSegC.get_global_asm_funcs(path), expected)
                self.assertEqual(CommonSegC.get_global_asm_rodata_syms(path), expected)


if __name__ == "__main__":
    unittest.main()
