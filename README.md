# VSCode-Tunnel

[![GitHub license](https://img.shields.io/github/license/domkalan/vscode-tunnel.svg)](https://github.com/domkalan/vscode-tunnel/blob/master/LICENSE) [![GitHub release](https://img.shields.io/github/release/domkalan/vscode-tunnel.svg)](https://GitHub.com/domkalan/vscode-tunnel/releases/) [![GitHub Actions](https://github.com/domkalan/vscode-tunnel/actions/workflows/build.yml/badge.svg)](https://github.com/domkalan/vscode-tunnel/actions/)

Run a Visual Studio Code Remote Tunnel in a Docker container allowing you to access the container remotely from Visual Studio Code. This container is based on Debian Bookworm, the current version of Debian as of writing (2023).


# Getting Started

```bash
docker run -d --name vscode-tunnel \
-v /opt/vscode/projects:/home/workspace \
--network host --restart always --workdir /home/workspace \
domkalan/vscode-tunnel:latest
```

## Tags
Multiple image tags are published for minimal and packaged developer enviroments. By default `standalone` is tagged as latest.
| Tag | Base OS | Packages |
| -- | -- | -- |
| `standalone` | Debian Bookworm | `apt sudo` |
| `devpack` | Debian Bookworm | `apt sudo nodejs build-essential npm typescript eslint python3 python3-virtualenv php8.2 composer mono-complete openjdk-17-jdk maven gradel golang rustc cargo lua5.4 perl ruby docker.io` |
| `standalone-fedora` | Fedora Rawhide | `dnf sudo` |
| `devpack-fedora` | Fedora Rawhide | `dnf sudo groupinstall("Development Tools") groupinstall("Development Libraries") nodejs npm typescript eslint python3 python3-virtualenv php8.2 composer mono-complete openjdk-17-jdk maven golang rustc cargo lua5.4 perl ruby docker` |

## Register Tunnel

Once the container is running, you will need to register the tunnel to your GitHub account. View the logs from tunnel to view the steps on how to register.

```bash
docker logs vscode-tunnel
```

You should see something like this in your terminal.

```text
*
* Visual Studio Code Server
*
* By using the software, you agree to
* the Visual Studio Code Server License Terms (https://aka.ms/vscode-server-license) and
* the Microsoft Privacy Statement (https://privacy.microsoft.com/en-US/privacystatement).
*

[2023-11-07 23:53:58] info Using Github for authentication, run `code tunnel user login --provider <provider>` option to change this.
To grant access to the server, please log into https://github.com/login/device and use code XXXX-0000
[2023-11-07 23:56:56] info Creating tunnel with the name: vscode-tunnel

```

Find your grant code from the logs and go to the [GitHub Device Link](https://github.com/login/device) page, provide the token, then your tunnel is now registered.

## Additional Information

[VSCode Remote Tunnel Docs](https://code.visualstudio.com/docs/remote/tunnels)

[Docker Volumes](https://docs.docker.com/storage/volumes/)
