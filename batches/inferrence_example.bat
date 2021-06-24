@echo off

setlocal

set "WAVEGLOW=pretrained_models\waveglow\waveglow_1076430_14000_amp.pt"
set "FASTPITCH=pretrained_models\fastpitch\nvidia_fastpitch_200518.pt"
set "BS=4"
set "PHRASES=phrases\devset10.tsv"
set "AMP=false"
set "OUTPUT_DIR=output\audio_phrases"
set "AMP_FLAG="

if %AMP%==true ( set "AMP_FLAG=--amp")

echo Testing FastPitch Model

echo Checking or creating outpt folder "%OUTPUT_DIR%" ...
if not exist %OUTPUT_DIR% (mkdir %OUTPUT_DIR%)
echo Done!

python inference.py --cuda -i %PHRASES% -o %OUTPUT_DIR% --fastpitch %FASTPITCH% --waveglow %WAVEGLOW% --wn-channels 256 --batch-size %BS% %AMP_FLAG%

endlocal