#!/usr/bin/env csh

# Restore previous env vars if they were set.
unsetenv CARTOPY_DATA_DIR
if ( $?_CONDA_SET_CARTOPY_DATA_DIR ) then
    setenv CARTOPY_DATA_DIR "$_CONDA_SET_CARTOPY_DATA_DIR"
    unsetenv _CONDA_SET_CARTOPY_DATA_DIR
endif
