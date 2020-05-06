#!/usr/bin/env bash

set -e

$PYTHON -m pip install . --no-deps -vv

$PYTHON bin/download_cartopy_data.py -o ${PREFIX}/share/cartopy/

cp -r ${RECIPE_DIR}/licenses ${PREFIX}/share/cartopy/

ACTIVATE_DIR=${PREFIX}/etc/conda/activate.d
DEACTIVATE_DIR=${PREFIX}/etc/conda/deactivate.d
mkdir -p ${ACTIVATE_DIR}
mkdir -p ${DEACTIVATE_DIR}

cp ${RECIPE_DIR}/scripts/activate.sh ${ACTIVATE_DIR}/cartopy_offline_data-activate.sh
cp ${RECIPE_DIR}/scripts/deactivate.sh ${DEACTIVATE_DIR}/cartopy_offline_data-deactivate.sh
cp ${RECIPE_DIR}/scripts/activate.csh ${ACTIVATE_DIR}/cartopy_offline_data-activate.csh
cp ${RECIPE_DIR}/scripts/deactivate.csh ${DEACTIVATE_DIR}/cartopy_offline_data-deactivate.csh
cp ${RECIPE_DIR}/scripts/activate.fish ${ACTIVATE_DIR}/cartopy_offline_data-activate.fish
cp ${RECIPE_DIR}/scripts/deactivate.fish ${DEACTIVATE_DIR}/cartopy_offline_data-deactivate.fish
cp ${RECIPE_DIR}/scripts/activate.bat ${ACTIVATE_DIR}/cartopy_offline_data-activate.bat
cp ${RECIPE_DIR}/scripts/deactivate.bat ${DEACTIVATE_DIR}/cartopy_offline_data-deactivate.bat
