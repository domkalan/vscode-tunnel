@ECHO OFF

SET IMAGE_NAME=domkalan/vscode-tunnel
SET INSTANCE_NAME=domkalan/vscode-tunnel

docker start %INSTANCE_NAME% 2>NUL || docker run ^
    --detach ^
    --volume %INSTANCE_NAME%:/home/workspace ^
    --workdir /home/workspace ^
    --name %INSTANCE_NAME% ^
    %IMAGE_NAME%:latest
