# Vendored Python dependencies for tools/progress.py

This directory contains repo-local copies of Python packages required by `tools/progress.py`:

- `tree_sitter`
- `tree_sitter_languages`

`tools/progress.py` prepends this directory to `sys.path`, so the script can run without installing these packages globally.

Notes:

- These binaries are platform and Python-version specific (currently copied from Windows x64, Python 3.12).
- If you change Python version or platform, refresh this directory from a matching environment.
