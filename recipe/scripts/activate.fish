#!/usr/bin/env fish

if set -q CARTOPY_DATA_DIR
  set -gx _CONDA_SET_CARTOPY_DATA_DIR "$CARTOPY_DATA_DIR"
end

set -gx CARTOPY_DATA_DIR "$CONDA_PREFIX/share/cartopy"
