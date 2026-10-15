import importlib.util
import io
import unittest
from pathlib import Path

spec = importlib.util.spec_from_file_location('asm_processor', Path(__file__).parents[1] / 'asm_processor.py')
processor = importlib.util.module_from_spec(spec)
spec.loader.exec_module(processor)


class VersionBranches(unittest.TestCase):
    def filtered(self, text, version):
        return ''.join(processor.version_source_lines(io.StringIO(text), version))

    def test_versions_and_nested_unknown_conditions(self):
        text = '#ifdef OTHER\n#if defined(VERSION_US)\nus\n#elif defined(VERSION_EU)\neu\n#else\nneither\n#endif\n#endif\n'
        for version, active, inactive in [('us', 'us', 'eu'), ('eu', 'eu', 'us')]:
            result = self.filtered(text, version)
            self.assertIn('\n' + active + '\n', result)
            self.assertNotIn('\n' + inactive + '\n', result)
            self.assertNotIn('\nneither\n', result)
            self.assertEqual(len(result.splitlines()), len(text.splitlines()))
            self.assertIn('#ifdef OTHER', result)

    def test_inactive_parent_stays_inactive(self):
        text = '#ifdef VERSION_EU\n#ifdef OTHER\nhidden\n#else\nalso_hidden\n#endif\n#endif\nvisible\n'
        result = self.filtered(text, 'us')
        self.assertNotIn('hidden', result)
        self.assertIn('visible', result)

    def test_negated_conditions_and_legacy_default(self):
        for condition in ['#ifndef VERSION_EU', '#if !defined(VERSION_EU)', '#if ! defined VERSION_EU']:
            text = condition + '\nus\n#else\neu\n#endif\n'
            self.assertIn('\nus\n', self.filtered(text, 'us'))
            self.assertNotIn('\nus\n', self.filtered(text, 'eu'))
            self.assertEqual(self.filtered(text, None), text)

    def test_missing_inactive_assembly_is_not_opened(self):
        import tempfile
        with tempfile.TemporaryDirectory() as folder:
            source = Path(folder) / 'test.c'
            for version, other in [('us', 'EU'), ('eu', 'US')]:
                source.write_text('#ifdef VERSION_' + other + '\n#pragma GLOBAL_ASM("does-not-exist.s")\n#else\nint value;\n#endif\n')
                output = io.BytesIO()
                functions, deps = processor.run(['-O2', '--version', version, str(source)], outfile=output)
                self.assertEqual(functions, [])
                self.assertEqual(deps, [])
                self.assertIn(b'int value;', output.getvalue())


if __name__ == '__main__':
    unittest.main()
