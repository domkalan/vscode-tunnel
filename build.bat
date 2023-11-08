@ECHO OFF

SET IMAGE_NAME=domkalan/vscode-tunnel

docker build -t %IMAGE_NAME% .

PAUSE
