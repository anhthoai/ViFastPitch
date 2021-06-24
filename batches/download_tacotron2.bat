@echo off

setlocal

set "MODEL_DIR=pretrained_models\tacotron2"
set "MODEL=nvidia_tacotron2pyt_fp16.pt"
set "MODEL_URL=https://api.ngc.nvidia.com/v2/models/nvidia/tacotron2_pyt_ckpt_amp/versions/19.12.0/files/%MODEL%"

echo Download pre-trained Tacotron2 Model

echo Checking or creating Tacotron2 Model folder "%MODEL_DIR%" ...
if not exist %MODEL_DIR% (mkdir %MODEL_DIR%)
echo Done!

echo Downloading pre-trained Tacotron2 Model ...
if not exist %MODEL_DIR%\%MODEL% (curl -o %MODEL_DIR%\%MODEL% %MODEL_URL%)
echo Done!


endlocal