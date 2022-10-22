:: Restore previous GDAL env vars if they were set.

@set "CARTOPY_DATA_DIR="
@if defined _CONDA_SET_CARTOPY_DATA_DIR (
  set "CARTOPY_DATA_DIR=%_CONDA_SET_CARTOPY_DATA_DIR%"
  set "_CONDA_SET_CARTOPY_DATA_DIR="
)
