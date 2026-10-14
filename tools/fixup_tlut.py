"""
Horrible hack to create a filename.ci4.png file based on filename/TLUT.ci4.png
"""
import glob
import shutil
import sys

from pathlib import Path

assets = sys.argv[1] if len(sys.argv) > 1 else "assets"
paths = [Path(x) for x in glob.glob(f"./{assets}/**/*/*TLUT*.ci4.png")]

for path in paths:
    new_path = path.parent.with_suffix(".ci4.png")
    if not new_path.is_file():
        # print(f"Copying {path} to {new_path}...")
        shutil.copy(path, new_path)
