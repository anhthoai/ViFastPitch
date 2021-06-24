@echo off

setlocal

set "MODEL_DIR=pretrained_models\waveglow"
set "MODEL_ZIP=waveglow_ckpt_amp_256_20.01.0.zip"
set "MODEL=nvidia_waveglow256pyt_fp16.pt"
set "MODEL_URL=https://api.ngc.nvidia.com/v2/models/nvidia/waveglow_ckpt_amp_256/versions/20.01.0/zip"

echo Download pre-trained WaveGlow Model

echo Checking or creating WaveGlow Model folder "%MODEL_DIR%" ...
if not exist %MODEL_DIR% (mkdir %MODEL_DIR%)
echo Done!

echo Downloading pre-trained WaveGlow Model ...
if not exist %MODEL_DIR%\%MODEL_ZIP% (curl -o %MODEL_DIR%\%MODEL_ZIP% %MODEL_URL%)
echo Done!

echo Extracting data ...
if exist %MODEL_DIR%\%MODEL_ZIP% (tar jxvf %MODEL_DIR%\%MODEL_ZIP%)

endlocal