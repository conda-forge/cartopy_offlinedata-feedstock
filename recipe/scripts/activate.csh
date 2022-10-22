#!/usr/bin/env csh

# Store existing env vars and set to this conda env
# so other installs don't pollute the environment.

if ( $?CARTOPY_DATA_DIR ) then
  setenv _CONDA_SET_CARTOPY_DATA_DIR "$CARTOPY_DATA_DIR"
endif

setenv CARTOPY_DATA_DIR "${CONDA_PREFIX}/share/cartopy"
