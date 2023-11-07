# VSCode-Tunnel

Run a Visual Studio Code Remote Tunnel in a Docker container allowing you to access from remote Visual Studio Code clients.


# Getting Started

### Windows

1. Execute `build.bat` to build the Dockerfile.
2. Execute `run.bat` to run the container if it doesn't exist yet or to start it if it has been created before.

The image's name should be `alexanderdna/container-tunnel`.

The container and volume's name should both be `alexanderdna-container-tunnel`.

You can change the names to whatever you like.

### Linux/MacOS

Coming soon

## Allow connections

When the container is up, open its log in Docker Desktop or in the terminal using the following command:

```
docker logs -n 50 alexanderdna-container-tunnel
```

You will see a message from Visual Studio Code Server with the instruction to log into GitHub. Follow the instruction and you will be provided a tunnel name to connect.

For more details about Remote Tunnel, [visit this page](https://code.visualstudio.com/docs/remote/tunnels).