@echo off

setlocal

set "DATA_DIR=Input\LJSpeech-1.1"
set "LJS_ARCH=LJSpeech-1.1.tar.bz2"
set "LJS_URL=http://data.keithito.com/data/speech/%LJS_ARCH%"

echo Download LJSpeech-1.1 Data Script

echo Checking or creating input data folder "%DATA_DIR%"
if not exist %DATA_DIR% (mkdir %DATA_DIR%)

echo Downloading LJSpeech-1.1 data file
if not exist %DATA_DIR%\%LJS_ARCH% (curl %LJS_URL% -O %DATA_DIR%\%LJS_ARCH%)

echo Extracting LJSpeech-1.1 data file
if exist %DATA_DIR%\%LJS_ARCH% (tar jxvf %DATA_DIR%\%LJS_ARCH%)
rem if exist %DATA_DIR%\%LJS_ARCH% (7z -x %DATA_DIR%\%LJS_ARCH% -o %DATA_DIR%)

endlocal