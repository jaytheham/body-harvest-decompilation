import os

def apply(config, args):
    basename = 'bh'
    if os.path.exists(f'build.na/{basename}.na.z64'):
        version = 'na'
    elif os.path.exists(f'build.na/{basename}.eu.z64'):
        version = 'eu'
    else:
        version = 'na'

    if os.name == 'nt':
        objdump = os.path.join(os.path.dirname(os.path.abspath(__file__)),
                               'tools', 'windows', 'binutils',
                               'mips-ps2-decompals-objdump.exe')
        if os.path.isfile(objdump):
            config['objdump_executable'] = objdump

    # EU builds into build.eu/, US into build.na/ (native_build.py per-version
    # layout). Without this the EU map lookup silently fails.
    build_dir = 'build.eu' if version == 'eu' else 'build'
    if not os.path.exists(f'{build_dir}/{basename}.{version}.map'):
        build_dir = 'build'

    config['baseimg'] = f'baserom.{version}.z64'
    config['myimg'] = f'{build_dir}/{basename}.{version}.z64'
    config['mapfile'] = f'{build_dir}/{basename}.{version}.map'
    config['source_directories'] = ['src', f'src.{version}', 'include']
    config["makeflags"] = [f"VERSION={version}"]
