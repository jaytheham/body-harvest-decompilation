"""Exercise the importer helpers without requiring the permuter's compiler dependencies."""
import ast
import os
import re
import sys
import tempfile
import unittest
from pathlib import Path
from typing import List, Optional, Tuple

ROOT = Path(__file__).resolve().parents[2]
IMPORTER = ROOT / 'tools/decomp-permuter/import.py'
helpers = ast.parse(IMPORTER.read_text(encoding='utf-8'))
helpers.body = [node for node in helpers.body if isinstance(node, ast.FunctionDef)
                and node.name in ('find_global_asm_func', 'prune_asm')]
exec(compile(helpers, str(IMPORTER), 'exec'))
RE_FUNC_NAME = r'[a-zA-Z0-9_$]+'


class GlobalAsmImport(unittest.TestCase):
    def test_file_lists_and_inline_asm(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            (root / 'function.s').write_text('.text\nglabel target\nnop\n')
            (root / 'data.s').write_text('.late_rodata\n.late_rodata_alignment 8\nglabel constant\n.double 1.7\n')
            for pragma, has_data in [
                ('#pragma GLOBAL_ASM("function.s")', False),
                ('#pragma GLOBAL_ASM("function.s", "data.s")', True),
                ('GLOBAL_ASM("function.s", "data.s")', True),
                ('#pragma GLOBAL_ASM (\n "function.s",\n "data.s"\n)', True),
                ('GLOBAL_ASM(\nglabel target\nnop\n)', False),
            ]:
                with self.subTest(pragma=pragma):
                    source = root / 'source.c'
                    source.write_text(pragma)
                    result = find_global_asm_func(directory, str(source), 'target')
                    name, assembly = prune_asm(result)
                    self.assertEqual(name, 'target')
                    self.assertEqual('.double 1.7' in assembly, has_data)
                    self.assertNotIn('.late_rodata_alignment', assembly)

    def test_reported_java_function(self):
        source = ROOT / 'src.us/overlay_level/java/1ED9E0.c'
        assembly = find_global_asm_func(str(ROOT), str(source), 'func_802D5FE4_1EECF4')
        name, assembly = prune_asm(assembly)
        self.assertEqual(name, 'func_802D5FE4_1EECF4')
        self.assertIn('.double 1.7', assembly)
        self.assertNotIn('.late_rodata_alignment', assembly)


if __name__ == '__main__':
    unittest.main()
