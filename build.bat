@ECHO OFF

SET IMAGE_NAME=domkalan/vscode-tunnel

cd Dockerfiles\debian\standalone

docker build -t %IMAGE_NAME% .

PAUSE
