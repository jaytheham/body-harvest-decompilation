import importlib.util
import io
import contextlib
import tempfile
import unittest
from pathlib import Path


spec = importlib.util.spec_from_file_location(
    'asm_processor', Path(__file__).parents[1] / 'asm_processor.py')
processor = importlib.util.module_from_spec(spec)
spec.loader.exec_module(processor)


class AssemblyInputs(unittest.TestCase):
    def process(self, folder, paths, roots=()):
        source = folder / 'test.c'
        source.write_text('#pragma GLOBAL_ASM(' +
                          ', '.join('"' + p.as_posix() + '"' for p in paths) +
                          ')\n', encoding='utf-8')
        args = ['-O2']
        for original, replacement in roots:
            args += ['--asm-root', original.as_posix() + '=' + replacement.as_posix()]
        output = io.BytesIO()
        functions, dependencies = processor.run(args + [str(source)], outfile=output)
        return functions, dependencies, output.getvalue()

    def code(self, path, name='function'):
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text('.text\nglabel ' + name + '\n' + 'nop\n' * 32,
                        encoding='utf-8')

    def test_single_input_is_unchanged(self):
        with tempfile.TemporaryDirectory() as tmp:
            folder = Path(tmp)
            code = folder / 'code.s'
            self.code(code)
            functions, deps, output = self.process(folder, [code])
            self.assertEqual(len(functions), 1)
            self.assertEqual(functions[0].text_glabels, ['function'])
            self.assertEqual(functions[0].late_rodata_dummy_bytes, [])
            self.assertEqual([Path(p) for p in deps], [code])
            self.assertIn(b'void ', output)

    def test_sidecar_reserves_constants_in_same_block(self):
        with tempfile.TemporaryDirectory() as tmp:
            folder = Path(tmp)
            code, rodata = folder / 'code.s', folder / 'rodata.s'
            self.code(code)
            rodata.write_text('.section .late_rodata\nglabel radius\n.double 45.0\n',
                              encoding='utf-8')
            functions, deps, output = self.process(folder, [code, rodata])
            self.assertEqual(len(functions), 1)
            self.assertEqual(functions[0].text_glabels, ['function'])
            self.assertEqual(len(functions[0].late_rodata_dummy_bytes), 2)
            self.assertIn('.double 45.0', functions[0].late_rodata_asm_conts)
            self.assertEqual([Path(p) for p in deps], [code, rodata])
            self.assertIn(b'volatile double', output)

    def test_version_remapping_preserves_shared_sidecar(self):
        with tempfile.TemporaryDirectory() as tmp:
            folder = Path(tmp)
            original, replacement = folder / 'us', folder / 'eu'
            code = original / 'code.s'
            self.code(code, 'us_function')
            self.code(replacement / 'code.s', 'eu_function')
            rodata = folder / 'shared.s'
            rodata.write_text('.late_rodata\nglabel radius\n.double 45.0\n',
                              encoding='utf-8')
            functions, deps, _ = self.process(
                folder, [code, rodata], [(original, replacement)])
            self.assertEqual(functions[0].text_glabels, ['eu_function'])
            self.assertEqual([Path(p) for p in deps], [replacement / 'code.s', rodata])
            self.assertEqual(len(functions[0].late_rodata_dummy_bytes), 2)

    def test_non_path_argument_is_rejected(self):
        with tempfile.TemporaryDirectory() as tmp:
            source = Path(tmp) / 'test.c'
            source.write_text('#pragma GLOBAL_ASM("code.s", 7)\n', encoding='utf-8')
            errors = io.StringIO()
            with contextlib.redirect_stderr(errors):
                with self.assertRaises(SystemExit) as failure:
                    processor.run(['-O2', str(source)], outfile=io.BytesIO())
            self.assertEqual(failure.exception.code, 1)
            self.assertIn('quoted file paths', errors.getvalue())


if __name__ == '__main__':
    unittest.main()
