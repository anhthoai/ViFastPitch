@echo off

setlocal

set "MODEL_DIR=pretrained_models\fastpitch"
set "MODEL_ZIP=nvidia_fastpitch_200518.zip"
set "MODEL=nvidia_fastpitch_200518.pt"
set "MODEL_URL=https://api.ngc.nvidia.com/v2/models/nvidia/fastpitch_pyt_amp_ckpt_v1/versions/20.02.0/zip"

echo Download pre-trained FastPitch Model

echo Checking or creating FastPitch Model folder "%MODEL_DIR%" ...
if not exist %MODEL_DIR% (mkdir %MODEL_DIR%)
echo Done!

echo Downloading pre-trained FastPitch Model ...
if not exist %MODEL_DIR%\%MODEL_ZIP% (curl -o %MODEL_DIR%\%MODEL_ZIP% %MODEL_URL%)
echo Done!

echo Extracting data ...
if exist %MODEL_DIR%\%MODEL_ZIP% (tar jxvf %MODEL_DIR%\%MODEL_ZIP%)

endlocal