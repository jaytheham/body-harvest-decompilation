import os


def add_custom_arguments(parser):
    parser.add_argument(
        "--version",
        dest="bh_version",
        choices=("us", "eu"),
        default=None,
        help="ROM version to diff (default: $BH_VERSION, else whichever is built, US first)",
    )


def apply(config, args):
    basename = 'bh'
    version = getattr(args, 'bh_version', None) or os.environ.get('BH_VERSION')
    if version not in ('us', 'eu'):
        if os.path.exists(f'build/{basename}.us.z64'):
            version = 'us'
        elif os.path.exists(f'build.eu/{basename}.eu.z64'):
            version = 'eu'
        else:
            version = 'us'

    if os.name == 'nt':
        objdump = os.path.join(os.path.dirname(os.path.abspath(__file__)),
                               'tools', 'windows', 'binutils',
                               'mips-ps2-decompals-objdump.exe')
        if os.path.isfile(objdump):
            config['objdump_executable'] = objdump

    # EU builds into build.eu/, US into build/ (the per-version layout of the
    # Makefile and native_build.py). There is no fallback: a missing map should
    # be reported under the path that was actually expected.
    build_dir = 'build.eu' if version == 'eu' else 'build'

    config['baseimg'] = f'baserom.{version}.z64'
    config['myimg'] = f'{build_dir}/{basename}.{version}.z64'
    config['mapfile'] = f'{build_dir}/{basename}.{version}.map'
    config['source_directories'] = ['src', f'src.{version}', 'include']
    config["makeflags"] = [f"VERSION={version}"]
