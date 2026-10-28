import importlib.util
import io
import tempfile
import unittest
from pathlib import Path


spec = importlib.util.spec_from_file_location('asm_processor', Path(__file__).parents[1] / 'asm_processor.py')
processor = importlib.util.module_from_spec(spec)
spec.loader.exec_module(processor)


class MultipleAssemblyInputs(unittest.TestCase):
    def test_text_and_late_rodata_share_one_placeholder(self):
        with tempfile.TemporaryDirectory() as folder:
            root = Path(folder)
            text = root / 'function.s'
            data = root / 'constants.s'
            source = root / 'source.c'
            text.write_text('.text\nglabel sample\n' + 'nop\n' * 64)
            data.write_text('.late_rodata\nglabel sample_constant\n.double 628.3185308\n')
            source.write_text('#pragma GLOBAL_ASM("' + text.as_posix() + '", "' + data.as_posix() + '")\n')
            output = io.BytesIO()
            functions, dependencies = processor.run(['-O2', str(source)], outfile=output)
            self.assertEqual(dependencies, [text.as_posix(), data.as_posix()])
            self.assertEqual(len(functions), 1)
            self.assertEqual(functions[0].text_glabels, ['sample'])
            self.assertEqual(len(functions[0].late_rodata_dummy_bytes), 2)
            self.assertIn('sample_constant', '\n'.join(functions[0].late_rodata_asm_conts))

    def test_each_input_uses_the_version_path_mapping(self):
        with tempfile.TemporaryDirectory() as folder:
            root = Path(folder)
            mapped = root / 'mapped'
            mapped.mkdir()
            (mapped / 'function.s').write_text('.text\nglabel sample\n' + 'nop\n' * 64)
            (mapped / 'constants.s').write_text('.late_rodata\nglabel sample_constant\n.double 1.5\n')
            source = root / 'source.c'
            source.write_text('#pragma GLOBAL_ASM("original/function.s", "original/constants.s")\n')
            functions, dependencies = processor.run([
                '-O2', '--asm-root', 'original=' + mapped.as_posix(), str(source)
            ], outfile=io.BytesIO())
            self.assertEqual(len(functions), 1)
            self.assertEqual(dependencies, [
                (mapped / 'function.s').as_posix(), (mapped / 'constants.s').as_posix()
            ])


if __name__ == '__main__':
    unittest.main()
