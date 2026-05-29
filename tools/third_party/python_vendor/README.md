# Vendored Python dependencies for tools/progress.py

This directory contains repo-local copies of Python packages required by `tools/progress.py`:

- `tree_sitter`
- `tree_sitter_languages`

`tools/progress.py` prepends this directory to `sys.path`, so the script can run without installing these packages globally.

Notes:

- Vendored binaries currently cover:
	- Windows x64, CPython 3.12 (`*.cp312-win_amd64.pyd` + `languages.dll`)
	- Linux x64, CPython 3.10 (`*.cpython-310-x86_64-linux-gnu.so` + `languages.so`)
	- Linux x64, CPython 3.12 (`*.cpython-312-x86_64-linux-gnu.so` + `languages.so`)
- If you need additional platforms or Python ABIs, add matching compiled modules to this directory.
