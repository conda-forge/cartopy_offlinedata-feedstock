#!/usr/bin/env python
import argparse
import shutil
import os
from cartopy import config
import sys


def main(target_dir):
    module_path = 'cartopy_feature_download'
    try:
        os.makedirs(module_path)
    except OSError:
        pass

    path = shutil.which('cartopy_feature_download.py')
    shutil.copy(path, f'{module_path}/__init__.py')

    sys.path.append(os.path.abspath('.'))

    from cartopy_feature_download import FEATURE_DEFN_GROUPS, download_features

    # add Antarctic ice shelves
    FEATURE_DEFN_GROUPS['physical'] = (
        ('physical', 'antarctic_ice_shelves_polys', ('50m', '10m')),)

    config['pre_existing_data_dir'] = target_dir
    config['data_dir'] = target_dir
    config['repo_data_dir'] = target_dir
    download_features(['physical'], dry_run=False)


if __name__ == '__main__':
    parser = argparse.ArgumentParser(
        description='Download cartopy data for caching.')
    parser.add_argument('--output', '-o', required=True,
                        help='save datasets in the specified directory')
    args = parser.parse_args()
    main(args.output)
