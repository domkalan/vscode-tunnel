@ECHO OFF

SET IMAGE_NAME=domkalan/vscode-tunnel

cd Dockerfiles\standalone

docker build -t %IMAGE_NAME% .

PAUSE
