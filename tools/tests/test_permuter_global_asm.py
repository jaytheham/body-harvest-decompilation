"""Exercise the importer helpers without requiring the permuter's compiler dependencies."""
import ast
from base64 import b64encode
from collections import defaultdict
import shutil
import subprocess
import os
import re
import sys
import tempfile
import unittest
from pathlib import Path
from typing import Callable, Dict, List, Match, Optional, Pattern, Set, Tuple

ROOT = Path(__file__).resolve().parents[2]
IMPORTER = ROOT / 'tools/decomp-permuter/import.py'
helpers = ast.parse(IMPORTER.read_text(encoding='utf-8'))
helpers.body = [node for node in helpers.body if isinstance(node, ast.FunctionDef)
                and node.name in ('find_global_asm_func', 'prune_asm', 'preprocess_c_with_macros')]
PreserveMacros = Tuple[Pattern[str], Callable[[str], str]]
CPP = ['cpp', '-P', '-undef']
STUB_FN_MACROS = []
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

    @unittest.skipUnless(shutil.which('cpp'), 'requires GNU cpp')
    def test_preserved_token_paste_operand_is_not_expanded(self):
        with tempfile.TemporaryDirectory() as directory:
            source = Path(directory) / 'source.c'
            source.write_text(
                '#define _SHIFT _SHIFTL\n'
                '#define G_IM_SIZ_8b_SHIFT 1\n'
                '#define load(siz) \\\n'
                ' (siz ## _SHIFT)\n'
                'int target(void) { return load(G_IM_SIZ_8b); }\n')
            result, macros = preprocess_c_with_macros(
                CPP + [str(source)], directory, (re.compile('^load$'), lambda name: 'int'))
            self.assertIn('load', macros)
            self.assertIn('## _SHIFT', result)
            self.assertNotIn('## _SHIFTL', result)
            self.assertNotIn('_permuter_paste_', result)

    @unittest.skipUnless(shutil.which('cpp'), 'requires GNU cpp')
    def test_light_color_paste_preserves_arguments_and_constants(self):
        import toml
        settings = toml.loads((ROOT / 'permuter_settings.toml').read_text())
        pattern = re.compile('^(?:' + '|'.join(settings['preserve_macros']) + ')$')
        with tempfile.TemporaryDirectory() as directory:
            source = Path(directory) / 'source.c'
            source.write_text(
                '#define LIGHT_1 1\n'
                '#define G_MWO_aLIGHT_1 0\n'
                '#define G_MWO_bLIGHT_1 4\n'
                '#define gSPLightColor(n) (G_MWO_a##n + G_MWO_b##n)\n'
                'int target(void) { return gSPLightColor(LIGHT_1); }\n')
            result, macros = preprocess_c_with_macros(
                CPP + [str(source)], directory, (pattern, lambda name: 'int'))
            self.assertIn('gSPLightColor(LIGHT_1)', result)
            self.assertIn('#pragma _permuter define G_MWO_aLIGHT_1 ', result)
            self.assertIn('#pragma _permuter define G_MWO_bLIGHT_1 ', result)
            self.assertIn('#pragma _permuter define LIGHT_1 ', result)



if __name__ == '__main__':
    unittest.main()
