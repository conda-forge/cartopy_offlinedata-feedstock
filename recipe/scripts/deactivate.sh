#!/usr/bin/env sh

# Restore previous env vars if they were set.
unset CARTOPY_DATA_DIR
if [ -n "$_CONDA_SET_CARTOPY_DATA_DIR" ]; then
    export CARTOPY_DATA_DIR=$_CONDA_SET_CARTOPY_DATA_DIR
    unset _CONDA_SET_CARTOPY_DATA_DIR
fi
