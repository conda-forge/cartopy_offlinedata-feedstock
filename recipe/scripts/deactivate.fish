#!/usr/bin/env fish

# Restore previous env vars if they were set.
set -e CARTOPY_DATA_DIR
if set -q _CONDA_SET_CARTOPY_DATA_DIR
    set -gx  CARTOPY_DATA_DIR "$_CONDA_SET_CARTOPY_DATA_DIR"
    set -e _CONDA_SET_CARTOPY_DATA_DIR
end
