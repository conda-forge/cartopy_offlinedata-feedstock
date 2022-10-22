:: Store existing env vars and set to this conda env
:: so other installs don't pollute the environment.

@if defined CARTOPY_DATA_DIR (
    set "_CONDA_SET_CARTOPY_DATA_DIR=%CARTOPY_DATA_DIR%"
)
@set "CARTOPY_DATA_DIR=%CONDA_PREFIX%\share\cartopy"
