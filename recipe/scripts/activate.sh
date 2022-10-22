#!/usr/bin/env sh

# Store existing env vars and set to this conda env
# so other installs don't pollute the environment.

if [ -n "$CARTOPY_DATA_DIR" ]; then
    export _CONDA_SET_CARTOPY_DATA_DIR=$CARTOPY_DATA_DIR
fi


export CARTOPY_DATA_DIR=${CONDA_PREFIX}/share/cartopy
